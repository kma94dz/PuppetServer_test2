Puppet::Functions.create_function(:'extract_from_brackets') do
    dispatch :extract do
      param 'String', :some_string
    end
  
    def extract(some_string)
      for i in 0..some_string.length do
        count=1
        if some_string[i]=="(" then
          for j in i..some_string.length do
            if some_string[j]=="(" then
              count = count+1
            end  
            if some_string[j]==")" then
              count=count-1
            end
            if count == 0 then
              break
            end
          end
        end
      end        
    end
end
