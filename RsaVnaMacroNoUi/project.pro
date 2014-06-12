#-------------------------------------------------
# 
# Project  : %ProjectName%
# App name : %APPLICATION_NAME%
# 
# 
# RsaToolbox
# Template : Rsa Vna Macro Without Ui
#            Version 2.0.0
# 
# (C) Rohde & Schwarz America
# 
#-------------------------------------------------


QT      += core
TARGET = %ProjectName%
TEMPLATE = app

include(RsaToolbox/rsatoolbox.pri)
include(RsaToolbox/QuaZip/quazip.pri)

SOURCES +=  main.cpp
HEADERS  += Settings.h
INCLUDEPATH += $$PWD
RESOURCES += Resources.qrc
win32: RC_FILE = VS2010Resources.rc
OTHER_FILES += DEBUG_LOGFILE.txt

CONFIG(release, debug|release):DEFINES+=QT_NO_DEBUG_OUTPUT
DEFINES += SOURCE_DIR=\\\"$$PWD\\\"
CONFIG(debug, debug|release):DEFINES+=DEBUG_MODE
win32: LIBS += -L$$PWD/