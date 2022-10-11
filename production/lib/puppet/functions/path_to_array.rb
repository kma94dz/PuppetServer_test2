Puppet::Functions.create_function(:'path_to_array') do
  dispatch :pta do
    param 'String', :path
  end

  def pta(path)
    paths=[] 
    dir=""
    dir=dir + path[0]
    for i in 1...path.length do
      dir=dir + path[i]
      if path[i]=="/" then
        paths.push(dir)
      end
    end
    if path[path.length-1] != "/" then
      paths.push(dir)
    end
    return paths       
  end
end
