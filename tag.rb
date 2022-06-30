# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tag < Formula
  desc "Easy semantic versioning from the command line"
  homepage "https://github.com/FollowTheProcess/tag"
  version "0.1.0"
  license "Apache Software License 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FollowTheProcess/tag/releases/download/v0.1.0/tag_0.1.0_Darwin_arm64.tar.gz"
      sha256 "7a8b51901dc73ea66ee61b8a733d0c3b0ed96cd61f4c75f51d883751805ada5c"

      def install
        bin.install "tag"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/FollowTheProcess/tag/releases/download/v0.1.0/tag_0.1.0_Darwin_x86_64.tar.gz"
      sha256 "bd87d04e979c478e4cc1efea4dabce4b371367b01cd43e0ae5756342dab25ae3"

      def install
        bin.install "tag"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FollowTheProcess/tag/releases/download/v0.1.0/tag_0.1.0_Linux_x86_64.tar.gz"
      sha256 "ca863c4c27d98a5bd933559b8484796ac222069d1eb38a525a9cd9ef13cd9bb0"

      def install
        bin.install "tag"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/FollowTheProcess/tag/releases/download/v0.1.0/tag_0.1.0_Linux_arm64.tar.gz"
      sha256 "f342e6c8e2351157326f74bc1dcdb58218bdae0b3ee41a2d2d47ba3d46b77ef5"

      def install
        bin.install "tag"
      end
    end
  end

  test do
    "#{bin}/tag --version"
  end
end
