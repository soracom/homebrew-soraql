class Soraql < Formula
  desc "Command-line SQL client for Soracom data warehouse API"
  homepage "https://github.com/soracom/soraql"
  version "1.0.1"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/soracom/soraql/releases/download/v1.0.1/soraql-darwin-amd64.tar.gz"
      sha256 "0a856c04e1074c3e5b2a221653337def3ac0a13f422e8ba05c054a82edb6282b"
    else
      url "https://github.com/soracom/soraql/releases/download/v1.0.1/soraql-darwin-arm64.tar.gz"
      sha256 "54bfdeb44c70e3ee452387c00c61c3fb9046bb6607c59f0e2e493af6fdd00f16"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/soracom/soraql/releases/download/v1.0.1/soraql-linux-amd64.tar.gz"
      sha256 "0b6235df0968c87bd510339530e09d00b9af661014198ef509762849d71e98c8"
    else
      url "https://github.com/soracom/soraql/releases/download/v1.0.1/soraql-linux-arm64.tar.gz"
      sha256 "d1d22757b7ba34c74b5aa025f322298d7c74574af9c881021d02e517c2c3be62"
    end
  end

  def install
    bin.install "soraql"
  end

  test do
    assert_match "Usage: soraql", shell_output("#{bin}/soraql -h")
  end
end
