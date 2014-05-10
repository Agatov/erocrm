Erocrm::Application.routes.draw do
  root to: 'visits#index'

  resources :visits do
    resources :visit_programs
  end
  resources :programs
  resources :workers
end
