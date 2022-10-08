Puppet::Functions.create_function(:'extract_from_bracket') do
    dispatch :extract do
      param 'String', :some_string
    end
  
    def extract(some_string)
      for i in 0..some_string.length do
        count=1
        if some_string[i]=="("
          for j in i..some_string.length do
            if some_string[j]=="("
              count = count+1
            if some_string[j]==")"
              count=count-1
            if count == 0
              break        
    end
  end