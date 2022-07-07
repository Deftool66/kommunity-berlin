class AddfirstnameToRequests < ActiveRecord::Migration[6.0]
  def change
    add_column :requests, :first_name, :string
  end
end
