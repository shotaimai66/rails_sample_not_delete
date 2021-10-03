module Base::V1
  class Users < Grape::API
    resources :users do
      desc 'returns all users'
      params do
        optional :name, type: String
      end
      get '/' do
        if params[:name]
          @users = User.where(name: params[:name])
        else
          @users = User.all
        end
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