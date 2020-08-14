class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.text :address
      t.string :telephone
      t.integer :venue_id

      t.timestamps
    end
    add_index :branches, :venue_id
  end
end
