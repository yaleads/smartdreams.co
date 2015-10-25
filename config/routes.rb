Rails.application.routes.draw do
  resources :students

  root 'students#index'

  get "/404" => "errors#not_found"
  get "/500" => "errors#internal_server_error"
end
