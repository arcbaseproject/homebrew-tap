class Cedit < Formula
  desc "Small terminal text editor with nano keys and language-server support"
  homepage "https://github.com/arcbaseproject/cedit"
  url "https://github.com/arcbaseproject/cedit/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "da20f639300efa42b9c8cf652151f59a96e595e7bb970163f5928342c7176d18"
  license "GPL-3.0-or-later"
  head "https://github.com/arcbaseproject/cedit.git", branch: "main"

  def install
    system "make", "test"
    system "make", "install", "PREFIX=#{prefix}", "DOCDIR=#{doc}"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cedit --version")
  end
end
