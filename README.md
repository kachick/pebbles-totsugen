# pebbles-totsugen

![Build Status](https://github.com/kachick/pebbles-totsugen/actions/workflows/test_behaviors.yml/badge.svg?branch=main)
[![Gem Version](https://badge.fury.io/rb/pebbles-totsugen.png)](http://badge.fury.io/rb/pebbles-totsugen)

## なにこれ

```plaintext
＿人人人人人人人人人＿
＞　突然のリリース　＜
￣Y^Y^Y^Y^Y^Y^Y^Y￣
```

## 使い方

Ruby 2.7 以上 でテストしています。

```console
$ gem install pebbles-totsugen
これで `totsugen.rb` というのが $PATH に入ります。やばいですね。
```

### ターミナルから

引数で渡したり

```console
$ totsugen.rb 突然の死
＿人人人人人人＿
＞　突然の死　＜
￣Y^Y^Y^Y^Y￣
```

標準入力で渡したり

```console
$ echo '突然のSTDIN' | totsugen.rb
＿人人人人人人人＿
＞　突然のSTDIN　＜
￣Y^Y^Y^Y^Y^Y￣
```

### ライブラリとして（なんに使うんだこんなもん）

```ruby
require 'pebbles/totsugen'

Pebbles::TotsuGen.generate('突然のrequire') #=> ＿人人人人人人人人＿
                                           #   ＞　突然のrequire　＜
                                           #   ￣Y^Y^Y^Y^Y^Y^Y￣

```

## リンク

* [ソースコード](https://github.com/kachick/pebbles-totsugen)
* [APIドキュメント](https://kachick.github.io/pebbles-totsugen/)
* ["pebbles" とはなにか](https://randd.kwappa.net/2010/12/19/192/)
