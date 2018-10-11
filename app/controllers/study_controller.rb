class StudyController < ApplicationController

  def math
  end

  def cis
  end

  def econ
  end

  def Accounting
  end

  def physics
  end

  def chemistry
  end

  def biology
  end

  def philosophy
  end

  def psychology
  end

  def poli
  end

  def GEs
  end

  def languages
  end

  
  def posts
  end

  def post
      @post = Question.new
      @sort = params[:sort]
      arr = params[:sort].split(/(\d+)/)
      classList = {"cis" => "CIS", "bio" => "Biology", "chem" => "Chemistry", "phys" =>"Physics", "art" => "Art", "dance" =>"Dance", "photo" =>"Photograghy",
      "thea" => "Theater", "math" =>"Math", "eng" => "English", "esl" =>"ESL", "acc" => "Accounting", "econ" => "Economics", "bus" => "Business",
      "anth" => "Anthlopology", "ling" => "Linguitics", "philo" => "Philosophy", "humi" => "Humanity", "soc" =>"Sociology", "psych" => "Psychology",
      "poli" => "Poli Science", "hist" => "Histry", "com" => "Communication", "astro" => "Astronomy", "geo" => "Geography", "met" => "Meteorology",
      "esci" => "Environmental Studies", "ics" => "Intercultural Studies", "japa" => "Japanese", "mand" => "Mandarin", "french" => "French",
      "ger" => "Germany", "kore" => "Korean", "ital" => "Italian", "russ" => "Russian", "spanish" => "Spanish"}
      @className = classList[arr[0]] + " " + arr[1]
      if arr.length == 3
          @className += arr[2]
      end
  end

  def questions
      @posts = Question.where(sort: "#{params[:sort]}").all.order(created_at: :desc)
      @sort = params[:sort]
      arr = params[:sort].split(/(\d+)/)
      classList = {"cis" => "CIS", "bio" => "Biology", "chem" => "Chemistry", "phys" =>"Physics", "art" => "Art", "dance" =>"Dance", "photo" =>"Photograghy",
      "thea" => "Theater", "math" =>"Math", "eng" => "English", "esl" =>"ESL", "acc" => "Accounting", "econ" => "Economics", "bus" => "Business",
      "anth" => "Anthlopology", "ling" => "Linguitics", "philo" => "Philosophy", "humi" => "Humanity", "soc" =>"Sociology", "psych" => "Psychology",
      "poli" => "Poli Science", "hist" => "Histry", "com" => "Communication", "astro" => "Astronomy", "geo" => "Geography", "met" => "Meteorology",
      "esci" => "Environmental Studies", "ics" => "Intercultural Studies", "japa" => "Japanese", "mand" => "Mandarin", "french" => "French",
      "ger" => "Germany", "kore" => "Korean", "ital" => "Italian", "russ" => "Russian", "spanish" => "Spanish"}
      @className = classList[arr[0]] + " " + arr[1]
      if arr.length == 3
          @className += arr[2]
      end

  end

  def create

      arr = params[:sort].split(/(\d+)/)
      classList = {"cis" => "CIS", "bio" => "Biology", "chem" => "Chemistry", "phys" =>"Physics", "art" => "Art", "dance" =>"Dance", "photo" =>"Photograghy",
      "thea" => "Theater", "math" =>"Math", "eng" => "English", "esl" =>"ESL", "acc" => "Accounting", "econ" => "Economics", "bus" => "Business",
      "anth" => "Anthlopology", "ling" => "Linguitics", "philo" => "Philosophy", "humi" => "Humanity", "soc" =>"Sociology", "psych" => "Psychology",
      "poli" => "Poli Science", "hist" => "Histry", "com" => "Communication", "astro" => "Astronomy", "geo" => "Geography", "met" => "Meteorology",
      "esci" => "Environmental Studies", "ics" => "Intercultural Studies", "japa" => "Japanese", "mand" => "Mandarin", "french" => "French",
      "ger" => "Germany", "kore" => "Korean", "ital" => "Italian", "russ" => "Russian", "spanish" => "Spanish"}
      @className = classList[arr[0]] + " " + arr[1]
      if arr.length == 3
          @className += arr[2]
      end

      @post = Question.new(prof: params[:prof] , sort: params[:sort] , title: params[:title], question: params[:question])
      if @post.save
        # 変数flash[:notice]に、指定されたメッセージを代入してください
        flash[:notice] = "post successfully created"
        redirect_to("/study/#{params[:sort]}")
      else
        @sort = params[:sort]
        flash[:error] = "failed to post "
        render("/study/post")
      end
  end

  def redirect
    redirect_to("/study/#{params[:sort]}")
  end

  def search
      if params[:name] == ""
          redirect_to("/study/#{params[:sort]}")
      else
          @posts = Question.where(sort: "#{params[:sort]}").where("prof like ?", "%#{params[:name]}%").all.order(created_at: :desc)
          @sort = params[:sort]
          arr = params[:sort].split(/(\d+)/)
          classList = {"cis" => "CIS", "bio" => "Biology", "chem" => "Chemistry", "phys" =>"Physics", "art" => "Art", "dance" =>"Dance", "photo" =>"Photograghy",
          "thea" => "Theater", "math" =>"Math", "eng" => "English", "esl" =>"ESL", "acc" => "Accounting", "econ" => "Economics", "bus" => "Business",
          "anth" => "Anthlopology", "ling" => "Linguitics", "philo" => "Philosophy", "humi" => "Humanity", "soc" =>"Sociology", "psych" => "Psychology",
          "poli" => "Poli Science", "hist" => "Histry", "com" => "Communication", "astro" => "Astronomy", "geo" => "Geography", "met" => "Meteorology",
          "esci" => "Environmental Studies", "ics" => "Intercultural Studies", "japa" => "Japanese", "mand" => "Mandarin", "french" => "French",
          "ger" => "Germany", "kore" => "Korean", "ital" => "Italian", "russ" => "Russian", "spanish" => "Spanish"}
          @className = classList[arr[0]] + " " + arr[1]
          if arr.length == 3
              @className += arr[2]
          end
          render("/study/questions")
      end
  end

  def answers
      @id = params[:id]
      @question = Question.where(id: @id)
      @posts = Answer.where(q_id: @id)
      @post = Answer.new
      @comment = Comment.new
  end

  def create_A

      @post = Answer.new(answer: params[:answer], q_id: params[:id])
      if @post.save
        # 変数flash[:notice]に、指定されたメッセージを代入してください
        flash[:notice] = "post successfully created"
        redirect_to("/answers/#{params[:id]}")
      else
        @id = params[:id]
        @question = Question.where(id: @id)
        @posts = Answer.where(q_id: @id)
        flash[:error] = "failed to post "
        render("/study/answers")
      end
  end

  def create_C
      @comment = Comment.new(content: params[:com], a_id:params[:id])

      if @comment.save
        # 変数flash[:notice]に、指定されたメッセージを代入してください
        @post = Answer.find_by(id:params[:id])
        flash[:notice] = "post successfully created"
        redirect_to("/answers/#{@post.q_id}")
      else
        @id = params[:id]
        @posts = Answer.where(id: @id)
        @question = Question.where(id: @posts[0].q_id)
        @post = Answer.new
        flash[:error] = "failed to post "
        render("/study/answers")
      end

  end


end
