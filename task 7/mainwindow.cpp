#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QtQml/QQmlContext>
#include <QQuickItem>
#include <QSignalMapper>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    /* Calling C++ code from QML */
    ui->qmlwidget->rootContext()->setContextProperty("mainWidget", this);
    ui->qmlwidget->setSource(QUrl(QStringLiteral("qrc:/myQml.qml")));
    ui->qmlwidget->show();


    /* Calling QML code from C++ */
    /* How it works: you connect a button signal to a function in QML
     * The QML function calls a C++ function to get a Qt widget data [in this case: the QTextEdit widget]
     * so, you trigger a QML function, that requests its data from C++ widgets
     */
    auto obj = ui->qmlwidget->rootObject();
    QObject::connect(ui->qtBtn,SIGNAL(clicked()), obj, SLOT(setQmlText()));
}

MainWindow::~MainWindow()
{
    delete ui;
}

/* A function that's called from QML */
void MainWindow::printStringQt(QString s)
{
    ui->qtText->setText(s);
}

/* A function that's called from QML [to get data from Qt widgets] */
QString MainWindow::getUserText()
{
    return (ui->qtText->toPlainText());
}

