Rails.application.routes.draw do
  root to: 'application#index'
  resource :batallas

  post 'atacar', to: 'ataques#atacar'
end
