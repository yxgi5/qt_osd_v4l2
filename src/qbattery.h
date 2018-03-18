#ifndef QBATTERY_H
#define QBATTERY_H

#include <QWidget>
#include "qt.h"

class QBattery : public QWidget
{

Q_OBJECT
public:
    explicit QBattery(QWidget *parent = 0);
    int   m_value;

public Q_SLOTS:
    void setValue(int value);
    void addValue();
    void subValue();

protected:
    void paintEvent(QPaintEvent *);
    QSize sizeHint() const
    {
        return QSize(200,120);
    }


private:
    void drawFrame(QPainter* painter);
    void drawBattery(QPainter* painter);
    void drawNum(QPainter* painter);
private:
    qreal   m_headWidth;
    QRectF  m_batteryRect;
	
private Q_SLOTS:

Q_SIGNALS:
    void valueChanged(int value);

};

#endif // QBATTERY_H
