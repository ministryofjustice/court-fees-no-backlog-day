ActiveAdmin.register Fee do

  index do
    column :title
    column :description
    actions
  end

  permit_params :title, :description

end
