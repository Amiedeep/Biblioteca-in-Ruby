class QuitOperation

  def initialize kernel = Kernel
    @kernel = kernel
  end

  def execute
    @kernel.exit(0)
  end
end