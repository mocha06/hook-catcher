class CreateWebhookRequests < ActiveRecord::Migration[7.2]
  def change
    create_table :webhook_requests do |t|
      t.string :webhook_bin_id, null: false
      t.json :headers
      t.json :body
      t.string :method
      t.string :path
      t.string :query_string
      t.string :remote_ip
      t.string :user_agent

      t.timestamps
    end
    add_foreign_key :webhook_requests, :webhook_bins
    add_index :webhook_requests, :webhook_bin_id
  end
end
