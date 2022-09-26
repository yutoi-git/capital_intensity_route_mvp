Rails.application.routes.draw do
  get '/', to: redirect('/11302')
  get ':line_code', to: 'lines#show'
end
