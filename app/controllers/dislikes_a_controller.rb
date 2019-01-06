class DislikesAController < ApplicationController

    def create
        @dislike = Dislikefora.new(dislike_id: params[:post_id])
        @dislike.save
        @dislike_post = params[:post_id]
        @current_user = @dislike.id
        @post = Answer.find_by(id:params[:post_id])
        redirect_to("/answers/#{@post.q_id}")
    end

    def destroy
        @dislike = Dislikefora.find_by(dislike_id: params[:post_id])
        @dislike.destroy
        @dislike_post = 0
        @post = Answer.find_by(id:params[:post_id])
        redirect_to("/answers/#{@post.q_id}")
    end
end
