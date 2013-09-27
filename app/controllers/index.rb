get '/' do
  erb :index
end

get '/logout' do 
  session.clear
  redirect '/'
end

get '/profile/:id' do
  @user = User.find(params[:id])
  @user_albums = @user.albums
  erb :user_profile
end

#========== POST ===============

post '/albums/:id' do 
  photo = current_user.albums.find(params[:id]).photos.new()
  photo.file = params[:image]
  photo.save
end 

post '/login' do 
  @user = User.find_by_username(params[:username])
  if @user 
    if @user.password == params[:password]
      session[:id] = @user.id
      erb :index
    else  
      @notpass = 'Either your usernamd or password is wrong' 
      redirect '/'
    end 
  else
    @notpass = 'Either your usernamd or password is wrong'
    erb :index
  end 
end

post '/signup' do
  if params[:password] == params[:confirm_password]
    @new_user = User.create(username: params[:username], password: params[:password])
    session[:id] = @new_user.id
    erb :index 
  else 
    @mismatch = "password and confirm password do not match"
    erb :index
  end 
  
end 


# get '/profile/:id' do
#   @user = User.find(params[:id])
#   @user_posts = @user.posts
#   @user_comments = @user.comments
#   erb :user_profile
# end
