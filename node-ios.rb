class NodeIOS < Formula
  desc "Node.JS 12 built for iOS"
  homepage "https://github.com/shawwn/node/tree/ios-release"
  head "https://github.com/shawwn/node.git", :branch => "ios-release"

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
