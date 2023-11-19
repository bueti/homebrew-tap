# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bocker < Formula
  desc "Bocker is a command line tool which creates a backup from a PostgreSQL database,
wraps it in a Docker image, and uploads it to Docker Hub.
Of course, Bocker will also do the reverse and restore your database from a backup in Docker Hub.
"
  homepage "https://github.com/bueti/bocker"
  version "0.14.5"
  license "MIT"

  depends_on "docker"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bueti/bocker/releases/download/v0.14.5/bocker_0.14.5_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "8f13031337368a40de1aa6f07671256ef48a7b3d0ed6c6d329654e2617ddc5a1"

      def install
        bin.install "bocker"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bueti/bocker/releases/download/v0.14.5/bocker_0.14.5_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "4d2dbb3b7ed99b54d96eb1bbae286429d3bf04a145a1992ffb0ac1978b9b7055"

      def install
        bin.install "bocker"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bueti/bocker/releases/download/v0.14.5/bocker_0.14.5_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "d7b101073140c762c85c61a76eda77ad50b6b856f7ec137889df148559bd3598"

      def install
        bin.install "bocker"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bueti/bocker/releases/download/v0.14.5/bocker_0.14.5_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "bdfcec8c1b655fdda1ae2553c480a2c5e20a9ed6427bbc478bda4dd909f214c6"

      def install
        bin.install "bocker"
      end
    end
  end
end
