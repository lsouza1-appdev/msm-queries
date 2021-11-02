class MoviesController < ApplicationController
  
  def movies_index
    
    render(:template => "/movies_template/movies_index.html.erb")
  end 



end 