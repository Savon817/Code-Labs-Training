some_sentence = "Hello John Doe!"
sub_sentence = some_sentence.sub('Hello', "Hi")
puts sub_sentence

another_sentence = "Hi John Doe!"

puts sub_sentence.match?(another_sentence)