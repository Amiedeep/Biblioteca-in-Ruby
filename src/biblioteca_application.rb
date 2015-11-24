class BibliotecaApplication

  def initialize(welcome_message = "Welcome to biblioteca")
    @welcome_message = welcome_message
    @books = ['the pragmattic programmer', 'clean code']
  end

  def start_application
    print_welcome_message
    print_books
  end

  private
  def print_welcome_message
    puts @welcome_message
  end

  def print_books
    puts "Available books are : \n"
    puts @books
  end

  BibliotecaApplication.new.start_application
end