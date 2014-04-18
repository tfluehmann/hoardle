class UsersController < Devise::RegistrationsController
  before_filter :check_permissions, :only => [:new, :create, :cancel]
  
  def new
    
  end
  
  
  def check_permissions
    authorize! :create, resource
  end
end
