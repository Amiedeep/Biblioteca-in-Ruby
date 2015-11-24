require './src/biblioteca_application';

describe 'BibliotecaApplication' do

  before(:each) {
    @welcome_display = double("Display")
    @books_display = double("Display")
    @biblioteca_application = BibliotecaApplication.new(@welcome_display, @books_display)
  }

  describe '#start_application' do

    it 'should print welcome message on console' do
      expect(@welcome_display).to receive("print_on_console")
      allow(@books_display).to receive("print_on_console")

      @biblioteca_application.start_application
    end

    it 'should print books on console' do
      allow(@welcome_display).to receive("print_on_console")
      expect(@books_display).to receive("print_on_console")

      @biblioteca_application.start_application
    end
  end
end