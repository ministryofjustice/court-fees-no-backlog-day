ActiveAdmin.register FeeType do
  index do
    column "Fee" do |fee_type|
      link_to fee_type.fee.title, admin_fee_path(fee_type.fee)
    end
    column :title
    column :amount
    column :url
    actions
  end

  permit_params :fee_id, :title, :amount, :url
end
