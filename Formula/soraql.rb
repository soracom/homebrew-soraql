class Soraql < Formula
  desc "Command-line SQL client for Soracom data warehouse API"
  homepage "https://github.com/soracom/soraql"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/soracom/soraql/releases/download/v1.0.0/soraql-darwin-amd64.tar.gz"
      sha256 "f6aea1772f267494826fd1d6628476f001ecf4f7de9929f0c8a4a451a1bf28d0"
    else
      url "https://github.com/soracom/soraql/releases/download/v1.0.0/soraql-darwin-arm64.tar.gz"
      sha256 "e2998be09f73ca42245a5f287e3e6d0105e4c944134a98200fa646c869f5b256"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/soracom/soraql/releases/download/v1.0.0/soraql-linux-amd64.tar.gz"
      sha256 "232870c13fc74401a442130495f5ab5fecf6dda333d0dd719c94f4ecc1f3890b"
    else
      url "https://github.com/soracom/soraql/releases/download/v1.0.0/soraql-linux-arm64.tar.gz"
      sha256 "da5a7b6c54b537c80366dffbf68de3fcf785d57700766da8c16ac657befefc14"
    end
  end

  def install
    bin.install "soraql"
  end

  test do
    assert_match "Usage: soraql", shell_output("#{bin}/soraql -h")
  end
end