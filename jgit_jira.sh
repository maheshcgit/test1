cd /Users/mcrox/Documents/svn/appfactory_2.0.0/components/appfac
cd org.wso2.carbon.appfactory.deployers/2.1.0/
mvn clean install -Dmaven.test.skip=true
cd /Users/mcrox/Documents/svn/appfactory_2.0.0/products/appfactory/2.1.0/modules/webapps/appfactory-plugin
mvn clean install -o
cp target/appfactory-plugin.hpi ~/Documents/svn/jenka/newjenka/WEB-INF/plugins/appfactory-plugin-2.1.0.hpi
cd ~/Documents/svn/jenka/newjenka
zip -r ../newjenkinswar/jenkins.war *
cd ../newjenkinswar/
scp jenkins.war appfactory@192.168.16.2:/home/appfactory/appfactory_deployment_s4/setup/buildserver/wso2as-5.2.1/repository/tenants/1/webapps
