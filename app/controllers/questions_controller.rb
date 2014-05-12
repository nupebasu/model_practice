class QuestionsController < ApplicationController
  def question_1
    # What is the most recent movie on the list that the second actor appeared in?


    # @most_recent_movie_for_second_actor = Actor.second.movies.order("year DESC").first.
  end

  def question_2
    # Who directed the longest movie on the list?

    # Your Ruby goes here.

    @director_of_longest_movie = Movie.order("duration DESC").first.director.name

    # @director_of_longest_movie = ???
  end

  def question_3
    # Which director has the most movies on the list?

    the_leader = Director.new

    Director.all.each do |the_director|
      if the_director.movies.count > the_leader.movies.count
        the_leader= the_director
      end
    end

  @director_with_the_most_movies = the_leader.name

  end

  def question_4
    # Which actor has been in the most movies on the list?
    # (If there's a tie, any one of them is fine)

    # Your Ruby goes here.
    the_leader=Actor.new

    Actor.all.each do |the_actor|
      if the_actor.movies.count > the_leader.movies.count
        the_leader=the_actor
      end
    end

  @actor_with_the_most_movies = the_leader.name

  end

  def question_5
    # This one is hard. Work on it after all your other review is complete.

    # Which actor/director pair has the most movies on the list?
    # (If there's a tie, any pair of them is fine)

    # Your Ruby goes here.

    # @actor = ???
    # @director = ???
    # @movies_together = ???
  end
end
