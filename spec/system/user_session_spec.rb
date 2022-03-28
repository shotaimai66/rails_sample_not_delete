require 'rails_helper'

RSpec.describe 'UserSessions', type: :system do
  context 'ログインできることを確認' do
    let!(:user) { FactoryBot.create(:user, password: 'password', confirmed_at: Time.now) }

    it 'ログインできることを確認' do
      visit new_user_session_path
      fill_in 'user[email]', with: user.email
      fill_in 'user[password]', with: user.password
      click_button 'ログイン'
      expect(page).to have_content 'ログアウト'
    end
  end
end
