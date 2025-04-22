# == Schema Information
#
# Table name: webhook_requests
#
#  id             :integer          not null, primary key
#  body           :json
#  headers        :json
#  method         :string
#  path           :string
#  query_string   :string
#  received_at    :datetime
#  remote_ip      :string
#  user_agent     :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  webhook_bin_id :string           not null
#
# Indexes
#
#  index_webhook_requests_on_webhook_bin_id  (webhook_bin_id)
#
# Foreign Keys
#
#  webhook_bin_id  (webhook_bin_id => webhook_bins.id)
#
class WebhookRequest < ApplicationRecord
  belongs_to :webhook_bin
end
