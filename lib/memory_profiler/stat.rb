module MemoryProfiler
  class Stat

    attr_reader :class_name, :class_path, :gem, :file, :location, :memsize, :method_id, :string_value

    def initialize(class_name, class_path, method_id, gem, file, location, memsize, string_value)
      @class_name = class_name
      @class_path = class_path
      @method_id = method_id
      @gem = gem

      @file = file
      @location = location

      @memsize = memsize
      @string_value = string_value
    end

    def from
      "#{class_path}\##{method_id}"
    end
  end
end
