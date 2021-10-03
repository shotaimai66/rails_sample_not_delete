class Api < Grape::API
  mount Base::V1::Root => "/"
end
