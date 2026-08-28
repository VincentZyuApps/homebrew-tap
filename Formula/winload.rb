class Winload < Formula
  desc "Network Load Monitor - nload-like TUI tool for Windows/Linux/macOS"
  homepage "https://github.com/VincentZyuApps/winload"
  license "MIT"
  version "0.2.3-beta.5"

  # Dynamic URL generation per platform
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/VincentZyuApps/winload/releases/download/v0.2.3-beta.5/winload-macos-x86_64-v0.2.3-beta.5"
    sha256 "d75555ce37098d10dc701d4f96f1acb690d35756e55567e70f44542b58a195ba"
  elsif OS.mac?
    url "https://github.com/VincentZyuApps/winload/releases/download/v0.2.3-beta.5/winload-macos-aarch64-v0.2.3-beta.5"
    sha256 "594102c9fe7fe65093d0e920a389876252550fd2d484b8fccc210d97af36a3d4"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/VincentZyuApps/winload/releases/download/v0.2.3-beta.5/winload-linux-x86_64-v0.2.3-beta.5"
    sha256 "413df442e16834dd9ca700ade269fb409dcf391619bf5145db26c7930fb9cb13"
  elsif OS.linux?
    url "https://github.com/VincentZyuApps/winload/releases/download/v0.2.3-beta.5/winload-linux-aarch64-v0.2.3-beta.5"
    sha256 "38a5a9a50ced03ce506e166e3eaf3b5430ea963a212fe4a5ff262136c139808c"
  end

  def install
    bin.install Dir["winload-*"].first => "winload"
  end

  test do
    system "#{bin}/winload", "--version"
  end
end
