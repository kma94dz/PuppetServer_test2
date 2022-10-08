Puppet::Functions.create_function(:'path_to_array') do
    dispatch :pta do
      param 'String', :path
    end
  
    def pta(path)
      paths=["n"] 
      dir="." 
      return paths       
    end
end
