class Interpreter

  def initialize library
    @library = library
  end

  def interpret option
    @library.list_books
  end
end