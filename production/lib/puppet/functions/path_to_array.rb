Puppet::Functions.create_function(:'path_to_array') do
    dispatch :pta do
      param 'String', :path
    end
  
    def pta(path)
      paths=["n"] 
      dir="." 
      for i in 0..path.length do
        dir=dir + path[i]
        if path[i]=="/" then
          paths.push(dir)
        end
        paths.push(dir)
      end
      if path[path.legth] != "/" then
        paths.push(dir)
      end
      return paths       
    end
end
