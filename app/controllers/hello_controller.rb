class HelloController < ApplicationController
  before_action :require_login
  def index
    render json: { message: 'hello world' }
  end
end
