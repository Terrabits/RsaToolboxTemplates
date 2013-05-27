#-------------------------------------------------
# 
# Project  : %ProjectName%
# App name : %APPLICATION_NAME%
# 
# 
# RsaToolbox Application
# Template : Rsa App
#            Version 1.0.0.0
# 
# (C) Rohde & Schwarz America
# 
#-------------------------------------------------


QT      += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = %ProjectName%
TEMPLATE = app

SOURCES +=  main.cpp \
            mainwindow.cpp \
            ./RsaToolbox/General.cpp \
            ./RsaToolbox/Log.cpp \
            ./RsaToolbox/GenericBus.cpp \
            ./RsaToolbox/RsibBus.cpp \
            ./RsaToolbox/VisaBus.cpp \
            ./RsaToolbox/TraceData.cpp \
            ./RsaToolbox/NetworkData.cpp \
            ./RsaToolbox/Touchstone.cpp \
            ./RsaToolbox/Vna.cpp \

HEADERS  += Settings.h \
						mainwindow.h \
            ./RsaToolbox/rsib.h \
            ./RsaToolbox/visa.h \
            ./RsaToolbox/Definitions.h \
            ./RsaToolbox/General.h \
            ./RsaToolbox/Key.h \
            ./RsaToolbox/Log.h \
            ./RsaToolbox/GenericBus.h \
            ./RsaToolbox/RsibBus.h \
            ./RsaToolbox/VisaBus.h \
            ./RsaToolbox/TraceData.h \
            ./RsaToolbox/NetworkData.h \
            ./RsaToolbox/Touchstone.h \
            ./RsaToolbox/Vna.h
INCLUDEPATH += ./RsaToolbox/

FORMS    += mainwindow.ui

RESOURCES += Resources.qrc

OTHER_FILES += VS2010Resources.rc \
               DEBUG_LOGFILE.txt

DEFINES += SOURCE_DIR=\\\"$$PWD\\\"
CONFIG(debug, debug|release):DEFINES += LOCAL_LOG

win32: RC_FILE = VS2010Resources.rc
win32: LIBS += -L$$PWD/ -lRsaToolbox/rsib32
win32: QMAKE_CXXFLAGS += /D_CRT_SECURE_NO_WARNINGS
