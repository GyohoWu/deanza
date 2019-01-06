class LikesController < ApplicationController

    def create
        @like = Like.new(like_id: params[:post_id])
        @like.save
        @like_post = params[:post_id]
        @current_user = @like.id
        redirect_to("/class/#{params[:sort]}")

    end


    def destroy
        @like = Like.find_by(like_id: params[:post_id])
        @like.destroy
        @like_post = 0
        redirect_to("/class/#{params[:sort]}")
    end

end
