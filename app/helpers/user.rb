
def current_user
  @current_user ||= User.find_by(id: session[:user_id])
end


def login?
  !!current_user
end

def logged_in?
  !!session[:user_id]
end

def require_user
  redirect '/session/new' unless login?
end
