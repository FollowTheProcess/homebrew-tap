# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tag < Formula
  desc "The all in one semver management tool"
  homepage "https://github.com/FollowTheProcess/tag"
  version "0.5.0"
  license "Apache Software License 2.0"

  on_macos do
    on_intel do
      url "https://github.com/FollowTheProcess/tag/releases/download/v0.5.0/tag-0.5.0-darwin-x86_64.tar.gz"
      sha256 "a3c4b838a4c0e23c320f06ba24d30b285d2c8ab2fa39f41a67fc67143432b0db"

      def install
        bin.install "tag"
      end
    end
    on_arm do
      url "https://github.com/FollowTheProcess/tag/releases/download/v0.5.0/tag-0.5.0-darwin-arm64.tar.gz"
      sha256 "26c3ebc53958f2c9d4ba3dd69d15960f8192b2f05ef220e1a1897beec91913bb"

      def install
        bin.install "tag"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/FollowTheProcess/tag/releases/download/v0.5.0/tag-0.5.0-linux-x86_64.tar.gz"
        sha256 "081d93131f9625ffc2454cd92b2f54f562405e967d676b2bbd4c662c93f5f88b"

        def install
          bin.install "tag"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/FollowTheProcess/tag/releases/download/v0.5.0/tag-0.5.0-linux-arm64.tar.gz"
        sha256 "40413bfa4a2686caba791e93c0723f146361d995a58907750511b8fe0f6ff1ad"

        def install
          bin.install "tag"
        end
      end
    end
  end

  test do
    "#{bin}/tag --version"
  end
end
