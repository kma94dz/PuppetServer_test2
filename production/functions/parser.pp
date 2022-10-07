# See https://puppet.com/docs/puppet/latest/lang_write_functions_in_puppet.html
# for more information on native puppet functions.
function parser(String $value) >> Array {
    $a = $value.split('/')
    $i=0
    $fullpath = ""
    $a.each |$string|{
        $fullpath = fullpath+$string
        $a[$i] = $fullpath + "/"
        $i=$i+1
    }
    return $n
    
}
