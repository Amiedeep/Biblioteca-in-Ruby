require './src/operations/quit_operation'

describe 'QuitOperation' do

  describe '#execute' do

    it 'should quit the application' do
      kernel = double('Kernel')
      quit_operation = QuitOperation.new kernel

      expect(kernel).to receive("exit").with(0)

      quit_operation.execute
    end
  end
end