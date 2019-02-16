<?xml version="1.0" encoding="UTF-8" ?>
<object class="GenericRobot2" serializationversion="1">
  <prologue>
    <saved-by-versions>
      <version>7.2</version>
      <version>9.1.2</version>
      <version>9.3.9</version>
    </saved-by-versions>
    <referenced-types>
      <type name="ISIS"/>
    </referenced-types>
    <referenced-snippets>
      <snippet name="SkipIfAlreadyExtracted"/>
    </referenced-snippets>
    <typed-variables>
      <typed-variable name="ISIS" type-name="ISIS"/>
    </typed-variables>
    <global-variables/>
    <parameters/>
    <return-variables>
      <variable name="ISIS"/>
    </return-variables>
    <store-in-database-variables/>
    <browser-engine>CLASSIC</browser-engine>
  </prologue>
  <property name="variables" class="Variables">
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">ISIS</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">ISIS</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">DBKey</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="SimpleTypeReference">
          <property name="simpleTypeId" class="Integer">13</property>
        </property>
      </property>
    </object>
  </property>
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
        <property name="name" class="String">Load Page</property>
        <property name="stepAction" class="LoadPage">
          <property name="urlProvider" class="kapow.robot.plugin.common.support.url.provider.SpecifiedURLProvider">
            <property name="url" class="String">http://www.louthleader.co.uk/</property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecificationClassic" serializationversion="17">
            <property name="SSLUsage" class="com.kapowtech.net.ssl.SSLUsage">
              <property name="useTLSv1" class="Boolean">false</property>
            </property>
            <property name="userAgentProvider" class="kapow.robot.plugin.common.support.browser2.PredefinedUserAgentProvider">
              <property name="userAgent" class="com.kapowtech.net.UserAgent">
                <property name="appCodeName" class="String" id="3">Mozilla</property>
                <property name="appMinorVersion" class="String" id="4"/>
                <property name="appName" class="String" id="5">Netscape</property>
                <property name="appVersion" class="String" id="6">5.0 (Windows; en-US)</property>
                <property name="displayName" class="String" id="7">Firefox 2.0 on Windows XP</property>
                <property name="name" class="String" id="8">Firefox_20_WinXP</property>
                <property name="platform" class="String" id="9">Win32</property>
                <property name="userAgentHeaderValue" class="String" id="10">Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8) Gecko/20061010 Firefox/2.0</property>
              </property>
            </property>
            <property name="xSLStyleSheetEnabled" class="Boolean">false</property>
            <property name="loadFrames" class="Boolean">false</property>
            <property name="loadUnsupported" class="Boolean">false</property>
            <property name="maxWindowDepth">
              <null/>
            </property>
            <property name="pagePreprocessingStringProcessorsSpecifier" class="kapow.robot.plugin.common.support.pagechange.AllURLBasedStringProcessorsProvider" serializationversion="0">
              <property name="dataConverters" class="DataConverters">
                <element class="ReplaceText">
                  <property name="textToReplace" class="String">&amp; </property>
                  <property name="replacementText" class="String">&amp;amp;</property>
                </element>
              </property>
            </property>
            <property name="executeJavaScript" class="Boolean">false</property>
            <property name="jsonHandling" class="com.kapowtech.browser.documentparser.JSONHandling">
              <property name="enum-name" class="String">TRANSFORM_TO_HTML</property>
            </property>
            <property name="transformXmlToHtml" class="Boolean">true</property>
            <property name="transformExcelToHtml" class="Boolean">true</property>
            <property name="csvHandling" class="com.kapowtech.browser.documentparser.CSVHandling">
              <property name="enum-name" class="String">TRANSFORM_TO_TEXT</property>
            </property>
            <property name="absolutePositioningEnabled" class="Boolean">true</property>
            <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">pagePreprocessingStringProcessorsSpecifier</element>
            </property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="0"/>
      </object>
      <object class="Transition" serializationversion="0" id="11">
        <property name="name" class="String">RSS Links</property>
        <property name="stepAction" class="ForEachURL" serializationversion="0">
          <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
            <property name="value" class="String">http://.*/rss/.*</property>
          </property>
          <property name="include" class="Boolean">true</property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.body</property>
            </property>
            <property name="matchAgainst" class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.AbstractDefaultDOMElementFinder$PatternMatchTextType">
              <property name="enum-name" class="String">HTML</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="changedProperties" class="java.util.HashSet">
            <element class="String">reportingViaAPI</element>
          </property>
          <property name="reportingViaAPI" class="Boolean">false</property>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="0"/>
      </object>
      <object class="Transition" serializationversion="0" id="12">
        <property name="name" class="String">Load Page (from link)</property>
        <property name="stepAction" class="LoadPage2">
          <property name="urlProvider" class="kapow.robot.plugin.common.stepaction.urlprovider2.FoundTagURLProvider2"/>
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
              <property name="value" class="String">*</property>
            </property>
          </object>
        </property>
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
      <object class="Transition" serializationversion="0" id="13">
        <property name="name" class="String">For Each Tag</property>
        <property name="stepAction" class="ForEachTag" serializationversion="0">
          <property name="tag" class="String">item</property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.channel</property>
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
        <property name="name" class="String">Extract URL</property>
        <property name="stepAction" class="Extract" serializationversion="1">
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">ISIS.url</property>
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
              <property name="value" class="String">.*.link</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="0"/>
      </object>
      <object class="SnippetStep" id="15">
        <name>
          <null/>
        </name>
        <snippetName class="String">SkipIfAlreadyExtracted</snippetName>
        <snippetStepComment>
          <null/>
        </snippetStepComment>
      </object>
      <object class="Transition" serializationversion="0" id="16">
        <property name="name" class="String">Extract Article Title</property>
        <property name="stepAction" class="Extract" serializationversion="1">
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">ISIS.articleTitle</property>
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
              <property name="value" class="String">.*.title</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="0"/>
      </object>
      <object class="Try" id="17"/>
      <object class="Transition" serializationversion="0" id="18">
        <property name="name" class="String">Date</property>
        <property name="stepAction" class="Extract" serializationversion="1">
          <property name="dataConverters" class="DataConverters">
            <element class="ExtractDate">
              <property name="formats" class="BeanList">
                <object class="kapow.robot.plugin.common.stringprocessor.datefetcher.PatternBasedDateFormatSpecification">
                  <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.DateExtractorPatternValueStringExpression">
                    <property name="value" class="String">dd MM yyyy HH:mm:ss Z</property>
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
            <property name="tagRelation" class="InTagRelation" serializationversion="1">
              <property name="tagName" class="ElementName">
                <property name="name" class="String">1</property>
              </property>
            </property>
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.pubdate</property>
            </property>
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
        <property name="enabled" idref="0"/>
      </object>
      <object class="Transition" serializationversion="0" id="19">
        <property name="name" class="String">Test Variables ???</property>
        <property name="stepAction" class="TestVariables" serializationversion="0">
          <property name="conditions" class="kapow.robot.plugin.common.stateprocessor.attributefilter.AttributeFilterConditions">
            <object class="kapow.robot.plugin.common.stateprocessor.attributefilter.AttributeFilterCondition">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
                <property name="name" class="String" id="20">ISIS.articleDate</property>
              </property>
              <property name="expression" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
                <property name="dataConverters" class="DataConverters">
                  <element class="EvaluateExpression" serializationversion="0">
                    <property name="expression" class="String">now()</property>
                  </element>
                  <element class="FormatDate">
                    <property name="pattern" class="String">dd MMM yyyy 00:00:00</property>
                  </element>
                </property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.stateprocessor.attributefilter.AttributeFilterCondition">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
                <property name="name" class="String">ISIS.articleDate</property>
              </property>
              <property name="expression" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
                <property name="dataConverters" class="DataConverters">
                  <element class="EvaluateExpression" serializationversion="0">
                    <property name="expression" class="String">now()</property>
                  </element>
                  <element class="ModifyDate">
                    <property name="add" class="Boolean">false</property>
                  </element>
                  <element class="FormatDate">
                    <property name="pattern" class="String">dd MMM yyyy 00:00:00</property>
                  </element>
                </property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.stateprocessor.attributefilter.AttributeFilterCondition">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
                <property name="name" class="String">ISIS.articleDate</property>
              </property>
              <property name="expression" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
                <property name="dataConverters" class="DataConverters">
                  <element class="EvaluateExpression" serializationversion="0">
                    <property name="expression" class="String">now()</property>
                  </element>
                  <element class="ModifyDate">
                    <property name="amount" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">2</property>
                    </property>
                    <property name="add" class="Boolean">false</property>
                  </element>
                  <element class="FormatDate">
                    <property name="pattern" class="String">dd MMM yyyy 00:00:00</property>
                  </element>
                </property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.stateprocessor.attributefilter.AttributeFilterCondition">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName">
                <property name="name" idref="20"/>
              </property>
              <property name="expression" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
                <property name="dataConverters" class="DataConverters">
                  <element class="EvaluateExpression" serializationversion="0">
                    <property name="expression" class="String">now()</property>
                  </element>
                  <element class="ModifyDate"/>
                  <element class="FormatDate">
                    <property name="pattern" class="String">dd MMM yyyy 00:00:00</property>
                  </element>
                </property>
              </property>
            </object>
          </property>
          <property name="mode" class="Integer">2</property>
          <property name="generateErrorWhenStopping" class="Boolean">false</property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" class="Boolean">false</property>
      </object>
      <object class="Transition" serializationversion="0" id="21">
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
                <property name="appCodeName" idref="3"/>
                <property name="appMinorVersion" idref="4"/>
                <property name="appName" idref="5"/>
                <property name="appVersion" idref="6"/>
                <property name="displayName" idref="7"/>
                <property name="name" idref="8"/>
                <property name="platform" idref="9"/>
                <property name="userAgentHeaderValue" idref="10"/>
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
      <object class="Transition" serializationversion="0" id="22">
        <property name="name" class="String"> Body</property>
        <property name="stepAction" class="Extract" serializationversion="1">
          <property name="nodeListFinder" class="kapow.robot.plugin.common.support.vtopia.nodelistfinder.ElementFinderIndexPairNodeListFinder">
            <property name="fromIndex" class="ElementFinderIndex"/>
            <property name="includeFrom" class="Boolean">true</property>
            <property name="toIndex" class="ElementFinderIndex">
              <property name="index" class="Integer">1</property>
            </property>
          </property>
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.StructuredTextOutputtingHTMLDOMToTextConverter"/>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">ISIS.articleText</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div.div.h3</property>
            </property>
            <property name="attributeName" class="String" id="23">class</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">article__lead</property>
            </property>
          </object>
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div.div.div</property>
            </property>
            <property name="attributeName" idref="23"/>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">second-slot</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="0"/>
      </object>
      <object class="Transition" serializationversion="0" id="24">
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
      <object class="End" id="25"/>
      <object class="Transition" serializationversion="0" id="26">
        <property name="name" class="String">Default Date</property>
        <property name="stepAction" class="AssignVariable" serializationversion="2">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
            <property name="dataConverters" class="DataConverters">
              <element class="EvaluateExpression" serializationversion="0">
                <property name="expression" class="String">length(ISIS.articleDate) &gt;0 ?ISIS.articleDate :  now()</property>
              </element>
              <element class="ExtractDate">
                <property name="formats" class="BeanList">
                  <object class="kapow.robot.plugin.common.stringprocessor.datefetcher.PatternBasedDateFormatSpecification">
                    <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.DateExtractorPatternValueStringExpression">
                      <property name="value" class="String">yyyy-MM-dd HH:mm:ss</property>
                    </property>
                  </object>
                  <object class="kapow.robot.plugin.common.stringprocessor.datefetcher.PatternBasedDateFormatSpecification">
                    <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.DateExtractorPatternValueStringExpression">
                      <property name="value" class="String">dd MMM yyy HH:mm:ss</property>
                    </property>
                  </object>
                </property>
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
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="0"/>
      </object>
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
      <object class="TransitionEdge">
        <from idref="15"/>
        <to idref="16"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="16"/>
        <to idref="17"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="17"/>
        <to idref="18"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="17"/>
        <to idref="26"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="18"/>
        <to idref="19"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="19"/>
        <to idref="21"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="21"/>
        <to idref="22"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="22"/>
        <to idref="24"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="24"/>
        <to idref="25"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="26"/>
        <to idref="19"/>
        <attachment>
          <null/>
        </attachment>
      </object>
    </edges>
  </property>
  <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecificationClassic" serializationversion="17">
    <property name="SSLUsage" class="com.kapowtech.net.ssl.SSLUsage">
      <property name="useTLSv1" class="Boolean">false</property>
    </property>
    <property name="userAgentProvider" class="kapow.robot.plugin.common.support.browser2.PredefinedUserAgentProvider">
      <property name="userAgent" class="com.kapowtech.net.UserAgent">
        <property name="appCodeName" idref="3"/>
        <property name="appMinorVersion" idref="4"/>
        <property name="appName" idref="5"/>
        <property name="appVersion" idref="6"/>
        <property name="displayName" idref="7"/>
        <property name="name" idref="8"/>
        <property name="platform" idref="9"/>
        <property name="userAgentHeaderValue" idref="10"/>
      </property>
    </property>
    <property name="xSLStyleSheetEnabled" class="Boolean">false</property>
    <property name="loadFrames" class="Boolean">false</property>
    <property name="loadUnsupported" class="Boolean">false</property>
    <property name="maxWindowDepth">
      <null/>
    </property>
    <property name="executeJavaScript" class="Boolean">false</property>
    <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.RobotDefaultBrowserConfigurationSpecificationAncestorProvider"/>
  </property>
</object>
