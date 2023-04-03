#ifndef INTERACTIONCLASS_H
#define INTERACTIONCLASS_H

#include <QObject>

class InteractionClass : public QObject
{
    Q_OBJECT
public:
    explicit InteractionClass(QObject *parent = nullptr);
public slots:
    int getVisibleWindow();
    void setVisibleWindow(int);

private:
    int m_visibleWindow;

};

#endif // INTERACTIONCLASS_H
