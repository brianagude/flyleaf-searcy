ActiveAdmin.register Product do

permit_params :title, :author, :description, :price, :image_1, :image_2, :image_3, :image_4, :image_5, :printing_method, :location_1_name, :location_1_url, :location_2_name, :location_2_url,:location_3_name, :location_3_url, :location_4_name, :location_4_url, :location_5_name, :location_5_url, :dimensions, :pages

index do
  selectable_column
  index_column
  column 'Main Image' do |product|
    image_tag product.image_1.thumb.url
  end
  column :title
  column :author
  column :price
  column :dimensions
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
    f.input :dimensions
    f.input :pages, label: 'Number of Pages'
  end

  f.inputs 'Location Info' do
    f.input :location_1_name
    f.input :location_1_url
    f.input :location_2_name
    f.input :location_2_url
    f.input :location_3_name
    f.input :location_3_url
    f.input :location_4_name
    f.input :location_4_url
    f.input :location_5_name
    f.input :location_5_url
  end

  f.submit
  end

  show do
      attributes_table do
        row 'Main Image' do |product|
          image_tag product.image_1.thumb.url
        end
        row :title
        row :author
        row :description
        row :dimensions
        row :price
        row :printing_method
        row :location_1_name, label: 'Location 1'
        row :location_2_name, label: 'Location 2'
        row :location_3_name, label: 'Location 3'
        row :location_4_name, label: 'Location 4'
        row :location_5_name, label: 'Location 5'
      end

    end
end
