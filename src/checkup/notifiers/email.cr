class Email
  def self.notify(message, subject, recipients)
    recipients.each { |recipient|
      command = %{echo "#{message}" | mutt -s "#{subject}" #{recipient}}
      r = OS.execute(command, {:silent => true})
      if (r[:return_code] == 0)
        puts "Notificação enviada para: #{recipient}"
      else
        puts "Erro ao enviar mensagem para: #{recipient} código de erro: #{r[:return_code]} mensagem de erro: #{r[:output]} "
      end
    }
  end
end
