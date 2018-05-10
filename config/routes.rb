Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get 'home/index'
  get 'home/write'
  post 'home/new'
  get 'home/edit/:post_id' => 'home#edit'
  get 'home/delete/:post_id' => 'home#delete'
  post 'home/update/:post_id' => 'home#update'
end
