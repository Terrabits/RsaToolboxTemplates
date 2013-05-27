

// %ProjectName%
#include "Settings.h"
#include "mainwindow.h"

// Qt
#include <QApplication>
#include <QMessageBox>

// Rsa
#include "Definitions.h"
#include "General.h"
#include "Vna.h"
#include "Key.h"
using namespace RsaToolbox;


int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

    // Connect to VNA
    Vna vna(CONNECTION_TYPE,
                INSTRUMENT_ADDRESS,
                TIMEOUT_MS,
                LOG_PATH,
                LOG_FILENAME,
                APP_NAME,
                APP_VERSION);

    // Get key instance
    Key key(APP_FOLDER);

    // Check connection and instrument make/model
    if (vna.isConnected() == false) {
        QString error_message(QString("Instrument could not be found via ")
                            + ToString(CONNECTION_TYPE)
                            + " at address "
                            + QString(INSTRUMENT_ADDRESS));
        QMessageBox::critical(NULL,
                              "%APPLICATION_NAME%",
                              error_message);
        vna.Print(error_message + "\n");
        return(0);
    }
    else if (vna.GetModel() == UNKNOWN_MODEL) {
        QString error_message(QString("VNA not recognized.\n")
                            + "Please use %APPLICATION_NAME% with a Rohde & Schwarz instrument");
        QMessageBox::critical(NULL,
                              "%APPLICATION_NAME%",
                              error_message);
        vna.Print(error_message + "\n");
        return(0);
    }

    // Create, display window
    MainWindow w(vna, key);
    w.show();
    return a.exec();
}
