#include "mainwindow.h"

#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;
    w.setWindowTitle("Task 7 - C++ & QML Communication");
    w.show();
    return a.exec();
}
