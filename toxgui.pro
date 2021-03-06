#-------------------------------------------------
#
# Project created by QtCreator 2014-06-22T14:07:35
#
#-------------------------------------------------

QT       += core gui multimedia multimediawidgets
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET    = toxgui
TEMPLATE  = app
FORMS    += widget.ui
CONFIG   += c++11

TRANSLATIONS = translations/fr.ts

RESOURCES += \
    res.qrc

INCLUDEPATH += libs/include
win32 {
    LIBS += libs/lib/libtoxav.a libs/lib/libopus.a libs/lib/libvpx.a libs/lib/libtoxcore.a -lws2_32 libs/lib/libsodium.a
} else {
    LIBS += -L$$PWD/libs/lib/ -ltoxcore -ltoxav -lsodium -lvpx
}

#### Static linux build
#LIBS += -Wl,-Bstatic -ltoxcore -ltoxav -lsodium -lvpx -lopus -lgstaudiodecoder -lgstcamerabin -lgstmediacapture \
#     -lgstmediaplayer -lqgsttools_p -lgstaudio-0.10 -lgstinterfaces-0.10 -lgstvideo-0.10 -lgstpbutils-0.10 \
#        -lgstapp-0.10 -lgstbase-0.10 -lgstreamer-0.10 -lgobject-2.0 -lgmodule-2.0 -lxml2 \
#         -lqtaudio_alsa -lasound -lqtmultimedia_m3u \
#     -lqtaccessiblewidgets -lqconnmanbearer -lqgenericbearer -lqnmbearer \
#      -lqxcb -lX11-xcb -lXi -lxcb-render-util -lxcb-glx -lxcb-render -ldbus-1 \
#    -lxcb -lxcb-image -lxcb-icccm -lxcb-sync -lxcb-xfixes -lxcb-shm -lxcb-randr -lxcb-shape \
#    -lxcb-keysyms -lxcb-xkb -lfontconfig -lfreetype -lXrender -lXext -lX11 \
#    -lmtdev -lqdds -lqicns -lqico -lqjp2 -lqmng -lqtga -lqtiff -lqwbmp -lqwebp \
#   -lpng -lz -licui18n -licuuc -licudata -lm -ldl -lgthread-2.0 \
#     -pthread -lglib-2.0 -lrt -lGL -lpthread -Wl,-Bdynamic
#QMAKE_CXXFLAGS += -Os -flto -static-libstdc++ -static-libgcc

HEADERS  += widget/form/addfriendform.h \
    widget/form/chatform.h \
    widget/form/groupchatform.h \
    widget/form/settingsform.h \
    widget/tool/chattextedit.h \
    widget/tool/copyableelidelabel.h \
    widget/tool/editablelabelwidget.h \
    widget/tool/elidelabel.h \
    widget/tool/esclineedit.h \
    widget/tool/friendrequestdialog.h \
    widget/filetransfertwidget.h \
    widget/friendwidget.h \
    widget/groupwidget.h \
    widget/widget.h \
    friend.h \
    group.h \
    grouplist.h \
    settings.h \
    core.h \
    friendlist.h \
    cdata.h \
    cstring.h \
    audiobuffer.h \
    widget/selfcamview.h \
    widget/videosurface.h \
    widget/camera.h \
    widget/netcamview.h \
    widget/tool/clickablelabel.h

SOURCES += \
    widget/form/addfriendform.cpp \
    widget/form/chatform.cpp \
    widget/form/groupchatform.cpp \
    widget/form/settingsform.cpp \
    widget/tool/chattextedit.cpp \
    widget/tool/copyableelidelabel.cpp \
    widget/tool/editablelabelwidget.cpp \
    widget/tool/elidelabel.cpp \
    widget/tool/esclineedit.cpp \
    widget/tool/friendrequestdialog.cpp \
    widget/filetransfertwidget.cpp \
    widget/friendwidget.cpp \
    widget/groupwidget.cpp \
    widget/widget.cpp \
    core.cpp \
    friend.cpp \
    friendlist.cpp \
    group.cpp \
    grouplist.cpp \
    main.cpp \
    settings.cpp \
    cdata.cpp \
    cstring.cpp \
    audiobuffer.cpp \
    widget/selfcamview.cpp \
    widget/videosurface.cpp \
    widget/camera.cpp \
    widget/netcamview.cpp \
    widget/tool/clickablelabel.cpp
