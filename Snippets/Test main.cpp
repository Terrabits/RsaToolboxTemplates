

// RsaToolbox
#include "TestRunner.h"

// Tests
//#include "Test1.h"
//#include "Test2.h"

// Qt
#include <QDebug>


int main() {
    TestRunner testRunner;
    // testRunner.addTest(new Test1);
    // testRunner.addTest(new Test2);
    // ...

    qDebug() << "Global result: " << (testRunner.runTests() ? "PASS" : "FAIL");
    return 0;
}
