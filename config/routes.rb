Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'welcome#welcome'

  get'/welcome', to: 'welcome#welcome'

  get'/welcome/:user_entry', to: 'welcome#show_user'
  
  get '/contact', to: 'contact#show'

  get '/team', to: 'team#show'  

  get'/gossip/:id', to: 'gossip_page#gossip'

  resources :gossips


end
