Rails.application.routes.draw do
  get 'api' => 'api#success'
  get 'lists/:id' => 'lists#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
