class Soraql < Formula
  desc "Command-line SQL client for Soracom data warehouse API"
  homepage "https://github.com/soracom/soraql"
  version "1.0.2"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/soracom/soraql/releases/download/v1.0.2/soraql-darwin-amd64.tar.gz"
      sha256 "93e8fd64ab210f0a7fdd7fc8ece21da32f550a3f0baf829d84927b96fc467765"
    else
      url "https://github.com/soracom/soraql/releases/download/v1.0.2/soraql-darwin-arm64.tar.gz"
      sha256 "22d565c9859d631dd33f802ba5e85fcc07f415cc576cd5ef8c838f8bc4b5c187"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/soracom/soraql/releases/download/v1.0.2/soraql-linux-amd64.tar.gz"
      sha256 "7f30a1028567dff0955d8235387f3ce8fcae19e60cec6e221883c3c83e81d53c"
    else
      url "https://github.com/soracom/soraql/releases/download/v1.0.2/soraql-linux-arm64.tar.gz"
      sha256 "ef591fd7e8dfb8718f6849e8d2bb7ea00e8c802dd978d6eebd49c3ffaf283a7a"
    end
  end

  def install
    bin.install "soraql"
  end

  test do
    assert_match "Usage: soraql", shell_output("#{bin}/soraql -h")
  end
end
