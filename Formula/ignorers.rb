# typed: false
# frozen_string_literal: true

class Ignorers < Formula
  desc "Generate gitignores from the command line."
  homepage "https://github.com/FollowTheProcess/ignorers"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/FollowTheProcess/ignorers/releases/download/v0.1.2/ig-0.1.2-darwin-amd64.tar.gz"
      sha256 "7177b4373da5235cc476e641eed7029280faeabda33fd7ffe87fba17a5169a91"

      def install
        bin.install "ig"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/FollowTheProcess/ignorers/releases/download/v0.1.2/ig-0.1.2-darwin-arm64.tar.gz"
      sha256 "7ecee68a8e93a3b4a9c0bd6d76cf841187be62f768b86d0698c672a6d908a6e9"

      def install
        bin.install "ig"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FollowTheProcess/ignorers/releases/download/v0.1.2/ig-0.1.2-linux-amd64.tar.gz"
      sha256 "61fc599ff2fb8b5e36f2eaff344c476e64caf3b0288524ff20c08d0b3a9063c6"

      def install
        bin.install "ig"
      end
    end
  end

  test do
    "#{bin}/ig --version"
  end
end
