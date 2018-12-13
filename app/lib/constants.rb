class Constants
# 【２】works#newで、公開・非公開の選択肢を作ろうとして、他でも使うだろうからと部品化することにした。
# カラム名：public。integer=数値が入る。０か１かを書き換えることで公開・非公開を管理する。
# １はどっちだっけ？とならないように、定数を使うことにした。
# １なら公開として定数PUBLIC、０なら非公開として定数PRIVATEとする。
# Constantsは定数って意味。
# なんでクラス作ってるかは忘れてもた。
# メソッドで使える定数・変数は先に定義済みじゃなきゃいかんから、以下の流れはわかる。

    PUBLIC = 1
    PRIVATE = 0

# 選択肢として表示する内容をメソッドとして作成。
# 表示文字列（キー）が"公開"のものは、定数（値）：PUBLIC。定数：PUBLICは、カラム内では１として管理される。
# この後はapplication_herlperでお呼び出しする
    def self.options_for_public
        [['公開', PUBLIC], ['非公開', PRIVATE]]
    end

end