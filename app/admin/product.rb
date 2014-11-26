ActiveAdmin.register Product do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  permit_params :name, :description, :quantity, :price, :image, :category_id, :sale

  form :html => {:multipart => true} do |f|
    f.inputs "Product Details" do
    f.input :name
    f.input :description
    f.input :price
    f.input :quantity
    f.input :category
    f.input :image
    f.input :sale
  end

f.actions
end

end
