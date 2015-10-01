FROM alekna/openbox-desktop-vnc

RUN yum install -y wget tar unzip java-1.8.0-openjdk; yum clean all
RUN mkdir /root/Desktop; \
  wget -q http://fxtrade.oanda.com/fxgui/www/fxtrade/fxTrade_installer.tar; \
  wget -q https://fxtrade.oanda.com/fxgui/www/fxtrade-preview/fxTradePreview_installer.tar; \
  wget -q http://fxtrade.oanda.com/fxgui/www/fxgame/fxTradePractice_installer.tar; \
  tar -xf fxTrade_installer.tar; sh fxTrade_installer.sh; \
  tar -xf fxTradePreview_installer.tar; sh fxTradePreview_installer.sh; \
  tar -xf fxTradePractice_installer.tar; sh fxTradePractice_installer.sh
