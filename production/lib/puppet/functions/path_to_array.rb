Puppet::Functions.create_function(:'path_to_array') do
  dispatch :pta do
    param 'String', :initpath
  end

  def pta(initpath)
    paths=[] 
    dir=""
    dir=dir + initpath[0]
    for i in 1...initpath.length do
      dir=dir + initpath[i]
      paths.push(dir)
      if initpath[i]=="/" then
        paths.push(dir)
      end
    end
    if initpath[initpath.length-1] != "/" then
      paths.push(dir)
    end
    return paths       
  end
end
