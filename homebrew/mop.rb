require "formula"

class Mop < Formula
  homepage "https://github.com/DMXL/mop" 
  head     "https://github.com/DMXL/mop.git" 
  url      "https://codeload.github.com/DMXL/mop/tar.gz/v0.2.2" 
  sha256   "5fa4d52dea3f51468dfaff3556af933096aeffac6f972f3f3e8182edbd5d04a9" 

  depends_on "go" => :build

  def install
    system "go", "get", "github.com/michaeldv/termbox-go"
    system "go build cmd/mop/main.go"
    bin.install "mop"
  end
end
