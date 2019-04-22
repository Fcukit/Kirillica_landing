Rails.application.routes.draw do
  match '/', to: 'landing#index', via: %I[get post]
  root to: 'landing#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
