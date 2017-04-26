#!/bin/sh

pwd="`dirname ${0}`"
if [ "`uname|grep -i darwin`" == "" ]; then
  export target_os=linux
  export target_arch=x86
else
  export target_os=darwin
  export target_arch=x86_64
  export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:./:../:~/project/src/platforms/$target_os-$target_arch/lib:../lib
fi
${pwd}/com.mining.app.code_gen $1 $2
