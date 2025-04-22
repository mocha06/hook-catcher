class WebhookBinsController < ApplicationController
  def new
    url = SecureRandom.hex(16)
    @webhook_bin = WebhookBin.new(token: url)
  end

  def create
    @webhook_bin = WebhookBin.create!(webhook_bin_params)
  end
end
