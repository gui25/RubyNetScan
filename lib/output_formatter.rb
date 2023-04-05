module OutputFormatter
  def self.format_nmap_output(output, subnet_mask)
    devices = output.each_line.map do |line|
      if line.start_with?("Nmap scan report for")
        line.sub!("Nmap scan report for", "").strip
      elsif line.start_with?("Host is up")
        line.strip
      elsif line.start_with?("MAC Address:")
        line.sub!("MAC Address:", "   Endereço MAC:").strip
      else
        nil
      end
    end

    devices.compact!

    formatted_devices = []
    devices.each_slice(3) do |device|
      formatted_devices << device
    end

    formatted_devices.sort_by! { |device| IPAddr.new(device[0].split(" ")[0]) }

    numbered_devices = formatted_devices.map.with_index do |device, index|
      ["#{index + 1}. #{device[0]}", device[1], device[2]].join("\n")
    end

    puts numbered_devices.join("\n\n")

    "Scanning network: #{subnet_mask}\n\n" + numbered_devices.join("\n\n")
  end
end
