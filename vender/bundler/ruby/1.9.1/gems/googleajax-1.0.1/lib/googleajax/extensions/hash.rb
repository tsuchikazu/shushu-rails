class Hash
  # From the 'backports' gem
  # New Ruby 1.8.7+ constructor -- not documented, see redmine # 1385
  # <tt>Hash[[[:foo, :bar],[:hello, "world"]]] ==> {:foo => :bar, :hello => "world"}</tt>
  unless (Hash[[[:test, :test]]] rescue false)
    class << self
      alias_method :constructor_without_key_value_pair_form, :[]
      def [](*args)
        return constructor_without_key_value_pair_form(*args) unless args.length == 1 && args.first.is_a?(Array)
        h = {}
        args.first.each do |arr|
          next unless arr.respond_to? :to_ary
          arr = arr.to_ary
          next unless (1..2).include? arr.size
          h[arr.at(0)] = arr.at(1)
        end
        h
      end
    end
  end
end