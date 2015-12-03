require './src/syntax_sugar'

class Library

  def initialize available_books
    @available_books = available_books
  end

  def list_books
    print_headers + @available_books.each{ |book| book.to_str }.join
  end

  private
  def print_headers
    SyntaxSugar::CONSTANTS::LIST_BOOKS_HEADERS
  end
end