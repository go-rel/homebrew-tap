# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rel < Formula
  desc "Database migration using REL"
  homepage "https://go-rel.github.io/"
  version "0.34.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/go-rel/rel/releases/download/v0.34.0/rel_0.34.0_Darwin_x86_64.tar.gz"
      sha256 "61f2928aebe81f28a4eeaf2f78935cdd8639331dd552f3919e970b6ea58c1147"

      def install
        bin.install "rel"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/go-rel/rel/releases/download/v0.34.0/rel_0.34.0_Darwin_arm64.tar.gz"
      sha256 "2c3c87e605fbac80672ea64e453dbdf6e97845e7097d5e5528c939d8c49c026b"

      def install
        bin.install "rel"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/go-rel/rel/releases/download/v0.34.0/rel_0.34.0_Linux_armv6.tar.gz"
      sha256 "a70814294c197f9c40918badc536aee4cf7fa71cc7da3d17303722c085d600d4"

      def install
        bin.install "rel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/go-rel/rel/releases/download/v0.34.0/rel_0.34.0_Linux_x86_64.tar.gz"
      sha256 "e1f5ddfebb4e010cb40b9cb6ce8ff80c57b3ab14b804a43bc0b73054cfb9c68f"

      def install
        bin.install "rel"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/go-rel/rel/releases/download/v0.34.0/rel_0.34.0_Linux_arm64.tar.gz"
      sha256 "98ece374486a6d59f968d21e70519551d8932e877043602a3f05238aa50d6b2d"

      def install
        bin.install "rel"
      end
    end
  end

  depends_on "golang" => :optional
end
