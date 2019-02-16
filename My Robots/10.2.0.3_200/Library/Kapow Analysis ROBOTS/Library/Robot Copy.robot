<?xml version="1.0" encoding="UTF-8" ?>
<object class="GenericRobot2" serializationversion="1">
  <prologue>
    <saved-by-versions>
      <version>9.3.9</version>
    </saved-by-versions>
    <referenced-types>
      <type name="ISIS"/>
    </referenced-types>
    <referenced-snippets/>
    <typed-variables>
      <typed-variable name="ISIS" type-name="ISIS"/>
    </typed-variables>
    <global-variables/>
    <parameters/>
    <return-variables/>
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
      <property name="name" class="String">URL_Step_Name</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="SimpleTypeReference" id="0">
          <property name="simpleTypeId" class="Integer">12</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">Template_Robot</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" idref="0"/>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String" id="1">Robot_XML</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="SimpleTypeReference">
          <property name="simpleTypeId" class="Integer">13</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">Output_Folder</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" idref="0"/>
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
  <property name="privateHTTPCacheEnabled" class="Boolean" id="2">true</property>
  <property name="privateHTTPCacheSize" class="Integer">2048</property>
  <property name="comment">
    <null/>
  </property>
  <property name="id" class="Integer">-1</property>
  <property name="transitionGraph" class="Body">
    <blockBeginStep class="BlockBeginStep" id="3"/>
    <steps class="ArrayList">
      <object class="Transition" serializationversion="0" id="4">
        <property name="name" class="String">output_folder</property>
        <property name="stepAction" class="AssignVariable" serializationversion="2">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">C:\temp\newrobots\</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Output_Folder</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
      </object>
      <object class="Group" id="5">
        <name class="String">Define and load template robot</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="6"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="0" id="7">
            <property name="name" class="String">template_robot</property>
            <property name="stepAction" class="AssignVariable" serializationversion="2">
              <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">C:\Users\Adam\Documents\My Robots\Kapow Analysis\Library\RSS Feed with full content Template.robot</property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Template_Robot</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
          </object>
          <object class="Transition" serializationversion="0" id="8">
            <property name="name" class="String">url_step_name</property>
            <property name="stepAction" class="AssignVariable" serializationversion="2">
              <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">Source URL</property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">URL_Step_Name</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
          </object>
          <object class="Transition" serializationversion="0" id="9">
            <property name="name" class="String">Template OK?</property>
            <property name="stepAction" class="TestFileExistence" serializationversion="0">
              <property name="fileNameExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">Template_Robot</property>
                </property>
              </property>
              <property name="mode" class="Integer">0</property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
          </object>
          <object class="Transition" serializationversion="0" id="10">
            <property name="name" class="String">URL step name set</property>
            <property name="stepAction" class="TestValue" serializationversion="0">
              <property name="condition" class="Expression" serializationversion="1">
                <property name="text" class="String">length( URL_Step_Name) &gt; 0</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
          </object>
          <object class="Transition" serializationversion="0" id="11">
            <property name="name" class="String">Extract Target</property>
            <property name="stepAction" class="ExtractTarget">
              <property name="urlProvider" class="kapow.robot.plugin.common.stepaction.urlprovider2.AttributeURLProvider2" serializationversion="1">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">Template_Robot</property>
                </property>
              </property>
              <property name="storeIn" class="kapow.robot.plugin.common.support.dataloader.VariableDataStoreProvider" serializationversion="1">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">Robot_XML</property>
                </property>
              </property>
              <property name="browserConfigurationSpecification" class="kapow.robot.plugin.common.support.browser2.BrowserConfigurationSpecificationClassic" serializationversion="17">
                <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.StepBrowserConfigurationSpecificationAncestorProvider"/>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="12"/>
        <edges class="ArrayList">
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
        </edges>
      </object>
      <object class="Try" id="13"/>
      <object class="Group" id="14">
        <name class="String">Sample: Provide input for new robots</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="15"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="0" id="16">
            <property name="name" class="String">Loop/Set URL</property>
            <property name="stepAction" class="AssignVariable" serializationversion="2">
              <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">http://www.test.com</property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">ISIS.url</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
          </object>
          <object class="Transition" serializationversion="0" id="17">
            <property name="name" class="String">Loop/Set SourceID</property>
            <property name="stepAction" class="AssignVariable" serializationversion="2">
              <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">test</property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">ISIS.SourceID</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="18"/>
        <edges class="ArrayList">
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
        </edges>
      </object>
      <object class="Transition" serializationversion="0" id="19">
        <property name="name" class="String">SourceID and URL set?</property>
        <property name="stepAction" class="TestValue" serializationversion="0">
          <property name="condition" class="Expression" serializationversion="1">
            <property name="text" class="String">length( ISIS.SourceID) &gt; 0
