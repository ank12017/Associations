class BooksController < ApplicationController
  	def index
        @q = Book.ransack(params[:q])
        @books = @q.result(distinct: true).order(:name).page params[:page]
  	end
    def show 
     @book = Book.find(params[:id])
    end
    def new
	  @book = Book.new
	  end
    def edit
         @book = Book.find(params[:id])
	  end
	  def create
        @book = Book.new(book_params)

            if @book.save
                AuthorMailer.welcome_email(@book.author).deliver_now
               redirect_to @book
            else
               render 'new'
            end
    end
    def update
      @book = Book.find(params[:id])
          if @book.update(book_params)
		    redirect_to @book
		  else
		    render 'edit'
		  end
	  end
    def destroy
	    @book = Book.find(params[:id])
       @book.destroy
       AuthorMailer.destroy_email(@book.author).deliver_now
	      redirect_to books_path
    end
    private
     def book_params
        params.require(:book).permit(:name, :author_id)
     end

end
