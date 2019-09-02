require('minitest/autorun')
require('minitest/pride')
require_relative('../extension.rb')

# Create a class for a Library that has an array of books. Each book should be a hash with a title, which is a string, and rental details, which is another hash with a student name and due date.
class TestLibrary < MiniTest::Test

  def setup
    @books = [
      {
        title: "lord of the rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {
        title: "lord of the flies",
        rental_details: {
          student_name: "Paul",
          date: "01/11/16"
        }
      },
      {
        title: "the davinci code",
        rental_details: {
          student_name: "Pete",
          date: "01/10/16"
        }
      }
    ]

    @new_book = {
      title: "to kill a mockingbird",
      rental_details: {
        student_name: "",
        date: ""
      }
    }

    @library = Library.new(@books)

  end

  # Create a getter for the books
  def test_books
    assert_equal(@books, @library.books())
  end

  # Create a method that takes in a book title and returns all of the information about that book.
  def test_find_by_title
    book_info = {
      title: "lord of the rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
      }
    }
    assert_equal(book_info, @library.find_by_title("lord of the rings"))
  end

  # Create a method that takes in a book title and returns only the rental details for that book.
  def test_return_rental_details
    rental_details = {
      student_name: "Paul",
      date: "01/11/16"
    }
    assert_equal(rental_details, @library.return_rental_details("lord of the flies"))
  end

  # Create a method that takes in a book title and adds it to our book list (add a new hash for the book with the student name and date being left as empty strings)
  def test_add_new_book
    @library.add_new_book(@new_book)
    assert_equal(4, @books.length())
  end

  # Create a method that changes the rental details of a book by taking in the title of the book, the student renting it and the date it's due to be returned.
  def test_update_rental_details
    @library.add_new_book(@new_book)
    rental_details = {
      student_name: "Dave",
      date: "01/11/17"
    }
    new_details = {
      title: "to kill a mockingbird",
      rental_details: {
        student_name: "Dave",
        date: "01/11/17"
      }
    }
    assert_equal(new_details, @library.update_rental_details("to kill a mockingbird", rental_details))
  end

end
