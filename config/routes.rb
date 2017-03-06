Rails.application.routes.draw do

  devise_for :users, controllers: { sessions: "users/sessions", registrations: "users/registrations" }

  root 'welcome#index'

  resources :players 

  resources :rinks do
    resources :games
  end

  get 'rinks/search/:zip' => 'rinks#search'
  get 'upcoming' => 'welcome#upcoming'
  
end

#                   Prefix Verb   URI Pattern                              Controller#Action
#         new_user_session GET    /users/sign_in(.:format)                 users/sessions#new
#             user_session POST   /users/sign_in(.:format)                 users/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)                users/sessions#destroy
#            user_password POST   /users/password(.:format)                devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)            devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)           devise/passwords#edit
#                          PATCH  /users/password(.:format)                devise/passwords#update
#                          PUT    /users/password(.:format)                devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)                  users/registrations#cancel
#        user_registration POST   /users(.:format)                         users/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)                 users/registrations#new
#   edit_user_registration GET    /users/edit(.:format)                    users/registrations#edit
#                          PATCH  /users(.:format)                         users/registrations#update
#                          PUT    /users(.:format)                         users/registrations#update
#                          DELETE /users(.:format)                         users/registrations#destroy
#                     root GET    /                                        welcome#index
#                  players GET    /players(.:format)                       players#index
#                          POST   /players(.:format)                       players#create
#               new_player GET    /players/new(.:format)                   players#new
#              edit_player GET    /players/:id/edit(.:format)              players#edit
#                   player GET    /players/:id(.:format)                   players#show
#                          PATCH  /players/:id(.:format)                   players#update
#                          PUT    /players/:id(.:format)                   players#update
#                          DELETE /players/:id(.:format)                   players#destroy
#               rink_games GET    /rinks/:rink_id/games(.:format)          games#index
#                          POST   /rinks/:rink_id/games(.:format)          games#create
#            new_rink_game GET    /rinks/:rink_id/games/new(.:format)      games#new
#           edit_rink_game GET    /rinks/:rink_id/games/:id/edit(.:format) games#edit
#                rink_game GET    /rinks/:rink_id/games/:id(.:format)      games#show
#                          PATCH  /rinks/:rink_id/games/:id(.:format)      games#update
#                          PUT    /rinks/:rink_id/games/:id(.:format)      games#update
#                          DELETE /rinks/:rink_id/games/:id(.:format)      games#destroy
#                    rinks GET    /rinks(.:format)                         rinks#index
#                          POST   /rinks(.:format)                         rinks#create
#                 new_rink GET    /rinks/new(.:format)                     rinks#new
#                edit_rink GET    /rinks/:id/edit(.:format)                rinks#edit
#                     rink GET    /rinks/:id(.:format)                     rinks#show
#                          PATCH  /rinks/:id(.:format)                     rinks#update
#                          PUT    /rinks/:id(.:format)                     rinks#update
#                          DELETE /rinks/:id(.:format)                     rinks#destroy
#                          GET    /rinks/search/:zip(.:format)             rinks#search
#                 upcoming GET    /upcoming(.:format)                      welcome#upcoming