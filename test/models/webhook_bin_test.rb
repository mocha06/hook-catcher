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
require "test_helper"

class WebhookBinTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
