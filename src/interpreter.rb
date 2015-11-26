class Interpreter

  def initialize library
    @library = library
  end

  def interpret option
    if option != "1"
      exit(0)
    end
    @library.list_books
  end
end