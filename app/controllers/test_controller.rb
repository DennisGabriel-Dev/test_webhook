class TestController < ApplicationController
  # skip_before_action :authenticate_request
  skip_before_action :verify_authenticity_token
  def index
    puts params.to_json
    render json: :ok
  end

  def authenticate_request
    auth = Authorization.new(request)
    @current_user = auth.current_user
    render json: { error: 'Not Authorized' }, status: 401 unless @current_user
  end
end
