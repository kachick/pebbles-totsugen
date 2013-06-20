# coding: utf-8

require_relative 'helper'

describe Pebbles::TotsuGen do
  context '.generate' do
    it "簡易フォーマットを返す" do
      str = Pebbles::TotsuGen::SimplifiedFormatter.new('突然の死').result
      expect(Pebbles::TotsuGen.generate('突然の死')).to eq(str)
    end
  end
end

describe Pebbles::TotsuGen::OriginFormatter do
  let(:generator) {Pebbles::TotsuGen::OriginFormatter}

  context '#result' do
    context '引数を突然のほにゃほにゃフォーマットにして返せるよねーっていう' do
      specify '基本型として、「突然の死」をうまいこと片付ける' do
        str = <<'EOS'
＿人人 人人＿
＞ 突然の死 ＜
￣Y^Y^Y^Y￣
EOS
        expect(generator.new('突然の死').result).to eq(str.chomp)
      end

      specify '基本型から1文字増えてもうまいことやる' do
        str = <<'EOS'
＿人人人人人＿
＞ 突然の昼寝 ＜
￣Y^Y^Y^Y^Y￣
EOS
        expect(generator.new('突然の昼寝').result).to eq(str.chomp)
      end

      specify '基本型から1文字減ってもうまいことやる' do
        str = <<'EOS'
＿人人人＿
＞ うだー ＜
￣Y^Y^Y￣
EOS
        expect(generator.new('うだー').result).to eq(str.chomp)
      end

      specify '1byte文字と2byte文字混じってる時にもうまいことやっつける' do
        str = <<'EOS'
＿人人人人人＿
＞ 突然のRuby ＜
￣Y^Y^Y^Y^Y￣
EOS
        expect(generator.new('突然のRuby').result).to eq(str.chomp)
      end
    end
  end
end

describe Pebbles::TotsuGen::SimplifiedFormatter do
  let(:generator) {Pebbles::TotsuGen::SimplifiedFormatter}

  context '#result' do
    context '引数を突然のほにゃほにゃフォーマットにして返せるよねーっていう' do
      specify '基本型として、「突然の死」をうまいこと片付ける' do
        str = <<'EOS'
＿人人人人人人＿
＞　突然の死　＜
￣Y^Y^Y^Y^Y￣
EOS
        expect(generator.new('突然の死').result).to eq(str.chomp)
      end

      specify '基本型から1文字増えてもうまいことやる' do
        str = <<'EOS'
＿人人人人人人人＿
＞　突然の昼寝　＜
￣Y^Y^Y^Y^Y^Y￣
EOS
        expect(generator.new('突然の昼寝').result).to eq(str.chomp)
      end

      specify '基本型から1文字減ってもうまいことやる' do
        str = <<'EOS'
＿人人人人人＿
＞　うだー　＜
￣Y^Y^Y^Y￣
EOS
        expect(generator.new('うだー').result).to eq(str.chomp)
      end

      specify '1byte文字と2byte文字混じってる時にもうまいことやっつける' do
        str = <<'EOS'
＿人人人人人人人＿
＞　突然のRuby　＜
￣Y^Y^Y^Y^Y^Y￣
EOS
        expect(generator.new('突然のRuby').result).to eq(str.chomp)
      end
    end
  end
end