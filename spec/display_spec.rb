require './src/display'

describe "Display" do

  describe "#print_on_console" do

    it 'should print messgae on the console' do
      display = Display.new('some message')
      expect(STDOUT).to receive("puts").with('some message')
      display.print_on_console
    end
  end
end
