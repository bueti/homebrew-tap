# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bocker < Formula
  desc "Bocker is a command line tool which creates a backup from a PostgreSQL database,
wraps it in a Docker image, and uploads it to Docker Hub.
Of course, Bocker will also do the reverse and restore your database from a backup in Docker Hub.
"
  homepage "https://github.com/bueti/bocker"
  version "0.14.8"
  license "MIT"

  depends_on "docker"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bueti/bocker/releases/download/v0.14.8/bocker_0.14.8_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "f1a3b3a71a782aeb355dd0912247bd9b4cea1c153e59a66d9978757d1c6523ae"

      def install
        bin.install "bocker"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/bueti/bocker/releases/download/v0.14.8/bocker_0.14.8_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "44525e729cd7b72892fad94e95dd5a2fac72a5c5a8635e23b2fa05bc77897f29"

      def install
        bin.install "bocker"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/bueti/bocker/releases/download/v0.14.8/bocker_0.14.8_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "f5c6edad2599da1b6b4f1b73304a7bfc4f6821c7e0b9275cc30202a3e400f866"

        def install
          bin.install "bocker"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/bueti/bocker/releases/download/v0.14.8/bocker_0.14.8_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "5f44a03d993bca0158acee02350399df625234918fbed0ded6a96448e2a6a637"

        def install
          bin.install "bocker"
        end
      end
    end
  end
end
