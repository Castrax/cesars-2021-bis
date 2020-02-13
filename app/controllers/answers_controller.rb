class AnswersController < ApplicationController
  def create
    @category = Category.find(params[:category_id])
    @nominee = Nominee.find(params[:answer][:nominee_id])
    @user = current_user
    @answer = Answer.new(category_id: @category.id, nominee_id: @nominee.id, user_id: @user.id)
    if @answer.save!
      redirect_to category_path(@category)
    else
      render 'categories/show'
    end
  end

  def edit
    @answer = Answer.find(params[:id])
  end

  def destroy
    @answer = Answer.find(params[:id])
    if @answer.destroy
      redirect_to category_path(params[:category_id])
    else
      render 'categories/show'
    end
  end
end
