Rails.application.routes.draw do
  devise_for :users
  resources :creators
  resources :users
  root to: "welcome#index"

  get 'questions', to: 'welcome#questions'
  get 'frequently_questions', to: 'welcome#frequently_questions'

end
