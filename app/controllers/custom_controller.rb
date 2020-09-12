class CustomController < ApplicationController
    def webhook
        begin
            hash = JSON.parse params[:payload]
            
            if hash
                issue_number = hash['issue'].present? ? hash['issue']['number'] : nil
                
                created_event = Event.create(description: hash, issue_number: issue_number)
                render json: created_event
            else
                render json: {message: 'Webhook não apresenta payload'}
            end
        rescue => exception
            render json: {message: 'Erro ao salvar evento de webhook'}
        end
    end
    
    def events_list
        event = Event.where(issue_number: params[:issue_number].to_i)
        render json: event
    end
    
end
