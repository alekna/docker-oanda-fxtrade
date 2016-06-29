FROM alekna/openbox-desktop-vnc

RUN dnf install -y tar unzip firefox libXScrnSaver GConf2 libXScrnSaver GConf2 xpdf libgnome; \
    dnf clean all; \
    curl -O -jksSLH "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u79-b15/jre-7u79-linux-x64.rpm; \
    rpm -i jre-7u79-linux-x64.rpm; \
    mkdir /root/Desktop; \
    curl -s -O https://fxtrade.oanda.com/fxgui/www/fxtrade/fxTrade_installer.tar; \
    curl -s -O https://fxtrade.oanda.com/fxgui/www/fxgame/fxTradePractice_installer.tar; \
    tar -xf fxTrade_installer.tar; sh fxTrade_installer.sh; \
    tar -xf fxTradePractice_installer.tar; sh fxTradePractice_installer.sh; \
    rm -f *.tar *.sh *.rpm; \
    mv .oanda/jar/fxTrade/jxbrowser-linux64.jar .oanda/jar/jxbrowser-linux64.jar; \
    rm -f .oanda/jar/fxTrade/jxbrowser-*; \
    rm -f .oanda/jar/fxTradePractice/jxbrowser-*; \
    ln -s ~/.oanda/jar/jxbrowser-linux64.jar ~/.oanda/jar/fxTrade/jxbrowser-linux64.jar; \
    ln -s ~/.oanda/jar/jxbrowser-linux64.jar ~/.oanda/jar/fxTradePractice/jxbrowser-linux64.jar
