
class Display

  def initialize(message = nil)
    @message = message
  end

  def print_on_console
    puts "\n" + @message
  end

  def read_input
    gets
  end
end