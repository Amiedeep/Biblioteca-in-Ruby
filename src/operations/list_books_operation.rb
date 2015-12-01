require './src/display'

class ListBooksOperation

  def initialize library
    @library = library
  end

  def execute
    book_list = @library.list_books
    Display.new(book_list).print_on_console
  end
end