module Base::V1
  class Users < Grape::API
    resources :users do
      desc 'returns all users'
      get '/' do
        @users = User.all # 最後に評価された値がレスポンスとして返される
      end

      desc 'returns an author'
      params do
        requires :id, type: Integer
      end
      get '/:id' do
        @user = User.find(params[:id])
      end

      # desc 'Create an author'
      # params do
      #   requires :name, type: String
      # end
      # post '/' do
      #   @author = Author.create(name: params[:name])
      # end

      # desc 'Delete an author'
      # params do
      #   requires :id, type: Integer
      # end
      # delete '/:id' do
      #   @author = Author.find(params[:id])
      #   @author.destroy
      # end
    end
  end
end