require "ipaddr"

module IPAndMaskToCIDR
  def self.cidr(ip, mask)
    ip_parts = ip.split(".").map(&:to_i)
    mask_parts = mask.split(".").map(&:to_i)

    network_parts = ip_parts.zip(mask_parts).map { |ip_part, mask_part| ip_part & mask_part }
    network_address = network_parts.join(".")

    mask_binary = mask_parts.map { |part| format("%08b", part) }.join
    prefix_length = mask_binary.count("1")

    "#{network_address}/#{prefix_length}"
  end
end
