class CreateFeeTypes < ActiveRecord::Migration
  def change
    create_table :fee_types do |t|
      t.string :title
      t.integer :amount

      t.references :fee

      t.timestamps
    end
  end
end
