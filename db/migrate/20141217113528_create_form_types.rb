class CreateFormTypes < ActiveRecord::Migration
  def change
    create_table :form_types do |t|
      t.references :fee_type

      t.string :number
      t.string :form_name

      t.timestamps
    end
  end
end
