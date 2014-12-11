class LineItemsController < InheritedResources::Base
  include CurrentCart

  before_action :set_cart, only: [:create]

  before_action :set_line_item, only: [:show, :edit, :update, :destroy]

  def create
    product = Product.find(params[:product_id])
    @line_item = @cart.add_product(product.id)

    respond_to do |format|
      if @line_item.save
        format.html { redirect_to @line_item.cart, notice: 'Line item was successfully created.' }
      else
        format.json { render action: 'new' }
        format.json { render json: @line_item.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def line_item_params
    params.require(:line_item).permit(:product_id, :cart_id)
  end
end
