Puppet::Functions.create_function(:'concat') do
  dispatch :pta do
    param 'String', :v1
    param 'String', :v2
  end

  def pta(v1,v2)
    return v1+""+v2       
  end
end