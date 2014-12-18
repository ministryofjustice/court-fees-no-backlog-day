ActiveAdmin.register FormType do

  index do
    column "Fee Type" do |form_type|
      link_to form_type.fee_type.title, admin_fee_type_path(form_type.fee_type)
    end
    column :number
    column :form_name
    actions
  end

  permit_params :fee_type_id, :number, :form_name
end
