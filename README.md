pebbles-totsugen
================

[![Build Status](https://secure.travis-ci.org/kachick/pebbles-totsugen.png)](http://travis-ci.org/kachick/pebbles-totsugen)
[![Gem Version](https://badge.fury.io/rb/pebbles-totsugen.png)](http://badge.fury.io/rb/pebbles-totsugen)

なにこれ
-----------

```plaintext
＿人人人人人人人人人＿
＞　突然のリリース　＜
￣Y^Y^Y^Y^Y^Y^Y^Y￣
```

使い方
-----

### ターミナルから

引数で渡したり

```bash
$ totsugen 突然の死
＿人人人人人人＿
＞　突然の死　＜
￣Y^Y^Y^Y^Y￣
```

標準入力で渡したり

```bash
$ echo '突然のSTDIN' | totsugen
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

動作環境
-------------

* Ruby - [1.9.2以上](http://travis-ci.org/#!/kachick/pebbles-totsugen)

Install
-------

```bash
$ gem install pebbles-totsugen
```

Link
----

* [Home](http://kachick.github.com/pebbles-totsugen/)
* [code](https://github.com/kachick/pebbles-totsugen)
* [API](http://kachick.github.com/pebbles-totsugen/yard/frames.html)
* [issues](https://github.com/kachick/pebbles-totsugen/issues)
* [CI](http://travis-ci.org/#!/kachick/pebbles-totsugen)
* [gem](https://rubygems.org/gems/pebbles-totsugen)

お決まりのライセンス
--------

The MIT X11 License  
Copyright (c) 2013 Kenichi Kamiya  
See MIT-LICENSE for further details.