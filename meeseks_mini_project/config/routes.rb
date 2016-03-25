Rails.application.routes.draw do
  devise_for :users
  
  resources :users do
    resources :searches
  end

  resources :searches

  resources :friends

  root "users#index"
  get "/about" => "static#about"
end

#                   Prefix Verb   URI Pattern                                 Controller#Action
#         new_user_session GET    /users/sign_in(.:format)                    devise/sessions#new
#             user_session POST   /users/sign_in(.:format)                    devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)                   devise/sessions#destroy
#            user_password POST   /users/password(.:format)                   devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)               devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)              devise/passwords#edit
#                          PATCH  /users/password(.:format)                   devise/passwords#update
#                          PUT    /users/password(.:format)                   devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)                     devise/registrations#cancel
#        user_registration POST   /users(.:format)                            devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)                    devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)                       devise/registrations#edit
#                          PATCH  /users(.:format)                            devise/registrations#update
#                          PUT    /users(.:format)                            devise/registrations#update
#                          DELETE /users(.:format)                            devise/registrations#destroy
#            user_searches GET    /users/:user_id/searches(.:format)          searches#index
#                          POST   /users/:user_id/searches(.:format)          searches#create
#          new_user_search GET    /users/:user_id/searches/new(.:format)      searches#new
#         edit_user_search GET    /users/:user_id/searches/:id/edit(.:format) searches#edit
#              user_search GET    /users/:user_id/searches/:id(.:format)      searches#show
#                          PATCH  /users/:user_id/searches/:id(.:format)      searches#update
#                          PUT    /users/:user_id/searches/:id(.:format)      searches#update
#                          DELETE /users/:user_id/searches/:id(.:format)      searches#destroy
#                    users GET    /users(.:format)                            users#index
#                          POST   /users(.:format)                            users#create
#                 new_user GET    /users/new(.:format)                        users#new
#                edit_user GET    /users/:id/edit(.:format)                   users#edit
#                     user GET    /users/:id(.:format)                        users#show
#                          PATCH  /users/:id(.:format)                        users#update
#                          PUT    /users/:id(.:format)                        users#update
#                          DELETE /users/:id(.:format)                        users#destroy
#                 searches GET    /searches(.:format)                         searches#index
#                          POST   /searches(.:format)                         searches#create
#               new_search GET    /searches/new(.:format)                     searches#new
#              edit_search GET    /searches/:id/edit(.:format)                searches#edit
#                   search GET    /searches/:id(.:format)                     searches#show
#                          PATCH  /searches/:id(.:format)                     searches#update
#                          PUT    /searches/:id(.:format)                     searches#update
#                          DELETE /searches/:id(.:format)                     searches#destroy
#                  friends GET    /friends(.:format)                          friends#index
#                          POST   /friends(.:format)                          friends#create
#               new_friend GET    /friends/new(.:format)                      friends#new
#              edit_friend GET    /friends/:id/edit(.:format)                 friends#edit
#                   friend GET    /friends/:id(.:format)                      friends#show
#                          PATCH  /friends/:id(.:format)                      friends#update
#                          PUT    /friends/:id(.:format)                      friends#update
#                          DELETE /friends/:id(.:format)                      friends#destroy
#                     root GET    /                                           users#index