class SessionsController < ApplicationController
    def new
    end

    def create
        session[:name] = params[:name]
        if !session[:name] || session[:name].empty?
            return redirect_to controller: 'sessions', action: 'new'
        end
        return redirect_to controller: 'secrets', action: 'show'
    end

    def destroy
        session.delete :name if session[:name]
    end
end