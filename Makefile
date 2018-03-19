#############################################################################
# Makefile for building: qt_osd_X11
# Generated by qmake (2.01a) (Qt 4.8.6) on: Mon Mar 19 15:50:48 2018
# Project:  qt_osd_X11.pro
# Template: app
# Command: /usr/bin/qmake-qt4 -o Makefile qt_osd_X11.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_WEBKIT -DQT_NO_DEBUG -DQT_DECLARATIVE_LIB -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -m64 -pipe -g -O2 -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -m64 -pipe -g -O2 -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/usr/share/qt4/mkspecs/linux-g++-64 -I. -I/usr/include/qt4/QtCore -I/usr/include/qt4/QtGui -I/usr/include/qt4/QtDeclarative -I/usr/include/qt4 -I. -Isrc -I. -I.
LINK          = g++
LFLAGS        = -m64 -Wl,-O1
LIBS          = $(SUBLIBS)  -L/usr/lib/x86_64-linux-gnu -lavformat -lavcodec -lavutil -lavfilter -lQtDeclarative -lQtGui -lQtCore -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/bin/qmake-qt4
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = src/Button.cpp \
		src/main.cpp \
		src/mainwindow.cpp \
		src/qbattery.cpp \
		src/qgximage.cpp \
		src/qv4l2.cpp \
		src/mainmenu.cpp \
		src/backplay.cpp moc_Button.cpp \
		moc_mainwindow.cpp \
		moc_qbattery.cpp \
		moc_qgximage.cpp \
		moc_qv4l2.cpp \
		moc_mainmenu.cpp \
		moc_backplay.cpp \
		qrc_qt_osd_res.cpp
OBJECTS       = Button.o \
		main.o \
		mainwindow.o \
		qbattery.o \
		qgximage.o \
		qv4l2.o \
		mainmenu.o \
		backplay.o \
		moc_Button.o \
		moc_mainwindow.o \
		moc_qbattery.o \
		moc_qgximage.o \
		moc_qv4l2.o \
		moc_mainmenu.o \
		moc_backplay.o \
		qrc_qt_osd_res.o
DIST          = /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/modules/qt_phonon.pri \
		/usr/share/qt4/mkspecs/modules/qt_webkit.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/release.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/shared.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		qt_osd_X11.pro
QMAKE_TARGET  = qt_osd_X11
DESTDIR       = 
TARGET        = qt_osd_X11

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET): ui_mainwindow.h $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: qt_osd_X11.pro  /usr/share/qt4/mkspecs/linux-g++-64/qmake.conf /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/modules/qt_phonon.pri \
		/usr/share/qt4/mkspecs/modules/qt_webkit.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/release.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/shared.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		/usr/lib/x86_64-linux-gnu/libQtDeclarative.prl \
		/usr/lib/x86_64-linux-gnu/libQtGui.prl \
		/usr/lib/x86_64-linux-gnu/libQtCore.prl
	$(QMAKE) -o Makefile qt_osd_X11.pro
/usr/share/qt4/mkspecs/common/unix.conf:
/usr/share/qt4/mkspecs/common/linux.conf:
/usr/share/qt4/mkspecs/common/gcc-base.conf:
/usr/share/qt4/mkspecs/common/gcc-base-unix.conf:
/usr/share/qt4/mkspecs/common/g++-base.conf:
/usr/share/qt4/mkspecs/common/g++-unix.conf:
/usr/share/qt4/mkspecs/qconfig.pri:
/usr/share/qt4/mkspecs/modules/qt_phonon.pri:
/usr/share/qt4/mkspecs/modules/qt_webkit.pri:
/usr/share/qt4/mkspecs/features/qt_functions.prf:
/usr/share/qt4/mkspecs/features/qt_config.prf:
/usr/share/qt4/mkspecs/features/exclusive_builds.prf:
/usr/share/qt4/mkspecs/features/default_pre.prf:
/usr/share/qt4/mkspecs/features/release.prf:
/usr/share/qt4/mkspecs/features/default_post.prf:
/usr/share/qt4/mkspecs/features/shared.prf:
/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf:
/usr/share/qt4/mkspecs/features/warn_on.prf:
/usr/share/qt4/mkspecs/features/qt.prf:
/usr/share/qt4/mkspecs/features/unix/thread.prf:
/usr/share/qt4/mkspecs/features/moc.prf:
/usr/share/qt4/mkspecs/features/resources.prf:
/usr/share/qt4/mkspecs/features/uic.prf:
/usr/share/qt4/mkspecs/features/yacc.prf:
/usr/share/qt4/mkspecs/features/lex.prf:
/usr/share/qt4/mkspecs/features/include_source_dir.prf:
/usr/lib/x86_64-linux-gnu/libQtDeclarative.prl:
/usr/lib/x86_64-linux-gnu/libQtGui.prl:
/usr/lib/x86_64-linux-gnu/libQtCore.prl:
qmake:  FORCE
	@$(QMAKE) -o Makefile qt_osd_X11.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/qt_osd_X111.0.0 || $(MKDIR) .tmp/qt_osd_X111.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/qt_osd_X111.0.0/ && $(COPY_FILE) --parents src/Button.h src/mainwindow.h src/qbattery.h src/qgximage.h src/qt.h src/qv4l2.h src/mainmenu.h src/backplay.h .tmp/qt_osd_X111.0.0/ && $(COPY_FILE) --parents src/qt_osd_res.qrc .tmp/qt_osd_X111.0.0/ && $(COPY_FILE) --parents src/Button.cpp src/main.cpp src/mainwindow.cpp src/qbattery.cpp src/qgximage.cpp src/qv4l2.cpp src/mainmenu.cpp src/backplay.cpp .tmp/qt_osd_X111.0.0/ && $(COPY_FILE) --parents src/mainwindow.ui .tmp/qt_osd_X111.0.0/ && (cd `dirname .tmp/qt_osd_X111.0.0` && $(TAR) qt_osd_X111.0.0.tar qt_osd_X111.0.0 && $(COMPRESS) qt_osd_X111.0.0.tar) && $(MOVE) `dirname .tmp/qt_osd_X111.0.0`/qt_osd_X111.0.0.tar.gz . && $(DEL_FILE) -r .tmp/qt_osd_X111.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: moc_Button.cpp moc_mainwindow.cpp moc_qbattery.cpp moc_qgximage.cpp moc_qv4l2.cpp moc_mainmenu.cpp moc_backplay.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_Button.cpp moc_mainwindow.cpp moc_qbattery.cpp moc_qgximage.cpp moc_qv4l2.cpp moc_mainmenu.cpp moc_backplay.cpp
