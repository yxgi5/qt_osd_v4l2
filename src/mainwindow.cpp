#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QtGui>
#include <QMouseEvent>
#include <QKeyEvent>
#include <iostream>
#include "qbattery.h"

QObject * dstWnd;

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    // pc版本运行位置
    setGeometry(QRect(100,100,640,480));

    // 隐藏标题栏
    //setWindowFlags(Qt::FramelessWindowHint);

    // 设置窗体背景
    setAutoFillBackground(true);

    QPalette  palette;
    //palette.setColor(QPalette::Background, QColor(0x00,0xff,0x00,0x00));
    palette.setColor(QPalette::Background, QColor(53,73,123));
    //palette.setColor(QPalette::Background, Qt::darkGray);
    setPalette(palette);

    // 设置窗体透明，需要注释掉setAutoFillBackground(true);
    //this->setAttribute(Qt::WA_TranslucentBackground, true);

    // 窗体透明控件不透明，写在窗体构造函数里
//    QPalette pal = palette();
//    pal.setColor(QPalette::Background, QColor(0x00,0xff,0x00,0x00));
//    setPalette(pal);

    ui->setupUi(this);

    ui->label->setText(tr(""));

    dstWnd = ui->label;

//    ui->pushButton->setShortcut(Qt::Key_Enter);
//    ui->pushButton->setFocusPolicy(Qt::NoFocus);
//    ui->pushButton_2->setFocusPolicy(Qt::NoFocus);

//    logoLabel = new QLabel(this);
//    logoLabel->setPixmap(QPixmap(":/images/logo.png"));
//    logoLabel->setGeometry(QRect(480,10,logoLabel->pixmap()->width(),logoLabel->pixmap()->height()));
//    logoLabel->setScaledContents(true);
//    logoLabel->setAlignment(Qt::AlignLeft | Qt::AlignTop);

//    connect(ui->battery, SIGNAL(valueChanged(int)), ui->progressBar, SLOT(setValue(int)));

    ui->battery->setValue(50);

    current_time = QDateTime::currentDateTime();
    //current_time_str = current_time.toString("yyyy-MM-dd hh:mm:ss ddd");
    current_time_str = current_time.toString("yyyy-MM-dd hh:mm:ss");
    qDebug() << current_time_str << "-=-=-=-=-=-=-=-";

    QFont font("Arial",12,QFont::Bold,false);
//    ui->label_2->setText(current_time_str);
    ui->label_2->setFont(font);
    QPalette pe;
    pe.setColor(QPalette::WindowText,Qt::white);
    ui->label_2->setPalette(pe);
    ui->label_2->setText(current_time_str);
    //ui->label_2->set
    //ui->label_2->setText("<h2><i>Hello</i> ""<font color=white>Qt!</font></h2>");

    updateRTC_timer=new QTimer(this);
    updateRTC_timer->setInterval(50);
    connect(updateRTC_timer,SIGNAL(timeout()),this,SLOT(UpdateRTC()));
    updateRTC_timer->start();

//    ui->label->move(48,48);
    //ui->label->resize(640, 480);
    //ui->label->resize(400, 400);
//    ui->label->resize(384, 384);

//    ui->label->setMask(QRect(0,0,384,384));
    //this->setWindowOpacity(0);

    capt_btn=new Button(this);
    capt_btn->setButtonPicture(QPixmap(":/images/capt1.png"));
    capt_btn->setPressPicture(QPixmap(":/images/capt2.png"));
    capt_btn->setReleasePicture(QPixmap(":/images/capt4.png"));
    capt_btn->setEnterPicture(QPixmap(":/images/capt3.png"));
    capt_btn->setLeavePicture(QPixmap(":/images/capt5.png"));
    //capt_btn->setGeometry(QRect(470,170,71,71));
    capt_btn->set_X_Y_width_height(470,170,71,71);


    v4l2thread.capture_lock=false;
    v4l2thread.start();
    std::cout << "thread 1 running" << std::endl;
    //connect(ui->pushButton, SIGNAL(clicked()), this, SLOT(call_testdialog()));
//    connect(ui->pushButton, SIGNAL(clicked()), ui->battery, SLOT(addValue()));
//    connect(ui->pushButton_2, SIGNAL(clicked()), ui->battery, SLOT(subValue()));
//    connect(this, SIGNAL(call_dialog()), &v4l2thread, SLOT(blank_osd1()));

    connect(this, SIGNAL(call_dialog()), this, SLOT(call_testdialog()));

    connect(this, SIGNAL(call_capture()), this, SLOT(capture()));
    connect(this, SIGNAL(call_capture()), &v4l2thread, SLOT(video0_capture()));

    connect(&v4l2thread,SIGNAL(capture_ok()),this,SLOT(capture_ok()));
    connect(&v4l2thread,SIGNAL(capture_fail()),this,SLOT(capture_fail()));
}

MainWindow::~MainWindow()
{

}

void MainWindow::call_testdialog()
{
    TestDialog dialog(this);
    dialog.exec();
}

