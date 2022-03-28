require 'rails_helper'

describe 'ログイン処理', type: :request do
  let!(:user) { FactoryBot.create(:user, password: 'password', confirmed_at: Time.now) }

  describe '管理者がログインできることを確認' do
    it do
      get new_user_session_path
      expect(response).to have_http_status(:success)
      post user_session_path, params: { user: { email: user.email, password: user.password } }
      expect(response).to have_http_status(:found)
      expect(response).to redirect_to 'http://www.example.com/users/dash_boards'
    end
  end
end
