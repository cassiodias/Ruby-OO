class Mutante
  
  def initialize *args
    @nome, @idade, @poder, @grupo = args
  end  
      
  attr_reader :nome, :idade, :poder, :grupo
end  

 m = Mutante.new('nome',500,'poder','grupo')
 puts m.nome