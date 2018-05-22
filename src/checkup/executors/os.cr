class OS
  def self.execute(command, options = {} of Symbol => Bool)
    command = "#{command} 2>&1"
    silent = options.fetch(:silent, false)
    raise_error = options.fetch(:raise_error, false)
    puts command unless silent
    output = `#{command}`
    puts output unless silent
    execution_result = $?
    return_code = execution_result.exit_status
    if return_code != 0
      error_msg = "Error: #{output} Code: #{return_code} Command: #{command}"
      puts error_msg
      raise error_msg if raise_error
    end
    {return_code: return_code, output: output}
  end
end
