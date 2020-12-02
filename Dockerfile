FROM devbeta.d.jele.io/tomcat:8.5.59-jdk-11.0.2  

ADD jcm /usr/local/sbin/jcm

RUN yum -y install xmlstarlet; chmod +x /usr/local/sbin/jcm;

LABEL actions="customSSL webAccess" \
    sourceUrl=https://raw.githubusercontent.com/jelastic/icons/master/tomcat/ \
    nodeType=tomcatha \
    nodeTypeAlias=tomcatha \
    name="Tomcat HA" \
    cluster=https://raw.githubusercontent.com/SiryjVyiko/tomcat-cluster/master/cluster.json
