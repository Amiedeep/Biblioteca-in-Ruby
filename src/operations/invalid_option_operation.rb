require './src/display'
require './src/syntax_sugar'

class InvalidOptionOperation

  def execute
    Display.new(SyntaxSugar::CONSTANTS::INVALID_OPTION).print_on_console
  end
end