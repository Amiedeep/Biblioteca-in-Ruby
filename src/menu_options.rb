class MenuOptions

  def initialize
    @menu_option = "List Books"
  end

  def get_options
      "\nPlease select a option\n1: " + @menu_option + "\n"
  end
end