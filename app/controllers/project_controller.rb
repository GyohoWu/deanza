class ProjectController < ApplicationController
  def projects
       @posts = Project.all.all.order(created_at: :desc)
  end

  def project
       @posts = Project.where(id: params[:id])
       @comment = ProjectC.where(c_id: params[:id])
       @post = ProjectC.new
  end

  def post
      @post = Project.new
  end

  def create
      @post = Project.new(title: params[:title], description: params[:description])
      if @post.save
        # 変数flash[:notice]に、指定されたメッセージを代入してください
        flash[:notice] = "post successfully created"
        redirect_to("/project/lists")
      else
        @sort = params[:sort]
        flash[:error] = "failed to post "
        render("/project/post")
      end
  end

  def redirect
      redirect_to("/project/post")
  end

  def redirect_c
      redirect_to("/projects/#{params[:id]}")
  end

  def create_c
      @post = ProjectC.new(comment: params[:com], c_id:params[:id])

      if @post.save
        # 変数flash[:notice]に、指定されたメッセージを代入してください
        flash[:notice] = "post successfully created"
        redirect_to("/projects/#{@post.c_id}")
      else
        flash[:error] = "failed to post"
        @posts = Project.where(id: params[:id])
        @comment = ProjectC.where(c_id: params[:id])
        render("/project/project")
      end
  end

end
