#include "interactionclass.h"
#include <QDebug>

InteractionClass::InteractionClass(QObject *parent)
    : QObject{parent}, m_visibleWindow(100)
{

}

void InteractionClass::setVisibleWindow(int newVisibleWindow)
{
    if(10 > newVisibleWindow || newVisibleWindow > 100){
        newVisibleWindow = 100;
    }
    m_visibleWindow = newVisibleWindow;
}

int InteractionClass::getVisibleWindow()
{
    return m_visibleWindow;
}
