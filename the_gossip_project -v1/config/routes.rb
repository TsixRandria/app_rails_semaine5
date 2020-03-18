Rails.application.routes.draw do
	root to: 'pages#home'
  get '/team',to:'pages#team'
  get '/contact',to:'pages#contact'
  get '/:author', to: 'pages#welcome'
  get 'index/:a', to: 'pages#potin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
