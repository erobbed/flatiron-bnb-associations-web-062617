class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :address
      t.string :listing_type
      t.string :title
      t.float :price
      t.integer :neighborhood
      t.integer :host
    end
  end
end
