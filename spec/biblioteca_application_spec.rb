#TODO figure out how to write test for loop.
require './src/biblioteca_application';

describe 'BibliotecaApplication' do

  before(:all) {
    @welcome_display = double("Display")
    @option_display = double("Display")
    @console = double("Console")
    @library = double("Library")
    @interpreter = Interpreter.new @library
    @biblioteca_application = BibliotecaApplication.new(@welcome_display, @option_display, @console, @interpreter)
  }

  describe '#start_application' do

    xit 'should print welcome message on console' do
      expect(@welcome_display).to receive("print_on_console")
      allow(@option_display).to receive("print_on_console")
      allow(@console).to receive("read_input").and_return("1", "q")
      allow(@library).to receive("list_books")
      # allow(@interpreter).to receive("interpret")

      @biblioteca_application.start_application
    end

    xit 'should call list_books method of Library' do
      allow(@welcome_display).to receive("print_on_console")
      expect(@library).to receive("list_books")

      @biblioteca_application.start_application
    end
  end
end