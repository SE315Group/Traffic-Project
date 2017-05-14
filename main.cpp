#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "road.h"

int main(int argc, char *argv[])
{

    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    road callRoad;
    QVector<road*> roadVector;
    roadVector.push_back(new road());
    QQmlContext *ctx = engine.rootContext();
    ctx->setContextProperty("toCallRoad",&callRoad);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));


    return app.exec();
}

