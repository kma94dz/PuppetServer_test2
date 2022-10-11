Puppet::Functions.create_function(:'path_to_array') do
  dispatch :pta do
    param 'String', :initpath
  end

  def pta(path)
    Array paths=[] 
    dir=""
    dir=dir + path[0]
    for i in 1...path.length do
      dir=dir + path[i]
      if path[i]=='/' then
        paths.push(dir)
      end
    end
    if path[path.length-1] != '/' then
      paths.push(dir)
    end
    return pathsjj     
  end
end
