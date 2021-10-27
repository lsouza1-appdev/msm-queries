class DirectorsController < ApplicationController 

  def index

    render({:template =>  "directors_template/index.html.erb"})

  end 

  def wisest

    @oldest = Director.order({:dob => :asc}).where.not({:dob => :nil}).at(0)
    @name = @oldest.name
    @id = @oldest.id
    @dob = @oldest.dob


    render({:template => "directors_template/eldest.html.erb"})
  
  end 

  def youngest

    @youngest = Director.order({:dob => :desc}).at(0)
    @name = @youngest.name
    @id = @youngest.id
    @dob = @youngest.dob


    render({:template => "directors_template/youngest.html.erb"})
  end 

  def dynamic_director
    @id = params.fetch("id")
    @director = Director.where({:id => @id}).at(0)
    @name = @director.name
    @dob = @director.dob
    @bio = @director.bio
    @crated_at = @director.created_at
    @updated_at = @director.updated_at
    @image = @director.image
    render({:template => "directors_template/dynamic_director.html.erb"})
  end 
    

end 