#ifndef SERVER_H
#define SERVER_H


#include <QObject>
#include <QTcpServer>
#include <QTcpSocket>

class Server : public QObject
{
    Q_OBJECT
public:
    explicit Server(QObject *parent = 0);

public slots:
    void slotStart();
    void slotNewConnection();
    void slotServerRead();
    void slotClientDisconnected();
    void slotClose();

private:
    QTcpServer* mTcpServer;
    QTcpSocket* mTcpSocket;
};

#endif // SERVER_H
