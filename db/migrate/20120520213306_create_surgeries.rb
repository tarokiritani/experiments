class CreateSurgeries < ActiveRecord::Migration
  def change
    create_table :surgeries do |t|
      t.date :operation_date
      t.string :injected_material
      t.string :location
      t.float :amount_in_ul
      t.float :titer

      t.timestamps
    end
  end
end
