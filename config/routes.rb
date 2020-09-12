Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/issues/:issue_number/events', to: 'custom#events_list', as: 'get_events'
  post '/', to: 'custom#webhook', as: 'active_webhook'
end
