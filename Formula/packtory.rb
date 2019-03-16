class Packtory < Formula
  desc "An easy to use system packaging tool for your Ruby gems"
  homepage "https://gemfury.com"
  url "https://github.com/packtory/packtory/releases/download/v0.1.6/packtory-0.1.6.tar.gz"
  sha256 "5b87c702311914c4e45aab404018c26a30e23f973229057a507df7451e4e79e5"

  devel do
    url "https://github.com/packtory/packtory/releases/download/devel/packtory-0.1.6.tar.gz"
    sha256 "5b87c702311914c4e45aab404018c26a30e23f973229057a507df7451e4e79e5"
  end

  def package_name
    "packtory"
  end

  def install
    prefix.install Dir["*"]

    install_script = "%s/%s/packtory_tools/after_install_script" % [ prefix, package_name ]
    system(install_script) if File.exist?(install_script)

    true
  end

  test do
    true
  end
end
