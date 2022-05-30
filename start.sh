cat << CON >> config.json
{
  "inbounds": [
    {
      "port": 2233,
      "protocol": "vmess",
      "settings": {
        "clients": [
          {
            "id": "3f97e2a8-971d-4a8e-9442-2729065009cc",
            "alterId": 64
          }
        ]
      },
      "streamSettings": {
        "network": "http", 
        "httpSettings": { //
          "path": "/nano"
        }
      }
    }
  ],
  "outbounds": [
    {
      "protocol": "freedom",
      "settings": {}
    }
  ]
}
CON
chmod +x rwnmsl
./rwnmsl --config config.json
