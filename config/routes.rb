Rails.application.routes.draw do
  resources :contacts
  get 'contacts/new'
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/, defaults: {locale: "en"} do
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root 'blogs#index'
  
  resources :blogs
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  if Rails.env.development?
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
end
