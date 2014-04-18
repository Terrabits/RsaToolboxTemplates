

// %ProjectName%
#include "Settings.h"
#include "mainwindow.h"

// RsaToolbox
#include "Log.h"
#include "Vna.h"
#include "Key.h"
using namespace RsaToolbox;

// Qt
#include <QApplication>
#include <QMessageBox>


int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    
    // Create log
    Log log(LOG_PATH, LOG_FILENAME, APP_NAME, APP_VERSION);
    log.printApplicationHeader();
    
    // Create Key(s)
    Key key(KEY_PATH);
    
    // Create, display window
    MainWindow w(log, key);
    w.setWindowFlags(w.windowFlags() | Qt::MSWindowsFixedSizeDialogHint);
    w.show();
    return a.exec();
}

