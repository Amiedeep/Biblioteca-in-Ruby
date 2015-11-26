class Interpreter

  def initialize library
    @library = library
  end

  def interpret option, kernel = Kernel
    if option != "1"
      kernel.exit(0)
    end
    @library.list_books
  end
end