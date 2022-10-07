# See https://puppet.com/docs/puppet/latest/lang_write_functions_in_puppet.html
# for more information on native puppet functions.
function parser(String $value) >> String {
    $a = $value.split('/')
    $n = $a.length
    $a.each do |f|
        $k=0
    return $n 
}
