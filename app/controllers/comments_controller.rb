class CommentsController < ApplicationController
    before_action :authenticate_user!



  def create
    @comment = Comment.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to post_url(@comment.post), notice: "Comment was successfully created." }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { redirect_to post_url(@comment.post), status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end


    private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comment_params
      params.require(:comment).permit(:body, :user, :user_id, :post, :post_id)
    end
    
end