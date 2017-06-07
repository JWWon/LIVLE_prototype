Rails.application.routes.draw do
  root 'stages#home'

  get 'artists/home'
  get 'artists/:artist_id/list' => 'artists#list'
  get 'artists/add_artist'

  get 'upcomings/home'
  get 'upcomings/:upcoming_id/watch' => 'upcomings#watch'
  get 'upcomings/add_upcoming'

  get 'stages/home'
  get 'stages/:stage_id/watch' => 'stages#watch'
  get 'stages/add_stage'

  post 'stages/create_stage'
  post 'upcomings/create_upcoming'
  post 'artists/upload_image'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
