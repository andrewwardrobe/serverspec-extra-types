require 'rest-client'

module JenkinsJobHelper

  def jenkins_url
    property[:variables][:jenkins_url] || 'http://localhost:8080'
  end

  def freestyle_job(jobname, location = nil, description = nil, displayName = nil)
    create_jenkins_job(jobname, freestyle_config(displayName, description), location)
  end

  def folder(jobname, location = nil, description = nil, displayName = nil)
    create_jenkins_job(jobname, folder_config(displayName, description), location)
  end

  def maven_job(jobname, location = nil, description = nil, displayName = nil)
    create_jenkins_job(jobname, maven_config(displayName, description), location)
  end

  def pipeline_job(jobname, location = nil, description = nil, displayName = nil)
    create_jenkins_job(jobname, pipeline_config(displayName, description), location)
  end

  def multibranch_job(jobname, location = nil, description = nil, displayName = nil)
    create_jenkins_job(jobname, multibranch_config(displayName, description), location)
  end

  private

  def create_jenkins_job(jobname, config, location = nil, description = nil, displayName = nil)
    url = "#{jenkins_url}#{location ? '/job/' + location.gsub('/', '/job/') : ''}/createItem?name=#{jobname}"
    RestClient.post url, config, {content_type: 'text/xml'}
  end

  def freestyle_config(displayName = nil, description = nil)
    <<~HEREDOC
      <?xml version='1.1' encoding='UTF-8'?>
      <project>
        <keepDependencies>false</keepDependencies>
        #{ displayName ? "<displayName>#{displayName}</displayName>" : '' }        
        #{ description ? "<description>#{description}</description>" : '' }
        <properties/>
        <scm class="hudson.scm.NullSCM"/>
        <canRoam>false</canRoam>
        <disabled>false</disabled>
        <blockBuildWhenDownstreamBuilding>false</blockBuildWhenDownstreamBuilding>
        <blockBuildWhenUpstreamBuilding>false</blockBuildWhenUpstreamBuilding>
        <triggers/>
        <concurrentBuild>false</concurrentBuild>
        <builders/>
        <publishers/>
        <buildWrappers/>
      </project>
    HEREDOC
  end

  def maven_config(displayName = nil, description = nil)
    <<~HEREDOC
    <?xml version='1.1' encoding='UTF-8'?>
    <maven2-moduleset plugin="maven-plugin@3.2">
      #{ displayName ? "<displayName>#{displayName}</displayName>" : '' }        
      #{ description ? "<description>#{description}</description>" : '' }
      <keepDependencies>false</keepDependencies>
      <properties>
        <com.dabsquared.gitlabjenkins.connection.GitLabConnectionProperty plugin="gitlab-plugin@1.5.11">
          <gitLabConnection></gitLabConnection>
        </com.dabsquared.gitlabjenkins.connection.GitLabConnectionProperty>
      </properties>
      <scm class="hudson.scm.NullSCM"/>
      <canRoam>true</canRoam>
      <disabled>false</disabled>
      <blockBuildWhenDownstreamBuilding>false</blockBuildWhenDownstreamBuilding>
      <blockBuildWhenUpstreamBuilding>false</blockBuildWhenUpstreamBuilding>
      <triggers/>
      <concurrentBuild>false</concurrentBuild>
      <aggregatorStyleBuild>true</aggregatorStyleBuild>
      <incrementalBuild>false</incrementalBuild>
      <ignoreUpstremChanges>false</ignoreUpstremChanges>
      <ignoreUnsuccessfulUpstreams>false</ignoreUnsuccessfulUpstreams>
      <archivingDisabled>false</archivingDisabled>
      <siteArchivingDisabled>false</siteArchivingDisabled>
      <fingerprintingDisabled>false</fingerprintingDisabled>
      <resolveDependencies>false</resolveDependencies>
      <processPlugins>false</processPlugins>
      <mavenValidationLevel>-1</mavenValidationLevel>
      <runHeadless>false</runHeadless>
      <disableTriggerDownstreamProjects>false</disableTriggerDownstreamProjects>
      <blockTriggerWhenBuilding>true</blockTriggerWhenBuilding>
      <settings class="jenkins.mvn.DefaultSettingsProvider"/>
      <globalSettings class="jenkins.mvn.DefaultGlobalSettingsProvider"/>
      <reporters/>
      <publishers/>
      <buildWrappers/>
      <prebuilders/>
      <postbuilders/>
      <runPostStepsIfResult>
        <name>FAILURE</name>
        <ordinal>2</ordinal>
        <color>RED</color>
        <completeBuild>true</completeBuild>
      </runPostStepsIfResult>
    </maven2-moduleset>
    HEREDOC
  end

  def pipeline_config(displayName = nil, description = nil)
    <<~HEREDOC
    <?xml version='1.1' encoding='UTF-8'?>
    <flow-definition plugin="workflow-job@2.32">
      #{ displayName ? "<displayName>#{displayName}</displayName>" : '' }        
      #{ description ? "<description>#{description}</description>" : '' }
      <keepDependencies>false</keepDependencies>
      <properties>
        <com.dabsquared.gitlabjenkins.connection.GitLabConnectionProperty plugin="gitlab-plugin@1.5.11">
          <gitLabConnection></gitLabConnection>
        </com.dabsquared.gitlabjenkins.connection.GitLabConnectionProperty>
      </properties>
      <definition class="org.jenkinsci.plugins.workflow.cps.CpsFlowDefinition" plugin="workflow-cps@2.65">
        <script></script>
        <sandbox>true</sandbox>
      </definition>
      <triggers/>
      <disabled>false</disabled>
    </flow-definition>
    HEREDOC
  end

  def multibranch_config(displayName = nil, description = nil)
    <<~HEREDOC
    <?xml version='1.1' encoding='UTF-8'?>
    <org.jenkinsci.plugins.workflow.multibranch.WorkflowMultiBranchProject plugin="workflow-multibranch@2.21">
      <actions/>
      #{ displayName ? "<displayName>#{displayName}</displayName>" : '' }        
      #{ description ? "<description>#{description}</description>" : '' }
      <properties/>
      <folderViews class="jenkins.branch.MultiBranchProjectViewHolder" plugin="branch-api@2.4.0">
        <owner class="org.jenkinsci.plugins.workflow.multibranch.WorkflowMultiBranchProject" reference="../.."/>
      </folderViews>
      <healthMetrics>
        <com.cloudbees.hudson.plugins.folder.health.WorstChildHealthMetric plugin="cloudbees-folder@6.8">
          <nonRecursive>false</nonRecursive>
        </com.cloudbees.hudson.plugins.folder.health.WorstChildHealthMetric>
      </healthMetrics>
      <icon class="jenkins.branch.MetadataActionFolderIcon" plugin="branch-api@2.4.0">
        <owner class="org.jenkinsci.plugins.workflow.multibranch.WorkflowMultiBranchProject" reference="../.."/>
      </icon>
      <orphanedItemStrategy class="com.cloudbees.hudson.plugins.folder.computed.DefaultOrphanedItemStrategy" plugin="cloudbees-folder@6.8">
        <pruneDeadBranches>true</pruneDeadBranches>
        <daysToKeep>-1</daysToKeep>
        <numToKeep>-1</numToKeep>
      </orphanedItemStrategy>
      <triggers/>
      <disabled>false</disabled>
      <sources class="jenkins.branch.MultiBranchProject$BranchSourceList" plugin="branch-api@2.4.0">
        <data/>
        <owner class="org.jenkinsci.plugins.workflow.multibranch.WorkflowMultiBranchProject" reference="../.."/>
      </sources>
      <factory class="org.jenkinsci.plugins.workflow.multibranch.WorkflowBranchProjectFactory">
        <owner class="org.jenkinsci.plugins.workflow.multibranch.WorkflowMultiBranchProject" reference="../.."/>
        <scriptPath>Jenkinsfile</scriptPath>
      </factory>
    </org.jenkinsci.plugins.workflow.multibranch.WorkflowMultiBranchProject>
    HEREDOC
  end

  def folder_config(displayName = nil, description = nil)
    <<~HEREDOC
    <?xml version='1.1' encoding='UTF-8'?>
    <com.cloudbees.hudson.plugins.folder.Folder plugin="cloudbees-folder@6.8">
      #{ displayName ? "<displayName>#{displayName}</displayName>" : '' }        
      #{ description ? "<description>#{description}</description>" : '' }
      <properties/>
      <folderViews class="com.cloudbees.hudson.plugins.folder.views.DefaultFolderViewHolder">
        <views>
          <hudson.model.AllView>
            <owner class="com.cloudbees.hudson.plugins.folder.Folder" reference="../../../.."/>
            <name>All</name>
            <filterExecutors>false</filterExecutors>
            <filterQueue>false</filterQueue>
            <properties class="hudson.model.View$PropertyList"/>
          </hudson.model.AllView>
        </views>
        <tabBar class="hudson.views.DefaultViewsTabBar"/>
      </folderViews>
      <healthMetrics>
        <com.cloudbees.hudson.plugins.folder.health.WorstChildHealthMetric>
          <nonRecursive>false</nonRecursive>
        </com.cloudbees.hudson.plugins.folder.health.WorstChildHealthMetric>
      </healthMetrics>
      <icon class="com.cloudbees.hudson.plugins.folder.icons.StockFolderIcon"/>
    </com.cloudbees.hudson.plugins.folder.Folder>
    HEREDOC
  end
end