//void MainWindow::capture_ok()
//{
//    qDebug() <<"in slot capture_ok()" << endl;

//    QTime delayTime = QTime::currentTime().addMSecs(1000);  //在当前时间上增加1S
//    while( QTime::currentTime() < delayTime)
//        QCoreApplication::processEvents(QEventLoop::AllEvents, 100);

//    capt_btn->setIcon(QIcon(*capt_btn->releasePicture));
//}

//void MainWindow::capture_fail()
//{
//    qDebug() <<"in slot capture_fail()" << endl;

//    QTime delayTime1 = QTime::currentTime().addMSecs(1000);  //在当前时间上增加1S
//    while( QTime::currentTime() < delayTime1)
//        QCoreApplication::processEvents(QEventLoop::AllEvents, 100);
//    capt_btn->setIcon(QIcon(*capt_btn->leavePicture));
//}

void MainWindow::msecSleep(int msec)
{
    QTime dieTime = QTime::currentTime().addMSecs(msec);
    while( QTime::currentTime() <dieTime )
        QCoreApplication::processEvents(QEventLoop::AllEvents, 100);
}

void MainWindow::capture_ok()
{
    qDebug() <<"in slot capture_ok()" << endl;

//    SleeperThread::msleep(1000);
    this->msecSleep(1000);

    capt_btn->setIcon(QIcon(*capt_btn->releasePicture));
    v4l2thread.capture_lock=false;
}

void MainWindow::capture_fail()
{
    qDebug() <<"in slot capture_fail()" << endl;

//    SleeperThread::msleep(1000);
    this->msecSleep(1000);

    capt_btn->setIcon(QIcon(*capt_btn->leavePicture));
    v4l2thread.capture_lock=false;
}


void MainWindow::capture()
{
    qDebug() <<"in slot capture()" << endl;
    capt_btn->setIcon(QIcon(*capt_btn->enterPicture));
}

void MainWindow::mousePressEvent(QMouseEvent *event)
{
    if(event->button() == Qt::LeftButton)
    {
        oldPos = event->globalPos();
        press = true;
    }
}

void MainWindow::mouseMoveEvent(QMouseEvent *event)
{
    if (press)
    {
        this->move(this->pos() + event->globalPos() - oldPos);
        oldPos = event->globalPos();
    }
}

void MainWindow::mouseReleaseEvent(QMouseEvent *event)
{
    press = false;
}

void MainWindow::keyPressEvent(QKeyEvent *event)
{
    int keyValue;
    keyValue=event->key();

    qDebug() <<"pressed keyValue= "<< keyValue << endl;

    switch (keyValue) {
    case Qt::Key_Enter:
    case Qt::Key_Return:
        {
            //printf("opps 1\n");
//            ui->pushButton->click();
//            ui->pushButton->setDown(true);
            ui->battery->addValue();
        }
        break;
    case Qt::Key_A:
        {
            //printf("opps 1\n");
//            ui->pushButton_2->click();
//            ui->pushButton_2->setDown(true);
            ui->battery->subValue();
        }
        break;

    case Qt::Key_B:
        emit call_dialog();
        break;

    case Qt::Key_Z:
        //capt_btn->keyPressEvent(event);
        //capt_btn->setIcon(QIcon(*capt_btn->enterPicture));
        if(v4l2thread.capture_lock==false)
        {
            emit call_capture();
        }
        break;

    default:
        QWidget::keyPressEvent(event);
        break;
    }

    //printf("I am here 1!\n");
}

void MainWindow::keyReleaseEvent(QKeyEvent *event)
{
    int keyValue;
    keyValue=event->key();

    qDebug() <<"released keyValue= "<< keyValue << endl;

    switch (keyValue) {
    case Qt::Key_Enter:
    case Qt::Key_Return:
        {
//            ui->pushButton->setDown(false);
        }
        break;
    case Qt::Key_A:
        {
//            ui->pushButton_2->setDown(false);
        }
        break;
//    case Qt::Key_Z:
//        {
//            capt_btn->keyReleaseEvent(event);
//        }
//        break;
    default:
        QWidget::keyReleaseEvent(event);
        break;
    }
}

void MainWindow::UpdateRTC()
{
    current_time = QDateTime::currentDateTime();
    current_time_str = current_time.toString("yyyy-MM-dd hh:mm:ss");
    //qDebug() << current_time_str;
    ui->label_2->setText(current_time_str);
    //update();
}

//void MainWindow::raising_value()
//{
//    ui->progressBar->setValue(90);
//}

TestDialog::TestDialog(QWidget *parent)
    : QDialog(parent)
{
    //setGeometry(QRect(400,100,480,180));
    setGeometry(QRect(0,0,640,480));

    button = new QPushButton("Quit");
    button->setEnabled(true);
    button->show();

    QVBoxLayout *VLayout = new QVBoxLayout;
    VLayout->addWidget(button);

    setLayout(VLayout);

    connect(button, SIGNAL(clicked()), this, SLOT(close()));
}

