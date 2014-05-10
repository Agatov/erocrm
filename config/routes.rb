Erocrm::Application.routes.draw do
  root to: 'visits#index'

  resources :visits
  resources :programs
end
