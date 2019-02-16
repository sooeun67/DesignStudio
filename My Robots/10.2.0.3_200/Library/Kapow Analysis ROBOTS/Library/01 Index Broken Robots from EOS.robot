<?xml version="1.0" encoding="UTF-8" ?>
<object class="GenericRobot2" serializationversion="1">
  <prologue>
    <saved-by-versions>
      <version>9.3.9</version>
    </saved-by-versions>
    <referenced-types>
      <type name="EOS_Source"/>
    </referenced-types>
    <referenced-snippets/>
    <typed-variables>
      <typed-variable name="s" type-name="EOS_Source"/>
    </typed-variables>
    <global-variables/>
    <parameters/>
    <return-variables/>
    <store-in-database-variables>
      <variable name="s"/>
    </store-in-database-variables>
    <browser-engine>CLASSIC</browser-engine>
  </prologue>
  <property name="variables" class="Variables">
    <object class="Variable" serializationversion="1">
      <property name="name" class="String" id="0">s</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">EOS_Source</property>
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
        <property name="name" class="String">Query Database</property>
        <property name="stepAction" class="QueryDatabase2" serializationversion="1">
          <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameValueStringExpression">
            <property name="value" class="kapow.util.db.DBName">
              <property name="name" class="String">CollectionDB</property>
            </property>
          </property>
          <property name="sql" class="String">&gt;&gt;select source_id, robotName, url, status_id from source where status_id in (9,11,12)
order by source_id
&lt;&lt;</property>
          <property name="columnAttributeMappings" class="kapow.robot.plugin.common.support.database.ColumnAttributeMappings">
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">source_id</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">s.id</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">robotName</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">s.robot</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">url</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">s.url</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">status_id</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">s.status_id</property>
              </property>
            </object>
          </property>
          <property name="useRowsInDesignMode" class="Integer">10000</property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment" class="String">&gt;&gt;select * from source where status_id in (9,11,12)&lt;&lt;</property>
        <property name="enabled" idref="1"/>
      </object>
      <object class="Try" id="4"/>
      <object class="Transition" serializationversion="0" id="5">
        <property name="name" class="String">Find in Database</property>
        <property name="stepAction" class="FindInDatabase" serializationversion="0">
          <property name="db" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameValueStringExpression">
            <property name="value" class="kapow.util.db.DBName">
              <property name="name" class="String">CollectionDB</property>
            </property>
          </property>
          <property name="variableName" class="kapow.robot.plugin.common.support.VariableName">
            <property name="name" idref="0"/>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders" id="6"/>
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
      <object class="End" id="7"/>
      <object class="Transition" serializationversion="0" id="8">
        <property name="name" class="String">Raw HTTP</property>
        <property name="stepAction" class="RawHTTP2">
          <property name="urlProvider" class="kapow.robot.plugin.common.stepaction.urlprovider2.ConvertersURLProvider2">
            <property name="converters" class="DataConverters">
              <element class="GetVariable" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">s.url</property>
                </property>
              </element>
              <element class="IfThen">
                <property name="statmentsList" class="BeanList">
                  <object class="kapow.robot.plugin.common.stringprocessor.ifthenconverter.IfMatchesPatternStatement2">
                    <property name="condition" class="String">https?://.*</property>
                    <property name="then" class="kapow.robot.plugin.common.stringprocessor.ifthenconverter.ThenSubpatternMatchesExpression" serializationversion="1">
                      <property name="text" class="String">INPUT</property>
                    </property>
                  </object>
                  <object class="kapow.robot.plugin.common.stringprocessor.ifthenconverter.ElseStatement">
                    <property name="then" class="kapow.robot.plugin.common.stringprocessor.ifthenconverter.ThenExpression" serializationversion="1">
                      <property name="text" class="String">"http://"+INPUT</property>
                    </property>
                  </object>
                </property>
              </element>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecificationClassic" serializationversion="17">
            <property name="timeout" class="Double">10.0</property>
            <property name="responseStatusCodeAttributeName" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" class="String">s.http_status</property>
            </property>
            <property name="ignoreLoadErrors" class="Boolean">true</property>
            <property name="outputPageIfErrorEnabled" class="Boolean">true</property>
            <property name="outputPageIfTimeoutEnabled" class="Boolean">true</property>
            <property name="executeJavaScript" class="Boolean">false</property>
            <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">responseStatusCodeAttributeName</element>
              <element class="String">outputPageIfErrorEnabled</element>
              <element class="String">executeJavaScript</element>
              <element class="String">outputPageIfTimeoutEnabled</element>
              <element class="String">ignoreLoadErrors</element>
              <element class="String">timeout</element>
            </property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="1"/>
      </object>
      <object class="Transition" serializationversion="0" id="9">
        <property name="name" class="String">900 if timeout</property>
        <property name="stepAction" class="AssignVariable" serializationversion="2">
          <property name="stringExpr" class="Expression" serializationversion="1">
            <property name="text" class="String">length( s.http_status) &gt; 0 
