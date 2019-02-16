<?xml version="1.0" encoding="UTF-8" ?>
<object class="GenericRobot2" serializationversion="2">
  <prologue>
    <saved-by-versions>
      <version>9.3.0</version>
      <version>9.4.0</version>
      <version>9.7.0</version>
    </saved-by-versions>
    <referenced-types>
      <type name="Path"/>
    </referenced-types>
    <referenced-snippets>
      <snippet name="LoadHelp"/>
    </referenced-snippets>
    <typed-variables>
      <typed-variable name="Directory" type-name="Path"/>
    </typed-variables>
    <global-variables/>
    <parameters>
      <parameter name="Directory" type-name="Path"/>
    </parameters>
    <return-variables/>
    <store-in-database-variables/>
    <browser-engine>WEBKIT</browser-engine>
  </prologue>
  <property name="variables" class="Variables">
    <object class="Variable" serializationversion="1">
      <property name="name" class="String" id="0">filename</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="SimpleTypeReference">
          <property name="simpleTypeId" class="Integer">12</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">Directory</property>
      <property name="parameter" class="Boolean">true</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">Path</property>
        </property>
        <property name="assignments" class="AttributeAssignments">
          <property name="path" class="AttributeAssignment">
            <property name="attributeValue" class="String">C:/kapow_test/</property>
            <property name="currentlyAssigned" class="Boolean">true</property>
            <property name="lastKnownAttributeType" class="java.lang.Class">kapow.robot.plugin.common.domain.StringAttributeType</property>
          </property>
        </property>
      </property>
    </object>
  </property>
  <property name="proxyServerConfiguration" class="ProxyServerConfiguration" serializationversion="0"/>
  <property name="httpClientType" class="HttpClientType">
    <property name="enum-name" class="String">WEBKIT</property>
  </property>
  <property name="ntlmAuthentication" class="NTLMAuthenticationType">
    <property name="enum-name" class="String">STANDARD</property>
  </property>
  <property name="usePre96DefaultWaiting" class="Boolean" id="1">false</property>
  <property name="maxWaitForTimeout" class="Integer">10000</property>
  <property name="waitRealTime" idref="1"/>
  <property name="privateHTTPCacheEnabled" class="Boolean" id="2">true</property>
  <property name="privateHTTPCacheSize" class="Integer">2048</property>
  <property name="comment">
    <null/>
  </property>
  <property name="executionMode" class="ExecutionMode">
    <property name="enum-name" class="String">DIRECT</property>
  </property>
  <property name="avoidExternalReExecution" idref="1"/>
  <property name="transitionGraph" class="Body">
    <blockBeginStep class="BlockBeginStep" id="3"/>
    <steps class="ArrayList">
      <object class="SnippetStep" id="4">
        <name>
          <null/>
        </name>
        <snippetName class="String">LoadHelp</snippetName>
        <snippetStepComment>
          <null/>
        </snippetStepComment>
      </object>
      <object class="Transition" serializationversion="3" id="5">
        <property name="name" class="String">CLICK HERE FIRST</property>
        <property name="stepAction" class="DoNothing"/>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.Collections$SingletonSet">
          <element class="String" id="6">name</element>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="7">
        <property name="name" class="String">Load Page</property>
        <property name="stepAction" class="LoadPage2">
          <property name="urlProvider" class="kapow.robot.plugin.common.stepaction.urlprovider2.AttributeURLProvider2" serializationversion="1">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" class="String">Directory.path</property>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="22">
            <property name="SSLUsage" class="com.kapowtech.net.ssl.SSLUsage" id="8">
              <property name="useSSLv2Hello" class="Boolean">true</property>
              <property name="useSSLv3" class="Boolean">true</property>
            </property>
            <property name="outputPageIfTimeoutEnabled" class="Boolean">false</property>
            <property name="formatHandling" class="kapow.robot.plugin.common.support.browser2.LegacyFormatHandling">
              <property name="jsonHandling" class="com.kapowtech.browser.documentparser.JSONHandling" id="9">
                <property name="enum-name" class="String">TRANSFORM_TO_XML</property>
              </property>
              <property name="transformExcelToHtml" class="Boolean">true</property>
            </property>
            <property name="migrationNotes" class="kapow.robot.plugin.common.support.Text">
              <property name="text" class="String">Default value changed: screenSize 800 x 600 -&gt; 1280 x 1024
