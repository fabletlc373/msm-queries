Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors/youngest", {:controller => "misc", :action => "youngest_dir"})
  get("/directors/eldest", {:controller => "misc", :action => "eldest_dir"})
  

  get("/directors", { :controller => "misc", :action => "all_directors"})
  get("/directors/:id", { :controller => "misc", :action => "director_details"})

  get("/movies", { :controller => "misc", :action => "all_movies"})
  get("/movies/:id", { :controller => "misc", :action => "movie_details"})
  
  get("/actors", { :controller => "misc", :action => "all_actors"})
  get("/actors/:id", { :controller => "misc", :action => "actor_details"})
  
  #get("/directors/eldest")
  #get("/movies")
  #get("/actors")
end
