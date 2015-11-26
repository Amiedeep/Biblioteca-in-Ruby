require './src/interpreter'

describe "Interpreter" do

  describe "#interpret" do

    before(:each) {
      @library = double("Library")
      @interpreter = Interpreter.new @library
    }

    context "when it gets 1 as parameter" do

      it 'should call library for books' do
        expect(@library).to receive("list_books")
        @interpreter.interpret("1")
      end
    end

    context "when it gets invalid option as parameter" do

      it 'should exit the system' do
        expect(@interpreter.interpret("29")).to raise(SystemExit)
      end
    end
  end
end