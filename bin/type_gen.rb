#!/usr/bin/env ruby

require 'yaml'

def get_param_combos(data)

  param_list = data[:params].map{|k,v| k[:name]}

  len = param_list.length
  combinations = []

  while(len > 0)

    combinations << param_list.combination(len).to_a
    len = len - 1
  end
  combinations
end




def get_required_params(params)
  params.map{|p| p[:value].nil? ? p[:name] : nil }.select{|v| !v.nil?}
end

def combo_if(data, combos)
  required =  get_required_params(data[:params])
  content = ""
  count = 0
  combos.each do |outer|
    outer.each do |cmb|
      output = required.all? { |e| cmb.include?(e) }
      next unless output
      if_type = count == 0 ? 'if' : 'elsif'
      content << "  #{if_type} #{cmb.join(' && ')}\n"
      combs = []
      cmb.each {|c| combs << "item[\"#{c}\"] == #{c}"}
      comb_string = "    self.#{data[:field]}.find {|item| #{combs.join(" && ")}} "
      content << "#{comb_string}\n"
      count = count +1
    end
  end
  content << "  end\n"
  content
end





def path_method(data)

   str = ""
   str << "#{accessor(data)}\n"

   str << "#{has_be(data)}\n" unless (data[:skip_matcher] || data[:type] =='finder')

   str << "#{finder(data)}" if data[:type] == "finder"
   str << "#{finder_has(data)}" if data[:type] =='finder' && !data[:skip_matcher]
   str
end

def accessor(data)
  if data[:path]
    <<~HEREDOC
   def #{data[:field]} 
     inspection.dig('#{data[:path].gsub(".","' ,'")}')
   end
   HEREDOC
  else
  end
end

def has_be(data)
  if data[:type] == 'be'
    <<~HD
     def #{data[:name]}?
       self.#{data[:field]} == '#{data[:value]}'
     end
    HD
  else
    <<~HD
      def has_#{data[:field]}?(#{data[:field]})
        self.#{data[:field]} == #{data[:field]}
      end
    HD
  end
end

def param_list(data)
  params = data[:params].map do |param|
    "#{param[:name]}#{param[:value] ? " = #{param[:value] == 'nil' ? 'nil' : "'#{param[:value]}'"}" : ''}"
  end.join(', ')
end

def param_names(data)
  params = data[:params].map do |param|
    param[:name]
  end.join(', ')
end

def finder(data)
  params = param_list(data)

  <<~HD
  def #{data[:name]}(#{params})
  #{combo_if(data, get_param_combos(data))}
  end
  HD
end

def finder_has(data)
  params = param_list data
  <<~HD
  def has_#{data[:name]}?(#{params})
    self.#{data[:name]}(#{param_names(data)})
  end
  HD
end


data = YAML.load_file(ARGV[0])



data.each do |itm|

  puts path_method itm
end




leek = {:name => 'port', :field=>"port", :type=>"finder", :params=>[{:name =>"port"}, {name: "targetPort", value: "nil"}, {name: "protocol", value: "TCP"}]}







