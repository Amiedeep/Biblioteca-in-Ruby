class Interpreter

  def initialize library
    @library = library
  end

  def interpret option, system_exit = SystemExit
    if option != "1"
      system_exit.exit(0)
    end
    @library.list_books
  end
end