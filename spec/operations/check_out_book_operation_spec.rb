require './src/operations/check_out_book_operation'

describe 'CheckOutBookOperation' do

  describe '#execute' do

    it 'should ask to enter book name and call checkout_book method of library' do

      library = double('Library')
      check_out_book_operation = CheckOutBookOperation.new library

      expect(STDOUT).to receive('puts').with("\nEnter book name to checkout")
      expect(check_out_book_operation).to receive("gets").and_return('some book')
      expect(library).to receive('check_out_book').with('some book')

      check_out_book_operation.execute
    end
  end
end