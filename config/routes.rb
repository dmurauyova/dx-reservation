Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root to: "guests#new"
   resources :guests

   get 'csv-download', to: 'guests#csv_download', defaults: { format: :csv }
   get '/.well-known/acme-challenge/:id' => 'home#letsencrypt'

	# Rails.application.routes.draw do
	#   devise_for :users, controllers: {
	#     sessions: 'users/sessions'
	#   }
	# end
end
