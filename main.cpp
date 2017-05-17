#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "guimanager.h"
#include <QQmlContext>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    guiManager guiManagerController;
    QQmlApplicationEngine engine;

    QQmlContext *ctx = engine.rootContext();
    ctx->setContextProperty("guiManager",&guiManagerController);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
