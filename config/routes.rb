Rails.application.routes.draw do
  root to: 'application#index'
  resource :batalla
end
