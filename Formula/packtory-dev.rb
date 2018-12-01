class PacktoryDev < Formula
  desc "An easy to use system packaging tool for your Ruby gems"
  homepage "https://gemfury.com"
  url "https://github.com/packtory/homebrew-tap/releases/download/dev/packtory-dev-0.1.4.tar.gz"
  sha256 "e51e45f4d0d8bd125a96eb73058507c83f169b81d5340dbdd7c4971b5f8bdbbf"
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
