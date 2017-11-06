echo "Cleaning up before build..."
make clean
rm -f fefoSheep.zip
echo "Building fefoSheep..."
make
echo "Packaging fefoSheep for release..."
mkdir apps
mkdir apps/fefoSheep
cp fefoSheep-wii.dol apps/fefoSheep/boot.dol
cp meta/meta.xml apps/fefoSheep/meta.xml
cp meta/icon.png apps/fefoSheep/icon.png
zip -r fefoSheep.zip apps/
echo "Cleaning up build files..."
rm -rf apps/
rm -rf build/
rm -f fefoSheep-wii.elf fefoSheep-wii.dol
echo "Build Complete! Release archive outputted to fefoSheep.zip"
