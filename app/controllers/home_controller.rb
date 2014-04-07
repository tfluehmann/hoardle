class HomeController < ApplicationController
  before_filter skip_authorization_check
  def index
  end
end
