                <Channel className="org.apache.catalina.tribes.group.GroupChannel">
                        <Membership className="org.apache.catalina.tribes.membership.StaticMembershipService" connectTimeout="10000">
                        </Membership>
                        <Receiver className="org.apache.catalina.tribes.transport.nio.NioReceiver" address="auto" port="4004" selectorTimeout="100" maxThreads="6"/>
                        <Sender className="org.apache.catalina.tribes.transport.ReplicationTransmitter">
                                <Transport className="org.apache.catalina.tribes.transport.nio.PooledParallelSender"/>
                        </Sender>
                        <Interceptor className="org.apache.catalina.tribes.group.interceptors.TcpFailureDetector"/>
                        <Interceptor className="org.apache.catalina.tribes.group.interceptors.MessageDispatchInterceptor"/>
                        <Interceptor className="org.apache.catalina.tribes.group.interceptors.ThroughputInterceptor"/>
                </Channel>
