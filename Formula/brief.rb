class Brief < Formula
  desc "Brief - Your Product Navigator, in the terminal"
  homepage "https://briefhq.ai"
  url "https://registry.npmjs.org/@briefhq/cli/-/cli-0.1.21.tgz"
  sha256 "dd6aeedc8cfb6dd02094d79066e503a8bbfca84d3e9f75e1b3352dd7cd82cc06"
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
