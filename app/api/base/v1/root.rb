module Base::V1
  class Root < Grape::API
    format :json

    mount Base::V1::Users
  end
end