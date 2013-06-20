# coding: utf-8

module Pebbles::TotsuGen

  class Formatter
    def initialize(body)
      @body = body
    end

    def result
      "#{header}\n#{center}\n#{footer}"
    end

    private

    def body_length
      @body.each_char.inject(0){|total, char|total += char.bytesize == 1 ? 1 : 2}
    end

    def header
      "＿#{body_top}＿"
    end

    def footer
      "￣#{body_bottom}￣"
    end
  end

  # なんか、元々はこういうフォーマットだったっぽいので一応実装しておいた。
  class OriginFormatter < Formatter
    private

    def center
      "＞ #{@body} ＜"
    end

    def body_top
      half = '人' * ((body_length / 2) / 2)
      shortage = body_length % 4
      padding = case shortage
                when 3, 2
                  '人'
                when 1
                  ''
                when 0
                  ' '
                end

      "#{half}#{padding}#{half}"
    end

    def body_bottom
      ('Y^' * (body_length / 2)).chop
    end
  end

  class SimplifiedFormatter < Formatter
    private

    def center
      "＞　#{@body}　＜"
    end

    def body_top
      '人' * ((body_length / 2) + 2)
    end

    def body_bottom
      ('Y^'  * ((body_length / 2) + 1)).chop
    end
  end

end