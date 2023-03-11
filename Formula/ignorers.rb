# typed: false
# frozen_string_literal: true

class Ignorers < Formula
  desc "Generate gitignores from the command line."
  homepage "https://github.com/FollowTheProcess/ignorers"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/FollowTheProcess/ignorers/releases/download/v0.1.3/ig-0.1.3-macos-x86_64.tar.gz"
      sha256 "7dd79183fc1dba1708656921daf443b371fdba4fe9d500f4a3149e6f6ec240a8"

      def install
        bin.install "ig"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/FollowTheProcess/ignorers/releases/download/v0.1.3/ig-0.1.3-macos-arm64.tar.gz"
      sha256 "1127dc673ef550adf15df04df9db73772dd7f49d85938338745ce5f49987f78e"

      def install
        bin.install "ig"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FollowTheProcess/ignorers/releases/download/v0.1.3/ig-0.1.3-linux-x86_64.tar.gz"
      sha256 "c56b5051f7536eb85770fbb9ed00c84082089cb5b8c0b07ab7908b5fb5dcf0ef"

      def install
        bin.install "ig"
      end
    end
  end

  test do
    "#{bin}/ig --version"
  end
end
