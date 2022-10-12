#fonction permettant de comparer deux version : exemple : 8.0.2 > 8.0.1
#si la version v1 plus grande que v2 return 2
#si la version v1 plus petite que v2 return 0
#si la version v1 egale a v2 return 1
#versioncmp("8.0.1.2","8.0.1") ===> 2
Puppet::Functions.create_function(:'checkversion') do
    dispatch :vcmp do
        param 'String', :v1
        param 'String', :v2
    end
  
    def vcmp(v1,v2)  
        version_array1 = v1.split(".")  #split de la string contenant la version par . exemeple 8.0.1 ===> [8,0,1]
        version_array2 = v2.split(".")
        result=0
        for i in 0...[version_array1.length,version_array2.length].min do#  on parcours j'usqu'a atteindre la fin de la plus petite array
            if Integer(version_array1[i])>Integer(version_array2[i]) then #on compare case par case
                result = 2
                break
            elsif Integer(version_array1[i])==Integer(version_array2[i]) then
                result = 1
                break
            else
                result = 0
                break
            end
        end
        #dans le cas ou les arrays non pas la meme taille et que jusqu'ici les version sont egaux
        if result == 1 then
            if version_array1.length > version_array2.length  then #si v1 est la plus grande array, alors elle est la plus grande version
                result = 2
            elsif version_array1.length > version_array2.length then #si v2 est la plus grande array, alors elle est la plus grande version
                result = 0
            end
        end
        return result + "v1:"+ v1 + "  v2:"+ v2       
    end
end
  
