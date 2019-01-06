class ChatController < ApplicationController
  def restaurant
       @posts = Chat.where(c_id: 1)
       @post = Chat.new
  end

  def cafe
       @posts = Chat.where(c_id: 2)
       @post = Chat.new
  end

  def professor
      @posts = Chat.where(c_id: 3)
      @post = Chat.new
  end

  def film
      @posts = Chat.where(c_id: 4)
      @post = Chat.new
  end

  def create
      @post = Chat.new(name: params[:name], c_id:params[:id])

      if @post.save
        # 変数flash[:notice]に、指定されたメッセージを代入してください
        flash[:notice] = "post successfully created"
        if params[:id].to_i == 1
            redirect_to("/chat/restaurant")
        elsif params[:id].to_i == 2
            redirect_to("/chat/cafe")
        elsif params[:id].to_i == 3
            redirect_to("/chat/professor")
        else
            redirect_to("/chat/film")
        end
      else
        flash[:error] = "failed to post"
        @posts = Chat.where(c_id: params[:id])
        if params[:id].to_i  == 1
            render("/chat/restaurant")
        elsif params[:id].to_i  == 2
            render("/chat/cafe")
        elsif params[:id].to_i  == 3
            render("/chat/professor")
        else
            render("/chat/film")
        end
      end
  end

  def redirect
      if params[:id].to_i == 1
          redirect_to("/chat/restaurant")
      elsif params[:id].to_i == 2
          redirect_to("/chat/cafe")
      elsif params[:id].to_i == 3
          redirect_to("/chat/professor")
      else
          redirect_to("/chat/film")
      end
  end

end
