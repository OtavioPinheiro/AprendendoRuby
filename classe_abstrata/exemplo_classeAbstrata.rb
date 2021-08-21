require_relative 'abstract'
 
class AbstractClass
  include Abstract
  def a_method
  end
end
 
class Inherited < AbstractClass
end #Vai lançar uma exception, aqui.
 
class Inherited2 < AbstractClass
  def a_method
  end
end #Nenhuma Exception