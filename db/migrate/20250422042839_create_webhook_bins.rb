class CreateWebhookBins < ActiveRecord::Migration[7.2]
  def change
    create_table :webhook_bins do |t|
      t.string :token

      t.timestamps
    end
    add_index :webhook_bins, :token, unique: true
  end
end
