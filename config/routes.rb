Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

  devise_scope :user do
    root "users/sessions#new"
  end

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    confirmations: "users/confirmations",
    registrations: 'users/registrations',
  }

  devise_for :admins, controllers: {
    sessions: 'admins/sessions'
  }
  devise_for :managers, controllers: {
    sessions: 'managers/sessions',
    passwords: 'managers/passwords',
    confirmations: "users/confirmations",
    registrations: 'managers/registrations'
  }

  namespace :users do
    resources :dash_boards, only:[:index]
    resources :articles, only:[:index, :show]
    resource :profile, except:[:create, :new]
  end

  # その他
  get  "use"  => "use#index"

  # app/api/api.rbをマウント
  mount Api => '/_system_/api'


end
