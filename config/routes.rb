  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  get("/mechanics",   to: "mechanics#index")
  get("/mechanics/:id",   to: "mechanics#show")
end
