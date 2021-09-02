Rails.application.routes.draw do
  get 'user/read'
  get 'post/create'
  get 'ex2/loop'
  get 'main/abc'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'welcome', to: 'main#welcome'
  get 'contact_us', to: 'main#contact'
  get 'loop', to: 'ex2#loop'
end
