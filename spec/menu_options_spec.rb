require './src/menu_options'

describe "MenuOptions" do

  describe "#get_options" do

    it 'should return the menu option' do
      menu_options = MenuOptions.new

      expect(menu_options.get_options).to eq("Please select a option\n1: List Books\nq: Quit\n")
    end
  end
end