class WebhookRequestsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    webhook_bin = WebhookBin.find_by(token: params[:token])
    @webhook_request = WebhookRequest.new(webhook_bin: webhook_bin, **request_params)
    @webhook_request.save!
    render json: @webhook_request, status: :created
  end

  private

  def request_params
    {
      method: request.method,
      path: request.path,
      query_string: request.query_string,
      remote_ip: request.remote_ip,
      user_agent: request.user_agent,
      headers: request.headers.env.select { |k, _| k.start_with?("HTTP_") }.map { |k, v| [k.gsub("HTTP_", ""), v] }.to_h,
      body: request.raw_post
    }
  end
end
