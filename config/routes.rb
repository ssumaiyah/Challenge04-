Rails.application.routes.draw do
  # This route maps the "root" path of our application to the "index" action of ArticlesController.
  root "articles#index"


  # This "get" route declares that GET /articles requests are mapped to the "index" action of ArticlesController.
  # get "/articles", to: "articles#index"       # Line 17 is replacing this line

=begin
  This "get" route designates a route parameter - ":id".
  A route parameter captures a segment of the request's path, and puts that value into the "params" Hash, which is accessible by the controller action.
  For example, when handling a request like GET http://localhost:3000/articles/1 - "1" would be captured as the value for ":id", which would then be accessible as "params[:id]" in the "show" action of ArticlesController.
=end
  # get "/articles/:id", to: "articles#show"    # Line 17 is replacing this line

  # This line replaces the two "get" routes above using the "resources" method, which is used to map all of the convetional routes for a collection of resources. Such as "articles" in our application.
  resources :articles                           # This line replaces lines 7 & 14

  #
  get "up" => "rails/health#show", as: :rails_health_check


  # Defines the root path route ("/")
  # root "posts#index"
end
