class FilterController < ApplicationController
  def sale
    @products = Product.where(sale: true).page(params[:page]).per(8)
  end

  def new 
    @products = Product.limit(5).reverse_order
  end

  def search
    wildcard_keywords = '%' + params[:search_keywords] + '%'
    # @products = Product.all.where("name LIKE ?", wildcard_keywords)

    if params[:category_id]
      category = Category.find(params[:category_id])
      @products = category.products.where("name LIKE ?", wildcard_keywords) 
    else
      @products = Product.where("name LIKE ?", wildcard_keywords)
    end
  end
end
