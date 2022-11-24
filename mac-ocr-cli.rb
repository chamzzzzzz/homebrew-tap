# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class MacOcrCli < Formula
  desc "macOS OCR CLI"
  homepage ""
  url "https://github.com/chamzzzzzz/mac-ocr-cli/archive/refs/tags/v1.0.1.zip"
  sha256 "260c53738c25c1d05148c94d937caa9df84c71e1c60a8a7efbaa1bd251d381d2"
  license ""

  depends_on :xcode => :build

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/mac-ocr-cli"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test mac-ocr-cli`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/mac-ocr-cli"
  end
end
