# обрезать последнюю часть пути по разделителю
echo "repo/smart/speech/speechlab/speechlab:9.3.0.41316" | rev | sed -r 's/^[^/]+//' | rev

-----------------------------------------------------------------------------------------------------------------
#вытащить порт конкретного сервиса из docker-compose

 fgg-streaming-service:
    environment:
      - Consul__Address=http://consul-server-bootstrap:8500/
      - Consul__AppSettingsKey=config/demo
      - Consul__ConfigurationKey=demo
      - Consul__Enabled=true
    ports:
      - "9015:80"
    image: test.com:5003/preprod/fgg-streaming-service:9.2.6.32488
    restart: always

grep -A 9 "fgg-streaming-service" docker-compose.yaml -m 1 | grep ":80" | awk {'print $2'} | sed -s "s/^\(\(\"\(.*\)\"\)\|\('\(.*\)'\)\)$/\3\5/g" | sed 's/:/ /g' | awk {'print $1'}
-----------------------------------------------------------------------------------------------------------------
# вытащить номер пайплайна из "smartlogger/cloudsal/backend/services/tenantservice/cloudsal-tenant-service:9.2.8.43163"


basename smartlogger/cloudsal/backend/services/tenantservice/cloudsal-tenant-service:9.2.8.43163 | sed 's/^[^0-9]*//' | sed 's/\./ /g' | rev | awk '{print $1}' | rev
43163
