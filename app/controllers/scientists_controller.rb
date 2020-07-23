class ScientistsController < ActionController::Base
    before_action :set_scientist, only: [:show, :edit, :update, :destroy]
    
    def index
        @scientists = Scientist.all
    end

    def show
    end

    def new
        @scientist = Scientist.new
    end
    
    def create
        @scientist = Scientist.new(scientist_params)

        if @scientist.valid?
            @scienitst.save
            redirect_to scientists_path
        else
            render :new
        end
    end


    def edit
    end

    def update
        if @scientist.update(scientist_params)
            redirect_to scientist_path(@scientist)
        else
            render :edit
        end
    end

    
    def destroy
        @scientist.destroy
        puts "#{@scientist.name} has been destroyed."
        redirect_to scientists_path
    end



    private

    def set_scientist
        @scientist = Scientist.find(params[:id])
    end

    def scientist_params
        params.require(:scientist).permit(:name, :field)
    end

end
