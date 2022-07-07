class AddFeedbackToRequests < ActiveRecord::Migration[6.0]
  def change
    add_column :requests, :feedback, :text
  end
end
