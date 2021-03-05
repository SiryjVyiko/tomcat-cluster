FROM devbeta.d.jele.io/tomeeha:7.0.5-plume-openjdk-1.8.0_181 

ADD jcm /usr/local/sbin/jcm

RUN yum -y install xmlstarlet; chmod +x /usr/local/sbin/jcm;

LABEL actions="customSSL webAccess" \
    sourceUrl=https://raw.githubusercontent.com/jelastic/icons/master/tomee/ \
    nodeType=tomeeha \
    nodeTypeAlias=tomeeha \
    name="TomEE HA" \
    deprecated="true" \
    cluster=https://raw.githubusercontent.com/SiryjVyiko/tomcat-cluster/master/cluster.json
