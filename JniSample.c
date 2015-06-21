#include <stdio.h>
#include "JniSample.h"
#include <jni.h>


JNIEXPORT jint JNICALL Java_JniSample_sayHello
  (JNIEnv *env, jobject javaObject)
 {
 	printf("\n Hello Form C \n");
 	return 0;
 }