Default value changed: userAgentProvider Internet Explorer 8.0 on Windows 7 -&gt; Chrome 27.0 on Windows 7
Default value changed: ignoreLoadErrors false -&gt; true</property>
            </property>
            <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep" id="10"/>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$IgnoreAndContinue"/>
        </property>
        <property name="comment" class="String">Loads the specified directory into the browser view, if it already exists.</property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="6"/>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="11">
        <property name="name" class="String">Write File</property>
        <property name="stepAction" class="WriteFile" serializationversion="0">
          <property name="fileNameExpression" class="Expression" serializationversion="1">
            <property name="text" class="String">Directory.path+&gt;&gt;writefile.txt&lt;&lt;</property>
          </property>
          <property name="fileContentExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">File content</property>
          </property>
          <property name="createDirectories" class="Boolean">true</property>
          <property name="executeInRoboMaker" class="Boolean">true</property>
        </property>
        <property name="elementFinders" class="ElementFinders" id="12"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment" class="String">Creates the file "writefile.txt" in the specified directory.</property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="6"/>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="13">
        <property name="name" class="String">Load Page</property>
        <property name="stepAction" class="LoadPage2">
          <property name="urlProvider" class="kapow.robot.plugin.common.stepaction.urlprovider2.AttributeURLProvider2" serializationversion="1">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" class="String">Directory.path</property>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="22">
            <property name="SSLUsage" idref="8"/>
            <property name="outputPageIfTimeoutEnabled" class="Boolean">false</property>
            <property name="formatHandling" class="kapow.robot.plugin.common.support.browser2.LegacyFormatHandling">
              <property name="jsonHandling" idref="9"/>
              <property name="transformExcelToHtml" class="Boolean">true</property>
            </property>
            <property name="migrationNotes" class="kapow.robot.plugin.common.support.Text">
              <property name="text" class="String">Default value changed: screenSize 800 x 600 -&gt; 1280 x 1024
Default value changed: userAgentProvider Internet Explorer 8.0 on Windows 7 -&gt; Chrome 27.0 on Windows 7
Default value changed: ignoreLoadErrors false -&gt; true</property>
            </property>
            <property name="ancestorProvider" idref="10"/>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="6"/>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="14">
        <property name="name" class="String">Test File Existence</property>
        <property name="stepAction" class="TestFileExistence" serializationversion="0">
          <property name="fileNameExpression" class="Expression" serializationversion="1">
            <property name="text" class="String">Directory.path+&gt;&gt;writefile.txt&lt;&lt;</property>
          </property>
          <property name="mode" class="Integer">0</property>
        </property>
        <property name="elementFinders" idref="12"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment" class="String">Tests whether writefile.txt exists, which it should after executing the Write File step.</property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="6"/>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="15">
        <property name="name" class="String">Copy File</property>
        <property name="stepAction" class="CopyFile">
          <property name="fileNameExpression" class="Expression" serializationversion="1">
            <property name="text" class="String">Directory.path+&gt;&gt;writefile.txt&lt;&lt;</property>
          </property>
          <property name="newNameExpression" class="Expression" serializationversion="1">
            <property name="text" class="String">Directory.path+&gt;&gt;writefile_copy.txt&lt;&lt;</property>
          </property>
          <property name="executeInRoboMaker" class="Boolean">true</property>
        </property>
        <property name="elementFinders" idref="12"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$IgnoreAndContinue"/>
        </property>
        <property name="comment" class="String">Copies writefile.txt into writefile_copy.txt.</property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="6"/>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="16">
        <property name="name" class="String">Load Page</property>
        <property name="stepAction" class="LoadPage2">
          <property name="urlProvider" class="kapow.robot.plugin.common.stepaction.urlprovider2.AttributeURLProvider2" serializationversion="1">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" class="String">Directory.path</property>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="22">
            <property name="SSLUsage" idref="8"/>
            <property name="outputPageIfTimeoutEnabled" class="Boolean">false</property>
            <property name="formatHandling" class="kapow.robot.plugin.common.support.browser2.LegacyFormatHandling">
              <property name="jsonHandling" idref="9"/>
              <property name="transformExcelToHtml" class="Boolean">true</property>
            </property>
            <property name="migrationNotes" class="kapow.robot.plugin.common.support.Text">
              <property name="text" class="String">Default value changed: screenSize 800 x 600 -&gt; 1280 x 1024
