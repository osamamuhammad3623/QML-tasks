#include "testclass.h"
#include "QDebug"

testClass::testClass(QObject *parent) : QObject(parent)
{

}

void testClass::printText(QString n)
{
    qDebug() << n;
}
