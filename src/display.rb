
class Display

  def initialize(message = nil)
    @message = message
  end

  def print_on_console
    puts @message
  end
end