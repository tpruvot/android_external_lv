Android lv command line utility
===============================

`lv` is similar to `less`, `pager` and `iconv` tools.

`lv` is a powerful multilingual file viewer. Apparently, lv looks like `less`, a representative file viewer on UNIX as you know, so UNIX people (and less people on other OSs) don't have to learn a burdensome new interface.

`lv` can be used on MSDOS ANSI terminals and almost all UNIX platforms.

Build and push to the device in an android repo (like CyanogenMod):

    git clone https://github.com/tpruvot/android_external_lv external/lv
    cd external/lv
    mmp

Display a file to the UTF-8 terminal :

    lv -Ou8 hello.sample

Note, to allow colors, export the '-c' parameter in LV env variable :

    export LV='-c -Ou8'

Adapted for bionic by tpruvot@github

Visit [Homepage](http://www.ff.iij4u.or.jp/~nrt/), [GitHub](https://github.com/tpruvot/android_external_lv)

