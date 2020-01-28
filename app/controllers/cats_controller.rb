class CatsController < ApplicationController

    def index
        cats = Cat.all
        render json: cats
    end

    def show
        cat = Cat.find(params[:id])
        render json: cat
    end

    def cat_params
        params.require(:cat).permit(:name, :age, :enjoys)
    end

    def create
        cat = Cat.create(cat_params)
        if cat.valid?
            render json: cat
        else
            render json: cat.errors, status: :unprocesable_entity
        end
    end

    def update
        cat = Cat.update(params[:id], cat_params)
        # cat.update_attributes(cat_params)
        if cat.valid?
            render json: cat
        else
            render json: cat.errors
        end
    end

    def destroy
        cat = Cat.all
        cat = cat.destroy(params[:id])
        if cat.valid?
            render json: cat
        else
            render json: cat.errors
        end
    end


end
