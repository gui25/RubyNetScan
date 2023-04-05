module GetSubnetMask
  def self.subnet_mask
    if RUBY_PLATFORM =~ /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      # Windows
      ipconfig_output = `ipconfig`
      wifi_adapter_line_index = ipconfig_output.lines.find_index { |line| line.include?("Adaptador de Rede sem Fio Wi-Fi") }

      subnet_line = nil
      index = wifi_adapter_line_index

      while subnet_line.nil? && index < ipconfig_output.lines.size
        current_line = ipconfig_output.lines[index]
        subnet_line = current_line if current_line.include?("Máscara de Sub-rede")
        index += 1
      end

      subnet_mask = subnet_line.split(":").last.strip rescue "255.255.255.0"
    else
      # Linux
      ip_output = `ip addr`
      subnet_mask = ip_output.match(/inet\s+\d+\.\d+\.\d+\.\d+\/\d+\s+brd\s+\d+\.\d+\.\d+\.\d+\s+scope\s+global\s+(?:dynamic\s+)?\w+/).to_s.split(" ")[1].split("/")[1] rescue "24"
    end

    subnet_mask
  end
end
