# See https://puppet.com/docs/puppet/latest/lang_write_functions_in_puppet.html
# for more information on native puppet functions.
function parser(String $value) >> Integer {
    $a = $value.split('/')
    $n = $a.length()
    return ""+$n
    
}
