require "rubygems"
require "fileutils"

jobname = ARGV[0]

f = File.read(jobname)

FileUtils.cp jobname, jobname + ".bak" 

f.gsub!(/mathvariant=/){'class='}
File.open(jobname, "w"){|g| g.puts f}

