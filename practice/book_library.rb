# Create a class Book and a class Library.
# Each book should have:
# title
# author
# The Library class should store multiple books using an array.
# Methods:
# add_book(book)
# list_books
# find_book(title)

class Book
  attr_reader :title, :author
  def initialize(title, author)
    @title = title
    @author = author
  end
end

class Library
  def initialize
    @books = []
  end

  def add_book(book)
    @books << book
    puts "#{book.title} added successfully"
  end

  def list_books
    if @books.empty?N
      puts " No books Available"
    else
      puts "Library Books :"
      @books.each do |book|
        puts "Title: #{book.title}, Author: #{book.author}"
      end
    end
  end

  def find_book(title)
    found = @books.find {|book| book.title == title}

    if found
      puts "Book found"
      puts "Title: #{found.title}"
      puts "Author: #{found.author}"
    else
      puts "Book not found"
    end
  end
end


book1 = Book.new("Ruby Basics", "David")
book2 = Book.new("Rails Guide", "Roy")

library = Library.new

library.add_book(book1)
library.add_book(book2)

library.list_books

library.find_book("Ruby Basics")
library.find_book("Ruby")



  
    


