# frozen_string_literal: true

module Base
  module V1
    class Root < Grape::API
      format :json

      mount Base::V1::Users
    end
  end
end
