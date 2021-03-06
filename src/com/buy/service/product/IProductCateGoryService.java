package com.buy.service.product;

import com.buy.entity.EasybuyProductCategory;
import com.buy.utils.ProductCategoryVo;

import java.util.List;

public interface IProductCateGoryService {
    //获取商品的一级分类
    List<EasybuyProductCategory> queryAllProductCategory(String parentId);

    //获取商品的所有分类
    List<ProductCategoryVo> queryAllProductCategory();
}
