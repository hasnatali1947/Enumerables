module MyEnumerable
    def all?
      each { |item| return false unless yield(item) }
      true
    end
  
    def any?
      each { |item| return true if yield(item) }
      false
    end
  
    def filter
      array = []
      each { |item| array << item if yield(item) }
      array
    end
  
    def max
      result = nil
      each do |item|
        result = item if result.nil? || item > result
      end
      result
    end
  
    def min
      result = nil
      each do |item|
        result = item if result.nil? || item < result
      end
      result
    end
  
    def sort
      sort = []
      each do |item|
        index = 0
        index += 1 while index < sort.length && item < sort[index]
        sort.insert(index, item)
      end
      sort
    end
  end
  