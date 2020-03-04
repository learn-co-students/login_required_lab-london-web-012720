class SecretsController < ApplicationController
    before_action :require_logged_in
    def show
        if !session[:name]
            redirect_to "/sessions/new"
        end
    end
end
