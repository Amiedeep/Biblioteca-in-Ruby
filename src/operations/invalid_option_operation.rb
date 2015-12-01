require './src/display'

class InvalidOptionOperation

  def execute
    Display.new('Select a valid option!').print_on_console
  end
end