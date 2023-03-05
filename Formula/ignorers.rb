# typed: false
# frozen_string_literal: true

class Ignorers < Formula
  desc "Generate gitignores from the command line."
  homepage "https://github.com/FollowTheProcess/ignorers"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/FollowTheProcess/ignorers/releases/download/v0.1.0/ig-0.1.0-darwin-amd64.tar.gz"
      sha256 "98d36b375ad1985ce4b1b9d47ae46444283612a371f61796ba702bacea52bef6"

      def install
        bin.install "ig"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/FollowTheProcess/ignorers/releases/download/v0.1.0/ig-0.1.0-darwin-arm64.tar.gz"
      sha256 "ea14897b1a2b47d75dd2a06fb6f5d3a4e40803489829f61f462e39142d59eb10"

      def install
        bin.install "ig"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FollowTheProcess/ignorers/releases/download/v0.1.0/ig-0.1.0-linux-amd64.tar.gz"
      sha256 "98b0eaa339d2116fe976f1b1ce796b9a555b0456c2caf40e6c3718574aa739da"

      def install
        bin.install "ig"
      end
    end
  end

  test do
    "#{bin}/ig --version"
  end
end
