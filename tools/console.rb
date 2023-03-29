require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
author1 = Author.new("Owen")
author2 = Author.new("Jill")

mag1 = Magazine.new("Cosmo", "Lifestyle")
mag2 = Magazine.new("AD", "Architecture")
mag3 = Magazine.new("Mens Health", "Health")


art1 = Article.new(author1, mag1, "Trends")
art2 = Article.new(author2, mag2, "Big Homes")

author2.add_article(mag3, "Muscle Building")




### DO NOT REMOVE THIS
binding.pry

0
