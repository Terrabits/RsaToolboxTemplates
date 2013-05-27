

// %ProjectName%
#include "Settings.h"
#include "mainwindow.h"
#include "ui_mainwindow.h"

// Rsa
using namespace RsaToolbox;

// Qt
#include <QMessageBox>


MainWindow::MainWindow(Vna &vna, Key &key, QWidget *parent) : 
    QMainWindow(parent), ui(new Ui::MainWindow) {

    ui->setupUi(this);
    this->vna = &vna;
    this->key = &key;


}

MainWindow::~MainWindow()
{
    delete ui;
}
