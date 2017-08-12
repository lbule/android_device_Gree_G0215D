① 这是什么？

格力手机2代 TWRP Device 用来编译格力2代的TWRP Recovery



② 如何编译？


1.同步好lineage13的源码（如何同步源码请自行搜索）


2.下载Twrp recovery源码，在lineage源码根目录下打开终端，运行 git clone https://github.com/omnirom/android_bootable_recovery.git -b android-7.1 "bootable/recovery-twrp"


3.下载busybox源码，在lineage源码根目录下打开终端，运行 git clone https://github.com/LineageOS/android_external_busybox.git -b cm-13.0 "external/busybox"


3.移动cryptfs_hw源码，在lineage源码根目录下打开终端，运行 mv vendor/qcom/opensource/cryptfs_hw device/qcom/common/cryptfs_hw


4.下载device，在lineage源码根目录下打开终端，运行git clone https://github.com/lbule/android_device_Gree_G0215D.git -b Twrp-6.0 "device/Gree/G0215D"


5.编译Rec，在lineage源码根目录下打开终端，运行 source build/envsetup.sh&&lunch lineage_G0215D-eng&&make recoveryimage -j8 


6.等待编译完成。


③ 如何刷入？


1.使手机进入Fastboot模式（关机状态下同时按住电源键，音量-键和指纹键，或者开机状态下，打开usb调试，输入adb reboot bootloader）

2.在lineage源码根目录下打开终端，运行 fastboot boot out/target/product/G0215D/recovery.img （此命令会使手机从刚才编译出来的recovery启动，如果有问题长按电源键强制重启即可回复，如果测试没问题就可以用下面的命令刷入了）

3.在lineage源码根目录下打开终端，运行 fastboot flash recovery out/target/product/G0215D/recovery.img  （此命令会会用刚才编译出来的recovery镜像覆盖手机的recovery分区）
