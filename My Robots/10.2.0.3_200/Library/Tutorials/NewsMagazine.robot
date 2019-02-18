<?xml version="1.0" encoding="UTF-8" ?>
<object class="GenericRobot2" serializationversion="1">
  <prologue>
    <saved-by-versions>
      <version>9.3.0</version>
    </saved-by-versions>
    <referenced-types>
      <type name="Post"/>
    </referenced-types>
    <referenced-snippets/>
    <typed-variables>
      <typed-variable name="post" type-name="Post"/>
    </typed-variables>
    <global-variables/>
    <parameters/>
    <return-variables>
      <variable name="post"/>
    </return-variables>
    <store-in-database-variables/>
    <browser-engine>WEBKIT</browser-engine>
  </prologue>
  <property name="variables" class="Variables">
    <object class="Variable" serializationversion="1">
      <property name="name" class="String" id="0">post</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">Post</property>
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
  <property name="privateHTTPCacheEnabled" class="Boolean" id="1">true</property>
  <property name="privateHTTPCacheSize" class="Integer">2048</property>
  <property name="comment">
    <null/>
  </property>
  <property name="id" class="Integer">-1</property>
  <property name="transitionGraph" class="Body">
    <blockBeginStep class="BlockBeginStep" id="2"/>
    <steps class="ArrayList">
      <object class="Transition" serializationversion="0" id="3">
        <property name="name" class="String">Load Page</property>
        <property name="stepAction" class="LoadPage2">
          <property name="urlProvider" class="kapow.robot.plugin.common.stepaction.urlprovider2.ValueURLProvider2">
            <property name="URL" class="String">http://kapowsoftware.com/tutorial/news-magazine/index.html</property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecificationWebKit" serializationversion="17">
            <property name="userAgentProvider" class="kapow.robot.plugin.common.support.browser2.PredefinedUserAgentProvider" id="4">
              <property name="userAgent" class="com.kapowtech.net.UserAgent">
                <property name="appCodeName" class="String">Mozilla</property>
                <property name="appMinorVersion" class="String">0</property>
                <property name="appName" class="String">Microsoft Internet Explorer</property>
                <property name="appVersion" class="String">4.0 (compatible; MSIE 7.0; Windows NT 6.0)</property>
                <property name="displayName" class="String">Internet Explorer 7.0 on Windows Vista</property>
                <property name="name" class="String">IE_70_WinVista</property>
                <property name="platform" class="String">Win32</property>
                <property name="userAgentHeaderValue" class="String">Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0)</property>
              </property>
            </property>
            <property name="jsonHandling" class="com.kapowtech.browser.documentparser.JSONHandling" id="5">
              <property name="enum-name" class="String">TRANSFORM_TO_HTML</property>
            </property>
            <property name="transformExcelToHtml" class="Boolean">true</property>
            <property name="csvHandling" class="com.kapowtech.browser.documentparser.CSVHandling" id="6">
              <property name="enum-name" class="String">TRANSFORM_TO_TEXT</property>
            </property>
            <property name="migrationNotes" class="kapow.robot.plugin.common.support.Text">
              <property name="text" class="String">Default value changed: screenSize 800 x 600 -&gt; 1280 x 1024
Default value changed: ignoreLoadErrors false -&gt; true
Property changed and no longer supported: absolutePositioningEnabled true
Property changed and no longer supported: maxWindowDepth null</property>
            </property>
            <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider" id="7"/>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders" id="8"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="1"/>
      </object>
      <object class="Transition" serializationversion="0" id="9">
        <property name="name" class="String">Click Most Recent</property>
        <property name="stepAction" class="Click">
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecificationWebKit" serializationversion="17">
            <property name="userAgentProvider" idref="4"/>
            <property name="jsonHandling" idref="5"/>
            <property name="transformExcelToHtml" class="Boolean">true</property>
            <property name="csvHandling" idref="6"/>
            <property name="migrationNotes" class="kapow.robot.plugin.common.support.Text">
              <property name="text" class="String">Default value changed: screenSize 800 x 600 -&gt; 1280 x 1024
Default value changed: ignoreLoadErrors false -&gt; true
Property changed and no longer supported: absolutePositioningEnabled true
Property changed and no longer supported: maxWindowDepth null</property>
            </property>
            <property name="ancestorProvider" idref="7"/>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div.div.div.ul.li[1].a</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="1"/>
      </object>
      <object class="Transition" serializationversion="0" id="10">
        <property name="name" class="String">For Each Tag</property>
        <property name="stepAction" class="ForEachTag" serializationversion="0">
          <property name="tag" class="String">div</property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div.div.div</property>
            </property>
            <property name="attributeName" class="String">class</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">content</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="1"/>
      </object>
      <object class="Transition" serializationversion="0" id="11">
        <property name="name" class="String">Extract Title</property>
        <property name="stepAction" class="Extract" serializationversion="1">
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">post.title</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="tagRelation" class="InTagRelation" serializationversion="1">
              <property name="tagName" class="ElementName">
                <property name="name" class="String">1</property>
              </property>
            </property>
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.h1</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="1"/>
      </object>
      <object class="Transition" serializationversion="0" id="12">
        <property name="name" class="String">Extract Preview</property>
        <property name="stepAction" class="Extract" serializationversion="1">
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">post.preview</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="tagRelation" class="InTagRelation" serializationversion="1">
              <property name="tagName" class="ElementName">
                <property name="name" class="String">1</property>
              </property>
            </property>
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.p.text</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="1"/>
      </object>
      <object class="Transition" serializationversion="0" id="13">
        <property name="name" class="String">Return Value</property>
        <property name="stepAction" class="ReturnVariable" serializationversion="1">
          <property name="variableName" class="kapow.robot.plugin.common.support.VariableName">
            <property name="name" idref="0"/>
          </property>
        </property>
        <property name="elementFinders" idref="8"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="1"/>
      </object>
      <object class="End" id="14"/>
    </steps>
    <blockEndStep class="BlockEndStep"/>
    <edges class="ArrayList">
      <object class="TransitionEdge">
        <from idref="2"/>
        <to idref="3"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="3"/>
        <to idref="9"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="9"/>
        <to idref="10"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="10"/>
        <to idref="11"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="11"/>
        <to idref="12"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="12"/>
        <to idref="13"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="13"/>
        <to idref="14"/>
        <attachment>
          <null/>
        </attachment>
      </object>
    </edges>
  </property>
  <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecificationWebKit" serializationversion="17">
    <property name="migrationNotes" class="kapow.robot.plugin.common.support.Text">
      <property name="text" class="String">Default value changed: screenSize 800 x 600 -&gt; 1280 x 1024
Default value changed: userAgentProvider Internet Explorer 8.0 on Windows 7 -&gt; Chrome 27.0 on Windows 7
Default value changed: ignoreLoadErrors false -&gt; true</property>
    </property>
    <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecificationWebKit$RobotDefaultAncestorProvider"/>
  </property>
</object>
