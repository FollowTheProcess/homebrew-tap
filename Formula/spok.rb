# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Spok < Formula
  desc "It's a build system Jim, but not as we know it!"
  homepage "https://github.com/FollowTheProcess/spok"
  version "0.2.2"
  license "Apache Software License 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/FollowTheProcess/spok/releases/download/v0.2.2/spok-0.2.2-darwin-x86_64.tar.gz"
      sha256 "1b6d43033bb9e9d32f643211449cc8e714726163a0422f34591cabbbe29feaab"

      def install
        bin.install "spok"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/FollowTheProcess/spok/releases/download/v0.2.2/spok-0.2.2-darwin-arm64.tar.gz"
      sha256 "3a6666c6bcc34553d0f5782ef17e2edbf08c2734689133d70d196f5e02ac79cd"

      def install
        bin.install "spok"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FollowTheProcess/spok/releases/download/v0.2.2/spok-0.2.2-linux-x86_64.tar.gz"
      sha256 "cb3a2b812b5ef62a45348529fd3643fb8d680ee0f49b1162fe02e784200375cf"

      def install
        bin.install "spok"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/FollowTheProcess/spok/releases/download/v0.2.2/spok-0.2.2-linux-arm64.tar.gz"
      sha256 "80d1067dfcfb93b43210cd904129b3e9c07328ffb7950ea45c81287266f0e3d9"

      def install
        bin.install "spok"
      end
    end
  end

  test do
    "#{bin}/spok --version"
  end
end
