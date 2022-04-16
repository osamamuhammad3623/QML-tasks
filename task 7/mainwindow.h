#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

    Q_INVOKABLE void printStringQt(QString s); /* QML calls C++ process */

    Q_INVOKABLE QString getUserText(); /* C++ calls QML process */

private:
    Ui::MainWindow *ui;

};
#endif // MAINWINDOW_H
