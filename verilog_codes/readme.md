for ubuntu:
    sudo apt-get install iverilog gtkwave

for macos:
    brew install icarus-verilog
    brew install desktop-file-utils shared-mime-info       \
             gobject-introspection gtk-mac-integration \
             meson ninja pkg-config gtk+3 gtk4
    git clone "https://github.com/gtkwave/gtkwave.git"
    cd gtkwave
    meson setup build && cd build && meson install

for Windows:
    https://bleyer.org/icarus/
    https://gtkwave.sourceforge.net


