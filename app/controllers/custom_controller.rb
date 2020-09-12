class CustomController < ApplicationController
    def wbehook
        render json: params
    end
    
    def events_list
        render json: params
    end
    
end
