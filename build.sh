#!/bin/sh

echo "*** Cleaning bin folder..."
if [ -e bin ]
then
  rm -rf bin
fi
mkdir bin

echo "*** Compiling BON class files..."
javac -d bin -sourcepath . immibis/beardedoctonemesis/gui/GuiMain.java

echo "*** Packing bon.jar..."
cd bin
jar cvfm bon.jar ../META-INF/MANIFEST.MF .
cd ..

echo "*** Build complete!"
