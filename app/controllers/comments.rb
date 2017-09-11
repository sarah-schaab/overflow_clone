
post '/questions/:question_id/comments' do
  @question = Question.find(params[:question_id])
  @comment = @question.comments.new(params[:comment])
  @comment.user_id = current_user.id
    if @comment.save
      redirect "/questions/#{@question.id}"
    else
      redirect "/questions/#{@question.id}"
    end
end

post '/answer/:answer_id/comments' do
  @answer = Answer.find(params[:answer_id])
  @comment = @answer.comments.new(params[:comment])
  @comment.user_id = current_user.id
    if @comment.save
      redirect "/questions/#{@question.id}"
    else
      redirect "/questions/#{@question.id}"
    end
end



delete '/questions/:question_id/comments/:id' do

  @question = Question.find(params[:question_id])
  @comment = @question.comments.find(comment: params[:id])

  if current_user == @comment.user || current_user == @question.user
    @comment.destroy
    redirect "/questions/#{@question.id}"
  else
    redirect "/questions/#{@question.id}"
  end
end


delete '/answers/:answer_id/comments/:id' do

  @answer = Answer.find(params[:answer_id])
  @comment = @answer.comments.find(comment: params[:id])

  if current_user == @comment.user || current_user == @answer.user
    @comment.destroy
    redirect "/questions/#{@question.id}/answers"
  else
    redirect "/questions/#{@question.id}/answers"
  end
end
