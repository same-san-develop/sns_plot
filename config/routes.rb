Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'index#index'
  get  'mypage'        => 'mypage#home'
  post 'mypage/update' => 'mypage#create'

  get  '/detail/:id'       , to: 'detail#home'
  get  '/detail/:id/edit'  , to: 'detail#edit'
  patch '/detail/update', to: 'detail#create'

  get '/member/:id', to: 'member#home'


end
