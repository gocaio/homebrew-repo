# This file was generated by GoReleaser. DO NOT EDIT.
class N2c < Formula
    desc "Nmap xml to csv converter"
    homepage "https://github.com/gocaio/n2c"
    version "1.0.0"
    bottle :unneeded
  
    if OS.mac?
      url "https://github.com/gocaio/sct/releases/download/v1.3.0/SCT_v1.3.0_darwin_amd64.tar.gz"
      sha256 "1c503b277d535599b85163c819f7a4fcb24e62dfeff5bb4e45f58545d5198b15"
    elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/gocaio/sct/releases/download/v1.3.0/SCT_v1.3.0_linux_amd64.tar.gz"
        sha256 "3baa7e703c699bdf52e2ac9279e0d18c87b5db07d174a0c2f4e1848a76bdbb76"
      end
    end
  
    def install
      bin.install "n2c"
    end
  
    test do
      system "#{bin}/n2c help"
    end
  end