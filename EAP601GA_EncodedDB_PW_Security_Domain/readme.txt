1.Encode Password
java -cp ../../modules/org/picketbox/main/picketbox-4.0.14.Final-redhat-2.jar org.picketbox.datasource.security.SecureIdentityLoginModule postgres
Encoded password: 1d5bcec446b79907df8592078de921bc

----
2.Add New Security Domain
               <security-domain name="postgreDSSecurityDomain" cache-type="default">
                  <authentication>
                        <login-module code="org.picketbox.datasource.security.SecureIdentityLoginModule" flag="required">
                            <module-option name="username" value="postgres"/>
                            <module-option name="password" value="1d5bcec446b79907df8592078de921bc"/>
                            <module-option name="managedConnectionFactoryName" value="jboss.jca:service=LocalTxCM,name=mdsDS"/>
                        </login-module>
                    </authentication>
                </security-domain>

3.Modify DataSource 
                   <security>
                        <security-domain>postgreDSSecurityDomain</security-domain>
                    </security>
