require './src/operations/list_books_operation'
require './src/operations/quit_operation'
require './src/operations/invalid_option_operation'

class Interpreter

  def initialize library
    @library = library
  end

  def interpret option
    case option
    when '1'
        ListBooksOperation.new(@library)
    when 'q'
        QuitOperation.new
    else
        InvalidOptionOperation.new
    end
  end
end