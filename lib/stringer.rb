require "stringer/version"
module Stringer
    def self.spacify *strings
        string = strings.join(" ")
        string
    end

    def self.minify(string, count)
        if count >= string.length
        	string
        else
        	result = ""
        	for i in 0..count-1 do
        		result += string[i]
        	end	
        	result+="..."
        	result
        end
    end

    def self.tokenize(string)
    	string.split(' ')
    end

    def self.replacify(string, old, newstr)
    	string.gsub!(old, newstr)
    end

    def self.removify(string, s)
    	string = string.split(" ")
    	string.reject! { |elem| elem == s }
    	string.join(" ")
    end
end