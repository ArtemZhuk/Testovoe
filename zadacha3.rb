class AwesomeSorter

  def initialize(companies)
    @companies = companies
  end

  def self.sort(companies)
    companies do |x,y|
    a=x.sub(/"/i,"")
    b=y.sub(/"/i,"")
    a.upcase!
    b.upcase!
    a<=>b
    end
  end
end

companies = [
  'Adobe',
  'microsoft inc.',
  'bCreative',
  '1000Museums',
  'Adidas',
  'ABIBAS',
  'ReeBook',
  'royalty-holding llc',
  'Rexona',
  'aliexpress',
  'booking.com'
]

AS = AwesomeSorter.new('')
AS.sort(companies)
p companies

#puts companies #=>
# 1000Museums
# ABIBAS
# Adidas
# Adobe
# aliexpress
# bCreative
# booking.com
# microsoft inc.
# ReeBook
# Rexona
# royalty-holding llc