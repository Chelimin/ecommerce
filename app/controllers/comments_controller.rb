class CommentsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @comment = @product.comments.new(comment_params)
    @comment.user = current_user
    respond_to do |format|
      if @comment.save
        format.html{redirect_to @product, success: 'Comment was created successfully'}
        format.json{render :show, status: :created, location: @product}
      else
        format.html{redirect_to @product, warning: 'Your comment was not saved.'}
        format.json{render json: @comment.errors, status: :unprocessable_entity}
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    product = @comment.product

    @comment.destroy
    redirect_to product
  end

  private
    def comment_params
      params.require(:comment).permit(:user_id,:body, :rating)
    end

    def authorize_admin
      return unless !current_user.admin?
      redirect_to root_path, :alert => "Only admins can delete comments"
    end
end
