require_relative 'display'

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
  books_display = Display.new "Available books are : \nthe pragmattic programmer\nclean code"
  BibliotecaApplication.new(welcome_display, books_display).start_application
end