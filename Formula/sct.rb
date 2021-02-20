# This file was generated by GoReleaser. DO NOT EDIT.
class SCT < Formula
    desc "Tool to check HTTP Security related headers"
    homepage "https://github.com/gocaio/sct"
    version "1.3.0"
    bottle :unneeded
  
    if OS.mac?
      url "https://github.com/gocaio/sct/releases/download/v1.3.0/SCT_v1.3.0_darwin_amd64.tar.gz"
      sha256 "19a2f628a67566373ea0ee7d4c331ac6e465ed56ec504a11592f45cf576daf91"
    elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/gocaio/sct/releases/download/v1.3.0/SCT_v1.3.0_linux_amd64.tar.gz"
        sha256 "26469bad4df612e58621fc13efe8ad0e9133f5161c171c24aac86ea9159b040a"
      end
    end
  
    def install
      bin.install "sct"
    end
  
    test do
      system "#{bin}/sct -version"
    end
  end