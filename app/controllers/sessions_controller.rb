class SessionsController < ApplicationController

    def new

    end

    def create
    
        return redirect_to '/login' if !params[:name] || params[:name].blank?
        name = params[:name]
        session[:name] = name
    end

    def destroy

        return nil if !session[:name]

        session.delete :name
    end
end