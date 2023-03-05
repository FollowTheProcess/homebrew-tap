# typed: false
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Ignorers < Formula
  desc "Generate gitignores from the command line"
  homepage "https://github.com/FollowTheProcess/ignorers"
  url "https://github.com/FollowTheProcess/ignorers/archive/v0.1.0.tar.gz"
  sha256 "b73a7dc7b67ddeed008bd403d1cf11f8138cc8929ceb212cff7f01f761d62324"
  license "Apache-2.0"

  on_macos do
  end

  on_linux do
  end

  def install
    bin.install "ig"
  end
end
