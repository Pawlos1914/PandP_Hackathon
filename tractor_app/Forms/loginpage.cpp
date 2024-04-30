#include "loginpage.h"
#include "ui_loginpage.h"
#include <QMessageBox>

LoginPage::LoginPage(QWidget *parent)
    : QWizard(parent)
    , ui(new Ui::LoginPage)
{
    ui->setupUi(this);
}

LoginPage::~LoginPage()
{
    delete ui;
}

void LoginPage::on_loginBtn_clicked()
{
    QString username = ui ->userEdit->text();
    QString password = ui ->passEdit->text();

    if( username.contains("test") && password.startsWith("test"))
    {
        QMessageBox::information(this, "Login", "User logged in.");
    }
}

