# coding: utf-8
# frozen_string_literal: true

RSpec.describe Pebbles::TotsuGen do
  context '.generate' do
    it '簡易フォーマットを返す' do
      str = Pebbles::TotsuGen::SimplifiedFormatter.new('突然の死').result
      expect(Pebbles::TotsuGen.generate('突然の死')).to eq(str)
    end
  end
end

RSpec.describe Pebbles::TotsuGen::OriginFormatter do
  let(:generator) {Pebbles::TotsuGen::OriginFormatter}

  context '#result' do
    context '引数を突然のほにゃほにゃフォーマットにして返せるよねーっていう' do
      specify '基本型として、「突然の死」をうまいこと片付ける' do
        str = <<'OUTPUT'
＿人人 人人＿
＞ 突然の死 ＜
￣Y^Y^Y^Y￣
OUTPUT
        expect(generator.new('突然の死').result).to eq(str.chomp)
      end

      specify '基本型から1文字増えてもうまいことやる' do
        str = <<'OUTPUT'
＿人人人人人＿
＞ 突然の昼寝 ＜
￣Y^Y^Y^Y^Y￣
OUTPUT
        expect(generator.new('突然の昼寝').result).to eq(str.chomp)
      end

      specify '基本型から1文字減ってもうまいことやる' do
        str = <<'OUTPUT'
＿人人人＿
＞ うだー ＜
￣Y^Y^Y￣
OUTPUT
        expect(generator.new('うだー').result).to eq(str.chomp)
      end

      specify '1byte文字と2byte文字混じってる時にもうまいことやっつける' do
        str = <<'OUTPUT'
＿人人人人人＿
＞ 突然のRuby ＜
￣Y^Y^Y^Y^Y￣
OUTPUT
        expect(generator.new('突然のRuby').result).to eq(str.chomp)
      end
    end
  end
end

RSpec.describe Pebbles::TotsuGen::SimplifiedFormatter do
  let(:generator) {Pebbles::TotsuGen::SimplifiedFormatter}

  context '#result' do
    context '引数を突然のほにゃほにゃフォーマットにして返せるよねーっていう' do
      specify '基本型として、「突然の死」をうまいこと片付ける' do
        str = <<'OUTPUT'
＿人人人人人人＿
＞　突然の死　＜
￣Y^Y^Y^Y^Y￣
OUTPUT
        expect(generator.new('突然の死').result).to eq(str.chomp)
      end

      specify '基本型から1文字増えてもうまいことやる' do
        str = <<'OUTPUT'
＿人人人人人人人＿
＞　突然の昼寝　＜
￣Y^Y^Y^Y^Y^Y￣
OUTPUT
        expect(generator.new('突然の昼寝').result).to eq(str.chomp)
      end

      specify '基本型から1文字減ってもうまいことやる' do
        str = <<'OUTPUT'
＿人人人人人＿
＞　うだー　＜
￣Y^Y^Y^Y￣
OUTPUT
        expect(generator.new('うだー').result).to eq(str.chomp)
      end

      specify '1byte文字と2byte文字混じってる時にもうまいことやっつける' do
        str = <<'OUTPUT'
＿人人人人人人人＿
＞　突然のRuby　＜
￣Y^Y^Y^Y^Y^Y￣
OUTPUT
        expect(generator.new('突然のRuby').result).to eq(str.chomp)
      end
    end
  end
end
