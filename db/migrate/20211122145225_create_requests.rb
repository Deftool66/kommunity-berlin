class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.string :name
      t.text :content
      t.string :email
      t.references :offer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
