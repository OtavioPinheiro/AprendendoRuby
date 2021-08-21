module Abstract
    def self.included(included_class)
      metaclass = class << included_class; self; end
      metaclass.send :define_method, :inherited do |inherited_class|
        trace_class_creation do
          #Puxa todos os métodos da classe cujo este módulo foi incluído (classe abstrata)
          abstract_methods = included_class.public_instance_methods(false)
          abstract_methods += included_class.private_instance_methods(false)
          abstract_methods += included_class.protected_instance_methods(false)
   
          #Puxa todos os métodos da classe que herdou da classe abstrata
          inherited_methods = inherited_class.public_instance_methods(false)
          inherited_methods += inherited_class.private_instance_methods(false)
          inherited_methods += inherited_class.protected_instance_methods(false)
   
          #Para cada método na classe abstrata, ver se ele está incluso na classe herdada.
          abstract_methods.each do |m|
            #Se não estiver incluso, lançar uma exception.
            raise NoMethodError, "Method #{m} not implemented." unless inherited_methods.include?(m)
          end
        end
      end
    end
  end