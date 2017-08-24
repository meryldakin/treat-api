class TreatsController < ApplicationController
    def create
        current_user.save_treat(params[:treat])
        render json: {
            current_user: current_user,
            bank: current_user.bank.amount,
            account: current_user.account.amount,
            treats: current_user.treats
          }
    end

end
