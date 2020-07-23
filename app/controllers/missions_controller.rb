class MissionsController < ActionController::Base

    def index
        @missions = Mission.all
    end
end
