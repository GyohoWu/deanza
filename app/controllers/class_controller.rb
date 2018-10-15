class ClassController < ApplicationController

    def classPage
        @post = Classpost.new
        @posts = Classpost.where(sort: "#{params[:sort]}").all.order(created_at: :desc)
        @create = params[:sort]
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
        @create = params[:sort]
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

        @post = Classpost.new(rate: params[:rate], comment: params[:comment], prof: params[:prof] ,success: params[:success], grade:params[:grade], source: params[:source] , sort: params[:sort])
        if @post.save
          # 変数flash[:notice]に、指定されたメッセージを代入してください
          flash[:notice] = "post successfully created"
          redirect_to("/class/#{params[:sort]}")
        else
          @posts = Classpost.where(sort: params[:sort]).all.order(created_at: :desc)
          flash[:error] = "failed to post "
          render("/class/classPage")
        end
    end

    def search
      if params[:name] == ""
          redirect_to("/class/#{params[:class]}")
      else
          @name = params[:name]
          @class_2 = params[:class]
          if params[:name_2].nil?
              @posts = Classpost.where("prof like ?", "%#{params[:name]}%").where("sort like ?", "%#{params[:class]}%").all.order(created_at: :desc)
              @class_1 = params[:class]
          elsif params[:name_2] == "none"
              render("/class/#{params[:class]}")
          else
              @posts = Classpost.where("prof like ?", "%#{params[:name]}%").where("sort like ?", "%#{params[:name_2]}%").all.order(created_at: :desc)
              @class_1 = params[:name_2]
          end
      end
    end


    def redirect
      redirect_to("/classes/#{params[:sort]}")
    end

    def cis
    end


    def econAcc
    end


    def anthLing
    end


    def science
    end

    def math
    end

    def english
    end

    def arts
    end

    def humanities
    end

    def psychSoc
    end

    def poliHist
    end

    def GEs
    end

    def languages
    end


end
