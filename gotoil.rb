# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gotoil < Formula
  desc "Handy CLI to automate the development workflow"
  homepage "https://github.com/FollowTheProcess/gotoil"
  version "0.1.1"
  license "Apache-2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FollowTheProcess/gotoil/releases/download/v0.1.1/gotoil_0.1.1_Darwin_arm64.tar.gz"
      sha256 "e21092b446a56f604824e2b5b799cca64e0c108178701ce03cfbe3d37360efff"
    end
    if Hardware::CPU.intel?
      url "https://github.com/FollowTheProcess/gotoil/releases/download/v0.1.1/gotoil_0.1.1_Darwin_x86_64.tar.gz"
      sha256 "08ac221ffcb9c83953d7a49d371c981a5d7be4975fb48ae27858473069a1f002"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/FollowTheProcess/gotoil/releases/download/v0.1.1/gotoil_0.1.1_Linux_arm64.tar.gz"
      sha256 "5060585d429fcaafbaf3ff4777b4cc2f474ee8fdb6b429b7cdd18741a1248ca4"
    end
    if Hardware::CPU.intel?
      url "https://github.com/FollowTheProcess/gotoil/releases/download/v0.1.1/gotoil_0.1.1_Linux_x86_64.tar.gz"
      sha256 "064810d42743aa063f5b5878927a09805fac9246acc6d3b3e034b1003668f039"
    end
  end

  depends_on "git"

  def install
    bin.install "gotoil"
  end

  test do
    "#{bin}/gotoil version"
  end
end