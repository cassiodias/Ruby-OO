class Rich
  attr_accessor :name, :fortune, :age
  
  def initialize *args, fortunas_
    @name, @fortune, @age = args
    @companies = []
    @fortunas = fortunas_
  end  
  
  def push_company new_company
    @companies << new_company
  end

  def list_companies
    @companies
  end

  def richer_than? other_rich
    fortune > other_rich.fortune
  end  
  
  def fortunas
    @fortunas
  end  
    
end

eike = Rich.new 'Eike Batista', 1_000, 53, [{1980=> 1000, 1990=> 2000_00000_0000}]
puts eike.fortunas[0][1990]

#gates = Rich.new 'Bill Gates', 5500, 58
#['xpto','yyy','zzz'].each do |c|
#  gates.push_company c
#end  

#puts gates.richer_than? eike