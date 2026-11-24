class Cedit < Formula
  desc "Small terminal text editor with nano keys and language-server support"
  homepage "https://github.com/arcbaseproject/cedit"
  url "https://github.com/arcbaseproject/cedit/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "418199face4b83b5ad03a6e07f8ef9bf5afd631664924a127e215e23198daf3f"
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
