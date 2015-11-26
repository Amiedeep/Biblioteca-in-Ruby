require './src/display'

describe "Display" do

  describe "#print_on_console" do

    it 'should print messgae on the console' do
      display = Display.new('some message')
      expect(STDOUT).to receive("puts").with('some message')
      display.print_on_console
    end
  end

  describe "#read_input" do

    it 'should read input from the console' do
      display = Display.new
      $stdin = StringIO.new("some input")
      expect(display.read_input).to eq("some input")
      $stdin = STDIN
    end
  end
end
