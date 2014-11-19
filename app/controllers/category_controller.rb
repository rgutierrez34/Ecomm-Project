class CategoryController < ApplicationController
  def index
  	@products = Product.all
  end

  def men
  	@products = Product.where(category: 1)
  end

  def women
  	@products = Product.where(category: 2)
  end

  def kids
  	@products = Product.where(category: 3)
  end
end
