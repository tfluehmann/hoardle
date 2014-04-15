class UsersController < Devise::RegistrationsController
  before_filter :check_permissions, :only => [:new, :create, :cancel]
  skip_before_filter :require_no_authentication
  
  def new
    
  end
  
  
  def check_permissions
    authorize! :create, resource
  end
end
