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

      classList = {"cis" => "CIS", "bio" => "Biology", "chem" => "Chemistry", "phys" =>"Physics", "art" => "Art", "dance" =>"Dance", "photo" =>"Photograghy",
      "thea" => "Theater", "math" =>"Math", "eng" => "English", "esl" =>"ESL", "acc" => "Accounting", "econ" => "Economics", "bus" => "Business",
      "anth" => "Anthropology", "ling" => "Linguitics", "philo" => "Philosophy", "humi" => "Humanity", "soc" =>"Sociology", "psych" => "Psychology",
      "poli" => "Poli Science", "hist" => "Histry", "com" => "Communication", "astro" => "Astronomy", "geo" => "Geography", "met" => "Meteorology",
      "esci" => "Environmental Studies", "ics" => "Intercultural Studies", "japa" => "Japanese", "mand" => "Mandarin", "french" => "French",
      "ger" => "Germany", "kore" => "Korean", "ital" => "Italian", "russ" => "Russian", "spanish" => "Spanish"}

      if @sort == "japa" || @sort == "mand" || @sort == "french" || @sort == "ger" || @sort == "kore" || @sort == "ital" || @sort == "russ" || @sort == "spanish"
         @className = classList[@sort]
      else
          arr = params[:sort].split(/(\d+)/)
          @className = classList[arr[0]] + " " + arr[1]
          if arr.length == 3
              @className += arr[2]
          end
      end
  end

  def questions
      @posts = Question.where(sort: "#{params[:sort]}").all.order(created_at: :desc)
      @sort = params[:sort]

      classList = {"cis" => "CIS", "bio" => "Biology", "chem" => "Chemistry", "phys" =>"Physics", "art" => "Art", "dance" =>"Dance", "photo" =>"Photograghy",
      "thea" => "Theater", "math" =>"Math", "eng" => "English", "esl" =>"ESL", "acc" => "Accounting", "econ" => "Economics", "bus" => "Business",
      "anth" => "Anthropology", "ling" => "Linguitics", "philo" => "Philosophy", "humi" => "Humanity", "soc" =>"Sociology", "psych" => "Psychology",
      "poli" => "Poli Science", "hist" => "Histry", "com" => "Communication", "astro" => "Astronomy", "geo" => "Geography", "met" => "Meteorology",
      "esci" => "Environmental Studies", "ics" => "Intercultural Studies", "japa" => "Japanese", "mand" => "Mandarin", "french" => "French",
      "ger" => "Germany", "kore" => "Korean", "ital" => "Italian", "russ" => "Russian", "spanish" => "Spanish"}

      if @sort == "japa" || @sort == "mand" || @sort == "french" || @sort == "ger" || @sort == "kore" || @sort == "ital" || @sort == "russ" || @sort == "spanish"
         @className = classList[@sort]
      else
          arr = params[:sort].split(/(\d+)/)
          @className = classList[arr[0]] + " " + arr[1]
          if arr.length == 3
              @className += arr[2]
          end
      end

  end

  def create

      @sort = params[:sort]

      classList = {"cis" => "CIS", "bio" => "Biology", "chem" => "Chemistry", "phys" =>"Physics", "art" => "Art", "dance" =>"Dance", "photo" =>"Photograghy",
      "thea" => "Theater", "math" =>"Math", "eng" => "English", "esl" =>"ESL", "acc" => "Accounting", "econ" => "Economics", "bus" => "Business",
      "anth" => "Anthropology", "ling" => "Linguitics", "philo" => "Philosophy", "humi" => "Humanity", "soc" =>"Sociology", "psych" => "Psychology",
      "poli" => "Poli Science", "hist" => "Histry", "com" => "Communication", "astro" => "Astronomy", "geo" => "Geography", "met" => "Meteorology",
      "esci" => "Environmental Studies", "ics" => "Intercultural Studies", "japa" => "Japanese", "mand" => "Mandarin", "french" => "French",
      "ger" => "Germany", "kore" => "Korean", "ital" => "Italian", "russ" => "Russian", "spanish" => "Spanish"}

      if @sort == "japa" || @sort == "mand" || @sort == "french" || @sort == "ger" || @sort == "kore" || @sort == "ital" || @sort == "russ" || @sort == "spanish"
         @className = classList[@sort]
      else
          arr = params[:sort].split(/(\d+)/)
          @className = classList[arr[0]] + " " + arr[1]
          if arr.length == 3
              @className += arr[2]
          end
      end

      @post = Question.new(prof: params[:prof] , sort: params[:sort] , title: params[:title], question: params[:question])
      if @post.save
        # 変数flash[:notice]に、指定されたメッセージを代入してください
        flash[:notice] = "post successfully created"
        redirect_to("/study/#{params[:sort]}")
      else
        flash[:error] = "failed to post "
        render("/study/post")
      end
  end

  def redirect
    redirect_to("/study/#{params[:sort]}")
  end

  def redirect_c
    redirect_to("/comment/createPage/#{params[:id]}")
  end

  def search
      if params[:name] == ""
          redirect_to("/study/#{params[:sort]}")
      else
          @posts = Question.where(sort: "#{params[:sort]}").where("prof ILIKE ?", "%#{params[:name]}%").all.order(created_at: :desc)
          @sort = params[:sort]

          classList = {"cis" => "CIS", "bio" => "Biology", "chem" => "Chemistry", "phys" =>"Physics", "art" => "Art", "dance" =>"Dance", "photo" =>"Photograghy",
          "thea" => "Theater", "math" =>"Math", "eng" => "English", "esl" =>"ESL", "acc" => "Accounting", "econ" => "Economics", "bus" => "Business",
          "anth" => "Anthropology", "ling" => "Linguitics", "philo" => "Philosophy", "humi" => "Humanity", "soc" =>"Sociology", "psych" => "Psychology",
          "poli" => "Poli Science", "hist" => "Histry", "com" => "Communication", "astro" => "Astronomy", "geo" => "Geography", "met" => "Meteorology",
          "esci" => "Environmental Studies", "ics" => "Intercultural Studies", "japa" => "Japanese", "mand" => "Mandarin", "french" => "French",
          "ger" => "Germany", "kore" => "Korean", "ital" => "Italian", "russ" => "Russian", "spanish" => "Spanish"}

          if @sort == "japa" || @sort == "mand" || @sort == "french" || @sort == "ger" || @sort == "kore" || @sort == "ital" || @sort == "russ" || @sort == "spanish"
             @className = classList[@sort]
          else
              arr = params[:sort].split(/(\d+)/)
              @className = classList[arr[0]] + " " + arr[1]
              if arr.length == 3
                  @className += arr[2]
              end
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
      @post.q_id = params[:id]
      if @post.save
        # 変数flash[:notice]に、指定されたメッセージを代入してください
        flash[:notice] = "post successfully created"
        redirect_to("/answers/#{params[:id]}")
      else
        @id = params[:id]
        @question = Question.where(id: @id)
        @posts = Answer.where(q_id: @id)
        @comment = Comment.new
        flash[:error] = "failed to post "
        render("/study/answers")
      end
  end

  def comment
      @comment = Comment.new
      @post_id = params[:id]
  end

  def create_C

      @comment = Comment.new(content: params[:com], a_id:params[:id])

      if @comment.save
        # 変数flash[:notice]に、指定されたメッセージを代入してください
        @post = Answer.find_by(id:params[:id])
        flash[:notice] = "post successfully created"
        redirect_to("/answers/#{@post.q_id}")
      else
        @post_id = params[:id]
        flash[:error] = "failed to post "
        render("/study/comment")
      end
  end

end
