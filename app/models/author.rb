class Author
  attr_reader :name


  def initialize(name)
    @name = name
  
  end

  def articles
    # Article.all.detect{|a| a.author == self.name}

    # Article.all.author == self
    Article.all.select {|article| article.author == self}
  end

  def magazines
    author_mags = []
    Article.all.select do |article|
      author_mags << article.magazine if article.author == self
    end
    author_mags.uniq
  end


  def add_article(magazine, title)
    if magazine.is_a?(Magazine) && title.is_a?(String)
      Article.new(self, magazine, title)
    end
  end

  def topic_areas
    author_mag_categories = []
    Article.all.select do |article|
      author_mag_categories << article.magazine.category if article.author == self
    end
    author_mag_categories.uniq
  end


end
