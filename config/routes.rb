Rails.application.routes.draw do
  resources :creators
	root to: "welcome#index"
end
