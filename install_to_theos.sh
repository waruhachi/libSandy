set -e

make clean
make FINALPACKAGE=1
cp -Rv "./.theos/obj/libsandy.dylib" "$THEOS/lib"

make clean
make FINALPACKAGE=1 THEOS_PACKAGE_SCHEME=rootless
cp -Rv "./.theos/obj/libsandy.dylib" "$THEOS/lib/iphone/rootless"

make clean
make FINALPACKAGE=1 THEOS_PACKAGE_SCHEME=roothide
cp -Rv "./.theos/obj/libsandy.dylib" "$THEOS/lib/iphone/roothide"

cp -v "./libSandy.h" "$THEOS/include"

echo "Successfully installed libSandy"