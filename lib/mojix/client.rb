module Mojix
  class Client
    def initialize(host: 'localhost', port: 9661, mode: :normal)
      host_port = "#{host}:#{port}"
      @stub = Tokenizer::Stub.new(host_port, :this_channel_is_insecure)
      @mode = sym_to_mode(mode)
    end

    def tokenize_simply(text)
      req = SimpleRequest.new(text: text, mode: @mode)
      @stub.tokenize_simply(req).tokens
    end

    private

    def sym_to_mode(sym)
      case sym
      when :normal
        SimpleRequest::Mode::NORMAL
      when :search
        SimpleRequest::Mode::SEARCH
      when :extended
        SimpleRequest::Mode::EXTENDED
      else
        raise ArgumentError
      end
    end
  end
end
