#!/bin/sh

echo "----------------build-lang-string...-------------------"
../darwin-x86_64/bin/com.mining.app.code_gen.sh --lang-strings-build mipc-langs.txt
echo "----------------build-lang-string done.----------------"

app_type="IOS"
echo "---------[${app_type}] begin-------------------------------"
if [ 1 == 1 ]; then

  #set and check params
  dst_apps=(ChengMi)
  dst_app_names=(ChengMi)
  src_langs=(en zh)
  dst_langs=(en zh-Hans)
  if [ "${#dst_apps[@]}" != "${#dst_app_names[@]}" ]; then
    echo "err: ${app_type} dst_apps not match dst_app_names"
    exit 1
  fi
  if [ "${#src_langs[@]}" != "${#dst_langs[@]}" ]; then
    echo "err: ${app_type} src_langs not match dst_langs"
    exit 1
  fi

  #loop to save app langs
  app_index=0
  while [ "${app_index}" != "${#dst_apps[@]}" ]; do

    dst_app=${dst_apps[${app_index}]}
    dst_app_name=${dst_app_names[${app_index}]}
    echo "---------[${app_type}][${dst_app}][${dst_app_name}] begin------------"

    lang_index=0
    while [ "${lang_index}" != "${#src_langs[@]}" ]; do
      src_lang=${src_langs[${lang_index}]}
      dst_lang=${dst_langs[${lang_index}]}

      echo "---------[${app_type}][${dst_app}][${dst_app_name}][${src_lang}] begin--------"
      src_file=mipc-langs.txt.langs/ios.${src_lang}.Localizable.strings
      dst_dir=../${dst_app}/ChengMi/ChengMi/${dst_lang}.lproj/
      dst_file=${dst_dir}/Localizable.strings
      if [ ! -d "${dst_dir}" ]; then mkdir "${dst_dir}"; fi
      sed "s/ChengMi/${dst_app_name}/g" "${src_file}" > "${dst_file}"
      echo "---------[${app_type}][${dst_app}][${dst_app_name}][${src_lang}] end----------"

      let lang_index+=1
    done

    echo "---------[${app_type}][${dst_app}][${dst_app_name}] end--------------"

    let app_index+=1
  done
fi
echo "----------------save-ios-string done.------------------"

