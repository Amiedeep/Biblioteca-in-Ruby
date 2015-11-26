require './src/interpreter'

describe "Interpreter" do

  describe "#interpret" do

    context "when it gets 1 as parameter" do

      it 'should call library for books' do
        library = double("Library")
        interpreter = Interpreter.new library
        expect(library).to receive("list_books")
        interpreter.interpret("1")
      end
    end
  end
end