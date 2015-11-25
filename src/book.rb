class Book

  def initialize name, author, year_published
    @name = name
    @author = author
    @year_published = year_published
  end

  def to_str
    "\n%-50s %-50s" % [@name, @author] + @year_published.to_s
  end
end