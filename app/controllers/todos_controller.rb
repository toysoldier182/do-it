class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :destroy, :edit]
  def index
    @todos = current_user.todos
    @todo = Todo.new
  end

  def show; end

  def create
    @todo = Todo.new(todo_params)
    @todo.user_id = current_user
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
    respond_to do |format|
      format.js { render "mark_as_done", locals: { id: @todo.id, done: @todo.done } }
      format.html { redirect_to todo_path(@todo) }
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
