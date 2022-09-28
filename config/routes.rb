Rails.application.routes.draw do
  root  'lines#index'
  get ':line_code', to: 'lines#show'
end
