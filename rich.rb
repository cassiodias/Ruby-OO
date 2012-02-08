class Rich
  attr_accessor :name, :fortune, :age
  
  def initialize *args
    @name, @fortune, @age = args
    @companies = []
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
    
end

eike = Rich.new 'Eike Batista', 1_000, 53
['aaa','bbb','ccc'].each do |c|
  eike.push_company c
end  

gates = Rich.new 'Bill Gates', 5500, 58
['xpto','yyy','zzz'].each do |c|
  gates.push_company c
end  

puts gates.richer_than? eike