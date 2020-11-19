class Todo < ApplicationRecord

    def created_ago()
        seconds = Time.now - self.created_at
        minutes = (seconds/60).to_int
        hours = minutes/60
        minutes = minutes%60
        formato = "" << "Creado hace "+hours.to_s
        if(hours == 1)
            formato << " hora y "+minutes.to_s
        else
            formato << " horas y "+minutes.to_s
        end
        if(minutes == 1)
            formato << " minuto"
        else
            formato << " minutos"
        end 
        formato
    end
end
