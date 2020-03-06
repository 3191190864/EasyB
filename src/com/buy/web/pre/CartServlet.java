package com.buy.web.pre;

import com.buy.entity.EasybuyProduct;
import com.buy.service.product.IProductService;
import com.buy.service.product.ProductServiceImpl;
import com.buy.utils.Constants;
import com.buy.utils.EmptyUtils;
import com.buy.utils.ReturnResult;
import com.buy.utils.ShoppingCart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "CartServlet" ,urlPatterns = {"/cart"})
public class CartServlet extends AbstractServlet {
    IProductService productService = null;

    @Override
    public Class getServletClass() {
        return CartServlet.class;
    }
    @Override
    public void init() throws ServletException{
        productService = new ProductServiceImpl();
        super.init();
    }

    public ReturnResult add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ReturnResult result = new ReturnResult();
        //添加购物车需要的参数
        String id = request.getParameter("entityId");
        String quantityStr = request.getParameter("quantity");
        //商品数量的初始值
        Integer quantity = 1;
        if (EmptyUtils.isNotEmpty(quantityStr)){
            quantity = Integer.valueOf(quantityStr);
        }
        //查询商品的对应信息
        //todo
        EasybuyProduct product = productService.findProductByid(id);
        //判断商品的库存
        if (product.getStock() < quantity){
            return result.returnFail("商品数量不足！");
        }
        //如果商品的数量充足，则获取购物车信息
        ShoppingCart cart = getCartFromSession(request);
        //向购物车添加商品
        result = cart.addItem(product,quantity);

        if (result.getStatus() == Constants.ReturnResult.SUCCESS) {
            cart.setSum(EmptyUtils.isEmpty(cart.getSum()) ?
                    0.0 : cart.getSum() + ((float) product.getPrice() * quantity * 1.0));
        }
        return result;
    }

    /**
     * 从session中获取购物车
     * @param request
     * @return
     */
    private ShoppingCart getCartFromSession(HttpServletRequest request){
        HttpSession session = request.getSession();
        ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");

        if (EmptyUtils.isEmpty(cart)){
            cart = new ShoppingCart();
            session.setAttribute("cart",cart);
        }
        return cart;
    }

    /**
     * 异步刷新购物车信息
     * @param request
     * @param response
     * @return
     * @throws ServletException
     */
    public  String refreshCart(HttpServletRequest request, HttpServletResponse response) throws ServletException {
        return "/front/pages_common/cart";
    }
}
