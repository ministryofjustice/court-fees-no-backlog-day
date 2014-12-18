class AddUrlToFormTypes < ActiveRecord::Migration
  def change
    add_column :form_types, :url, :string
  end
end
