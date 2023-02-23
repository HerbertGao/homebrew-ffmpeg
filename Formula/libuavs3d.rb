class Libuavs3d < Formula
  desc ""
  homepage ""
  url "https://github.com/HerbertGao/uavs3d/archive/refs/tags/1.2_1.tar.gz"
  sha256 "b050e0b093e472a495067820ccad5dbc4e4ed5ec4e80639c69def4954e7ca825"
  license ""

  depends_on "gawk" => :build
  depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    system "mkdir", "build/linux"
    cd "build/linux" do
      system "cmake", "-DCOMPILE_10BIT=1", "../.."
      system "make"

      lib.install "source/libuavs3d.a"
    end
  end
end