? s.http_status
: 900</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">s.http_status</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="1"/>
      </object>
      <object class="Try" id="10"/>
      <object class="Transition" serializationversion="0" id="11">
        <property name="name" class="String">200</property>
        <property name="stepAction" class="TestValue" serializationversion="0">
          <property name="condition" class="Expression" serializationversion="1">
            <property name="text" class="String">s.http_status == 200</property>
          </property>
        </property>
        <property name="elementFinders" idref="6"/>
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
      <object class="Group" id="12">
        <name class="String">Pull Latest Robot Run Details</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="13"/>
        <steps class="ArrayList">
          <object class="Try" id="14"/>
          <object class="Transition" serializationversion="0" id="15">
            <property name="name" class="String">Query Database</property>
            <property name="stepAction" class="QueryDatabase2" serializationversion="1">
              <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameValueStringExpression">
                <property name="value" class="kapow.util.db.DBName">
                  <property name="name" class="String">NewLogDB</property>
                </property>
              </property>
              <property name="sql" class="String">&gt;&gt;SELECT * FROM ROBOT_RUN 
where robotname = '&lt;&lt;+s.robot+&gt;&gt;' 

order by starttime desc limit 1&lt;&lt;</property>
              <property name="columnAttributeMappings" class="kapow.robot.plugin.common.support.database.ColumnAttributeMappings">
                <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
                  <property name="columnName" class="String">executionid</property>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">s.last_run_execution_id</property>
                  </property>
                </object>
                <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
                  <property name="columnName" class="String">executiontime</property>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">s.execution_time</property>
                  </property>
                </object>
                <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
                  <property name="columnName" class="String">extractedobjects</property>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">s.extracted</property>
                  </property>
                </object>
                <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
                  <property name="columnName" class="String">errorcount</property>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">s.errors</property>
                  </property>
                </object>
                <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
                  <property name="columnName" class="String">starttime</property>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">s.last_run_date</property>
                  </property>
                </object>
                <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
                  <property name="columnName" class="String">id</property>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">s.last_run_id</property>
                  </property>
                </object>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
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
          <object class="Try" id="16"/>
          <object class="Transition" serializationversion="0" id="17">
            <property name="name" class="String">Query Database</property>
            <property name="stepAction" class="QueryDatabase2" serializationversion="1">
              <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameValueStringExpression">
                <property name="value" class="kapow.util.db.DBName">
                  <property name="name" class="String">NewLogDB</property>
                </property>
              </property>
              <property name="sql" class="String">&gt;&gt;SELECT message FROM ROBOT_MESSAGE 
where robotrunid = &lt;&lt;+s.last_run_id+&gt;&gt;
and severity = 2
order by time desc limit
&lt;&lt;</property>
              <property name="columnAttributeMappings" class="kapow.robot.plugin.common.support.database.ColumnAttributeMappings">
                <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
                  <property name="columnName" class="String">message</property>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">s.error_message</property>
                  </property>
                </object>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
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
          <object class="Transition" serializationversion="0" id="18">
            <property name="name" class="String">no runs</property>
            <property name="stepAction" class="AssignVariable" serializationversion="2">
              <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">0</property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">s.last_run_id</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="19"/>
        <edges class="ArrayList">
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
            <from idref="14"/>
            <to idref="18"/>
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
            <from idref="16"/>
            <to idref="19"/>
            <attachment>
              <null/>
            </attachment>
          </object>
          <object class="TransitionEdge">
            <from idref="17"/>
            <to idref="19"/>
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
        </edges>
      </object>
      <object class="Transition" serializationversion="0" id="20">
        <property name="name" class="String">Store EOS_Source</property>
        <property name="stepAction" class="StoreInDatabase" serializationversion="0">
          <property name="db" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameValueStringExpression">
            <property name="value" class="kapow.util.db.DBName">
              <property name="name" class="String">CollectionDB</property>
            </property>
          </property>
          <property name="variableName" class="kapow.robot.plugin.common.support.VariableName">
            <property name="name" class="String">s</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="1"/>
      </object>
      <object class="End" id="21"/>
      <object class="Transition" serializationversion="0" id="22">
        <property name="name" class="String">Domain URL?</property>
        <property name="stepAction" class="TestValue" serializationversion="0">
          <property name="condition" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
            <property name="dataConverters" class="DataConverters">
              <element class="GetVariable" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">s.url</property>
                </property>
              </element>
              <element class="IfThen">
                <property name="statmentsList" class="BeanList">
                  <object class="kapow.robot.plugin.common.stringprocessor.ifthenconverter.IfMatchesPatternStatement2">
                    <property name="condition" class="String">https?://.*</property>
                    <property name="then" class="kapow.robot.plugin.common.stringprocessor.ifthenconverter.ThenSubpatternMatchesExpression" serializationversion="1">
                      <property name="text" class="String">INPUT</property>
                    </property>
                  </object>
                  <object class="kapow.robot.plugin.common.stringprocessor.ifthenconverter.ElseStatement">
                    <property name="then" class="kapow.robot.plugin.common.stringprocessor.ifthenconverter.ThenExpression" serializationversion="1">
                      <property name="text" class="String">"http://"+INPUT</property>
                    </property>
                  </object>
                </property>
              </element>
              <element class="IfThen">
                <property name="statmentsList" class="BeanList">
                  <object class="kapow.robot.plugin.common.stringprocessor.ifthenconverter.IfMatchesPatternStatement2">
                    <property name="condition" class="String">https?://[^/]+/?</property>
                    <property name="then" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">true</property>
                    </property>
                  </object>
                  <object class="kapow.robot.plugin.common.stringprocessor.ifthenconverter.ElseStatement">
                    <property name="then" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">false</property>
                    </property>
                  </object>
                </property>
              </element>
            </property>
          </property>
        </property>
        <property name="elementFinders" idref="6"/>
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
      <object class="Transition" serializationversion="0" id="23">
        <property name="name" class="String">same status</property>
        <property name="stepAction" class="AssignVariable" serializationversion="2">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" class="String">s.http_status</property>
            </property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">s.domain_http_status</property>
          </property>
        </property>
        <property name="elementFinders" idref="6"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="1"/>
      </object>
      <object class="Transition" serializationversion="0" id="24">
        <property name="name" class="String">900 if timeout</property>
        <property name="stepAction" class="AssignVariable" serializationversion="2">
          <property name="stringExpr" class="Expression" serializationversion="1">
            <property name="text" class="String">length( s.domain_http_status) &gt; 0 
