# == Schema Information
#
# Table name: webhook_bins
#
#  id         :integer          not null, primary key
#  token      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_webhook_bins_on_token  (token) UNIQUE
#
class WebhookBin < ApplicationRecord
  has_many :webhook_requests, dependent: :destroy

  def requests
    webhook_requests.order(created_at: :desc)
  end
end
