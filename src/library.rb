class Library

  def initialize available_books
    @available_books = available_books
  end

  def list_books
    print_headers + @available_books.each{ |book| book.to_str }.join
  end

  private
  def print_headers
    "\nAvailable books are : \n" + "%-50s %-50s" % ["Name", "Author"] + "Year of Publication"
  end
end