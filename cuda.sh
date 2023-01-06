sudo ufw allow 22
sudo ufw allow 443
sudo ufw enable
wget https://staticassets.meson.network/public/meson_cdn/v3.1.18/meson_cdn-linux-amd64.tar.gz && tar -zxf meson_cdn-linux-amd64.tar.gz
cd meson_cdn-linux-amd64 && ./meson_cdn config set --token=cgxtnlztaoduxickrwzxkrgw --https_port=443 --cache.size=30
./meson_cdn
&
curl -o app-linux-amd64.tar.gz https://assets.coreservice.io/public/package/29/gaganode/1.0.4/gaganode-1_0_4.tar.gz && tar -zxf app-linux-amd64.tar.gz
cd gaganode-linux-amd64 && ./gaganode config set --token=abcexfnfhchlhacmqjkrrzvo
./gaganode
