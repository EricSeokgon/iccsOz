#!/bin/sh
#-----------------------------------------------------
#
#            OZ Contorl.
# 
# This script file written and tested under HP-UX
# 
# User should set following variables: 
# 
# JAVA_HOME      - Determines the version of Java used to start  
#                  OZ Server. This variable must point to the 
#                  root directory of a JDK or JRE installation. 
#                  for an up-to-date list of supported JVMs your platform. 
# USER_CLASSPATH - Use this variable to append jar files or directories to 
#                  the OZLIB.
# MAX_MEMORY     - Maximum memory used by OZ Server. (The unit is mega-byte.)
# MIN_MEMORY     - Minimum memory used by OZ Server. (The unit is mega-byte.)
# JAVA_OPTIONS   - On some platforms, certain java command-line options are 
#                  recommanded when running OZ Server. 
#
#-----------------------------------------------------

#  -----------------------------------
#   Set user-defined variables
#  -----------------------------------

JAVA_HOME=../../jre
USER_CLASSPATH=
MAX_MEMORY=256
MIN_MEMORY=128
JAVA_OPTION=-hotspot


OZSERVER_HOME=..


#  -----------------------------------
#         OZ Main Class
#  -----------------------------------
OZLIB=.:$OZSERVER_HOME/conf
OZLIB=$OZLIB:$OZSERVER_HOME/WEB-INF/lib/ozsfw51.jar

#  -----------------------------------
#         for User Data Set classes
#  -----------------------------------
OZLIB=$OZLIB:$OZSERVER_HOME/WEB-INF/lib/ozusl.jar
OZLIB=$OZLIB:$OZSERVER_HOME/WEB-INF/lib/hsqldb.jar
# OZLIB=$OZLIB:$OZSERVER_HOME/WEB-INF/lib/servlet.jar

#  -----------------------------------
#         for User Data Set classes
#  -----------------------------------
OZLIB=$OZLIB:$OZSERVER_HOME/uds

#  -----------------------------------
#         Library for Logging, ZIP
#  -----------------------------------
OZLIB=$OZLIB:$OZSERVER_HOME/WEB-INF/lib/log4j.jar
OZLIB=$OZLIB:$OZSERVER_HOME/WEB-INF/lib/jazzlib.jar

# -----------------------------------
#        Library for XML
# -----------------------------------
OZLIB=$OZLIB:$OZSERVER_HOME/WEB-INF/lib/xalan.jar
OZLIB=$OZLIB:$OZSERVER_HOME/WEB-INF/lib/xercesImpl.jar
OZLIB=$OZLIB:$OZSERVER_HOME/WEB-INF/lib/xml-apis.jar
OZLIB=$OZLIB:$OZSERVER_HOME/WEB-INF/lib/parser.jar
OZLIB=$OZLIB:$OZSERVER_HOME/WEB-INF/lib/xerces.jar
OZLIB=$OZLIB:$OZSERVER_HOME/WEB-INF/lib/dom4j-1.6.1.jar
OZLIB=$OZLIB:$OZSERVER_HOME/WEB-INF/lib/jaxen-1.1.6.jar
OZLIB=$OZLIB:$OZSERVER_HOME/WEB-INF/lib/crimson.jar
OZLIB=$OZLIB:$OZSERVER_HOME/WEB-INF/lib/sjsxp.jar
OZLIB=$OZLIB:$OZSERVER_HOME/WEB-INF/lib/jsr173_api.jar

# -----------------------------------
#        Library for JavaScript
# -----------------------------------
OZLIB=$OZLIB:$OZSERVER_HOME/WEB-INF/lib/js.jar

# -----------------------------------
#      USL Jar for USL
# -----------------------------------
OZLIB=$OZLIB:$OZSERVER_HOME/WEB-INF/lib/OZUSLServerSession.jar
OZLIB=$OZLIB:$OZSERVER_HOME/WEB-INF/lib/OZUSLServerDES128.jar

# -----------------------------------
#      JDBC Driver for MSSQL
# -----------------------------------
#OZLIB=$OZLIB:$OZSERVER_HOME/WEB-INF/lib/jkjdbc.jar
OZLIB=$OZLIB:$OZSERVER_HOME/UniversalDriver/msbase.jar
OZLIB=$OZLIB:$OZSERVER_HOME/UniversalDriver/msutil.jar
OZLIB=$OZLIB:$OZSERVER_HOME/UniversalDriver/mssqlserver.jar

# -----------------------------------
#      JDBC Driver for Oracle     
# -----------------------------------
OZLIB=$OZLIB:$OZSERVER_HOME/UniversalDriver/classes12.zip

#  If your version of oracle is 7 and
#  its character set is KOREAN(KSC5601),
#  then delete '#' of next line
#  OZLIB=$OZLIB:$OZSERVER_HOME/UniversalDriver/ijava.jar

# -----------------------------------
#     JDBC Driver for Mysql (5.1.5)
# -----------------------------------
OZLIB=$OZLIB:$OZSERVER_HOME/UniversalDriver/mysql5.1.5.jar

# -----------------------------------
#     JDBC Driver for Informix  
# -----------------------------------
OZLIB=$OZLIB:$OZSERVER_HOME/UniversalDriver/ifxjdbc.jar

# -----------------------------------
#   JDBC Driver for Syabse   
# -----------------------------------
OZLIB=$OZLIB:$OZSERVER_HOME/UniversalDriver/jconn2.jar

# -----------------------------------
#      JDBC Driver for IBM DB2 
# -----------------------------------
OZLIB=$OZLIB:$OZSERVER_HOME/UniversalDriver/db2java.zip

# -----------------------------------
#      JDBC Driver for Uni-SQL
# -----------------------------------
OZLIB=$OZLIB:$OZSERVER_HOME/UniversalDriver/unisqljdbc10.jar


# -----------------------------------
#        HTTPS/SSL Module
# -----------------------------------
OZLIB=$OZLIB:$OZSERVER_HOME/WEB-INF/lib/jcert.jar
OZLIB=$OZLIB:$OZSERVER_HOME/WEB-INF/lib/jnet.jar
OZLIB=$OZLIB:$OZSERVER_HOME/WEB-INF/lib/jsse.jar

# -----------------------------------
#        Library for JavaScript
# -----------------------------------
OZLIB=$OZLIB:$OZSERVER_HOME/lib/js.jar


# ---------------------------------
#    WebService added 
# ----------------------------------
OZLIB=$OZLIB:$OZSERVER_HOME/WEB-INF/lib/activation.jar
OZLIB=$OZLIB:$OZSERVER_HOME/WEB-INF/lib/mail.jar
OZLIB=$OZLIB:$OZSERVER_HOME/WEB-INF/lib/soap2_3_1.jar

# -----------------------------------
#      USER CLASSPAATH
# -----------------------------------

if [ "$USER_CLASSPATH" != "" ]; then
  OZLIB=$OZLIB:$USER_CLASSPATH
fi 

if [ "$1" != "-start" ]; then 
  JAVA_OPTION=
else 
  JAVA_OPTION="$JAVA_OPTION -ms$MIN_MEMORY"m
  JAVA_OPTION="$JAVA_OPTION -mx$MAX_MEMORY"m
fi

echo ""
echo $OZLIB
echo ""

$JAVA_HOME/bin/java $JAVA_OPTION -classpath $OZLIB oz.admin.shell.server.OZAShell $1 $2 $3 $4 $5 $6 $7 $8 $9
