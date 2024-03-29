class Api::V1::WatchlistsController < ApplicationController
    def create
        watchlist = Watchlist.new(watchlist_params)
        if watchlist.save
            render json: watchlist
        else
            render json: {errors: watchlist.errors.full_messages}
        end
    end

    def destroy 
        watchlist = Watchlist.find(params[:id])
        watchlist.destroy
        render json: watchlist
    end

    private

    def watchlist_params
        params.require(:watchlist).permit(:user_id, :ticker)
    end
end
