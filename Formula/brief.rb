class Brief < Formula
  desc "Brief - Your Product Navigator, in the terminal"
  homepage "https://briefhq.ai"
  url "https://registry.npmjs.org/@briefhq/cli/-/cli-0.1.30.tgz"
  sha256 "7caebfaa4217a1a16bc3edf32a4b0dff826671e6714e2fd76558bf0188829f05"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brief --version")
  end
end
