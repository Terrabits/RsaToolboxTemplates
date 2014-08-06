#-------------------------------------------------
# 
# Project  : %ProjectName%
# App name : %APPLICATION_NAME%
# 
# 
# RsaToolbox
# Template : Rsa Vna App
#            Version 2.0.0
# 
# (C) Rohde & Schwarz America
# 
#-------------------------------------------------


QT      += core gui
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
TARGET = %ProjectName%
TEMPLATE = app

include(RsaToolbox/rsatoolbox.pri)
#include(RsaToolbox/QuaZip/quazip.pri)

SOURCES +=  main.cpp \
            MeasureThread.cpp \
            mainwindow.cpp
HEADERS  += Settings.h \
            MeasureThread.h\
            mainwindow.h
INCLUDEPATH += $$PWD
LIBS += -L$$PWD/
FORMS    += mainwindow.ui
RESOURCES += Resources.qrc
OTHER_FILES += DEBUG_LOGFILE.txt
win32: RC_FILE = VS2010Resources.rc

DEFINES += SOURCE_DIR=\\\"$$PWD\\\"
CONFIG(debug, debug|release):DEFINES += DEBUG_MODE
CONFIG(release, debug|release):DEFINES+=QT_NO_DEBUG_OUTPUT

