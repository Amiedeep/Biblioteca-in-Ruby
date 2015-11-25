require_relative 'display'
require_relative 'book'

class BibliotecaApplication

  def initialize welcome_display, books_display
    @welcome_display = welcome_display
    @books_display = books_display
  end

  def start_application
    print_welcome_message
    print_books
  end

  private
  def print_welcome_message
    @welcome_display.print_on_console
  end

  def print_books
    @books_display.print_on_console
  end

  welcome_display = Display.new "Welcome to biblioteca"
  books_headers = "Available books are : \n" + "%-50s %-50s" % ["Name", "Author"] + "Year of Publication"
  available_books = [Book.new("the pragmattic programmer", "Me", 2010), Book.new("Clean code", "Me", 2011)]
  books_display = Display.new(books_headers + available_books.each{ |book| book.to_str }.join)
  BibliotecaApplication.new(welcome_display, books_display).start_application
end