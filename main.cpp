#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "line.h"


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);


    QQmlApplicationEngine engine;
    line lineObject;
    QQmlContext *ctx = engine.rootContext();
    ctx->setContextProperty("toLineObject",&lineObject);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
