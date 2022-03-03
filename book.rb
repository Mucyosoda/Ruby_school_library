require_relative('./rental')

class Book
  attr_accessor :title, :author, :rentals

  def intialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  # method for rental

  def add_rental(book)
    @rentals.push(book)
  end

  def to_s
    "Title: \"#{@title}\", Author: #{author}"
  end
end
