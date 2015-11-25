require './src/biblioteca_application';

describe 'BibliotecaApplication' do

  before(:each) {
    @welcome_display = double("Display")
    @library = double("Library")
    @biblioteca_application = BibliotecaApplication.new(@welcome_display, @library)
  }

  describe '#start_application' do

    it 'should print welcome message on console' do
      expect(@welcome_display).to receive("print_on_console")
      allow(@library).to receive("list_books")

      @biblioteca_application.start_application
    end

    it 'should call list_books method of Library' do
      allow(@welcome_display).to receive("print_on_console")
      expect(@library).to receive("list_books")

      @biblioteca_application.start_application
    end
  end
end