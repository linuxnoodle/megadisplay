pkgname=megadisplay-git
pkgver=0.1.0
pkgrel=1
pkgdesc="Turn an Android tablet into a secondary monitor + pentablet over USB (Wayland/Hyprland)"
arch=('x86_64')
url="https://github.com/qed/megadisplay"
license=('MIT')
depends=('wayland' 'gstreamer' 'gst-plugins-base' 'gst-plugins-bad' 'gstreamer-vaapi')
makedepends=('cargo' 'git')
provides=('megadisplay')
conflicts=('megadisplay')
source=()

build() {
  cd "$srcdir/.."
  cargo build --release --locked
}

package() {
  cd "$srcdir/.."
  make PREFIX=/usr DESTDIR="$pkgdir/" install
}
