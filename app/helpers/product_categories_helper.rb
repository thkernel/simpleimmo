module ProductCategoriesHelper
    def product_category_to_name(id)
        ProductCategory.find(id).name if id
    end
end
