get '/answers' do
  erb :'/answers/index'
end

post '/questions/:question_id/answers' do
  @question = Question.find(params[:question_id])
  @answer = @question.answers.new(params[:answer])
  @answer.user_id = current_user.id
    if @answer.save
      redirect "/questions/#{@question.id}"
    else
      redirect "/questions/#{@question.id}"
    end
end

get '/questions/:question_id/answers/:id' do
  @question = Question.find(params[:question_id])
  @answer = @question.answers.find(params[:id])
  erb :'answers/show'
end



delete '/questions/:question_id/answers/:id' do

  @question = Question.find(params[:question_id])
  @answer = @question.answers.find(answer: params[:id])

  if current_user == @answer.user
    @answer.destroy
    redirect "/questions/#{@question.id}"
  else
    redirect "/questions/#{@question.id}"
  end
end
