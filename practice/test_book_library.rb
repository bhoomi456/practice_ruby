require "minitest/autorun"
require_relative "book_library"

class TestBookLibrary < Minitest::Test 
  def setup
    @book1 = Book.new("Ruby Basics", "David")
    @book2 = Book.new("Rails Guide", "Roy")
    @library = Library.new
  end

  def test_title
    assert_equal "Ruby Basics" , @book1.title
  end

  def test_author
    assert_equal "David" , @book1.author
  end

  def test_add_book
    output = capture_io do
      @library.add_book(@book1)
    end
    assert_equal "Ruby Basics added successfully\n" , output[0]
  end

  def test_empty_library
    output = capture_io do
      @library.list_books
    end
    assert_equal "No books Available\n", output[0]
  end
  def test_books_present
    output = capture_io do
      @library.list_books
    end
    assert_equal "Title: Ruby Basics, Author: David\n", output[0]
  end
  
  
end