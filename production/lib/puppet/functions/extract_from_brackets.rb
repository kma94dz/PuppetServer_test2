Puppet::Functions.create_function(:'extract_from_brackets') do
    dispatch :extract do
      param 'String', :some_string
    end
  
    def extract(some_string)
      elems=[]  
      for i in 0..some_string.length do
        count=0
        if some_string[i]=="(" then
          for j in i..some_string.length do
            if some_string[j]=="(" then
              count = count+1
            end  
            if some_string[j]==")" then
              count=count-1
            end
            if count == 0 then
              elem=[]
              for c in i..j do
                elem.push(some_string[c])
              end
              elems.push(elem)  
              break
            end
          end
        end
      end
      return elems        
    end
end
