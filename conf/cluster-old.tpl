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
