class TrackersController < ApplicationController
    def index
        trackers = Tracker.all

        render json: trackers
    end

    def create
        binding.pry
        trackers = Tracker.new(tracker_params)
        if trackers.save
            render json: trackers
        else
            render json: {error: "We can't do that", status:400}
        end
    end

    def show
        trackers = Tracker.find_by_id(params[:id])

        render json: trackers
    end
    
    def destroy
        trackers = Tracker.find_by(tracker_params)
        trackers.destroy
    end

    private
    def tracker_params
        params.require(:tracker).permit(:id, :date, :language, :notes, :length )
    end
end
