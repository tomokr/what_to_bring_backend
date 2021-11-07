class ListsController < ApplicationController
    def show
        list = List.find_by(user_id: params[:id])

        render json:list
    end
end
