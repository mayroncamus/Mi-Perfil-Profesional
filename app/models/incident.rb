class Incident < ActiveRecord::Base
end

def self.log(target, messages)
  messages.each do |message|
    Incident.create(target: target, message: message)
  end
end

def self.clear_log 

  Incident.delete_all 

end