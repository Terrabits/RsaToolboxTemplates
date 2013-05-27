#ifndef SETTINGS_H
#define SETTINGS_H


// Rsa
#include "Definitions.h"
#include "General.h"


// Application settings
const char APP_NAME[] = "%APPLICATION_NAME%";
const char APP_VERSION[] = "1.0.0.0"; //http://semver.org/
const char APP_FOLDER[] = "%APP_FOLDER%";

#ifdef LOCAL_LOG
    const char LOG_PATH[] = SOURCE_DIR;
    const char LOG_FILENAME[] = "DEBUG_LOGFILE.txt";
#else
    const QString LOG_PATH = RsaToolbox::GetAppDataPath(APP_FOLDER);
    const char LOG_FILENAME[] = "%LOG_FILENAME%";
#endif

// Connection settings
const RsaToolbox::ConnectionType CONNECTION_TYPE = RsaToolbox::TCPIP_CONNECTION;
const char INSTRUMENT_ADDRESS[] = "127.0.0.1";
const unsigned int TIMEOUT_MS = 1000;

// Keys
const char EXAMPLE_KEY[] = "EXAMPLE"; // Place your keys here



#endif
