#ifndef LOGINPAGE_H
#define LOGINPAGE_H

#include <QWizard>

namespace Ui {
class LoginPage;
}

class LoginPage : public QWizard
{
    Q_OBJECT

public:
    explicit LoginPage(QWidget *parent = nullptr);
    ~LoginPage();

private slots:
    void on_loginBtn_clicked();

private:
    Ui::LoginPage *ui;
};

#endif // LOGINPAGE_H
