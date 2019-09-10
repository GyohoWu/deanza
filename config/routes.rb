Rails.application.routes.draw do
  
    #like method

    post "likes/:post_id/:sort/create" => "likes#create"
    post "likes/:post_id/:sort/destroy" => "likes#destroy"
    post "dislikes/:post_id/:sort/create" => "dislikes#create"
    post "dislikes/:post_id/:sort/destroy" => "dislikes#destroy"

    #like method answer part

    post "likes_a/:post_id/create" => "likes_a#create"
    post "dislikes_a/:post_id/create" => "dislikes_a#create"


    #transfer

    get '/' => "home#top"
    get '/transfer/EECS' => "home#t_eecs"
    get "/transfer/economics" => "home#t_econ"
    get "/transfer/media" => "home#t_media"
    get "/transfer/stats" => "home#t_stats"
    get "/transfer/math"=> "home#t_math"
    get "/transfer/business" => "home#t_business"
    get "/transfer/philosophy"=> "home#t_phil"
    get "/transfer/linguitics" => "home#t_ling"

# class tipts

    #create method
    post "/class/create/:sort" => "class#create"
    get "/class/create/:sort" => "class#classPage"

    #search method
    get "/class/search/:sort" => "class#redirect"
    post "/class/search/:class" => "class#search"

    #classPage
    get "/class/:sort" => "class#classPage"

    #classGenre
    get "/classes/cis" => "class#cis"
    get "/classes/econAcc" => "class#econAcc"
    get "/classes/anthLing" => "class#anthLing"
    get "/classes/science" => "class#science"
    get "/classes/math" => "class#math"
    get "/classes/english" => "class#english"
    get "/classes/arts" => "class#arts"
    get "/classes/humanities" => "class#humanities"
    get "/classes/psychSoc" => "class#psychSoc"
    get "/classes/poliHist" => "class#poliHist"
    get "/classes/GEs" => "class#GEs"
    get "/classes/languages" => "class#languages"


# study room
    get "/study/math" => "study#math"
    get "/study/cis" => "study#cis"
    get "/study/econ" => "study#econ"
    get "/study/Accounting" => "study#Accounting"
    get "/study/physics" => "study#physics"
    get "/study/chemistry" => "study#chemistry"
    get "/study/biology" => "study#biology"
    get "/study/philosophy" => "study#philosophy"
    get "/study/psychology"  => "study#psychology"
    get "/study/poli" => "study#poli"
    get "/study/GEs" => "study#GEs"
    get "/study/languages" => "study#languages"


    get "/study/:sort" => "study#questions"
    get "/post/:sort" => "study#post"

    post "/study/search/:sort" => "study#search"
    get "/study/search/:sort" => "study#redirect"

    post "/study/create/:sort" => "study#create"
    get "/study/create/:sort" => "study#redirect"

    get "/answers/:id" => "study#answers"

    post "/answer/create/:id" => "study#create_A"
    get "/answer/create/:id" => "study#redirect"

    get "/comment/createPage/:id" => "study#comment"

    post "/comment/create/:id" => "study#create_C"
    get "/comment/create/:id" => "study#redirect_c"


# project room

    get "/project/lists" => "project#projects"
    get "/project/post" => "project#post"
    get "projects/:id" => "project#project"

    post "project/create" => "project#create"
    get  "project/create" => "project#redirect"
    post "/projcomment/create/:id" => "project#create_c"
    get "/projcomment/create/:id" => "project#redirect_c"

# chat Room

    get "chat/restaurant" => "chat#restaurant"
    get "chat/cafe" => "chat#cafe"
    get "chat/professor" => "chat#professor"
    get "chat/film" => "chat#film"


    post "/chat/create/:id" => "chat#create"
    get "/chat/create/:id" => "chat#redirect"
end
