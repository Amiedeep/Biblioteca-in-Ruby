require './src/interpreter'

describe "Interpreter" do

  describe "#interpret" do

    before(:each) {
      @library = double("Library")
      @interpreter = Interpreter.new @library
      @system_exit = double("SystemExit")
    }

    context 'when it gets 1 as parameter' do

      it 'should call library for books' do
        expect(@library).to receive("list_books")

        @interpreter.interpret('1')
      end
    end

    context 'when it gets invalid option as parameter' do

      it 'should exit the system' do
        expect(@system_exit).to receive("exit").with(0)
        allow(@library).to receive("list_books")

        @interpreter.interpret('29', @system_exit)
      end
    end
  end
end