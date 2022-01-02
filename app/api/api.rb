# frozen_string_literal: true

class Api < Grape::API
  mount Base::V1::Root => '/'
end
