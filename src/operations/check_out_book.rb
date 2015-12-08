require './src/display'
class CheckOutBook

  def initialize library
    @library = library
  end

  def execute
    Display.new('Enter book name to checkout').print_on_console
    book_name = gets
    @library.check_out_book book_name
  end
end