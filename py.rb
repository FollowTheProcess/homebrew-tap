# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Py < Formula
  desc "Approximate port of Brett Cannon's python-launcher to Go."
  homepage "https://github.com/FollowTheProcess/py"
  version "0.2.0"
  license "MIT License"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FollowTheProcess/py/releases/download/v0.2.0/py_0.2.0_Darwin_arm64.tar.gz"
      sha256 "f4de409ddb703abdf05606817755686dd909358cefd871f51767624cc47cdf1d"

      def install
        bin.install "py"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/FollowTheProcess/py/releases/download/v0.2.0/py_0.2.0_Darwin_x86_64.tar.gz"
      sha256 "ef4f84019ea5c8f9eed982e1eead2b280f18177c4b04551af3cd1524fb06906d"

      def install
        bin.install "py"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/FollowTheProcess/py/releases/download/v0.2.0/py_0.2.0_Linux_arm64.tar.gz"
      sha256 "37ddce772954c46fdc68d36beafa1dd12c13b894f1eb358beaa92ebe71af11a7"

      def install
        bin.install "py"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/FollowTheProcess/py/releases/download/v0.2.0/py_0.2.0_Linux_x86_64.tar.gz"
      sha256 "aa4bbe736dac2b7cd589075210f48623890acfc99322eadcc609a7b80e362c2a"

      def install
        bin.install "py"
      end
    end
  end

  conflicts_with "python-launcher"

  test do
    "#{bin}/py --version"
  end
end
