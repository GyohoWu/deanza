class DislikesController < ApplicationController

    def create
        @dislike = Dislike.new(dislike_id: params[:post_id])
        @dislike.save
        @dislike_post = params[:post_id]
        @current_user = @dislike.id
        redirect_to("/class/#{params[:sort]}")

    end

    def destroy
        @dislike = Dislike.find_by(dislike_id: params[:post_id])
        @dislike.destroy
        @dislike_post = 0
        redirect_to("/class/#{params[:sort]}")
    end

end
