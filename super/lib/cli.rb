class Superman::CLI

  def call
    Superman::Movie.scrape_movie
    Superman::Scraper.scrape_movie
    list_movie
    menu
    goodbye
  end

  def list_movie
    puts "superman came to save us all"
    movie = Superman::Movie.all
    movie.each.with_index(1) do |movie, i|
      puts "#{i}. #{movie.title} - #{movie.year}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Superman is a 1978 superhero film directed by Richard Donner and based on the DC Comics:"
      input = gets.strip.downcase

      if input.to_i > 0
        Superman::Movie.all[input.to_i-1]
      #  puts "#{the_movie.name} - #{the_movie.cast} - #{the_movie.superhero}"
      elsif input == "list"
        list_movie
      else
        puts "Not sure what you want, type list or exit."
      end
    end
end

  def goodbye
    puts "goodbye have a superday"
  end
end
