get '/questions' do
  @questions = Question.all
  erb :index
end

post '/questions' do
  @question = Question.new(params[:question]) #create new question
  @question.user_id = current_user.id

  if @question.save #saves new question or returns false if unsuccessful
    redirect "/questions/#{@question.id}" #redirect back to questions index page
  else
    @errors = @question.errors.full_messages
    erb :'/questions/new' # show new questions view again(potentially displaying errors)
  end
end

get '/questions/:id' do
  @question = Question.find_by(id: params[:id])
  erb :'/questions/show'
end

get '/questions/:id/edit' do
  @question = Question.find(id: params[:id])
  erb :'/questions/edit'
end
