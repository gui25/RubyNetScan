# 🌐 Network Scanner: Descubra e Gerencie sua Rede com Facilidade 🌐

Apresentamos o Network Scanner, um projeto Ruby elegante e eficiente que simplifica a descoberta e o gerenciamento de dispositivos em sua rede local. Com uma interface de usuário animada e fácil de usar, este scanner de rede é perfeito para desenvolvedores e profissionais de TI que desejam manter suas redes domésticas ou empresariais seguras e organizadas.

## 🚀 Funcionalidades

- 🔎 Descobre dispositivos conectados à sua rede local
- 📋 Exibe endereços IP, status e endereços MAC dos dispositivos
- 💾 Salva os resultados em um arquivo de texto
- 🎨 Interface de usuário animada e agradável
- 💻 Funciona em Windows e Linux

## 📦 Pré-requisitos

Para usar este projeto no Linux, certifique-se de ter instalado as seguintes dependências:

- Ruby (versão 2.5 ou superior)
- nmap

Para instalar o Ruby e o nmap no Ubuntu/Debian, execute o seguinte comando:

```powershell
sudo apt-get install ruby nmap
```

No Fedora/CentOS/RHEL:

```powershell
sudo dnf install ruby nmap
```

No Arch Linux/Manjaro:

```powershell
sudo pacman -S ruby nmap
```

No Windows:

    Você pode baixar o Ruby em https://rubyinstaller.org/ e o nmap em https://nmap.org/download.html.

## 💎 Instalação das dependências do Ruby

Este projeto utiliza um arquivo `Gemfile` para gerenciar as dependências do Ruby. Para instalar as dependências, siga os passos abaixo:

1. Certifique-se de ter o Bundler instalado. Se não estiver instalado, execute o seguinte comando:

    ```powershell
    gem install bundler
    ```

2. Navegue até a pasta do projeto e execute o seguinte comando para instalar as dependências listadas no arquivo `Gemfile`:

    ```powershell
    bundle install
    ```

Isso instalará todas as gems necessárias para executar o projeto.

## 🎮 Como usar

1. Clone este repositório ou baixe e extraia os arquivos ZIP.

2. Abra um terminal (no Windows, use o Prompt de Comando) e navegue até a pasta do projeto.

3. Execute o script `main.rb` com o seguinte comando:

    ```powershell
    ruby main.rb
    ```

4. Aguarde enquanto o script verifica sua rede e exibe os resultados.

5. Os resultados também serão salvos em um arquivo chamado `scan_results.txt`.

## 🤝 Contribuindo

Sinta-se à vontade para fazer um fork deste projeto e enviar um pull request com suas melhorias e correções de bugs. Estamos ansiosos para receber sua contribuição e tornar este scanner de rede ainda melhor!

## 📄 Licença

Este projeto está licenciado sob a licença MIT. Consulte o arquivo LICENSE para obter detalhes.

## 💖 Créditos

Feito com ❤️ por [gui25](https://github.com/gui25). Agradecemos a todos os colaboradores e usuários deste projeto!
