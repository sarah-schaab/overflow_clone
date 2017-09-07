get '/users/new' do
    erb :'/users/new'
end

post '/users' do
  @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect "/users/#{@user.id}"
    else
      status 422
      @errors = @user.errors.full_messages
      erb :'/users/new'
    end
  end

get '/users/:id' do
  if current_user
    @user = User.find(params[:id])
    erb :'users/show'
  else
    redirect '/'
  end  
end
