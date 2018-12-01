class PacktoryDev < Formula
  desc "An easy to use system packaging tool for your Ruby gems"
  homepage "https://gemfury.com"
  url "https://github.com/packtory/homebrew-tap/releases/download/v0.1.4.pre1/packtory-0.1.4.tar.gz"
  sha256 "f007a7370954a08aa0a0202b0ad46307af06a03491ba7a8fe23fe9eeeb6f3839"
  conflicts_with('packtory', 'packtory-beta')

  def package_name
    "packtory-dev"
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
