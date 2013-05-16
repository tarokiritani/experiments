class CreateMice < ActiveRecord::Migration
  def change
    create_table :mice do |t|
      t.datetime :date_of_birth
      t.string :sex
      t.string :species_strain
      t.string :cagen_number

      t.timestamps
    end
  end
end
