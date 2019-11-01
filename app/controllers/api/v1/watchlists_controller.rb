class Api::V1::WatchlistsController < ApplicationController
    def create
        watchlist = Watchlist.new(watchlist_params)
        if watchlist.save
            render json: watchlist
        else
            render json: {errors: watchlist.errors.full_messages}
        end
    end

    private

    def watchlist_params
        params.require(:watchlist).permit(:user_id, :ticker)
    end
end
