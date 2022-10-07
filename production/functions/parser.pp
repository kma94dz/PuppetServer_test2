# See https://puppet.com/docs/puppet/latest/lang_write_functions_in_puppet.html
# for more information on native puppet functions.
function parser(String $value) >> Array {
    $a = $value.split('/')
    $a.each { |n| puts "Current number is: #{n}" }
    $n = $a.length
    return $n 
}
