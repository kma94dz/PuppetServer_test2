Puppet::Functions.create_function(:'versiocmp') do
    dispatch :vcmp do
      param 'String', :v1
      param  Integer, :v2
    end
  
    def vcmp(v1,v2) 
      return v1.to_i - v2       
    end
  end
  