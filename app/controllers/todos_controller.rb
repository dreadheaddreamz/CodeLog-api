class TodosController < ApplicationController
    def index
        todos = Todo.all

        render json: todos
    end
    
    def create
        todos = Todo.new(todos_params)
        if todos.save
            render json: todos
        else
            render json: {error: "We can't do that", status:400}
        end
    end

    def show
        todos = Todo.find_by(id: params[:id])
       if todos
            todos.destroy
            render json: todos
       else
        render json: {error: "We can't do that", status:400}
       end
    end

    def destroy
        todos = Todo.find_by(todos_params)
        todos.destroy
    end

    private
    def todos_params
        params.require(:todo).permit(:id, :title, :priority, :context, :completeBy)
    end
end
