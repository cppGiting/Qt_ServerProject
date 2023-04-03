#ifndef INTERACTIONCLASS_H
#define INTERACTIONCLASS_H

#include <QObject>
#include <QDebug>

#include "server.h"

class InteractionClass : public QObject
{
    Q_OBJECT
public:
    explicit InteractionClass(QObject *parent = nullptr);
public slots:
    int getVisibleWindow();
    void setVisibleWindow(int);
    void setCheckBoxPress(bool);
    bool getCheckBoxPress();
private:
    int m_visibleWindow;
    bool m_checkBoxPress;
    Server* server;
};

#endif // INTERACTIONCLASS_H
