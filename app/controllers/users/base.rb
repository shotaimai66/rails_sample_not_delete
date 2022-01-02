# frozen_string_literal: true

module Users
  class Base < ApplicationController
    before_action :authenticate_user!
    layout 'users'
  end
end
