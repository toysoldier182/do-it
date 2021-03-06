class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :destroy, :update]
  def index
    @todos = current_user.todos.reverse
    @todo = Todo.new
  end

  def show; end

  def create
    @todos = current_user.todos
    @todo = Todo.new(todo_params)
    @todo.user = current_user
    if @todo.save
      redirect_to todos_path
    else
      render "index"
    end
  end

  def edit; end

  def update
    if @todo.update(todo_params)
      redirect_to todos_path
    else
      render "edit"
    end
  end

  def destroy
    @todo.destroy
    redirect_to todos_path
  end

  private

  def todo_params
    params.require(:todo).permit(:name, :due_date, :done)
  end

  def set_todo
    @todo = Todo.find(params[:id])
  end

end
