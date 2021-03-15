class ReviewsController < ApplicationController
  before_action :find_book, only: [:new, :create, :edit, :update]
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.book = @book
    # @review.user = current_user
    if @review.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    redirect_to user_path(current_user), notice: 'Review was successfully updated.'
  end

  private

  def find_book
    @book = Book.find(params[:book_id])
  end

  def review_params
    params.require(:review).permit(:title, :content, :date_read)
  end
end
