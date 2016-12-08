# vim: sts=2 
Rails.application.routes.draw do

  resources :dnsrecords, defaults: { format: 'json' }

  get 'welcome/index'
  root 'welcome#index'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
