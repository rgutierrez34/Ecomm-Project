class CategoryController < ApplicationController
  def index
  	@products = Product.all.page(params[:page]).per(8)
  end

  def men
  	@products = Product.where(category: 1).page(params[:page]).per(8)
  end

  def women
  	@products = Product.where(category: 3).page(params[:page]).per(8)
  end

  def kids
  	@products = Product.where(category: 4).page(params[:page]).per(8)
  end
end
