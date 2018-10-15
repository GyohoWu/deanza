class LikesAController < ApplicationController

    def create
        @like = Likefora.new(like_id: params[:post_id])
        @like.save
        @like_post = params[:post_id]
        @current_user = @like.id
        @post = Answer.find_by(id:params[:post_id])
        redirect_to("/answers/#{@post.q_id}")
    end


    def destroy
        @like = Likefora.find_by(like_id: params[:post_id])
        @like.destroy
        @like_post = 0
        @post = Answer.find_by(id:params[:post_id])
        redirect_to("/answers/#{@post.q_id}")
    end


end
