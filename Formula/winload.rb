class Winload < Formula
  desc "Network Load Monitor - nload-like TUI tool for Windows/Linux/macOS"
  homepage "https://github.com/VincentZyuApps/winload"
  license "MIT"
  version "0.2.3-beta.6"

  # Dynamic URL generation per platform
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/VincentZyuApps/winload/releases/download/v0.2.3-beta.6/winload-macos-x86_64-v0.2.3-beta.6"
    sha256 "9834e7f8f2b83899f52bc439460010c16742ce7f4489db535b38d7d6c6aa471d"
  elsif OS.mac?
    url "https://github.com/VincentZyuApps/winload/releases/download/v0.2.3-beta.6/winload-macos-aarch64-v0.2.3-beta.6"
    sha256 "fdba9eeb57eeff824a3fc89e5e78d4fea0728b6e73801c8346ab9cb9d074eaa6"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/VincentZyuApps/winload/releases/download/v0.2.3-beta.6/winload-linux-x86_64-v0.2.3-beta.6"
    sha256 "0302d76389d1dd5cdae82bca9f0ec2dce24c889d3a70a0bdef46ec60a539c33f"
  elsif OS.linux?
    url "https://github.com/VincentZyuApps/winload/releases/download/v0.2.3-beta.6/winload-linux-aarch64-v0.2.3-beta.6"
    sha256 "d08b3daa217948acb2ad9dc2ba4548b17142ef190ba1fd459cf4420ecd2b8af6"
  end

  def install
    bin.install Dir["winload-*"].first => "winload"
  end

  test do
    system "#{bin}/winload", "--version"
  end
end
