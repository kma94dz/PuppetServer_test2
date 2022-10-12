#fonction pour transformé un path en array
#exemple c:/a/b/c/ ===> [c:/,c:/a/,c:/a/b/c/]
Puppet::Functions.create_function(:'path_to_array') do
  dispatch :pta do
    param 'String', :path
  end

  def pta(path)
    Array paths=[] 
    dir=""
    dir=dir + path[0] #on prend la premiere lettre comme debut
    for i in 1...path.length do
      dir=dir + path[i]   #en remplit notre chaine dir
      if path[i]=='/' || path[i]=='\\' then  #si on rencontre / ou \ on ajoute ce qu'on a rassembler dans dir, dans paths
        paths.push(dir)
      end
    end
    if path[path.length-1] != '/'|| path[i]=='\\' then #si la fin du path n'a pas de / ou \ on rajoute la fin normallement exemple /a/b/c.txt ===> [/a/,/a/b/,/a/b/c.txt]
      paths.push(dir)
    end
    return paths       
  end
end
