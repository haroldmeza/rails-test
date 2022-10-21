class ArraysHelper
    # A standard rails method is `array.each()`.  Write a method that operates in a similar manner,
    # but that takes two arrays as an input and alternates between inputs.  As an example,
    # `alternating_each([1, 2, 3], [:a, :b, :c]) { |v| puts v }` would output 1, a, 2, b, 3, c in order.
    def alternating_each(a, b)
        if !a.is_a?(Array) || !b.is_a?(Array)
            raise
        end
        #arrayA = a.is_a?(Array) ? a : []
        #arrayB = b.is_a?(Array) ? b : []
        (a.zip(b).flatten.compact | b).each {|x| yield x}
    end
end