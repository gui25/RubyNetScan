$LOAD_PATH.unshift File.expand_path("lib", __dir__)

require "loading_animation"
require "get_local_ip"
require "get_subnet_mask"
require "ip_and_mask_to_cidr"
require "output_formatter"

require "io/console"
require "thread"

local_ip = GetLocalIP.local_ip
subnet_mask = GetSubnetMask.subnet_mask
subnet_cidr = IPAndMaskToCIDR.cidr(local_ip, subnet_mask)

puts "Scanning network: #{subnet_cidr}"

is_scanning = true

@output = ""

nmap_thread = Thread.new do
  @output = `nmap -sn #{subnet_cidr}`
  is_scanning = false
end

LoadingAnimation.animate_while_scanning { is_scanning }

nmap_thread.join

formatted_output = OutputFormatter.format_nmap_output(@output, subnet_cidr)

File.open("scan_results.txt", "w", encoding: "UTF-8") do |file|
  file.puts formatted_output
end

puts "\nResultados salvos em scan_results.txt"
puts "\nMade by https://github.com/gui25"
