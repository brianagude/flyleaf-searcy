ActiveAdmin.register Product do

permit_params :title, :author, :description, :price, :location, :image_1, :image_2, :image_3, :image_4, :image_5, :printing_method, :location_1_name, :location_1_url, :location_2_name, :location_2_url,:location_3_name, :location_3_url, :location_4_name, :location_4_url, :location_5_name, :location_5_url

index do
  selectable_column
  index_column
  column 'Main Image' do |product|
    image_tag product.image_1.thumb.url
  end
  column :title
  column :author
  column :price
  actions
end


form do |f|
  f.inputs 'Product Info' do
    f.input :title
    f.input :author
    f.input :description
  end

  f.inputs 'Images' do
    f.input :image_1, label: 'Main Image'
    f.input :image_2
    f.input :image_3
    f.input :image_4
    f.input :image_5
  end

  f.inputs 'Purchase Info' do
    f.input :price
    f.input :printing_method
  end

  f.inputs 'Location Info' do
    f.input :location_1_name, label: 'Location 1 Name'
    f.input :location_1_url, label: 'Location 1 Url'
    f.input :location_2_name, label: 'Location 2 Name'
    f.input :location_2_url, label: 'Location 2 Url'
    f.input :location_3_name, label: 'Location 3 Name'
    f.input :location_3_url, label: 'Location 3 Url'
    f.input :location_4_name, label: 'Location 4 Name'
    f.input :location_4_url, label: 'Location 4 Url'
    f.input :location_5_name, label: 'Location 5 Name'
    f.input :location_5_url, label: 'Location 5 Url'
  end

  f.submit
  end
end
