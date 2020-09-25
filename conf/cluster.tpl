        <Cluster className="org.apache.catalina.ha.tcp.SimpleTcpCluster"
                channelSendOptions="6">
                <Manager className="org.apache.catalina.ha.session.BackupManager"
                        expireSessionsOnShutdown="false"
                        notifyListenersOnReplication="true"
                        mapSendOptions="6"/>
                <Channel className="org.apache.catalina.tribes.group.GroupChannel">
                        <Membership className="org.apache.catalina.tribes.membership.StaticMembershipService" connectTimeout="10000">
                        </Membership>
                        <Receiver className="org.apache.catalina.tribes.transport.nio.NioReceiver"
                                address="auto"
                                port="4004"
                                selectorTimeout="100"
                                maxThreads="6"/>
                        <Sender className="org.apache.catalina.tribes.transport.ReplicationTransmitter">
                                <Transport className="org.apache.catalina.tribes.transport.nio.PooledParallelSender"/>
                        </Sender>
                        <Interceptor className="org.apache.catalina.tribes.group.interceptors.TcpFailureDetector"/>
                        <Interceptor className="org.apache.catalina.tribes.group.interceptors.MessageDispatchInterceptor"/>
                        <Interceptor className="org.apache.catalina.tribes.group.interceptors.ThroughputInterceptor"/>
                </Channel>
                <Valve className="org.apache.catalina.ha.tcp.ReplicationValve"
                        filter=".*\.gif|.*\.js|.*\.jpeg|.*\.jpg|.*\.png|.*\.htm|.*\.html|.*\.css|.*\.txt"/>
                <Deployer className="org.apache.catalina.ha.deploy.FarmWarDeployer"
                        tempDir="/opt/tomcat/webapps/"
                        deployDir="/opt/tomcat/webapps/" 
                        watchDir="/opt/tomcat/webapps/" 
                        watchEnabled="false"/>
                        <ClusterListener className="org.apache.catalina.ha.session.ClusterSessionListener"/>
        </Cluster>
