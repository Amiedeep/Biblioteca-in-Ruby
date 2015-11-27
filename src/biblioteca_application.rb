require_relative 'display'
require_relative 'book'
require_relative 'library'
require_relative 'menu_options'
require_relative 'interpreter'

class BibliotecaApplication

  def initialize welcome_display, options_display, console, interpreter
    @welcome_display = welcome_display
    @options_display = options_display
    @console = console
    @interpreter = interpreter
  end

  def start_application
    print_welcome_message
    take_input_and_interpret
  end

  private
  def print_welcome_message
    @welcome_display.print_on_console
  end

  def take_input_and_interpret
    while true
      @options_display.print_on_console
      user_input = @console.read_input
      result = @interpreter.interpret user_input.chomp
      Display.new(result).print_on_console
    end
  end

  def self.start
    welcome_display = Display.new "Welcome to biblioteca"
    available_books = [Book.new("the pragmattic programmer", "Me", 2010), Book.new("Clean code", "Me", 2011)]
    library = Library.new(available_books)
    menu_options = MenuOptions.new
    interpreter = Interpreter.new library
    options_display = Display.new menu_options.get_options
    console = Display.new
    BibliotecaApplication.new(welcome_display, options_display, console, interpreter).start_application
  end
end