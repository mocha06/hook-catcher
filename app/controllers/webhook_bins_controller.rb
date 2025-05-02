class WebhookBinsController < ApplicationController
  def new
    url = SecureRandom.hex(16)
    @webhook_bin = WebhookBin.new(token: url)
    @webhook_bin.save!
  end

  def create
    @webhook_bin = WebhookBin.create!(webhook_bin_params)
  end

  def show
    @webhook_bin = WebhookBin.find_by(token: params[:token])

    redirect_to new_webhook_bin_path unless @webhook_bin
  end
end
