######################################################################
# Automatically generated by qmake (2.01a) ?? 9? 14 14:36:34 2017
######################################################################

TEMPLATE = app
TARGET = 
DEPENDPATH  += . src
INCLUDEPATH += . src

# Input

HEADERS +=  src/Button.h \
            src/jpegenc.h \
            src/mainwindow.h \
            src/qbattery.h \
            src/qgximage.h \
            src/qt.h \
            src/qv4l2.h \
            src/mainmenu.h \
            src/backplay.h \
            src/MP4Encoder.h \
            src/dlgf1.h \
            src/dlgshowdev.h \
            src/dlgshowdev.h \
            src/dlglanguage.h \
            src/dlgtakepicnum.h \
            src/dlgpicorvid.h \
            src/dlgpicfile.h \
            src/dlgvidfile.h \
            src/dlgshowpic.h \
            src/dlgshowvid.h \
            src/dlgstandby.h \
            src/dlgoff.h \
            src/dlgvidsavetime.h \
            src/dlgtvmode.h \
            src/dlgrecovery.h \
            src/dlgbackground.h \
            src/dlgcolor.h \
            src/dlgtime.h

FORMS   +=  src/mainwindow.ui \
            src/dlgf1.ui \
            src/dlgshowdev.ui \
            src/dlglanguage.ui \
            src/dlgtakepicnum.ui \
            src/dlgpicorvid.ui \
            src/dlgpicfile.ui \
            src/dlgvidfile.ui \
            src/dlgshowpic.ui \
            src/dlgshowvid.ui \
            src/dlgstandby.ui \
            src/dlgoff.ui \
            src/dlgvidsavetime.ui \
            src/dlgtvmode.ui \
            src/dlgrecovery.ui \
            src/dlgbackground.ui \
            src/dlgcolor.ui \
            src/dlgtime.ui

SOURCES +=  src/Button.cpp \
            src/jpegenc.c \
            src/main.cpp \
            src/mainwindow.cpp \
            src/qbattery.cpp \
            src/qgximage.cpp \
            src/qv4l2.cpp \
            src/mainmenu.cpp \
            src/backplay.cpp \
            src/MP4Encoder.c \
            src/dlgf1.cpp \
            src/dlgshowdev.cpp \
            src/dlglanguage.cpp \
            src/dlgtakepicnum.cpp \
            src/dlgpicorvid.cpp \
            src/dlgpicfile.cpp \
            src/dlgvidfile.cpp \
            src/dlgshowpic.cpp \
            src/dlgshowvid.cpp \
            src/dlgstandby.cpp \
            src/dlgoff.cpp \
            src/dlgvidsavetime.cpp \
            src/dlgtvmode.cpp \
            src/dlgrecovery.cpp \
            src/dlgbackground.cpp \
            src/dlgcolor.cpp \
            src/dlgtime.cpp

#! [0] #! [1]
TRANSLATIONS = src/translations/QtOsdArm_de.ts \
               src/translations/QtOsdArm_fr.ts \
               src/translations/QtOsdArm_en.ts \
               src/translations/QtOsdArm_cn.ts
#! [1]


QTPLUGIN += qjpeg

RESOURCES +=src/qt_osd_res.qrc

QT += declarative