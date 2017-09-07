get '/login' do
    erb :'/login'
  end

post '/login' do
  user = User.find_by(email: params[:user][:email])
    if user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect "/users/#{user.id}:"
    else
      @errors = ['Email/Password is invalid']
      erb :'/login'
    end
end

delete '/logout' do
  session.clear
  redirect '/channels'
end
