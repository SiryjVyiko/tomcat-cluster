      <Cluster className="org.apache.catalina.ha.tcp.SimpleTcpCluster" channelSendOptions="8" channelStartOptions="3">
          <Manager className="org.apache.catalina.ha.session.DeltaManager" expireSessionsOnShutdown="false" notifyListenersOnReplication="true" />
          <Valve 
              className="org.apache.catalina.ha.tcp.ReplicationValve" filter=".*\.gif;.*\.js;.*\.jpg;.*\.png;.*\.htm;.*\.html;.*\.css;.*\.txt;" />
          <ClusterListener className="org.apache.catalina.ha.session.ClusterSessionListener" />
      </Cluster>
