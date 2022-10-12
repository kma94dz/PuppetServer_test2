Puppet::Functions.create_function(:'versioncmp') do
    dispatch :vcmp do
        param 'String', :v1
        param 'String', :v2
    end
  
    def vcmp(v1,v2)  
        version_array1 = v1.split(".")
        version_array2 = v2.split(".")
        result=0
        for i in 0...[version_array1.length,version_array2.length].min do
            if Integer(version_array1[i])>Integer(version_array2[i]) then
                result = 2
                break
            end
            elsif Integer(version_array1[i])==Integer(version_array2[i]) then
                result = 1
                break
            end
            else
                result = 0
                break
            end
        end
        if result == 1 then
            if version_array1.length > version_array2.length  then
                result = 2
            elsif version_array1.length < version_array2.length then
                result = 0
            end
        end
        return result       
    end
end
  
