Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root to: "guests#new"
   resources :guests

   get 'csv-download', to: 'guests#csv_download', defaults: { format: :csv }
   get '/.well-known/acme-challenge/vfI5cYwsfx50M6SjNE2so0b0kt_nJn_tvTBo2swgZ54' => 'home#letsencrypt'
   get '/.well-known/acme-challenge/q-wXb1eSGMK5iZmoECMDv6yrVT2pQa21QG0cpoS7ph4' => 'home#letsencryptid'

	# Rails.application.routes.draw do
	#   devise_for :users, controllers: {
	#     sessions: 'users/sessions'
	#   }
	# end
end
