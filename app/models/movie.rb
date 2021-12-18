class Movie < ActiveRecord::Base
  
  def all_ratings
    return ['G', 'PG', 'PG-13', 'R']
  end
  
  def self.with_ratings (ratings_list)
    if ratings_list.nil?
      return Movies.all
    else
      return Movies.where("rating = ?", params[:ratings_list])
    end
  end
  
end
