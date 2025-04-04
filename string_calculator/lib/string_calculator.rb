class StringCalculator
    def add(num)
        unless num.present?
            return 0
        end
        deli, numbers = check_delimiter(num)
        tokens = numbers.split(/#{delimiter}|\n/)
        values = tokens.map(&:to_i)

        negatives = values.select { |n| n < 0 }
        raise "negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?

        values.sum
    end

    private

    def check_delimiter(num)
        if num.start_with?("//")
            match = num.match(%r{^//(.+)\n(.*)}m)
            [Regexp.escape(match[1]), match[2]]
        else
            [",", num]
        end
    end
end