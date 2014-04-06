require_relative 'elector'
require 'csv'
arr=Array.new
CSV.foreach('data/2012_president_taipei.csv') do |row|
  arr << Elector.new(row[0]+row[1],row[2],row[3],[row[4],row[5],row[6]],row[7],row[8],row[9],row[10],row[11],row[12],row[13])
  end
0.upto(arr.length-1) do |i|
puts arr[i].area , arr[i].latitude , arr[i].longtitude, arr[i].win_name
end
