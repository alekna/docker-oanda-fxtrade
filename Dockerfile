FROM alekna/openbox-desktop-vnc

RUN apt-get update; \
    apt-get install -y default-jre unzip; \
    apt-get clean
RUN mkdir /root/Desktop; \
    curl -sO https://fxtrade.oanda.com/fxgui/www/fxtrade/fxTrade_installer.tar; \
    curl -sO https://fxtrade.oanda.com/fxgui/www/fxgame/fxTradePractice_installer.tar; \
    tar -xf fxTrade_installer.tar; sh fxTrade_installer.sh; \
    tar -xf fxTradePractice_installer.tar; sh fxTradePractice_installer.sh; \
    rm -f *.tar *.sh; \
    sed -i "s/java.*/bash -c '& > \/dev\/null 2>\&1'/" /root/Desktop/*.desktop;
