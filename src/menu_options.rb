class MenuOptions

  def initialize
    @menu_option = "List Books"
  end

  def get_options
      "Please select a option\n1: " + @menu_option + "\nq: Quit\n"
  end
end