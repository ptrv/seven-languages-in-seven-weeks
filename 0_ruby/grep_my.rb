#!/usr/bin/env ruby

def grep(filename, search_term)
    counter = 0
    # File.foreach(filename) {|line| 
    File.open(filename).each_line {|line|
        if line.scan("#{search_term}").size > 0
            puts "#{counter}: #{line}"
        end
        counter = counter + 1
     }
end

grep("test.txt", "ipsum")
