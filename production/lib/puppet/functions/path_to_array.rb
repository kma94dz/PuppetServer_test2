Puppet::Functions.create_function(:'path_to_array') do
  dispatch :pta do
    param 'String', :path
  end

  def pta(path)
    paths=[] 
    dir="" 
    for i in 0...path.length do
      dir=dir + path[i]
      if path[i]=='/' && count>0 then
        paths.push(dir)
      end
      count=count+1
    end
    if path[path.length-1] != '/' then
      paths.push(dir)
    end
    return paths       
  end
end
