class Superman::Scraper

       def self.scrape_movie
      doc = Nokogiri::HTML(open('https://www.imdb.com/title/tt0078346/fullcredits?ref_=tt_cl_sm#cast'))
      list_doc = doc.css("table.cast_list").css('tr')
      doc.css('.movie-info').each do |movie|
       binding.pry
     book = Superman::Movie.new(title, year)
      title = movie.css('.title').value
      year = movie.css('h4.year').value  
    end
   end
 end
