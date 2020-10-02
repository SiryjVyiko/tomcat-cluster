      <Cluster className="org.apache.catalina.ha.tcp.SimpleTcpCluster" channelSendOptions="8" channelStartOptions="3">
          <Manager className="org.apache.catalina.ha.session.DeltaManager" expireSessionsOnShutdown="false" notifyListenersOnReplication="true" />
          <Channel className="org.apache.catalina.tribes.group.GroupChannel">
              <Sender className="org.apache.catalina.tribes.transport.ReplicationTransmitter">
                  <Transport className="org.apache.catalina.tribes.transport.nio.PooledParallelSender" />
              </Sender>
              <Receiver address="000.000.000.000" autoBind="0" className="org.apache.catalina.tribes.transport.nio.NioReceiver" maxThreads="6" port="4100" selectorTimeout="5000" />
              <Interceptor className="org.apache.catalina.tribes.group.interceptors.TcpPingInterceptor" staticOnly="true"/>
              <Interceptor className="org.apache.catalina.tribes.group.interceptors.TcpFailureDetector" />
              <Interceptor className="org.apache.catalina.tribes.group.interceptors.StaticMembershipInterceptor">
              </Interceptor>
              <Interceptor className="org.apache.catalina.tribes.group.interceptors.MessageDispatchInterceptor" />
          </Channel>
          <Valve 
              className="org.apache.catalina.ha.tcp.ReplicationValve" 
              filter=".*\.gif;.*\.js;.*\.jpg;.*\.png;.*\.htm;.*\.html;.*\.css;.*\.txt;" 
          />
          <ClusterListener className="org.apache.catalina.ha.session.ClusterSessionListener" />
      </Cluster>
