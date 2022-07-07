class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.string :title
      t.string :address
      t.float :latitude
      t.float :longitude
      t.text :description
      t.string :email
      t.references :district, null: false, foreign_key: true
      t.datetime :date

      t.timestamps
    end
  end
end
