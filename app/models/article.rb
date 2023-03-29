class Article

    attr_reader :author, :magazine, :title

    @@articles = []

    # Here we have a method that takes in two arguments, an instance of the Dog class and an owner's name. We could call our method like this:
    # adopted(fido, "Sophie")
    # # now we can ask Fido who his owner is:
    # fido.owner
    # # => "Sophie"


    def initialize(author, magazine, title)
        if author.is_a?(Author) && magazine.is_a?(Magazine) && title.is_a?(String)
            @author = author
            @magazine = magazine
            @title = title
        end
    end

    def self.all
        @@articles
    end

    def author #repetition sice we have attr_reader :author
        @author
    end

    def magazine
        @magazine
    end


end
