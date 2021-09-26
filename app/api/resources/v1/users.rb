module Resources
  module V1
    class Users < Grape::API
      resource :users do
        # http://localhost:3000/api/v1/users
        desc 'user list'
        get do
          present User.all
        end

        # http://localhost:3000/api/v1/users/{:id}
        desc 'user'
        # パラメータ設定
        params do
          # 必須項目
          requires :id, type: Integer, desc: 'user id'
        end
        get ':id' do
          present User.find(params[:id])
        end
      end
    end
  end
end
