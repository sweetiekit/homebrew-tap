class NodeIOSSimulator < Formula
  desc "Node.JS 12 built for iOS Simulator"
  homepage "https://github.com/shawwn/node/tree/ios-simulator-release"
  head "https://github.com/shawwn/node.git", :branch => "ios-simulator-release"

  bottle do
    cellar :any
  end

  depends_on "pkg-config" => :build
  depends_on "python@2" => :build
  depends_on "icu4c"

  def install
    system "./build-ios.sh"
  end
end