&amp;&amp;
length( ISIS.url) &gt; 0</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
      </object>
      <object class="Group" id="20">
        <name class="String">Modify Template robot</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="21"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="0" id="22">
            <property name="name" class="String">Modify Robot</property>
            <property name="stepAction" class="AssignVariable" serializationversion="2">
              <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
                <property name="dataConverters" class="DataConverters">
                  <element class="GetVariable" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" idref="1"/>
                    </property>
                  </element>
                  <element class="AdvancedExtract2">
                    <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                      <property name="value" class="String">(.*&lt;property name="name" class="String"&gt;Source URL&lt;/property&gt;.*?&lt;property name="value" class="String"&gt;)([^&lt;]+)(.*)</property>
                    </property>
                    <property name="outputExpression" class="String">$1+ISIS.url+$3</property>
                  </element>
                </property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" idref="1"/>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="23"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="21"/>
            <to idref="22"/>
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
        </edges>
      </object>
      <object class="Transition" serializationversion="0" id="24">
        <property name="name" class="String">Write File</property>
        <property name="stepAction" class="WriteFile" serializationversion="0">
          <property name="fileNameExpression" class="Expression" serializationversion="1">
            <property name="text" class="String">Output_Folder+"\\"
+ISIS.SourceID+".robot"</property>
          </property>
          <property name="fileContentExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" idref="1"/>
            </property>
          </property>
          <property name="createDirectories" class="Boolean">true</property>
          <property name="executeInRoboMaker" class="Boolean">true</property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
      </object>
      <object class="End" id="25"/>
      <object class="Transition" serializationversion="0" id="26">
        <property name="name" class="String">Query Database</property>
        <property name="stepAction" class="QueryDatabase2" serializationversion="1">
          <property name="databaseName" class="kapow.robot.plugin.common.support.expression.stringexpr.DBNameValueStringExpression">
            <property name="value" class="kapow.util.db.DBName">
              <property name="name" class="String">CollectionDB</property>
            </property>
          </property>
          <property name="sql" class="String">"SELECT robot, rss_url FROM EOS_Source 
  where  rss_found = 'y'
   and rss_content = 'content:encoded' "</property>
          <property name="columnAttributeMappings" class="kapow.robot.plugin.common.support.database.ColumnAttributeMappings">
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">rss_url</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">ISIS.url</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">robot</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">ISIS.SourceID</property>
              </property>
            </object>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
      </object>
    </steps>
    <blockEndStep class="BlockEndStep"/>
    <edges class="ArrayList">
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
        <from idref="5"/>
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
        <from idref="13"/>
        <to idref="26"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="14"/>
        <to idref="19"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="19"/>
        <to idref="20"/>
        <attachment>
          <null/>
        </attachment>
      </object>
      <object class="TransitionEdge">
        <from idref="20"/>
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
    <property name="ancestorProvider" class="kapow.robot.plugin.common.support.browser2.RobotDefaultBrowserConfigurationSpecificationAncestorProvider"/>
  </property>
</object>
