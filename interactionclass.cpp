#include "interactionclass.h"

InteractionClass::InteractionClass(QObject *parent)
    : QObject{parent}, m_visibleWindow(50), m_checkBoxPress(false)
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

bool InteractionClass::getCheckBoxPress()
{
    return m_checkBoxPress;
}

void InteractionClass::setCheckBoxPress(bool newCheckBoxPress)
{
    server = new Server();
    m_checkBoxPress = newCheckBoxPress;
    if(m_checkBoxPress){
        server->slotStart();
    } else {
        server->slotClose();
    }
}
