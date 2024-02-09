module Helper
  include Capybara::DSL

  def tirar_foto(nome_arquivo, resultado)
    caminho_arquivo = "report/screenshots/test_#{resultado}"
    foto = "#{caminho_arquivo}/#{nome_arquivo}.png"
    page.save_screenshot(foto)

    # Verifica se embed está disponível no contexto
    embed(foto, 'image/png', 'Clique aqui') if respond_to?(:embed)
    
    foto # Retorna o caminho completo da foto para que você possa usá-lo se necessário
  end

  def excluir_screenshots(resultado)
    puts "Excluindo screenshots para o resultado: #{resultado}"
    caminho_arquivo = "report/screenshots/test_#{resultado}"
    
    # Verifica se o diretório existe antes de tentar excluir
    if Dir.exist?(caminho_arquivo)
      Dir.glob("#{caminho_arquivo}/*.png").each do |arquivo|
        # arquivo = "#{caminho_arquivo}/#{nome_arquivo}.png"
        File.delete(arquivo)
      end

      # Adiciona remoção do diretório se estiver vazio
      Dir.rmdir(caminho_arquivo) if Dir.glob("#{caminho_arquivo}/*").empty?
    end
  end
end
