class Bottles
    def verse(number)
        "#{part1(number)}#{part2(number)}"
    end

    def pluralise(number)
        number != 1 ? "bottles" : "bottle"
    end

    def numberToString(number)
        number == 0 ? "no more" : "#{number}"
    end

    def article(number)
        number == 1 ? "it" : "one"
    end

    def part1(number)
        start = numberToString(number)
        start.capitalize!
        "#{start} #{pluralise(number)} of beer on the wall, #{numberToString(number)} #{pluralise(number)} of beer.\n"
    end

    def part2(number)
        number > 0 ? "Take #{article(number)} down and pass it around, #{numberToString(number - 1)} #{pluralise(number - 1)} of beer on the wall.\n" : "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end

    def verses(high, low)
        high.downto(low).map { |n| verse(n) }.join("\n")
    end

    def song()
        verses(99, 0)
    end
end
