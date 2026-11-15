class Cedit < Formula
  desc "Small terminal text editor with nano keys and language-server support"
  homepage "https://github.com/arcbaseproject/cedit"
  url "https://github.com/arcbaseproject/cedit/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "210831125888213e38b2e6e3c816f833258068cc3d13a5120cf6c86d40427553"
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
