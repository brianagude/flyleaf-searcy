ActiveAdmin.register Artist do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :image, :bio, :instagram, :twitter, :email, :website

index do
  selectable_column
  index_column
  column 'Photo' do |artist|
    image_tag artist.image.thumb.url
  end
  column :name
  column :email
  column :website
  column :updated_at
  actions
end

form do |f|
  f.inputs 'Artist Details' do
    f.input :name
    f.input :image
    f.input :bio
  end

  f.inputs 'Artist Contact' do
    f.input :email
    f.input :website
    f.input :instagram
    f.input :twitter
  end
  f.submit
end

show do
    attributes_table do
      row :image do |artist|
        image_tag artist.image.thumb.url
      end
      row :name
      row :bio
      row :email
      row :website
      row :instagram
      row :twitter
      row :created_at
      row :updated_at
    end

  end


end
