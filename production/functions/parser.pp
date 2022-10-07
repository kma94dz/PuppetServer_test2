# See https://puppet.com/docs/puppet/latest/lang_write_functions_in_puppet.html
# for more information on native puppet functions.
function parser(String $value) >> String {
    $a = $value.split('/')
    $n = $a.length
    ['facter', 'hiera', 'mco', 'puppet', 'puppetserver'].each { |nn| puts "Current number is: #{nn}" }
    return $n 
}
