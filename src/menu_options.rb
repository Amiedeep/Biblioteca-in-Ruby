class MenuOptions

  def initialize
    @menu_option = ['List Books', 'Checkout Book']
  end

  def get_options
    index = 0
    options = "Please select a option\n" +
        @menu_option.map { |option|
          index = index + 1
          index.to_s + ': ' + option + "\n"
        }.join
    options + "q: Quit\n"
  end
end