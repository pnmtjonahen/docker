import jenkins.model.*
import hudson.plugins.sonar.*
import hudson.plugins.sonar.model.*

def inst = Jenkins.getInstance()

def desc = inst.getDescriptor("hudson.plugins.sonar.SonarPublisher")

def sinst = new SonarInstallation(
  "sonarqube",
  false,
  "http://sonarqube:9000",
  "",
  "",
  "",
  "3.0.1",
  "",
  new TriggersConfig(),
  "",
  "",
  ""
)
desc.setInstallations(sinst)

desc.save()