class Packtory < Formula
  desc "An easy to use system packaging tool for your Ruby gems"
  homepage "https://gemfury.com"
  url "https://github.com/packtory/homebrew-tap/releases/download/v0.1.3/packtory-0.1.3.tar.gz"
  sha256 "58370942c36cd8df7da72471a64d6644224aab665281c22153a741acbf23dcac"

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