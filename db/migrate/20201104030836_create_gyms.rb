class CreateGyms < ActiveRecord::Migration[6.0]
  def change
    create_table :gyms do |t|

      t.string :name, null: false
      t.string :address, null: false
      t.string :phone_number, null: false
      t.string :playweek, null: false
      t.string :playtime, null: false
      t.string :court, null: false
      t.text :map_url
      t.text :homepage
      t.text :supplement
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
