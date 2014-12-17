ActiveAdmin.register FormType do

  index do
    column "Fee Type" do |form_type|
      link_to form_type.fee_type.title, admin_fee_type_path(form_type.fee_type)
    end
    column :number
    column :form_name
    actions
  end

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

  permit_params :fee_type_id, :number, :form_name
end
