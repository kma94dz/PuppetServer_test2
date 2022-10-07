# See https://puppet.com/docs/puppet/latest/lang_write_functions_in_puppet.html
# for more information on native puppet functions.
function parser(String $value) >> Array {
    $a = $value.split('/')
    $n = $a.length
    $a.each { |nn| puts "Current number is: #{nn}" }
    return $n 
}
