class BibliotecaApplication

  def start_application
    welcome_message
  end

  private
  def welcome_message
    puts "Welcome to biblioteca"
  end

  BibliotecaApplication.new.start_application
end