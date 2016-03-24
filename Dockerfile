FROM alekna/openbox-desktop-vnc

RUN yum install -y wget tar unzip firefox; \
  yum install -y https://copr-be.cloud.fedoraproject.org/results/jschwart/openjdk-7/fedora-21-x86_64/java-1.7.0-openjdk-legacy-1.7.0.79-2.5.5.1.fc21/java-1.7.0-openjdk-legacy-headless-1.7.0.79-2.5.5.1.fc21.x86_64.rpm; \
  yum install -y https://copr-be.cloud.fedoraproject.org/results/jschwart/openjdk-7/fedora-21-x86_64/java-1.7.0-openjdk-legacy-1.7.0.79-2.5.5.1.fc21/java-1.7.0-openjdk-legacy-1.7.0.79-2.5.5.1.fc21.x86_64.rpm; \
  yum clean all
RUN mkdir /root/Desktop; \
  alternatives --set java /usr/lib/jvm/java-1.7.0-openjdk-legacy-1.7.0.79-2.5.5.1.fc21.x86_64/jre/bin/java; \
  wget -q https://fxtrade.oanda.com/fxgui/www/fxtrade/fxTrade_installer.tar; \
  wget -q https://fxtrade.oanda.com/fxgui/www/fxtrade-preview/fxTradePreview_installer.tar; \
  wget -q https://fxtrade.oanda.com/fxgui/www/fxgame/fxTradePractice_installer.tar; \
  tar -xf fxTrade_installer.tar; sh fxTrade_installer.sh; \
  tar -xf fxTradePreview_installer.tar; sh fxTradePreview_installer.sh; \
  tar -xf fxTradePractice_installer.tar; sh fxTradePractice_installer.sh
