
echo "The command was $1"

if [ "$1" == "run" ]; then
	javac JniSample.java
	javah JniSample
	gcc -I/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.10.sdk/System/Library/Frameworks/JavaVM.framework/Versions/A/Headers -o libJniSample.dylib -shared JniSample.c
	java JniSample	
else
	rm  -rf ./libJniSample.dylib ./JniSample.h ./JniSample.class
fi
