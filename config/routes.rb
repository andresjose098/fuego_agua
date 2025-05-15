Rails.application.routes.draw do
  get "vela_ganadora_edicion_limitadas/index"
  get "ela_ganadora_edicion_limitadas/index"
  get "foro_velas/index"
  get "personalizar_velas/index"
  get "users/show"
  get "foro/index"
  get "velas/personalizar"
  get "home/index"
  get "registrations/new"
  get "registrations/create"
  get "sessions/new"
  get "sessions/create"
  get "sessions/destroy"
  root 'home#index'

 resources :velas, only: [:new, :create, :index]


  resources :personalizar_velas, only: [:new,:create,:index]

  resources :foro_velas, only: [:new, :create,:index]
  resources :vela_ganadora_edicion_limitadas, only: [:index]



  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: :logout


  get 'register', to: 'registrations#new'
  post 'register', to: 'registrations#create'

  # get 'personalizar_vela', to: 'velas#personalizar', as: 'personalizar_vela'

  # Ruta para foro
  #get 'foro', to: 'foro#index', as: 'foro'

  # Ruta para cuenta de usuario
  get 'mi_cuenta', to: 'users#show', as: 'cuenta'
#get '/progreso', to: 'progreso#index', as: :progreso

  # Otras rutas necesarias
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
end
