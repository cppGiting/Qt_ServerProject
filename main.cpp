#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "server.h"

class Object : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int staticProperty READ staticProperty)
public:
    Object() {
        setProperty("dynamicProperty", 1);
    }

    int staticProperty() const {
        return 0;
    }

    Q_INVOKABLE void printDynamicPropertyNames() const {
        qDebug() << dynamicPropertyNames();
    }
};

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated, &app, [url](QObject *obj, const QUrl &objUrl) { if (!obj && url == objUrl) QCoreApplication::exit(-1); }, Qt::QueuedConnection);

    engine.load(url);

    return app.exec();
}
