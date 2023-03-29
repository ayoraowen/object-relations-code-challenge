class Magazine
  attr_reader :name, :category

  @@magazines = []


  def initialize(name, category)
    @name = name
    @category = category
    @@magazines << self

  end

  def self.all
    @@magazines
  end

  def contributors
    mag_contributors = []
    Article.all.select do |article|
      mag_contributors << article.author if article.magazine == self
    end
    mag_contributors.uniq
  end

  def self.find_by_name(name)
    Magazine.all.find {|magazine| magazine.name == name}
  end

  def article_titles
    all_titles_foreach_mag = []
    Article.all.select do |article|
      all_titles_foreach_mag << article.title if article.magazine == self
    end
    all_titles_foreach_mag
  end

  def contributing_authors
    all_authors_foreach_mag = []
    Article.all.select {|article| article.magazine == self}
      .map {|article| article.author.name}
      .tally
      .select {|key, value| value > 2}
      .key
    end
end
