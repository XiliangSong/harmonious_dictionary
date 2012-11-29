# encoding: utf-8

module RsegFilter
  class Symbol
    @@separators = ['｀', '［', '］', '、', '＝', '‘', '；', '。', '｜', '？', '》', 
                  '《', '：', '“', '｛', '｝', '）', '（', '＊', '…', '＃', '！',
                  '～', '’', '”', '〕', '〈', '〉', '「', '」', '『', '』', '〖', '〗', 
                  '【', '】', '＜', '＞', '`', '~', '!', '@', '#', '^', 
                  '&', '*', '\\', '(', ')', '=', '{', '}', '[', ']', 
                  '|', ';', ':', "'", '<', '>', '?', "\n", "\t", "\r", 
                  ' ', '-', '/', '+', ',', '　']
    def self.filter(char)
      @@separators.include?(char) ? :symbol : char
    end
  end
end