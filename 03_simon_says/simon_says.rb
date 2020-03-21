#write your code here

def echo message
    message
end

def shout message
    message.upcase!
end

def repeat(message, count = 2)
    count.times.collect { message }.join(' ')
end

def start_of_word(message, count = 0)
    message[0..count-1]
end

def first_word message
    message.partition(' ').first
end
def titleize message
    message.split.map(&:capitalize).join(' ')
end

def titleize message
    # This may go further!
    # For further information: https://www.grammarcheck.net/capitalization-in-titles-101/
    little_words = %w(the a an and in into on onto up upon of over but from if like that than)
    
    unless message.split.size == 1
        splitted = message.split(/ /)
        splitted[0].capitalize!
        splitted.map{|word| word.capitalize! unless little_words.include? word}
        splitted.join(' ')
    else
        message.capitalize!
    end
end