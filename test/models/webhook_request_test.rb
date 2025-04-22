# == Schema Information
#
# Table name: webhook_requests
#
#  id             :integer          not null, primary key
#  webhook_bin_id :string           not null
#  headers        :json
#  body           :json
#  method         :string
#  path           :string
#  query_string   :string
#  remote_ip      :string
#  user_agent     :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
require "test_helper"

class WebhookRequestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
