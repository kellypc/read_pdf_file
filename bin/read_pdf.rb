require 'pdf-reader'

class ReaderPdf
  class << self
    def read_pdf
      @reader = PDF::Reader.new("projeto_de_banco_de_dados.pdf")
    end

    def info
      @reader.info[:Author]
    end

    def page_count
      @reader.page_count
    end
  end
end
