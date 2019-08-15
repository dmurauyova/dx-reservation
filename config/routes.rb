Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root to: "guests#new"
   resources :guests

   get 'csv-download', to: 'guests#csv_download', defaults: { format: :csv }
   get '/.well-known/acme-challenge/HMZpLgJaVjopjttEP1LsaeMcX4WEiBq-7Aj6vmPepJk' => 'home#letsencrypt'
   get '/.well-known/acme-challenge/Qu5UJZe30bFUDDygtAXA_J6Ea091gAPp1KC82J5ikIo' => 'home#letsencryptid'

	# Rails.application.routes.draw do
	#   devise_for :users, controllers: {
	#     sessions: 'users/sessions'
	#   }
	# end
end
