require './src/operations/invalid_option_operation'

describe 'InvalidOptionOperation' do
  
  describe '#execute' do

    it 'should print invalid option message on the console' do
      invalid_option_operation = InvalidOptionOperation.new

      expect(STDOUT).to receive('puts').with("\nSelect a valid option!")

      invalid_option_operation.execute
    end
  end
end