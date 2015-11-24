require './src/biblioteca_application';

describe 'BibliotecaApplication' do

  before(:each) {
    @biblioteca_application = BibliotecaApplication.new('Welcome to biblioteca')
  }

  before(:all) {
    @original_io = $stdout
    $stdout = StringIO.new
  }

  after(:all) {
    $stdout = @original_io
  }

  describe '#start_application' do

    it 'should print welcome message on console' do
      @biblioteca_application.start_application
      expect(console_output).to include('Welcome to biblioteca')
    end

    it 'should print books' do
      @biblioteca_application.start_application
      expect(console_output).to include("Available books are : \nthe pragmattic programmer\nclean code")
    end
  end
end

private
def console_output
  $stdout.string
end