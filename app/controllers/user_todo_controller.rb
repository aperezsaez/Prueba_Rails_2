class UserTodoController < ApplicationController
  before_action :authenticate_user!
  def create
    @todo = Todo.find(params[:todo_id])
    @usertodo = UserTodo.create(todo: @todo, user: current_user)
    if @usertodo.save
      redirect_to todos_index_path, notice: 'Se ha finalizado la tarea'
    else
      redirect_to todos_index_path, alert: 'No se ha podido finalizar la tarea'
    end
  end

  def index
    @usertodo = current_user.todos.limit(9)
  end

  def complete_todo
    todo = Todo.find_or_create_by(params[:todo_id])
    @usertodo.todo.delete(todo)
    redirect_to todos_index_path
  end

end
