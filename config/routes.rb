Rails.application.routes.draw do
  root 'static_pages#home'
  get  'about',   controller: :static_pages, as: 'about'
  get  'contact', controller: :static_pages, as: 'contact'
  get  'help',    controller: :static_pages, as: 'help'
end
