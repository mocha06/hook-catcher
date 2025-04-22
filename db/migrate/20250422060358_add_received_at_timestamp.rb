class AddReceivedAtTimestamp < ActiveRecord::Migration[7.2]
  def change
    add_column :webhook_requests, :received_at, :datetime
  end
end
