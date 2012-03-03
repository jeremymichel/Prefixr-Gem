require "uri"
require "net/http"

class Prefixr
	def initialize(args)
		@url = URI.parse "http://prefixr.com/api/index.php"
		@input = args[0]
		@output = args[1]
		unless @input
			puts "\n$ prefixr [input file] [output file]"
			puts "- If no output file is specified input file will be overwritten."
			puts "- If a direcotry is passed in as the input file, all of the .css file inside the directory will be overwritten."
			return
		end
		run
	end

	private
	def run
		unless is_dir?(@input)
			content = read_file @input
			puts "\nReading content of #{@input}."
			css = get_prefix_css content
			puts "Applying prefixes."
			write_file css, @input, @output
			puts "\n#{@output || @input} received prefixes."
		else
			files = Dir.glob "*.css"
			files.each do |f|
				puts "\nReading content of #{f}."
				content = read_file f
				css = get_prefix_css content
				puts "Applying prefixes."
				write_file css, f
			end
			puts "\nAll .css files in #{@input} received prefixes."
		end
	end

	private
	def is_dir?(input)
		File.directory? input
	end

	private
	def read_file(input_file)
		File.open(input_file, "rb") do |f|
			f.read
		end
	end

	private
	def get_prefix_css(file_read)
		Net::HTTP.post_form(@url, {'css'=>file_read}).body
	end

	private
	def write_file(css, input, output = nil)
		File.open(output || input, "w+") do |f|
			f.write css
		end
	end
end


