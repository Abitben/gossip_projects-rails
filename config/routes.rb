Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/contact', to: 'contact#show'

  get '/team', to: 'team#show'

  get'/welcome/:user_entry', to: 'welcome#show_user'

  get'/gossip/:id', to: 'gossip_page#show_user'

  get'/welcome', to: 'welcome#welcome'

end
