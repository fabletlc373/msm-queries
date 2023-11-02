class MiscController < ApplicationController
  def homepage
    render({ :template => "misc_templates/home"})
  end

  def all_directors
    @d = Director.all
    render({ :template => "misc_templates/directors"})
  end

  def director_details
    @did = params.fetch('id')
    @ddetails = Director.all.where({:id => @did}).first
    @movies = Movie.all.where({:director_id => @did})
    render({ :template => "misc_templates/directordetails"})
  end

  def all_movies
    @d = Director.all
    @m = Movie.all
    render({ :template => "misc_templates/movies"})
  end

  def movie_details
    @mid = params.fetch('id')
    @m = Movie.all.where({:id => @mid}).first
    @d = Director.all.where({:id => @m.director_id}).first
    
    render({ :template => "misc_templates/moviedetails"})
  end

  def all_actors
    @a = Actor.all
    render({ :template => "misc_templates/actors"})
  end

  def actor_details
    @aid = params.fetch('id')
    @adetails = Actor.all.where({:id => @aid}).first
    @movies = Character.all.where({:actor_id => @aid})
    render({ :template => "misc_templates/actordetails"})
  end
  
  def youngest_dir
    @yd = Director.where.not({ :dob => nil }).order({:dob => :desc}).first
    render({ :template => "misc_templates/youngestdir"})
  end

  def eldest_dir
    @yd = Director.where.not({ :dob => nil }).order({:dob => :asc}).first
    render({ :template => "misc_templates/oldestdir"})
  end
end
