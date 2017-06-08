FROM alekna/openbox-desktop-vnc

RUN curl -o /etc/yum.repos.d/jschwart-openjdk-7-fedora-25.repo https://copr.fedorainfracloud.org/coprs/jschwart/openjdk-7/repo/fedora-25/jschwart-openjdk-7-fedora-25.repo; \
    dnf install -y tar unzip firefox libXScrnSaver GConf2 libXScrnSaver GConf2 xpdf libgnome java-1.7.0-openjdk-legacy; \
    dnf clean all; \
    mkdir /root/Desktop; \
    curl -s -O https://fxtrade.oanda.com/fxgui/www/fxtrade/fxTrade_installer.tar; \
    curl -s -O https://fxtrade.oanda.com/fxgui/www/fxgame/fxTradePractice_installer.tar; \
    tar -xf fxTrade_installer.tar; sh fxTrade_installer.sh; \
    tar -xf fxTradePractice_installer.tar; sh fxTradePractice_installer.sh; \
    rm -f *.tar *.sh *.rpm; \
