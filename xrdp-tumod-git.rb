class XrdpGit < Formula
  desc "an open source RDP server (team unstablers mod; git devel)"
  homepage "https://www.xrdp.org"
  license "Apache-2.0"
  version "git-tumod-devel"

  head do
    url "https://github.com/team-unstablers/xrdp-tumod.git", branch: "macos-tumod"
  end

  depends_on xcode: ["12.0", :build]

  depends_on "automake" => :build
  depends_on "autoconf" => :build
  depends_on "libtool" => :build
  depends_on "nasm" => :build
  depends_on "pkg-config" => :build

  depends_on "openssl"

  # depends_on "xquartz"
  depends_on "libx11" 
  depends_on "libxfixes" 
  depends_on "libxrandr" 

  def install
    system "./bootstrap"
    system "./configure", "--enable-strict-locations", "--enable-ulalaca", *std_configure_args, "--sysconfdir=" + pkgetc
    system "make", "-j8"
    system "make", "install"
  end

  def caveats
    <<~EOS
      maybe you can not log into X11 (or xrdp-sesman powered) session until copying #{pkgetc}/pam.d/xrdp-sesman to /etc/pam.d manually.
    EOS
  end

  test do
    system "true"
  end
end
