# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bocker < Formula
  desc "Bocker is a command line tool which creates a backup from a PostgreSQL database,
wraps it in a Docker image, and uploads it to Docker Hub.
Of course, Bocker will also do the reverse and restore your database from a backup in Docker Hub.
"
  homepage "https://github.com/bueti/bocker"
  version "0.14.7"
  license "MIT"

  depends_on "docker"

  on_macos do
    on_intel do
      url "https://github.com/bueti/bocker/releases/download/v0.14.7/bocker_0.14.7_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "4bf0ce2e4e46e1609265590b90f976b56d92dc3b76a567b12c2d194920f1b3be"

      def install
        bin.install "bocker"
      end
    end
    on_arm do
      url "https://github.com/bueti/bocker/releases/download/v0.14.7/bocker_0.14.7_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "d5d0b3a73eec5e36724ad2a41c4c5bb150478f6b530e36350de8c05fe925e56e"

      def install
        bin.install "bocker"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/bueti/bocker/releases/download/v0.14.7/bocker_0.14.7_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "8effff7fd3181d0ce12e5cbc1c7d67b8efe79b3d482a50be0e1a2ae509b5b988"

        def install
          bin.install "bocker"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/bueti/bocker/releases/download/v0.14.7/bocker_0.14.7_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "a8d7c819560ad915d2ce01cb40450602e55b8961cda11a9b7018f6b5b24d2209"

        def install
          bin.install "bocker"
        end
      end
    end
  end
end
