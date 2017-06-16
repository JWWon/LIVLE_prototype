Rails.application.routes.draw do
  root 'stages#home'

  get 'stages/home'
  get '/stages/:stage_token/watch' => 'stages#watch'
  # Stage CRUD
  get 'stages/edit' => 'stages#edit_stage'
  post 'stages/create_stage'
  get 'stages/:stage_token/update_stage' => 'stages#update_stage'
  get 'stages/:stage_token/destroy_stage' => 'stages#destroy_stage'

  get 'upcomings/home'
  get 'upcomings/:upcoming_token/watch' => 'upcomings#watch'
  # Upcoming CRUD
  get 'upcomings/edit' => 'upcomings#edit_upcoming'
  post 'upcomings/create_upcoming'
  get 'upcomings/:upcoming_token/update_upcoming' => 'upcomings#update_upcoming'
  get 'upcomings/:upcoming_token/destroy_upcoming' => 'upcomings#destroy_upcoming'

  get 'artists/home'
  get 'artists/:artist_id/list' => 'artists#list'
  # Artist CRUD
  get 'artists/edit' => 'artists#edit_artist'
  post 'artists/upload_image'
  get 'artists/:artist_id/update_artist' => 'artists#update_artist'
  get 'artists/:artist_id/destroy_artist' => 'artists#destroy_artist'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end