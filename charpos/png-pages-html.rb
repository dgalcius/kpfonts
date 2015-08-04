require "rubygems"
require "fileutils"
jobname = ARGV[0]

f = File.read(jobname + ".lg").split("\n")

h = Hash.new

f.each{|line|

## --- needs --- charpos.idv[1] ==> charpos-x-33.png ---
if line=~/--- needs --- .*?\.idv\[(.*?)\] \=\=\> (.*?) ---/ then
#  puts  "#{$1}: #{$2}"
  h[$1] = $2
end

}

h.each {|i,fname|
     FileUtils.move "#{jobname}-i-#{i}.png",  fname
}

exit

