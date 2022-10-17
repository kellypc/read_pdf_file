require './bin/read_pdf'
require 'byebug'
require 'pdf-reader'

RSpec.describe ReaderPdf do
  result = ReaderPdf
  context 'read a file' do
    pdf = PDF::Reader.new("projeto_de_banco_de_dados.pdf")

    it 'return page\'s number' do
      expect(result.page_count).to eq(pdf.page_count)
    end

    it 'return author name' do
      expect(result.info).to eq(pdf.info[:Author])
    end
  end
end
