L1G
===

L-1グランプリ（姫路IT勉強会vol.11）において利用した、D言語の紹介と課題解決のソース。  
なにせ書き手が __へっぽこ__ なので、あまり綺麗で効率的なソースではありません。  

L-1に関して
---

以下のリンク参照の事  
[姫路IT勉強会](https://sites.google.com/site/himejiitstudy/ "姫路IT勉強会")  
[姫路IT勉強会 Vol.11(zusaar)](http://www.zusaar.com/event/434003 "zusaar")  
[L-1グランプリ お題](https://sites.google.com/site/himejiitstudy/2012/20121117/questions "お題")  

ソースコードのリスト
---

* [fizzbuzz.d](https://github.com/detcoder/L1G/blob/master/fizzbuzz.d "fizzbuzz")
    * なんの変哲もない、 _頭の悪い_ fizzbuzzの実装
* [fizzbuzzed.d](https://github.com/detcoder/L1G/blob/master/fizzbuzzed.d "fizzbuzzed")
    * コンパイル時に演算・表示するようにしたfizzbuizzの実装
* [fizzbuzzMT.d](https://github.com/detcoder/L1G/blob/master/fizzbuzzMT.d "fizzbuzzMT")
    * std.concurrencyによるマルチスレッドfizzbuzz実装（未発表）
* [gpa.d](https://github.com/detcoder/L1G/blob/master/gpa.d "gpa")
    * GPA計算の実装。switch文
* [gpaStr.d](https://github.com/detcoder/L1G/blob/master/gpaStr.d "gpaStr")
    * GPA計算の実装。std.string.count利用（未発表）
* [tail5.d](https://github.com/detcoder/L1G/blob/master/tail5.d "tail5")
    * tail -n5 相当の実装。ワンライナー
* [tail5c.d](https://github.com/detcoder/L1G/blob/master/tail5c.d "tail5c")
    * tail -n5 相当の実装。Cライクな書き方

謝辞
---

姫路IT勉強会の運営の方々に改めて御礼申し上げます。  
また、ネタのツッコミ及びコードを提供してくださった@mono_shoo氏に感謝致します。