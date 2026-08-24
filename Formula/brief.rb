class Brief < Formula
  desc "Brief - Your Product Navigator, in the terminal"
  homepage "https://briefhq.ai"
  url "https://registry.npmjs.org/@briefhq/cli/-/cli-0.1.5.tgz"
  sha256 "566e210b1d098fd889037d13b43b5bee7dd445888c2cb809d60b916080d81595"
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
