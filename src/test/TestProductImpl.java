package test;

import com.buy.dao.product.IProductDao;
import com.buy.dao.product.ProductImpl;
import com.buy.service.product.IProductService;
import com.buy.service.product.ProductServiceImpl;
import com.buy.utils.ProductParams;
import org.junit.Test;

public class TestProductImpl {
    public static IProductDao productDao = new ProductImpl();
    @Test
    public static void main(String[] args) {
        IProductService productService = new ProductServiceImpl();
//        ProductParams productParams = new ProductParams();
//        productParams.setKeyWords("电饭");
//        productParams.setCategoryId(548);
//        boolean page = productParams.isPage();
//        productParams.setStartIndex(0);
//        productParams.setPageSize(5);
//        productParams.setSort("name");
//        System.out.println(productDao.queryProductList(productParams).size());

        System.out.println(productService.findProductByid("733").getName());

//        productParams.setSort("name");
//        System.out.println(productDao.queryProductCount(productParams));
    }
}
