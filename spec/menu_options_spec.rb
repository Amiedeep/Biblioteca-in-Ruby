require './src/menu_options'

describe "MenuOptions" do

  describe "#get_options" do

    it 'should return the menu option' do
      menu_options = MenuOptions.new

      expect(menu_options.get_options).to eq("Available options are\n1: List Books\n")
    end
  end
end