class BooksController < ApplicationController
    def index
        #here ask model to get some data
         @books = Book.all
    end

    def show
        @book = Book.find(params[:id])
    end

    def destroy
        @book = Book.find(params[:id])
        @book.destroy
        redirect_to books_path
    end

    def new
    end
    def edit
        @book = Book.find(params[:id])
    end

    def update
        @book = Book.find(params[:id]) 
        if @book.update(book_params)
            redirect_to books_path
        else
            render 'edit'
        end
    end


    def create
        #  Book.create params[:book]
         @book = Book.new(book_params)
         if @book.save
            redirect_to books_path
         else
            render "new"
         end
    end

    def book_params
        params.require(:book).permit(:title, :author)
        end
end