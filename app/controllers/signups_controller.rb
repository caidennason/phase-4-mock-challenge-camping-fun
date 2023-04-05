class SignupsController < ApplicationController

    def create 
        signup = Signup.create(signups_params)
        if signup.valid?
            render json: signup.activity, status: :created 
        else
            render json: {errors: ["Invalid"]}, status: :unprocessable_entity
        end
    end

    private
    def signups_params
        params.permit(:camper_id, :time, :activity_id)
    end
end