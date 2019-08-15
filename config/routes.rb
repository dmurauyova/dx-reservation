Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root to: "guests#new"
   resources :guests

   get 'csv-download', to: 'guests#csv_download', defaults: { format: :csv }
   get '/.well-known/acme-challenge/HMZpLgJaVjopjttEP1LsaeMcX4WEiBq-7Aj6vmPepJk' => 'home#letsencrypt'
   get '/.well-known/acme-challenge/SVb9IPoCQiAqfHmtJUW_VXzQpov3GAkM4ZtqkSlFiHQ' => 'home#letsencryptid'

	# Rails.application.routes.draw do
	#   devise_for :users, controllers: {
	#     sessions: 'users/sessions'
	#   }
	# end
end
