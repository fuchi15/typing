
require 'json'

json=open('question.json'){|io|
 JSON.load(io)
}
start_time = Time.now
score = 0

json.each do |key,val|

  puts "問題: #{val}\n"
  a = gets.chomp
  if /#{val}/ =~ a
	puts "正解"
  end
  if(val.length < 5)  	
  	score += 100
  elsif(val.length <= 5 && val.length > 10)
  	score += 200
  else
  	score += 300
  end

end

puts "時間 #{Time.now - start_time}s"
puts "#{score}"