Default value changed: userAgentProvider Internet Explorer 8.0 on Windows 7 -&gt; Chrome 27.0 on Windows 7
Default value changed: ignoreLoadErrors false -&gt; true</property>
            </property>
            <property name="ancestorProvider" idref="10"/>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="6"/>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="17">
        <property name="name" class="String">Delete File</property>
        <property name="stepAction" class="DeleteFile">
          <property name="fileNameExpression" class="Expression" serializationversion="1">
            <property name="text" class="String">Directory.path+&gt;&gt;writefile.txt&lt;&lt;</property>
          </property>
          <property name="executeInRoboMaker" class="Boolean">true</property>
        </property>
        <property name="elementFinders" idref="12"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$IgnoreAndContinue"/>
        </property>
        <property name="comment" class="String">Deletes writefile.txt</property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="6"/>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="18">
        <property name="name" class="String">Load Page</property>
        <property name="stepAction" class="LoadPage2">
          <property name="urlProvider" class="kapow.robot.plugin.common.stepaction.urlprovider2.AttributeURLProvider2" serializationversion="1">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" class="String">Directory.path</property>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="22">
            <property name="SSLUsage" idref="8"/>
            <property name="outputPageIfTimeoutEnabled" class="Boolean">false</property>
            <property name="formatHandling" class="kapow.robot.plugin.common.support.browser2.LegacyFormatHandling">
              <property name="jsonHandling" idref="9"/>
              <property name="transformExcelToHtml" class="Boolean">true</property>
            </property>
            <property name="migrationNotes" class="kapow.robot.plugin.common.support.Text">
              <property name="text" class="String">Default value changed: screenSize 800 x 600 -&gt; 1280 x 1024
Default value changed: userAgentProvider Internet Explorer 8.0 on Windows 7 -&gt; Chrome 27.0 on Windows 7
Default value changed: ignoreLoadErrors false -&gt; true</property>
            </property>
            <property name="ancestorProvider" idref="10"/>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="6"/>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="19">
        <property name="name" class="String">Make Directory</property>
        <property name="stepAction" class="MakeDirectory">
          <property name="fileNameExpression" class="Expression" serializationversion="1">
            <property name="text" class="String">Directory.path+&gt;&gt;newdir&lt;&lt;</property>
          </property>
          <property name="executeInRoboMaker" class="Boolean">true</property>
        </property>
        <property name="elementFinders" idref="12"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment" class="String">Makes a new directory called newdir</property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="6"/>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="20">
        <property name="name" class="String">Load Page</property>
        <property name="stepAction" class="LoadPage2">
          <property name="urlProvider" class="kapow.robot.plugin.common.stepaction.urlprovider2.AttributeURLProvider2" serializationversion="1">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" class="String">Directory.path</property>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="22">
            <property name="SSLUsage" idref="8"/>
            <property name="outputPageIfTimeoutEnabled" class="Boolean">false</property>
            <property name="formatHandling" class="kapow.robot.plugin.common.support.browser2.LegacyFormatHandling">
              <property name="jsonHandling" idref="9"/>
              <property name="transformExcelToHtml" class="Boolean">true</property>
            </property>
            <property name="migrationNotes" class="kapow.robot.plugin.common.support.Text">
              <property name="text" class="String">Default value changed: screenSize 800 x 600 -&gt; 1280 x 1024
Default value changed: userAgentProvider Internet Explorer 8.0 on Windows 7 -&gt; Chrome 27.0 on Windows 7
Default value changed: ignoreLoadErrors false -&gt; true</property>
            </property>
            <property name="ancestorProvider" idref="10"/>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="6"/>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="21">
        <property name="name" class="String">Rename File</property>
        <property name="stepAction" class="RenameFile">
          <property name="fileNameExpression" class="Expression" serializationversion="1">
            <property name="text" class="String">Directory.path+&gt;&gt;writefile_copy.txt&lt;&lt;</property>
          </property>
          <property name="newNameExpression" class="Expression" serializationversion="1">
            <property name="text" class="String">&gt;&gt;writefile_rename.txt&lt;&lt;</property>
          </property>
          <property name="executeInRoboMaker" class="Boolean">true</property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$IgnoreAndContinue"/>
        </property>
        <property name="comment" class="String">Renames writefile_copy.txt to writefile_rename.txt</property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="6"/>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="22">
        <property name="name" class="String">Load Page</property>
        <property name="stepAction" class="LoadPage2">
          <property name="urlProvider" class="kapow.robot.plugin.common.stepaction.urlprovider2.AttributeURLProvider2" serializationversion="1">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" class="String">Directory.path</property>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="22">
            <property name="SSLUsage" idref="8"/>
            <property name="outputPageIfTimeoutEnabled" class="Boolean">false</property>
            <property name="formatHandling" class="kapow.robot.plugin.common.support.browser2.LegacyFormatHandling">
              <property name="jsonHandling" idref="9"/>
              <property name="transformExcelToHtml" class="Boolean">true</property>
            </property>
            <property name="migrationNotes" class="kapow.robot.plugin.common.support.Text">
              <property name="text" class="String">Default value changed: screenSize 800 x 600 -&gt; 1280 x 1024
