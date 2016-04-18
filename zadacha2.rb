class AnalyticsService
  
  def initialize(data)
    @data=data
  end

  def analyze_data(data)
    mas=[]
    number=0
    zero=data.sort[0][0]
    data.sort.each do |country,number_orig|
      if zero == country
        number = number_orig+number
      else
        number = number_orig
        zero = country
      end
        mas = mas+[zero,number]
    end
    p Hash[*mas.flatten]
  end
end

data = [['United States', 34.8], ['Ukraine', 165.2], ['United States', 40.0],['Panama', 220.45],['China', 2134.56],['Ukraine', 34.8]]

AS = AnalyticsService.new('')
AS.analyze_data(data) #=> { 'Ukraine' => 200.0, 'Panama' => 220.45, 'China' => 2134.56, 'United States', 74.8 }