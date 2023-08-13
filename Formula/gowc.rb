# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gowc < Formula
  desc "Toy clone of coreutils wc in Go"
  homepage "https://github.com/FollowTheProcess/gowc"
  version "0.2.0"
  license "MIT License"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/FollowTheProcess/gowc/releases/download/v0.2.0/gowc-0.2.0-darwin-x86_64.tar.gz"
      sha256 "e52d7590233f0dcddce3ff08b221858d2766561939ccae7fbb676c04948c9af9"

      def install
        bin.install "gowc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/FollowTheProcess/gowc/releases/download/v0.2.0/gowc-0.2.0-darwin-arm64.tar.gz"
      sha256 "d7ca8f20b01b10a0da6dca7817566031fd6683f12ab85bc51652ff1bbb718dd9"

      def install
        bin.install "gowc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FollowTheProcess/gowc/releases/download/v0.2.0/gowc-0.2.0-linux-x86_64.tar.gz"
      sha256 "52323f6dcee9de2d8450ca5d6ac3a767c82792e787897ea840e2381bd5c5eebc"

      def install
        bin.install "gowc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/FollowTheProcess/gowc/releases/download/v0.2.0/gowc-0.2.0-linux-arm64.tar.gz"
      sha256 "108fcb584bb13654cb8d4350b9783da1043cc387469ac618889b1380ef9e6fa4"

      def install
        bin.install "gowc"
      end
    end
  end

  test do
    "#{bin}/gowc -version"
  end
end
