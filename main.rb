require 'json'

# とりあえず変数fileに展開する
question=open('question.json')

# fileを1行読む毎にパースして、その上で出力する
question.each_line { |line|
    json=JSON.load(line)
    puts json['question']
}