class Api::V1::StocksController < ApplicationController
    def create
        stock = Stock.new(stock_params)
        if stock.save
            render json: stock
        else
            render json: {errors: stock.errors.full_messages}
        end
    end

    def update
        stock = Stock.find_by(id: params[:id])
        stock.update(stock_params)
        render json: stock
    end

    private

    def stock_params
        params.require(:stock).permit(:user_id, :ticker, :quantity, :date, :price, :sold, :bought)
    end 
end
