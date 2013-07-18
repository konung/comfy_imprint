ComfyImprint::Engine.routes.draw do
  resources :contacts , only: [:index, :create, :new, :show]
  root to: "contacts#new"
end