#!/usr/bin/env ruby

a = []
16.times {|i|
    a.push(i)
}

i = 0
while i < a.length
    puts "#{a[i]} #{a[i]+1} #{a[i]+2} #{a[i]+3}"
    i = i + 4
end

a.each_slice(4) do |a|
    p a
end
