<?xml version="1.0" encoding="UTF-8" ?>
<object class="GenericRobot2" serializationversion="1">
  <prologue>
    <saved-by-versions>
      <version>7.2</version>
      <version>9.1.2</version>
    </saved-by-versions>
    <referenced-types>
      <type name="RestService"/>
      <type name="ISIS"/>
    </referenced-types>
    <referenced-snippets>
      <snippet name="DoubRest"/>
    </referenced-snippets>
    <typed-variables>
      <typed-variable name="ISIS" type-name="ISIS"/>
      <typed-variable name="Rest" type-name="RestService"/>
    </typed-variables>
    <global-variables/>
    <parameters/>
    <return-variables/>
    <store-in-database-variables/>
  </prologue>
  <property name="variables" class="Variables">
    <object class="Variable" serializationversion="1">
        <property name="name" class="String">Rest</property>
        <property name="initialAssignment" class="InitialVariableAssignment">
          <property name="type" class="TypeReference" serializationversion="0">
            <property name="typeName" class="String">RestService</property>
          </property>
        </property>
      </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String" id="0">ISIS</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" idref="0"/>
        </property>
      </property>
    </object>
  <object class="Variable" serializationversion="1">
      <property name="name" class="String" id="1">DBKey</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="SimpleTypeReference">
          <property name="simpleTypeId" class="Integer">13</property>
        </property>
      </property>
    </object>
  </property>
  <property name="proxyServerConfiguration" class="kapow.util.net.ProxyServerConfiguration" serializationversion="0"/>
  <property name="httpClientType" class="HttpClientType">
    <property name="enum-name" class="String">APACHE</property>
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
        <property name="name" class="String" id="4">Load Page</property>
        <property name="stepAction" class="LoadPage">
          <property name="urlProvider" class="kapow.robot.plugin.common.support.url.provider.SpecifiedURLProvider">
            <property name="url" class="String">http://www.elmetropolitano.net/</property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="14">
            <property name="SSLUsage" class="com.kapowtech.net.ssl.SSLUsage" id="5">
              <property name="useTLSv1" class="Boolean">false</property>
            </property>
            <property name="userAgentProvider" class="kapow.robot.plugin.common.support.browser2.PredefinedUserAgentProvider" id="6">
              <property name="userAgent" class="com.kapowtech.net.UserAgent">
                <property name="appCodeName" class="String">Mozilla</property>
                <property name="appMinorVersion" class="String">0</property>
                <property name="appName" class="String">Microsoft Internet Explorer</property>
                <property name="appVersion" class="String">4.0 (compatible; MSIE 7.0; Windows NT 5.1)</property>
                <property name="displayName" class="String">Internet Explorer 7.0 on Windows XP</property>
                <property name="name" class="String">IE_70_WinXP</property>
                <property name="platform" class="String">Win32</property>
                <property name="userAgentHeaderValue" class="String">Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1)</property>
              </property>
            </property>
            <property name="maxWindowDepth">
              <null/>
            </property>
            <property name="jsonHandling" class="com.kapowtech.browser.documentparser.JSONHandling" id="7">
              <property name="enum-name" class="String">TRANSFORM_TO_HTML</property>
            </property>
            <property name="transformXmlToHtml" class="Boolean">true</property>
            <property name="csvHandling" class="com.kapowtech.browser.documentparser.CSVHandling" id="8">
              <property name="enum-name" class="String">TRANSFORM_TO_TEXT</property>
            </property>
            <property name="absolutePositioningEnabled" class="Boolean">true</property>
            <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider" id="9"/>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList" id="10"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="1"/>
      </object>
      <object class="Transition" serializationversion="0" id="11">
        <property name="name" class="String">Category Links</property>
        <property name="stepAction" class="ForEachURL">
          <property name="include" class="Boolean">true</property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div</property>
            </property>
            <property name="attributeName" class="String">id</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">topicsmenu</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="changedProperties" class="java.util.HashSet">
            <element class="String" id="12">reportingViaLog</element>
            <element class="String" id="13">reportingViaAPI</element>
          </property>
          <property name="reportingViaAPI" class="Boolean">false</property>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="1"/>
      </object>
      <object class="Transition" serializationversion="0" id="14">
        <property name="name" class="String">Click Category</property>
        <property name="stepAction" class="Click">
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="14">
            <property name="SSLUsage" idref="5"/>
            <property name="userAgentProvider" idref="6"/>
            <property name="maxWindowDepth">
              <null/>
            </property>
            <property name="jsonHandling" idref="7"/>
            <property name="transformXmlToHtml" class="Boolean">true</property>
            <property name="csvHandling" idref="8"/>
            <property name="absolutePositioningEnabled" class="Boolean">true</property>
            <property name="ancestorProvider" idref="9"/>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="referenceNodeRelation" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.relation.InReferenceNodeRelation">
              <property name="referenceNodeIndex" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.ReferenceNodeIndex"/>
            </property>
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">*</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="changedProperties" class="java.util.HashSet">
            <element idref="12"/>
            <element idref="13"/>
          </property>
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="1"/>
      </object>
      <object class="Transition" serializationversion="0" id="15">
        <property name="name" class="String">Article Links</property>
        <property name="stepAction" class="ForEachURL">
          <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
            <property name="value" class="String">http://www.elmetropolitano.com.gt/es/\d+/.*/\d+/.*.htm</property>
          </property>
          <property name="include" class="Boolean">true</property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.body</property>
            </property>
            <property name="matchAgainst" class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.AbstractDefaultNodeFinder$PatternMatchTextType" id="16">
              <property name="enum-name" class="String">HTML</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="changedProperties" class="java.util.HashSet">
            <element idref="12"/>
            <element idref="13"/>
          </property>
          <property name="reportingViaAPI" class="Boolean">false</property>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="1"/>
      </object>
      <object class="Transition" serializationversion="0" id="17">
        <property name="name" idref="4"/>
        <property name="stepAction" class="LoadPage">
          <property name="urlProvider" class="kapow.robot.plugin.common.support.url.provider.AttributeValueURLProvider" serializationversion="1">
            <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" class="String">ISIS.url</property>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="14">
            <property name="SSLUsage" idref="5"/>
            <property name="userAgentProvider" idref="6"/>
            <property name="maxWindowDepth">
              <null/>
            </property>
            <property name="jsonHandling" idref="7"/>
            <property name="transformXmlToHtml" class="Boolean">true</property>
            <property name="csvHandling" idref="8"/>
            <property name="absolutePositioningEnabled" class="Boolean">true</property>
            <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
          </property>
        </property>
        <property name="nodeFinderList" idref="10"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="changedProperties" class="java.util.HashSet">
            <element idref="12"/>
            <element idref="13"/>
          </property>
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="1"/>
      </object>
      <object class="Transition" serializationversion="0" id="18">
        <property name="name" class="String">Extract URL</property>
        <property name="stepAction" class="ExtractURL">
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">ISIS.url</property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="14">
            <property name="SSLUsage" idref="5"/>
            <property name="userAgentProvider" idref="6"/>
            <property name="maxWindowDepth">
              <null/>
            </property>
            <property name="jsonHandling" idref="7"/>
            <property name="transformXmlToHtml" class="Boolean">true</property>
            <property name="csvHandling" idref="8"/>
            <property name="absolutePositioningEnabled" class="Boolean">true</property>
            <property name="ancestorProvider" idref="9"/>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="referenceNodeRelation" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.relation.InReferenceNodeRelation">
              <property name="referenceNodeIndex" class="kapow.robot.robomaker.state.document.nodefinder.referencenode.ReferenceNodeIndex"/>
            </property>
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">*</property>
            </property>
            <property name="matchAgainst" idref="16"/>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="1"/>
      </object>
      <object class="Transition" serializationversion="0" id="19">
        <property name="name" class="String">Body</property>
        <property name="stepAction" class="Extract" serializationversion="1">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.StructuredTextOutputtingHTMLDOMToTextConverter"/>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">ISIS.articleText</property>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div.div.div.div.div.div.div</property>
            </property>
            <property name="attributeName" class="String">class</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">articlecontent</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="1"/>
      </object>
      <object class="Transition" serializationversion="0" id="20">
        <property name="name" class="String">Query Database</property>
        <property name="stepAction" class="QueryDatabase2" serializationversion="1">
          <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameValueStringExpression">
            <property name="value" class="kapow.util.db.DBName">
              <property name="name" class="String" id="21">ObjectInfoDB</property>
            </property>
          </property>
          <property name="sql" class="String">"SELECT * FROM ISIS WHERE md5_url = md5('" + ISIS.url + "')"</property>
          <property name="columnAttributeMappings" class="kapow.robot.plugin.common.support.database.ColumnAttributeMappings">
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">url</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">ISIS.url</property>
              </property>
            </object>
          </property>
          <property name="retrieveWhileLooping" class="Boolean">false</property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="1"/>
      </object>
      <object class="Transition" serializationversion="0" id="22">
        <property name="name" class="String">Title</property>
        <property name="stepAction" class="Extract" serializationversion="1">
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">ISIS.articleTitle</property>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div.div.div.div.div.div.div.h1</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="1"/>
      </object>
      <object class="Transition" serializationversion="0" id="23">
        <property name="name" class="String">Date</property>
        <property name="stepAction" class="Extract" serializationversion="1">
          <property name="dataConverters" class="DataConverters">
            <element class="ExtractDate">
              <property name="formats" class="BeanList">
                <object class="kapow.robot.plugin.common.stringprocessor.datefetcher.PatternBasedDateFormatSpecification">
                  <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.DateExtractorPatternValueStringExpression">
                    <property name="value" class="String">dd.MM.yyyy</property>
                  </property>
                </object>
              </property>
            </element>
            <element class="FormatDate">
              <property name="pattern" class="String">dd MMM yyyy 00:00:00</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">ISIS.articleDate</property>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList">
          <object class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.DefaultReferenceNodeAwareNodeFinder" serializationversion="3">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div.div.div.div.div.div.div.table.*.td</property>
            </property>
            <property name="attributeName" class="String">class</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">apiPublished</property>
            </property>
            <property name="matchAgainst" idref="16"/>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="1"/>
      </object>
      <object class="Transition" serializationversion="0" id="24">
        <property name="name" class="String">Default Date</property>
        <property name="stepAction" class="AssignVariable" serializationversion="2">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
            <property name="dataConverters" class="DataConverters">
              <element class="EvaluateExpression" serializationversion="0">
                <property name="expression" class="String">now()</property>
              </element>
              <element class="FormatDate">
                <property name="pattern" class="String">dd MMM yyyy 00:00:00</property>
              </element>
            </property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">ISIS.articleDate</property>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="1"/>
      </object>
      <object class="Transition" serializationversion="0" id="26">
        <property name="name" class="String">Assign Variable</property>
        <property name="stepAction" class="AssignVariable" serializationversion="2">
          <property name="stringExpr" class="Expression" serializationversion="1">
            <property name="text" class="String">Robot.name</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">ISIS.SourceID</property>
          </property>
        </property>
        <property name="nodeFinderList" class="NodeFinderList"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="1"/>
      </object>
      <object class="Try" id="29"/>
      <object class="Try" id="30"/>
      <object class="Try" id="31"/>
      <object class="Try" id="32"/>
      <object class="End" id="34"/>
      <object class="End" id="35"/>
      <object class="SnippetStep" id="38">
        <name>
          <null/>
        </name>
        <snippetName class="String">DoubRest</snippetName>
       <snippetStepComment>
          <null/>
        </snippetStepComment>
      </object>
    </steps>
    <blockEndStep class="BlockEndStep"/>
    <edges class="ArrayList">
      <object class="TransitionEdge">
        <from idref="2"/>
        <to idref="26"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="3"/>
        <to idref="11"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="11"/>
        <to idref="14"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="14"/>
        <to idref="15"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="15"/>
        <to idref="18"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="17"/>
        <to idref="22"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="18"/>
        <to idref="29"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="19"/>
        <to idref="31"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="20"/>
        <to idref="32"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="22"/>
        <to idref="30"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="23"/>
        <to idref="19"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="24"/>
        <to idref="19"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="26"/>
        <to idref="3"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="29"/>
        <to idref="20"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="29"/>
         <to idref="17"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="30"/>
        <to idref="23"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="30"/>
        <to idref="24"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="32"/>
        <to idref="35"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="31"/>
        <to idref="38"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="38"/>
        <to idref="34"/>
        <attachment>
          <null/>
        </attachment>
      </object>
    </edges>
  </property>
  <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecification" serializationversion="14">
    <property name="SSLUsage" class="com.kapowtech.net.ssl.SSLUsage">
      <property name="useTLSv1" class="Boolean">false</property>
    </property>
    <property name="userAgentProvider" class="kapow.robot.plugin.common.support.browser2.PredefinedUserAgentProvider">
      <property name="userAgent" class="com.kapowtech.net.UserAgent">
        <property name="appCodeName" class="String">Mozilla</property>
        <property name="appMinorVersion" class="String"/>
        <property name="appName" class="String">Netscape</property>
        <property name="appVersion" class="String">5.0 (Windows; en-US)</property>
        <property name="displayName" class="String">Firefox 2.0 on Windows XP</property>
        <property name="name" class="String">Firefox_20_WinXP</property>
        <property name="platform" class="String">Win32</property>
        <property name="userAgentHeaderValue" class="String">Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8) Gecko/20061010 Firefox/2.0</property>
      </property>
    </property>
    <property name="followMetaRedirects" class="Boolean">false</property>
    <property name="xSLStyleSheetEnabled" class="Boolean">false</property>
    <property name="loadFrames" class="Boolean">false</property>
    <property name="loadUnsupported" class="Boolean">false</property>
    <property name="maxWindowDepth">
      <null/>
    </property>
    <property name="executeJavaScript" class="Boolean">false</property>
    <property name="jsonHandling" idref="7"/>
    <property name="transformXmlToHtml" class="Boolean">true</property>
    <property name="csvHandling" idref="8"/>
    <property name="absolutePositioningEnabled" class="Boolean">true</property>
    <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.RobotDefaultBrowserConfigurationSpecificationAncestorProvider"/>
  </property>
</object>
