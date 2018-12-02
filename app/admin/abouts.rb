ActiveAdmin.register About do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :bio, :email, :instagram

index do
  selectable_column
  index_column
  column :bio
  column :email
  column :instagram
  column :updated_at
  actions
end

show do
    attributes_table do
      row :bio
      row :email
      row :instagram
      row :updated_at
    end

  end
end
