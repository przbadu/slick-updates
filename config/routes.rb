Rails.application.routes.draw do
  authenticate do
    root to: redirect('/update_forms')
  end
  root to: 'high_voltage/pages#show', id: 'home'

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'

  match '/auth/:provider/callback', to: 'omniauth_callbacks#callback', via: [:get, :post]

  resources :public_update_forms, path: 'updates', param: :token, only: [:show, :update]

  resources :update_forms, only: [:index, :new, :create] do
    resources :questions, only: [:index, :create, :destroy, :edit, :update]
  end
end
