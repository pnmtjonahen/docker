import jenkins.model.*
import java.nio.file.Files
import java.nio.file.Paths

Files.createDirectory(Paths.get("/var/jenkins_home/.m2"));
Files.copy(Paths.get("/usr/share/jenkins/m2/settings.xml"), Paths.get("/var/jenkins_home/.m2/settings.xml"));


a=Jenkins.instance.getExtensionList(hudson.tasks.Maven.DescriptorImpl.class)[0];
b=(a.installations as List);
b.add(new hudson.tasks.Maven.MavenInstallation("MAVEN3", "/usr/share/maven", []));
a.installations=b
a.save()