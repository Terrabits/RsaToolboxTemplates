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

include(RsaToolbox/base.pri)
include(RsaToolbox/Bus/Rsib/rsib.pri)
include(RsaToolbox/Bus/Visa/visa.pri)
include(RsaToolbox/Instruments/Vna/vna.pri)
include(QCustomPlot/qcustomplot.pri)

SOURCES +=  main.cpp \
            MeasureThread.cpp \
            mainwindow.cpp

HEADERS  += Settings.h \
            MeasureThread.h\
            mainwindow.h

FORMS    += mainwindow.ui

RESOURCES += Resources.qrc

OTHER_FILES += VS2010Resources.rc \
               DEBUG_LOGFILE.txt

DEFINES += SOURCE_DIR=\\\"$$PWD\\\"
CONFIG(debug, debug|release):DEFINES += DEBUG_MODE

win32: RC_FILE = VS2010Resources.rc
win32: LIBS += -L$$PWD/
