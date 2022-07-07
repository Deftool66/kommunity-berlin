class AddlastnameToRequests < ActiveRecord::Migration[6.0]
  def change
    add_column :requests, :last_name, :string
  end
end
