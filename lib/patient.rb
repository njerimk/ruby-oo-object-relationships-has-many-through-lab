require 'pry'
class Patient

    attr_reader :name

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor, date)
        Appointment.new(date,self, doctor)
        # binding.pry
    end

    def appointments
        Appointment.all.select do |indiv_appt|
            indiv_appt.patient == self
        end
        # binding.pry
    end

    def doctors
        self.appointments.map do |indiv_appt|
            indiv_appt.doctor
        end
    end
   

end