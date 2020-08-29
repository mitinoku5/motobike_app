Rails.application.routes.draw do
root 'static_pages#home'
  get  'static_pages/home'
  get  'static_pages/help'
  get    '/help',    to: 'static_pages#help'
end
