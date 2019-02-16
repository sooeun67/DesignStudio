<?xml version="1.0" encoding="UTF-8" ?>
<object class="GenericRobot2" serializationversion="1">
  <prologue>
    <saved-by-versions>
      <version>9.3.9</version>
    </saved-by-versions>
    <referenced-types/>
    <referenced-snippets>
      <snippet name="Trim and Default"/>
      <snippet name="SkipIfAlreadyExtracted"/>
      <snippet name="Load Source URL"/>
    </referenced-snippets>
    <typed-variables/>
    <global-variables/>
    <parameters/>
    <return-variables>
      <variable name="ISIS"/>
    </return-variables>
    <store-in-database-variables/>
    <browser-engine>CLASSIC</browser-engine>
  </prologue>
  <property name="variables" class="Variables"/>
  <property name="proxyServerConfiguration" class="ProxyServerConfiguration" serializationversion="0"/>
  <property name="httpClientType" class="HttpClientType">
    <property name="enum-name" class="String">APACHE</property>
  </property>
  <property name="ntlmAuthentication" class="NTLMAuthenticationType">
    <property name="enum-name" class="String">STANDARD</property>
  </property>
  <property name="privateHTTPCacheEnabled" class="Boolean" id="0">true</property>
  <property name="privateHTTPCacheSize" class="Integer">2048</property>
  <property name="comment">
    <null/>
  </property>
  <property name="id" class="Integer">-1</property>
  <property name="transitionGraph" class="Body">
    <blockBeginStep class="BlockBeginStep" id="1"/>
    <steps class="ArrayList">
      <object class="Transition" serializationversion="0" id="2">
        <property name="name" class="String">Source URL</property>
        <property name="stepAction" class="AssignVariable" serializationversion="2">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">http://www.periodicoexpress.com.mx/</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Source_URL</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="0"/>
      </object>
      <object class="SnippetStep" id="3">
        <name>
          <null/>
        </name>
        <snippetName class="String">Load Source URL</snippetName>
        <snippetStepComment>
          <null/>
        </snippetStepComment>
      </object>
      <object class="Transition" serializationversion="0" id="4">
        <property name="name" class="String">For Each URL</property>
        <property name="stepAction" class="ForEachURL" serializationversion="0">
          <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
            <property name="value" class="String">.*\?id=\d+</property>
          </property>
          <property name="include" class="Boolean">true</property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String" id="5">*</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="0"/>
      </object>
      <object class="Transition" serializationversion="0" id="6">
        <property name="name" class="String">Extract URL</property>
        <property name="stepAction" class="ExtractURL">
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">ISIS.url</property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecificationClassic" serializationversion="17">
            <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
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
              <property name="value" idref="5"/>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="0"/>
      </object>
      <object class="SnippetStep" id="7">
        <name>
          <null/>
        </name>
        <snippetName class="String">SkipIfAlreadyExtracted</snippetName>
        <snippetStepComment>
          <null/>
        </snippetStepComment>
      </object>
      <object class="Transition" serializationversion="0" id="8">
        <property name="name" class="String">Load Page</property>
        <property name="stepAction" class="LoadPage">
          <property name="urlProvider" class="kapow.robot.plugin.common.support.url.provider.AttributeValueURLProvider" serializationversion="1">
            <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" class="String">ISIS.url</property>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecificationClassic" serializationversion="17">
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
            <property name="xSLStyleSheetEnabled" class="Boolean">false</property>
            <property name="loadFrames" class="Boolean">false</property>
            <property name="loadUnsupported" class="Boolean">false</property>
            <property name="maxWindowDepth">
              <null/>
            </property>
            <property name="executeJavaScript" class="Boolean">false</property>
            <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="changedProperties" class="java.util.HashSet">
            <element class="String">reportingViaLog</element>
            <element class="String">reportingViaAPI</element>
          </property>
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="0"/>
      </object>
      <object class="Transition" serializationversion="0" id="9">
        <property name="name" class="String">Extract Article Title</property>
        <property name="stepAction" class="Extract" serializationversion="1">
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">ISIS.articleTitle</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div.div.div.h1</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="0"/>
      </object>
      <object class="Transition" serializationversion="0" id="10">
        <property name="name" class="String">Date</property>
        <property name="stepAction" class="Extract" serializationversion="1">
          <property name="dataConverters" class="DataConverters">
            <element class="ExtractDate">
              <property name="formats" class="BeanList">
                <object class="kapow.robot.plugin.common.stringprocessor.datefetcher.PatternBasedDateFormatSpecification">
                  <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.DateExtractorPatternValueStringExpression">
                    <property name="value" class="String">yyy / MM / dd</property>
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
        <property name="elementFinders" class="ElementFinders">
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div.div.div.p.strong</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$IgnoreAndContinue"/>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="0"/>
      </object>
      <object class="SnippetStep" id="11">
        <name>
          <null/>
        </name>
        <snippetName class="String">Trim and Default</snippetName>
        <snippetStepComment>
          <null/>
        </snippetStepComment>
      </object>
      <object class="Transition" serializationversion="0" id="12">
        <property name="name" class="String">Extract Body</property>
        <property name="stepAction" class="Extract" serializationversion="1">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.StructuredTextOutputtingHTMLDOMToTextConverter"/>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">ISIS.articleText</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div.div.div.h2</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$IgnoreAndContinue"/>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="0"/>
      </object>
      <object class="Transition" serializationversion="0" id="13">
        <property name="name" class="String">Extract Body</property>
        <property name="stepAction" class="Extract" serializationversion="1">
          <property name="nodeListFinder" class="kapow.robot.plugin.common.support.vtopia.nodelistfinder.ElementFinderIndexPairNodeListFinder">
            <property name="fromIndex" class="ElementFinderIndex"/>
            <property name="toIndex" class="ElementFinderIndex">
              <property name="index" class="Integer">1</property>
            </property>
          </property>
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.StructuredTextOutputtingHTMLDOMToTextConverter"/>
          <property name="dataConverters" class="DataConverters">
            <element class="EvaluateExpression" serializationversion="0">
              <property name="expression" class="String">ISIS.articleText+"

