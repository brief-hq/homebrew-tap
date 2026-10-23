class Brief < Formula
  desc "Brief - Your Product Navigator, in the terminal"
  homepage "https://briefhq.ai"
  url "https://registry.npmjs.org/@briefhq/cli/-/cli-0.1.40.tgz"
  sha256 "f3338a490f32295d693ee9e5f2ea39ad8d3b8b771a24e998f13f77e5357e9e57"
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
