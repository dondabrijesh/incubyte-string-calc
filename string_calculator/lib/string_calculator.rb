class StringCalculator
    def add(num)
        unless num.present?
            return 0
        end
        deli, numbers = check_delimiter(num)
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