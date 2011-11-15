require 'formula'

class Cabocha < Formula
  url 'http://cabocha.googlecode.com/files/cabocha-0.60.tar.gz'
  homepage 'http://code.google.com/p/cabocha/'
  version '0.6'
  md5 '3399873faab9b252fd57e1d48fa1285d'

  depends_on 'mecab'
  depends_on 'mecab-ipadic'
  depends_on 'crf++'

  def install
    args = ["--disable-debug", "--disable-dependency-tracking", "--prefix=#{prefix}", "--with-charset=utf8"]

    ENV["LIBS"] = "-liconv"
    system "./configure", *args
    system "make"
    system "make install"
  end
end