ActiveAdmin.register FeeType do

  index do
    column "Fee" do |fee_type|
      link_to fee_type.fee.title, admin_fee_path(fee_type.fee)
    end
    column :title
    column :amount
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


end
