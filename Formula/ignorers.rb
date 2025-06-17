# typed: false
# frozen_string_literal: true

class Ignorers < Formula
  desc "Generate gitignores from the command line."
  homepage "https://github.com/FollowTheProcess/ignorers"
  version "0.1.4"
  license "Apache-2.0"
  deprecate! date: "2025-06-17", because: "no longer supported", replacement_formula: "goignore"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/FollowTheProcess/ignorers/releases/download/v0.1.4/ig-0.1.4-macos-x86_64.tar.gz"
      sha256 "afdd3cf1b43bc9b08c188c146cc391c8fae153891ad1c04ddb115339f3500225"

      def install
        bin.install "ig"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/FollowTheProcess/ignorers/releases/download/v0.1.4/ig-0.1.4-macos-arm64.tar.gz"
      sha256 "87c033f2962f76723d767715245bcceb95686df2212af740bb9891a318998a62"

      def install
        bin.install "ig"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FollowTheProcess/ignorers/releases/download/v0.1.4/ig-0.1.4-linux-x86_64.tar.gz"
      sha256 "00a175cfd4b1840f465b0a00af74ddf984db04e2e8be12e8269b834edf2da436"

      def install
        bin.install "ig"
      end
    end
  end

  test do
    "#{bin}/ig --version"
  end
end
