class ArticlesController < ApplicationController
def index
if user_signed_in?
@user=User.find(current_user.id)
else 
redirect_to new_user_session_path
end
end
def show

end
end
