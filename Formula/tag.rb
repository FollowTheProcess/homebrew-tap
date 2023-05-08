# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tag < Formula
  desc "Easy semantic versioning from the command line"
  homepage "https://github.com/FollowTheProcess/tag"
  version "0.2.0"
  license "Apache Software License 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FollowTheProcess/tag/releases/download/v0.2.0/tag-0.2.0-darwin-arm64.tar.gz"
      sha256 "cc501717e6cfe8fa7799390babb57194bddd0a1ee6ceef7c563690abef3efb6a"

      def install
        bin.install "tag"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/FollowTheProcess/tag/releases/download/v0.2.0/tag-0.2.0-darwin-x86_64.tar.gz"
      sha256 "8252de8680bbcacdad7a64b8c2a61bae84de09e950201987ed1fbf436e2af6f6"

      def install
        bin.install "tag"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FollowTheProcess/tag/releases/download/v0.2.0/tag-0.2.0-linux-x86_64.tar.gz"
      sha256 "8907d44ae4cd8a978c2aaaa10474fd819ef39efc83f4433f79302bb109ac7117"

      def install
        bin.install "tag"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/FollowTheProcess/tag/releases/download/v0.2.0/tag-0.2.0-linux-arm64.tar.gz"
      sha256 "64d53eec424203f3a42cf0152c54cb14ec45374530635c0c5a1c5b4218784adb"

      def install
        bin.install "tag"
      end
    end
  end

  test do
    "#{bin}/tag --version"
  end
end
