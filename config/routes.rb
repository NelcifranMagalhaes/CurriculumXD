Rails.application.routes.draw do
  devise_for :users
  resources :creators
	root to: "welcome#index"
end
