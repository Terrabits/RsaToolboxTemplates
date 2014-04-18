

// %ProjectName%
#include "Settings.h"
#include "mainwindow.h"
#include "ui_mainwindow.h"

// RsaToolbox
using namespace RsaToolbox;

// Qt
#include <QMessageBox>


MainWindow::MainWindow(Vna &vna, Key &key, QWidget *parent) : 
    vna(vna), key(key),
    QMainWindow(parent), ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    QString title = APP_NAME + " " + APP_VERSION;
    setWindowTitle(title);
    
    //
    // ...
    //
}

MainWindow::~MainWindow()
{
    delete ui;
}
