require_relative 'display'
require_relative 'book'
require_relative 'library'

class BibliotecaApplication

  def initialize welcome_display, library
    @welcome_display = welcome_display
    @library = library
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
    books = @library.list_books
    Display.new(books).print_on_console
  end

  def self.start
    welcome_display = Display.new 'Welcome to biblioteca'
    available_books = [Book.new("the pragmattic programmer", "Me", 2010), Book.new("Clean code", "Me", 2011)]
    library = Library.new(available_books)
    BibliotecaApplication.new(welcome_display, library).start_application
  end
end