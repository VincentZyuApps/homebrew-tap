class Winload < Formula
  desc "Network Load Monitor - nload-like TUI tool for Windows/Linux/macOS"
  homepage "https://github.com/VincentZyuApps/winload"
  license "MIT"
  version "0.1.8-rc.26"

  # Dynamic URL generation per platform
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/VincentZyuApps/winload/releases/download/v0.1.8-rc.26/winload-macos-x86_64-v0.1.8-rc.26"
    sha256 ""
  elsif OS.mac?
    url "https://github.com/VincentZyuApps/winload/releases/download/v0.1.8-rc.26/winload-macos-aarch64-v0.1.8-rc.26"
    sha256 ""
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/VincentZyuApps/winload/releases/download/v0.1.8-rc.26/winload-linux-x86_64-v0.1.8-rc.26"
    sha256 ""
  elsif OS.linux?
    url "https://github.com/VincentZyuApps/winload/releases/download/v0.1.8-rc.26/winload-linux-aarch64-v0.1.8-rc.26"
    sha256 ""
  end

  def install
    bin.install Dir["winload-*"].first => "winload"
  end

  test do
    system "#{bin}/winload", "--version"
  end
end
