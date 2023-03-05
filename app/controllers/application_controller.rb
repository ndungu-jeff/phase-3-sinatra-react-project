class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  def login_error
    @message = {error: "Invalid username or password"}
    return @message.to_json
  end
  
  # Add your routes here
  get "/recipes" do
    recipes = Recipe.all  
    recipes.to_json()
  end

  # Get Single recipe
  get "/recipe/:id" do 
    recipe = Recipe.find(:id)
    recipe.to_json()
  end

  # Post recipe
  post "/recipes" do
    recipe = Recipe.create(
      name:params[:name],
      image: params[:image],
      video: params[:video],
      description: params[:description],
      category: params[:category],
      minutes: params[:minutes],
      user_id: params[:user_id]
    )
    recipe.to_json
  end

  # Patch recipe
  patch "/recipe/update/:id" do 
    recipe = Recipe.find_by(id: params[:id])

    recipe.update(
      image: params[:image],
      video: params[:video],
      description: params[:description],
      category: params[:category],
      user_id: params[:user_id]
    )

    recipe.to_json()
  end

  # Delete a recipe
  delete "/recipe/:id" do 
    recipe = Recipe.find_by(id: params[:id])
    recipe.destroy
  end

  # Save User
  post "/users" do
    user = User.create(
      username: params[:username],
      email: params[:email],
      password: params[:password]
    )
    user.to_json
  end

  
  # login user using an email and a password
  post '/users/aunthenticate' do
    password = params[:password]
    logging_user = User.find_by(email: params[:email])
    if (logging_user)
      if (logging_user.password == password)
        return logging_user.to_json(except: :password)
      else
        login_error
      end      
    else
      login_error    
    end
  end
  # user recipes
  get '/recipes/:user_id' do
    user = params[:user_id].to_i
    recipes = Recipe.where(user_id: user)
    recipes.to_json
  end


end