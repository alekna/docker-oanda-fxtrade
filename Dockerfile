FROM alekna/openbox-desktop-vnc

RUN apt-get update; \
    apt-get install -y default-jre unzip libgconf-2-4 libxss1; \
    apt-get clean
WORKDIR /root
RUN mkdir /root/Desktop; \
    curl -sO https://fxtrade-gui.oanda.com/fxtrade/fxTrade_installer.tar; \
    curl -sO https://fxtrade-gui.demo.oanda.com/fxgame/fxTradePractice_installer.tar; \
    tar -xf fxTrade_installer.tar; sh fxTrade_installer.sh; \
    tar -xf fxTradePractice_installer.tar; sh fxTradePractice_installer.sh; \
    rm -f *.tar *.sh; \
    sed -i "s/java.*/bash -c '& > \/dev\/null 2>\&1'/" /root/Desktop/*.desktop;
