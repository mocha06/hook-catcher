# == Schema Information
#
# Table name: webhook_bins
#
#  id         :integer          not null, primary key
#  token      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class WebhookBin < ApplicationRecord
end
