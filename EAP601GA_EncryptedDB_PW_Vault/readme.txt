1.Keystore 생성하기 (alias ==>  이 부분은 vault.sh 를 실행할 때 Enter Keystore Alias:와 동일해야 한다.)
==>실제 암호를 암호화하기 위한 key값 생성
[jooho:/test/git]# keytool -genkey -alias vault -keyalg RSA -keysize 1024 -keystore ./vault/vault.keystore
Enter keystore password:  
Re-enter new password:
What is your first and last name?
  [Unknown]:  
What is the name of your organizational unit?
  [Unknown]:  
What is the name of your organization?
  [Unknown]:  
What is the name of your City or Locality?
  [Unknown]:  
What is the name of your State or Province?
  [Unknown]:  
What is the two-letter country code for this unit?
  [Unknown]:  
Is CN=Unknown, OU=Unknown, O=Unknown, L=Unknown, ST=Unknown, C=Unknown correct?
  [no]:  yes

Enter key password for <vault>
    (RETURN if same as keystore password):  

----
2.Encrypt Real Password(암호를 암호화하기)
[jooho:/test/git]# bin/vault.sh
=========================================================================

  JBoss Vault

  JBOSS_HOME: /test/git

  JAVA: /usr/java/jdk1.6.0_38/bin/java

  VAULT Classpath: /test/git/modules/org/picketbox/main/*:/test/git/modules/org/jboss/logging/main/*:/test/git/modules/org/jboss/common-core/main/*:/test/git/modules/org/jboss/as/security/main/*
=========================================================================

**********************************
****  JBoss Vault ********
**********************************
Please enter a Digit::   0: Start Interactive Session  1: Remove Interactive Session  2: Exit
0
Starting an interactive session
Enter directory to store encrypted files (end with either / or \ based on Unix or Windows:/test/git/vault/
Enter Keystore URL:/test/git/vault/vault.keystore
Enter Keystore password:
Enter Keystore password again:
Values match
Enter 8 character salt:12345678
Enter iteration count as a number (Eg: 44):33
                
Please make note of the following:
********************************************
Masked Password:MASK-2KQBhUFAJITtKG2IXijdPc
salt:12345678
Iteration Count:33
********************************************
                
Enter Keystore Alias:vault
Obtained Vault
Initializing Vault
Apr 24, 2013 3:30:52 PM org.picketbox.plugins.vault.PicketBoxSecurityVault init
INFO: PBOX000361: Default Security Vault Implementation Initialized and Ready
Vault is initialized and ready for use
Handshake with Vault complete          
Please enter a Digit::   0: Store a password  1: Check whether password exists  2: Exit
0
Task:  Store a password
Please enter attribute value:   데이타베이스 암호
Please enter attribute value again: 데이타베이스 암호
Values match
Enter Vault Block:postgreDS_PW
Enter Attribute Name:password
Attribute Value for (postgreDS_PW, password) saved
                
Please make note of the following:
********************************************
Vault Block:postgreDS_PW
Attribute Name:password
Shared Key:YTMzZThjMzktNzg5YS00ODliLWEwZDAtNDNmOTc2NDRlYzIyTElORV9CUkVBS3ZhdWx0
Configuration should be done as follows:
VAULT::postgreDS_PW::password::YTMzZThjMzktNzg5YS00ODliLWEwZDAtNDNmOTc2NDRlYzIyTElORV9CUkVBS3ZhdWx0
********************************************
                
Please enter a Digit::   0: Store a password  1: Check whether password exists  2: Exit
2

3. Add Configuration into standalone.xml
Refer attacted file.
