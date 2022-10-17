require 'pdf-reader'

class ReaderPdf
  attr_reader :pdf

  def initialize(pdf)
    @pdf = pdf
  end

  def call
    read_pdf
    info
    page_count
  end

  private

  def read_pdf
    @reader = PDF::Reader.new(pdf)
  end

  def info
    @reader.info[:Author]
  end

  def page_count
    @reader.page_count
  end
end
