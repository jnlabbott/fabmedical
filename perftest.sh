host="fabmedical-546389.mongo.cosmos.azure.com"
username="fabmedical-546389"
password="HqsM31YS1y6U4s7RbCXhElCv1kQCEWECULdy6BgVZQ9akA4NoTlA5rU0VmNCg2oGOblT5ouJaRsTJcHK4Sey4Q=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
