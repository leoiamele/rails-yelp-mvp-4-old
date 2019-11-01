Rails.application.routes.draw do
	root to: 'restaurants#index'
	resources :restaurants, only:[:show, :new, :create] do
      resources :reviews, only:[:index, :new, :create]
 end
end
