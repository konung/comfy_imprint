ComfyImprint::Engine.routes.draw do
  resources :contacts , only: [:index, :create, :new]
  match 'thank-you', to: 'contacts#thank_you'
  match 'thank_you', to: 'contacts#thank_you'
  root to: "contacts#new"
end