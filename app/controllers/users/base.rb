class Users::Base < ApplicationController
  before_action :authenticate_user!
  layout 'users'
end