? s.domain_http_status
: 900</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">s.domain_http_status</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="1"/>
      </object>
      <object class="Transition" serializationversion="0" id="25">
        <property name="name" class="String">Raw HTTP</property>
        <property name="stepAction" class="RawHTTP2">
          <property name="urlProvider" class="kapow.robot.plugin.common.stepaction.urlprovider2.ConvertersURLProvider2">
            <property name="converters" class="DataConverters">
              <element class="GetVariable" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">s.url</property>
                </property>
              </element>
              <element class="IfThen">
                <property name="statmentsList" class="BeanList">
                  <object class="kapow.robot.plugin.common.stringprocessor.ifthenconverter.IfMatchesPatternStatement2">
                    <property name="condition" class="String">https?://.*</property>
                    <property name="then" class="kapow.robot.plugin.common.stringprocessor.ifthenconverter.ThenSubpatternMatchesExpression" serializationversion="1">
                      <property name="text" class="String">INPUT</property>
                    </property>
                  </object>
                  <object class="kapow.robot.plugin.common.stringprocessor.ifthenconverter.ElseStatement">
                    <property name="then" class="kapow.robot.plugin.common.stringprocessor.ifthenconverter.ThenExpression" serializationversion="1">
                      <property name="text" class="String">"http://"+INPUT</property>
                    </property>
                  </object>
                </property>
              </element>
              <element class="Extract2DataConverter">
                <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                  <property name="value" class="String">(https?://[^/]+).*</property>
                </property>
              </element>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecificationClassic" serializationversion="17">
            <property name="timeout" class="Double">10.0</property>
            <property name="responseStatusCodeAttributeName" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" class="String">s.domain_http_status</property>
            </property>
            <property name="ignoreLoadErrors" class="Boolean">true</property>
            <property name="outputPageIfErrorEnabled" class="Boolean">true</property>
            <property name="outputPageIfTimeoutEnabled" class="Boolean">true</property>
            <property name="executeJavaScript" class="Boolean">false</property>
            <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">responseStatusCodeAttributeName</element>
              <element class="String">executeJavaScript</element>
              <element class="String">outputPageIfErrorEnabled</element>
              <element class="String">ignoreLoadErrors</element>
              <element class="String">outputPageIfTimeoutEnabled</element>
              <element class="String">timeout</element>
            </property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="1"/>
      </object>
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
        <to idref="4"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="4"/>
        <to idref="5"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="4"/>
        <to idref="8"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="5"/>
        <to idref="7"/>
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
        <from idref="10"/>
        <to idref="22"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="10"/>
        <to idref="25"/>
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
        <to idref="20"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="20"/>
        <to idref="21"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="22"/>
        <to idref="23"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="23"/>
        <to idref="24"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="24"/>
        <to idref="20"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="25"/>
        <to idref="24"/>
        <attachment>
          <null/>
        </attachment>
      </object>
    </edges>
  </property>
  <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecificationClassic" serializationversion="17">
    <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.RobotDefaultBrowserConfigurationSpecificationAncestorProvider"/>
  </property>
</object>
