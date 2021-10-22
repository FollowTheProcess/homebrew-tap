# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tag < Formula
  desc "Interact with semver git tags with ease!"
  homepage "https://github.com/FollowTheProcess/tag"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FollowTheProcess/tag/releases/download/v0.1.4/tag_0.1.4_Darwin_arm64.tar.gz"
      sha256 "ad9e344ace94e933b7ebe9357b1e05a26a18471438dd77717e273d31199811d6"

      def install
        bin.install "tag"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/FollowTheProcess/tag/releases/download/v0.1.4/tag_0.1.4_Darwin_x86_64.tar.gz"
      sha256 "a5b99bd172b5fffa76745edf1c304db1e8d65545c3e343279bb8f9795c0a96db"

      def install
        bin.install "tag"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/FollowTheProcess/tag/releases/download/v0.1.4/tag_0.1.4_Linux_arm64.tar.gz"
      sha256 "3df0bbcefa251a0bd5cb4fdabae42ac06e03e74b8c4ac6720f79c0e6cff612c6"

      def install
        bin.install "tag"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/FollowTheProcess/tag/releases/download/v0.1.4/tag_0.1.4_Linux_x86_64.tar.gz"
      sha256 "2a5d49b1dea091cc3d10e740b4e11bdba10cedc312443b3b2c0642a258f7d238"

      def install
        bin.install "tag"
      end
    end
  end

  depends_on "git"

  test do
    "#{bin}/tag version"
  end
end