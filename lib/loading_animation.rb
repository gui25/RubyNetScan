module LoadingAnimation
  def self.animate_while_scanning
    frames = ["⠈", "⠐", "⠠", "⢀"]
    colors = ["31", "33", "34", "36"]
    frame = 0
    color = 0
    progress = 0

    # Oculta o cursor
    print "\e[?25l"

    while yield
      progress_bar = "█" * (progress % 10) + " " * (9 - (progress % 10))
      print "\r\e[#{colors[color % colors.size]}m #{frames[frame]} Loading: [#{progress_bar}] #{frames[frame]}\e[0m"
      frame = (frame + 1) % frames.size
      color = (color + 1) % colors.size
      progress += 1
      sleep(0.1)
    end

    # Apaga a linha do "Loading"
    print "\r\e[K"

    # Exibe o cursor novamente
    print "\e[?25h"
  end
end
