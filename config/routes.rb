ComfyImprint::Engine.routes.draw do
  resources :contacts , only: [:index, :create, :new]
  get 'thank_you', to: 'contacts#thank_you'

  root to: "contacts#new"
end