require "formula"

class Mop < Formula
  homepage "https://github.com/mop-tracker/mop" 
  head     "https://github.com/mop-tracker/mop.git" 
  url      "https://codeload.github.com/mop-tracker/mop/tar.gz/v0.2.1" 
  sha256   "cf11ce0967fc02aa6ed7852866973aeb66d2e5729ca1fe7997d9d58d64d8e04a" 

  depends_on "go" => :build

  def install
    system "go", "get", "github.com/michaeldv/termbox-go"
    system "go build cmd/main.go"
    bin.install "mop"
  end
end
