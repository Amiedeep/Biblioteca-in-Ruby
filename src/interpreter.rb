class Interpreter

  def initialize library
    @library = library
  end

  def interpret option
    if option != "1"
      return 'Select a valid option!'
    end
    @library.list_books
  end
end