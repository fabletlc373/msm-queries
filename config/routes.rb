Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors", { :controller => "misc", :action => "all_directors"})
  get("/directors/:id", { :controller => "misc", :action => "director_details"})

  get("/movies", { :controller => "misc", :action => "all_movies"})
  get("/movies/:id", { :controller => "misc", :action => "movie_details"})
  
  get("/actors", { :controller => "misc", :action => "all_actors"})
  get("/actors/:id", { :controller => "misc", :action => "actor_details"})
  
  #get("/directors/youngest")
  #get("/directors/eldest")
  #get("/movies")
  #get("/actors")
end
