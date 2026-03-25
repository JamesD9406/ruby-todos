Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"

  resources :todos
  resources :projects

  # # Could have used resources :projects like I did with Todos, but wanted to see what the specific routes were and how they work
  # # Ended up replacing this, but it di show me how easy it is to make a mistake in your routes
  # get "/projects", to: "projects#index"
  # # Note: route order matters here, routes with additional parts (i.e. projects/new) must come before routes without the additional part (i.e. projects/:id)
  # # This is becuase if we did the reverse order, projects/new would match to projects/:id, and "new" would not map to a dynamic id, so it would error
  # get "/projects/new", to: "projects#new", as: "new_project"
  # get "/projects/:id", to: "projects#show", as: "project"
  # get "/projects/:id/edit", to: "projects#edit", as: "edit_project"
  # post "/projects", to: "projects#create"
  # patch "/projects/:id", to: "projects#update"
  # delete "/projects/:id", to: "projects#destroy"

end
