# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MagentoCli < Formula
  desc "run magento natively with dockerized backend services"
  homepage "https://magento-cli.com"
  version "0.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/blueacorninc/magento-cli/releases/download/v0.1.8/magento-cli_0.1.8_darwin_arm64.tar.gz"
      sha256 "c7c5b013d1ce06f63b4c5d3f3447301cdb8ba0d179b89bde9ebb19a3712e7277"

      def install
        bin.install "magento"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/blueacorninc/magento-cli/releases/download/v0.1.8/magento-cli_0.1.8_darwin_amd64.tar.gz"
      sha256 "93e3aa866a2bcb314d9a7b759eabd928ce4cd9b3a285d3e10d6428bba610bfd9"

      def install
        bin.install "magento"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/blueacorninc/magento-cli/releases/download/v0.1.8/magento-cli_0.1.8_linux_amd64.tar.gz"
      sha256 "6c778bb2bd98f43d0eb480e4e7071a80b6595499d5c2a000d3aac9287f7daec6"

      def install
        bin.install "magento"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/blueacorninc/magento-cli/releases/download/v0.1.8/magento-cli_0.1.8_linux_arm64.tar.gz"
      sha256 "1be192f25d27b84602e08825af8174efabfac112586730c807b87928f3884da1"

      def install
        bin.install "magento"
      end
    end
  end

  depends_on "docker" => :required
  depends_on "docker-compose" => :required
  depends_on "git" => :optional

  def caveats; <<~EOS
    How to use this binary
  EOS
  end

  test do
    system "#{bin}/magento -h"
  end
end
