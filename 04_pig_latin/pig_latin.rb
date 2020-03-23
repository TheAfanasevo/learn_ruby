#write your code here

# for more about regular expressins: https://blog.benroux.me/understanding-regular-expressions-2-groups-and-captures/
# \b indicates beginning or end of words
# \s is added for many words (with white space)

# first group
# \b[aeiou]\w* a vowel as the first character which is followed by others or
# \bqu 'qu' as the first two characters or
# \b[^\saeiou]qu 'qu' as the first two characters but not preceded by a space or vowel or
# \b[^\saeiou] consonant as the first character
# \b[^\saeiou]{1,3} consonants as the first three characters or

# second group
# \w* the whole group of characters after the first group

# /i for case insensitivity

def translate text
    text.gsub!(/(\b[aeiou]\w*|\bqu|\b[^\saeiou]qu|\b[^\saeiou]{1,3}|\b[^\saeiou])(\w*)/i, '\\2\\1ay')
end