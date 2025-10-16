
class Bottles
    def verse(number)
        if number.integer? && number > 2
            "#{number} bottles of beer on the wall, #{number} bottles of beer.\nTake one down and pass it around, #{number - 1} bottles of beer on the wall.\n"
        elsif number.integer? && number == 2
            "#{number} bottles of beer on the wall, #{number} bottles of beer.\nTake one down and pass it around, #{number - 1} bottle of beer on the wall.\n"
        elsif number.integer? && number == 1
            "#{number} bottle of beer on the wall, #{number} bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
        else
            "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
        end
    end

    def verses(first, last)
        verses = []
        for i in first..last do
            verses << verse(i)
        end
        verses.join("\n")
    end
end