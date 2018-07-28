class TodosController < ApplicationController
  before_action :authenticate_user!

  def index
    @todos = Todo.limit(9)
  end

 #  def complete_todo
 #   @user_todo = UserTodo.find_by{user: current_user, todo: @todo}
 #   if @user_todo == nil
 #   @user_todo = UserTodo.create(user: current_user, todo:  @todo)
 #   end
 # end
 # if @user_todo.finished == destroy_user_session_path
 #   @user_todo.update(finished: false)
 # else
 #   @user_todo.update(finished: true)
 # end
end
