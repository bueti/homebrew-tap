# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Shrink < Formula
  desc "Bocker is a command line tool which creates a backup from a PostgreSQL database,
wraps it in a Docker image, and uploads it to Docker Hub.
Of course, Bocker will also do the reverse and restore your database from a backup in Docker Hub.
"
  homepage "https://shrink.ch"
  version "0.0.1"
  license "MIT"

  depends_on "docker"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bueti/shrinkster/releases/download/v0.0.1/shrinkster_0.0.1_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5a04883d537094624328669ddc640c089b28dcf345ee0b891310b2e184f9b5a7"

      def install
        bin.install "shrink"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bueti/shrinkster/releases/download/v0.0.1/shrinkster_0.0.1_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "c1f63f275cbcbf9df37247e9eb9667f9b992d42e71b9b4f4b1d44fe39e531500"

      def install
        bin.install "shrink"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bueti/shrinkster/releases/download/v0.0.1/shrinkster_0.0.1_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "5e9afd03ecb84682a02c4bda6d3eee97626a3fb86ba9544d726558cba375c589"

      def install
        bin.install "shrink"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bueti/shrinkster/releases/download/v0.0.1/shrinkster_0.0.1_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "1b5fce1e2e12c2e05e09a512cccaaea6d87743fb8549767327ae2d95b71e3ab7"

      def install
        bin.install "shrink"
      end
    end
  end
end
