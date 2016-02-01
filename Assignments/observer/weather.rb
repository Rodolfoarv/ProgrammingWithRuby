# Observer Pattern
# Date: 03-Feb-2016
# Authors:
#          Rodolfo Andrés Ramírez Valenzuela

require "observer"

class WeatherData
  include Observable

  def initialize
  end

  def set_measurements(temperature, humidity, pressure)
    changed
    notify_observers(temperature,humidity,pressure)
  end

end

class CurrentConditionsDisplay
  def update(temperature, humidity,pressure)
    print "Current conditions: #{temperature}°F and #{humidity}% humidity\n"
  end
end

class StatisticsDisplay
  def initialize
    @temperature_last = 0
    @temperature_max = 0
    @temperature_min = 0
    @temperature_avg = 0
    @temp_count = 0
  end

  def update(temperature, humidity,pressure)
    @temp_count += 1
    @temperature_avg += temperature
    if @temperature_min == 0
      @temperature_min = temperature
    end
    if temperature > @temperature_max || @temperature_max == 0
      @temperature_max = temperature
    elsif temperature < @temperature_min
      @temperature_min = temperature
    end
    print "Avg/Max/Min temperature = #{@temperature_avg/@temp_count}/#{@temperature_max}/#{@temperature_min}\n"
  end
end

class ForecastDisplay
  @@pressure_last = 0
  def update(temperature,humidity, pressure)
    if pressure > @@pressure_last
      print "Forecast: Improving weather on the way!\n"
    elsif pressure < @@pressure_last
      print "Forecast: Watch out for cooler, rainy weather\n"
    else
      print  "Forecast: More of the same\n"
    end
    @@pressure_last = pressure
  end
end
