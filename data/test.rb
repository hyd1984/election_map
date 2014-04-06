require 'csv'
arr=Array.new
CSV.foreach('2012_president_taipei.csv') do |row|
 puts row.inspect
 arr << row
 end
 arr.each do |line|
   puts line[1]
 end
