class MovieFake
  attr_reader :id, :title, :url, :poster

  @@number_movies = 0

  def initialize id, title, url, poster
    @@number_movies += 1
    @id = @@number_movies
    @title = title + " (" + @id.to_s + ")"
    @url = url
    @poster = poster
    
  end

end


class SearchFake
  attr_accessor :text, :movies

  def initialize text_search
    @movies = []

    unless text_search == ""
      poster = "http://ia.media-imdb.com/images/M/MV5BMTYwNjAyODIyMF5BMl5BanBnXkFtZTYwNDMwMDk2.jpg"
      @movies << MovieFake.new("id", text_search, "http://imdb.com/", "")
      5.times {@movies << MovieFake.new("id", text_search, "http://imdb.com/", poster)}

      #by this way doesn't work the @@number_movies
    end

    
  end

end

# @movies_list = [
    #   #<Imdb::Movie:0x007f9a41ce2790
    #   {@id="0096895",
    #   @title="Batman (1989)",
    #   @url="http://akas.imdb.com/title/tt0096895/combined"},
    #   #<Imdb::Movie:0x007f9a41ce24c0
    #   {@id="0059968",
    #   @title="Batman (1966) (TV Series)",
    #   @url="http://akas.imdb.com/title/tt0059968/combined"},
    #   #<Imdb::Movie:0x007f9a41ce2218
    #   {@id="0103359",
    #   @title="Batman (1992) (TV Series)",
    #   @url="http://akas.imdb.com/title/tt0103359/combined"},
    #   #<Imdb::Movie:0x007f9a41ce1f98
    #   {@id="0372784",
    #   @title="Batman Begins (2005)",
    #   @url="http://akas.imdb.com/title/tt0372784/combined"},
    #   #<Imdb::Movie:0x007f9a41ce1e30
    #   {@id="2975590",
    #   @title="Batman v Superman: Dawn of Justice (2016)",
    #   @url="http://akas.imdb.com/title/tt2975590/combined"},
    #   #<Imdb::Movie:0x007f9a41ce1ca0
    #   {@id="0118688",
    #   @title="Batman y Robin (1997)",
    #   @url="http://akas.imdb.com/title/tt0118688/combined"},
    #   #<Imdb::Movie:0x007f9a41ce1b38
    #   {@id="0112462",
    #   @title="Batman Forever (1995)",
    #   @url="http://akas.imdb.com/title/tt0112462/combined"},
    #   #<Imdb::Movie:0x007f9a41ce1a48
    #   {@id="0035665",
    #   @title="Batman (1943)",
    #   @url="http://akas.imdb.com/title/tt0035665/combined"},
    #   #<Imdb::Movie:0x007f9a41ce1958
    #   {@id="0103776",
    #   @title="Batman vuelve (1992)",
    #   @url="http://akas.imdb.com/title/tt0103776/combined"},
    #   #<Imdb::Movie:0x007f9a41ce1840
    #   {@id="0398417",
    #   @title="The Batman (2004) (TV Series)",
    #   @url="http://akas.imdb.com/title/tt0398417/combined"},
    #   #<Imdb::Movie:0x007f9a41ce1688
    #   {@id="0147746",
    #   @title="Batman del futuro (1999) (TV Series)",
    #   @url="http://akas.imdb.com/title/tt0147746/combined"},
    #   #<Imdb::Movie:0x007f9a41ce1548
    #   {@id="3139072",
    #   @title="El hijo de Batman (2014) (Video)",
    #   @url="http://akas.imdb.com/title/tt3139072/combined"},
    #   #<Imdb::Movie:0x007f9a41ce1408
    #   {@id="3554580",
    #   @title="Batman: Arkham Knight (2015) (Video Game)",
    #   @url="http://akas.imdb.com/title/tt3554580/combined"},
    #   #<Imdb::Movie:0x007f9a41ce12c8
    #   {@id="0060153",
    #   @title="Batman (1966)",
    #   @url="http://akas.imdb.com/title/tt0060153/combined"},
    #   #<Imdb::Movie:0x007f9a41ce1188
    #   {@id="0450392",
    #   @title="Batman Begins (2005) (Video Game)",
    #   @url="http://akas.imdb.com/title/tt0450392/combined"},
    #   #<Imdb::Movie:0x007f9a41ce1048
    #  ]