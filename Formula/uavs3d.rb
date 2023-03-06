class Uavs3d < Formula
  desc "uavs3d library"
  homepage "https://github.com/uavs3/uavs3d"
  url "https://github.com/HerbertGao/uavs3d/archive/refs/tags/1.2_1.tar.gz"
  sha256 "b050e0b093e472a495067820ccad5dbc4e4ed5ec4e80639c69def4954e7ca825"
  license ""

  depends_on "cmake" => :build
  depends_on "gawk" => :build

  def install
    system "mkdir", "build/linux"
    cd "build/linux" do
      system "cmake", "-DCMAKE_INSTALL_PREFIX=#{prefix}", "-DCOMPILE_10BIT=1", "../.."
      system "make"
      system "make", "install"
    end
  end
end
