require './src/biblioteca_application';

describe 'BibliotecaApplication' do

  before(:each) {
    @biblioteca_application = BibliotecaApplication.new
  }

  describe '#start_application' do

    it 'should print welcome message on console' do
      expect(STDOUT).to receive(:puts).with('Welcome to biblioteca')
      @biblioteca_application.start_application
    end
  end
end