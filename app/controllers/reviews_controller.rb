class ReviewsController < ApplicationController
  before_action :find_book, only: [:new, :create, :edit, :update]
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.book = @book
    if @review.save
      @review.create_activity :create, owner: current_user # Tracking via activity feed if new book reviewed
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      @review.create_activity :update, owner: current_user # Tracking if review updated
      redirect_to user_path(current_user), notice: 'Review was successfully updated.'
    end
  end

  private

  def find_book
    @book = Book.find(params[:book_id])
  end

  def review_params
    params.require(:review).permit(:title, :content, :date_read)
  end
end
