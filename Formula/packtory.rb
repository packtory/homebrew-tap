class Packtory < Formula
  desc "An easy to use system packaging tool for your Ruby gems"
  homepage "https://gemfury.com"
  url "https://github.com/packtory/homebrew-tap/releases/download/v0.1.5/packtory-0.1.5.tar.gz"
  sha256 "847efbee862199837805cb77a143e64c2d66e723be3243ecfcfc245198791f59"

  devel do
    url "https://github.com/packtory/homebrew-tap/releases/download/devel/packtory-0.1.5.tar.gz"
    sha256 "847efbee862199837805cb77a143e64c2d66e723be3243ecfcfc245198791f59"
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
