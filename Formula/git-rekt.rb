# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitRekt < Formula
  desc "A profoundly unhelpful git extension"
  homepage "https://github.com/FollowTheProcess/git-rekt"
  version "0.2.0"
  license "MIT License"

  on_macos do
    on_intel do
      url "https://github.com/FollowTheProcess/git-rekt/releases/download/v0.2.0/git-rekt-0.2.0-darwin-x86_64.tar.gz"
      sha256 "02aee4b55edffc2b6fe86de417bff12e34e202bd9c39c39476751e1bb6dbc7e9"

      def install
        bin.install "git-rekt"
      end
    end
    on_arm do
      url "https://github.com/FollowTheProcess/git-rekt/releases/download/v0.2.0/git-rekt-0.2.0-darwin-arm64.tar.gz"
      sha256 "27a408aa9f5e048a16dd4d7840d8d4bd37033bd6c974d0e140cd5a1d448e7508"

      def install
        bin.install "git-rekt"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/FollowTheProcess/git-rekt/releases/download/v0.2.0/git-rekt-0.2.0-linux-x86_64.tar.gz"
        sha256 "50de5b50dd750d66d7c36cbbdb4426cff8cad9edcc2aca0d380c5677e1f37394"

        def install
          bin.install "git-rekt"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/FollowTheProcess/git-rekt/releases/download/v0.2.0/git-rekt-0.2.0-linux-arm64.tar.gz"
        sha256 "c0ceb3cc9b057244a98d6c2a4e504a81f90c2caeb26e194440ac05b6a3816fef"

        def install
          bin.install "git-rekt"
        end
      end
    end
  end

  test do
    "#{bin}/git-rekt --version"
  end
end