Default value changed: userAgentProvider Internet Explorer 8.0 on Windows 7 -&gt; Chrome 27.0 on Windows 7
Default value changed: ignoreLoadErrors false -&gt; true</property>
            </property>
            <property name="ancestorProvider" idref="10"/>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="6"/>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="23">
        <property name="name" class="String">For Each File</property>
        <property name="stepAction" class="ForEachFile">
          <property name="directoryNameExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" class="String">Directory.path</property>
            </property>
          </property>
          <property name="fileNameAttribute" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" idref="0"/>
          </property>
        </property>
        <property name="elementFinders" idref="12"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment" class="String">Sequentially stores the filename of all files in the given directory into the variable filename.</property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="6"/>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="24">
        <property name="name" class="String">Load Page</property>
        <property name="stepAction" class="LoadPage2">
          <property name="urlProvider" class="kapow.robot.plugin.common.stepaction.urlprovider2.AttributeURLProvider2" serializationversion="1">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" idref="0"/>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="22">
            <property name="SSLUsage" idref="8"/>
            <property name="outputPageIfTimeoutEnabled" class="Boolean">false</property>
            <property name="formatHandling" class="kapow.robot.plugin.common.support.browser2.LegacyFormatHandling">
              <property name="jsonHandling" idref="9"/>
              <property name="transformExcelToHtml" class="Boolean">true</property>
            </property>
            <property name="migrationNotes" class="kapow.robot.plugin.common.support.Text">
              <property name="text" class="String">Default value changed: screenSize 800 x 600 -&gt; 1280 x 1024
Default value changed: userAgentProvider Internet Explorer 8.0 on Windows 7 -&gt; Chrome 27.0 on Windows 7
Default value changed: ignoreLoadErrors false -&gt; true</property>
            </property>
            <property name="ancestorProvider" idref="10"/>
          </property>
        </property>
        <property name="elementFinders" idref="12"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment" class="String">Loads the filename file, which should be writefile_rename.txt.</property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="6"/>
        </property>
      </object>
      <object class="End" id="25"/>
    </steps>
    <blockEndStep class="BlockEndStep"/>
    <edges class="ArrayList">
      <object class="TransitionEdge">
        <from idref="3"/>
        <to idref="4"/>
      </object>
      <object class="TransitionEdge">
        <from idref="4"/>
        <to idref="5"/>
      </object>
      <object class="TransitionEdge">
        <from idref="5"/>
        <to idref="7"/>
      </object>
      <object class="TransitionEdge">
        <from idref="7"/>
        <to idref="11"/>
      </object>
      <object class="TransitionEdge">
        <from idref="11"/>
        <to idref="13"/>
      </object>
      <object class="TransitionEdge">
        <from idref="13"/>
        <to idref="14"/>
      </object>
      <object class="TransitionEdge">
        <from idref="14"/>
        <to idref="15"/>
      </object>
      <object class="TransitionEdge">
        <from idref="15"/>
        <to idref="16"/>
      </object>
      <object class="TransitionEdge">
        <from idref="16"/>
        <to idref="17"/>
      </object>
      <object class="TransitionEdge">
        <from idref="17"/>
        <to idref="18"/>
      </object>
      <object class="TransitionEdge">
        <from idref="18"/>
        <to idref="19"/>
      </object>
      <object class="TransitionEdge">
        <from idref="19"/>
        <to idref="20"/>
      </object>
      <object class="TransitionEdge">
        <from idref="20"/>
        <to idref="21"/>
      </object>
      <object class="TransitionEdge">
        <from idref="21"/>
        <to idref="22"/>
      </object>
      <object class="TransitionEdge">
        <from idref="22"/>
        <to idref="23"/>
      </object>
      <object class="TransitionEdge">
        <from idref="23"/>
        <to idref="24"/>
      </object>
      <object class="TransitionEdge">
        <from idref="24"/>
        <to idref="25"/>
      </object>
    </edges>
  </property>
  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="22"/>
</object>
