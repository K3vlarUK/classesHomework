class Library

  def initialize(books)
    @books = books
  end

  attr_accessor :books

  def find_by_title(title)
    for book in @books
      if book[:title] == title
        return book
      end
    end
  end

  def return_rental_details(title)
    for book in @books
      if book[:title] == title
        return book[:rental_details]
      end
    end
  end

  def add_new_book(new_book)
    @books.push(new_book)
  end

  def update_rental_details(title, new_details)
    for book in @books
      if book[:title] == title
        book[:rental_details] = new_details
      end
    end
    return book
  end

end
