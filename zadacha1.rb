class Array
attr_accessor :select

  def initialize
    @select = select
  end

  def deep_index(select)
    circle1=0
    circle2=0
    circle3=0
    mas=[] 
    each do |x|
      unless x.class==Array
        if x==select
          mas=[circle1]
        end
      else
        x.each do |y|
          unless y.class==Array
            if y==select
              mas=[circle1,circle2]
            end
          else
            y.each do |z|
              if z==select
                mas=[circle1,circle2,circle3]
              end
            circle3=circle3+1
            end
          end
        circle2=circle2+1
        end
      end
      circle1=circle1+1
    end
    circle3 = mas
  end
end

a = [
  'hash',
  'array',
  [
    'map',
    [
      'rails',
      'assets',
      'actioncable',
      'REST'
    ],
    'inject',
    'reduce',
    'detect'
  ],
  'metaptogramming',
  'recursion',
  [
    'css3',
    'ecmascript6',
    'sublimetext',
    'heroku'
  ],
  'activerecord',
  'ember'
]


p a.deep_index("REST") #=> [7]
p a.deep_index("ember") #=> [7]
