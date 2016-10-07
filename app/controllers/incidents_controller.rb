class IncidentsController < ApplicationController

def index    

  @incidents = Incident.all.order(created_at: :desc)  

end 

def clear 

  Incident.clear_log 

  redirect_to root_url 

end

end