moc_Button.cpp: src/Button.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) src/Button.h -o moc_Button.cpp

moc_mainwindow.cpp: src/qv4l2.h \
		src/qgximage.h \
		src/Button.h \
		src/mainmenu.h \
		src/mainwindow.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) src/mainwindow.h -o moc_mainwindow.cpp

moc_qbattery.cpp: src/qt.h \
		src/qbattery.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) src/qbattery.h -o moc_qbattery.cpp

moc_qgximage.cpp: src/qgximage.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) src/qgximage.h -o moc_qgximage.cpp

moc_qv4l2.cpp: src/qgximage.h \
		src/qv4l2.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) src/qv4l2.h -o moc_qv4l2.cpp

moc_mainmenu.cpp: src/mainmenu.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) src/mainmenu.h -o moc_mainmenu.cpp

moc_backplay.cpp: src/backplay.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) src/backplay.h -o moc_backplay.cpp

compiler_rcc_make_all: qrc_qt_osd_res.cpp
compiler_rcc_clean:
	-$(DEL_FILE) qrc_qt_osd_res.cpp
qrc_qt_osd_res.cpp: src/qt_osd_res.qrc \
		src/images/logo.png \
		src/images/recording.jpg \
		src/images/capt1.png \
		src/images/capt2.png \
		src/images/capt3.png \
		src/images/capt4.png \
		src/images/capt5.png \
		src/images/start_r.png \
		src/images/stop_r.png
	/usr/lib/x86_64-linux-gnu/qt4/bin/rcc -name qt_osd_res src/qt_osd_res.qrc -o qrc_qt_osd_res.cpp

compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all: ui_mainwindow.h
compiler_uic_clean:
	-$(DEL_FILE) ui_mainwindow.h
ui_mainwindow.h: src/mainwindow.ui \
		src/qgximage.h \
		src/qbattery.h \
		src/qt.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/uic src/mainwindow.ui -o ui_mainwindow.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_rcc_clean compiler_uic_clean 

####### Compile

Button.o: src/Button.cpp src/Button.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Button.o src/Button.cpp

main.o: src/main.cpp src/mainwindow.h \
		src/qv4l2.h \
		src/qgximage.h \
		src/Button.h \
		src/mainmenu.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o src/main.cpp

mainwindow.o: src/mainwindow.cpp src/mainwindow.h \
		src/qv4l2.h \
		src/qgximage.h \
		src/Button.h \
		src/mainmenu.h \
		ui_mainwindow.h \
		src/qbattery.h \
		src/qt.h \
		src/backplay.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mainwindow.o src/mainwindow.cpp

qbattery.o: src/qbattery.cpp src/qbattery.h \
		src/qt.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o qbattery.o src/qbattery.cpp

qgximage.o: src/qgximage.cpp src/qgximage.h \
		src/qv4l2.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o qgximage.o src/qgximage.cpp

qv4l2.o: src/qv4l2.cpp src/qv4l2.h \
		src/qgximage.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o qv4l2.o src/qv4l2.cpp

mainmenu.o: src/mainmenu.cpp src/mainmenu.h \
		src/backplay.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mainmenu.o src/mainmenu.cpp

backplay.o: src/backplay.cpp src/backplay.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o backplay.o src/backplay.cpp

moc_Button.o: moc_Button.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_Button.o moc_Button.cpp

moc_mainwindow.o: moc_mainwindow.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_mainwindow.o moc_mainwindow.cpp

moc_qbattery.o: moc_qbattery.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_qbattery.o moc_qbattery.cpp

moc_qgximage.o: moc_qgximage.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_qgximage.o moc_qgximage.cpp

moc_qv4l2.o: moc_qv4l2.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_qv4l2.o moc_qv4l2.cpp

moc_mainmenu.o: moc_mainmenu.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_mainmenu.o moc_mainmenu.cpp

moc_backplay.o: moc_backplay.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_backplay.o moc_backplay.cpp

qrc_qt_osd_res.o: qrc_qt_osd_res.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o qrc_qt_osd_res.o qrc_qt_osd_res.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:
