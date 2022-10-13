Puppet::Functions.create_function(:'extract_between') do
    dispatch :extract do
      param 'String', :some_string
      param 'String', :delim1
      param 'String', :delim2
    end
  
    def extract(some_string,delim1,delim2)
      elems=[]  
      for i in 0...some_string.length do
        count=0
        if some_string[i]==delim1 then
          for j in i...some_string.length do
            if some_string[j]==delim1 then
              count = count+1
            end  
            if some_string[j]==delim2 then
              count=count-1
            end
            if count == 0 then
              elem=[]
              concat = ""
              for c in i+1...j do
                concat = concat + " "  + some_string[c]
              end
              elem.push(concat)
              elems.push(elem)  
              break
            end
          end
        end
      end
      return elems        
    end
end