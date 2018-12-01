class PacktoryDev < Formula
  desc "An easy to use system packaging tool for your Ruby gems"
  homepage "https://gemfury.com"
  url "https://github.com/packtory/homebrew-tap/releases/download/v0.1.4.pre1/packtory-dev-0.1.4.tar.gz"
  sha256 "e99915a20c6a052f2a64d00fc24680f2d0668b49b2373dda7649f5596280dca8"
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
