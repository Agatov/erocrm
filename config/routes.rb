Erocrm::Application.routes.draw do
  root to: 'visits#index'

  resources :visits
end
