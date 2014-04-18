#ifndef MAINWINDOW_H
#define MAINWINDOW_H


// RsaToolbox
#include "Key.h"
#include "Vna.h"

// Qt
#include <QMainWindow>


namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT
    
public:
    explicit MainWindow(RsaToolbox::Vna &vna, RsaToolbox::Key &key, QWidget *parent = 0);
    ~MainWindow();
    
private:
    Ui::MainWindow *ui;
    RsaToolbox::Vna &vna;
    RsaToolbox::Key &key;
};


#endif // MAINWINDOW_H
