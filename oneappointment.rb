
class OneTimeAppointment < Appointment
    def initialize(location, purpose, hour, min , day , month ,year)
        super(location, day, month, min)
        @day = day
        @month = month
        @year = year
    end

    def occurs_on?(day, month, year)
        @day == day && @month == month && @year == year

    end
    def to_s
        "Reunion unica en #{@location} sobre #{@purpose} el #{@day}/#{@month}/#{@year} a las #{@hour}: #{@min}."
    end
end

