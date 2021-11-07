class ItemsController < ApplicationController
    def show
        items = Item.where(list_id: params[:id]).all

        render json:items
    end
end