"+INPUT</property>
            </element>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">ISIS.articleText</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">p.strong</property>
            </property>
            <property name="nodePattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
              <property name="value" class="String">\d{4} / \d{2} / \d{2}</property>
            </property>
          </object>
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div.div</property>
            </property>
            <property name="attributeName" class="String">class</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">footer</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="0"/>
      </object>
      <object class="Transition" serializationversion="0" id="14">
        <property name="name" class="String">Return Value</property>
        <property name="stepAction" class="ReturnVariable" serializationversion="1">
          <property name="variableName" class="kapow.robot.plugin.common.support.VariableName">
            <property name="name" class="String">ISIS</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="0"/>
      </object>
      <object class="End" id="15"/>
    </steps>
    <blockEndStep class="BlockEndStep"/>
    <edges class="ArrayList">
      <object class="TransitionEdge">
        <from idref="1"/>
        <to idref="2"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="2"/>
        <to idref="3"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="3"/>
        <to idref="4"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="4"/>
        <to idref="6"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="6"/>
        <to idref="7"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="7"/>
        <to idref="8"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="8"/>
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
      <object class="TransitionEdge">
        <from idref="14"/>
        <to idref="15"/>
        <attachment>
          <null/>
        </attachment>
      </object>
    </edges>
  </property>
  <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecificationClassic" serializationversion="17">
    <property name="followMetaRedirects" class="Boolean">false</property>
    <property name="xSLStyleSheetEnabled" class="Boolean">false</property>
    <property name="usePreloading" class="Boolean">false</property>
    <property name="loadFrames" class="Boolean">false</property>
    <property name="loadUnsupported" class="Boolean">false</property>
    <property name="blockUrls" class="Boolean">false</property>
    <property name="executeJavaScript" class="Boolean">false</property>
    <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.RobotDefaultBrowserConfigurationSpecificationAncestorProvider"/>
  </property>
</object>
