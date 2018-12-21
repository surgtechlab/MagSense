<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.0.1">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="25" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="VDD" urn="urn:adsk.eagle:symbol:26943/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="1.27" y1="-1.905" x2="0" y2="1.27" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VDD" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="VDD" urn="urn:adsk.eagle:component:26970/1" prefix="VDD" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="VDD" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="LDC1614">
<packages>
<package name="WQFN-16">
<smd name="ADDR" x="-1.9" y="-0.75" dx="0.6" dy="0.25" layer="1" roundness="25"/>
<smd name="CLIKIN" x="-1.9" y="-0.25" dx="0.6" dy="0.25" layer="1" roundness="25"/>
<smd name="SDA" x="-1.9" y="0.25" dx="0.6" dy="0.25" layer="1" roundness="25"/>
<smd name="SCL" x="-1.9" y="0.75" dx="0.6" dy="0.25" layer="1" roundness="25"/>
<smd name="IN0A" x="1.9" y="-0.75" dx="0.6" dy="0.25" layer="1" roundness="25"/>
<smd name="IN0B" x="1.9" y="-0.25" dx="0.6" dy="0.25" layer="1" roundness="25"/>
<smd name="IN1A" x="1.9" y="0.25" dx="0.6" dy="0.25" layer="1" roundness="25"/>
<smd name="IN1B" x="1.9" y="0.75" dx="0.6" dy="0.25" layer="1" roundness="25"/>
<smd name="IN2A" x="0.75" y="1.9" dx="0.6" dy="0.25" layer="1" roundness="25" rot="R90"/>
<smd name="IN2B" x="0.25" y="1.9" dx="0.6" dy="0.25" layer="1" roundness="25" rot="R90"/>
<smd name="IN3A" x="-0.25" y="1.9" dx="0.6" dy="0.25" layer="1" roundness="25" rot="R90"/>
<smd name="IN3B" x="-0.75" y="1.9" dx="0.6" dy="0.25" layer="1" roundness="25" rot="R270"/>
<smd name="GND" x="0.75" y="-1.9" dx="0.6" dy="0.25" layer="1" roundness="25" rot="R90"/>
<smd name="VDD" x="0.25" y="-1.9" dx="0.6" dy="0.25" layer="1" roundness="25" rot="R90"/>
<smd name="SD" x="-0.25" y="-1.9" dx="0.6" dy="0.25" layer="1" roundness="25" rot="R90"/>
<smd name="INTB" x="-0.75" y="-1.9" dx="0.6" dy="0.25" layer="1" roundness="25" rot="R270"/>
<smd name="DAP" x="0" y="0" dx="2.6" dy="2.6" layer="1"/>
<wire x1="-2" y1="2" x2="2" y2="2" width="0.127" layer="51"/>
<wire x1="2" y1="2" x2="2" y2="-2" width="0.127" layer="51"/>
<wire x1="2" y1="-2" x2="-2" y2="-2" width="0.127" layer="51"/>
<wire x1="-2" y1="-2" x2="-2" y2="2" width="0.127" layer="51"/>
<circle x="-1.6" y="1.6" radius="0.1" width="0" layer="21"/>
<wire x1="-2.4" y1="1.5" x2="-2.4" y2="-2.4" width="0.1" layer="21"/>
<wire x1="-2.4" y1="-2.4" x2="2.4" y2="-2.4" width="0.1" layer="21"/>
<wire x1="2.4" y1="-2.4" x2="2.4" y2="2.4" width="0.1" layer="21"/>
<wire x1="2.4" y1="2.4" x2="-1.5" y2="2.4" width="0.1" layer="21"/>
<wire x1="-2.4" y1="1.5" x2="-1.5" y2="2.4" width="0.1" layer="21"/>
<text x="-2.5" y="2.6" size="1.27" layer="21">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="LDC">
<pin name="CLKIN" x="-5.08" y="-2.54" length="middle"/>
<pin name="IN0A" x="-5.08" y="-10.16" length="middle"/>
<pin name="IN0B" x="-5.08" y="-12.7" length="middle"/>
<pin name="IN1A" x="-5.08" y="-17.78" length="middle"/>
<pin name="IN1B" x="-5.08" y="-20.32" length="middle"/>
<pin name="IN2A" x="-5.08" y="-25.4" length="middle"/>
<pin name="IN2B" x="-5.08" y="-27.94" length="middle"/>
<pin name="IN3A" x="-5.08" y="-33.02" length="middle"/>
<pin name="IN3B" x="-5.08" y="-35.56" length="middle"/>
<pin name="GND" x="-5.08" y="-43.18" length="middle"/>
<pin name="VDD" x="38.1" y="-2.54" length="middle" rot="R180"/>
<pin name="SD" x="38.1" y="-10.16" length="middle" rot="R180"/>
<pin name="INTB" x="38.1" y="-12.7" length="middle" rot="R180"/>
<pin name="SCL" x="38.1" y="-35.56" length="middle" rot="R180"/>
<pin name="SDA" x="38.1" y="-33.02" length="middle" rot="R180"/>
<pin name="ADDR" x="38.1" y="-40.64" length="middle" rot="R180"/>
<text x="0" y="5.08" size="1.27" layer="94">LDC1614</text>
<pin name="DAP" x="38.1" y="-45.72" length="middle" rot="R180"/>
<wire x1="33.02" y1="-48.26" x2="0" y2="-48.26" width="0.254" layer="94"/>
<wire x1="0" y1="-48.26" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="33.02" y2="0" width="0.254" layer="94"/>
<wire x1="33.02" y1="0" x2="33.02" y2="-48.26" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="LDC1614">
<gates>
<gate name="G$1" symbol="LDC" x="0" y="0"/>
</gates>
<devices>
<device name="" package="WQFN-16">
<connects>
<connect gate="G$1" pin="ADDR" pad="ADDR"/>
<connect gate="G$1" pin="CLKIN" pad="CLIKIN"/>
<connect gate="G$1" pin="DAP" pad="DAP"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="IN0A" pad="IN0A"/>
<connect gate="G$1" pin="IN0B" pad="IN0B"/>
<connect gate="G$1" pin="IN1A" pad="IN1A"/>
<connect gate="G$1" pin="IN1B" pad="IN1B"/>
<connect gate="G$1" pin="IN2A" pad="IN2A"/>
<connect gate="G$1" pin="IN2B" pad="IN2B"/>
<connect gate="G$1" pin="IN3A" pad="IN3A"/>
<connect gate="G$1" pin="IN3B" pad="IN3B"/>
<connect gate="G$1" pin="INTB" pad="INTB"/>
<connect gate="G$1" pin="SCL" pad="SCL"/>
<connect gate="G$1" pin="SD" pad="SD"/>
<connect gate="G$1" pin="SDA" pad="SDA"/>
<connect gate="G$1" pin="VDD" pad="VDD"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="resistor" urn="urn:adsk.eagle:library:348">
<description>&lt;b&gt;Resistors, Capacitors, Inductors&lt;/b&gt;&lt;p&gt;
Based on the previous libraries:
&lt;ul&gt;
&lt;li&gt;r.lbr
&lt;li&gt;cap.lbr 
&lt;li&gt;cap-fe.lbr
&lt;li&gt;captant.lbr
&lt;li&gt;polcap.lbr
&lt;li&gt;ipc-smd.lbr
&lt;/ul&gt;
All SMD packages are defined according to the IPC specifications and  CECC&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;&lt;p&gt;
&lt;p&gt;
for Electrolyt Capacitors see also :&lt;p&gt;
www.bccomponents.com &lt;p&gt;
www.panasonic.com&lt;p&gt;
www.kemet.com&lt;p&gt;
&lt;p&gt;
for trimmer refence see : &lt;u&gt;www.electrospec-inc.com/cross_references/trimpotcrossref.asp&lt;/u&gt;&lt;p&gt;

&lt;map name="nav_main"&gt;
&lt;area shape="rect" coords="0,1,140,23" href="../military_specs.asp" title=""&gt;
&lt;area shape="rect" coords="0,24,140,51" href="../about.asp" title=""&gt;
&lt;area shape="rect" coords="1,52,140,77" href="../rfq.asp" title=""&gt;
&lt;area shape="rect" coords="0,78,139,103" href="../products.asp" title=""&gt;
&lt;area shape="rect" coords="1,102,138,128" href="../excess_inventory.asp" title=""&gt;
&lt;area shape="rect" coords="1,129,138,150" href="../edge.asp" title=""&gt;
&lt;area shape="rect" coords="1,151,139,178" href="../industry_links.asp" title=""&gt;
&lt;area shape="rect" coords="0,179,139,201" href="../comments.asp" title=""&gt;
&lt;area shape="rect" coords="1,203,138,231" href="../directory.asp" title=""&gt;
&lt;area shape="default" nohref&gt;
&lt;/map&gt;

&lt;html&gt;

&lt;title&gt;&lt;/title&gt;

 &lt;LINK REL="StyleSheet" TYPE="text/css" HREF="style-sheet.css"&gt;

&lt;body bgcolor="#ffffff" text="#000000" marginwidth="0" marginheight="0" topmargin="0" leftmargin="0"&gt;
&lt;table border=0 cellspacing=0 cellpadding=0 width="100%" cellpaddding=0 height="55%"&gt;
&lt;tr valign="top"&gt;

&lt;/td&gt;
&lt;! &lt;td width="10"&gt;&amp;nbsp;&lt;/td&gt;
&lt;td width="90%"&gt;

&lt;b&gt;&lt;font color="#0000FF" size="4"&gt;TRIM-POT CROSS REFERENCE&lt;/font&gt;&lt;/b&gt;
&lt;P&gt;
&lt;TABLE BORDER=0 CELLSPACING=1 CELLPADDING=2&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;RECTANGULAR MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;BOURNS&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;BI&amp;nbsp;TECH&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;DALE-VISHAY&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;PHILIPS/MEPCO&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;MURATA&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;PANASONIC&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;SPECTROL&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;B&gt;
      &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;MILSPEC&lt;/FONT&gt;
      &lt;/B&gt;
    &lt;/TD&gt;&lt;TD&gt;&amp;nbsp;&lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3 &gt;
      3005P&lt;BR&gt;
      3006P&lt;BR&gt;
      3006W&lt;BR&gt;
      3006Y&lt;BR&gt;
      3009P&lt;BR&gt;
      3009W&lt;BR&gt;
      3009Y&lt;BR&gt;
      3057J&lt;BR&gt;
      3057L&lt;BR&gt;
      3057P&lt;BR&gt;
      3057Y&lt;BR&gt;
      3059J&lt;BR&gt;
      3059L&lt;BR&gt;
      3059P&lt;BR&gt;
      3059Y&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      89P&lt;BR&gt;
      89W&lt;BR&gt;
      89X&lt;BR&gt;
      89PH&lt;BR&gt;
      76P&lt;BR&gt;
      89XH&lt;BR&gt;
      78SLT&lt;BR&gt;
      78L&amp;nbsp;ALT&lt;BR&gt;
      56P&amp;nbsp;ALT&lt;BR&gt;
      78P&amp;nbsp;ALT&lt;BR&gt;
      T8S&lt;BR&gt;
      78L&lt;BR&gt;
      56P&lt;BR&gt;
      78P&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      T18/784&lt;BR&gt;
      783&lt;BR&gt;
      781&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      2199&lt;BR&gt;
      1697/1897&lt;BR&gt;
      1680/1880&lt;BR&gt;
      2187&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      8035EKP/CT20/RJ-20P&lt;BR&gt;
      -&lt;BR&gt;
      RJ-20X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      1211L&lt;BR&gt;
      8012EKQ&amp;nbsp;ALT&lt;BR&gt;
      8012EKR&amp;nbsp;ALT&lt;BR&gt;
      1211P&lt;BR&gt;
      8012EKJ&lt;BR&gt;
      8012EKL&lt;BR&gt;
      8012EKQ&lt;BR&gt;
      8012EKR&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      2101P&lt;BR&gt;
      2101W&lt;BR&gt;
      2101Y&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      2102L&lt;BR&gt;
      2102S&lt;BR&gt;
      2102Y&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      EVMCOG&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      43P&lt;BR&gt;
      43W&lt;BR&gt;
      43Y&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      40L&lt;BR&gt;
      40P&lt;BR&gt;
      40Y&lt;BR&gt;
      70Y-T602&lt;BR&gt;
      70L&lt;BR&gt;
      70P&lt;BR&gt;
      70Y&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      RT/RTR12&lt;BR&gt;
      RT/RTR12&lt;BR&gt;
      RT/RTR12&lt;BR&gt;
      -&lt;BR&gt;
      RJ/RJR12&lt;BR&gt;
      RJ/RJR12&lt;BR&gt;
      RJ/RJR12&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;&amp;nbsp;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SQUARE MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
   &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MURATA&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;SPECTROL&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MILSPEC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      3250L&lt;BR&gt;
      3250P&lt;BR&gt;
      3250W&lt;BR&gt;
      3250X&lt;BR&gt;
      3252P&lt;BR&gt;
      3252W&lt;BR&gt;
      3252X&lt;BR&gt;
      3260P&lt;BR&gt;
      3260W&lt;BR&gt;
      3260X&lt;BR&gt;
      3262P&lt;BR&gt;
      3262W&lt;BR&gt;
      3262X&lt;BR&gt;
      3266P&lt;BR&gt;
      3266W&lt;BR&gt;
      3266X&lt;BR&gt;
      3290H&lt;BR&gt;
      3290P&lt;BR&gt;
      3290W&lt;BR&gt;
      3292P&lt;BR&gt;
      3292W&lt;BR&gt;
      3292X&lt;BR&gt;
      3296P&lt;BR&gt;
      3296W&lt;BR&gt;
      3296X&lt;BR&gt;
      3296Y&lt;BR&gt;
      3296Z&lt;BR&gt;
      3299P&lt;BR&gt;
      3299W&lt;BR&gt;
      3299X&lt;BR&gt;
      3299Y&lt;BR&gt;
      3299Z&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      66P&amp;nbsp;ALT&lt;BR&gt;
      66W&amp;nbsp;ALT&lt;BR&gt;
      66X&amp;nbsp;ALT&lt;BR&gt;
      66P&amp;nbsp;ALT&lt;BR&gt;
      66W&amp;nbsp;ALT&lt;BR&gt;
      66X&amp;nbsp;ALT&lt;BR&gt;
      -&lt;BR&gt;
      64W&amp;nbsp;ALT&lt;BR&gt;
      -&lt;BR&gt;
      64P&amp;nbsp;ALT&lt;BR&gt;
      64W&amp;nbsp;ALT&lt;BR&gt;
      64X&amp;nbsp;ALT&lt;BR&gt;
      64P&lt;BR&gt;
      64W&lt;BR&gt;
      64X&lt;BR&gt;
      66X&amp;nbsp;ALT&lt;BR&gt;
      66P&amp;nbsp;ALT&lt;BR&gt;
      66W&amp;nbsp;ALT&lt;BR&gt;
      66P&lt;BR&gt;
      66W&lt;BR&gt;
      66X&lt;BR&gt;
      67P&lt;BR&gt;
      67W&lt;BR&gt;
      67X&lt;BR&gt;
      67Y&lt;BR&gt;
      67Z&lt;BR&gt;
      68P&lt;BR&gt;
      68W&lt;BR&gt;
      68X&lt;BR&gt;
      67Y&amp;nbsp;ALT&lt;BR&gt;
      67Z&amp;nbsp;ALT&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      5050&lt;BR&gt;
      5091&lt;BR&gt;
      5080&lt;BR&gt;
      5087&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      T63YB&lt;BR&gt;
      T63XB&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      5887&lt;BR&gt;
      5891&lt;BR&gt;
      5880&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      T93Z&lt;BR&gt;
      T93YA&lt;BR&gt;
      T93XA&lt;BR&gt;
      T93YB&lt;BR&gt;
      T93XB&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      8026EKP&lt;BR&gt;
      8026EKW&lt;BR&gt;
      8026EKM&lt;BR&gt;
      8026EKP&lt;BR&gt;
      8026EKB&lt;BR&gt;
      8026EKM&lt;BR&gt;
      1309X&lt;BR&gt;
      1309P&lt;BR&gt;
      1309W&lt;BR&gt;
      8024EKP&lt;BR&gt;
      8024EKW&lt;BR&gt;
      8024EKN&lt;BR&gt;
      RJ-9P/CT9P&lt;BR&gt;
      RJ-9W&lt;BR&gt;
      RJ-9X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      3103P&lt;BR&gt;
      3103Y&lt;BR&gt;
      3103Z&lt;BR&gt;
      3103P&lt;BR&gt;
      3103Y&lt;BR&gt;
      3103Z&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      3105P/3106P&lt;BR&gt;
      3105W/3106W&lt;BR&gt;
      3105X/3106X&lt;BR&gt;
      3105Y/3106Y&lt;BR&gt;
      3105Z/3105Z&lt;BR&gt;
      3102P&lt;BR&gt;
      3102W&lt;BR&gt;
      3102X&lt;BR&gt;
      3102Y&lt;BR&gt;
      3102Z&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMCBG&lt;BR&gt;
      EVMCCG&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      55-1-X&lt;BR&gt;
      55-4-X&lt;BR&gt;
      55-3-X&lt;BR&gt;
      55-2-X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      50-2-X&lt;BR&gt;
      50-4-X&lt;BR&gt;
      50-3-X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      64P&lt;BR&gt;
      64W&lt;BR&gt;
      64X&lt;BR&gt;
      64Y&lt;BR&gt;
      64Z&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      RT/RTR22&lt;BR&gt;
      RT/RTR22&lt;BR&gt;
      RT/RTR22&lt;BR&gt;
      RT/RTR22&lt;BR&gt;
      RJ/RJR22&lt;BR&gt;
      RJ/RJR22&lt;BR&gt;
      RJ/RJR22&lt;BR&gt;
      RT/RTR26&lt;BR&gt;
      RT/RTR26&lt;BR&gt;
      RT/RTR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RJ/RJR26&lt;BR&gt;
      RT/RTR24&lt;BR&gt;
      RT/RTR24&lt;BR&gt;
      RT/RTR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      RJ/RJR24&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;&amp;nbsp;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=8&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SINGLE TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MURATA&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;SPECTROL&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD ALIGN=CENTER&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MILSPEC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      3323P&lt;BR&gt;
      3323S&lt;BR&gt;
      3323W&lt;BR&gt;
      3329H&lt;BR&gt;
      3329P&lt;BR&gt;
      3329W&lt;BR&gt;
      3339H&lt;BR&gt;
      3339P&lt;BR&gt;
      3339W&lt;BR&gt;
      3352E&lt;BR&gt;
      3352H&lt;BR&gt;
      3352K&lt;BR&gt;
      3352P&lt;BR&gt;
      3352T&lt;BR&gt;
      3352V&lt;BR&gt;
      3352W&lt;BR&gt;
      3362H&lt;BR&gt;
      3362M&lt;BR&gt;
      3362P&lt;BR&gt;
      3362R&lt;BR&gt;
      3362S&lt;BR&gt;
      3362U&lt;BR&gt;
      3362W&lt;BR&gt;
      3362X&lt;BR&gt;
      3386B&lt;BR&gt;
      3386C&lt;BR&gt;
      3386F&lt;BR&gt;
      3386H&lt;BR&gt;
      3386K&lt;BR&gt;
      3386M&lt;BR&gt;
      3386P&lt;BR&gt;
      3386S&lt;BR&gt;
      3386W&lt;BR&gt;
      3386X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      25P&lt;BR&gt;
      25S&lt;BR&gt;
      25RX&lt;BR&gt;
      82P&lt;BR&gt;
      82M&lt;BR&gt;
      82PA&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      91E&lt;BR&gt;
      91X&lt;BR&gt;
      91T&lt;BR&gt;
      91B&lt;BR&gt;
      91A&lt;BR&gt;
      91V&lt;BR&gt;
      91W&lt;BR&gt;
      25W&lt;BR&gt;
      25V&lt;BR&gt;
      25P&lt;BR&gt;
      -&lt;BR&gt;
      25S&lt;BR&gt;
      25U&lt;BR&gt;
      25RX&lt;BR&gt;
      25X&lt;BR&gt;
      72XW&lt;BR&gt;
      72XL&lt;BR&gt;
      72PM&lt;BR&gt;
      72RX&lt;BR&gt;
      -&lt;BR&gt;
      72PX&lt;BR&gt;
      72P&lt;BR&gt;
      72RXW&lt;BR&gt;
      72RXL&lt;BR&gt;
      72X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      T7YB&lt;BR&gt;
      T7YA&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      TXD&lt;BR&gt;
      TYA&lt;BR&gt;
      TYP&lt;BR&gt;
      -&lt;BR&gt;
      TYD&lt;BR&gt;
      TX&lt;BR&gt;
      -&lt;BR&gt;
      150SX&lt;BR&gt;
      100SX&lt;BR&gt;
      102T&lt;BR&gt;
      101S&lt;BR&gt;
      190T&lt;BR&gt;
      150TX&lt;BR&gt;
      101&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      101SX&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      ET6P&lt;BR&gt;
      ET6S&lt;BR&gt;
      ET6X&lt;BR&gt;
      RJ-6W/8014EMW&lt;BR&gt;
      RJ-6P/8014EMP&lt;BR&gt;
      RJ-6X/8014EMX&lt;BR&gt;
      TM7W&lt;BR&gt;
      TM7P&lt;BR&gt;
      TM7X&lt;BR&gt;
      -&lt;BR&gt;
      8017SMS&lt;BR&gt;
      -&lt;BR&gt;
      8017SMB&lt;BR&gt;
      8017SMA&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      CT-6W&lt;BR&gt;
      CT-6H&lt;BR&gt;
      CT-6P&lt;BR&gt;
      CT-6R&lt;BR&gt;
      -&lt;BR&gt;
      CT-6V&lt;BR&gt;
      CT-6X&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      8038EKV&lt;BR&gt;
      -&lt;BR&gt;
      8038EKX&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      8038EKP&lt;BR&gt;
      8038EKZ&lt;BR&gt;
      8038EKW&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      3321H&lt;BR&gt;
      3321P&lt;BR&gt;
      3321N&lt;BR&gt;
      1102H&lt;BR&gt;
      1102P&lt;BR&gt;
      1102T&lt;BR&gt;
      RVA0911V304A&lt;BR&gt;
      -&lt;BR&gt;
      RVA0911H413A&lt;BR&gt;
      RVG0707V100A&lt;BR&gt;
      RVA0607V(H)306A&lt;BR&gt;
      RVA1214H213A&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      3104B&lt;BR&gt;
      3104C&lt;BR&gt;
      3104F&lt;BR&gt;
      3104H&lt;BR&gt;
      -&lt;BR&gt;
      3104M&lt;BR&gt;
      3104P&lt;BR&gt;
      3104S&lt;BR&gt;
      3104W&lt;BR&gt;
      3104X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      EVMQ0G&lt;BR&gt;
      EVMQIG&lt;BR&gt;
      EVMQ3G&lt;BR&gt;
      EVMS0G&lt;BR&gt;
      EVMQ0G&lt;BR&gt;
      EVMG0G&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMK4GA00B&lt;BR&gt;
      EVM30GA00B&lt;BR&gt;
      EVMK0GA00B&lt;BR&gt;
      EVM38GA00B&lt;BR&gt;
      EVMB6&lt;BR&gt;
      EVLQ0&lt;BR&gt;
      -&lt;BR&gt;
      EVMMSG&lt;BR&gt;
      EVMMBG&lt;BR&gt;
      EVMMAG&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMMCS&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMM1&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMM0&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      EVMM3&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      62-3-1&lt;BR&gt;
      62-1-2&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      67R&lt;BR&gt;
      -&lt;BR&gt;
      67P&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      67X&lt;BR&gt;
      63V&lt;BR&gt;
      63S&lt;BR&gt;
      63M&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      63H&lt;BR&gt;
      63P&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      63X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      RJ/RJR50&lt;BR&gt;
      RJ/RJR50&lt;BR&gt;
      RJ/RJR50&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
&lt;/TABLE&gt;
&lt;P&gt;&amp;nbsp;&lt;P&gt;
&lt;TABLE BORDER=0 CELLSPACING=1 CELLPADDING=3&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=7&gt;
      &lt;FONT color="#0000FF" SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SMD TRIM-POT CROSS REFERENCE&lt;/B&gt;&lt;/FONT&gt;
      &lt;P&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURNS&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;TOCOS&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;AUX/KYOCERA&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      3224G&lt;BR&gt;
      3224J&lt;BR&gt;
      3224W&lt;BR&gt;
      3269P&lt;BR&gt;
      3269W&lt;BR&gt;
      3269X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      44G&lt;BR&gt;
      44J&lt;BR&gt;
      44W&lt;BR&gt;
      84P&lt;BR&gt;
      84W&lt;BR&gt;
      84X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      ST63Z&lt;BR&gt;
      ST63Y&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      ST5P&lt;BR&gt;
      ST5W&lt;BR&gt;
      ST5X&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=7&gt;&amp;nbsp;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD COLSPAN=7&gt;
      &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SINGLE TURN&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURNS&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;TOCOS&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD&gt;
      &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;AUX/KYOCERA&lt;/B&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
  &lt;TR&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      3314G&lt;BR&gt;
      3314J&lt;BR&gt;
      3364A/B&lt;BR&gt;
      3364C/D&lt;BR&gt;
      3364W/X&lt;BR&gt;
      3313G&lt;BR&gt;
      3313J&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      23B&lt;BR&gt;
      23A&lt;BR&gt;
      21X&lt;BR&gt;
      21W&lt;BR&gt;
      -&lt;BR&gt;
      22B&lt;BR&gt;
      22A&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      ST5YL/ST53YL&lt;BR&gt;
      ST5YJ/5T53YJ&lt;BR&gt;
      ST-23A&lt;BR&gt;
      ST-22B&lt;BR&gt;
      ST-22&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      ST-4B&lt;BR&gt;
      ST-4A&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      ST-3B&lt;BR&gt;
      ST-3A&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      EVM-6YS&lt;BR&gt;
      EVM-1E&lt;BR&gt;
      EVM-1G&lt;BR&gt;
      EVM-1D&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      G4B&lt;BR&gt;
      G4A&lt;BR&gt;
      TR04-3S1&lt;BR&gt;
      TRG04-2S1&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
    &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;
      DVR-43A&lt;BR&gt;
      CVR-42C&lt;BR&gt;
      CVR-42A/C&lt;BR&gt;
      -&lt;BR&gt;
      -&lt;BR&gt;&lt;/FONT&gt;
    &lt;/TD&gt;
  &lt;/TR&gt;
&lt;/TABLE&gt;
&lt;P&gt;
&lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;ALT =&amp;nbsp;ALTERNATE&lt;/B&gt;&lt;/FONT&gt;
&lt;P&gt;

&amp;nbsp;
&lt;P&gt;
&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;
&lt;/BODY&gt;&lt;/HTML&gt;</description>
<packages>
<package name="R0402" urn="urn:adsk.eagle:footprint:25625/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.483" x2="1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.483" x2="1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.483" x2="-1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.483" x2="-1.473" y2="0.483" width="0.0508" layer="39"/>
<smd name="1" x="-0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<smd name="2" x="0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="R0603" urn="urn:adsk.eagle:footprint:25626/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.432" y1="-0.356" x2="0.432" y2="-0.356" width="0.1524" layer="51"/>
<wire x1="0.432" y1="0.356" x2="-0.432" y2="0.356" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.85" y="0" dx="1" dy="1.1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1" dy="1.1" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4318" y1="-0.4318" x2="0.8382" y2="0.4318" layer="51"/>
<rectangle x1="-0.8382" y1="-0.4318" x2="-0.4318" y2="0.4318" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="R0805" urn="urn:adsk.eagle:footprint:25627/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
</package>
<package name="R0805W" urn="urn:adsk.eagle:footprint:25628/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt; wave soldering&lt;p&gt;</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.0525" y="0" dx="1.5" dy="1" layer="1"/>
<smd name="2" x="1.0525" y="0" dx="1.5" dy="1" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
</package>
<package name="R1206" urn="urn:adsk.eagle:footprint:25629/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="0.9525" y1="-0.8128" x2="-0.9652" y2="-0.8128" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0.8128" x2="-0.9652" y2="0.8128" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="2" x="1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<smd name="1" x="-1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6891" y1="-0.8763" x2="-0.9525" y2="0.8763" layer="51"/>
<rectangle x1="0.9525" y1="-0.8763" x2="1.6891" y2="0.8763" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="R1206W" urn="urn:adsk.eagle:footprint:25630/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-0.913" y1="0.8" x2="0.888" y2="0.8" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-0.8" x2="0.888" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.499" y="0" dx="1.8" dy="1.2" layer="1"/>
<smd name="2" x="1.499" y="0" dx="1.8" dy="1.2" layer="1"/>
<text x="-1.905" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-0.8763" x2="-0.9009" y2="0.8738" layer="51"/>
<rectangle x1="0.889" y1="-0.8763" x2="1.6391" y2="0.8738" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="R1210" urn="urn:adsk.eagle:footprint:25631/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-0.8999" x2="0.3" y2="0.8999" layer="35"/>
</package>
<package name="R1210W" urn="urn:adsk.eagle:footprint:25632/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.499" y="0" dx="1.8" dy="1.8" layer="1"/>
<smd name="2" x="1.499" y="0" dx="1.8" dy="1.8" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-0.8001" x2="0.3" y2="0.8001" layer="35"/>
</package>
<package name="R2010" urn="urn:adsk.eagle:footprint:25633/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<smd name="2" x="2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<text x="-3.175" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
</package>
<package name="R2010W" urn="urn:adsk.eagle:footprint:25634/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-2.311" y="0" dx="2" dy="1.8" layer="1"/>
<smd name="2" x="2.311" y="0" dx="2" dy="1.8" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
</package>
<package name="R2012" urn="urn:adsk.eagle:footprint:25635/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1001" y1="-0.5999" x2="0.1001" y2="0.5999" layer="35"/>
</package>
<package name="R2012W" urn="urn:adsk.eagle:footprint:25636/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.94" y="0" dx="1.5" dy="1" layer="1"/>
<smd name="2" x="0.94" y="0" dx="1.5" dy="1" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1001" y1="-0.5999" x2="0.1001" y2="0.5999" layer="35"/>
</package>
<package name="R2512" urn="urn:adsk.eagle:footprint:25637/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<smd name="1" x="-2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<smd name="2" x="2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R2512W" urn="urn:adsk.eagle:footprint:25638/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<smd name="1" x="-2.896" y="0" dx="2" dy="2.1" layer="1"/>
<smd name="2" x="2.896" y="0" dx="2" dy="2.1" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R3216" urn="urn:adsk.eagle:footprint:25639/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.913" y1="0.8" x2="0.888" y2="0.8" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-0.8" x2="0.888" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.905" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-0.8763" x2="-0.9009" y2="0.8738" layer="51"/>
<rectangle x1="0.889" y1="-0.8763" x2="1.6391" y2="0.8738" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="R3216W" urn="urn:adsk.eagle:footprint:25640/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-0.913" y1="0.8" x2="0.888" y2="0.8" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-0.8" x2="0.888" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.499" y="0" dx="1.8" dy="1.2" layer="1"/>
<smd name="2" x="1.499" y="0" dx="1.8" dy="1.2" layer="1"/>
<text x="-1.905" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-0.8763" x2="-0.9009" y2="0.8738" layer="51"/>
<rectangle x1="0.889" y1="-0.8763" x2="1.6391" y2="0.8738" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="R3225" urn="urn:adsk.eagle:footprint:25641/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-1" x2="0.3" y2="1" layer="35"/>
</package>
<package name="R3225W" urn="urn:adsk.eagle:footprint:25642/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.499" y="0" dx="1.8" dy="1.8" layer="1"/>
<smd name="2" x="1.499" y="0" dx="1.8" dy="1.8" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-1" x2="0.3" y2="1" layer="35"/>
</package>
<package name="R5025" urn="urn:adsk.eagle:footprint:25643/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<smd name="2" x="2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<text x="-3.175" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R5025W" urn="urn:adsk.eagle:footprint:25644/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
wave soldering</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-2.311" y="0" dx="2" dy="1.8" layer="1"/>
<smd name="2" x="2.311" y="0" dx="2" dy="1.8" layer="1"/>
<text x="-3.175" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R6332" urn="urn:adsk.eagle:footprint:25645/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
Source: http://download.siliconexpert.com/pdfs/2005/02/24/Semi_Ap/2/VSH/Resistor/dcrcwfre.pdf</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<smd name="1" x="-3.1" y="0" dx="1" dy="3.2" layer="1"/>
<smd name="2" x="3.1" y="0" dx="1" dy="3.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R6332W" urn="urn:adsk.eagle:footprint:25646/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt; wave soldering&lt;p&gt;
Source: http://download.siliconexpert.com/pdfs/2005/02/24/Semi_Ap/2/VSH/Resistor/dcrcwfre.pdf</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<smd name="1" x="-3.196" y="0" dx="1.2" dy="3.2" layer="1"/>
<smd name="2" x="3.196" y="0" dx="1.2" dy="3.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="M0805" urn="urn:adsk.eagle:footprint:25647/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.10 W</description>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="0.7112" y1="0.635" x2="-0.7112" y2="0.635" width="0.1524" layer="51"/>
<wire x1="0.7112" y1="-0.635" x2="-0.7112" y2="-0.635" width="0.1524" layer="51"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.6" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.6" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.0414" y1="-0.7112" x2="-0.6858" y2="0.7112" layer="51"/>
<rectangle x1="0.6858" y1="-0.7112" x2="1.0414" y2="0.7112" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5999" x2="0.1999" y2="0.5999" layer="35"/>
</package>
<package name="M1206" urn="urn:adsk.eagle:footprint:25648/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.25 W</description>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="1.143" y1="0.8382" x2="-1.143" y2="0.8382" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-0.8382" x2="-1.143" y2="-0.8382" width="0.1524" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.9144" x2="-1.1176" y2="0.9144" layer="51"/>
<rectangle x1="1.1176" y1="-0.9144" x2="1.7018" y2="0.9144" layer="51"/>
<rectangle x1="-0.3" y1="-0.8001" x2="0.3" y2="0.8001" layer="35"/>
</package>
<package name="M1406" urn="urn:adsk.eagle:footprint:25649/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.12 W</description>
<wire x1="-2.973" y1="0.983" x2="2.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-0.983" x2="-2.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-0.983" x2="-2.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="0.983" x2="2.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.3208" y1="0.762" x2="-1.3208" y2="0.762" width="0.1524" layer="51"/>
<wire x1="1.3208" y1="-0.762" x2="-1.3208" y2="-0.762" width="0.1524" layer="51"/>
<smd name="1" x="-1.7" y="0" dx="1.4" dy="1.8" layer="1"/>
<smd name="2" x="1.7" y="0" dx="1.4" dy="1.8" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.8542" y1="-0.8382" x2="-1.2954" y2="0.8382" layer="51"/>
<rectangle x1="1.2954" y1="-0.8382" x2="1.8542" y2="0.8382" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="M2012" urn="urn:adsk.eagle:footprint:25650/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.10 W</description>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="0.7112" y1="0.635" x2="-0.7112" y2="0.635" width="0.1524" layer="51"/>
<wire x1="0.7112" y1="-0.635" x2="-0.7112" y2="-0.635" width="0.1524" layer="51"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.6" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.6" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.0414" y1="-0.7112" x2="-0.6858" y2="0.7112" layer="51"/>
<rectangle x1="0.6858" y1="-0.7112" x2="1.0414" y2="0.7112" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5999" x2="0.1999" y2="0.5999" layer="35"/>
</package>
<package name="M2309" urn="urn:adsk.eagle:footprint:25651/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.25 W</description>
<wire x1="-4.473" y1="1.483" x2="4.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="4.473" y1="-1.483" x2="-4.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-4.473" y1="-1.483" x2="-4.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="4.473" y1="1.483" x2="4.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.413" y1="1.1684" x2="-2.4384" y2="1.1684" width="0.1524" layer="51"/>
<wire x1="2.413" y1="-1.1684" x2="-2.413" y2="-1.1684" width="0.1524" layer="51"/>
<smd name="1" x="-2.85" y="0" dx="1.5" dy="2.6" layer="1"/>
<smd name="2" x="2.85" y="0" dx="1.5" dy="2.6" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.048" y1="-1.2446" x2="-2.3876" y2="1.2446" layer="51"/>
<rectangle x1="2.3876" y1="-1.2446" x2="3.048" y2="1.2446" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="M3216" urn="urn:adsk.eagle:footprint:25652/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.25 W</description>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="1.143" y1="0.8382" x2="-1.143" y2="0.8382" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-0.8382" x2="-1.143" y2="-0.8382" width="0.1524" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.9144" x2="-1.1176" y2="0.9144" layer="51"/>
<rectangle x1="1.1176" y1="-0.9144" x2="1.7018" y2="0.9144" layer="51"/>
<rectangle x1="-0.3" y1="-0.8001" x2="0.3" y2="0.8001" layer="35"/>
</package>
<package name="M3516" urn="urn:adsk.eagle:footprint:25653/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.12 W</description>
<wire x1="-2.973" y1="0.983" x2="2.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-0.983" x2="-2.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-0.983" x2="-2.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="0.983" x2="2.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.3208" y1="0.762" x2="-1.3208" y2="0.762" width="0.1524" layer="51"/>
<wire x1="1.3208" y1="-0.762" x2="-1.3208" y2="-0.762" width="0.1524" layer="51"/>
<smd name="1" x="-1.7" y="0" dx="1.4" dy="1.8" layer="1"/>
<smd name="2" x="1.7" y="0" dx="1.4" dy="1.8" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.8542" y1="-0.8382" x2="-1.2954" y2="0.8382" layer="51"/>
<rectangle x1="1.2954" y1="-0.8382" x2="1.8542" y2="0.8382" layer="51"/>
<rectangle x1="-0.4001" y1="-0.7" x2="0.4001" y2="0.7" layer="35"/>
</package>
<package name="M5923" urn="urn:adsk.eagle:footprint:25654/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
MELF 0.25 W</description>
<wire x1="-4.473" y1="1.483" x2="4.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="4.473" y1="-1.483" x2="-4.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-4.473" y1="-1.483" x2="-4.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="4.473" y1="1.483" x2="4.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.413" y1="1.1684" x2="-2.4384" y2="1.1684" width="0.1524" layer="51"/>
<wire x1="2.413" y1="-1.1684" x2="-2.413" y2="-1.1684" width="0.1524" layer="51"/>
<smd name="1" x="-2.85" y="0" dx="1.5" dy="2.6" layer="1"/>
<smd name="2" x="2.85" y="0" dx="1.5" dy="2.6" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.048" y1="-1.2446" x2="-2.3876" y2="1.2446" layer="51"/>
<rectangle x1="2.3876" y1="-1.2446" x2="3.048" y2="1.2446" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="0204/5" urn="urn:adsk.eagle:footprint:25500/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0204, grid 5 mm</description>
<wire x1="2.54" y1="0" x2="2.032" y2="0" width="0.508" layer="51"/>
<wire x1="-2.54" y1="0" x2="-2.032" y2="0" width="0.508" layer="51"/>
<wire x1="-1.778" y1="0.635" x2="-1.524" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.778" y1="-0.635" x2="-1.524" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="1.524" y1="-0.889" x2="1.778" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="1.524" y1="0.889" x2="1.778" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.778" y1="-0.635" x2="-1.778" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="0.889" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="0.762" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-0.889" x2="-1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="-0.762" x2="-1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0.762" x2="1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0.762" x2="-1.143" y2="0.762" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-0.762" x2="1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-0.762" x2="-1.143" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="1.524" y1="0.889" x2="1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.524" y1="-0.889" x2="1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.635" x2="1.778" y2="0.635" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.0066" y="1.1684" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.1336" y="-2.3114" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-2.032" y1="-0.254" x2="-1.778" y2="0.254" layer="51"/>
<rectangle x1="1.778" y1="-0.254" x2="2.032" y2="0.254" layer="51"/>
</package>
<package name="0204/7" urn="urn:adsk.eagle:footprint:25507/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0204, grid 7.5 mm</description>
<wire x1="3.81" y1="0" x2="2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-3.81" y1="0" x2="-2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-2.54" y1="0.762" x2="-2.286" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.286" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="1.016" x2="2.54" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="1.016" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="0.889" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-1.016" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="-0.889" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="-1.778" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="-1.778" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="2.286" y1="1.016" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-1.016" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="2.54" y2="0.762" width="0.1524" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.2954" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.6256" y="-0.4826" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.54" y1="-0.254" x2="2.921" y2="0.254" layer="21"/>
<rectangle x1="-2.921" y1="-0.254" x2="-2.54" y2="0.254" layer="21"/>
</package>
<package name="0204V" urn="urn:adsk.eagle:footprint:25508/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0204, grid 2.5 mm</description>
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.508" layer="51"/>
<wire x1="-0.127" y1="0" x2="0.127" y2="0" width="0.508" layer="21"/>
<circle x="-1.27" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="-1.27" y="0" radius="0.635" width="0.0508" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.1336" y="1.1684" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.1336" y="-2.3114" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0207/10" urn="urn:adsk.eagle:footprint:25501/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 10 mm</description>
<wire x1="5.08" y1="0" x2="4.064" y2="0" width="0.6096" layer="51"/>
<wire x1="-5.08" y1="0" x2="-4.064" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.048" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.2606" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
</package>
<package name="0207/12" urn="urn:adsk.eagle:footprint:25502/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 12 mm</description>
<wire x1="6.35" y1="0" x2="5.334" y2="0" width="0.6096" layer="51"/>
<wire x1="-6.35" y1="0" x2="-5.334" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="4.445" y1="0" x2="4.064" y2="0" width="0.6096" layer="21"/>
<wire x1="-4.445" y1="0" x2="-4.064" y2="0" width="0.6096" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.175" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
<rectangle x1="4.445" y1="-0.3048" x2="5.3086" y2="0.3048" layer="21"/>
<rectangle x1="-5.3086" y1="-0.3048" x2="-4.445" y2="0.3048" layer="21"/>
</package>
<package name="0207/15" urn="urn:adsk.eagle:footprint:25506/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 15mm</description>
<wire x1="7.62" y1="0" x2="6.604" y2="0" width="0.6096" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.604" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="5.715" y1="0" x2="4.064" y2="0" width="0.6096" layer="21"/>
<wire x1="-5.715" y1="0" x2="-4.064" y2="0" width="0.6096" layer="21"/>
<pad name="1" x="-7.62" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.175" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
<rectangle x1="5.715" y1="-0.3048" x2="6.5786" y2="0.3048" layer="21"/>
<rectangle x1="-6.5786" y1="-0.3048" x2="-5.715" y2="0.3048" layer="21"/>
</package>
<package name="0207/2V" urn="urn:adsk.eagle:footprint:25503/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 2.5 mm</description>
<wire x1="-1.27" y1="0" x2="-0.381" y2="0" width="0.6096" layer="51"/>
<wire x1="-0.254" y1="0" x2="0.254" y2="0" width="0.6096" layer="21"/>
<wire x1="0.381" y1="0" x2="1.27" y2="0" width="0.6096" layer="51"/>
<circle x="-1.27" y="0" radius="1.27" width="0.1524" layer="21"/>
<circle x="-1.27" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-0.0508" y="1.016" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.0508" y="-2.2352" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0207/5V" urn="urn:adsk.eagle:footprint:25504/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 5 mm</description>
<wire x1="-2.54" y1="0" x2="-0.889" y2="0" width="0.6096" layer="51"/>
<wire x1="-0.762" y1="0" x2="0.762" y2="0" width="0.6096" layer="21"/>
<wire x1="0.889" y1="0" x2="2.54" y2="0" width="0.6096" layer="51"/>
<circle x="-2.54" y="0" radius="1.27" width="0.1016" layer="21"/>
<circle x="-2.54" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-1.143" y="0.889" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.143" y="-2.159" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0207/7" urn="urn:adsk.eagle:footprint:25505/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 7.5 mm</description>
<wire x1="-3.81" y1="0" x2="-3.429" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="51"/>
<wire x1="3.429" y1="0" x2="3.81" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.5588" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-3.429" y1="-0.3048" x2="-3.175" y2="0.3048" layer="51"/>
<rectangle x1="3.175" y1="-0.3048" x2="3.429" y2="0.3048" layer="51"/>
</package>
<package name="0309/10" urn="urn:adsk.eagle:footprint:25655/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0309, grid 10mm</description>
<wire x1="-4.699" y1="0" x2="-5.08" y2="0" width="0.6096" layer="51"/>
<wire x1="-4.318" y1="1.27" x2="-4.064" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.318" y1="-1.27" x2="-4.064" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="4.064" y1="-1.524" x2="4.318" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="4.064" y1="1.524" x2="4.318" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.318" y1="-1.27" x2="-4.318" y2="1.27" width="0.1524" layer="51"/>
<wire x1="-4.064" y1="1.524" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="1.397" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="-1.524" x2="-3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="-1.397" x2="-3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="1.397" x2="3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="1.397" x2="-3.302" y2="1.397" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-1.397" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-1.397" x2="-3.302" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="4.064" y1="1.524" x2="3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="4.064" y1="-1.524" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="4.318" y1="-1.27" x2="4.318" y2="1.27" width="0.1524" layer="51"/>
<wire x1="5.08" y1="0" x2="4.699" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-5.08" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="0.8128" shape="octagon"/>
<text x="-4.191" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-4.6228" y1="-0.3048" x2="-4.318" y2="0.3048" layer="51"/>
<rectangle x1="4.318" y1="-0.3048" x2="4.6228" y2="0.3048" layer="51"/>
</package>
<package name="0309/12" urn="urn:adsk.eagle:footprint:25656/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0309, grid 12.5 mm</description>
<wire x1="6.35" y1="0" x2="5.08" y2="0" width="0.6096" layer="51"/>
<wire x1="-6.35" y1="0" x2="-5.08" y2="0" width="0.6096" layer="51"/>
<wire x1="-4.318" y1="1.27" x2="-4.064" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.318" y1="-1.27" x2="-4.064" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="4.064" y1="-1.524" x2="4.318" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="4.064" y1="1.524" x2="4.318" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.318" y1="-1.27" x2="-4.318" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="1.524" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="1.397" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="-1.524" x2="-3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="-1.397" x2="-3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="1.397" x2="3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="1.397" x2="-3.302" y2="1.397" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-1.397" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-1.397" x2="-3.302" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="4.064" y1="1.524" x2="3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="4.064" y1="-1.524" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="4.318" y1="-1.27" x2="4.318" y2="1.27" width="0.1524" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="0.8128" shape="octagon"/>
<text x="-4.191" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="4.318" y1="-0.3048" x2="5.1816" y2="0.3048" layer="21"/>
<rectangle x1="-5.1816" y1="-0.3048" x2="-4.318" y2="0.3048" layer="21"/>
</package>
<package name="0309V" urn="urn:adsk.eagle:footprint:25657/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0309, grid 2.5 mm</description>
<wire x1="1.27" y1="0" x2="0.635" y2="0" width="0.6096" layer="51"/>
<wire x1="-0.635" y1="0" x2="-1.27" y2="0" width="0.6096" layer="51"/>
<circle x="-1.27" y="0" radius="1.524" width="0.1524" layer="21"/>
<circle x="-1.27" y="0" radius="0.762" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="0.254" y="1.016" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0.254" y="-2.2098" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="0.254" y1="-0.3048" x2="0.5588" y2="0.3048" layer="51"/>
<rectangle x1="-0.635" y1="-0.3048" x2="-0.3302" y2="0.3048" layer="51"/>
<rectangle x1="-0.3302" y1="-0.3048" x2="0.254" y2="0.3048" layer="21"/>
</package>
<package name="0411/12" urn="urn:adsk.eagle:footprint:25658/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0411, grid 12.5 mm</description>
<wire x1="6.35" y1="0" x2="5.461" y2="0" width="0.762" layer="51"/>
<wire x1="-6.35" y1="0" x2="-5.461" y2="0" width="0.762" layer="51"/>
<wire x1="5.08" y1="-1.651" x2="5.08" y2="1.651" width="0.1524" layer="21"/>
<wire x1="4.699" y1="2.032" x2="5.08" y2="1.651" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.08" y1="-1.651" x2="-4.699" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="4.699" y1="-2.032" x2="5.08" y2="-1.651" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.651" x2="-4.699" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="2.032" x2="4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="3.937" y1="1.905" x2="4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-2.032" x2="4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="3.937" y1="-1.905" x2="4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="1.905" x2="-4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="1.905" x2="3.937" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="-1.905" x2="-4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="-1.905" x2="3.937" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.651" x2="-5.08" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="2.032" x2="-4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="-2.032" x2="-4.064" y2="-2.032" width="0.1524" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="0.9144" shape="octagon"/>
<text x="-5.08" y="2.413" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.5814" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-5.3594" y1="-0.381" x2="-5.08" y2="0.381" layer="21"/>
<rectangle x1="5.08" y1="-0.381" x2="5.3594" y2="0.381" layer="21"/>
</package>
<package name="0411/15" urn="urn:adsk.eagle:footprint:25659/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0411, grid 15 mm</description>
<wire x1="5.08" y1="-1.651" x2="5.08" y2="1.651" width="0.1524" layer="21"/>
<wire x1="4.699" y1="2.032" x2="5.08" y2="1.651" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.08" y1="-1.651" x2="-4.699" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="4.699" y1="-2.032" x2="5.08" y2="-1.651" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.651" x2="-4.699" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="2.032" x2="4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="3.937" y1="1.905" x2="4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-2.032" x2="4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="3.937" y1="-1.905" x2="4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="1.905" x2="-4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="1.905" x2="3.937" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="-1.905" x2="-4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="-1.905" x2="3.937" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.651" x2="-5.08" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="2.032" x2="-4.064" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="-2.032" x2="-4.064" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0" x2="-6.35" y2="0" width="0.762" layer="51"/>
<wire x1="6.35" y1="0" x2="7.62" y2="0" width="0.762" layer="51"/>
<pad name="1" x="-7.62" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="0.9144" shape="octagon"/>
<text x="-5.08" y="2.413" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.5814" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="5.08" y1="-0.381" x2="6.477" y2="0.381" layer="21"/>
<rectangle x1="-6.477" y1="-0.381" x2="-5.08" y2="0.381" layer="21"/>
</package>
<package name="0411V" urn="urn:adsk.eagle:footprint:25660/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0411, grid 3.81 mm</description>
<wire x1="1.27" y1="0" x2="0.3048" y2="0" width="0.762" layer="51"/>
<wire x1="-1.5748" y1="0" x2="-2.54" y2="0" width="0.762" layer="51"/>
<circle x="-2.54" y="0" radius="2.032" width="0.1524" layer="21"/>
<circle x="-2.54" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.9144" shape="octagon"/>
<text x="-0.508" y="1.143" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.5334" y="-2.413" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.4732" y1="-0.381" x2="0.2032" y2="0.381" layer="21"/>
</package>
<package name="0414/15" urn="urn:adsk.eagle:footprint:25661/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0414, grid 15 mm</description>
<wire x1="7.62" y1="0" x2="6.604" y2="0" width="0.8128" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.604" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.096" y1="1.905" x2="-5.842" y2="2.159" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.096" y1="-1.905" x2="-5.842" y2="-2.159" width="0.1524" layer="21" curve="90"/>
<wire x1="5.842" y1="-2.159" x2="6.096" y2="-1.905" width="0.1524" layer="21" curve="90"/>
<wire x1="5.842" y1="2.159" x2="6.096" y2="1.905" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.096" y1="-1.905" x2="-6.096" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-5.842" y1="2.159" x2="-4.953" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="2.032" x2="-4.953" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-5.842" y1="-2.159" x2="-4.953" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-2.032" x2="-4.953" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="4.826" y1="2.032" x2="4.953" y2="2.159" width="0.1524" layer="21"/>
<wire x1="4.826" y1="2.032" x2="-4.826" y2="2.032" width="0.1524" layer="21"/>
<wire x1="4.826" y1="-2.032" x2="4.953" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="4.826" y1="-2.032" x2="-4.826" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="5.842" y1="2.159" x2="4.953" y2="2.159" width="0.1524" layer="21"/>
<wire x1="5.842" y1="-2.159" x2="4.953" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-1.905" x2="6.096" y2="1.905" width="0.1524" layer="21"/>
<pad name="1" x="-7.62" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="1.016" shape="octagon"/>
<text x="-6.096" y="2.5654" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.318" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="6.096" y1="-0.4064" x2="6.5024" y2="0.4064" layer="21"/>
<rectangle x1="-6.5024" y1="-0.4064" x2="-6.096" y2="0.4064" layer="21"/>
</package>
<package name="0414V" urn="urn:adsk.eagle:footprint:25662/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0414, grid 5 mm</description>
<wire x1="2.54" y1="0" x2="1.397" y2="0" width="0.8128" layer="51"/>
<wire x1="-2.54" y1="0" x2="-1.397" y2="0" width="0.8128" layer="51"/>
<circle x="-2.54" y="0" radius="2.159" width="0.1524" layer="21"/>
<circle x="-2.54" y="0" radius="1.143" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="1.016" shape="octagon"/>
<text x="-0.381" y="1.1684" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.381" y="-2.3622" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.2954" y1="-0.4064" x2="1.2954" y2="0.4064" layer="21"/>
</package>
<package name="0617/17" urn="urn:adsk.eagle:footprint:25663/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0617, grid 17.5 mm</description>
<wire x1="-8.89" y1="0" x2="-8.636" y2="0" width="0.8128" layer="51"/>
<wire x1="-7.874" y1="3.048" x2="-6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="2.794" x2="-6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="-3.048" x2="-6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="-2.794" x2="-6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="2.794" x2="6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="2.794" x2="-6.731" y2="2.794" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.794" x2="6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.794" x2="-6.731" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="7.874" y1="3.048" x2="6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="7.874" y1="-3.048" x2="6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-2.667" x2="-8.255" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.016" x2="-8.255" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="1.016" x2="-8.255" y2="2.667" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-2.667" x2="8.255" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.016" x2="8.255" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="8.255" y1="1.016" x2="8.255" y2="2.667" width="0.1524" layer="21"/>
<wire x1="8.636" y1="0" x2="8.89" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.255" y1="2.667" x2="-7.874" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="7.874" y1="3.048" x2="8.255" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="-8.255" y1="-2.667" x2="-7.874" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="7.874" y1="-3.048" x2="8.255" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<pad name="1" x="-8.89" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="8.89" y="0" drill="1.016" shape="octagon"/>
<text x="-8.128" y="3.4544" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.096" y="-0.7112" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-8.5344" y1="-0.4064" x2="-8.2296" y2="0.4064" layer="51"/>
<rectangle x1="8.2296" y1="-0.4064" x2="8.5344" y2="0.4064" layer="51"/>
</package>
<package name="0617/22" urn="urn:adsk.eagle:footprint:25664/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0617, grid 22.5 mm</description>
<wire x1="-10.287" y1="0" x2="-11.43" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.255" y1="-2.667" x2="-8.255" y2="2.667" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="3.048" x2="-6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="2.794" x2="-6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="-3.048" x2="-6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="-2.794" x2="-6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="2.794" x2="6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="2.794" x2="-6.731" y2="2.794" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.794" x2="6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.794" x2="-6.731" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="7.874" y1="3.048" x2="6.985" y2="3.048" width="0.1524" layer="21"/>
<wire x1="7.874" y1="-3.048" x2="6.985" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-2.667" x2="8.255" y2="2.667" width="0.1524" layer="21"/>
<wire x1="11.43" y1="0" x2="10.287" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.255" y1="2.667" x2="-7.874" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="-8.255" y1="-2.667" x2="-7.874" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="7.874" y1="3.048" x2="8.255" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="7.874" y1="-3.048" x2="8.255" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<pad name="1" x="-11.43" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.43" y="0" drill="1.016" shape="octagon"/>
<text x="-8.255" y="3.4544" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.477" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-10.1854" y1="-0.4064" x2="-8.255" y2="0.4064" layer="21"/>
<rectangle x1="8.255" y1="-0.4064" x2="10.1854" y2="0.4064" layer="21"/>
</package>
<package name="0617V" urn="urn:adsk.eagle:footprint:25665/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0617, grid 5 mm</description>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.8128" layer="51"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.8128" layer="51"/>
<circle x="-2.54" y="0" radius="3.048" width="0.1524" layer="21"/>
<circle x="-2.54" y="0" radius="1.143" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="1.016" shape="octagon"/>
<text x="0.635" y="1.4224" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0.635" y="-2.6162" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.3208" y1="-0.4064" x2="1.3208" y2="0.4064" layer="21"/>
</package>
<package name="0922/22" urn="urn:adsk.eagle:footprint:25666/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0922, grid 22.5 mm</description>
<wire x1="11.43" y1="0" x2="10.795" y2="0" width="0.8128" layer="51"/>
<wire x1="-11.43" y1="0" x2="-10.795" y2="0" width="0.8128" layer="51"/>
<wire x1="-10.16" y1="-4.191" x2="-10.16" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-9.779" y1="4.572" x2="-8.89" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-8.636" y1="4.318" x2="-8.89" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-9.779" y1="-4.572" x2="-8.89" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="-8.636" y1="-4.318" x2="-8.89" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="8.636" y1="4.318" x2="8.89" y2="4.572" width="0.1524" layer="21"/>
<wire x1="8.636" y1="4.318" x2="-8.636" y2="4.318" width="0.1524" layer="21"/>
<wire x1="8.636" y1="-4.318" x2="8.89" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="8.636" y1="-4.318" x2="-8.636" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="9.779" y1="4.572" x2="8.89" y2="4.572" width="0.1524" layer="21"/>
<wire x1="9.779" y1="-4.572" x2="8.89" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-4.191" x2="10.16" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-4.191" x2="-9.779" y2="-4.572" width="0.1524" layer="21" curve="90"/>
<wire x1="-10.16" y1="4.191" x2="-9.779" y2="4.572" width="0.1524" layer="21" curve="-90"/>
<wire x1="9.779" y1="-4.572" x2="10.16" y2="-4.191" width="0.1524" layer="21" curve="90"/>
<wire x1="9.779" y1="4.572" x2="10.16" y2="4.191" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-11.43" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.43" y="0" drill="1.016" shape="octagon"/>
<text x="-10.16" y="5.1054" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.477" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-10.7188" y1="-0.4064" x2="-10.16" y2="0.4064" layer="51"/>
<rectangle x1="10.16" y1="-0.4064" x2="10.3124" y2="0.4064" layer="21"/>
<rectangle x1="-10.3124" y1="-0.4064" x2="-10.16" y2="0.4064" layer="21"/>
<rectangle x1="10.16" y1="-0.4064" x2="10.7188" y2="0.4064" layer="51"/>
</package>
<package name="P0613V" urn="urn:adsk.eagle:footprint:25667/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0613, grid 5 mm</description>
<wire x1="2.54" y1="0" x2="1.397" y2="0" width="0.8128" layer="51"/>
<wire x1="-2.54" y1="0" x2="-1.397" y2="0" width="0.8128" layer="51"/>
<circle x="-2.54" y="0" radius="2.286" width="0.1524" layer="21"/>
<circle x="-2.54" y="0" radius="1.143" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="1.016" shape="octagon"/>
<text x="-0.254" y="1.143" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.254" y="-2.413" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.2954" y1="-0.4064" x2="1.3208" y2="0.4064" layer="21"/>
</package>
<package name="P0613/15" urn="urn:adsk.eagle:footprint:25668/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0613, grid 15 mm</description>
<wire x1="7.62" y1="0" x2="6.985" y2="0" width="0.8128" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.985" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.477" y1="2.032" x2="-6.223" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.477" y1="-2.032" x2="-6.223" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="6.223" y1="-2.286" x2="6.477" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="6.223" y1="2.286" x2="6.477" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.223" y1="2.286" x2="-5.334" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="2.159" x2="-5.334" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-6.223" y1="-2.286" x2="-5.334" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="-2.159" x2="-5.334" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="5.207" y1="2.159" x2="5.334" y2="2.286" width="0.1524" layer="21"/>
<wire x1="5.207" y1="2.159" x2="-5.207" y2="2.159" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-2.159" x2="5.334" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-2.159" x2="-5.207" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="6.223" y1="2.286" x2="5.334" y2="2.286" width="0.1524" layer="21"/>
<wire x1="6.223" y1="-2.286" x2="5.334" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="6.477" y1="-0.635" x2="6.477" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="6.477" y1="-0.635" x2="6.477" y2="0.635" width="0.1524" layer="51"/>
<wire x1="6.477" y1="2.032" x2="6.477" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="-2.032" x2="-6.477" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="0.635" x2="-6.477" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-6.477" y1="0.635" x2="-6.477" y2="2.032" width="0.1524" layer="21"/>
<pad name="1" x="-7.62" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="1.016" shape="octagon"/>
<text x="-6.477" y="2.6924" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.318" y="-0.7112" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-7.0358" y1="-0.4064" x2="-6.477" y2="0.4064" layer="51"/>
<rectangle x1="6.477" y1="-0.4064" x2="7.0358" y2="0.4064" layer="51"/>
</package>
<package name="P0817/22" urn="urn:adsk.eagle:footprint:25669/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0817, grid 22.5 mm</description>
<wire x1="-10.414" y1="0" x2="-11.43" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.509" y1="-3.429" x2="-8.509" y2="3.429" width="0.1524" layer="21"/>
<wire x1="-8.128" y1="3.81" x2="-7.239" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="3.556" x2="-7.239" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-8.128" y1="-3.81" x2="-7.239" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-3.556" x2="-7.239" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="6.985" y1="3.556" x2="7.239" y2="3.81" width="0.1524" layer="21"/>
<wire x1="6.985" y1="3.556" x2="-6.985" y2="3.556" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-3.556" x2="7.239" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-3.556" x2="-6.985" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="8.128" y1="3.81" x2="7.239" y2="3.81" width="0.1524" layer="21"/>
<wire x1="8.128" y1="-3.81" x2="7.239" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-3.429" x2="8.509" y2="3.429" width="0.1524" layer="21"/>
<wire x1="11.43" y1="0" x2="10.414" y2="0" width="0.8128" layer="51"/>
<wire x1="-8.509" y1="3.429" x2="-8.128" y2="3.81" width="0.1524" layer="21" curve="-90"/>
<wire x1="-8.509" y1="-3.429" x2="-8.128" y2="-3.81" width="0.1524" layer="21" curve="90"/>
<wire x1="8.128" y1="3.81" x2="8.509" y2="3.429" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.128" y1="-3.81" x2="8.509" y2="-3.429" width="0.1524" layer="21" curve="90"/>
<pad name="1" x="-11.43" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.43" y="0" drill="1.016" shape="octagon"/>
<text x="-8.382" y="4.2164" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.223" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="6.604" y="-2.2606" size="1.27" layer="51" ratio="10" rot="R90">0817</text>
<rectangle x1="8.509" y1="-0.4064" x2="10.3124" y2="0.4064" layer="21"/>
<rectangle x1="-10.3124" y1="-0.4064" x2="-8.509" y2="0.4064" layer="21"/>
</package>
<package name="P0817V" urn="urn:adsk.eagle:footprint:25670/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0817, grid 6.35 mm</description>
<wire x1="-3.81" y1="0" x2="-5.08" y2="0" width="0.8128" layer="51"/>
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.8128" layer="51"/>
<circle x="-5.08" y="0" radius="3.81" width="0.1524" layer="21"/>
<circle x="-5.08" y="0" radius="1.27" width="0.1524" layer="51"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="1.016" shape="octagon"/>
<text x="-1.016" y="1.27" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.016" y="-2.54" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-6.858" y="2.032" size="1.016" layer="21" ratio="12">0817</text>
<rectangle x1="-3.81" y1="-0.4064" x2="0" y2="0.4064" layer="21"/>
</package>
<package name="V234/12" urn="urn:adsk.eagle:footprint:25671/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type V234, grid 12.5 mm</description>
<wire x1="-4.953" y1="1.524" x2="-4.699" y2="1.778" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="1.778" x2="4.953" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="-1.778" x2="4.953" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.953" y1="-1.524" x2="-4.699" y2="-1.778" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.699" y1="1.778" x2="4.699" y2="1.778" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="1.524" x2="-4.953" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-1.778" x2="-4.699" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="4.953" y1="1.524" x2="4.953" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="6.35" y1="0" x2="5.461" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.35" y1="0" x2="-5.461" y2="0" width="0.8128" layer="51"/>
<pad name="1" x="-6.35" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="1.016" shape="octagon"/>
<text x="-4.953" y="2.159" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="4.953" y1="-0.4064" x2="5.4102" y2="0.4064" layer="21"/>
<rectangle x1="-5.4102" y1="-0.4064" x2="-4.953" y2="0.4064" layer="21"/>
</package>
<package name="V235/17" urn="urn:adsk.eagle:footprint:25672/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type V235, grid 17.78 mm</description>
<wire x1="-6.731" y1="2.921" x2="6.731" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-7.112" y1="2.54" x2="-7.112" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.921" x2="-6.731" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="7.112" y1="2.54" x2="7.112" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="8.89" y1="0" x2="7.874" y2="0" width="1.016" layer="51"/>
<wire x1="-7.874" y1="0" x2="-8.89" y2="0" width="1.016" layer="51"/>
<wire x1="-7.112" y1="-2.54" x2="-6.731" y2="-2.921" width="0.1524" layer="21" curve="90"/>
<wire x1="6.731" y1="2.921" x2="7.112" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.731" y1="-2.921" x2="7.112" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-7.112" y1="2.54" x2="-6.731" y2="2.921" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-8.89" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="8.89" y="0" drill="1.1938" shape="octagon"/>
<text x="-6.858" y="3.302" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.842" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="7.112" y1="-0.508" x2="7.747" y2="0.508" layer="21"/>
<rectangle x1="-7.747" y1="-0.508" x2="-7.112" y2="0.508" layer="21"/>
</package>
<package name="V526-0" urn="urn:adsk.eagle:footprint:25673/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type V526-0, grid 2.5 mm</description>
<wire x1="-2.54" y1="1.016" x2="-2.286" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.286" y1="1.27" x2="2.54" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.286" y1="-1.27" x2="2.54" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.54" y1="-1.016" x2="-2.286" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="1.27" x2="-2.286" y2="1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.016" x2="2.54" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-1.27" x2="2.286" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.016" x2="-2.54" y2="-1.016" width="0.1524" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.413" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.413" y="-2.794" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0102R" urn="urn:adsk.eagle:footprint:25674/1" library_version="1">
<description>&lt;b&gt;CECC Size RC2211&lt;/b&gt; Reflow Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-1" y1="-0.5" x2="1" y2="-0.5" width="0.2032" layer="51"/>
<wire x1="1" y1="-0.5" x2="1" y2="0.5" width="0.2032" layer="51"/>
<wire x1="1" y1="0.5" x2="-1" y2="0.5" width="0.2032" layer="51"/>
<wire x1="-1" y1="0.5" x2="-1" y2="-0.5" width="0.2032" layer="51"/>
<smd name="1" x="-0.9" y="0" dx="0.5" dy="1.3" layer="1"/>
<smd name="2" x="0.9" y="0" dx="0.5" dy="1.3" layer="1"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0102W" urn="urn:adsk.eagle:footprint:25675/1" library_version="1">
<description>&lt;b&gt;CECC Size RC2211&lt;/b&gt; Wave Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-1" y1="-0.5" x2="1" y2="-0.5" width="0.2032" layer="51"/>
<wire x1="1" y1="-0.5" x2="1" y2="0.5" width="0.2032" layer="51"/>
<wire x1="1" y1="0.5" x2="-1" y2="0.5" width="0.2032" layer="51"/>
<wire x1="-1" y1="0.5" x2="-1" y2="-0.5" width="0.2032" layer="51"/>
<smd name="1" x="-0.95" y="0" dx="0.6" dy="1.3" layer="1"/>
<smd name="2" x="0.95" y="0" dx="0.6" dy="1.3" layer="1"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0204R" urn="urn:adsk.eagle:footprint:25676/1" library_version="1">
<description>&lt;b&gt;CECC Size RC3715&lt;/b&gt; Reflow Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-1.7" y1="-0.6" x2="1.7" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="1.7" y1="-0.6" x2="1.7" y2="0.6" width="0.2032" layer="51"/>
<wire x1="1.7" y1="0.6" x2="-1.7" y2="0.6" width="0.2032" layer="51"/>
<wire x1="-1.7" y1="0.6" x2="-1.7" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="0.938" y1="0.6" x2="-0.938" y2="0.6" width="0.2032" layer="21"/>
<wire x1="-0.938" y1="-0.6" x2="0.938" y2="-0.6" width="0.2032" layer="21"/>
<smd name="1" x="-1.5" y="0" dx="0.8" dy="1.6" layer="1"/>
<smd name="2" x="1.5" y="0" dx="0.8" dy="1.6" layer="1"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0204W" urn="urn:adsk.eagle:footprint:25677/1" library_version="1">
<description>&lt;b&gt;CECC Size RC3715&lt;/b&gt; Wave Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-1.7" y1="-0.6" x2="1.7" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="1.7" y1="-0.6" x2="1.7" y2="0.6" width="0.2032" layer="51"/>
<wire x1="1.7" y1="0.6" x2="-1.7" y2="0.6" width="0.2032" layer="51"/>
<wire x1="-1.7" y1="0.6" x2="-1.7" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="0.684" y1="0.6" x2="-0.684" y2="0.6" width="0.2032" layer="21"/>
<wire x1="-0.684" y1="-0.6" x2="0.684" y2="-0.6" width="0.2032" layer="21"/>
<smd name="1" x="-1.5" y="0" dx="1.2" dy="1.6" layer="1"/>
<smd name="2" x="1.5" y="0" dx="1.2" dy="1.6" layer="1"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0207R" urn="urn:adsk.eagle:footprint:25678/1" library_version="1">
<description>&lt;b&gt;CECC Size RC6123&lt;/b&gt; Reflow Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-2.8" y1="-1" x2="2.8" y2="-1" width="0.2032" layer="51"/>
<wire x1="2.8" y1="-1" x2="2.8" y2="1" width="0.2032" layer="51"/>
<wire x1="2.8" y1="1" x2="-2.8" y2="1" width="0.2032" layer="51"/>
<wire x1="-2.8" y1="1" x2="-2.8" y2="-1" width="0.2032" layer="51"/>
<wire x1="1.2125" y1="1" x2="-1.2125" y2="1" width="0.2032" layer="21"/>
<wire x1="-1.2125" y1="-1" x2="1.2125" y2="-1" width="0.2032" layer="21"/>
<smd name="1" x="-2.25" y="0" dx="1.6" dy="2.5" layer="1"/>
<smd name="2" x="2.25" y="0" dx="1.6" dy="2.5" layer="1"/>
<text x="-2.2225" y="1.5875" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.2225" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MINI_MELF-0207W" urn="urn:adsk.eagle:footprint:25679/1" library_version="1">
<description>&lt;b&gt;CECC Size RC6123&lt;/b&gt; Wave Soldering&lt;p&gt;
source Beyschlag</description>
<wire x1="-2.8" y1="-1" x2="2.8" y2="-1" width="0.2032" layer="51"/>
<wire x1="2.8" y1="-1" x2="2.8" y2="1" width="0.2032" layer="51"/>
<wire x1="2.8" y1="1" x2="-2.8" y2="1" width="0.2032" layer="51"/>
<wire x1="-2.8" y1="1" x2="-2.8" y2="-1" width="0.2032" layer="51"/>
<wire x1="1.149" y1="1" x2="-1.149" y2="1" width="0.2032" layer="21"/>
<wire x1="-1.149" y1="-1" x2="1.149" y2="-1" width="0.2032" layer="21"/>
<smd name="1" x="-2.6" y="0" dx="2.4" dy="2.5" layer="1"/>
<smd name="2" x="2.6" y="0" dx="2.4" dy="2.5" layer="1"/>
<text x="-2.54" y="1.5875" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="0922V" urn="urn:adsk.eagle:footprint:25680/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0922, grid 7.5 mm</description>
<wire x1="2.54" y1="0" x2="1.397" y2="0" width="0.8128" layer="51"/>
<wire x1="-5.08" y1="0" x2="-3.81" y2="0" width="0.8128" layer="51"/>
<circle x="-5.08" y="0" radius="4.572" width="0.1524" layer="21"/>
<circle x="-5.08" y="0" radius="1.905" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="1.016" shape="octagon"/>
<text x="-0.508" y="1.6764" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.508" y="-2.9972" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-6.858" y="2.54" size="1.016" layer="21" ratio="12">0922</text>
<rectangle x1="-3.81" y1="-0.4064" x2="1.3208" y2="0.4064" layer="21"/>
</package>
<package name="RDH/15" urn="urn:adsk.eagle:footprint:25681/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type RDH, grid 15 mm</description>
<wire x1="-7.62" y1="0" x2="-6.858" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.096" y1="3.048" x2="-5.207" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="2.794" x2="-5.207" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="-3.048" x2="-5.207" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="-2.794" x2="-5.207" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="4.953" y1="2.794" x2="5.207" y2="3.048" width="0.1524" layer="21"/>
<wire x1="4.953" y1="2.794" x2="-4.953" y2="2.794" width="0.1524" layer="21"/>
<wire x1="4.953" y1="-2.794" x2="5.207" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="4.953" y1="-2.794" x2="-4.953" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="6.096" y1="3.048" x2="5.207" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-3.048" x2="5.207" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="-2.667" x2="-6.477" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="1.016" x2="-6.477" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-6.477" y1="1.016" x2="-6.477" y2="2.667" width="0.1524" layer="21"/>
<wire x1="6.477" y1="-2.667" x2="6.477" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="6.477" y1="1.016" x2="6.477" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="6.477" y1="1.016" x2="6.477" y2="2.667" width="0.1524" layer="21"/>
<wire x1="6.858" y1="0" x2="7.62" y2="0" width="0.8128" layer="51"/>
<wire x1="-6.477" y1="2.667" x2="-6.096" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.096" y1="3.048" x2="6.477" y2="2.667" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.477" y1="-2.667" x2="-6.096" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="6.096" y1="-3.048" x2="6.477" y2="-2.667" width="0.1524" layer="21" curve="90"/>
<pad name="1" x="-7.62" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="1.016" shape="octagon"/>
<text x="-6.35" y="3.4544" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.318" y="-0.5842" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="4.572" y="-1.7272" size="1.27" layer="51" ratio="10" rot="R90">RDH</text>
<rectangle x1="-6.7564" y1="-0.4064" x2="-6.4516" y2="0.4064" layer="51"/>
<rectangle x1="6.4516" y1="-0.4064" x2="6.7564" y2="0.4064" layer="51"/>
</package>
<package name="MINI_MELF-0102AX" urn="urn:adsk.eagle:footprint:25682/1" library_version="1">
<description>&lt;b&gt;Mini MELF 0102 Axial&lt;/b&gt;</description>
<circle x="0" y="0" radius="0.6" width="0" layer="51"/>
<circle x="0" y="0" radius="0.6" width="0" layer="52"/>
<smd name="1" x="0" y="0" dx="1.9" dy="1.9" layer="1" roundness="100"/>
<smd name="2" x="0" y="0" dx="1.9" dy="1.9" layer="16" roundness="100"/>
<text x="-1.27" y="0.9525" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.2225" size="1.27" layer="27">&gt;VALUE</text>
<hole x="0" y="0" drill="1.3"/>
</package>
<package name="R0201" urn="urn:adsk.eagle:footprint:25683/1" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt; chip&lt;p&gt;
Source: http://www.vishay.com/docs/20008/dcrcw.pdf</description>
<smd name="1" x="-0.255" y="0" dx="0.28" dy="0.43" layer="1"/>
<smd name="2" x="0.255" y="0" dx="0.28" dy="0.43" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.3" y1="-0.15" x2="-0.15" y2="0.15" layer="51"/>
<rectangle x1="0.15" y1="-0.15" x2="0.3" y2="0.15" layer="51"/>
<rectangle x1="-0.15" y1="-0.15" x2="0.15" y2="0.15" layer="21"/>
</package>
<package name="VTA52" urn="urn:adsk.eagle:footprint:25684/1" library_version="1">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RBR52&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-15.24" y1="0" x2="-13.97" y2="0" width="0.6096" layer="51"/>
<wire x1="12.6225" y1="0.025" x2="12.6225" y2="4.725" width="0.1524" layer="21"/>
<wire x1="12.6225" y1="4.725" x2="-12.6225" y2="4.725" width="0.1524" layer="21"/>
<wire x1="-12.6225" y1="4.725" x2="-12.6225" y2="0.025" width="0.1524" layer="21"/>
<wire x1="-12.6225" y1="0.025" x2="-12.6225" y2="-4.65" width="0.1524" layer="21"/>
<wire x1="-12.6225" y1="-4.65" x2="12.6225" y2="-4.65" width="0.1524" layer="21"/>
<wire x1="12.6225" y1="-4.65" x2="12.6225" y2="0.025" width="0.1524" layer="21"/>
<wire x1="13.97" y1="0" x2="15.24" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-15.24" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="15.24" y="0" drill="1.1" shape="octagon"/>
<text x="-3.81" y="5.08" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-13.97" y1="-0.3048" x2="-12.5675" y2="0.3048" layer="21"/>
<rectangle x1="12.5675" y1="-0.3048" x2="13.97" y2="0.3048" layer="21"/>
</package>
<package name="VTA53" urn="urn:adsk.eagle:footprint:25685/1" library_version="1">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RBR53&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-12.065" y1="0" x2="-10.795" y2="0" width="0.6096" layer="51"/>
<wire x1="9.8975" y1="0" x2="9.8975" y2="4.7" width="0.1524" layer="21"/>
<wire x1="9.8975" y1="4.7" x2="-9.8975" y2="4.7" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="4.7" x2="-9.8975" y2="0" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="0" x2="-9.8975" y2="-4.675" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="-4.675" x2="9.8975" y2="-4.675" width="0.1524" layer="21"/>
<wire x1="9.8975" y1="-4.675" x2="9.8975" y2="0" width="0.1524" layer="21"/>
<wire x1="10.795" y1="0" x2="12.065" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-12.065" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="12.065" y="0" drill="1.1" shape="octagon"/>
<text x="-3.81" y="5.08" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-10.795" y1="-0.3048" x2="-9.8425" y2="0.3048" layer="21"/>
<rectangle x1="9.8425" y1="-0.3048" x2="10.795" y2="0.3048" layer="21"/>
</package>
<package name="VTA54" urn="urn:adsk.eagle:footprint:25686/1" library_version="1">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RBR54&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-12.065" y1="0" x2="-10.795" y2="0" width="0.6096" layer="51"/>
<wire x1="9.8975" y1="0" x2="9.8975" y2="3.3" width="0.1524" layer="21"/>
<wire x1="9.8975" y1="3.3" x2="-9.8975" y2="3.3" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="3.3" x2="-9.8975" y2="0" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="0" x2="-9.8975" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="-9.8975" y1="-3.3" x2="9.8975" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="9.8975" y1="-3.3" x2="9.8975" y2="0" width="0.1524" layer="21"/>
<wire x1="10.795" y1="0" x2="12.065" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-12.065" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="12.065" y="0" drill="1.1" shape="octagon"/>
<text x="-3.81" y="3.81" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-10.795" y1="-0.3048" x2="-9.8425" y2="0.3048" layer="21"/>
<rectangle x1="9.8425" y1="-0.3048" x2="10.795" y2="0.3048" layer="21"/>
</package>
<package name="VTA55" urn="urn:adsk.eagle:footprint:25687/1" library_version="1">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RBR55&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-8.255" y1="0" x2="-6.985" y2="0" width="0.6096" layer="51"/>
<wire x1="6.405" y1="0" x2="6.405" y2="3.3" width="0.1524" layer="21"/>
<wire x1="6.405" y1="3.3" x2="-6.405" y2="3.3" width="0.1524" layer="21"/>
<wire x1="-6.405" y1="3.3" x2="-6.405" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.405" y1="0" x2="-6.405" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="-6.405" y1="-3.3" x2="6.405" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="6.405" y1="-3.3" x2="6.405" y2="0" width="0.1524" layer="21"/>
<wire x1="6.985" y1="0" x2="8.255" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-8.255" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="8.255" y="0" drill="1.1" shape="octagon"/>
<text x="-3.81" y="3.81" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-6.985" y1="-0.3048" x2="-6.35" y2="0.3048" layer="21"/>
<rectangle x1="6.35" y1="-0.3048" x2="6.985" y2="0.3048" layer="21"/>
</package>
<package name="VTA56" urn="urn:adsk.eagle:footprint:25688/1" library_version="1">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RBR56&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-6.35" y1="0" x2="-5.08" y2="0" width="0.6096" layer="51"/>
<wire x1="4.5" y1="0" x2="4.5" y2="3.3" width="0.1524" layer="21"/>
<wire x1="4.5" y1="3.3" x2="-4.5" y2="3.3" width="0.1524" layer="21"/>
<wire x1="-4.5" y1="3.3" x2="-4.5" y2="0" width="0.1524" layer="21"/>
<wire x1="-4.5" y1="0" x2="-4.5" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="-4.5" y1="-3.3" x2="4.5" y2="-3.3" width="0.1524" layer="21"/>
<wire x1="4.5" y1="-3.3" x2="4.5" y2="0" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0" x2="6.35" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-6.35" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="1.1" shape="octagon"/>
<text x="-3.81" y="3.81" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-5.08" y1="-0.3048" x2="-4.445" y2="0.3048" layer="21"/>
<rectangle x1="4.445" y1="-0.3048" x2="5.08" y2="0.3048" layer="21"/>
</package>
<package name="VMTA55" urn="urn:adsk.eagle:footprint:25689/1" library_version="1">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RNC55&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-5.08" y1="0" x2="-4.26" y2="0" width="0.6096" layer="51"/>
<wire x1="3.3375" y1="-1.45" x2="3.3375" y2="1.45" width="0.1524" layer="21"/>
<wire x1="3.3375" y1="1.45" x2="-3.3625" y2="1.45" width="0.1524" layer="21"/>
<wire x1="-3.3625" y1="1.45" x2="-3.3625" y2="-1.45" width="0.1524" layer="21"/>
<wire x1="-3.3625" y1="-1.45" x2="3.3375" y2="-1.45" width="0.1524" layer="21"/>
<wire x1="4.235" y1="0" x2="5.08" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-5.08" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.1" shape="octagon"/>
<text x="-3.175" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-4.26" y1="-0.3048" x2="-3.3075" y2="0.3048" layer="21"/>
<rectangle x1="3.2825" y1="-0.3048" x2="4.235" y2="0.3048" layer="21"/>
</package>
<package name="VMTB60" urn="urn:adsk.eagle:footprint:25690/1" library_version="1">
<description>&lt;b&gt;Bulk Metal® Foil Technology&lt;/b&gt;, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements&lt;p&gt;
MIL SIZE RNC60&lt;br&gt;
Source: VISHAY .. vta56.pdf</description>
<wire x1="-6.35" y1="0" x2="-5.585" y2="0" width="0.6096" layer="51"/>
<wire x1="4.6875" y1="-1.95" x2="4.6875" y2="1.95" width="0.1524" layer="21"/>
<wire x1="4.6875" y1="1.95" x2="-4.6875" y2="1.95" width="0.1524" layer="21"/>
<wire x1="-4.6875" y1="1.95" x2="-4.6875" y2="-1.95" width="0.1524" layer="21"/>
<wire x1="-4.6875" y1="-1.95" x2="4.6875" y2="-1.95" width="0.1524" layer="21"/>
<wire x1="5.585" y1="0" x2="6.35" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-6.35" y="0" drill="1.1" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="1.1" shape="octagon"/>
<text x="-4.445" y="2.54" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.445" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-5.585" y1="-0.3048" x2="-4.6325" y2="0.3048" layer="21"/>
<rectangle x1="4.6325" y1="-0.3048" x2="5.585" y2="0.3048" layer="21"/>
</package>
<package name="R4527" urn="urn:adsk.eagle:footprint:25691/1" library_version="1">
<description>&lt;b&gt;Package 4527&lt;/b&gt;&lt;p&gt;
Source: http://www.vishay.com/docs/31059/wsrhigh.pdf</description>
<wire x1="-5.675" y1="-3.375" x2="5.65" y2="-3.375" width="0.2032" layer="21"/>
<wire x1="5.65" y1="-3.375" x2="5.65" y2="3.375" width="0.2032" layer="51"/>
<wire x1="5.65" y1="3.375" x2="-5.675" y2="3.375" width="0.2032" layer="21"/>
<wire x1="-5.675" y1="3.375" x2="-5.675" y2="-3.375" width="0.2032" layer="51"/>
<smd name="1" x="-4.575" y="0" dx="3.94" dy="5.84" layer="1"/>
<smd name="2" x="4.575" y="0" dx="3.94" dy="5.84" layer="1"/>
<text x="-5.715" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.715" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC0001" urn="urn:adsk.eagle:footprint:25692/1" library_version="1">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-3.075" y1="1.8" x2="-3.075" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="-3.075" y1="-1.8" x2="3.075" y2="-1.8" width="0.2032" layer="21"/>
<wire x1="3.075" y1="-1.8" x2="3.075" y2="1.8" width="0.2032" layer="51"/>
<wire x1="3.075" y1="1.8" x2="-3.075" y2="1.8" width="0.2032" layer="21"/>
<wire x1="-3.075" y1="1.8" x2="-3.075" y2="1.606" width="0.2032" layer="21"/>
<wire x1="-3.075" y1="-1.606" x2="-3.075" y2="-1.8" width="0.2032" layer="21"/>
<wire x1="3.075" y1="1.606" x2="3.075" y2="1.8" width="0.2032" layer="21"/>
<wire x1="3.075" y1="-1.8" x2="3.075" y2="-1.606" width="0.2032" layer="21"/>
<smd name="1" x="-2.675" y="0" dx="2.29" dy="2.92" layer="1"/>
<smd name="2" x="2.675" y="0" dx="2.29" dy="2.92" layer="1"/>
<text x="-2.544" y="2.229" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.544" y="-3.501" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC0002" urn="urn:adsk.eagle:footprint:25693/1" library_version="1">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-5.55" y1="3.375" x2="-5.55" y2="-3.375" width="0.2032" layer="51"/>
<wire x1="-5.55" y1="-3.375" x2="5.55" y2="-3.375" width="0.2032" layer="21"/>
<wire x1="5.55" y1="-3.375" x2="5.55" y2="3.375" width="0.2032" layer="51"/>
<wire x1="5.55" y1="3.375" x2="-5.55" y2="3.375" width="0.2032" layer="21"/>
<smd name="1" x="-4.575" y="0.025" dx="3.94" dy="5.84" layer="1"/>
<smd name="2" x="4.575" y="0" dx="3.94" dy="5.84" layer="1"/>
<text x="-5.65" y="3.9" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.65" y="-5.15" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC01/2" urn="urn:adsk.eagle:footprint:25694/1" library_version="1">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-2.45" y1="1.475" x2="-2.45" y2="-1.475" width="0.2032" layer="51"/>
<wire x1="-2.45" y1="-1.475" x2="2.45" y2="-1.475" width="0.2032" layer="21"/>
<wire x1="2.45" y1="-1.475" x2="2.45" y2="1.475" width="0.2032" layer="51"/>
<wire x1="2.45" y1="1.475" x2="-2.45" y2="1.475" width="0.2032" layer="21"/>
<wire x1="-2.45" y1="1.475" x2="-2.45" y2="1.106" width="0.2032" layer="21"/>
<wire x1="-2.45" y1="-1.106" x2="-2.45" y2="-1.475" width="0.2032" layer="21"/>
<wire x1="2.45" y1="1.106" x2="2.45" y2="1.475" width="0.2032" layer="21"/>
<wire x1="2.45" y1="-1.475" x2="2.45" y2="-1.106" width="0.2032" layer="21"/>
<smd name="1" x="-2.1" y="0" dx="2.16" dy="1.78" layer="1"/>
<smd name="2" x="2.1" y="0" dx="2.16" dy="1.78" layer="1"/>
<text x="-2.544" y="1.904" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.544" y="-3.176" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC2515" urn="urn:adsk.eagle:footprint:25695/1" library_version="1">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-3.075" y1="1.8" x2="-3.075" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="-3.075" y1="-1.8" x2="3.05" y2="-1.8" width="0.2032" layer="21"/>
<wire x1="3.05" y1="-1.8" x2="3.05" y2="1.8" width="0.2032" layer="51"/>
<wire x1="3.05" y1="1.8" x2="-3.075" y2="1.8" width="0.2032" layer="21"/>
<wire x1="-3.075" y1="1.8" x2="-3.075" y2="1.606" width="0.2032" layer="21"/>
<wire x1="-3.075" y1="-1.606" x2="-3.075" y2="-1.8" width="0.2032" layer="21"/>
<wire x1="3.05" y1="1.606" x2="3.05" y2="1.8" width="0.2032" layer="21"/>
<wire x1="3.05" y1="-1.8" x2="3.05" y2="-1.606" width="0.2032" layer="21"/>
<smd name="1" x="-2.675" y="0" dx="2.29" dy="2.92" layer="1"/>
<smd name="2" x="2.675" y="0" dx="2.29" dy="2.92" layer="1"/>
<text x="-3.2" y="2.15" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.2" y="-3.4" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC4527" urn="urn:adsk.eagle:footprint:25696/1" library_version="1">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-5.675" y1="3.4" x2="-5.675" y2="-3.375" width="0.2032" layer="51"/>
<wire x1="-5.675" y1="-3.375" x2="5.675" y2="-3.375" width="0.2032" layer="21"/>
<wire x1="5.675" y1="-3.375" x2="5.675" y2="3.4" width="0.2032" layer="51"/>
<wire x1="5.675" y1="3.4" x2="-5.675" y2="3.4" width="0.2032" layer="21"/>
<smd name="1" x="-4.575" y="0.025" dx="3.94" dy="5.84" layer="1"/>
<smd name="2" x="4.575" y="0" dx="3.94" dy="5.84" layer="1"/>
<text x="-5.775" y="3.925" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.775" y="-5.15" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WSC6927" urn="urn:adsk.eagle:footprint:25697/1" library_version="1">
<description>&lt;b&gt;Wirewound Resistors, Precision Power&lt;/b&gt;&lt;p&gt;
Source: VISHAY wscwsn.pdf</description>
<wire x1="-8.65" y1="3.375" x2="-8.65" y2="-3.375" width="0.2032" layer="51"/>
<wire x1="-8.65" y1="-3.375" x2="8.65" y2="-3.375" width="0.2032" layer="21"/>
<wire x1="8.65" y1="-3.375" x2="8.65" y2="3.375" width="0.2032" layer="51"/>
<wire x1="8.65" y1="3.375" x2="-8.65" y2="3.375" width="0.2032" layer="21"/>
<smd name="1" x="-7.95" y="0.025" dx="3.94" dy="5.97" layer="1"/>
<smd name="2" x="7.95" y="0" dx="3.94" dy="5.97" layer="1"/>
<text x="-8.75" y="3.9" size="1.27" layer="25">&gt;NAME</text>
<text x="-8.75" y="-5.15" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R1218" urn="urn:adsk.eagle:footprint:25698/1" library_version="1">
<description>&lt;b&gt;CRCW1218 Thick Film, Rectangular Chip Resistors&lt;/b&gt;&lt;p&gt;
Source: http://www.vishay.com .. dcrcw.pdf</description>
<wire x1="-0.913" y1="-2.219" x2="0.939" y2="-2.219" width="0.1524" layer="51"/>
<wire x1="0.913" y1="2.219" x2="-0.939" y2="2.219" width="0.1524" layer="51"/>
<smd name="1" x="-1.475" y="0" dx="1.05" dy="4.9" layer="1"/>
<smd name="2" x="1.475" y="0" dx="1.05" dy="4.9" layer="1"/>
<text x="-2.54" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-2.3" x2="-0.9009" y2="2.3" layer="51"/>
<rectangle x1="0.9144" y1="-2.3" x2="1.6645" y2="2.3" layer="51"/>
</package>
<package name="1812X7R" urn="urn:adsk.eagle:footprint:25699/1" library_version="1">
<description>&lt;b&gt;Chip Monolithic Ceramic Capacitors&lt;/b&gt; Medium Voltage High Capacitance for General Use&lt;p&gt;
Source: http://www.murata.com .. GRM43DR72E224KW01.pdf</description>
<wire x1="-1.1" y1="1.5" x2="1.1" y2="1.5" width="0.2032" layer="51"/>
<wire x1="1.1" y1="-1.5" x2="-1.1" y2="-1.5" width="0.2032" layer="51"/>
<wire x1="-0.6" y1="1.5" x2="0.6" y2="1.5" width="0.2032" layer="21"/>
<wire x1="0.6" y1="-1.5" x2="-0.6" y2="-1.5" width="0.2032" layer="21"/>
<smd name="1" x="-1.425" y="0" dx="0.8" dy="3.5" layer="1"/>
<smd name="2" x="1.425" y="0" dx="0.8" dy="3.5" layer="1" rot="R180"/>
<text x="-1.9456" y="1.9958" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.9456" y="-3.7738" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.4" y1="-1.6" x2="-1.1" y2="1.6" layer="51"/>
<rectangle x1="1.1" y1="-1.6" x2="1.4" y2="1.6" layer="51" rot="R180"/>
</package>
<package name="PRL1632" urn="urn:adsk.eagle:footprint:25700/1" library_version="1">
<description>&lt;b&gt;PRL1632 are realized as 1W for 3.2 × 1.6mm(1206)&lt;/b&gt;&lt;p&gt;
Source: http://www.mouser.com/ds/2/392/products_18-2245.pdf</description>
<wire x1="0.7275" y1="-1.5228" x2="-0.7277" y2="-1.5228" width="0.1524" layer="51"/>
<wire x1="0.7275" y1="1.5228" x2="-0.7152" y2="1.5228" width="0.1524" layer="51"/>
<smd name="2" x="0.822" y="0" dx="1" dy="3.2" layer="1"/>
<smd name="1" x="-0.822" y="0" dx="1" dy="3.2" layer="1"/>
<text x="-1.4" y="1.8" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.4" y="-3" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.8" y1="-1.6" x2="-0.4" y2="1.6" layer="51"/>
<rectangle x1="0.4" y1="-1.6" x2="0.8" y2="1.6" layer="51"/>
</package>
<package name="R01005" urn="urn:adsk.eagle:footprint:25701/1" library_version="1">
<smd name="1" x="-0.1625" y="0" dx="0.2" dy="0.25" layer="1"/>
<smd name="2" x="0.1625" y="0" dx="0.2" dy="0.25" layer="1"/>
<text x="-0.4" y="0.3" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.4" y="-1.6" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.2" y1="-0.1" x2="-0.075" y2="0.1" layer="51"/>
<rectangle x1="0.075" y1="-0.1" x2="0.2" y2="0.1" layer="51"/>
<rectangle x1="-0.15" y1="0.05" x2="0.15" y2="0.1" layer="51"/>
<rectangle x1="-0.15" y1="-0.1" x2="0.15" y2="-0.05" layer="51"/>
</package>
<package name="C0402" urn="urn:adsk.eagle:footprint:25704/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.483" x2="1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.483" x2="1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.483" x2="-1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.483" x2="-1.473" y2="0.483" width="0.0508" layer="39"/>
<smd name="1" x="-0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<smd name="2" x="0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="C0504" urn="urn:adsk.eagle:footprint:25705/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.294" y1="0.559" x2="0.294" y2="0.559" width="0.1016" layer="51"/>
<wire x1="-0.294" y1="-0.559" x2="0.294" y2="-0.559" width="0.1016" layer="51"/>
<smd name="1" x="-0.7" y="0" dx="1" dy="1.3" layer="1"/>
<smd name="2" x="0.7" y="0" dx="1" dy="1.3" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.6604" y1="-0.6223" x2="-0.2804" y2="0.6276" layer="51"/>
<rectangle x1="0.2794" y1="-0.6223" x2="0.6594" y2="0.6276" layer="51"/>
<rectangle x1="-0.1001" y1="-0.4001" x2="0.1001" y2="0.4001" layer="35"/>
</package>
<package name="C0603" urn="urn:adsk.eagle:footprint:25706/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="C0805" urn="urn:adsk.eagle:footprint:25707/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;</description>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.381" y1="0.66" x2="0.381" y2="0.66" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.66" x2="0.381" y2="-0.66" width="0.1016" layer="51"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.0922" y1="-0.7239" x2="-0.3421" y2="0.7262" layer="51"/>
<rectangle x1="0.3556" y1="-0.7239" x2="1.1057" y2="0.7262" layer="51"/>
<rectangle x1="-0.1001" y1="-0.4001" x2="0.1001" y2="0.4001" layer="35"/>
</package>
<package name="C1206" urn="urn:adsk.eagle:footprint:25708/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-0.965" y1="0.787" x2="0.965" y2="0.787" width="0.1016" layer="51"/>
<wire x1="-0.965" y1="-0.787" x2="0.965" y2="-0.787" width="0.1016" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.8509" x2="-0.9517" y2="0.8491" layer="51"/>
<rectangle x1="0.9517" y1="-0.8491" x2="1.7018" y2="0.8509" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="C1210" urn="urn:adsk.eagle:footprint:25709/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="-0.9652" y1="1.2446" x2="0.9652" y2="1.2446" width="0.1016" layer="51"/>
<wire x1="-0.9652" y1="-1.2446" x2="0.9652" y2="-1.2446" width="0.1016" layer="51"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-1.2954" x2="-0.9517" y2="1.3045" layer="51"/>
<rectangle x1="0.9517" y1="-1.3045" x2="1.7018" y2="1.2954" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="C1310" urn="urn:adsk.eagle:footprint:25710/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.294" y1="0.559" x2="0.294" y2="0.559" width="0.1016" layer="51"/>
<wire x1="-0.294" y1="-0.559" x2="0.294" y2="-0.559" width="0.1016" layer="51"/>
<smd name="1" x="-0.7" y="0" dx="1" dy="1.3" layer="1"/>
<smd name="2" x="0.7" y="0" dx="1" dy="1.3" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.6604" y1="-0.6223" x2="-0.2804" y2="0.6276" layer="51"/>
<rectangle x1="0.2794" y1="-0.6223" x2="0.6594" y2="0.6276" layer="51"/>
<rectangle x1="-0.1001" y1="-0.3" x2="0.1001" y2="0.3" layer="35"/>
</package>
<package name="C1608" urn="urn:adsk.eagle:footprint:25711/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="C1812" urn="urn:adsk.eagle:footprint:25712/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.973" y1="1.983" x2="2.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-1.983" x2="-2.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-1.983" x2="-2.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="-1.4732" y1="1.6002" x2="1.4732" y2="1.6002" width="0.1016" layer="51"/>
<wire x1="-1.4478" y1="-1.6002" x2="1.4732" y2="-1.6002" width="0.1016" layer="51"/>
<wire x1="2.973" y1="1.983" x2="2.973" y2="-1.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.95" y="0" dx="1.9" dy="3.4" layer="1"/>
<smd name="2" x="1.95" y="0" dx="1.9" dy="3.4" layer="1"/>
<text x="-1.905" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.3876" y1="-1.651" x2="-1.4376" y2="1.649" layer="51"/>
<rectangle x1="1.4478" y1="-1.651" x2="2.3978" y2="1.649" layer="51"/>
<rectangle x1="-0.3" y1="-0.4001" x2="0.3" y2="0.4001" layer="35"/>
</package>
<package name="C1825" urn="urn:adsk.eagle:footprint:25713/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.973" y1="3.483" x2="2.973" y2="3.483" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-3.483" x2="-2.973" y2="-3.483" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-3.483" x2="-2.973" y2="3.483" width="0.0508" layer="39"/>
<wire x1="-1.4986" y1="3.2766" x2="1.4732" y2="3.2766" width="0.1016" layer="51"/>
<wire x1="-1.4732" y1="-3.2766" x2="1.4986" y2="-3.2766" width="0.1016" layer="51"/>
<wire x1="2.973" y1="3.483" x2="2.973" y2="-3.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.95" y="0" dx="1.9" dy="6.8" layer="1"/>
<smd name="2" x="1.95" y="0" dx="1.9" dy="6.8" layer="1"/>
<text x="-1.905" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.413" y1="-3.3528" x2="-1.463" y2="3.3472" layer="51"/>
<rectangle x1="1.4478" y1="-3.3528" x2="2.3978" y2="3.3472" layer="51"/>
<rectangle x1="-0.7" y1="-0.7" x2="0.7" y2="0.7" layer="35"/>
</package>
<package name="C2012" urn="urn:adsk.eagle:footprint:25714/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.381" y1="0.66" x2="0.381" y2="0.66" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.66" x2="0.381" y2="-0.66" width="0.1016" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.0922" y1="-0.7239" x2="-0.3421" y2="0.7262" layer="51"/>
<rectangle x1="0.3556" y1="-0.7239" x2="1.1057" y2="0.7262" layer="51"/>
<rectangle x1="-0.1001" y1="-0.4001" x2="0.1001" y2="0.4001" layer="35"/>
</package>
<package name="C3216" urn="urn:adsk.eagle:footprint:25715/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-0.965" y1="0.787" x2="0.965" y2="0.787" width="0.1016" layer="51"/>
<wire x1="-0.965" y1="-0.787" x2="0.965" y2="-0.787" width="0.1016" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.8509" x2="-0.9517" y2="0.8491" layer="51"/>
<rectangle x1="0.9517" y1="-0.8491" x2="1.7018" y2="0.8509" layer="51"/>
<rectangle x1="-0.3" y1="-0.5001" x2="0.3" y2="0.5001" layer="35"/>
</package>
<package name="C3225" urn="urn:adsk.eagle:footprint:25716/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="-0.9652" y1="1.2446" x2="0.9652" y2="1.2446" width="0.1016" layer="51"/>
<wire x1="-0.9652" y1="-1.2446" x2="0.9652" y2="-1.2446" width="0.1016" layer="51"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-1.2954" x2="-0.9517" y2="1.3045" layer="51"/>
<rectangle x1="0.9517" y1="-1.3045" x2="1.7018" y2="1.2954" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
</package>
<package name="C4532" urn="urn:adsk.eagle:footprint:25717/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.973" y1="1.983" x2="2.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-1.983" x2="-2.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-1.983" x2="-2.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="-1.4732" y1="1.6002" x2="1.4732" y2="1.6002" width="0.1016" layer="51"/>
<wire x1="-1.4478" y1="-1.6002" x2="1.4732" y2="-1.6002" width="0.1016" layer="51"/>
<wire x1="2.973" y1="1.983" x2="2.973" y2="-1.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.95" y="0" dx="1.9" dy="3.4" layer="1"/>
<smd name="2" x="1.95" y="0" dx="1.9" dy="3.4" layer="1"/>
<text x="-1.905" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.3876" y1="-1.651" x2="-1.4376" y2="1.649" layer="51"/>
<rectangle x1="1.4478" y1="-1.651" x2="2.3978" y2="1.649" layer="51"/>
<rectangle x1="-0.4001" y1="-0.7" x2="0.4001" y2="0.7" layer="35"/>
</package>
<package name="C4564" urn="urn:adsk.eagle:footprint:25718/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.973" y1="3.483" x2="2.973" y2="3.483" width="0.0508" layer="39"/>
<wire x1="2.973" y1="-3.483" x2="-2.973" y2="-3.483" width="0.0508" layer="39"/>
<wire x1="-2.973" y1="-3.483" x2="-2.973" y2="3.483" width="0.0508" layer="39"/>
<wire x1="-1.4986" y1="3.2766" x2="1.4732" y2="3.2766" width="0.1016" layer="51"/>
<wire x1="-1.4732" y1="-3.2766" x2="1.4986" y2="-3.2766" width="0.1016" layer="51"/>
<wire x1="2.973" y1="3.483" x2="2.973" y2="-3.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.95" y="0" dx="1.9" dy="6.8" layer="1"/>
<smd name="2" x="1.95" y="0" dx="1.9" dy="6.8" layer="1"/>
<text x="-1.905" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.413" y1="-3.3528" x2="-1.463" y2="3.3472" layer="51"/>
<rectangle x1="1.4478" y1="-3.3528" x2="2.3978" y2="3.3472" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="C025-024X044" urn="urn:adsk.eagle:footprint:25719/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm, outline 2.4 x 4.4 mm</description>
<wire x1="-2.159" y1="-0.635" x2="-2.159" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="0.635" x2="-1.651" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.159" y1="-0.635" x2="-1.651" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="1.651" y1="1.143" x2="-1.651" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-0.635" x2="2.159" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.651" y1="-1.143" x2="-1.651" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="1.651" y1="1.143" x2="2.159" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="1.651" y1="-1.143" x2="2.159" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.3048" y1="0.762" x2="-0.3048" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0.762" x2="0.3302" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="1.27" y1="0" x2="0.3302" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="0" x2="-0.3048" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-1.778" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.778" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025-025X050" urn="urn:adsk.eagle:footprint:25720/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm, outline 2.5 x 5 mm</description>
<wire x1="-2.159" y1="1.27" x2="2.159" y2="1.27" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.27" x2="-2.159" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.27" x2="2.413" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.016" x2="-2.159" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.27" x2="2.413" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.016" x2="-2.159" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-2.794" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025-030X050" urn="urn:adsk.eagle:footprint:25721/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm, outline 3 x 5 mm</description>
<wire x1="-2.159" y1="1.524" x2="2.159" y2="1.524" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.524" x2="-2.159" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.27" x2="2.413" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.27" x2="-2.413" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.524" x2="2.413" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.27" x2="-2.159" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.524" x2="2.413" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.27" x2="-2.159" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-3.048" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025-040X050" urn="urn:adsk.eagle:footprint:25722/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm, outline 4 x 5 mm</description>
<wire x1="-2.159" y1="1.905" x2="2.159" y2="1.905" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.905" x2="-2.159" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.651" x2="2.413" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.651" x2="-2.413" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.905" x2="2.413" y2="1.651" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.651" x2="-2.159" y2="1.905" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.905" x2="2.413" y2="-1.651" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.651" x2="-2.159" y2="-1.905" width="0.1524" layer="21" curve="90"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="2.159" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-3.429" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025-050X050" urn="urn:adsk.eagle:footprint:25723/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm, outline 5 x 5 mm</description>
<wire x1="-2.159" y1="2.286" x2="2.159" y2="2.286" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-2.286" x2="-2.159" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="2.413" y1="2.032" x2="2.413" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="2.032" x2="-2.413" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="2.159" y1="2.286" x2="2.413" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="2.032" x2="-2.159" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-2.286" x2="2.413" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-2.032" x2="-2.159" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="2.54" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-3.81" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025-060X050" urn="urn:adsk.eagle:footprint:25724/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm, outline 6 x 5 mm</description>
<wire x1="-2.159" y1="2.794" x2="2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-2.794" x2="-2.159" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="2.413" y1="2.54" x2="2.413" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="2.54" x2="-2.413" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.159" y1="2.794" x2="2.413" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="2.54" x2="-2.159" y2="2.794" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-2.794" x2="2.413" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-2.54" x2="-2.159" y2="-2.794" width="0.1524" layer="21" curve="90"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="3.048" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.032" y="-2.413" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025_050-024X070" urn="urn:adsk.eagle:footprint:25725/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 mm + 5 mm, outline 2.4 x 7 mm</description>
<wire x1="-2.159" y1="-0.635" x2="-2.159" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="0.635" x2="-1.651" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.159" y1="-0.635" x2="-1.651" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="1.651" y1="1.143" x2="-1.651" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-0.635" x2="2.159" y2="0.635" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-1.143" x2="-1.651" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="1.651" y1="1.143" x2="2.159" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.191" y1="-1.143" x2="-3.9624" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-4.191" y1="1.143" x2="-3.9624" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="-0.635" x2="-4.191" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="1.651" y1="-1.143" x2="2.159" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.699" y1="0.635" x2="-4.191" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.699" y1="-0.635" x2="-4.699" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="1.143" x2="-2.5654" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-1.143" x2="-2.5654" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-0.3048" y1="0.762" x2="-0.3048" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0.762" x2="0.3302" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="1.27" y1="0" x2="0.3302" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="0" x2="-0.3048" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="3" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.81" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025_050-025X075" urn="urn:adsk.eagle:footprint:25726/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 + 5 mm, outline 2.5 x 7.5 mm</description>
<wire x1="-2.159" y1="1.27" x2="2.159" y2="1.27" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.27" x2="-2.159" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.27" x2="2.413" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.016" x2="-2.159" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.27" x2="2.413" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.016" x2="-2.159" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="4.953" y1="1.016" x2="4.953" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="4.699" y1="1.27" x2="4.953" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="-1.27" x2="4.953" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.794" y1="1.27" x2="4.699" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-1.27" x2="2.794" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.413" y2="0.762" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-0.762" x2="2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="0.254" x2="2.413" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0" x2="2.286" y2="0" width="0.1524" layer="51"/>
<wire x1="2.286" y1="0" x2="2.794" y2="0" width="0.1524" layer="21"/>
<wire x1="2.794" y1="0" x2="3.302" y2="0" width="0.1524" layer="51"/>
<wire x1="0.762" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="3" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.159" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.159" y="-2.794" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025_050-035X075" urn="urn:adsk.eagle:footprint:25727/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 + 5 mm, outline 3.5 x 7.5 mm</description>
<wire x1="-2.159" y1="1.778" x2="2.159" y2="1.778" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.778" x2="-2.159" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.524" x2="-2.413" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.778" x2="2.413" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.524" x2="-2.159" y2="1.778" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.778" x2="2.413" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.524" x2="-2.159" y2="-1.778" width="0.1524" layer="21" curve="90"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="4.953" y1="1.524" x2="4.953" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="4.699" y1="1.778" x2="4.953" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="-1.778" x2="4.953" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="2.794" y1="1.778" x2="4.699" y2="1.778" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-1.778" x2="2.794" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.524" x2="2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.413" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="2.413" y1="0.508" x2="2.413" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="0.381" y1="0" x2="0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="2.286" y1="0" x2="2.794" y2="0" width="0.1524" layer="21"/>
<wire x1="2.794" y1="0" x2="3.302" y2="0" width="0.1524" layer="51"/>
<wire x1="2.286" y1="0" x2="1.778" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="3" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="2.159" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-3.302" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025_050-045X075" urn="urn:adsk.eagle:footprint:25728/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 + 5 mm, outline 4.5 x 7.5 mm</description>
<wire x1="-2.159" y1="2.286" x2="2.159" y2="2.286" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-2.286" x2="-2.159" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="2.032" x2="-2.413" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="2.159" y1="2.286" x2="2.413" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="2.032" x2="-2.159" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-2.286" x2="2.413" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-2.032" x2="-2.159" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="4.953" y1="2.032" x2="4.953" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="4.699" y1="2.286" x2="4.953" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="-2.286" x2="4.953" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="2.794" y1="2.286" x2="4.699" y2="2.286" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-2.286" x2="2.794" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="2.413" y1="2.032" x2="2.413" y2="1.397" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.397" x2="2.413" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="2.413" y1="0.762" x2="2.413" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="2.286" y1="0" x2="2.794" y2="0" width="0.1524" layer="21"/>
<wire x1="2.794" y1="0" x2="3.302" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="2.286" y1="0" x2="1.778" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="3" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="2.667" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-3.81" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C025_050-055X075" urn="urn:adsk.eagle:footprint:25729/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 2.5 + 5 mm, outline 5.5 x 7.5 mm</description>
<wire x1="-2.159" y1="2.794" x2="2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-2.794" x2="-2.159" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="2.54" x2="-2.413" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.159" y1="2.794" x2="2.413" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="2.54" x2="-2.159" y2="2.794" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-2.794" x2="2.413" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-2.54" x2="-2.159" y2="-2.794" width="0.1524" layer="21" curve="90"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="4.953" y1="2.54" x2="4.953" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="4.699" y1="2.794" x2="4.953" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="-2.794" x2="4.953" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="2.794" y1="2.794" x2="4.699" y2="2.794" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-2.794" x2="2.794" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="2.413" y1="2.54" x2="2.413" y2="2.032" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-2.032" x2="2.413" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.413" y1="0.762" x2="2.413" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0" x2="2.286" y2="0" width="0.1524" layer="51"/>
<wire x1="2.286" y1="0" x2="2.794" y2="0" width="0.1524" layer="21"/>
<wire x1="2.794" y1="0" x2="3.302" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.762" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="3" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.286" y="3.175" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.032" y="-2.286" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-024X044" urn="urn:adsk.eagle:footprint:25730/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 2.4 x 4.4 mm</description>
<wire x1="-2.159" y1="-0.635" x2="-2.159" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="0.635" x2="-1.651" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.159" y1="-0.635" x2="-1.651" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="1.651" y1="1.143" x2="-1.651" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-0.635" x2="2.159" y2="0.635" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-1.143" x2="-1.651" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="1.651" y1="1.143" x2="2.159" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="1.651" y1="-1.143" x2="2.159" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.3048" y1="0.762" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0.762" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.762" width="0.3048" layer="21"/>
<wire x1="1.27" y1="0" x2="0.3302" y2="0" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0" x2="-0.3048" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.159" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.159" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.159" y1="-0.381" x2="2.54" y2="0.381" layer="51"/>
<rectangle x1="-2.54" y1="-0.381" x2="-2.159" y2="0.381" layer="51"/>
</package>
<package name="C050-025X075" urn="urn:adsk.eagle:footprint:25731/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 2.5 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="1.016" x2="-3.683" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-1.27" x2="3.429" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-1.016" x2="3.683" y2="1.016" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.27" x2="-3.429" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.27" x2="3.683" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-1.27" x2="3.683" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-1.016" x2="-3.429" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="1.016" x2="-3.429" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.429" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.794" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-045X075" urn="urn:adsk.eagle:footprint:25732/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 4.5 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="2.032" x2="-3.683" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-2.286" x2="3.429" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-2.032" x2="3.683" y2="2.032" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.286" x2="-3.429" y2="2.286" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.286" x2="3.683" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-2.286" x2="3.683" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-2.032" x2="-3.429" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="2.032" x2="-3.429" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.556" y="2.667" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.556" y="-3.81" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-030X075" urn="urn:adsk.eagle:footprint:25733/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 3 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="1.27" x2="-3.683" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-1.524" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-1.27" x2="3.683" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.524" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.524" x2="3.683" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-1.524" x2="3.683" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-1.27" x2="-3.429" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="1.27" x2="-3.429" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.556" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.556" y="-3.048" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-050X075" urn="urn:adsk.eagle:footprint:25734/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 5 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="2.286" x2="-3.683" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-2.54" x2="3.429" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-2.286" x2="3.683" y2="2.286" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.54" x2="-3.429" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.54" x2="3.683" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-2.54" x2="3.683" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-2.286" x2="-3.429" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="2.286" x2="-3.429" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.429" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-2.159" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-055X075" urn="urn:adsk.eagle:footprint:25735/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 5.5 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="2.54" x2="-3.683" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-2.794" x2="3.429" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-2.54" x2="3.683" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.794" x2="-3.429" y2="2.794" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.794" x2="3.683" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-2.794" x2="3.683" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-2.54" x2="-3.429" y2="-2.794" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="2.54" x2="-3.429" y2="2.794" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.429" y="3.175" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.302" y="-2.286" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-075X075" urn="urn:adsk.eagle:footprint:25736/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 7.5 x 7.5 mm</description>
<wire x1="-1.524" y1="0" x2="-0.4572" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.4572" y1="0" x2="-0.4572" y2="0.762" width="0.4064" layer="21"/>
<wire x1="-0.4572" y1="0" x2="-0.4572" y2="-0.762" width="0.4064" layer="21"/>
<wire x1="0.4318" y1="0.762" x2="0.4318" y2="0" width="0.4064" layer="21"/>
<wire x1="0.4318" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.4318" y1="0" x2="0.4318" y2="-0.762" width="0.4064" layer="21"/>
<wire x1="-3.683" y1="3.429" x2="-3.683" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-3.683" x2="3.429" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-3.429" x2="3.683" y2="3.429" width="0.1524" layer="21"/>
<wire x1="3.429" y1="3.683" x2="-3.429" y2="3.683" width="0.1524" layer="21"/>
<wire x1="3.429" y1="3.683" x2="3.683" y2="3.429" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-3.683" x2="3.683" y2="-3.429" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-3.429" x2="-3.429" y2="-3.683" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="3.429" x2="-3.429" y2="3.683" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.429" y="4.064" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-2.921" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050H075X075" urn="urn:adsk.eagle:footprint:25737/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
Horizontal, grid 5 mm, outline 7.5 x 7.5 mm</description>
<wire x1="-3.683" y1="7.112" x2="-3.683" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="0.508" x2="-3.302" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="0.508" x2="-1.778" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-1.778" y1="0.508" x2="1.778" y2="0.508" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.508" x2="3.302" y2="0.508" width="0.1524" layer="51"/>
<wire x1="3.302" y1="0.508" x2="3.683" y2="0.508" width="0.1524" layer="21"/>
<wire x1="3.683" y1="0.508" x2="3.683" y2="7.112" width="0.1524" layer="21"/>
<wire x1="3.175" y1="7.62" x2="-3.175" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-0.3048" y1="2.413" x2="-0.3048" y2="1.778" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="1.778" x2="-0.3048" y2="1.143" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="1.778" x2="-1.651" y2="1.778" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="2.413" x2="0.3302" y2="1.778" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="1.778" x2="0.3302" y2="1.143" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="1.778" x2="1.651" y2="1.778" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="7.112" x2="-3.175" y2="7.62" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.175" y1="7.62" x2="3.683" y2="7.112" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="0.254" width="0.508" layer="51"/>
<wire x1="2.54" y1="0" x2="2.54" y2="0.254" width="0.508" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.302" y="8.001" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="3.175" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-2.794" y1="0.127" x2="-2.286" y2="0.508" layer="51"/>
<rectangle x1="2.286" y1="0.127" x2="2.794" y2="0.508" layer="51"/>
</package>
<package name="C075-032X103" urn="urn:adsk.eagle:footprint:25738/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 7.5 mm, outline 3.2 x 10.3 mm</description>
<wire x1="4.826" y1="1.524" x2="-4.826" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-1.524" x2="4.826" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.27" x2="5.08" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.826" y1="1.524" x2="5.08" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.826" y1="-1.524" x2="5.08" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="-1.27" x2="-4.826" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.27" x2="-4.826" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.508" y1="0" x2="2.54" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0" x2="-0.508" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.508" y1="0.889" x2="-0.508" y2="0" width="0.4064" layer="21"/>
<wire x1="-0.508" y1="0" x2="-0.508" y2="-0.889" width="0.4064" layer="21"/>
<wire x1="0.508" y1="0.889" x2="0.508" y2="0" width="0.4064" layer="21"/>
<wire x1="0.508" y1="0" x2="0.508" y2="-0.889" width="0.4064" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.9144" shape="octagon"/>
<text x="-4.826" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.826" y="-3.048" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C075-042X103" urn="urn:adsk.eagle:footprint:25739/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 7.5 mm, outline 4.2 x 10.3 mm</description>
<wire x1="4.826" y1="2.032" x2="-4.826" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.778" x2="-5.08" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-2.032" x2="4.826" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.778" x2="5.08" y2="1.778" width="0.1524" layer="21"/>
<wire x1="4.826" y1="2.032" x2="5.08" y2="1.778" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.826" y1="-2.032" x2="5.08" y2="-1.778" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="-1.778" x2="-4.826" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.778" x2="-4.826" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="0" x2="2.667" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="0" x2="-2.159" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="1.27" x2="-2.159" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.159" y1="0" x2="-2.159" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-1.27" width="0.4064" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.9144" shape="octagon"/>
<text x="-4.699" y="2.413" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.635" y="-1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C075-052X106" urn="urn:adsk.eagle:footprint:25740/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 7.5 mm, outline 5.2 x 10.6 mm</description>
<wire x1="4.953" y1="2.54" x2="-4.953" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="2.286" x2="-5.207" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="-2.54" x2="4.953" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-2.286" x2="5.207" y2="2.286" width="0.1524" layer="21"/>
<wire x1="4.953" y1="2.54" x2="5.207" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.953" y1="-2.54" x2="5.207" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.207" y1="-2.286" x2="-4.953" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.207" y1="2.286" x2="-4.953" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="0" x2="2.667" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="0" x2="-2.159" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="1.27" x2="-2.159" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.159" y1="0" x2="-2.159" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-1.27" width="0.4064" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.9144" shape="octagon"/>
<text x="-4.826" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.635" y="-2.032" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C102-043X133" urn="urn:adsk.eagle:footprint:25741/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 10.2 mm, outline 4.3 x 13.3 mm</description>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="0" width="0.4064" layer="21"/>
<wire x1="3.81" y1="0" x2="-2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="-2.286" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.81" y1="0" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-6.096" y1="2.032" x2="6.096" y2="2.032" width="0.1524" layer="21"/>
<wire x1="6.604" y1="1.524" x2="6.604" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-2.032" x2="-6.096" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="-1.524" x2="-6.604" y2="1.524" width="0.1524" layer="21"/>
<wire x1="6.096" y1="2.032" x2="6.604" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.096" y1="-2.032" x2="6.604" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="-1.524" x2="-6.096" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="1.524" x2="-6.096" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.016" shape="octagon"/>
<text x="-6.096" y="2.413" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.524" y="-1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C102-054X133" urn="urn:adsk.eagle:footprint:25742/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 10.2 mm, outline 5.4 x 13.3 mm</description>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="0" width="0.4064" layer="21"/>
<wire x1="3.81" y1="0" x2="-2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="-2.286" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.81" y1="0" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-6.096" y1="2.54" x2="6.096" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.604" y1="2.032" x2="6.604" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-2.54" x2="-6.096" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="-2.032" x2="-6.604" y2="2.032" width="0.1524" layer="21"/>
<wire x1="6.096" y1="2.54" x2="6.604" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.096" y1="-2.54" x2="6.604" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="-2.032" x2="-6.096" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="2.032" x2="-6.096" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.016" shape="octagon"/>
<text x="-6.096" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.524" y="-1.905" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C102-064X133" urn="urn:adsk.eagle:footprint:25743/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 10.2 mm, outline 6.4 x 13.3 mm</description>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="0" width="0.4064" layer="21"/>
<wire x1="3.81" y1="0" x2="-2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="-2.286" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.81" y1="0" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-6.096" y1="3.048" x2="6.096" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.604" y1="2.54" x2="6.604" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-3.048" x2="-6.096" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="-2.54" x2="-6.604" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.096" y1="3.048" x2="6.604" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.096" y1="-3.048" x2="6.604" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="-2.54" x2="-6.096" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="2.54" x2="-6.096" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.016" shape="octagon"/>
<text x="-6.096" y="3.429" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.524" y="-2.032" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C102_152-062X184" urn="urn:adsk.eagle:footprint:25744/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 10.2 mm + 15.2 mm, outline 6.2 x 18.4 mm</description>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.286" y1="0" x2="-2.286" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.4064" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.683" y1="0" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="3.683" y2="0" width="0.1524" layer="21"/>
<wire x1="6.477" y1="0" x2="8.636" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="3.048" x2="6.223" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.223" y1="-3.048" x2="-6.096" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="-2.54" x2="-6.604" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.223" y1="3.048" x2="6.731" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.223" y1="-3.048" x2="6.731" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="-2.54" x2="-6.096" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="2.54" x2="-6.096" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.731" y1="2.54" x2="6.731" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="11.176" y1="3.048" x2="11.684" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="11.176" y1="-3.048" x2="11.684" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="11.176" y1="-3.048" x2="7.112" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="7.112" y1="3.048" x2="11.176" y2="3.048" width="0.1524" layer="21"/>
<wire x1="11.684" y1="2.54" x2="11.684" y2="-2.54" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="3" x="10.033" y="0" drill="1.016" shape="octagon"/>
<text x="-5.969" y="3.429" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.524" y="-2.286" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C150-054X183" urn="urn:adsk.eagle:footprint:25745/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 15 mm, outline 5.4 x 18.3 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="2.032" x2="9.017" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-2.54" x2="-8.509" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-2.032" x2="-9.017" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="2.54" x2="8.509" y2="2.54" width="0.1524" layer="21"/>
<wire x1="8.509" y1="2.54" x2="9.017" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-2.54" x2="9.017" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-2.032" x2="-8.509" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="2.032" x2="-8.509" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" shape="octagon"/>
<text x="-8.382" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.032" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C150-064X183" urn="urn:adsk.eagle:footprint:25746/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 15 mm, outline 6.4 x 18.3 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="2.54" x2="9.017" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-3.048" x2="-8.509" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-2.54" x2="-9.017" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="3.048" x2="8.509" y2="3.048" width="0.1524" layer="21"/>
<wire x1="8.509" y1="3.048" x2="9.017" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-3.048" x2="9.017" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-2.54" x2="-8.509" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="2.54" x2="-8.509" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" shape="octagon"/>
<text x="-8.509" y="3.429" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.032" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C150-072X183" urn="urn:adsk.eagle:footprint:25747/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 15 mm, outline 7.2 x 18.3 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="3.048" x2="9.017" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-3.556" x2="-8.509" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-3.048" x2="-9.017" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="3.556" x2="8.509" y2="3.556" width="0.1524" layer="21"/>
<wire x1="8.509" y1="3.556" x2="9.017" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-3.556" x2="9.017" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-3.048" x2="-8.509" y2="-3.556" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="3.048" x2="-8.509" y2="3.556" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" shape="octagon"/>
<text x="-8.509" y="3.937" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.286" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C150-084X183" urn="urn:adsk.eagle:footprint:25748/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 15 mm, outline 8.4 x 18.3 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="3.556" x2="9.017" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-4.064" x2="-8.509" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-3.556" x2="-9.017" y2="3.556" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="4.064" x2="8.509" y2="4.064" width="0.1524" layer="21"/>
<wire x1="8.509" y1="4.064" x2="9.017" y2="3.556" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-4.064" x2="9.017" y2="-3.556" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-3.556" x2="-8.509" y2="-4.064" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="3.556" x2="-8.509" y2="4.064" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" shape="octagon"/>
<text x="-8.509" y="4.445" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.54" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C150-091X182" urn="urn:adsk.eagle:footprint:25749/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 15 mm, outline 9.1 x 18.2 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="3.937" x2="9.017" y2="-3.937" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-4.445" x2="-8.509" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-3.937" x2="-9.017" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="4.445" x2="8.509" y2="4.445" width="0.1524" layer="21"/>
<wire x1="8.509" y1="4.445" x2="9.017" y2="3.937" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-4.445" x2="9.017" y2="-3.937" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-3.937" x2="-8.509" y2="-4.445" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="3.937" x2="-8.509" y2="4.445" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" shape="octagon"/>
<text x="-8.509" y="4.826" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.54" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C225-062X268" urn="urn:adsk.eagle:footprint:25750/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 22.5 mm, outline 6.2 x 26.8 mm</description>
<wire x1="-12.827" y1="3.048" x2="12.827" y2="3.048" width="0.1524" layer="21"/>
<wire x1="13.335" y1="2.54" x2="13.335" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-3.048" x2="-12.827" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-2.54" x2="-13.335" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="3.048" x2="13.335" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-3.048" x2="13.335" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-2.54" x2="-12.827" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="2.54" x2="-12.827" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" shape="octagon"/>
<text x="-12.7" y="3.429" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C225-074X268" urn="urn:adsk.eagle:footprint:25751/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 22.5 mm, outline 7.4 x 26.8 mm</description>
<wire x1="-12.827" y1="3.556" x2="12.827" y2="3.556" width="0.1524" layer="21"/>
<wire x1="13.335" y1="3.048" x2="13.335" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-3.556" x2="-12.827" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-3.048" x2="-13.335" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="3.556" x2="13.335" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-3.556" x2="13.335" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-3.048" x2="-12.827" y2="-3.556" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="3.048" x2="-12.827" y2="3.556" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" shape="octagon"/>
<text x="-12.827" y="3.937" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C225-087X268" urn="urn:adsk.eagle:footprint:25752/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 22.5 mm, outline 8.7 x 26.8 mm</description>
<wire x1="-12.827" y1="4.318" x2="12.827" y2="4.318" width="0.1524" layer="21"/>
<wire x1="13.335" y1="3.81" x2="13.335" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-4.318" x2="-12.827" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-3.81" x2="-13.335" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="4.318" x2="13.335" y2="3.81" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-4.318" x2="13.335" y2="-3.81" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-3.81" x2="-12.827" y2="-4.318" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="3.81" x2="-12.827" y2="4.318" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" shape="octagon"/>
<text x="-12.827" y="4.699" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C225-108X268" urn="urn:adsk.eagle:footprint:25753/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 22.5 mm, outline 10.8 x 26.8 mm</description>
<wire x1="-12.827" y1="5.334" x2="12.827" y2="5.334" width="0.1524" layer="21"/>
<wire x1="13.335" y1="4.826" x2="13.335" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-5.334" x2="-12.827" y2="-5.334" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-4.826" x2="-13.335" y2="4.826" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="5.334" x2="13.335" y2="4.826" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-5.334" x2="13.335" y2="-4.826" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-4.826" x2="-12.827" y2="-5.334" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="4.826" x2="-12.827" y2="5.334" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" shape="octagon"/>
<text x="-12.954" y="5.715" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C225-113X268" urn="urn:adsk.eagle:footprint:25754/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 22.5 mm, outline 11.3 x 26.8 mm</description>
<wire x1="-12.827" y1="5.588" x2="12.827" y2="5.588" width="0.1524" layer="21"/>
<wire x1="13.335" y1="5.08" x2="13.335" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-5.588" x2="-12.827" y2="-5.588" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-5.08" x2="-13.335" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="5.588" x2="13.335" y2="5.08" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-5.588" x2="13.335" y2="-5.08" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-5.08" x2="-12.827" y2="-5.588" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="5.08" x2="-12.827" y2="5.588" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" shape="octagon"/>
<text x="-12.954" y="5.969" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C275-093X316" urn="urn:adsk.eagle:footprint:25755/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 27.5 mm, outline 9.3 x 31.6 mm</description>
<wire x1="-15.24" y1="4.572" x2="15.24" y2="4.572" width="0.1524" layer="21"/>
<wire x1="15.748" y1="4.064" x2="15.748" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-4.572" x2="-15.24" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-4.064" x2="-15.748" y2="4.064" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="4.572" x2="15.748" y2="4.064" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-4.572" x2="15.748" y2="-4.064" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-4.064" x2="-15.24" y2="-4.572" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="4.064" x2="-15.24" y2="4.572" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" shape="octagon"/>
<text x="-15.24" y="4.953" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C275-113X316" urn="urn:adsk.eagle:footprint:25756/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 27.5 mm, outline 11.3 x 31.6 mm</description>
<wire x1="-15.24" y1="5.588" x2="15.24" y2="5.588" width="0.1524" layer="21"/>
<wire x1="15.748" y1="5.08" x2="15.748" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-5.588" x2="-15.24" y2="-5.588" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-5.08" x2="-15.748" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="5.588" x2="15.748" y2="5.08" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-5.588" x2="15.748" y2="-5.08" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-5.08" x2="-15.24" y2="-5.588" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="5.08" x2="-15.24" y2="5.588" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" shape="octagon"/>
<text x="-15.24" y="5.969" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C275-134X316" urn="urn:adsk.eagle:footprint:25757/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 27.5 mm, outline 13.4 x 31.6 mm</description>
<wire x1="-15.24" y1="6.604" x2="15.24" y2="6.604" width="0.1524" layer="21"/>
<wire x1="15.748" y1="6.096" x2="15.748" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-6.604" x2="-15.24" y2="-6.604" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-6.096" x2="-15.748" y2="6.096" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="6.604" x2="15.748" y2="6.096" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-6.604" x2="15.748" y2="-6.096" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-6.096" x2="-15.24" y2="-6.604" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="6.096" x2="-15.24" y2="6.604" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" shape="octagon"/>
<text x="-15.24" y="6.985" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C275-205X316" urn="urn:adsk.eagle:footprint:25758/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 27.5 mm, outline 20.5 x 31.6 mm</description>
<wire x1="-15.24" y1="10.16" x2="15.24" y2="10.16" width="0.1524" layer="21"/>
<wire x1="15.748" y1="9.652" x2="15.748" y2="-9.652" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-10.16" x2="-15.24" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-9.652" x2="-15.748" y2="9.652" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="10.16" x2="15.748" y2="9.652" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-10.16" x2="15.748" y2="-9.652" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-9.652" x2="-15.24" y2="-10.16" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="9.652" x2="-15.24" y2="10.16" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" shape="octagon"/>
<text x="-15.24" y="10.541" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-4.318" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C325-137X374" urn="urn:adsk.eagle:footprint:25759/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 32.5 mm, outline 13.7 x 37.4 mm</description>
<wire x1="-14.2748" y1="0" x2="-12.7" y2="0" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="1.905" x2="-12.7" y2="0" width="0.4064" layer="21"/>
<wire x1="-11.811" y1="1.905" x2="-11.811" y2="0" width="0.4064" layer="21"/>
<wire x1="-11.811" y1="0" x2="14.2748" y2="0" width="0.1524" layer="21"/>
<wire x1="-11.811" y1="0" x2="-11.811" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-12.7" y1="0" x2="-12.7" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="18.542" y1="6.731" x2="18.542" y2="-6.731" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="6.731" x2="-18.542" y2="-6.731" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="-6.731" x2="18.542" y2="-6.731" width="0.1524" layer="21"/>
<wire x1="18.542" y1="6.731" x2="-18.542" y2="6.731" width="0.1524" layer="21"/>
<pad name="1" x="-16.256" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="16.256" y="0" drill="1.1938" shape="octagon"/>
<text x="-18.2372" y="7.0612" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-10.8458" y="-2.8702" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C325-162X374" urn="urn:adsk.eagle:footprint:25760/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 32.5 mm, outline 16.2 x 37.4 mm</description>
<wire x1="-14.2748" y1="0" x2="-12.7" y2="0" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="1.905" x2="-12.7" y2="0" width="0.4064" layer="21"/>
<wire x1="-11.811" y1="1.905" x2="-11.811" y2="0" width="0.4064" layer="21"/>
<wire x1="-11.811" y1="0" x2="14.2748" y2="0" width="0.1524" layer="21"/>
<wire x1="-11.811" y1="0" x2="-11.811" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-12.7" y1="0" x2="-12.7" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="18.542" y1="8.001" x2="18.542" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="8.001" x2="-18.542" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="-8.001" x2="18.542" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="18.542" y1="8.001" x2="-18.542" y2="8.001" width="0.1524" layer="21"/>
<pad name="1" x="-16.256" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="16.256" y="0" drill="1.1938" shape="octagon"/>
<text x="-18.3642" y="8.3312" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-10.8458" y="-2.8702" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C325-182X374" urn="urn:adsk.eagle:footprint:25761/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 32.5 mm, outline 18.2 x 37.4 mm</description>
<wire x1="-14.2748" y1="0" x2="-12.7" y2="0" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="1.905" x2="-12.7" y2="0" width="0.4064" layer="21"/>
<wire x1="-11.811" y1="1.905" x2="-11.811" y2="0" width="0.4064" layer="21"/>
<wire x1="-11.811" y1="0" x2="14.2748" y2="0" width="0.1524" layer="21"/>
<wire x1="-11.811" y1="0" x2="-11.811" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-12.7" y1="0" x2="-12.7" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="18.542" y1="9.017" x2="18.542" y2="-9.017" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="9.017" x2="-18.542" y2="-9.017" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="-9.017" x2="18.542" y2="-9.017" width="0.1524" layer="21"/>
<wire x1="18.542" y1="9.017" x2="-18.542" y2="9.017" width="0.1524" layer="21"/>
<pad name="1" x="-16.256" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="16.256" y="0" drill="1.1938" shape="octagon"/>
<text x="-18.3642" y="9.3472" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-10.8458" y="-2.8702" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C375-192X418" urn="urn:adsk.eagle:footprint:25762/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 37.5 mm, outline 19.2 x 41.8 mm</description>
<wire x1="-20.32" y1="8.509" x2="20.32" y2="8.509" width="0.1524" layer="21"/>
<wire x1="20.828" y1="8.001" x2="20.828" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-8.509" x2="-20.32" y2="-8.509" width="0.1524" layer="21"/>
<wire x1="-20.828" y1="-8.001" x2="-20.828" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="20.32" y1="8.509" x2="20.828" y2="8.001" width="0.1524" layer="21" curve="-90"/>
<wire x1="20.32" y1="-8.509" x2="20.828" y2="-8.001" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="-8.001" x2="-20.32" y2="-8.509" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="8.001" x2="-20.32" y2="8.509" width="0.1524" layer="21" curve="-90"/>
<wire x1="-16.002" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="16.002" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-18.796" y="0" drill="1.3208" shape="octagon"/>
<pad name="2" x="18.796" y="0" drill="1.3208" shape="octagon"/>
<text x="-20.447" y="8.89" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C375-203X418" urn="urn:adsk.eagle:footprint:25763/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 37.5 mm, outline 20.3 x 41.8 mm</description>
<wire x1="-20.32" y1="10.16" x2="20.32" y2="10.16" width="0.1524" layer="21"/>
<wire x1="20.828" y1="9.652" x2="20.828" y2="-9.652" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-10.16" x2="-20.32" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-20.828" y1="-9.652" x2="-20.828" y2="9.652" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="20.32" y1="10.16" x2="20.828" y2="9.652" width="0.1524" layer="21" curve="-90"/>
<wire x1="20.32" y1="-10.16" x2="20.828" y2="-9.652" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="-9.652" x2="-20.32" y2="-10.16" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="9.652" x2="-20.32" y2="10.16" width="0.1524" layer="21" curve="-90"/>
<wire x1="-16.002" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="16.002" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-18.796" y="0" drill="1.3208" shape="octagon"/>
<pad name="2" x="18.796" y="0" drill="1.3208" shape="octagon"/>
<text x="-20.32" y="10.541" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C050-035X075" urn="urn:adsk.eagle:footprint:25764/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 5 mm, outline 3.5 x 7.5 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="1.524" x2="-3.683" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-1.778" x2="3.429" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-1.524" x2="3.683" y2="1.524" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.778" x2="-3.429" y2="1.778" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.778" x2="3.683" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-1.778" x2="3.683" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-1.524" x2="-3.429" y2="-1.778" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="1.524" x2="-3.429" y2="1.778" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.556" y="2.159" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.556" y="-3.429" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C375-155X418" urn="urn:adsk.eagle:footprint:25765/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 37.5 mm, outline 15.5 x 41.8 mm</description>
<wire x1="-20.32" y1="7.62" x2="20.32" y2="7.62" width="0.1524" layer="21"/>
<wire x1="20.828" y1="7.112" x2="20.828" y2="-7.112" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-7.62" x2="-20.32" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-20.828" y1="-7.112" x2="-20.828" y2="7.112" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="20.32" y1="7.62" x2="20.828" y2="7.112" width="0.1524" layer="21" curve="-90"/>
<wire x1="20.32" y1="-7.62" x2="20.828" y2="-7.112" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="-7.112" x2="-20.32" y2="-7.62" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="7.112" x2="-20.32" y2="7.62" width="0.1524" layer="21" curve="-90"/>
<wire x1="-16.002" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="16.002" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-18.796" y="0" drill="1.3208" shape="octagon"/>
<pad name="2" x="18.796" y="0" drill="1.3208" shape="octagon"/>
<text x="-20.447" y="8.001" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C075-063X106" urn="urn:adsk.eagle:footprint:25766/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 7.5 mm, outline 6.3 x 10.6 mm</description>
<wire x1="4.953" y1="3.048" x2="-4.953" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="2.794" x2="-5.207" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="-3.048" x2="4.953" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-2.794" x2="5.207" y2="2.794" width="0.1524" layer="21"/>
<wire x1="4.953" y1="3.048" x2="5.207" y2="2.794" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.953" y1="-3.048" x2="5.207" y2="-2.794" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.207" y1="-2.794" x2="-4.953" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.207" y1="2.794" x2="-4.953" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="0" x2="2.667" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="0" x2="-2.159" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="1.27" x2="-2.159" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.159" y1="0" x2="-2.159" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-1.27" width="0.4064" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.9144" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.9144" shape="octagon"/>
<text x="-4.826" y="3.429" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C275-154X316" urn="urn:adsk.eagle:footprint:25767/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 27.5 mm, outline 15.4 x 31.6 mm</description>
<wire x1="-15.24" y1="7.62" x2="15.24" y2="7.62" width="0.1524" layer="21"/>
<wire x1="15.748" y1="7.112" x2="15.748" y2="-7.112" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-7.62" x2="-15.24" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-7.112" x2="-15.748" y2="7.112" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="7.62" x2="15.748" y2="7.112" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-7.62" x2="15.748" y2="-7.112" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-7.112" x2="-15.24" y2="-7.62" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="7.112" x2="-15.24" y2="7.62" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" shape="octagon"/>
<text x="-15.24" y="8.001" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C275-173X316" urn="urn:adsk.eagle:footprint:25768/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
grid 27.5 mm, outline 17.3 x 31.6 mm</description>
<wire x1="-15.24" y1="8.509" x2="15.24" y2="8.509" width="0.1524" layer="21"/>
<wire x1="15.748" y1="8.001" x2="15.748" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-8.509" x2="-15.24" y2="-8.509" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-8.001" x2="-15.748" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="8.509" x2="15.748" y2="8.001" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-8.509" x2="15.748" y2="-8.001" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-8.001" x2="-15.24" y2="-8.509" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="8.001" x2="-15.24" y2="8.509" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" shape="octagon"/>
<text x="-15.24" y="8.89" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C0402K" urn="urn:adsk.eagle:footprint:25769/1" library_version="1">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 0204 reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 1005</description>
<wire x1="-0.425" y1="0.2" x2="0.425" y2="0.2" width="0.1016" layer="51"/>
<wire x1="0.425" y1="-0.2" x2="-0.425" y2="-0.2" width="0.1016" layer="51"/>
<smd name="1" x="-0.6" y="0" dx="0.925" dy="0.74" layer="1"/>
<smd name="2" x="0.6" y="0" dx="0.925" dy="0.74" layer="1"/>
<text x="-0.5" y="0.425" size="1.016" layer="25">&gt;NAME</text>
<text x="-0.5" y="-1.45" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-0.5" y1="-0.25" x2="-0.225" y2="0.25" layer="51"/>
<rectangle x1="0.225" y1="-0.25" x2="0.5" y2="0.25" layer="51"/>
</package>
<package name="C0603K" urn="urn:adsk.eagle:footprint:25770/1" library_version="1">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 0603 reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 1608</description>
<wire x1="-0.725" y1="0.35" x2="0.725" y2="0.35" width="0.1016" layer="51"/>
<wire x1="0.725" y1="-0.35" x2="-0.725" y2="-0.35" width="0.1016" layer="51"/>
<smd name="1" x="-0.875" y="0" dx="1.05" dy="1.08" layer="1"/>
<smd name="2" x="0.875" y="0" dx="1.05" dy="1.08" layer="1"/>
<text x="-0.8" y="0.65" size="1.016" layer="25">&gt;NAME</text>
<text x="-0.8" y="-1.65" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-0.8" y1="-0.4" x2="-0.45" y2="0.4" layer="51"/>
<rectangle x1="0.45" y1="-0.4" x2="0.8" y2="0.4" layer="51"/>
</package>
<package name="C0805K" urn="urn:adsk.eagle:footprint:25771/1" library_version="1">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 0805 reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 2012</description>
<wire x1="-0.925" y1="0.6" x2="0.925" y2="0.6" width="0.1016" layer="51"/>
<wire x1="0.925" y1="-0.6" x2="-0.925" y2="-0.6" width="0.1016" layer="51"/>
<smd name="1" x="-1" y="0" dx="1.3" dy="1.6" layer="1"/>
<smd name="2" x="1" y="0" dx="1.3" dy="1.6" layer="1"/>
<text x="-1" y="0.875" size="1.016" layer="25">&gt;NAME</text>
<text x="-1" y="-1.9" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-1" y1="-0.65" x2="-0.5" y2="0.65" layer="51"/>
<rectangle x1="0.5" y1="-0.65" x2="1" y2="0.65" layer="51"/>
</package>
<package name="C1206K" urn="urn:adsk.eagle:footprint:25772/1" library_version="1">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 1206 reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 3216</description>
<wire x1="-1.525" y1="0.75" x2="1.525" y2="0.75" width="0.1016" layer="51"/>
<wire x1="1.525" y1="-0.75" x2="-1.525" y2="-0.75" width="0.1016" layer="51"/>
<smd name="1" x="-1.5" y="0" dx="1.5" dy="2" layer="1"/>
<smd name="2" x="1.5" y="0" dx="1.5" dy="2" layer="1"/>
<text x="-1.6" y="1.1" size="1.016" layer="25">&gt;NAME</text>
<text x="-1.6" y="-2.1" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6" y1="-0.8" x2="-1.1" y2="0.8" layer="51"/>
<rectangle x1="1.1" y1="-0.8" x2="1.6" y2="0.8" layer="51"/>
</package>
<package name="C1210K" urn="urn:adsk.eagle:footprint:25773/1" library_version="1">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 1210 reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 3225</description>
<wire x1="-1.525" y1="1.175" x2="1.525" y2="1.175" width="0.1016" layer="51"/>
<wire x1="1.525" y1="-1.175" x2="-1.525" y2="-1.175" width="0.1016" layer="51"/>
<smd name="1" x="-1.5" y="0" dx="1.5" dy="2.9" layer="1"/>
<smd name="2" x="1.5" y="0" dx="1.5" dy="2.9" layer="1"/>
<text x="-1.6" y="1.55" size="1.016" layer="25">&gt;NAME</text>
<text x="-1.6" y="-2.575" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6" y1="-1.25" x2="-1.1" y2="1.25" layer="51"/>
<rectangle x1="1.1" y1="-1.25" x2="1.6" y2="1.25" layer="51"/>
</package>
<package name="C1812K" urn="urn:adsk.eagle:footprint:25774/1" library_version="1">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 1812 reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 4532</description>
<wire x1="-2.175" y1="1.525" x2="2.175" y2="1.525" width="0.1016" layer="51"/>
<wire x1="2.175" y1="-1.525" x2="-2.175" y2="-1.525" width="0.1016" layer="51"/>
<smd name="1" x="-2.05" y="0" dx="1.8" dy="3.7" layer="1"/>
<smd name="2" x="2.05" y="0" dx="1.8" dy="3.7" layer="1"/>
<text x="-2.25" y="1.95" size="1.016" layer="25">&gt;NAME</text>
<text x="-2.25" y="-2.975" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-2.25" y1="-1.6" x2="-1.65" y2="1.6" layer="51"/>
<rectangle x1="1.65" y1="-1.6" x2="2.25" y2="1.6" layer="51"/>
</package>
<package name="C1825K" urn="urn:adsk.eagle:footprint:25775/1" library_version="1">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 1825 reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 4564</description>
<wire x1="-1.525" y1="3.125" x2="1.525" y2="3.125" width="0.1016" layer="51"/>
<wire x1="1.525" y1="-3.125" x2="-1.525" y2="-3.125" width="0.1016" layer="51"/>
<smd name="1" x="-1.5" y="0" dx="1.8" dy="6.9" layer="1"/>
<smd name="2" x="1.5" y="0" dx="1.8" dy="6.9" layer="1"/>
<text x="-1.6" y="3.55" size="1.016" layer="25">&gt;NAME</text>
<text x="-1.6" y="-4.625" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6" y1="-3.2" x2="-1.1" y2="3.2" layer="51"/>
<rectangle x1="1.1" y1="-3.2" x2="1.6" y2="3.2" layer="51"/>
</package>
<package name="C2220K" urn="urn:adsk.eagle:footprint:25776/1" library_version="1">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 2220 reflow solder&lt;/b&gt;&lt;p&gt;Metric Code Size 5650</description>
<wire x1="-2.725" y1="2.425" x2="2.725" y2="2.425" width="0.1016" layer="51"/>
<wire x1="2.725" y1="-2.425" x2="-2.725" y2="-2.425" width="0.1016" layer="51"/>
<smd name="1" x="-2.55" y="0" dx="1.85" dy="5.5" layer="1"/>
<smd name="2" x="2.55" y="0" dx="1.85" dy="5.5" layer="1"/>
<text x="-2.8" y="2.95" size="1.016" layer="25">&gt;NAME</text>
<text x="-2.8" y="-3.975" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-2.8" y1="-2.5" x2="-2.2" y2="2.5" layer="51"/>
<rectangle x1="2.2" y1="-2.5" x2="2.8" y2="2.5" layer="51"/>
</package>
<package name="C2225K" urn="urn:adsk.eagle:footprint:25777/1" library_version="1">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 2225 reflow solder&lt;/b&gt;&lt;p&gt;Metric Code Size 5664</description>
<wire x1="-2.725" y1="3.075" x2="2.725" y2="3.075" width="0.1016" layer="51"/>
<wire x1="2.725" y1="-3.075" x2="-2.725" y2="-3.075" width="0.1016" layer="51"/>
<smd name="1" x="-2.55" y="0" dx="1.85" dy="6.8" layer="1"/>
<smd name="2" x="2.55" y="0" dx="1.85" dy="6.8" layer="1"/>
<text x="-2.8" y="3.6" size="1.016" layer="25">&gt;NAME</text>
<text x="-2.8" y="-4.575" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-2.8" y1="-3.15" x2="-2.2" y2="3.15" layer="51"/>
<rectangle x1="2.2" y1="-3.15" x2="2.8" y2="3.15" layer="51"/>
</package>
<package name="HPC0201" urn="urn:adsk.eagle:footprint:25783/1" library_version="1">
<description>&lt;b&gt; &lt;/b&gt;&lt;p&gt;
Source: http://www.vishay.com/docs/10129/hpc0201a.pdf</description>
<smd name="1" x="-0.18" y="0" dx="0.2" dy="0.35" layer="1"/>
<smd name="2" x="0.18" y="0" dx="0.2" dy="0.35" layer="1"/>
<text x="-0.75" y="0.74" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.785" y="-1.865" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.305" y1="-0.15" x2="0.305" y2="0.15" layer="51"/>
</package>
<package name="C0201" urn="urn:adsk.eagle:footprint:25778/1" library_version="1">
<description>Source: http://www.avxcorp.com/docs/catalogs/cx5r.pdf</description>
<smd name="1" x="-0.25" y="0" dx="0.25" dy="0.35" layer="1"/>
<smd name="2" x="0.25" y="0" dx="0.25" dy="0.35" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.3" y1="-0.15" x2="-0.15" y2="0.15" layer="51"/>
<rectangle x1="0.15" y1="-0.15" x2="0.3" y2="0.15" layer="51"/>
<rectangle x1="-0.15" y1="0.1" x2="0.15" y2="0.15" layer="51"/>
<rectangle x1="-0.15" y1="-0.15" x2="0.15" y2="-0.1" layer="51"/>
</package>
<package name="C1808" urn="urn:adsk.eagle:footprint:25779/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
Source: AVX .. aphvc.pdf</description>
<wire x1="-1.4732" y1="0.9502" x2="1.4732" y2="0.9502" width="0.1016" layer="51"/>
<wire x1="-1.4478" y1="-0.9502" x2="1.4732" y2="-0.9502" width="0.1016" layer="51"/>
<smd name="1" x="-1.95" y="0" dx="1.6" dy="2.2" layer="1"/>
<smd name="2" x="1.95" y="0" dx="1.6" dy="2.2" layer="1"/>
<text x="-2.233" y="1.827" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.233" y="-2.842" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.275" y1="-1.015" x2="-1.225" y2="1.015" layer="51"/>
<rectangle x1="1.225" y1="-1.015" x2="2.275" y2="1.015" layer="51"/>
</package>
<package name="C3640" urn="urn:adsk.eagle:footprint:25780/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
Source: AVX .. aphvc.pdf</description>
<wire x1="-3.8322" y1="5.0496" x2="3.8322" y2="5.0496" width="0.1016" layer="51"/>
<wire x1="-3.8322" y1="-5.0496" x2="3.8322" y2="-5.0496" width="0.1016" layer="51"/>
<smd name="1" x="-4.267" y="0" dx="2.6" dy="10.7" layer="1"/>
<smd name="2" x="4.267" y="0" dx="2.6" dy="10.7" layer="1"/>
<text x="-4.647" y="6.465" size="1.27" layer="25">&gt;NAME</text>
<text x="-4.647" y="-7.255" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-4.57" y1="-5.1" x2="-3.05" y2="5.1" layer="51"/>
<rectangle x1="3.05" y1="-5.1" x2="4.5688" y2="5.1" layer="51"/>
</package>
<package name="C01005" urn="urn:adsk.eagle:footprint:25781/1" library_version="1">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-1.473" y1="0.483" x2="1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.483" x2="1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.483" x2="-1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.483" x2="-1.473" y2="0.483" width="0.0508" layer="39"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
<rectangle x1="-0.2" y1="-0.1" x2="-0.075" y2="0.1" layer="51"/>
<rectangle x1="0.075" y1="-0.1" x2="0.2" y2="0.1" layer="51"/>
<rectangle x1="-0.15" y1="0.05" x2="0.15" y2="0.1" layer="51"/>
<rectangle x1="-0.15" y1="-0.1" x2="0.15" y2="-0.05" layer="51"/>
<smd name="1" x="-0.1625" y="0" dx="0.2" dy="0.25" layer="1"/>
<smd name="2" x="0.1625" y="0" dx="0.2" dy="0.25" layer="1"/>
<text x="-0.4" y="0.3" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.4" y="-1.6" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="R0402" urn="urn:adsk.eagle:package:26058/1" type="box" library_version="1">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R0402"/>
</packageinstances>
</package3d>
<package3d name="R0603" urn="urn:adsk.eagle:package:26057/1" type="box" library_version="1">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R0603"/>
</packageinstances>
</package3d>
<package3d name="R0805" urn="urn:adsk.eagle:package:26059/1" type="box" library_version="1">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R0805"/>
</packageinstances>
</package3d>
<package3d name="R0805W" urn="urn:adsk.eagle:package:26060/1" type="box" library_version="1">
<description>RESISTOR wave soldering</description>
<packageinstances>
<packageinstance name="R0805W"/>
</packageinstances>
</package3d>
<package3d name="R1206" urn="urn:adsk.eagle:package:26062/1" type="box" library_version="1">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R1206"/>
</packageinstances>
</package3d>
<package3d name="R1206W" urn="urn:adsk.eagle:package:26064/1" type="box" library_version="1">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R1206W"/>
</packageinstances>
</package3d>
<package3d name="R1210" urn="urn:adsk.eagle:package:26063/1" type="box" library_version="1">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R1210"/>
</packageinstances>
</package3d>
<package3d name="R1210W" urn="urn:adsk.eagle:package:26065/1" type="box" library_version="1">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R1210W"/>
</packageinstances>
</package3d>
<package3d name="R2010" urn="urn:adsk.eagle:package:26066/1" type="box" library_version="1">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R2010"/>
</packageinstances>
</package3d>
<package3d name="R2010W" urn="urn:adsk.eagle:package:26068/1" type="box" library_version="1">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R2010W"/>
</packageinstances>
</package3d>
<package3d name="R2012" urn="urn:adsk.eagle:package:26067/1" type="box" library_version="1">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R2012"/>
</packageinstances>
</package3d>
<package3d name="R2012W" urn="urn:adsk.eagle:package:26069/1" type="box" library_version="1">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R2012W"/>
</packageinstances>
</package3d>
<package3d name="R2512" urn="urn:adsk.eagle:package:26070/1" type="box" library_version="1">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R2512"/>
</packageinstances>
</package3d>
<package3d name="R2512W" urn="urn:adsk.eagle:package:26072/1" type="box" library_version="1">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R2512W"/>
</packageinstances>
</package3d>
<package3d name="R3216" urn="urn:adsk.eagle:package:26071/1" type="box" library_version="1">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R3216"/>
</packageinstances>
</package3d>
<package3d name="R3216W" urn="urn:adsk.eagle:package:26074/1" type="box" library_version="1">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R3216W"/>
</packageinstances>
</package3d>
<package3d name="R3225" urn="urn:adsk.eagle:package:26073/1" type="box" library_version="1">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R3225"/>
</packageinstances>
</package3d>
<package3d name="R3225W" urn="urn:adsk.eagle:package:26075/1" type="box" library_version="1">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R3225W"/>
</packageinstances>
</package3d>
<package3d name="R5025" urn="urn:adsk.eagle:package:26080/1" type="box" library_version="1">
<description>RESISTOR</description>
<packageinstances>
<packageinstance name="R5025"/>
</packageinstances>
</package3d>
<package3d name="R5025W" urn="urn:adsk.eagle:package:26077/1" type="box" library_version="1">
<description>RESISTOR
wave soldering</description>
<packageinstances>
<packageinstance name="R5025W"/>
</packageinstances>
</package3d>
<package3d name="R6332" urn="urn:adsk.eagle:package:26076/1" type="box" library_version="1">
<description>RESISTOR
Source: http://download.siliconexpert.com/pdfs/2005/02/24/Semi_Ap/2/VSH/Resistor/dcrcwfre.pdf</description>
<packageinstances>
<packageinstance name="R6332"/>
</packageinstances>
</package3d>
<package3d name="R6332W" urn="urn:adsk.eagle:package:26078/1" type="box" library_version="1">
<description>RESISTOR wave soldering
Source: http://download.siliconexpert.com/pdfs/2005/02/24/Semi_Ap/2/VSH/Resistor/dcrcwfre.pdf</description>
<packageinstances>
<packageinstance name="R6332W"/>
</packageinstances>
</package3d>
<package3d name="M0805" urn="urn:adsk.eagle:package:26079/1" type="box" library_version="1">
<description>RESISTOR
MELF 0.10 W</description>
<packageinstances>
<packageinstance name="M0805"/>
</packageinstances>
</package3d>
<package3d name="M1206" urn="urn:adsk.eagle:package:26088/1" type="box" library_version="1">
<description>RESISTOR
MELF 0.25 W</description>
<packageinstances>
<packageinstance name="M1206"/>
</packageinstances>
</package3d>
<package3d name="M1406" urn="urn:adsk.eagle:package:26081/1" type="box" library_version="1">
<description>RESISTOR
MELF 0.12 W</description>
<packageinstances>
<packageinstance name="M1406"/>
</packageinstances>
</package3d>
<package3d name="M2012" urn="urn:adsk.eagle:package:26082/1" type="box" library_version="1">
<description>RESISTOR
MELF 0.10 W</description>
<packageinstances>
<packageinstance name="M2012"/>
</packageinstances>
</package3d>
<package3d name="M2309" urn="urn:adsk.eagle:package:26085/1" type="box" library_version="1">
<description>RESISTOR
MELF 0.25 W</description>
<packageinstances>
<packageinstance name="M2309"/>
</packageinstances>
</package3d>
<package3d name="M3216" urn="urn:adsk.eagle:package:26083/1" type="box" library_version="1">
<description>RESISTOR
MELF 0.25 W</description>
<packageinstances>
<packageinstance name="M3216"/>
</packageinstances>
</package3d>
<package3d name="M3516" urn="urn:adsk.eagle:package:26086/1" type="box" library_version="1">
<description>RESISTOR
MELF 0.12 W</description>
<packageinstances>
<packageinstance name="M3516"/>
</packageinstances>
</package3d>
<package3d name="M5923" urn="urn:adsk.eagle:package:26084/1" type="box" library_version="1">
<description>RESISTOR
MELF 0.25 W</description>
<packageinstances>
<packageinstance name="M5923"/>
</packageinstances>
</package3d>
<package3d name="0204/5" urn="urn:adsk.eagle:package:25955/1" type="box" library_version="1">
<description>RESISTOR
type 0204, grid 5 mm</description>
<packageinstances>
<packageinstance name="0204/5"/>
</packageinstances>
</package3d>
<package3d name="0204/7" urn="urn:adsk.eagle:package:25945/1" type="box" library_version="1">
<description>RESISTOR
type 0204, grid 7.5 mm</description>
<packageinstances>
<packageinstance name="0204/7"/>
</packageinstances>
</package3d>
<package3d name="0204V" urn="urn:adsk.eagle:package:25948/1" type="box" library_version="1">
<description>RESISTOR
type 0204, grid 2.5 mm</description>
<packageinstances>
<packageinstance name="0204V"/>
</packageinstances>
</package3d>
<package3d name="0207/10" urn="urn:adsk.eagle:package:25939/1" type="box" library_version="1">
<description>RESISTOR
type 0207, grid 10 mm</description>
<packageinstances>
<packageinstance name="0207/10"/>
</packageinstances>
</package3d>
<package3d name="0207/12" urn="urn:adsk.eagle:package:25938/1" type="box" library_version="1">
<description>RESISTOR
type 0207, grid 12 mm</description>
<packageinstances>
<packageinstance name="0207/12"/>
</packageinstances>
</package3d>
<package3d name="0207/15" urn="urn:adsk.eagle:package:25947/1" type="box" library_version="1">
<description>RESISTOR
type 0207, grid 15mm</description>
<packageinstances>
<packageinstance name="0207/15"/>
</packageinstances>
</package3d>
<package3d name="0207/2V" urn="urn:adsk.eagle:package:25941/1" type="box" library_version="1">
<description>RESISTOR
type 0207, grid 2.5 mm</description>
<packageinstances>
<packageinstance name="0207/2V"/>
</packageinstances>
</package3d>
<package3d name="0207/5V" urn="urn:adsk.eagle:package:25944/1" type="box" library_version="1">
<description>RESISTOR
type 0207, grid 5 mm</description>
<packageinstances>
<packageinstance name="0207/5V"/>
</packageinstances>
</package3d>
<package3d name="0207/7" urn="urn:adsk.eagle:package:25942/1" type="box" library_version="1">
<description>RESISTOR
type 0207, grid 7.5 mm</description>
<packageinstances>
<packageinstance name="0207/7"/>
</packageinstances>
</package3d>
<package3d name="0309/10" urn="urn:adsk.eagle:package:26087/1" type="box" library_version="1">
<description>RESISTOR
type 0309, grid 10mm</description>
<packageinstances>
<packageinstance name="0309/10"/>
</packageinstances>
</package3d>
<package3d name="0309/12" urn="urn:adsk.eagle:package:26089/1" type="box" library_version="1">
<description>RESISTOR
type 0309, grid 12.5 mm</description>
<packageinstances>
<packageinstance name="0309/12"/>
</packageinstances>
</package3d>
<package3d name="0309V" urn="urn:adsk.eagle:package:26090/1" type="box" library_version="1">
<description>RESISTOR
type 0309, grid 2.5 mm</description>
<packageinstances>
<packageinstance name="0309V"/>
</packageinstances>
</package3d>
<package3d name="0411/12" urn="urn:adsk.eagle:package:26091/1" type="box" library_version="1">
<description>RESISTOR
type 0411, grid 12.5 mm</description>
<packageinstances>
<packageinstance name="0411/12"/>
</packageinstances>
</package3d>
<package3d name="0411/15" urn="urn:adsk.eagle:package:26093/1" type="box" library_version="1">
<description>RESISTOR
type 0411, grid 15 mm</description>
<packageinstances>
<packageinstance name="0411/15"/>
</packageinstances>
</package3d>
<package3d name="0411V" urn="urn:adsk.eagle:package:26092/1" type="box" library_version="1">
<description>RESISTOR
type 0411, grid 3.81 mm</description>
<packageinstances>
<packageinstance name="0411V"/>
</packageinstances>
</package3d>
<package3d name="0414/15" urn="urn:adsk.eagle:package:26094/1" type="box" library_version="1">
<description>RESISTOR
type 0414, grid 15 mm</description>
<packageinstances>
<packageinstance name="0414/15"/>
</packageinstances>
</package3d>
<package3d name="0414V" urn="urn:adsk.eagle:package:26095/1" type="box" library_version="1">
<description>RESISTOR
type 0414, grid 5 mm</description>
<packageinstances>
<packageinstance name="0414V"/>
</packageinstances>
</package3d>
<package3d name="0617/17" urn="urn:adsk.eagle:package:26096/1" type="box" library_version="1">
<description>RESISTOR
type 0617, grid 17.5 mm</description>
<packageinstances>
<packageinstance name="0617/17"/>
</packageinstances>
</package3d>
<package3d name="0617/22" urn="urn:adsk.eagle:package:26103/1" type="box" library_version="1">
<description>RESISTOR
type 0617, grid 22.5 mm</description>
<packageinstances>
<packageinstance name="0617/22"/>
</packageinstances>
</package3d>
<package3d name="0617V" urn="urn:adsk.eagle:package:26097/1" type="box" library_version="1">
<description>RESISTOR
type 0617, grid 5 mm</description>
<packageinstances>
<packageinstance name="0617V"/>
</packageinstances>
</package3d>
<package3d name="0922/22" urn="urn:adsk.eagle:package:26107/1" type="box" library_version="1">
<description>RESISTOR
type 0922, grid 22.5 mm</description>
<packageinstances>
<packageinstance name="0922/22"/>
</packageinstances>
</package3d>
<package3d name="P0613V" urn="urn:adsk.eagle:package:26106/1" type="box" library_version="1">
<description>RESISTOR
type 0613, grid 5 mm</description>
<packageinstances>
<packageinstance name="P0613V"/>
</packageinstances>
</package3d>
<package3d name="P0613/15" urn="urn:adsk.eagle:package:26098/1" type="box" library_version="1">
<description>RESISTOR
type 0613, grid 15 mm</description>
<packageinstances>
<packageinstance name="P0613/15"/>
</packageinstances>
</package3d>
<package3d name="P0817/22" urn="urn:adsk.eagle:package:26099/1" type="box" library_version="1">
<description>RESISTOR
type 0817, grid 22.5 mm</description>
<packageinstances>
<packageinstance name="P0817/22"/>
</packageinstances>
</package3d>
<package3d name="P0817V" urn="urn:adsk.eagle:package:26100/1" type="box" library_version="1">
<description>RESISTOR
type 0817, grid 6.35 mm</description>
<packageinstances>
<packageinstance name="P0817V"/>
</packageinstances>
</package3d>
<package3d name="V234/12" urn="urn:adsk.eagle:package:26108/1" type="box" library_version="1">
<description>RESISTOR
type V234, grid 12.5 mm</description>
<packageinstances>
<packageinstance name="V234/12"/>
</packageinstances>
</package3d>
<package3d name="V235/17" urn="urn:adsk.eagle:package:26102/1" type="box" library_version="1">
<description>RESISTOR
type V235, grid 17.78 mm</description>
<packageinstances>
<packageinstance name="V235/17"/>
</packageinstances>
</package3d>
<package3d name="V526-0" urn="urn:adsk.eagle:package:26101/1" type="box" library_version="1">
<description>RESISTOR
type V526-0, grid 2.5 mm</description>
<packageinstances>
<packageinstance name="V526-0"/>
</packageinstances>
</package3d>
<package3d name="MINI_MELF-0102R" urn="urn:adsk.eagle:package:26104/1" type="box" library_version="1">
<description>CECC Size RC2211 Reflow Soldering
source Beyschlag</description>
<packageinstances>
<packageinstance name="MINI_MELF-0102R"/>
</packageinstances>
</package3d>
<package3d name="MINI_MELF-0102W" urn="urn:adsk.eagle:package:26105/1" type="box" library_version="1">
<description>CECC Size RC2211 Wave Soldering
source Beyschlag</description>
<packageinstances>
<packageinstance name="MINI_MELF-0102W"/>
</packageinstances>
</package3d>
<package3d name="MINI_MELF-0204R" urn="urn:adsk.eagle:package:26109/1" type="box" library_version="1">
<description>CECC Size RC3715 Reflow Soldering
source Beyschlag</description>
<packageinstances>
<packageinstance name="MINI_MELF-0204R"/>
</packageinstances>
</package3d>
<package3d name="MINI_MELF-0204W" urn="urn:adsk.eagle:package:26111/1" type="box" library_version="1">
<description>CECC Size RC3715 Wave Soldering
source Beyschlag</description>
<packageinstances>
<packageinstance name="MINI_MELF-0204W"/>
</packageinstances>
</package3d>
<package3d name="MINI_MELF-0207R" urn="urn:adsk.eagle:package:26113/1" type="box" library_version="1">
<description>CECC Size RC6123 Reflow Soldering
source Beyschlag</description>
<packageinstances>
<packageinstance name="MINI_MELF-0207R"/>
</packageinstances>
</package3d>
<package3d name="MINI_MELF-0207W" urn="urn:adsk.eagle:package:26112/1" type="box" library_version="1">
<description>CECC Size RC6123 Wave Soldering
source Beyschlag</description>
<packageinstances>
<packageinstance name="MINI_MELF-0207W"/>
</packageinstances>
</package3d>
<package3d name="0922V" urn="urn:adsk.eagle:package:26110/1" type="box" library_version="1">
<description>RESISTOR
type 0922, grid 7.5 mm</description>
<packageinstances>
<packageinstance name="0922V"/>
</packageinstances>
</package3d>
<package3d name="RDH/15" urn="urn:adsk.eagle:package:26114/1" type="box" library_version="1">
<description>RESISTOR
type RDH, grid 15 mm</description>
<packageinstances>
<packageinstance name="RDH/15"/>
</packageinstances>
</package3d>
<package3d name="MINI_MELF-0102AX" urn="urn:adsk.eagle:package:26115/1" type="box" library_version="1">
<description>Mini MELF 0102 Axial</description>
<packageinstances>
<packageinstance name="MINI_MELF-0102AX"/>
</packageinstances>
</package3d>
<package3d name="R0201" urn="urn:adsk.eagle:package:26117/1" type="box" library_version="1">
<description>RESISTOR chip
Source: http://www.vishay.com/docs/20008/dcrcw.pdf</description>
<packageinstances>
<packageinstance name="R0201"/>
</packageinstances>
</package3d>
<package3d name="VTA52" urn="urn:adsk.eagle:package:26116/1" type="box" library_version="1">
<description>Bulk Metal® Foil Technology, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements
MIL SIZE RBR52
Source: VISHAY .. vta56.pdf</description>
<packageinstances>
<packageinstance name="VTA52"/>
</packageinstances>
</package3d>
<package3d name="VTA53" urn="urn:adsk.eagle:package:26118/1" type="box" library_version="1">
<description>Bulk Metal® Foil Technology, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements
MIL SIZE RBR53
Source: VISHAY .. vta56.pdf</description>
<packageinstances>
<packageinstance name="VTA53"/>
</packageinstances>
</package3d>
<package3d name="VTA54" urn="urn:adsk.eagle:package:26119/1" type="box" library_version="1">
<description>Bulk Metal® Foil Technology, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements
MIL SIZE RBR54
Source: VISHAY .. vta56.pdf</description>
<packageinstances>
<packageinstance name="VTA54"/>
</packageinstances>
</package3d>
<package3d name="VTA55" urn="urn:adsk.eagle:package:26120/1" type="box" library_version="1">
<description>Bulk Metal® Foil Technology, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements
MIL SIZE RBR55
Source: VISHAY .. vta56.pdf</description>
<packageinstances>
<packageinstance name="VTA55"/>
</packageinstances>
</package3d>
<package3d name="VTA56" urn="urn:adsk.eagle:package:26129/1" type="box" library_version="1">
<description>Bulk Metal® Foil Technology, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements
MIL SIZE RBR56
Source: VISHAY .. vta56.pdf</description>
<packageinstances>
<packageinstance name="VTA56"/>
</packageinstances>
</package3d>
<package3d name="VMTA55" urn="urn:adsk.eagle:package:26121/1" type="box" library_version="1">
<description>Bulk Metal® Foil Technology, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements
MIL SIZE RNC55
Source: VISHAY .. vta56.pdf</description>
<packageinstances>
<packageinstance name="VMTA55"/>
</packageinstances>
</package3d>
<package3d name="VMTB60" urn="urn:adsk.eagle:package:26122/1" type="box" library_version="1">
<description>Bulk Metal® Foil Technology, Tubular Axial Lead Resistors, Meets or Exceeds MIL-R-39005 Requirements
MIL SIZE RNC60
Source: VISHAY .. vta56.pdf</description>
<packageinstances>
<packageinstance name="VMTB60"/>
</packageinstances>
</package3d>
<package3d name="R4527" urn="urn:adsk.eagle:package:26124/1" type="box" library_version="1">
<description>Package 4527
Source: http://www.vishay.com/docs/31059/wsrhigh.pdf</description>
<packageinstances>
<packageinstance name="R4527"/>
</packageinstances>
</package3d>
<package3d name="WSC0001" urn="urn:adsk.eagle:package:26123/1" type="box" library_version="1">
<description>Wirewound Resistors, Precision Power
Source: VISHAY wscwsn.pdf</description>
<packageinstances>
<packageinstance name="WSC0001"/>
</packageinstances>
</package3d>
<package3d name="WSC0002" urn="urn:adsk.eagle:package:26125/1" type="box" library_version="1">
<description>Wirewound Resistors, Precision Power
Source: VISHAY wscwsn.pdf</description>
<packageinstances>
<packageinstance name="WSC0002"/>
</packageinstances>
</package3d>
<package3d name="WSC01/2" urn="urn:adsk.eagle:package:26127/1" type="box" library_version="1">
<description>Wirewound Resistors, Precision Power
Source: VISHAY wscwsn.pdf</description>
<packageinstances>
<packageinstance name="WSC01/2"/>
</packageinstances>
</package3d>
<package3d name="WSC2515" urn="urn:adsk.eagle:package:26134/1" type="box" library_version="1">
<description>Wirewound Resistors, Precision Power
Source: VISHAY wscwsn.pdf</description>
<packageinstances>
<packageinstance name="WSC2515"/>
</packageinstances>
</package3d>
<package3d name="WSC4527" urn="urn:adsk.eagle:package:26126/1" type="box" library_version="1">
<description>Wirewound Resistors, Precision Power
Source: VISHAY wscwsn.pdf</description>
<packageinstances>
<packageinstance name="WSC4527"/>
</packageinstances>
</package3d>
<package3d name="WSC6927" urn="urn:adsk.eagle:package:26128/1" type="box" library_version="1">
<description>Wirewound Resistors, Precision Power
Source: VISHAY wscwsn.pdf</description>
<packageinstances>
<packageinstance name="WSC6927"/>
</packageinstances>
</package3d>
<package3d name="R1218" urn="urn:adsk.eagle:package:26131/1" type="box" library_version="1">
<description>CRCW1218 Thick Film, Rectangular Chip Resistors
Source: http://www.vishay.com .. dcrcw.pdf</description>
<packageinstances>
<packageinstance name="R1218"/>
</packageinstances>
</package3d>
<package3d name="1812X7R" urn="urn:adsk.eagle:package:26130/1" type="box" library_version="1">
<description>Chip Monolithic Ceramic Capacitors Medium Voltage High Capacitance for General Use
Source: http://www.murata.com .. GRM43DR72E224KW01.pdf</description>
<packageinstances>
<packageinstance name="1812X7R"/>
</packageinstances>
</package3d>
<package3d name="PRL1632" urn="urn:adsk.eagle:package:26132/1" type="box" library_version="1">
<description>PRL1632 are realized as 1W for 3.2 × 1.6mm(1206)
Source: http://www.mouser.com/ds/2/392/products_18-2245.pdf</description>
<packageinstances>
<packageinstance name="PRL1632"/>
</packageinstances>
</package3d>
<package3d name="R01005" urn="urn:adsk.eagle:package:26133/1" type="box" library_version="1">
<packageinstances>
<packageinstance name="R01005"/>
</packageinstances>
</package3d>
<package3d name="C0402" urn="urn:adsk.eagle:package:26136/1" type="box" library_version="1">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C0402"/>
</packageinstances>
</package3d>
<package3d name="C0504" urn="urn:adsk.eagle:package:26135/1" type="box" library_version="1">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C0504"/>
</packageinstances>
</package3d>
<package3d name="C0603" urn="urn:adsk.eagle:package:26138/1" type="box" library_version="1">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C0603"/>
</packageinstances>
</package3d>
<package3d name="C0805" urn="urn:adsk.eagle:package:26137/1" type="box" library_version="1">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C0805"/>
</packageinstances>
</package3d>
<package3d name="C1206" urn="urn:adsk.eagle:package:26140/1" type="box" library_version="1">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C1206"/>
</packageinstances>
</package3d>
<package3d name="C1210" urn="urn:adsk.eagle:package:26139/1" type="box" library_version="1">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C1210"/>
</packageinstances>
</package3d>
<package3d name="C1310" urn="urn:adsk.eagle:package:26142/1" type="box" library_version="1">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C1310"/>
</packageinstances>
</package3d>
<package3d name="C1608" urn="urn:adsk.eagle:package:26141/1" type="box" library_version="1">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C1608"/>
</packageinstances>
</package3d>
<package3d name="C1812" urn="urn:adsk.eagle:package:26143/1" type="box" library_version="1">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C1812"/>
</packageinstances>
</package3d>
<package3d name="C1825" urn="urn:adsk.eagle:package:26144/1" type="box" library_version="1">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C1825"/>
</packageinstances>
</package3d>
<package3d name="C2012" urn="urn:adsk.eagle:package:26145/1" type="box" library_version="1">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C2012"/>
</packageinstances>
</package3d>
<package3d name="C3216" urn="urn:adsk.eagle:package:26146/1" type="box" library_version="1">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C3216"/>
</packageinstances>
</package3d>
<package3d name="C3225" urn="urn:adsk.eagle:package:26147/1" type="box" library_version="1">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C3225"/>
</packageinstances>
</package3d>
<package3d name="C4532" urn="urn:adsk.eagle:package:26148/1" type="box" library_version="1">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C4532"/>
</packageinstances>
</package3d>
<package3d name="C4564" urn="urn:adsk.eagle:package:26155/1" type="box" library_version="1">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C4564"/>
</packageinstances>
</package3d>
<package3d name="C025-024X044" urn="urn:adsk.eagle:package:26149/1" type="box" library_version="1">
<description>CAPACITOR
grid 2.5 mm, outline 2.4 x 4.4 mm</description>
<packageinstances>
<packageinstance name="C025-024X044"/>
</packageinstances>
</package3d>
<package3d name="C025-025X050" urn="urn:adsk.eagle:package:26151/1" type="box" library_version="1">
<description>CAPACITOR
grid 2.5 mm, outline 2.5 x 5 mm</description>
<packageinstances>
<packageinstance name="C025-025X050"/>
</packageinstances>
</package3d>
<package3d name="C025-030X050" urn="urn:adsk.eagle:package:26154/1" type="box" library_version="1">
<description>CAPACITOR
grid 2.5 mm, outline 3 x 5 mm</description>
<packageinstances>
<packageinstance name="C025-030X050"/>
</packageinstances>
</package3d>
<package3d name="C025-040X050" urn="urn:adsk.eagle:package:26150/1" type="box" library_version="1">
<description>CAPACITOR
grid 2.5 mm, outline 4 x 5 mm</description>
<packageinstances>
<packageinstance name="C025-040X050"/>
</packageinstances>
</package3d>
<package3d name="C025-050X050" urn="urn:adsk.eagle:package:26152/1" type="box" library_version="1">
<description>CAPACITOR
grid 2.5 mm, outline 5 x 5 mm</description>
<packageinstances>
<packageinstance name="C025-050X050"/>
</packageinstances>
</package3d>
<package3d name="C025-060X050" urn="urn:adsk.eagle:package:26153/1" type="box" library_version="1">
<description>CAPACITOR
grid 2.5 mm, outline 6 x 5 mm</description>
<packageinstances>
<packageinstance name="C025-060X050"/>
</packageinstances>
</package3d>
<package3d name="C025_050-024X070" urn="urn:adsk.eagle:package:26157/1" type="box" library_version="1">
<description>CAPACITOR
grid 2.5 mm + 5 mm, outline 2.4 x 7 mm</description>
<packageinstances>
<packageinstance name="C025_050-024X070"/>
</packageinstances>
</package3d>
<package3d name="C025_050-025X075" urn="urn:adsk.eagle:package:26158/1" type="box" library_version="1">
<description>CAPACITOR
grid 2.5 + 5 mm, outline 2.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C025_050-025X075"/>
</packageinstances>
</package3d>
<package3d name="C025_050-035X075" urn="urn:adsk.eagle:package:26156/1" type="box" library_version="1">
<description>CAPACITOR
grid 2.5 + 5 mm, outline 3.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C025_050-035X075"/>
</packageinstances>
</package3d>
<package3d name="C025_050-045X075" urn="urn:adsk.eagle:package:26159/1" type="box" library_version="1">
<description>CAPACITOR
grid 2.5 + 5 mm, outline 4.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C025_050-045X075"/>
</packageinstances>
</package3d>
<package3d name="C025_050-055X075" urn="urn:adsk.eagle:package:26163/1" type="box" library_version="1">
<description>CAPACITOR
grid 2.5 + 5 mm, outline 5.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C025_050-055X075"/>
</packageinstances>
</package3d>
<package3d name="C050-024X044" urn="urn:adsk.eagle:package:26162/1" type="box" library_version="1">
<description>CAPACITOR
grid 5 mm, outline 2.4 x 4.4 mm</description>
<packageinstances>
<packageinstance name="C050-024X044"/>
</packageinstances>
</package3d>
<package3d name="C050-025X075" urn="urn:adsk.eagle:package:26160/1" type="box" library_version="1">
<description>CAPACITOR
grid 5 mm, outline 2.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C050-025X075"/>
</packageinstances>
</package3d>
<package3d name="C050-045X075" urn="urn:adsk.eagle:package:26165/1" type="box" library_version="1">
<description>CAPACITOR
grid 5 mm, outline 4.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C050-045X075"/>
</packageinstances>
</package3d>
<package3d name="C050-030X075" urn="urn:adsk.eagle:package:26161/1" type="box" library_version="1">
<description>CAPACITOR
grid 5 mm, outline 3 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C050-030X075"/>
</packageinstances>
</package3d>
<package3d name="C050-050X075" urn="urn:adsk.eagle:package:26164/1" type="box" library_version="1">
<description>CAPACITOR
grid 5 mm, outline 5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C050-050X075"/>
</packageinstances>
</package3d>
<package3d name="C050-055X075" urn="urn:adsk.eagle:package:26166/1" type="box" library_version="1">
<description>CAPACITOR
grid 5 mm, outline 5.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C050-055X075"/>
</packageinstances>
</package3d>
<package3d name="C050-075X075" urn="urn:adsk.eagle:package:26182/1" type="box" library_version="1">
<description>CAPACITOR
grid 5 mm, outline 7.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C050-075X075"/>
</packageinstances>
</package3d>
<package3d name="C050H075X075" urn="urn:adsk.eagle:package:26167/1" type="box" library_version="1">
<description>CAPACITOR
Horizontal, grid 5 mm, outline 7.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C050H075X075"/>
</packageinstances>
</package3d>
<package3d name="C075-032X103" urn="urn:adsk.eagle:package:26168/1" type="box" library_version="1">
<description>CAPACITOR
grid 7.5 mm, outline 3.2 x 10.3 mm</description>
<packageinstances>
<packageinstance name="C075-032X103"/>
</packageinstances>
</package3d>
<package3d name="C075-042X103" urn="urn:adsk.eagle:package:26170/1" type="box" library_version="1">
<description>CAPACITOR
grid 7.5 mm, outline 4.2 x 10.3 mm</description>
<packageinstances>
<packageinstance name="C075-042X103"/>
</packageinstances>
</package3d>
<package3d name="C075-052X106" urn="urn:adsk.eagle:package:26169/1" type="box" library_version="1">
<description>CAPACITOR
grid 7.5 mm, outline 5.2 x 10.6 mm</description>
<packageinstances>
<packageinstance name="C075-052X106"/>
</packageinstances>
</package3d>
<package3d name="C102-043X133" urn="urn:adsk.eagle:package:26171/1" type="box" library_version="1">
<description>CAPACITOR
grid 10.2 mm, outline 4.3 x 13.3 mm</description>
<packageinstances>
<packageinstance name="C102-043X133"/>
</packageinstances>
</package3d>
<package3d name="C102-054X133" urn="urn:adsk.eagle:package:26172/1" type="box" library_version="1">
<description>CAPACITOR
grid 10.2 mm, outline 5.4 x 13.3 mm</description>
<packageinstances>
<packageinstance name="C102-054X133"/>
</packageinstances>
</package3d>
<package3d name="C102-064X133" urn="urn:adsk.eagle:package:26173/1" type="box" library_version="1">
<description>CAPACITOR
grid 10.2 mm, outline 6.4 x 13.3 mm</description>
<packageinstances>
<packageinstance name="C102-064X133"/>
</packageinstances>
</package3d>
<package3d name="C102_152-062X184" urn="urn:adsk.eagle:package:26189/1" type="box" library_version="1">
<description>CAPACITOR
grid 10.2 mm + 15.2 mm, outline 6.2 x 18.4 mm</description>
<packageinstances>
<packageinstance name="C102_152-062X184"/>
</packageinstances>
</package3d>
<package3d name="C150-054X183" urn="urn:adsk.eagle:package:26175/1" type="box" library_version="1">
<description>CAPACITOR
grid 15 mm, outline 5.4 x 18.3 mm</description>
<packageinstances>
<packageinstance name="C150-054X183"/>
</packageinstances>
</package3d>
<package3d name="C150-064X183" urn="urn:adsk.eagle:package:26178/1" type="box" library_version="1">
<description>CAPACITOR
grid 15 mm, outline 6.4 x 18.3 mm</description>
<packageinstances>
<packageinstance name="C150-064X183"/>
</packageinstances>
</package3d>
<package3d name="C150-072X183" urn="urn:adsk.eagle:package:26174/1" type="box" library_version="1">
<description>CAPACITOR
grid 15 mm, outline 7.2 x 18.3 mm</description>
<packageinstances>
<packageinstance name="C150-072X183"/>
</packageinstances>
</package3d>
<package3d name="C150-084X183" urn="urn:adsk.eagle:package:26176/1" type="box" library_version="1">
<description>CAPACITOR
grid 15 mm, outline 8.4 x 18.3 mm</description>
<packageinstances>
<packageinstance name="C150-084X183"/>
</packageinstances>
</package3d>
<package3d name="C150-091X182" urn="urn:adsk.eagle:package:26177/1" type="box" library_version="1">
<description>CAPACITOR
grid 15 mm, outline 9.1 x 18.2 mm</description>
<packageinstances>
<packageinstance name="C150-091X182"/>
</packageinstances>
</package3d>
<package3d name="C225-062X268" urn="urn:adsk.eagle:package:26179/1" type="box" library_version="1">
<description>CAPACITOR
grid 22.5 mm, outline 6.2 x 26.8 mm</description>
<packageinstances>
<packageinstance name="C225-062X268"/>
</packageinstances>
</package3d>
<package3d name="C225-074X268" urn="urn:adsk.eagle:package:26180/1" type="box" library_version="1">
<description>CAPACITOR
grid 22.5 mm, outline 7.4 x 26.8 mm</description>
<packageinstances>
<packageinstance name="C225-074X268"/>
</packageinstances>
</package3d>
<package3d name="C225-087X268" urn="urn:adsk.eagle:package:26181/1" type="box" library_version="1">
<description>CAPACITOR
grid 22.5 mm, outline 8.7 x 26.8 mm</description>
<packageinstances>
<packageinstance name="C225-087X268"/>
</packageinstances>
</package3d>
<package3d name="C225-108X268" urn="urn:adsk.eagle:package:26184/1" type="box" library_version="1">
<description>CAPACITOR
grid 22.5 mm, outline 10.8 x 26.8 mm</description>
<packageinstances>
<packageinstance name="C225-108X268"/>
</packageinstances>
</package3d>
<package3d name="C225-113X268" urn="urn:adsk.eagle:package:26183/1" type="box" library_version="1">
<description>CAPACITOR
grid 22.5 mm, outline 11.3 x 26.8 mm</description>
<packageinstances>
<packageinstance name="C225-113X268"/>
</packageinstances>
</package3d>
<package3d name="C275-093X316" urn="urn:adsk.eagle:package:26185/1" type="box" library_version="1">
<description>CAPACITOR
grid 27.5 mm, outline 9.3 x 31.6 mm</description>
<packageinstances>
<packageinstance name="C275-093X316"/>
</packageinstances>
</package3d>
<package3d name="C275-113X316" urn="urn:adsk.eagle:package:26186/1" type="box" library_version="1">
<description>CAPACITOR
grid 27.5 mm, outline 11.3 x 31.6 mm</description>
<packageinstances>
<packageinstance name="C275-113X316"/>
</packageinstances>
</package3d>
<package3d name="C275-134X316" urn="urn:adsk.eagle:package:26187/1" type="box" library_version="1">
<description>CAPACITOR
grid 27.5 mm, outline 13.4 x 31.6 mm</description>
<packageinstances>
<packageinstance name="C275-134X316"/>
</packageinstances>
</package3d>
<package3d name="C275-205X316" urn="urn:adsk.eagle:package:26188/1" type="box" library_version="1">
<description>CAPACITOR
grid 27.5 mm, outline 20.5 x 31.6 mm</description>
<packageinstances>
<packageinstance name="C275-205X316"/>
</packageinstances>
</package3d>
<package3d name="C325-137X374" urn="urn:adsk.eagle:package:26190/1" type="box" library_version="1">
<description>CAPACITOR
grid 32.5 mm, outline 13.7 x 37.4 mm</description>
<packageinstances>
<packageinstance name="C325-137X374"/>
</packageinstances>
</package3d>
<package3d name="C325-162X374" urn="urn:adsk.eagle:package:26198/1" type="box" library_version="1">
<description>CAPACITOR
grid 32.5 mm, outline 16.2 x 37.4 mm</description>
<packageinstances>
<packageinstance name="C325-162X374"/>
</packageinstances>
</package3d>
<package3d name="C325-182X374" urn="urn:adsk.eagle:package:26191/1" type="box" library_version="1">
<description>CAPACITOR
grid 32.5 mm, outline 18.2 x 37.4 mm</description>
<packageinstances>
<packageinstance name="C325-182X374"/>
</packageinstances>
</package3d>
<package3d name="C375-192X418" urn="urn:adsk.eagle:package:26192/1" type="box" library_version="1">
<description>CAPACITOR
grid 37.5 mm, outline 19.2 x 41.8 mm</description>
<packageinstances>
<packageinstance name="C375-192X418"/>
</packageinstances>
</package3d>
<package3d name="C375-203X418" urn="urn:adsk.eagle:package:26194/1" type="box" library_version="1">
<description>CAPACITOR
grid 37.5 mm, outline 20.3 x 41.8 mm</description>
<packageinstances>
<packageinstance name="C375-203X418"/>
</packageinstances>
</package3d>
<package3d name="C050-035X075" urn="urn:adsk.eagle:package:26193/1" type="box" library_version="1">
<description>CAPACITOR
grid 5 mm, outline 3.5 x 7.5 mm</description>
<packageinstances>
<packageinstance name="C050-035X075"/>
</packageinstances>
</package3d>
<package3d name="C375-155X418" urn="urn:adsk.eagle:package:26195/1" type="box" library_version="1">
<description>CAPACITOR
grid 37.5 mm, outline 15.5 x 41.8 mm</description>
<packageinstances>
<packageinstance name="C375-155X418"/>
</packageinstances>
</package3d>
<package3d name="C075-063X106" urn="urn:adsk.eagle:package:26196/1" type="box" library_version="1">
<description>CAPACITOR
grid 7.5 mm, outline 6.3 x 10.6 mm</description>
<packageinstances>
<packageinstance name="C075-063X106"/>
</packageinstances>
</package3d>
<package3d name="C275-154X316" urn="urn:adsk.eagle:package:26197/1" type="box" library_version="1">
<description>CAPACITOR
grid 27.5 mm, outline 15.4 x 31.6 mm</description>
<packageinstances>
<packageinstance name="C275-154X316"/>
</packageinstances>
</package3d>
<package3d name="C275-173X316" urn="urn:adsk.eagle:package:26203/1" type="box" library_version="1">
<description>CAPACITOR
grid 27.5 mm, outline 17.3 x 31.6 mm</description>
<packageinstances>
<packageinstance name="C275-173X316"/>
</packageinstances>
</package3d>
<package3d name="C0402K" urn="urn:adsk.eagle:package:26199/1" type="box" library_version="1">
<description>Ceramic Chip Capacitor KEMET 0204 reflow solder
Metric Code Size 1005</description>
<packageinstances>
<packageinstance name="C0402K"/>
</packageinstances>
</package3d>
<package3d name="C0603K" urn="urn:adsk.eagle:package:26200/1" type="box" library_version="1">
<description>Ceramic Chip Capacitor KEMET 0603 reflow solder
Metric Code Size 1608</description>
<packageinstances>
<packageinstance name="C0603K"/>
</packageinstances>
</package3d>
<package3d name="C0805K" urn="urn:adsk.eagle:package:26201/1" type="box" library_version="1">
<description>Ceramic Chip Capacitor KEMET 0805 reflow solder
Metric Code Size 2012</description>
<packageinstances>
<packageinstance name="C0805K"/>
</packageinstances>
</package3d>
<package3d name="C1206K" urn="urn:adsk.eagle:package:26202/1" type="box" library_version="1">
<description>Ceramic Chip Capacitor KEMET 1206 reflow solder
Metric Code Size 3216</description>
<packageinstances>
<packageinstance name="C1206K"/>
</packageinstances>
</package3d>
<package3d name="C1210K" urn="urn:adsk.eagle:package:26204/1" type="box" library_version="1">
<description>Ceramic Chip Capacitor KEMET 1210 reflow solder
Metric Code Size 3225</description>
<packageinstances>
<packageinstance name="C1210K"/>
</packageinstances>
</package3d>
<package3d name="C1812K" urn="urn:adsk.eagle:package:26207/1" type="box" library_version="1">
<description>Ceramic Chip Capacitor KEMET 1812 reflow solder
Metric Code Size 4532</description>
<packageinstances>
<packageinstance name="C1812K"/>
</packageinstances>
</package3d>
<package3d name="C1825K" urn="urn:adsk.eagle:package:26205/1" type="box" library_version="1">
<description>Ceramic Chip Capacitor KEMET 1825 reflow solder
Metric Code Size 4564</description>
<packageinstances>
<packageinstance name="C1825K"/>
</packageinstances>
</package3d>
<package3d name="C2220K" urn="urn:adsk.eagle:package:26206/1" type="box" library_version="1">
<description>Ceramic Chip Capacitor KEMET 2220 reflow solderMetric Code Size 5650</description>
<packageinstances>
<packageinstance name="C2220K"/>
</packageinstances>
</package3d>
<package3d name="C2225K" urn="urn:adsk.eagle:package:26208/1" type="box" library_version="1">
<description>Ceramic Chip Capacitor KEMET 2225 reflow solderMetric Code Size 5664</description>
<packageinstances>
<packageinstance name="C2225K"/>
</packageinstances>
</package3d>
<package3d name="HPC0201" urn="urn:adsk.eagle:package:26213/1" type="box" library_version="1">
<description> 
Source: http://www.vishay.com/docs/10129/hpc0201a.pdf</description>
<packageinstances>
<packageinstance name="HPC0201"/>
</packageinstances>
</package3d>
<package3d name="C0201" urn="urn:adsk.eagle:package:26209/1" type="box" library_version="1">
<description>Source: http://www.avxcorp.com/docs/catalogs/cx5r.pdf</description>
<packageinstances>
<packageinstance name="C0201"/>
</packageinstances>
</package3d>
<package3d name="C1808" urn="urn:adsk.eagle:package:26212/1" type="box" library_version="1">
<description>CAPACITOR
Source: AVX .. aphvc.pdf</description>
<packageinstances>
<packageinstance name="C1808"/>
</packageinstances>
</package3d>
<package3d name="C3640" urn="urn:adsk.eagle:package:26210/1" type="box" library_version="1">
<description>CAPACITOR
Source: AVX .. aphvc.pdf</description>
<packageinstances>
<packageinstance name="C3640"/>
</packageinstances>
</package3d>
<package3d name="C01005" urn="urn:adsk.eagle:package:26211/1" type="box" library_version="1">
<description>CAPACITOR</description>
<packageinstances>
<packageinstance name="C01005"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="R-EU-1" urn="urn:adsk.eagle:symbol:25624/1" library_version="1">
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
<symbol name="C-EU-1" urn="urn:adsk.eagle:symbol:25782/1" library_version="1">
<wire x1="0" y1="0" x2="0" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-2.032" width="0.1524" layer="94"/>
<text x="1.524" y="0.381" size="1.778" layer="95">&gt;NAME</text>
<text x="1.524" y="-4.699" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-2.032" y1="-2.032" x2="2.032" y2="-1.524" layer="94"/>
<rectangle x1="-2.032" y1="-1.016" x2="2.032" y2="-0.508" layer="94"/>
<pin name="1" x="0" y="2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="R-EU_" urn="urn:adsk.eagle:component:26223/1" prefix="R" uservalue="yes" library_version="1">
<description>&lt;B&gt;RESISTOR&lt;/B&gt;, European symbol</description>
<gates>
<gate name="G$1" symbol="R-EU-1" x="0" y="0"/>
</gates>
<devices>
<device name="R0402" package="R0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26058/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R0603" package="R0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26057/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R0805" package="R0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26059/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R0805W" package="R0805W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26060/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R1206" package="R1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26062/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R1206W" package="R1206W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26064/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R1210" package="R1210">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26063/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R1210W" package="R1210W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26065/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R2010" package="R2010">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26066/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R2010W" package="R2010W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26068/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R2012" package="R2012">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26067/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R2012W" package="R2012W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26069/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R2512" package="R2512">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26070/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R2512W" package="R2512W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26072/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R3216" package="R3216">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26071/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R3216W" package="R3216W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26074/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R3225" package="R3225">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26073/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R3225W" package="R3225W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26075/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R5025" package="R5025">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26080/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R5025W" package="R5025W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26077/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R6332" package="R6332">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26076/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R6332W" package="R6332W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26078/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="M0805" package="M0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26079/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="M1206" package="M1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26088/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="M1406" package="M1406">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26081/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="M2012" package="M2012">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26082/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="M2309" package="M2309">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26085/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="M3216" package="M3216">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26083/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="M3516" package="M3516">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26086/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="M5923" package="M5923">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26084/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0204/5" package="0204/5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:25955/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0204/7" package="0204/7">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:25945/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0204/2V" package="0204V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:25948/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0207/10" package="0207/10">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:25939/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0207/12" package="0207/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:25938/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0207/15" package="0207/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:25947/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0207/2V" package="0207/2V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:25941/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0207/5V" package="0207/5V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:25944/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0207/7" package="0207/7">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:25942/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0309/10" package="0309/10">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26087/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0309/12" package="0309/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26089/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0309/V" package="0309V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26090/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0411/12" package="0411/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26091/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0411/15" package="0411/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26093/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0411/3V" package="0411V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26092/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0414/15" package="0414/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26094/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0414/5V" package="0414V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26095/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0617/17" package="0617/17">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26096/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0617/22" package="0617/22">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26103/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0617/5V" package="0617V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26097/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0922/22" package="0922/22">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26107/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0613/5V" package="P0613V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26106/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0613/15" package="P0613/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26098/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0817/22" package="P0817/22">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26099/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0817/7V" package="P0817V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26100/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="V234/12" package="V234/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26108/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="V235/17" package="V235/17">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26102/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="V526-0" package="V526-0">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26101/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MELF0102R" package="MINI_MELF-0102R">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26104/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MELF0102W" package="MINI_MELF-0102W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26105/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MELF0204R" package="MINI_MELF-0204R">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26109/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MELF0204W" package="MINI_MELF-0204W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26111/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MELF0207R" package="MINI_MELF-0207R">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26113/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MELF0207W" package="MINI_MELF-0207W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26112/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0922V" package="0922V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26110/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="RDH/15" package="RDH/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26114/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MELF0102AX" package="MINI_MELF-0102AX">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26115/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R0201" package="R0201">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26117/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="VTA52" package="VTA52">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26116/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="VTA53" package="VTA53">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26118/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="VTA54" package="VTA54">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26119/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="VTA55" package="VTA55">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26120/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="VTA56" package="VTA56">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26129/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="VMTA55" package="VMTA55">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26121/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="VMTB60" package="VMTB60">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26122/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R4527" package="R4527">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26124/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="WSC0001" package="WSC0001">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26123/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="WSC0002" package="WSC0002">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26125/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="WSC01/2" package="WSC01/2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26127/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="WSC2515" package="WSC2515">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26134/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="WSC4527" package="WSC4527">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26126/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="WSC6927" package="WSC6927">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26128/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="R1218" package="R1218">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26131/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1812X7R" package="1812X7R">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26130/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PRL1632" package="PRL1632">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26132/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="01005" package="R01005">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26133/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="C-EU" urn="urn:adsk.eagle:component:26226/1" prefix="C" uservalue="yes" library_version="1">
<description>&lt;B&gt;CAPACITOR&lt;/B&gt;, European symbol</description>
<gates>
<gate name="G$1" symbol="C-EU-1" x="0" y="0"/>
</gates>
<devices>
<device name="C0402" package="C0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26136/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C0504" package="C0504">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26135/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C0603" package="C0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26138/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C0805" package="C0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26137/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1206" package="C1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26140/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1210" package="C1210">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26139/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1310" package="C1310">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26142/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1608" package="C1608">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26141/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1812" package="C1812">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26143/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1825" package="C1825">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26144/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C2012" package="C2012">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26145/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C3216" package="C3216">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26146/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C3225" package="C3225">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26147/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C4532" package="C4532">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26148/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C4564" package="C4564">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26155/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="025-024X044" package="C025-024X044">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26149/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="025-025X050" package="C025-025X050">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26151/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="025-030X050" package="C025-030X050">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26154/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="025-040X050" package="C025-040X050">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26150/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="025-050X050" package="C025-050X050">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26152/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="025-060X050" package="C025-060X050">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26153/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C025_050-024X070" package="C025_050-024X070">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26157/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="025_050-025X075" package="C025_050-025X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26158/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="025_050-035X075" package="C025_050-035X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26156/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="025_050-045X075" package="C025_050-045X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26159/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="025_050-055X075" package="C025_050-055X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26163/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="050-024X044" package="C050-024X044">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26162/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="050-025X075" package="C050-025X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26160/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="050-045X075" package="C050-045X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26165/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="050-030X075" package="C050-030X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26161/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="050-050X075" package="C050-050X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26164/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="050-055X075" package="C050-055X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26166/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="050-075X075" package="C050-075X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26182/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="050H075X075" package="C050H075X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26167/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="075-032X103" package="C075-032X103">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26168/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="075-042X103" package="C075-042X103">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26170/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="075-052X106" package="C075-052X106">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26169/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="102-043X133" package="C102-043X133">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26171/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="102-054X133" package="C102-054X133">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26172/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="102-064X133" package="C102-064X133">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26173/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="102_152-062X184" package="C102_152-062X184">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26189/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="150-054X183" package="C150-054X183">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26175/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="150-064X183" package="C150-064X183">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26178/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="150-072X183" package="C150-072X183">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26174/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="150-084X183" package="C150-084X183">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26176/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="150-091X182" package="C150-091X182">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26177/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="225-062X268" package="C225-062X268">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26179/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="225-074X268" package="C225-074X268">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26180/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="225-087X268" package="C225-087X268">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26181/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="225-108X268" package="C225-108X268">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26184/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="225-113X268" package="C225-113X268">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26183/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="275-093X316" package="C275-093X316">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26185/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="275-113X316" package="C275-113X316">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26186/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="275-134X316" package="C275-134X316">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26187/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="275-205X316" package="C275-205X316">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26188/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="325-137X374" package="C325-137X374">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26190/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="325-162X374" package="C325-162X374">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26198/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="325-182X374" package="C325-182X374">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26191/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="375-192X418" package="C375-192X418">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26192/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="375-203X418" package="C375-203X418">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26194/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="050-035X075" package="C050-035X075">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26193/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="375-155X418" package="C375-155X418">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26195/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="075-063X106" package="C075-063X106">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26196/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="275-154X316" package="C275-154X316">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26197/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="275-173X316" package="C275-173X316">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26203/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C0402K" package="C0402K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26199/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C0603K" package="C0603K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26200/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C0805K" package="C0805K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26201/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1206K" package="C1206K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26202/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1210K" package="C1210K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26204/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1812K" package="C1812K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26207/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1825K" package="C1825K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26205/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C2220K" package="C2220K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26206/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C2225K" package="C2225K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26208/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="HPC0201" package="HPC0201">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26213/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C0201" package="C0201">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26209/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C1808" package="C1808">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26212/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C3640" package="C3640">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26210/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="01005" package="C01005">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26211/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="coils">
<packages>
<package name="FAT_SQUARE">
<wire x1="-0.380790625" y1="0.35928125" x2="-5.755790625" y2="0.35928125" width="0.125" layer="1"/>
<wire x1="-0.630790625" y1="0.60928125" x2="-5.505790625" y2="0.60928125" width="0.125" layer="1"/>
<wire x1="-0.130790625" y1="0.10928125" x2="-6.005790625" y2="0.10928125" width="0.125" layer="1"/>
<wire x1="-6.005790625" y1="5.98428125" x2="-0.380790625" y2="5.98428125" width="0.125" layer="1"/>
<wire x1="-5.755790625" y1="0.35928125" x2="-5.755790625" y2="5.73428125" width="0.125" layer="1"/>
<wire x1="-5.755790625" y1="5.73428125" x2="-0.630790625" y2="5.73428125" width="0.125" layer="1"/>
<wire x1="-0.630790625" y1="5.73428125" x2="-0.630790625" y2="0.60928125" width="0.125" layer="1"/>
<wire x1="-5.505790625" y1="0.60928125" x2="-5.505790625" y2="5.48428125" width="0.125" layer="1"/>
<wire x1="-5.505790625" y1="5.48428125" x2="-0.880790625" y2="5.48428125" width="0.125" layer="1"/>
<wire x1="-0.880790625" y1="5.48428125" x2="-0.880790625" y2="0.85928125" width="0.125" layer="1"/>
<wire x1="-0.880790625" y1="0.85928125" x2="-5.255790625" y2="0.85928125" width="0.125" layer="1"/>
<wire x1="-5.255790625" y1="5.23428125" x2="-1.130790625" y2="5.23428125" width="0.125" layer="1"/>
<wire x1="-1.130790625" y1="5.23428125" x2="-1.130790625" y2="1.10928125" width="0.125" layer="1"/>
<wire x1="-1.130790625" y1="1.10928125" x2="-5.005790625" y2="1.10928125" width="0.125" layer="1"/>
<wire x1="-5.005790625" y1="1.10928125" x2="-5.005790625" y2="4.98428125" width="0.125" layer="1"/>
<wire x1="-5.005790625" y1="4.98428125" x2="-1.380790625" y2="4.98428125" width="0.125" layer="1"/>
<wire x1="-1.380790625" y1="1.35928125" x2="-4.755790625" y2="1.35928125" width="0.125" layer="1"/>
<wire x1="-4.755790625" y1="1.35928125" x2="-4.755790625" y2="4.73428125" width="0.125" layer="1"/>
<wire x1="-4.755790625" y1="4.73428125" x2="-1.630790625" y2="4.73428125" width="0.125" layer="1"/>
<wire x1="-1.630790625" y1="4.73428125" x2="-1.630790625" y2="1.60928125" width="0.125" layer="1"/>
<wire x1="-1.630790625" y1="1.60928125" x2="-4.505790625" y2="1.60928125" width="0.125" layer="1"/>
<wire x1="-4.505790625" y1="4.48428125" x2="-1.880790625" y2="4.48428125" width="0.125" layer="1"/>
<wire x1="-1.880790625" y1="4.48428125" x2="-1.880790625" y2="1.85928125" width="0.125" layer="1"/>
<wire x1="-1.880790625" y1="1.85928125" x2="-4.255790625" y2="1.85928125" width="0.125" layer="1"/>
<wire x1="-4.255790625" y1="4.23428125" x2="-2.130790625" y2="4.23428125" width="0.125" layer="1"/>
<wire x1="-2.130790625" y1="2.10928125" x2="-4.005790625" y2="2.10928125" width="0.125" layer="1"/>
<wire x1="-4.005790625" y1="2.10928125" x2="-4.005790625" y2="3.98428125" width="0.125" layer="1"/>
<wire x1="-4.005790625" y1="3.98428125" x2="-2.380790625" y2="3.98428125" width="0.125" layer="1"/>
<wire x1="-2.380790625" y1="3.98428125" x2="-2.380790625" y2="2.35928125" width="0.125" layer="1"/>
<wire x1="-2.380790625" y1="2.35928125" x2="-3.755790625" y2="2.35928125" width="0.125" layer="1"/>
<wire x1="-3.755790625" y1="2.35928125" x2="-3.755790625" y2="3.73428125" width="0.125" layer="1"/>
<wire x1="-3.755790625" y1="3.73428125" x2="-2.630790625" y2="3.73428125" width="0.125" layer="1"/>
<wire x1="-2.630790625" y1="3.73428125" x2="-2.900790625" y2="3.35928125" width="0.125" layer="1"/>
<wire x1="-6.255790625" y1="6.23428125" x2="-0.130790625" y2="6.23428125" width="0.125" layer="1"/>
<wire x1="-6.255790625" y1="6.23428125" x2="-6.255790625" y2="3.17178125" width="0.125" layer="1"/>
<wire x1="-0.130790625" y1="6.23428125" x2="-0.130790625" y2="0.10928125" width="0.125" layer="1"/>
<wire x1="-6.005790625" y1="0.10928125" x2="-6.005790625" y2="5.98428125" width="0.125" layer="1"/>
<wire x1="-0.380790625" y1="5.98428125" x2="-0.380790625" y2="0.35928125" width="0.125" layer="1"/>
<wire x1="-5.255790625" y1="0.85928125" x2="-5.255790625" y2="5.23428125" width="0.125" layer="1"/>
<wire x1="-1.380790625" y1="4.98428125" x2="-1.380790625" y2="1.35928125" width="0.125" layer="1"/>
<wire x1="-4.505790625" y1="1.60928125" x2="-4.505790625" y2="4.48428125" width="0.125" layer="1"/>
<wire x1="-4.255790625" y1="1.85928125" x2="-4.255790625" y2="4.23428125" width="0.125" layer="1"/>
<wire x1="-2.130790625" y1="4.23428125" x2="-2.130790625" y2="2.10928125" width="0.125" layer="1"/>
<wire x1="-0.380790625" y1="0.35928125" x2="-5.755790625" y2="0.35928125" width="0.125" layer="2"/>
<wire x1="-0.630790625" y1="0.60928125" x2="-5.505790625" y2="0.60928125" width="0.125" layer="2"/>
<wire x1="-0.130790625" y1="0.10928125" x2="-6.005790625" y2="0.10928125" width="0.125" layer="2"/>
<wire x1="-6.005790625" y1="5.98428125" x2="-0.380790625" y2="5.98428125" width="0.125" layer="2"/>
<wire x1="-5.755790625" y1="0.35928125" x2="-5.755790625" y2="5.73428125" width="0.125" layer="2"/>
<wire x1="-5.755790625" y1="5.73428125" x2="-0.630790625" y2="5.73428125" width="0.125" layer="2"/>
<wire x1="-0.630790625" y1="5.73428125" x2="-0.630790625" y2="0.60928125" width="0.125" layer="2"/>
<wire x1="-5.505790625" y1="0.60928125" x2="-5.505790625" y2="5.48428125" width="0.125" layer="2"/>
<wire x1="-5.505790625" y1="5.48428125" x2="-0.880790625" y2="5.48428125" width="0.125" layer="2"/>
<wire x1="-0.880790625" y1="5.48428125" x2="-0.880790625" y2="0.85928125" width="0.125" layer="2"/>
<wire x1="-0.880790625" y1="0.85928125" x2="-5.255790625" y2="0.85928125" width="0.125" layer="2"/>
<wire x1="-5.255790625" y1="5.23428125" x2="-1.130790625" y2="5.23428125" width="0.125" layer="2"/>
<wire x1="-1.130790625" y1="5.23428125" x2="-1.130790625" y2="1.10928125" width="0.125" layer="2"/>
<wire x1="-1.130790625" y1="1.10928125" x2="-5.005790625" y2="1.10928125" width="0.125" layer="2"/>
<wire x1="-5.005790625" y1="1.10928125" x2="-5.005790625" y2="4.98428125" width="0.125" layer="2"/>
<wire x1="-5.005790625" y1="4.98428125" x2="-1.380790625" y2="4.98428125" width="0.125" layer="2"/>
<wire x1="-1.380790625" y1="1.35928125" x2="-4.755790625" y2="1.35928125" width="0.125" layer="2"/>
<wire x1="-4.755790625" y1="1.35928125" x2="-4.755790625" y2="4.73428125" width="0.125" layer="2"/>
<wire x1="-4.755790625" y1="4.73428125" x2="-1.630790625" y2="4.73428125" width="0.125" layer="2"/>
<wire x1="-1.630790625" y1="4.73428125" x2="-1.630790625" y2="1.60928125" width="0.125" layer="2"/>
<wire x1="-1.630790625" y1="1.60928125" x2="-4.505790625" y2="1.60928125" width="0.125" layer="2"/>
<wire x1="-4.505790625" y1="4.48428125" x2="-1.880790625" y2="4.48428125" width="0.125" layer="2"/>
<wire x1="-1.880790625" y1="4.48428125" x2="-1.880790625" y2="1.85928125" width="0.125" layer="2"/>
<wire x1="-1.880790625" y1="1.85928125" x2="-4.255790625" y2="1.85928125" width="0.125" layer="2"/>
<wire x1="-4.255790625" y1="4.23428125" x2="-2.130790625" y2="4.23428125" width="0.125" layer="2"/>
<wire x1="-2.130790625" y1="2.10928125" x2="-4.005790625" y2="2.10928125" width="0.125" layer="2"/>
<wire x1="-4.005790625" y1="2.10928125" x2="-4.005790625" y2="3.98428125" width="0.125" layer="2"/>
<wire x1="-4.005790625" y1="3.98428125" x2="-2.380790625" y2="3.98428125" width="0.125" layer="2"/>
<wire x1="-2.380790625" y1="3.98428125" x2="-2.380790625" y2="2.35928125" width="0.125" layer="2"/>
<wire x1="-2.380790625" y1="2.35928125" x2="-3.755790625" y2="2.35928125" width="0.125" layer="2"/>
<wire x1="-3.755790625" y1="2.35928125" x2="-3.755790625" y2="3.73428125" width="0.125" layer="2"/>
<wire x1="-3.755790625" y1="3.73428125" x2="-2.630790625" y2="3.73428125" width="0.125" layer="2"/>
<wire x1="-2.630790625" y1="3.73428125" x2="-2.900790625" y2="3.35928125" width="0.125" layer="2"/>
<wire x1="-6.255790625" y1="6.23428125" x2="-0.130790625" y2="6.23428125" width="0.125" layer="2"/>
<wire x1="-6.255790625" y1="6.23428125" x2="-6.255790625" y2="2.30478125" width="0.125" layer="2"/>
<wire x1="-0.130790625" y1="6.23428125" x2="-0.130790625" y2="0.10928125" width="0.125" layer="2"/>
<wire x1="-6.005790625" y1="0.10928125" x2="-6.005790625" y2="5.98428125" width="0.125" layer="2"/>
<wire x1="-0.380790625" y1="5.98428125" x2="-0.380790625" y2="0.35928125" width="0.125" layer="2"/>
<wire x1="-5.255790625" y1="0.85928125" x2="-5.255790625" y2="5.23428125" width="0.125" layer="2"/>
<wire x1="-1.380790625" y1="4.98428125" x2="-1.380790625" y2="1.35928125" width="0.125" layer="2"/>
<wire x1="-4.505790625" y1="1.60928125" x2="-4.505790625" y2="4.48428125" width="0.125" layer="2"/>
<wire x1="-4.255790625" y1="1.85928125" x2="-4.255790625" y2="4.23428125" width="0.125" layer="2"/>
<wire x1="-2.130790625" y1="4.23428125" x2="-2.130790625" y2="2.10928125" width="0.125" layer="2"/>
<wire x1="-3.76146875" y1="2.61446875" x2="-3.26646875" y2="2.75446875" width="0.125" layer="15"/>
<wire x1="-2.38646875" y1="3.98946875" x2="-3.76146875" y2="3.98946875" width="0.125" layer="15"/>
<wire x1="-2.38646875" y1="2.36446875" x2="-2.38646875" y2="3.98946875" width="0.125" layer="15"/>
<wire x1="-4.01146875" y1="2.36446875" x2="-2.38646875" y2="2.36446875" width="0.125" layer="15"/>
<wire x1="-4.01146875" y1="4.23946875" x2="-4.01146875" y2="2.36446875" width="0.125" layer="15"/>
<wire x1="-2.13646875" y1="4.23946875" x2="-4.01146875" y2="4.23946875" width="0.125" layer="15"/>
<wire x1="-4.26146875" y1="2.11446875" x2="-2.13646875" y2="2.11446875" width="0.125" layer="15"/>
<wire x1="-1.88646875" y1="4.48946875" x2="-4.26146875" y2="4.48946875" width="0.125" layer="15"/>
<wire x1="-1.88646875" y1="1.86446875" x2="-1.88646875" y2="4.48946875" width="0.125" layer="15"/>
<wire x1="-4.51146875" y1="1.86446875" x2="-1.88646875" y2="1.86446875" width="0.125" layer="15"/>
<wire x1="-1.63646875" y1="4.73946875" x2="-4.51146875" y2="4.73946875" width="0.125" layer="15"/>
<wire x1="-1.63646875" y1="1.61446875" x2="-1.63646875" y2="4.73946875" width="0.125" layer="15"/>
<wire x1="-4.76146875" y1="1.61446875" x2="-1.63646875" y2="1.61446875" width="0.125" layer="15"/>
<wire x1="-4.76146875" y1="4.98946875" x2="-4.76146875" y2="1.61446875" width="0.125" layer="15"/>
<wire x1="-1.38646875" y1="4.98946875" x2="-4.76146875" y2="4.98946875" width="0.125" layer="15"/>
<wire x1="-5.01146875" y1="1.36446875" x2="-1.38646875" y2="1.36446875" width="0.125" layer="15"/>
<wire x1="-5.01146875" y1="5.23946875" x2="-5.01146875" y2="1.36446875" width="0.125" layer="15"/>
<wire x1="-1.13646875" y1="5.23946875" x2="-5.01146875" y2="5.23946875" width="0.125" layer="15"/>
<wire x1="-1.13646875" y1="1.11446875" x2="-1.13646875" y2="5.23946875" width="0.125" layer="15"/>
<wire x1="-5.26146875" y1="1.11446875" x2="-1.13646875" y2="1.11446875" width="0.125" layer="15"/>
<wire x1="-0.88646875" y1="5.48946875" x2="-5.26146875" y2="5.48946875" width="0.125" layer="15"/>
<wire x1="-0.88646875" y1="0.86446875" x2="-0.88646875" y2="5.48946875" width="0.125" layer="15"/>
<wire x1="-5.51146875" y1="0.86446875" x2="-0.88646875" y2="0.86446875" width="0.125" layer="15"/>
<wire x1="-5.51146875" y1="5.73946875" x2="-5.51146875" y2="0.86446875" width="0.125" layer="15"/>
<wire x1="-0.63646875" y1="5.73946875" x2="-5.51146875" y2="5.73946875" width="0.125" layer="15"/>
<wire x1="-0.63646875" y1="0.61446875" x2="-0.63646875" y2="5.73946875" width="0.125" layer="15"/>
<wire x1="-5.76146875" y1="0.61446875" x2="-0.63646875" y2="0.61446875" width="0.125" layer="15"/>
<wire x1="-5.76146875" y1="5.98946875" x2="-5.76146875" y2="0.61446875" width="0.125" layer="15"/>
<wire x1="-0.38646875" y1="5.98946875" x2="-5.76146875" y2="5.98946875" width="0.125" layer="15"/>
<wire x1="-6.01146875" y1="0.36446875" x2="-0.38646875" y2="0.36446875" width="0.125" layer="15"/>
<wire x1="-0.13646875" y1="6.23946875" x2="-6.01146875" y2="6.23946875" width="0.125" layer="15"/>
<wire x1="-0.13646875" y1="0.11446875" x2="-0.13646875" y2="6.23946875" width="0.125" layer="15"/>
<wire x1="-6.26146875" y1="0.11446875" x2="-0.13646875" y2="0.11446875" width="0.125" layer="15"/>
<wire x1="-3.76146875" y1="3.98946875" x2="-3.76146875" y2="2.61446875" width="0.125" layer="15"/>
<wire x1="-2.13646875" y1="2.11446875" x2="-2.13646875" y2="4.23946875" width="0.125" layer="15"/>
<wire x1="-4.26146875" y1="4.48946875" x2="-4.26146875" y2="2.11446875" width="0.125" layer="15"/>
<wire x1="-4.51146875" y1="4.73946875" x2="-4.51146875" y2="1.86446875" width="0.125" layer="15"/>
<wire x1="-1.38646875" y1="1.36446875" x2="-1.38646875" y2="4.98946875" width="0.125" layer="15"/>
<wire x1="-5.26146875" y1="5.48946875" x2="-5.26146875" y2="1.11446875" width="0.125" layer="15"/>
<wire x1="-0.38646875" y1="0.36446875" x2="-0.38646875" y2="5.98946875" width="0.125" layer="15"/>
<wire x1="-6.01146875" y1="6.23946875" x2="-6.01146875" y2="0.36446875" width="0.125" layer="15"/>
<wire x1="-6.26146875" y1="0.11446875" x2="-6.26146875" y2="3.17696875" width="0.125" layer="15"/>
<pad name="TOP_INT1_COIL0" x="-2.905" y="3.36" drill="0.2" diameter="0.3" rot="R90"/>
<pad name="INT1_INT2_COIL0" x="-6.396" y="2.299" drill="0.2" diameter="0.3"/>
<pad name="EXITCOIL0" x="-3.249" y="2.762" drill="0.2" diameter="0.3"/>
<wire x1="-6.38" y1="2.31" x2="-6.26" y2="2.31" width="0.125" layer="2"/>
<wire x1="-6.26" y1="2.31" x2="-6.26" y2="2.7" width="0.125" layer="2"/>
<wire x1="-6.39" y1="2.3" x2="-6.26" y2="2.22" width="0.125" layer="15"/>
<wire x1="-6.26" y1="2.22" x2="-6.26" y2="2.1" width="0.125" layer="15"/>
<pad name="INCOIL0" x="-6.73" y="3.16" drill="0.2" diameter="0.3"/>
<wire x1="-6.74" y1="3.16" x2="-6.37" y2="3.16" width="0.125" layer="1"/>
<wire x1="-6.37" y1="3.16" x2="-6.26" y2="3.27" width="0.125" layer="1"/>
<wire x1="-0.380790625" y1="-6.02071875" x2="-5.755790625" y2="-6.02071875" width="0.125" layer="1"/>
<wire x1="-0.630790625" y1="-5.77071875" x2="-5.505790625" y2="-5.77071875" width="0.125" layer="1"/>
<wire x1="-0.130790625" y1="-6.27071875" x2="-6.005790625" y2="-6.27071875" width="0.125" layer="1"/>
<wire x1="-6.005790625" y1="-0.39571875" x2="-0.380790625" y2="-0.39571875" width="0.125" layer="1"/>
<wire x1="-5.755790625" y1="-6.02071875" x2="-5.755790625" y2="-0.64571875" width="0.125" layer="1"/>
<wire x1="-5.755790625" y1="-0.64571875" x2="-0.630790625" y2="-0.64571875" width="0.125" layer="1"/>
<wire x1="-0.630790625" y1="-0.64571875" x2="-0.630790625" y2="-5.77071875" width="0.125" layer="1"/>
<wire x1="-5.505790625" y1="-5.77071875" x2="-5.505790625" y2="-0.89571875" width="0.125" layer="1"/>
<wire x1="-5.505790625" y1="-0.89571875" x2="-0.880790625" y2="-0.89571875" width="0.125" layer="1"/>
<wire x1="-0.880790625" y1="-0.89571875" x2="-0.880790625" y2="-5.52071875" width="0.125" layer="1"/>
<wire x1="-0.880790625" y1="-5.52071875" x2="-5.255790625" y2="-5.52071875" width="0.125" layer="1"/>
<wire x1="-5.255790625" y1="-1.14571875" x2="-1.130790625" y2="-1.14571875" width="0.125" layer="1"/>
<wire x1="-1.130790625" y1="-1.14571875" x2="-1.130790625" y2="-5.27071875" width="0.125" layer="1"/>
<wire x1="-1.130790625" y1="-5.27071875" x2="-5.005790625" y2="-5.27071875" width="0.125" layer="1"/>
<wire x1="-5.005790625" y1="-5.27071875" x2="-5.005790625" y2="-1.39571875" width="0.125" layer="1"/>
<wire x1="-5.005790625" y1="-1.39571875" x2="-1.380790625" y2="-1.39571875" width="0.125" layer="1"/>
<wire x1="-1.380790625" y1="-5.02071875" x2="-4.755790625" y2="-5.02071875" width="0.125" layer="1"/>
<wire x1="-4.755790625" y1="-5.02071875" x2="-4.755790625" y2="-1.64571875" width="0.125" layer="1"/>
<wire x1="-4.755790625" y1="-1.64571875" x2="-1.630790625" y2="-1.64571875" width="0.125" layer="1"/>
<wire x1="-1.630790625" y1="-1.64571875" x2="-1.630790625" y2="-4.77071875" width="0.125" layer="1"/>
<wire x1="-1.630790625" y1="-4.77071875" x2="-4.505790625" y2="-4.77071875" width="0.125" layer="1"/>
<wire x1="-4.505790625" y1="-1.89571875" x2="-1.880790625" y2="-1.89571875" width="0.125" layer="1"/>
<wire x1="-1.880790625" y1="-1.89571875" x2="-1.880790625" y2="-4.52071875" width="0.125" layer="1"/>
<wire x1="-1.880790625" y1="-4.52071875" x2="-4.255790625" y2="-4.52071875" width="0.125" layer="1"/>
<wire x1="-4.255790625" y1="-2.14571875" x2="-2.130790625" y2="-2.14571875" width="0.125" layer="1"/>
<wire x1="-2.130790625" y1="-4.27071875" x2="-4.005790625" y2="-4.27071875" width="0.125" layer="1"/>
<wire x1="-4.005790625" y1="-4.27071875" x2="-4.005790625" y2="-2.39571875" width="0.125" layer="1"/>
<wire x1="-4.005790625" y1="-2.39571875" x2="-2.380790625" y2="-2.39571875" width="0.125" layer="1"/>
<wire x1="-2.380790625" y1="-2.39571875" x2="-2.380790625" y2="-4.02071875" width="0.125" layer="1"/>
<wire x1="-2.380790625" y1="-4.02071875" x2="-3.755790625" y2="-4.02071875" width="0.125" layer="1"/>
<wire x1="-3.755790625" y1="-4.02071875" x2="-3.755790625" y2="-2.64571875" width="0.125" layer="1"/>
<wire x1="-3.755790625" y1="-2.64571875" x2="-2.630790625" y2="-2.64571875" width="0.125" layer="1"/>
<wire x1="-2.630790625" y1="-2.64571875" x2="-2.900790625" y2="-3.02071875" width="0.125" layer="1"/>
<wire x1="-6.255790625" y1="-0.14571875" x2="-0.130790625" y2="-0.14571875" width="0.125" layer="1"/>
<wire x1="-6.255790625" y1="-0.14571875" x2="-6.255790625" y2="-3.20821875" width="0.125" layer="1"/>
<wire x1="-0.130790625" y1="-0.14571875" x2="-0.130790625" y2="-6.27071875" width="0.125" layer="1"/>
<wire x1="-6.005790625" y1="-6.27071875" x2="-6.005790625" y2="-0.39571875" width="0.125" layer="1"/>
<wire x1="-0.380790625" y1="-0.39571875" x2="-0.380790625" y2="-6.02071875" width="0.125" layer="1"/>
<wire x1="-5.255790625" y1="-5.52071875" x2="-5.255790625" y2="-1.14571875" width="0.125" layer="1"/>
<wire x1="-1.380790625" y1="-1.39571875" x2="-1.380790625" y2="-5.02071875" width="0.125" layer="1"/>
<wire x1="-4.505790625" y1="-4.77071875" x2="-4.505790625" y2="-1.89571875" width="0.125" layer="1"/>
<wire x1="-4.255790625" y1="-4.52071875" x2="-4.255790625" y2="-2.14571875" width="0.125" layer="1"/>
<wire x1="-2.130790625" y1="-2.14571875" x2="-2.130790625" y2="-4.27071875" width="0.125" layer="1"/>
<wire x1="-0.380790625" y1="-6.02071875" x2="-5.755790625" y2="-6.02071875" width="0.125" layer="2"/>
<wire x1="-0.630790625" y1="-5.77071875" x2="-5.505790625" y2="-5.77071875" width="0.125" layer="2"/>
<wire x1="-0.130790625" y1="-6.27071875" x2="-6.005790625" y2="-6.27071875" width="0.125" layer="2"/>
<wire x1="-6.005790625" y1="-0.39571875" x2="-0.380790625" y2="-0.39571875" width="0.125" layer="2"/>
<wire x1="-5.755790625" y1="-6.02071875" x2="-5.755790625" y2="-0.64571875" width="0.125" layer="2"/>
<wire x1="-5.755790625" y1="-0.64571875" x2="-0.630790625" y2="-0.64571875" width="0.125" layer="2"/>
<wire x1="-0.630790625" y1="-0.64571875" x2="-0.630790625" y2="-5.77071875" width="0.125" layer="2"/>
<wire x1="-5.505790625" y1="-5.77071875" x2="-5.505790625" y2="-0.89571875" width="0.125" layer="2"/>
<wire x1="-5.505790625" y1="-0.89571875" x2="-0.880790625" y2="-0.89571875" width="0.125" layer="2"/>
<wire x1="-0.880790625" y1="-0.89571875" x2="-0.880790625" y2="-5.52071875" width="0.125" layer="2"/>
<wire x1="-0.880790625" y1="-5.52071875" x2="-5.255790625" y2="-5.52071875" width="0.125" layer="2"/>
<wire x1="-5.255790625" y1="-1.14571875" x2="-1.130790625" y2="-1.14571875" width="0.125" layer="2"/>
<wire x1="-1.130790625" y1="-1.14571875" x2="-1.130790625" y2="-5.27071875" width="0.125" layer="2"/>
<wire x1="-1.130790625" y1="-5.27071875" x2="-5.005790625" y2="-5.27071875" width="0.125" layer="2"/>
<wire x1="-5.005790625" y1="-5.27071875" x2="-5.005790625" y2="-1.39571875" width="0.125" layer="2"/>
<wire x1="-5.005790625" y1="-1.39571875" x2="-1.380790625" y2="-1.39571875" width="0.125" layer="2"/>
<wire x1="-1.380790625" y1="-5.02071875" x2="-4.755790625" y2="-5.02071875" width="0.125" layer="2"/>
<wire x1="-4.755790625" y1="-5.02071875" x2="-4.755790625" y2="-1.64571875" width="0.125" layer="2"/>
<wire x1="-4.755790625" y1="-1.64571875" x2="-1.630790625" y2="-1.64571875" width="0.125" layer="2"/>
<wire x1="-1.630790625" y1="-1.64571875" x2="-1.630790625" y2="-4.77071875" width="0.125" layer="2"/>
<wire x1="-1.630790625" y1="-4.77071875" x2="-4.505790625" y2="-4.77071875" width="0.125" layer="2"/>
<wire x1="-4.505790625" y1="-1.89571875" x2="-1.880790625" y2="-1.89571875" width="0.125" layer="2"/>
<wire x1="-1.880790625" y1="-1.89571875" x2="-1.880790625" y2="-4.52071875" width="0.125" layer="2"/>
<wire x1="-1.880790625" y1="-4.52071875" x2="-4.255790625" y2="-4.52071875" width="0.125" layer="2"/>
<wire x1="-4.255790625" y1="-2.14571875" x2="-2.130790625" y2="-2.14571875" width="0.125" layer="2"/>
<wire x1="-2.130790625" y1="-4.27071875" x2="-4.005790625" y2="-4.27071875" width="0.125" layer="2"/>
<wire x1="-4.005790625" y1="-4.27071875" x2="-4.005790625" y2="-2.39571875" width="0.125" layer="2"/>
<wire x1="-4.005790625" y1="-2.39571875" x2="-2.380790625" y2="-2.39571875" width="0.125" layer="2"/>
<wire x1="-2.380790625" y1="-2.39571875" x2="-2.380790625" y2="-4.02071875" width="0.125" layer="2"/>
<wire x1="-2.380790625" y1="-4.02071875" x2="-3.755790625" y2="-4.02071875" width="0.125" layer="2"/>
<wire x1="-3.755790625" y1="-4.02071875" x2="-3.755790625" y2="-2.64571875" width="0.125" layer="2"/>
<wire x1="-3.755790625" y1="-2.64571875" x2="-2.630790625" y2="-2.64571875" width="0.125" layer="2"/>
<wire x1="-2.630790625" y1="-2.64571875" x2="-2.900790625" y2="-3.02071875" width="0.125" layer="2"/>
<wire x1="-6.255790625" y1="-0.14571875" x2="-0.130790625" y2="-0.14571875" width="0.125" layer="2"/>
<wire x1="-6.255790625" y1="-0.14571875" x2="-6.255790625" y2="-4.07521875" width="0.125" layer="2"/>
<wire x1="-0.130790625" y1="-0.14571875" x2="-0.130790625" y2="-6.27071875" width="0.125" layer="2"/>
<wire x1="-6.005790625" y1="-6.27071875" x2="-6.005790625" y2="-0.39571875" width="0.125" layer="2"/>
<wire x1="-0.380790625" y1="-0.39571875" x2="-0.380790625" y2="-6.02071875" width="0.125" layer="2"/>
<wire x1="-5.255790625" y1="-5.52071875" x2="-5.255790625" y2="-1.14571875" width="0.125" layer="2"/>
<wire x1="-1.380790625" y1="-1.39571875" x2="-1.380790625" y2="-5.02071875" width="0.125" layer="2"/>
<wire x1="-4.505790625" y1="-4.77071875" x2="-4.505790625" y2="-1.89571875" width="0.125" layer="2"/>
<wire x1="-4.255790625" y1="-4.52071875" x2="-4.255790625" y2="-2.14571875" width="0.125" layer="2"/>
<wire x1="-2.130790625" y1="-2.14571875" x2="-2.130790625" y2="-4.27071875" width="0.125" layer="2"/>
<wire x1="-3.76146875" y1="-3.76553125" x2="-3.26646875" y2="-3.62553125" width="0.125" layer="15"/>
<wire x1="-2.38646875" y1="-2.39053125" x2="-3.76146875" y2="-2.39053125" width="0.125" layer="15"/>
<wire x1="-2.38646875" y1="-4.01553125" x2="-2.38646875" y2="-2.39053125" width="0.125" layer="15"/>
<wire x1="-4.01146875" y1="-4.01553125" x2="-2.38646875" y2="-4.01553125" width="0.125" layer="15"/>
<wire x1="-4.01146875" y1="-2.14053125" x2="-4.01146875" y2="-4.01553125" width="0.125" layer="15"/>
<wire x1="-2.13646875" y1="-2.14053125" x2="-4.01146875" y2="-2.14053125" width="0.125" layer="15"/>
<wire x1="-4.26146875" y1="-4.26553125" x2="-2.13646875" y2="-4.26553125" width="0.125" layer="15"/>
<wire x1="-1.88646875" y1="-1.89053125" x2="-4.26146875" y2="-1.89053125" width="0.125" layer="15"/>
<wire x1="-1.88646875" y1="-4.51553125" x2="-1.88646875" y2="-1.89053125" width="0.125" layer="15"/>
<wire x1="-4.51146875" y1="-4.51553125" x2="-1.88646875" y2="-4.51553125" width="0.125" layer="15"/>
<wire x1="-1.63646875" y1="-1.64053125" x2="-4.51146875" y2="-1.64053125" width="0.125" layer="15"/>
<wire x1="-1.63646875" y1="-4.76553125" x2="-1.63646875" y2="-1.64053125" width="0.125" layer="15"/>
<wire x1="-4.76146875" y1="-4.76553125" x2="-1.63646875" y2="-4.76553125" width="0.125" layer="15"/>
<wire x1="-4.76146875" y1="-1.39053125" x2="-4.76146875" y2="-4.76553125" width="0.125" layer="15"/>
<wire x1="-1.38646875" y1="-1.39053125" x2="-4.76146875" y2="-1.39053125" width="0.125" layer="15"/>
<wire x1="-5.01146875" y1="-5.01553125" x2="-1.38646875" y2="-5.01553125" width="0.125" layer="15"/>
<wire x1="-5.01146875" y1="-1.14053125" x2="-5.01146875" y2="-5.01553125" width="0.125" layer="15"/>
<wire x1="-1.13646875" y1="-1.14053125" x2="-5.01146875" y2="-1.14053125" width="0.125" layer="15"/>
<wire x1="-1.13646875" y1="-5.26553125" x2="-1.13646875" y2="-1.14053125" width="0.125" layer="15"/>
<wire x1="-5.26146875" y1="-5.26553125" x2="-1.13646875" y2="-5.26553125" width="0.125" layer="15"/>
<wire x1="-0.88646875" y1="-0.89053125" x2="-5.26146875" y2="-0.89053125" width="0.125" layer="15"/>
<wire x1="-0.88646875" y1="-5.51553125" x2="-0.88646875" y2="-0.89053125" width="0.125" layer="15"/>
<wire x1="-5.51146875" y1="-5.51553125" x2="-0.88646875" y2="-5.51553125" width="0.125" layer="15"/>
<wire x1="-5.51146875" y1="-0.64053125" x2="-5.51146875" y2="-5.51553125" width="0.125" layer="15"/>
<wire x1="-0.63646875" y1="-0.64053125" x2="-5.51146875" y2="-0.64053125" width="0.125" layer="15"/>
<wire x1="-0.63646875" y1="-5.76553125" x2="-0.63646875" y2="-0.64053125" width="0.125" layer="15"/>
<wire x1="-5.76146875" y1="-5.76553125" x2="-0.63646875" y2="-5.76553125" width="0.125" layer="15"/>
<wire x1="-5.76146875" y1="-0.39053125" x2="-5.76146875" y2="-5.76553125" width="0.125" layer="15"/>
<wire x1="-0.38646875" y1="-0.39053125" x2="-5.76146875" y2="-0.39053125" width="0.125" layer="15"/>
<wire x1="-6.01146875" y1="-6.01553125" x2="-0.38646875" y2="-6.01553125" width="0.125" layer="15"/>
<wire x1="-0.13646875" y1="-0.14053125" x2="-6.01146875" y2="-0.14053125" width="0.125" layer="15"/>
<wire x1="-0.13646875" y1="-6.26553125" x2="-0.13646875" y2="-0.14053125" width="0.125" layer="15"/>
<wire x1="-6.26146875" y1="-6.26553125" x2="-0.13646875" y2="-6.26553125" width="0.125" layer="15"/>
<wire x1="-3.76146875" y1="-2.39053125" x2="-3.76146875" y2="-3.76553125" width="0.125" layer="15"/>
<wire x1="-2.13646875" y1="-4.26553125" x2="-2.13646875" y2="-2.14053125" width="0.125" layer="15"/>
<wire x1="-4.26146875" y1="-1.89053125" x2="-4.26146875" y2="-4.26553125" width="0.125" layer="15"/>
<wire x1="-4.51146875" y1="-1.64053125" x2="-4.51146875" y2="-4.51553125" width="0.125" layer="15"/>
<wire x1="-1.38646875" y1="-5.01553125" x2="-1.38646875" y2="-1.39053125" width="0.125" layer="15"/>
<wire x1="-5.26146875" y1="-0.89053125" x2="-5.26146875" y2="-5.26553125" width="0.125" layer="15"/>
<wire x1="-0.38646875" y1="-6.01553125" x2="-0.38646875" y2="-0.39053125" width="0.125" layer="15"/>
<wire x1="-6.01146875" y1="-0.14053125" x2="-6.01146875" y2="-6.01553125" width="0.125" layer="15"/>
<wire x1="-6.26146875" y1="-6.26553125" x2="-6.26146875" y2="-3.20303125" width="0.125" layer="15"/>
<pad name="TOP_INT1_COIL1" x="-2.905" y="-3.02" drill="0.2" diameter="0.3" rot="R90"/>
<pad name="INT1_INT2_COIL1" x="-6.396" y="-4.081" drill="0.2" diameter="0.3"/>
<pad name="EXITCOIL1" x="-3.249" y="-3.618" drill="0.2" diameter="0.3"/>
<wire x1="-6.38" y1="-4.07" x2="-6.26" y2="-4.07" width="0.125" layer="2"/>
<wire x1="-6.26" y1="-4.07" x2="-6.26" y2="-3.68" width="0.125" layer="2"/>
<wire x1="-6.39" y1="-4.08" x2="-6.26" y2="-4.16" width="0.125" layer="15"/>
<wire x1="-6.26" y1="-4.16" x2="-6.26" y2="-4.28" width="0.125" layer="15"/>
<pad name="INCOIL1" x="-6.73" y="-3.22" drill="0.2" diameter="0.3"/>
<wire x1="-6.74" y1="-3.22" x2="-6.37" y2="-3.22" width="0.125" layer="1"/>
<wire x1="-6.37" y1="-3.22" x2="-6.26" y2="-3.11" width="0.125" layer="1"/>
<wire x1="0.390790625" y1="5.99071875" x2="5.765790625" y2="5.99071875" width="0.125" layer="1"/>
<wire x1="0.640790625" y1="5.74071875" x2="5.515790625" y2="5.74071875" width="0.125" layer="1"/>
<wire x1="0.140790625" y1="6.24071875" x2="6.015790625" y2="6.24071875" width="0.125" layer="1"/>
<wire x1="6.015790625" y1="0.36571875" x2="0.390790625" y2="0.36571875" width="0.125" layer="1"/>
<wire x1="5.765790625" y1="5.99071875" x2="5.765790625" y2="0.61571875" width="0.125" layer="1"/>
<wire x1="5.765790625" y1="0.61571875" x2="0.640790625" y2="0.61571875" width="0.125" layer="1"/>
<wire x1="0.640790625" y1="0.61571875" x2="0.640790625" y2="5.74071875" width="0.125" layer="1"/>
<wire x1="5.515790625" y1="5.74071875" x2="5.515790625" y2="0.86571875" width="0.125" layer="1"/>
<wire x1="5.515790625" y1="0.86571875" x2="0.890790625" y2="0.86571875" width="0.125" layer="1"/>
<wire x1="0.890790625" y1="0.86571875" x2="0.890790625" y2="5.49071875" width="0.125" layer="1"/>
<wire x1="0.890790625" y1="5.49071875" x2="5.265790625" y2="5.49071875" width="0.125" layer="1"/>
<wire x1="5.265790625" y1="1.11571875" x2="1.140790625" y2="1.11571875" width="0.125" layer="1"/>
<wire x1="1.140790625" y1="1.11571875" x2="1.140790625" y2="5.24071875" width="0.125" layer="1"/>
<wire x1="1.140790625" y1="5.24071875" x2="5.015790625" y2="5.24071875" width="0.125" layer="1"/>
<wire x1="5.015790625" y1="5.24071875" x2="5.015790625" y2="1.36571875" width="0.125" layer="1"/>
<wire x1="5.015790625" y1="1.36571875" x2="1.390790625" y2="1.36571875" width="0.125" layer="1"/>
<wire x1="1.390790625" y1="4.99071875" x2="4.765790625" y2="4.99071875" width="0.125" layer="1"/>
<wire x1="4.765790625" y1="4.99071875" x2="4.765790625" y2="1.61571875" width="0.125" layer="1"/>
<wire x1="4.765790625" y1="1.61571875" x2="1.640790625" y2="1.61571875" width="0.125" layer="1"/>
<wire x1="1.640790625" y1="1.61571875" x2="1.640790625" y2="4.74071875" width="0.125" layer="1"/>
<wire x1="1.640790625" y1="4.74071875" x2="4.515790625" y2="4.74071875" width="0.125" layer="1"/>
<wire x1="4.515790625" y1="1.86571875" x2="1.890790625" y2="1.86571875" width="0.125" layer="1"/>
<wire x1="1.890790625" y1="1.86571875" x2="1.890790625" y2="4.49071875" width="0.125" layer="1"/>
<wire x1="1.890790625" y1="4.49071875" x2="4.265790625" y2="4.49071875" width="0.125" layer="1"/>
<wire x1="4.265790625" y1="2.11571875" x2="2.140790625" y2="2.11571875" width="0.125" layer="1"/>
<wire x1="2.140790625" y1="4.24071875" x2="4.015790625" y2="4.24071875" width="0.125" layer="1"/>
<wire x1="4.015790625" y1="4.24071875" x2="4.015790625" y2="2.36571875" width="0.125" layer="1"/>
<wire x1="4.015790625" y1="2.36571875" x2="2.390790625" y2="2.36571875" width="0.125" layer="1"/>
<wire x1="2.390790625" y1="2.36571875" x2="2.390790625" y2="3.99071875" width="0.125" layer="1"/>
<wire x1="2.390790625" y1="3.99071875" x2="3.765790625" y2="3.99071875" width="0.125" layer="1"/>
<wire x1="3.765790625" y1="3.99071875" x2="3.765790625" y2="2.61571875" width="0.125" layer="1"/>
<wire x1="3.765790625" y1="2.61571875" x2="2.640790625" y2="2.61571875" width="0.125" layer="1"/>
<wire x1="2.640790625" y1="2.61571875" x2="2.910790625" y2="2.99071875" width="0.125" layer="1"/>
<wire x1="6.265790625" y1="0.11571875" x2="0.140790625" y2="0.11571875" width="0.125" layer="1"/>
<wire x1="6.265790625" y1="0.11571875" x2="6.265790625" y2="3.17821875" width="0.125" layer="1"/>
<wire x1="0.140790625" y1="0.11571875" x2="0.140790625" y2="6.24071875" width="0.125" layer="1"/>
<wire x1="6.015790625" y1="6.24071875" x2="6.015790625" y2="0.36571875" width="0.125" layer="1"/>
<wire x1="0.390790625" y1="0.36571875" x2="0.390790625" y2="5.99071875" width="0.125" layer="1"/>
<wire x1="5.265790625" y1="5.49071875" x2="5.265790625" y2="1.11571875" width="0.125" layer="1"/>
<wire x1="1.390790625" y1="1.36571875" x2="1.390790625" y2="4.99071875" width="0.125" layer="1"/>
<wire x1="4.515790625" y1="4.74071875" x2="4.515790625" y2="1.86571875" width="0.125" layer="1"/>
<wire x1="4.265790625" y1="4.49071875" x2="4.265790625" y2="2.11571875" width="0.125" layer="1"/>
<wire x1="2.140790625" y1="2.11571875" x2="2.140790625" y2="4.24071875" width="0.125" layer="1"/>
<wire x1="0.390790625" y1="5.99071875" x2="5.765790625" y2="5.99071875" width="0.125" layer="2"/>
<wire x1="0.640790625" y1="5.74071875" x2="5.515790625" y2="5.74071875" width="0.125" layer="2"/>
<wire x1="0.140790625" y1="6.24071875" x2="6.015790625" y2="6.24071875" width="0.125" layer="2"/>
<wire x1="6.015790625" y1="0.36571875" x2="0.390790625" y2="0.36571875" width="0.125" layer="2"/>
<wire x1="5.765790625" y1="5.99071875" x2="5.765790625" y2="0.61571875" width="0.125" layer="2"/>
<wire x1="5.765790625" y1="0.61571875" x2="0.640790625" y2="0.61571875" width="0.125" layer="2"/>
<wire x1="0.640790625" y1="0.61571875" x2="0.640790625" y2="5.74071875" width="0.125" layer="2"/>
<wire x1="5.515790625" y1="5.74071875" x2="5.515790625" y2="0.86571875" width="0.125" layer="2"/>
<wire x1="5.515790625" y1="0.86571875" x2="0.890790625" y2="0.86571875" width="0.125" layer="2"/>
<wire x1="0.890790625" y1="0.86571875" x2="0.890790625" y2="5.49071875" width="0.125" layer="2"/>
<wire x1="0.890790625" y1="5.49071875" x2="5.265790625" y2="5.49071875" width="0.125" layer="2"/>
<wire x1="5.265790625" y1="1.11571875" x2="1.140790625" y2="1.11571875" width="0.125" layer="2"/>
<wire x1="1.140790625" y1="1.11571875" x2="1.140790625" y2="5.24071875" width="0.125" layer="2"/>
<wire x1="1.140790625" y1="5.24071875" x2="5.015790625" y2="5.24071875" width="0.125" layer="2"/>
<wire x1="5.015790625" y1="5.24071875" x2="5.015790625" y2="1.36571875" width="0.125" layer="2"/>
<wire x1="5.015790625" y1="1.36571875" x2="1.390790625" y2="1.36571875" width="0.125" layer="2"/>
<wire x1="1.390790625" y1="4.99071875" x2="4.765790625" y2="4.99071875" width="0.125" layer="2"/>
<wire x1="4.765790625" y1="4.99071875" x2="4.765790625" y2="1.61571875" width="0.125" layer="2"/>
<wire x1="4.765790625" y1="1.61571875" x2="1.640790625" y2="1.61571875" width="0.125" layer="2"/>
<wire x1="1.640790625" y1="1.61571875" x2="1.640790625" y2="4.74071875" width="0.125" layer="2"/>
<wire x1="1.640790625" y1="4.74071875" x2="4.515790625" y2="4.74071875" width="0.125" layer="2"/>
<wire x1="4.515790625" y1="1.86571875" x2="1.890790625" y2="1.86571875" width="0.125" layer="2"/>
<wire x1="1.890790625" y1="1.86571875" x2="1.890790625" y2="4.49071875" width="0.125" layer="2"/>
<wire x1="1.890790625" y1="4.49071875" x2="4.265790625" y2="4.49071875" width="0.125" layer="2"/>
<wire x1="4.265790625" y1="2.11571875" x2="2.140790625" y2="2.11571875" width="0.125" layer="2"/>
<wire x1="2.140790625" y1="4.24071875" x2="4.015790625" y2="4.24071875" width="0.125" layer="2"/>
<wire x1="4.015790625" y1="4.24071875" x2="4.015790625" y2="2.36571875" width="0.125" layer="2"/>
<wire x1="4.015790625" y1="2.36571875" x2="2.390790625" y2="2.36571875" width="0.125" layer="2"/>
<wire x1="2.390790625" y1="2.36571875" x2="2.390790625" y2="3.99071875" width="0.125" layer="2"/>
<wire x1="2.390790625" y1="3.99071875" x2="3.765790625" y2="3.99071875" width="0.125" layer="2"/>
<wire x1="3.765790625" y1="3.99071875" x2="3.765790625" y2="2.61571875" width="0.125" layer="2"/>
<wire x1="3.765790625" y1="2.61571875" x2="2.640790625" y2="2.61571875" width="0.125" layer="2"/>
<wire x1="2.640790625" y1="2.61571875" x2="2.910790625" y2="2.99071875" width="0.125" layer="2"/>
<wire x1="6.265790625" y1="0.11571875" x2="0.140790625" y2="0.11571875" width="0.125" layer="2"/>
<wire x1="6.265790625" y1="0.11571875" x2="6.265790625" y2="4.04521875" width="0.125" layer="2"/>
<wire x1="0.140790625" y1="0.11571875" x2="0.140790625" y2="6.24071875" width="0.125" layer="2"/>
<wire x1="6.015790625" y1="6.24071875" x2="6.015790625" y2="0.36571875" width="0.125" layer="2"/>
<wire x1="0.390790625" y1="0.36571875" x2="0.390790625" y2="5.99071875" width="0.125" layer="2"/>
<wire x1="5.265790625" y1="5.49071875" x2="5.265790625" y2="1.11571875" width="0.125" layer="2"/>
<wire x1="1.390790625" y1="1.36571875" x2="1.390790625" y2="4.99071875" width="0.125" layer="2"/>
<wire x1="4.515790625" y1="4.74071875" x2="4.515790625" y2="1.86571875" width="0.125" layer="2"/>
<wire x1="4.265790625" y1="4.49071875" x2="4.265790625" y2="2.11571875" width="0.125" layer="2"/>
<wire x1="2.140790625" y1="2.11571875" x2="2.140790625" y2="4.24071875" width="0.125" layer="2"/>
<wire x1="3.77146875" y1="3.73553125" x2="3.27646875" y2="3.59553125" width="0.125" layer="15"/>
<wire x1="2.39646875" y1="2.36053125" x2="3.77146875" y2="2.36053125" width="0.125" layer="15"/>
<wire x1="2.39646875" y1="3.98553125" x2="2.39646875" y2="2.36053125" width="0.125" layer="15"/>
<wire x1="4.02146875" y1="3.98553125" x2="2.39646875" y2="3.98553125" width="0.125" layer="15"/>
<wire x1="4.02146875" y1="2.11053125" x2="4.02146875" y2="3.98553125" width="0.125" layer="15"/>
<wire x1="2.14646875" y1="2.11053125" x2="4.02146875" y2="2.11053125" width="0.125" layer="15"/>
<wire x1="4.27146875" y1="4.23553125" x2="2.14646875" y2="4.23553125" width="0.125" layer="15"/>
<wire x1="1.89646875" y1="1.86053125" x2="4.27146875" y2="1.86053125" width="0.125" layer="15"/>
<wire x1="1.89646875" y1="4.48553125" x2="1.89646875" y2="1.86053125" width="0.125" layer="15"/>
<wire x1="4.52146875" y1="4.48553125" x2="1.89646875" y2="4.48553125" width="0.125" layer="15"/>
<wire x1="1.64646875" y1="1.61053125" x2="4.52146875" y2="1.61053125" width="0.125" layer="15"/>
<wire x1="1.64646875" y1="4.73553125" x2="1.64646875" y2="1.61053125" width="0.125" layer="15"/>
<wire x1="4.77146875" y1="4.73553125" x2="1.64646875" y2="4.73553125" width="0.125" layer="15"/>
<wire x1="4.77146875" y1="1.36053125" x2="4.77146875" y2="4.73553125" width="0.125" layer="15"/>
<wire x1="1.39646875" y1="1.36053125" x2="4.77146875" y2="1.36053125" width="0.125" layer="15"/>
<wire x1="5.02146875" y1="4.98553125" x2="1.39646875" y2="4.98553125" width="0.125" layer="15"/>
<wire x1="5.02146875" y1="1.11053125" x2="5.02146875" y2="4.98553125" width="0.125" layer="15"/>
<wire x1="1.14646875" y1="1.11053125" x2="5.02146875" y2="1.11053125" width="0.125" layer="15"/>
<wire x1="1.14646875" y1="5.23553125" x2="1.14646875" y2="1.11053125" width="0.125" layer="15"/>
<wire x1="5.27146875" y1="5.23553125" x2="1.14646875" y2="5.23553125" width="0.125" layer="15"/>
<wire x1="0.89646875" y1="0.86053125" x2="5.27146875" y2="0.86053125" width="0.125" layer="15"/>
<wire x1="0.89646875" y1="5.48553125" x2="0.89646875" y2="0.86053125" width="0.125" layer="15"/>
<wire x1="5.52146875" y1="5.48553125" x2="0.89646875" y2="5.48553125" width="0.125" layer="15"/>
<wire x1="5.52146875" y1="0.61053125" x2="5.52146875" y2="5.48553125" width="0.125" layer="15"/>
<wire x1="0.64646875" y1="0.61053125" x2="5.52146875" y2="0.61053125" width="0.125" layer="15"/>
<wire x1="0.64646875" y1="5.73553125" x2="0.64646875" y2="0.61053125" width="0.125" layer="15"/>
<wire x1="5.77146875" y1="5.73553125" x2="0.64646875" y2="5.73553125" width="0.125" layer="15"/>
<wire x1="5.77146875" y1="0.36053125" x2="5.77146875" y2="5.73553125" width="0.125" layer="15"/>
<wire x1="0.39646875" y1="0.36053125" x2="5.77146875" y2="0.36053125" width="0.125" layer="15"/>
<wire x1="6.02146875" y1="5.98553125" x2="0.39646875" y2="5.98553125" width="0.125" layer="15"/>
<wire x1="0.14646875" y1="0.11053125" x2="6.02146875" y2="0.11053125" width="0.125" layer="15"/>
<wire x1="0.14646875" y1="6.23553125" x2="0.14646875" y2="0.11053125" width="0.125" layer="15"/>
<wire x1="6.27146875" y1="6.23553125" x2="0.14646875" y2="6.23553125" width="0.125" layer="15"/>
<wire x1="3.77146875" y1="2.36053125" x2="3.77146875" y2="3.73553125" width="0.125" layer="15"/>
<wire x1="2.14646875" y1="4.23553125" x2="2.14646875" y2="2.11053125" width="0.125" layer="15"/>
<wire x1="4.27146875" y1="1.86053125" x2="4.27146875" y2="4.23553125" width="0.125" layer="15"/>
<wire x1="4.52146875" y1="1.61053125" x2="4.52146875" y2="4.48553125" width="0.125" layer="15"/>
<wire x1="1.39646875" y1="4.98553125" x2="1.39646875" y2="1.36053125" width="0.125" layer="15"/>
<wire x1="5.27146875" y1="0.86053125" x2="5.27146875" y2="5.23553125" width="0.125" layer="15"/>
<wire x1="0.39646875" y1="5.98553125" x2="0.39646875" y2="0.36053125" width="0.125" layer="15"/>
<wire x1="6.02146875" y1="0.11053125" x2="6.02146875" y2="5.98553125" width="0.125" layer="15"/>
<wire x1="6.27146875" y1="6.23553125" x2="6.27146875" y2="3.17303125" width="0.125" layer="15"/>
<pad name="TOP_INT1_COIL2" x="2.915" y="2.99" drill="0.2" diameter="0.3" rot="R270"/>
<pad name="INT1_INT2_COIL2" x="6.406" y="4.051" drill="0.2" diameter="0.3" rot="R180"/>
<pad name="EXITCOIL2" x="3.259" y="3.588" drill="0.2" diameter="0.3" rot="R180"/>
<wire x1="6.39" y1="4.04" x2="6.27" y2="4.04" width="0.125" layer="2"/>
<wire x1="6.27" y1="4.04" x2="6.27" y2="3.65" width="0.125" layer="2"/>
<wire x1="6.4" y1="4.05" x2="6.27" y2="4.13" width="0.125" layer="15"/>
<wire x1="6.27" y1="4.13" x2="6.27" y2="4.25" width="0.125" layer="15"/>
<pad name="INCOIL2" x="6.74" y="3.19" drill="0.2" diameter="0.3" rot="R180"/>
<wire x1="6.75" y1="3.19" x2="6.38" y2="3.19" width="0.125" layer="1"/>
<wire x1="6.38" y1="3.19" x2="6.27" y2="3.08" width="0.125" layer="1"/>
<wire x1="0.380790625" y1="-0.37928125" x2="5.755790625" y2="-0.37928125" width="0.125" layer="1"/>
<wire x1="0.630790625" y1="-0.62928125" x2="5.505790625" y2="-0.62928125" width="0.125" layer="1"/>
<wire x1="0.130790625" y1="-0.12928125" x2="6.005790625" y2="-0.12928125" width="0.125" layer="1"/>
<wire x1="6.005790625" y1="-6.00428125" x2="0.380790625" y2="-6.00428125" width="0.125" layer="1"/>
<wire x1="5.755790625" y1="-0.37928125" x2="5.755790625" y2="-5.75428125" width="0.125" layer="1"/>
<wire x1="5.755790625" y1="-5.75428125" x2="0.630790625" y2="-5.75428125" width="0.125" layer="1"/>
<wire x1="0.630790625" y1="-5.75428125" x2="0.630790625" y2="-0.62928125" width="0.125" layer="1"/>
<wire x1="5.505790625" y1="-0.62928125" x2="5.505790625" y2="-5.50428125" width="0.125" layer="1"/>
<wire x1="5.505790625" y1="-5.50428125" x2="0.880790625" y2="-5.50428125" width="0.125" layer="1"/>
<wire x1="0.880790625" y1="-5.50428125" x2="0.880790625" y2="-0.87928125" width="0.125" layer="1"/>
<wire x1="0.880790625" y1="-0.87928125" x2="5.255790625" y2="-0.87928125" width="0.125" layer="1"/>
<wire x1="5.255790625" y1="-5.25428125" x2="1.130790625" y2="-5.25428125" width="0.125" layer="1"/>
<wire x1="1.130790625" y1="-5.25428125" x2="1.130790625" y2="-1.12928125" width="0.125" layer="1"/>
<wire x1="1.130790625" y1="-1.12928125" x2="5.005790625" y2="-1.12928125" width="0.125" layer="1"/>
<wire x1="5.005790625" y1="-1.12928125" x2="5.005790625" y2="-5.00428125" width="0.125" layer="1"/>
<wire x1="5.005790625" y1="-5.00428125" x2="1.380790625" y2="-5.00428125" width="0.125" layer="1"/>
<wire x1="1.380790625" y1="-1.37928125" x2="4.755790625" y2="-1.37928125" width="0.125" layer="1"/>
<wire x1="4.755790625" y1="-1.37928125" x2="4.755790625" y2="-4.75428125" width="0.125" layer="1"/>
<wire x1="4.755790625" y1="-4.75428125" x2="1.630790625" y2="-4.75428125" width="0.125" layer="1"/>
<wire x1="1.630790625" y1="-4.75428125" x2="1.630790625" y2="-1.62928125" width="0.125" layer="1"/>
<wire x1="1.630790625" y1="-1.62928125" x2="4.505790625" y2="-1.62928125" width="0.125" layer="1"/>
<wire x1="4.505790625" y1="-4.50428125" x2="1.880790625" y2="-4.50428125" width="0.125" layer="1"/>
<wire x1="1.880790625" y1="-4.50428125" x2="1.880790625" y2="-1.87928125" width="0.125" layer="1"/>
<wire x1="1.880790625" y1="-1.87928125" x2="4.255790625" y2="-1.87928125" width="0.125" layer="1"/>
<wire x1="4.255790625" y1="-4.25428125" x2="2.130790625" y2="-4.25428125" width="0.125" layer="1"/>
<wire x1="2.130790625" y1="-2.12928125" x2="4.005790625" y2="-2.12928125" width="0.125" layer="1"/>
<wire x1="4.005790625" y1="-2.12928125" x2="4.005790625" y2="-4.00428125" width="0.125" layer="1"/>
<wire x1="4.005790625" y1="-4.00428125" x2="2.380790625" y2="-4.00428125" width="0.125" layer="1"/>
<wire x1="2.380790625" y1="-4.00428125" x2="2.380790625" y2="-2.37928125" width="0.125" layer="1"/>
<wire x1="2.380790625" y1="-2.37928125" x2="3.755790625" y2="-2.37928125" width="0.125" layer="1"/>
<wire x1="3.755790625" y1="-2.37928125" x2="3.755790625" y2="-3.75428125" width="0.125" layer="1"/>
<wire x1="3.755790625" y1="-3.75428125" x2="2.630790625" y2="-3.75428125" width="0.125" layer="1"/>
<wire x1="2.630790625" y1="-3.75428125" x2="2.900790625" y2="-3.37928125" width="0.125" layer="1"/>
<wire x1="6.255790625" y1="-6.25428125" x2="0.130790625" y2="-6.25428125" width="0.125" layer="1"/>
<wire x1="6.255790625" y1="-6.25428125" x2="6.255790625" y2="-3.19178125" width="0.125" layer="1"/>
<wire x1="0.130790625" y1="-6.25428125" x2="0.130790625" y2="-0.12928125" width="0.125" layer="1"/>
<wire x1="6.005790625" y1="-0.12928125" x2="6.005790625" y2="-6.00428125" width="0.125" layer="1"/>
<wire x1="0.380790625" y1="-6.00428125" x2="0.380790625" y2="-0.37928125" width="0.125" layer="1"/>
<wire x1="5.255790625" y1="-0.87928125" x2="5.255790625" y2="-5.25428125" width="0.125" layer="1"/>
<wire x1="1.380790625" y1="-5.00428125" x2="1.380790625" y2="-1.37928125" width="0.125" layer="1"/>
<wire x1="4.505790625" y1="-1.62928125" x2="4.505790625" y2="-4.50428125" width="0.125" layer="1"/>
<wire x1="4.255790625" y1="-1.87928125" x2="4.255790625" y2="-4.25428125" width="0.125" layer="1"/>
<wire x1="2.130790625" y1="-4.25428125" x2="2.130790625" y2="-2.12928125" width="0.125" layer="1"/>
<wire x1="0.380790625" y1="-0.37928125" x2="5.755790625" y2="-0.37928125" width="0.125" layer="2"/>
<wire x1="0.630790625" y1="-0.62928125" x2="5.505790625" y2="-0.62928125" width="0.125" layer="2"/>
<wire x1="0.130790625" y1="-0.12928125" x2="6.005790625" y2="-0.12928125" width="0.125" layer="2"/>
<wire x1="6.005790625" y1="-6.00428125" x2="0.380790625" y2="-6.00428125" width="0.125" layer="2"/>
<wire x1="5.755790625" y1="-0.37928125" x2="5.755790625" y2="-5.75428125" width="0.125" layer="2"/>
<wire x1="5.755790625" y1="-5.75428125" x2="0.630790625" y2="-5.75428125" width="0.125" layer="2"/>
<wire x1="0.630790625" y1="-5.75428125" x2="0.630790625" y2="-0.62928125" width="0.125" layer="2"/>
<wire x1="5.505790625" y1="-0.62928125" x2="5.505790625" y2="-5.50428125" width="0.125" layer="2"/>
<wire x1="5.505790625" y1="-5.50428125" x2="0.880790625" y2="-5.50428125" width="0.125" layer="2"/>
<wire x1="0.880790625" y1="-5.50428125" x2="0.880790625" y2="-0.87928125" width="0.125" layer="2"/>
<wire x1="0.880790625" y1="-0.87928125" x2="5.255790625" y2="-0.87928125" width="0.125" layer="2"/>
<wire x1="5.255790625" y1="-5.25428125" x2="1.130790625" y2="-5.25428125" width="0.125" layer="2"/>
<wire x1="1.130790625" y1="-5.25428125" x2="1.130790625" y2="-1.12928125" width="0.125" layer="2"/>
<wire x1="1.130790625" y1="-1.12928125" x2="5.005790625" y2="-1.12928125" width="0.125" layer="2"/>
<wire x1="5.005790625" y1="-1.12928125" x2="5.005790625" y2="-5.00428125" width="0.125" layer="2"/>
<wire x1="5.005790625" y1="-5.00428125" x2="1.380790625" y2="-5.00428125" width="0.125" layer="2"/>
<wire x1="1.380790625" y1="-1.37928125" x2="4.755790625" y2="-1.37928125" width="0.125" layer="2"/>
<wire x1="4.755790625" y1="-1.37928125" x2="4.755790625" y2="-4.75428125" width="0.125" layer="2"/>
<wire x1="4.755790625" y1="-4.75428125" x2="1.630790625" y2="-4.75428125" width="0.125" layer="2"/>
<wire x1="1.630790625" y1="-4.75428125" x2="1.630790625" y2="-1.62928125" width="0.125" layer="2"/>
<wire x1="1.630790625" y1="-1.62928125" x2="4.505790625" y2="-1.62928125" width="0.125" layer="2"/>
<wire x1="4.505790625" y1="-4.50428125" x2="1.880790625" y2="-4.50428125" width="0.125" layer="2"/>
<wire x1="1.880790625" y1="-4.50428125" x2="1.880790625" y2="-1.87928125" width="0.125" layer="2"/>
<wire x1="1.880790625" y1="-1.87928125" x2="4.255790625" y2="-1.87928125" width="0.125" layer="2"/>
<wire x1="4.255790625" y1="-4.25428125" x2="2.130790625" y2="-4.25428125" width="0.125" layer="2"/>
<wire x1="2.130790625" y1="-2.12928125" x2="4.005790625" y2="-2.12928125" width="0.125" layer="2"/>
<wire x1="4.005790625" y1="-2.12928125" x2="4.005790625" y2="-4.00428125" width="0.125" layer="2"/>
<wire x1="4.005790625" y1="-4.00428125" x2="2.380790625" y2="-4.00428125" width="0.125" layer="2"/>
<wire x1="2.380790625" y1="-4.00428125" x2="2.380790625" y2="-2.37928125" width="0.125" layer="2"/>
<wire x1="2.380790625" y1="-2.37928125" x2="3.755790625" y2="-2.37928125" width="0.125" layer="2"/>
<wire x1="3.755790625" y1="-2.37928125" x2="3.755790625" y2="-3.75428125" width="0.125" layer="2"/>
<wire x1="3.755790625" y1="-3.75428125" x2="2.630790625" y2="-3.75428125" width="0.125" layer="2"/>
<wire x1="2.630790625" y1="-3.75428125" x2="2.900790625" y2="-3.37928125" width="0.125" layer="2"/>
<wire x1="6.255790625" y1="-6.25428125" x2="0.130790625" y2="-6.25428125" width="0.125" layer="2"/>
<wire x1="6.255790625" y1="-6.25428125" x2="6.255790625" y2="-2.32478125" width="0.125" layer="2"/>
<wire x1="0.130790625" y1="-6.25428125" x2="0.130790625" y2="-0.12928125" width="0.125" layer="2"/>
<wire x1="6.005790625" y1="-0.12928125" x2="6.005790625" y2="-6.00428125" width="0.125" layer="2"/>
<wire x1="0.380790625" y1="-6.00428125" x2="0.380790625" y2="-0.37928125" width="0.125" layer="2"/>
<wire x1="5.255790625" y1="-0.87928125" x2="5.255790625" y2="-5.25428125" width="0.125" layer="2"/>
<wire x1="1.380790625" y1="-5.00428125" x2="1.380790625" y2="-1.37928125" width="0.125" layer="2"/>
<wire x1="4.505790625" y1="-1.62928125" x2="4.505790625" y2="-4.50428125" width="0.125" layer="2"/>
<wire x1="4.255790625" y1="-1.87928125" x2="4.255790625" y2="-4.25428125" width="0.125" layer="2"/>
<wire x1="2.130790625" y1="-4.25428125" x2="2.130790625" y2="-2.12928125" width="0.125" layer="2"/>
<wire x1="3.76146875" y1="-2.63446875" x2="3.26646875" y2="-2.77446875" width="0.125" layer="15"/>
<wire x1="2.38646875" y1="-4.00946875" x2="3.76146875" y2="-4.00946875" width="0.125" layer="15"/>
<wire x1="2.38646875" y1="-2.38446875" x2="2.38646875" y2="-4.00946875" width="0.125" layer="15"/>
<wire x1="4.01146875" y1="-2.38446875" x2="2.38646875" y2="-2.38446875" width="0.125" layer="15"/>
<wire x1="4.01146875" y1="-4.25946875" x2="4.01146875" y2="-2.38446875" width="0.125" layer="15"/>
<wire x1="2.13646875" y1="-4.25946875" x2="4.01146875" y2="-4.25946875" width="0.125" layer="15"/>
<wire x1="4.26146875" y1="-2.13446875" x2="2.13646875" y2="-2.13446875" width="0.125" layer="15"/>
<wire x1="1.88646875" y1="-4.50946875" x2="4.26146875" y2="-4.50946875" width="0.125" layer="15"/>
<wire x1="1.88646875" y1="-1.88446875" x2="1.88646875" y2="-4.50946875" width="0.125" layer="15"/>
<wire x1="4.51146875" y1="-1.88446875" x2="1.88646875" y2="-1.88446875" width="0.125" layer="15"/>
<wire x1="1.63646875" y1="-4.75946875" x2="4.51146875" y2="-4.75946875" width="0.125" layer="15"/>
<wire x1="1.63646875" y1="-1.63446875" x2="1.63646875" y2="-4.75946875" width="0.125" layer="15"/>
<wire x1="4.76146875" y1="-1.63446875" x2="1.63646875" y2="-1.63446875" width="0.125" layer="15"/>
<wire x1="4.76146875" y1="-5.00946875" x2="4.76146875" y2="-1.63446875" width="0.125" layer="15"/>
<wire x1="1.38646875" y1="-5.00946875" x2="4.76146875" y2="-5.00946875" width="0.125" layer="15"/>
<wire x1="5.01146875" y1="-1.38446875" x2="1.38646875" y2="-1.38446875" width="0.125" layer="15"/>
<wire x1="5.01146875" y1="-5.25946875" x2="5.01146875" y2="-1.38446875" width="0.125" layer="15"/>
<wire x1="1.13646875" y1="-5.25946875" x2="5.01146875" y2="-5.25946875" width="0.125" layer="15"/>
<wire x1="1.13646875" y1="-1.13446875" x2="1.13646875" y2="-5.25946875" width="0.125" layer="15"/>
<wire x1="5.26146875" y1="-1.13446875" x2="1.13646875" y2="-1.13446875" width="0.125" layer="15"/>
<wire x1="0.88646875" y1="-5.50946875" x2="5.26146875" y2="-5.50946875" width="0.125" layer="15"/>
<wire x1="0.88646875" y1="-0.88446875" x2="0.88646875" y2="-5.50946875" width="0.125" layer="15"/>
<wire x1="5.51146875" y1="-0.88446875" x2="0.88646875" y2="-0.88446875" width="0.125" layer="15"/>
<wire x1="5.51146875" y1="-5.75946875" x2="5.51146875" y2="-0.88446875" width="0.125" layer="15"/>
<wire x1="0.63646875" y1="-5.75946875" x2="5.51146875" y2="-5.75946875" width="0.125" layer="15"/>
<wire x1="0.63646875" y1="-0.63446875" x2="0.63646875" y2="-5.75946875" width="0.125" layer="15"/>
<wire x1="5.76146875" y1="-0.63446875" x2="0.63646875" y2="-0.63446875" width="0.125" layer="15"/>
<wire x1="5.76146875" y1="-6.00946875" x2="5.76146875" y2="-0.63446875" width="0.125" layer="15"/>
<wire x1="0.38646875" y1="-6.00946875" x2="5.76146875" y2="-6.00946875" width="0.125" layer="15"/>
<wire x1="6.01146875" y1="-0.38446875" x2="0.38646875" y2="-0.38446875" width="0.125" layer="15"/>
<wire x1="0.13646875" y1="-6.25946875" x2="6.01146875" y2="-6.25946875" width="0.125" layer="15"/>
<wire x1="0.13646875" y1="-0.13446875" x2="0.13646875" y2="-6.25946875" width="0.125" layer="15"/>
<wire x1="6.26146875" y1="-0.13446875" x2="0.13646875" y2="-0.13446875" width="0.125" layer="15"/>
<wire x1="3.76146875" y1="-4.00946875" x2="3.76146875" y2="-2.63446875" width="0.125" layer="15"/>
<wire x1="2.13646875" y1="-2.13446875" x2="2.13646875" y2="-4.25946875" width="0.125" layer="15"/>
<wire x1="4.26146875" y1="-4.50946875" x2="4.26146875" y2="-2.13446875" width="0.125" layer="15"/>
<wire x1="4.51146875" y1="-4.75946875" x2="4.51146875" y2="-1.88446875" width="0.125" layer="15"/>
<wire x1="1.38646875" y1="-1.38446875" x2="1.38646875" y2="-5.00946875" width="0.125" layer="15"/>
<wire x1="5.26146875" y1="-5.50946875" x2="5.26146875" y2="-1.13446875" width="0.125" layer="15"/>
<wire x1="0.38646875" y1="-0.38446875" x2="0.38646875" y2="-6.00946875" width="0.125" layer="15"/>
<wire x1="6.01146875" y1="-6.25946875" x2="6.01146875" y2="-0.38446875" width="0.125" layer="15"/>
<wire x1="6.26146875" y1="-0.13446875" x2="6.26146875" y2="-3.19696875" width="0.125" layer="15"/>
<pad name="TOP_INT1_COIL3" x="2.905" y="-3.38" drill="0.2" diameter="0.3" rot="R270"/>
<pad name="INT1_INT2_COIL3" x="6.396" y="-2.319" drill="0.2" diameter="0.3" rot="R180"/>
<pad name="EXITCOIL3" x="3.249" y="-2.782" drill="0.2" diameter="0.3" rot="R180"/>
<wire x1="6.38" y1="-2.33" x2="6.26" y2="-2.33" width="0.125" layer="2"/>
<wire x1="6.26" y1="-2.33" x2="6.26" y2="-2.72" width="0.125" layer="2"/>
<wire x1="6.39" y1="-2.32" x2="6.26" y2="-2.24" width="0.125" layer="15"/>
<wire x1="6.26" y1="-2.24" x2="6.26" y2="-2.12" width="0.125" layer="15"/>
<pad name="INCOIL3" x="6.73" y="-3.18" drill="0.2" diameter="0.3" rot="R180"/>
<wire x1="6.74" y1="-3.18" x2="6.37" y2="-3.18" width="0.125" layer="1"/>
<wire x1="6.37" y1="-3.18" x2="6.26" y2="-3.29" width="0.125" layer="1"/>
</package>
<package name="FAT_FAN">
<wire x1="-0.624559375" y1="5.549709375" x2="-0.697090625" y2="5.53791875" width="0.125" layer="1"/>
<wire x1="-5.45221875" y1="0.99758125" x2="-5.46808125" y2="0.922209375" width="0.125" layer="1"/>
<wire x1="-0.874559375" y1="5.25186875" x2="-0.95038125" y2="5.23531875" width="0.125" layer="1"/>
<wire x1="-5.134390625" y1="1.251" x2="-5.15566875" y2="1.172209375" width="0.125" layer="1"/>
<wire x1="-1.124559375" y1="4.936809375" x2="-1.203990625" y2="4.91445" width="0.125" layer="1"/>
<wire x1="-4.79608125" y1="1.50475" x2="-4.82403125" y2="1.422209375" width="0.125" layer="1"/>
<wire x1="-6.31213125" y1="0.23888125" x2="-6.316590625" y2="0.172209375" width="0.125" layer="1"/>
<wire x1="-0.124559375" y1="6.10331875" x2="-0.19128125" y2="6.098790625" width="0.125" layer="1"/>
<wire x1="-6.038859375" y1="0.49155" x2="-6.0465" y2="0.422209375" width="0.125" layer="1"/>
<wire x1="-1.374559375" y1="4.601140625" x2="-1.45796875" y2="4.57153125" width="0.125" layer="1"/>
<wire x1="-4.43275" y1="1.75888125" x2="-4.4691" y2="1.672209375" width="0.125" layer="1"/>
<wire x1="-0.624559375" y1="0.672209375" x2="-0.624559375" y2="5.549709375" width="0.125" layer="1"/>
<wire x1="-0.874559375" y1="0.922209375" x2="-0.874559375" y2="5.25186875" width="0.125" layer="1"/>
<wire x1="-0.374559375" y1="0.422209375" x2="-0.374559375" y2="5.832859375" width="0.125" layer="1"/>
<wire x1="-1.874559375" y1="3.84726875" x2="-1.96723125" y2="3.79616875" width="0.125" layer="1"/>
<wire x1="-3.601790625" y1="2.268509375" x2="-3.66371875" y2="2.172209375" width="0.125" layer="1"/>
<wire x1="-0.124559375" y1="0.172209375" x2="-0.124559375" y2="6.10331875" width="0.125" layer="1"/>
<wire x1="-5.15566875" y1="1.172209375" x2="-1.124559375" y2="1.172209375" width="0.125" layer="1"/>
<wire x1="-1.624559375" y1="1.672209375" x2="-1.624559375" y2="4.2402" width="0.125" layer="1"/>
<wire x1="-1.124559375" y1="1.172209375" x2="-1.124559375" y2="4.936809375" width="0.125" layer="1"/>
<wire x1="-3.66371875" y1="2.172209375" x2="-2.124559375" y2="2.172209375" width="0.125" layer="1"/>
<wire x1="-1.374559375" y1="1.422209375" x2="-1.374559375" y2="4.601140625" width="0.125" layer="1"/>
<wire x1="-1.874559375" y1="1.922209375" x2="-1.874559375" y2="3.84726875" width="0.125" layer="1"/>
<wire x1="-0.374559375" y1="5.832859375" x2="-0.444059375" y2="5.82501875" width="0.125" layer="1"/>
<wire x1="-5.75288125" y1="0.744440625" x2="-5.764259375" y2="0.672209375" width="0.125" layer="1"/>
<wire x1="-6.0465" y1="0.422209375" x2="-0.374559375" y2="0.422209375" width="0.125" layer="1"/>
<wire x1="-4.4691" y1="1.672209375" x2="-1.624559375" y2="1.672209375" width="0.125" layer="1"/>
<wire x1="-5.46808125" y1="0.922209375" x2="-0.874559375" y2="0.922209375" width="0.125" layer="1"/>
<wire x1="-6.316590625" y1="0.172209375" x2="-0.124559375" y2="0.172209375" width="0.125" layer="1"/>
<wire x1="-4.82403125" y1="1.422209375" x2="-1.374559375" y2="1.422209375" width="0.125" layer="1"/>
<wire x1="-5.764259375" y1="0.672209375" x2="-0.624559375" y2="0.672209375" width="0.125" layer="1"/>
<wire x1="-1.624559375" y1="4.2402" x2="-1.712359375" y2="4.201340625" width="0.125" layer="1"/>
<wire x1="-4.03793125" y1="2.013440625" x2="-4.08516875" y2="1.922209375" width="0.125" layer="1"/>
<wire x1="-4.08516875" y1="1.922209375" x2="-1.874559375" y2="1.922209375" width="0.125" layer="1"/>
<wire x1="-0.697090625" y1="5.53791875" x2="-5.452225" y2="0.99758125" width="0.125" layer="1" curve="68.882487"/>
<wire x1="-0.95038125" y1="5.23531875" x2="-5.134390625" y2="1.251" width="0.125" layer="1" curve="62.57537"/>
<wire x1="-1.203990625" y1="4.91445" x2="-4.796078125" y2="1.50475" width="0.125" layer="1" curve="55.567478"/>
<wire x1="-4.3063" y1="4.537459375" x2="-6.312128125" y2="0.23888125" width="0.125" layer="1" curve="42.37391"/>
<wire x1="-0.19128125" y1="6.098790625" x2="-6.038859375" y2="0.49155" width="0.125" layer="1" curve="79.838592"/>
<wire x1="-1.45796875" y1="4.57153125" x2="-4.432746875" y2="1.75888125" width="0.125" layer="1" curve="47.699477"/>
<wire x1="-1.96723125" y1="3.79616875" x2="-3.601790625" y2="2.268509375" width="0.125" layer="1" curve="28.385448"/>
<wire x1="-0.444059375" y1="5.82501875" x2="-5.752871875" y2="0.7444375" width="0.125" layer="1" curve="74.606876"/>
<wire x1="-1.712359375" y1="4.201340625" x2="-4.0379375" y2="2.01344375" width="0.125" layer="1" curve="38.748771"/>
<wire x1="-5.516609375" y1="0.677509375" x2="-0.61151875" y2="0.677509375" width="0.125" layer="2"/>
<wire x1="-0.86151875" y1="5.51678125" x2="-0.94411875" y2="5.499859375" width="0.125" layer="2"/>
<wire x1="-5.50616875" y1="0.74116875" x2="-5.51661875" y2="0.677509375" width="0.125" layer="2"/>
<wire x1="-5.80023125" y1="0.427509375" x2="-0.36151875" y2="0.427509375" width="0.125" layer="2"/>
<wire x1="-0.61151875" y1="5.81145" x2="-0.6911" y2="5.79933125" width="0.125" layer="2"/>
<wire x1="-5.793309375" y1="0.48811875" x2="-5.800240625" y2="0.427509375" width="0.125" layer="2"/>
<wire x1="-0.11151875" y1="6.36118125" x2="-0.1857" y2="6.356559375" width="0.125" layer="2"/>
<wire x1="-0.11151875" y1="0.177509375" x2="-0.11151875" y2="6.361190625" width="0.125" layer="2"/>
<wire x1="-0.36151875" y1="6.09233125" x2="-0.4383" y2="6.08425" width="0.125" layer="2"/>
<wire x1="-6.067109375" y1="0.23531875" x2="-6.071109375" y2="0.177509375" width="0.125" layer="2"/>
<wire x1="-0.36151875" y1="0.427509375" x2="-0.36151875" y2="6.09233125" width="0.125" layer="2"/>
<wire x1="-0.61151875" y1="0.677509375" x2="-0.61151875" y2="5.811459375" width="0.125" layer="2"/>
<wire x1="-0.86151875" y1="0.927509375" x2="-0.86151875" y2="5.516790625" width="0.125" layer="2"/>
<wire x1="-1.11151875" y1="1.177509375" x2="-1.11151875" y2="5.20606875" width="0.125" layer="2"/>
<wire x1="-1.11151875" y1="5.20606875" x2="-1.197390625" y2="5.1834" width="0.125" layer="2"/>
<wire x1="-5.20353125" y1="0.99453125" x2="-5.21826875" y2="0.927509375" width="0.125" layer="2"/>
<wire x1="-1.36151875" y1="4.876359375" x2="-1.45095" y2="4.84668125" width="0.125" layer="2"/>
<wire x1="-4.88258125" y1="1.24823125" x2="-4.90263125" y2="1.177509375" width="0.125" layer="2"/>
<wire x1="-1.36151875" y1="1.427509375" x2="-1.36151875" y2="4.876359375" width="0.125" layer="2"/>
<wire x1="-1.61151875" y1="4.52368125" x2="-1.704809375" y2="4.48526875" width="0.125" layer="2"/>
<wire x1="-4.53955" y1="1.502340625" x2="-4.56628125" y2="1.427509375" width="0.125" layer="2"/>
<wire x1="-1.61151875" y1="1.677509375" x2="-1.61151875" y2="4.52368125" width="0.125" layer="2"/>
<wire x1="-1.86151875" y1="4.142459375" x2="-1.95903125" y2="4.09285" width="0.125" layer="2"/>
<wire x1="-4.16918125" y1="1.756940625" x2="-4.20453125" y2="1.677509375" width="0.125" layer="2"/>
<wire x1="-1.86151875" y1="1.927509375" x2="-1.86151875" y2="4.142459375" width="0.125" layer="2"/>
<wire x1="-5.218259375" y1="0.927509375" x2="-0.86151875" y2="0.927509375" width="0.125" layer="2"/>
<wire x1="-4.90261875" y1="1.177509375" x2="-1.11151875" y2="1.177509375" width="0.125" layer="2"/>
<wire x1="-4.56626875" y1="1.427509375" x2="-1.36151875" y2="1.427509375" width="0.125" layer="2"/>
<wire x1="-4.20453125" y1="1.677509375" x2="-1.61151875" y2="1.677509375" width="0.125" layer="2"/>
<wire x1="-3.76371875" y1="2.0121" x2="-3.810609375" y2="1.927509375" width="0.125" layer="2"/>
<wire x1="-6.071109375" y1="0.177509375" x2="-0.11151875" y2="0.177509375" width="0.125" layer="2"/>
<wire x1="-3.810609375" y1="1.927509375" x2="-1.86151875" y2="1.927509375" width="0.125" layer="2"/>
<wire x1="-0.94411875" y1="5.499859375" x2="-5.50616875" y2="0.74116875" width="0.125" layer="2" curve="69.100418"/>
<wire x1="-0.6911" y1="5.79933125" x2="-5.7933125" y2="0.48811875" width="0.125" layer="2" curve="74.813503"/>
<wire x1="-0.1857" y1="6.356559375" x2="-3.841953125" y2="4.9532625" width="0.125" layer="2" curve="34.724335"/>
<wire x1="-0.4383" y1="6.08425" x2="-6.06710625" y2="0.23531875" width="0.125" layer="2" curve="80.03571"/>
<wire x1="-1.197390625" y1="5.1834" x2="-5.20353125" y2="0.99453125" width="0.125" layer="2" curve="62.806533"/>
<wire x1="-1.45095" y1="4.84668125" x2="-4.882590625" y2="1.248234375" width="0.125" layer="2" curve="55.814547"/>
<wire x1="-1.704809375" y1="4.48526875" x2="-4.539553125" y2="1.502340625" width="0.125" layer="2" curve="47.966546"/>
<wire x1="-1.95903125" y1="4.09285" x2="-4.169178125" y2="1.756940625" width="0.125" layer="2" curve="39.041184"/>
<wire x1="-2.21365" y1="3.65986875" x2="-3.763721875" y2="2.012103125" width="0.125" layer="2" curve="28.712509"/>
<wire x1="-5.461640625" y1="0.919559375" x2="-0.869390625" y2="0.919559375" width="0.125" layer="15"/>
<wire x1="-0.619390625" y1="5.54581875" x2="-0.699559375" y2="5.53278125" width="0.125" layer="15"/>
<wire x1="-5.447659375" y1="0.986" x2="-5.461640625" y2="0.919559375" width="0.125" layer="15"/>
<wire x1="-0.369390625" y1="5.829009375" x2="-0.44663125" y2="5.820290625" width="0.125" layer="15"/>
<wire x1="-5.747890625" y1="0.73281875" x2="-5.757859375" y2="0.669559375" width="0.125" layer="15"/>
<wire x1="-5.75785" y1="0.669559375" x2="-0.619390625" y2="0.669559375" width="0.125" layer="15"/>
<wire x1="-0.119390625" y1="0.169559375" x2="-0.119390625" y2="6.099490625" width="0.125" layer="15"/>
<wire x1="-0.119390625" y1="6.099490625" x2="-0.119390625" y2="6.0995" width="0.125" layer="15"/>
<wire x1="-0.119390625" y1="6.099490625" x2="-0.1939" y2="6.094440625" width="0.125" layer="15"/>
<wire x1="-6.03348125" y1="0.4799" x2="-6.04011875" y2="0.419559375" width="0.125" layer="15"/>
<wire x1="-0.369390625" y1="0.419559375" x2="-0.369390625" y2="5.829009375" width="0.125" layer="15"/>
<wire x1="-0.619390625" y1="0.669559375" x2="-0.619390625" y2="5.54583125" width="0.125" layer="15"/>
<wire x1="-0.869390625" y1="5.24795" x2="-0.95275" y2="5.22975" width="0.125" layer="15"/>
<wire x1="-5.1303" y1="1.239509375" x2="-5.149190625" y2="1.169559375" width="0.125" layer="15"/>
<wire x1="-0.869390625" y1="0.919559375" x2="-0.869390625" y2="5.24795" width="0.125" layer="15"/>
<wire x1="-1.369390625" y1="4.59711875" x2="-1.45996875" y2="4.564959375" width="0.125" layer="15"/>
<wire x1="-4.429740625" y1="1.74768125" x2="-4.462509375" y2="1.669559375" width="0.125" layer="15"/>
<wire x1="-1.369390625" y1="1.419559375" x2="-1.369390625" y2="4.59711875" width="0.125" layer="15"/>
<wire x1="-1.119390625" y1="4.932840625" x2="-1.2062" y2="4.9084" width="0.125" layer="15"/>
<wire x1="-4.7925" y1="1.49338125" x2="-4.8175" y2="1.419559375" width="0.125" layer="15"/>
<wire x1="-1.119390625" y1="1.169559375" x2="-1.119390625" y2="4.93285" width="0.125" layer="15"/>
<wire x1="-1.619390625" y1="1.669559375" x2="-1.619390625" y2="4.236109375" width="0.125" layer="15"/>
<wire x1="-1.619390625" y1="4.236109375" x2="-1.71408125" y2="4.194190625" width="0.125" layer="15"/>
<wire x1="-4.035559375" y1="2.002490625" x2="-4.0785" y2="1.919559375" width="0.125" layer="15"/>
<wire x1="-6.306390625" y1="0.22723125" x2="-6.310240625" y2="0.169559375" width="0.125" layer="15"/>
<wire x1="-5.14918125" y1="1.169559375" x2="-1.119390625" y2="1.169559375" width="0.125" layer="15"/>
<wire x1="-4.817490625" y1="1.419559375" x2="-1.369390625" y2="1.419559375" width="0.125" layer="15"/>
<wire x1="-4.4625" y1="1.669559375" x2="-1.619390625" y2="1.669559375" width="0.125" layer="15"/>
<wire x1="-4.078490625" y1="1.919559375" x2="-1.869390625" y2="1.919559375" width="0.125" layer="15"/>
<wire x1="-6.310240625" y1="0.169559375" x2="-0.119390625" y2="0.169559375" width="0.125" layer="15"/>
<wire x1="-6.04011875" y1="0.419559375" x2="-0.369390625" y2="0.419559375" width="0.125" layer="15"/>
<wire x1="-1.869390625" y1="1.919559375" x2="-1.869390625" y2="3.843090625" width="0.125" layer="15"/>
<wire x1="-1.869390625" y1="3.843090625" x2="-1.968590625" y2="3.788390625" width="0.125" layer="15"/>
<wire x1="-3.60013125" y1="2.257909375" x2="-3.65695" y2="2.169559375" width="0.125" layer="15"/>
<wire x1="-0.699559375" y1="5.53278125" x2="-5.4476625" y2="0.986" width="0.125" layer="15" curve="68.882584"/>
<wire x1="-0.44663125" y1="5.820290625" x2="-5.74789375" y2="0.73281875" width="0.125" layer="15" curve="74.606751"/>
<wire x1="-0.1939" y1="6.094440625" x2="-6.033478125" y2="0.4799" width="0.125" layer="15" curve="79.838673"/>
<wire x1="-0.95275" y1="5.22975" x2="-5.130303125" y2="1.239509375" width="0.125" layer="15" curve="62.575342"/>
<wire x1="-1.45996875" y1="4.564959375" x2="-4.429740625" y2="1.74768125" width="0.125" layer="15" curve="47.699511"/>
<wire x1="-1.2062" y1="4.9084" x2="-4.792496875" y2="1.49338125" width="0.125" layer="15" curve="55.567393"/>
<wire x1="-1.71408125" y1="4.194190625" x2="-4.03555625" y2="2.0024875" width="0.125" layer="15" curve="38.748761"/>
<wire x1="-3.628059375" y1="5.097140625" x2="-6.3063875" y2="0.22723125" width="0.125" layer="15" curve="50.110238"/>
<wire x1="-1.968590625" y1="3.788390625" x2="-3.600128125" y2="2.257909375" width="0.125" layer="15" curve="28.385359"/>
<pad name="TOP_INT1_COIL0" x="-2.27" y="3.09" drill="0.2" diameter="0.3048" rot="R180"/>
<pad name="INT1_INT2_COIL0" x="-4.91" y="4.6" drill="0.2" diameter="0.3048" rot="R180"/>
<wire x1="-3.78" y1="5.27" x2="-3.6" y2="5.18" width="0.125" layer="2"/>
<pad name="EXITCOIL0" x="-2.74" y="2.64" drill="0.2" diameter="0.3048" rot="R180"/>
<smd name="INCOIL0" x="-4.37" y="4.56" dx="0.25" dy="0.25" layer="1" roundness="100" rot="R180"/>
<wire x1="5.559709375" y1="0.684559375" x2="5.54791875" y2="0.757090625" width="0.125" layer="1"/>
<wire x1="1.00758125" y1="5.51221875" x2="0.932209375" y2="5.52808125" width="0.125" layer="1"/>
<wire x1="5.26186875" y1="0.934559375" x2="5.24531875" y2="1.01038125" width="0.125" layer="1"/>
<wire x1="1.261" y1="5.194390625" x2="1.182209375" y2="5.21566875" width="0.125" layer="1"/>
<wire x1="4.946809375" y1="1.184559375" x2="4.92445" y2="1.263990625" width="0.125" layer="1"/>
<wire x1="1.51475" y1="4.85608125" x2="1.432209375" y2="4.88403125" width="0.125" layer="1"/>
<wire x1="0.24888125" y1="6.37213125" x2="0.182209375" y2="6.376590625" width="0.125" layer="1"/>
<wire x1="6.11331875" y1="0.184559375" x2="6.108790625" y2="0.25128125" width="0.125" layer="1"/>
<wire x1="0.50155" y1="6.098859375" x2="0.432209375" y2="6.1065" width="0.125" layer="1"/>
<wire x1="4.611140625" y1="1.434559375" x2="4.58153125" y2="1.51796875" width="0.125" layer="1"/>
<wire x1="1.76888125" y1="4.49275" x2="1.682209375" y2="4.5291" width="0.125" layer="1"/>
<wire x1="0.682209375" y1="0.684559375" x2="5.559709375" y2="0.684559375" width="0.125" layer="1"/>
<wire x1="0.932209375" y1="0.934559375" x2="5.26186875" y2="0.934559375" width="0.125" layer="1"/>
<wire x1="0.432209375" y1="0.434559375" x2="5.842859375" y2="0.434559375" width="0.125" layer="1"/>
<wire x1="3.85726875" y1="1.934559375" x2="3.80616875" y2="2.02723125" width="0.125" layer="1"/>
<wire x1="2.278509375" y1="3.661790625" x2="2.182209375" y2="3.72371875" width="0.125" layer="1"/>
<wire x1="0.182209375" y1="0.184559375" x2="6.11331875" y2="0.184559375" width="0.125" layer="1"/>
<wire x1="1.182209375" y1="5.21566875" x2="1.182209375" y2="1.184559375" width="0.125" layer="1"/>
<wire x1="1.682209375" y1="1.684559375" x2="4.2502" y2="1.684559375" width="0.125" layer="1"/>
<wire x1="1.182209375" y1="1.184559375" x2="4.946809375" y2="1.184559375" width="0.125" layer="1"/>
<wire x1="2.182209375" y1="3.72371875" x2="2.182209375" y2="2.184559375" width="0.125" layer="1"/>
<wire x1="1.432209375" y1="1.434559375" x2="4.611140625" y2="1.434559375" width="0.125" layer="1"/>
<wire x1="1.932209375" y1="1.934559375" x2="3.85726875" y2="1.934559375" width="0.125" layer="1"/>
<wire x1="5.842859375" y1="0.434559375" x2="5.83501875" y2="0.504059375" width="0.125" layer="1"/>
<wire x1="0.754440625" y1="5.81288125" x2="0.682209375" y2="5.824259375" width="0.125" layer="1"/>
<wire x1="0.432209375" y1="6.1065" x2="0.432209375" y2="0.434559375" width="0.125" layer="1"/>
<wire x1="1.682209375" y1="4.5291" x2="1.682209375" y2="1.684559375" width="0.125" layer="1"/>
<wire x1="0.932209375" y1="5.52808125" x2="0.932209375" y2="0.934559375" width="0.125" layer="1"/>
<wire x1="0.182209375" y1="6.376590625" x2="0.182209375" y2="0.184559375" width="0.125" layer="1"/>
<wire x1="1.432209375" y1="4.88403125" x2="1.432209375" y2="1.434559375" width="0.125" layer="1"/>
<wire x1="0.682209375" y1="5.824259375" x2="0.682209375" y2="0.684559375" width="0.125" layer="1"/>
<wire x1="4.2502" y1="1.684559375" x2="4.211340625" y2="1.772359375" width="0.125" layer="1"/>
<wire x1="2.023440625" y1="4.09793125" x2="1.932209375" y2="4.14516875" width="0.125" layer="1"/>
<wire x1="1.932209375" y1="4.14516875" x2="1.932209375" y2="1.934559375" width="0.125" layer="1"/>
<wire x1="5.54791875" y1="0.757090625" x2="1.00758125" y2="5.512225" width="0.125" layer="1" curve="68.882487"/>
<wire x1="5.24531875" y1="1.01038125" x2="1.261" y2="5.194390625" width="0.125" layer="1" curve="62.57537"/>
<wire x1="4.92445" y1="1.263990625" x2="1.51475" y2="4.856078125" width="0.125" layer="1" curve="55.567478"/>
<wire x1="4.547459375" y1="4.3663" x2="0.24888125" y2="6.372128125" width="0.125" layer="1" curve="42.37391"/>
<wire x1="6.108790625" y1="0.25128125" x2="0.50155" y2="6.098859375" width="0.125" layer="1" curve="79.838592"/>
<wire x1="4.58153125" y1="1.51796875" x2="1.76888125" y2="4.492746875" width="0.125" layer="1" curve="47.699477"/>
<wire x1="3.80616875" y1="2.02723125" x2="2.278509375" y2="3.661790625" width="0.125" layer="1" curve="28.385448"/>
<wire x1="5.83501875" y1="0.504059375" x2="0.7544375" y2="5.812871875" width="0.125" layer="1" curve="74.606876"/>
<wire x1="4.211340625" y1="1.772359375" x2="2.02344375" y2="4.0979375" width="0.125" layer="1" curve="38.748771"/>
<wire x1="0.687509375" y1="5.576609375" x2="0.687509375" y2="0.67151875" width="0.125" layer="2"/>
<wire x1="5.52678125" y1="0.92151875" x2="5.509859375" y2="1.00411875" width="0.125" layer="2"/>
<wire x1="0.75116875" y1="5.56616875" x2="0.687509375" y2="5.57661875" width="0.125" layer="2"/>
<wire x1="0.437509375" y1="5.86023125" x2="0.437509375" y2="0.42151875" width="0.125" layer="2"/>
<wire x1="5.82145" y1="0.67151875" x2="5.80933125" y2="0.7511" width="0.125" layer="2"/>
<wire x1="0.49811875" y1="5.853309375" x2="0.437509375" y2="5.860240625" width="0.125" layer="2"/>
<wire x1="6.37118125" y1="0.17151875" x2="6.366559375" y2="0.2457" width="0.125" layer="2"/>
<wire x1="0.187509375" y1="0.17151875" x2="6.371190625" y2="0.17151875" width="0.125" layer="2"/>
<wire x1="6.10233125" y1="0.42151875" x2="6.09425" y2="0.4983" width="0.125" layer="2"/>
<wire x1="0.24531875" y1="6.127109375" x2="0.187509375" y2="6.131109375" width="0.125" layer="2"/>
<wire x1="0.437509375" y1="0.42151875" x2="6.10233125" y2="0.42151875" width="0.125" layer="2"/>
<wire x1="0.687509375" y1="0.67151875" x2="5.821459375" y2="0.67151875" width="0.125" layer="2"/>
<wire x1="0.937509375" y1="0.92151875" x2="5.526790625" y2="0.92151875" width="0.125" layer="2"/>
<wire x1="1.187509375" y1="1.17151875" x2="5.21606875" y2="1.17151875" width="0.125" layer="2"/>
<wire x1="5.21606875" y1="1.17151875" x2="5.1934" y2="1.257390625" width="0.125" layer="2"/>
<wire x1="1.00453125" y1="5.26353125" x2="0.937509375" y2="5.27826875" width="0.125" layer="2"/>
<wire x1="4.886359375" y1="1.42151875" x2="4.85668125" y2="1.51095" width="0.125" layer="2"/>
<wire x1="1.25823125" y1="4.94258125" x2="1.187509375" y2="4.96263125" width="0.125" layer="2"/>
<wire x1="1.437509375" y1="1.42151875" x2="4.886359375" y2="1.42151875" width="0.125" layer="2"/>
<wire x1="4.53368125" y1="1.67151875" x2="4.49526875" y2="1.764809375" width="0.125" layer="2"/>
<wire x1="1.512340625" y1="4.59955" x2="1.437509375" y2="4.62628125" width="0.125" layer="2"/>
<wire x1="1.687509375" y1="1.67151875" x2="4.53368125" y2="1.67151875" width="0.125" layer="2"/>
<wire x1="4.152459375" y1="1.92151875" x2="4.10285" y2="2.01903125" width="0.125" layer="2"/>
<wire x1="1.766940625" y1="4.22918125" x2="1.687509375" y2="4.26453125" width="0.125" layer="2"/>
<wire x1="1.937509375" y1="1.92151875" x2="4.152459375" y2="1.92151875" width="0.125" layer="2"/>
<wire x1="0.937509375" y1="5.278259375" x2="0.937509375" y2="0.92151875" width="0.125" layer="2"/>
<wire x1="1.187509375" y1="4.96261875" x2="1.187509375" y2="1.17151875" width="0.125" layer="2"/>
<wire x1="1.437509375" y1="4.62626875" x2="1.437509375" y2="1.42151875" width="0.125" layer="2"/>
<wire x1="1.687509375" y1="4.26453125" x2="1.687509375" y2="1.67151875" width="0.125" layer="2"/>
<wire x1="2.0221" y1="3.82371875" x2="1.937509375" y2="3.870609375" width="0.125" layer="2"/>
<wire x1="0.187509375" y1="6.131109375" x2="0.187509375" y2="0.17151875" width="0.125" layer="2"/>
<wire x1="1.937509375" y1="3.870609375" x2="1.937509375" y2="1.92151875" width="0.125" layer="2"/>
<wire x1="5.509859375" y1="1.00411875" x2="0.75116875" y2="5.56616875" width="0.125" layer="2" curve="69.100418"/>
<wire x1="5.80933125" y1="0.7511" x2="0.49811875" y2="5.8533125" width="0.125" layer="2" curve="74.813503"/>
<wire x1="6.366559375" y1="0.2457" x2="4.9632625" y2="3.901953125" width="0.125" layer="2" curve="34.724335"/>
<wire x1="6.09425" y1="0.4983" x2="0.24531875" y2="6.12710625" width="0.125" layer="2" curve="80.03571"/>
<wire x1="5.1934" y1="1.257390625" x2="1.00453125" y2="5.26353125" width="0.125" layer="2" curve="62.806533"/>
<wire x1="4.85668125" y1="1.51095" x2="1.258234375" y2="4.942590625" width="0.125" layer="2" curve="55.814547"/>
<wire x1="4.49526875" y1="1.764809375" x2="1.512340625" y2="4.599553125" width="0.125" layer="2" curve="47.966546"/>
<wire x1="4.10285" y1="2.01903125" x2="1.766940625" y2="4.229178125" width="0.125" layer="2" curve="39.041184"/>
<wire x1="3.66986875" y1="2.27365" x2="2.022103125" y2="3.823721875" width="0.125" layer="2" curve="28.712509"/>
<wire x1="0.929559375" y1="5.521640625" x2="0.929559375" y2="0.929390625" width="0.125" layer="15"/>
<wire x1="5.55581875" y1="0.679390625" x2="5.54278125" y2="0.759559375" width="0.125" layer="15"/>
<wire x1="0.996" y1="5.507659375" x2="0.929559375" y2="5.521640625" width="0.125" layer="15"/>
<wire x1="5.839009375" y1="0.429390625" x2="5.830290625" y2="0.50663125" width="0.125" layer="15"/>
<wire x1="0.74281875" y1="5.807890625" x2="0.679559375" y2="5.817859375" width="0.125" layer="15"/>
<wire x1="0.679559375" y1="5.81785" x2="0.679559375" y2="0.679390625" width="0.125" layer="15"/>
<wire x1="0.179559375" y1="0.179390625" x2="6.109490625" y2="0.179390625" width="0.125" layer="15"/>
<wire x1="6.109490625" y1="0.179390625" x2="6.1095" y2="0.179390625" width="0.125" layer="15"/>
<wire x1="6.109490625" y1="0.179390625" x2="6.104440625" y2="0.2539" width="0.125" layer="15"/>
<wire x1="0.4899" y1="6.09348125" x2="0.429559375" y2="6.10011875" width="0.125" layer="15"/>
<wire x1="0.429559375" y1="0.429390625" x2="5.839009375" y2="0.429390625" width="0.125" layer="15"/>
<wire x1="0.679559375" y1="0.679390625" x2="5.55583125" y2="0.679390625" width="0.125" layer="15"/>
<wire x1="5.25795" y1="0.929390625" x2="5.23975" y2="1.01275" width="0.125" layer="15"/>
<wire x1="1.249509375" y1="5.1903" x2="1.179559375" y2="5.209190625" width="0.125" layer="15"/>
<wire x1="0.929559375" y1="0.929390625" x2="5.25795" y2="0.929390625" width="0.125" layer="15"/>
<wire x1="4.60711875" y1="1.429390625" x2="4.574959375" y2="1.51996875" width="0.125" layer="15"/>
<wire x1="1.75768125" y1="4.489740625" x2="1.679559375" y2="4.522509375" width="0.125" layer="15"/>
<wire x1="1.429559375" y1="1.429390625" x2="4.60711875" y2="1.429390625" width="0.125" layer="15"/>
<wire x1="4.942840625" y1="1.179390625" x2="4.9184" y2="1.2662" width="0.125" layer="15"/>
<wire x1="1.50338125" y1="4.8525" x2="1.429559375" y2="4.8775" width="0.125" layer="15"/>
<wire x1="1.179559375" y1="1.179390625" x2="4.94285" y2="1.179390625" width="0.125" layer="15"/>
<wire x1="1.679559375" y1="1.679390625" x2="4.246109375" y2="1.679390625" width="0.125" layer="15"/>
<wire x1="4.246109375" y1="1.679390625" x2="4.204190625" y2="1.77408125" width="0.125" layer="15"/>
<wire x1="2.012490625" y1="4.095559375" x2="1.929559375" y2="4.1385" width="0.125" layer="15"/>
<wire x1="0.23723125" y1="6.366390625" x2="0.179559375" y2="6.370240625" width="0.125" layer="15"/>
<wire x1="1.179559375" y1="5.20918125" x2="1.179559375" y2="1.179390625" width="0.125" layer="15"/>
<wire x1="1.429559375" y1="4.877490625" x2="1.429559375" y2="1.429390625" width="0.125" layer="15"/>
<wire x1="1.679559375" y1="4.5225" x2="1.679559375" y2="1.679390625" width="0.125" layer="15"/>
<wire x1="1.929559375" y1="4.138490625" x2="1.929559375" y2="1.929390625" width="0.125" layer="15"/>
<wire x1="0.179559375" y1="6.370240625" x2="0.179559375" y2="0.179390625" width="0.125" layer="15"/>
<wire x1="0.429559375" y1="6.10011875" x2="0.429559375" y2="0.429390625" width="0.125" layer="15"/>
<wire x1="1.929559375" y1="1.929390625" x2="3.853090625" y2="1.929390625" width="0.125" layer="15"/>
<wire x1="3.853090625" y1="1.929390625" x2="3.798390625" y2="2.028590625" width="0.125" layer="15"/>
<wire x1="2.267909375" y1="3.66013125" x2="2.179559375" y2="3.71695" width="0.125" layer="15"/>
<wire x1="5.54278125" y1="0.759559375" x2="0.996" y2="5.5076625" width="0.125" layer="15" curve="68.882584"/>
<wire x1="5.830290625" y1="0.50663125" x2="0.74281875" y2="5.80789375" width="0.125" layer="15" curve="74.606751"/>
<wire x1="6.104440625" y1="0.2539" x2="0.4899" y2="6.093478125" width="0.125" layer="15" curve="79.838673"/>
<wire x1="5.23975" y1="1.01275" x2="1.249509375" y2="5.190303125" width="0.125" layer="15" curve="62.575342"/>
<wire x1="4.574959375" y1="1.51996875" x2="1.75768125" y2="4.489740625" width="0.125" layer="15" curve="47.699511"/>
<wire x1="4.9184" y1="1.2662" x2="1.50338125" y2="4.852496875" width="0.125" layer="15" curve="55.567393"/>
<wire x1="4.204190625" y1="1.77408125" x2="2.0124875" y2="4.09555625" width="0.125" layer="15" curve="38.748761"/>
<wire x1="5.107140625" y1="3.688059375" x2="0.23723125" y2="6.3663875" width="0.125" layer="15" curve="50.110238"/>
<wire x1="3.798390625" y1="2.028590625" x2="2.267909375" y2="3.660128125" width="0.125" layer="15" curve="28.385359"/>
<pad name="TOP_INT1_COIL12B" x="3.12" y="2.3" drill="0.2" diameter="0.3048" rot="R90"/>
<pad name="INT1_INT2_COIL2B" x="5.31" y="3.83" drill="0.2" diameter="0.3048" rot="R90"/>
<pad name="EXITCOIL2B" x="2.67" y="2.78" drill="0.2" diameter="0.3048" rot="R90"/>
<smd name="INCOIL2B" x="4.57" y="4.43" dx="0.25" dy="0.25" layer="1" roundness="100" rot="R90"/>
<wire x1="0.684559375" y1="-5.529709375" x2="0.757090625" y2="-5.51791875" width="0.125" layer="1"/>
<wire x1="5.51221875" y1="-0.97758125" x2="5.52808125" y2="-0.902209375" width="0.125" layer="1"/>
<wire x1="0.934559375" y1="-5.23186875" x2="1.01038125" y2="-5.21531875" width="0.125" layer="1"/>
<wire x1="5.194390625" y1="-1.231" x2="5.21566875" y2="-1.152209375" width="0.125" layer="1"/>
<wire x1="1.184559375" y1="-4.916809375" x2="1.263990625" y2="-4.89445" width="0.125" layer="1"/>
<wire x1="4.85608125" y1="-1.48475" x2="4.88403125" y2="-1.402209375" width="0.125" layer="1"/>
<wire x1="6.37213125" y1="-0.21888125" x2="6.376590625" y2="-0.152209375" width="0.125" layer="1"/>
<wire x1="0.184559375" y1="-6.08331875" x2="0.25128125" y2="-6.078790625" width="0.125" layer="1"/>
<wire x1="6.098859375" y1="-0.47155" x2="6.1065" y2="-0.402209375" width="0.125" layer="1"/>
<wire x1="1.434559375" y1="-4.581140625" x2="1.51796875" y2="-4.55153125" width="0.125" layer="1"/>
<wire x1="4.49275" y1="-1.73888125" x2="4.5291" y2="-1.652209375" width="0.125" layer="1"/>
<wire x1="0.684559375" y1="-0.652209375" x2="0.684559375" y2="-5.529709375" width="0.125" layer="1"/>
<wire x1="0.934559375" y1="-0.902209375" x2="0.934559375" y2="-5.23186875" width="0.125" layer="1"/>
<wire x1="0.434559375" y1="-0.402209375" x2="0.434559375" y2="-5.812859375" width="0.125" layer="1"/>
<wire x1="1.934559375" y1="-3.82726875" x2="2.02723125" y2="-3.77616875" width="0.125" layer="1"/>
<wire x1="3.661790625" y1="-2.248509375" x2="3.72371875" y2="-2.152209375" width="0.125" layer="1"/>
<wire x1="0.184559375" y1="-0.152209375" x2="0.184559375" y2="-6.08331875" width="0.125" layer="1"/>
<wire x1="5.21566875" y1="-1.152209375" x2="1.184559375" y2="-1.152209375" width="0.125" layer="1"/>
<wire x1="1.684559375" y1="-1.652209375" x2="1.684559375" y2="-4.2202" width="0.125" layer="1"/>
<wire x1="1.184559375" y1="-1.152209375" x2="1.184559375" y2="-4.916809375" width="0.125" layer="1"/>
<wire x1="3.72371875" y1="-2.152209375" x2="2.184559375" y2="-2.152209375" width="0.125" layer="1"/>
<wire x1="1.434559375" y1="-1.402209375" x2="1.434559375" y2="-4.581140625" width="0.125" layer="1"/>
<wire x1="1.934559375" y1="-1.902209375" x2="1.934559375" y2="-3.82726875" width="0.125" layer="1"/>
<wire x1="0.434559375" y1="-5.812859375" x2="0.504059375" y2="-5.80501875" width="0.125" layer="1"/>
<wire x1="5.81288125" y1="-0.724440625" x2="5.824259375" y2="-0.652209375" width="0.125" layer="1"/>
<wire x1="6.1065" y1="-0.402209375" x2="0.434559375" y2="-0.402209375" width="0.125" layer="1"/>
<wire x1="4.5291" y1="-1.652209375" x2="1.684559375" y2="-1.652209375" width="0.125" layer="1"/>
<wire x1="5.52808125" y1="-0.902209375" x2="0.934559375" y2="-0.902209375" width="0.125" layer="1"/>
<wire x1="6.376590625" y1="-0.152209375" x2="0.184559375" y2="-0.152209375" width="0.125" layer="1"/>
<wire x1="4.88403125" y1="-1.402209375" x2="1.434559375" y2="-1.402209375" width="0.125" layer="1"/>
<wire x1="5.824259375" y1="-0.652209375" x2="0.684559375" y2="-0.652209375" width="0.125" layer="1"/>
<wire x1="1.684559375" y1="-4.2202" x2="1.772359375" y2="-4.181340625" width="0.125" layer="1"/>
<wire x1="4.09793125" y1="-1.993440625" x2="4.14516875" y2="-1.902209375" width="0.125" layer="1"/>
<wire x1="4.14516875" y1="-1.902209375" x2="1.934559375" y2="-1.902209375" width="0.125" layer="1"/>
<wire x1="0.757090625" y1="-5.51791875" x2="5.512225" y2="-0.97758125" width="0.125" layer="1" curve="68.882487"/>
<wire x1="1.01038125" y1="-5.21531875" x2="5.194390625" y2="-1.231" width="0.125" layer="1" curve="62.57537"/>
<wire x1="1.263990625" y1="-4.89445" x2="4.856078125" y2="-1.48475" width="0.125" layer="1" curve="55.567478"/>
<wire x1="4.3663" y1="-4.517459375" x2="6.372128125" y2="-0.21888125" width="0.125" layer="1" curve="42.37391"/>
<wire x1="0.25128125" y1="-6.078790625" x2="6.098859375" y2="-0.47155" width="0.125" layer="1" curve="79.838592"/>
<wire x1="1.51796875" y1="-4.55153125" x2="4.492746875" y2="-1.73888125" width="0.125" layer="1" curve="47.699477"/>
<wire x1="2.02723125" y1="-3.77616875" x2="3.661790625" y2="-2.248509375" width="0.125" layer="1" curve="28.385448"/>
<wire x1="0.504059375" y1="-5.80501875" x2="5.812871875" y2="-0.7244375" width="0.125" layer="1" curve="74.606876"/>
<wire x1="1.772359375" y1="-4.181340625" x2="4.0979375" y2="-1.99344375" width="0.125" layer="1" curve="38.748771"/>
<wire x1="5.576609375" y1="-0.657509375" x2="0.67151875" y2="-0.657509375" width="0.125" layer="2"/>
<wire x1="0.92151875" y1="-5.49678125" x2="1.00411875" y2="-5.479859375" width="0.125" layer="2"/>
<wire x1="5.56616875" y1="-0.72116875" x2="5.57661875" y2="-0.657509375" width="0.125" layer="2"/>
<wire x1="5.86023125" y1="-0.407509375" x2="0.42151875" y2="-0.407509375" width="0.125" layer="2"/>
<wire x1="0.67151875" y1="-5.79145" x2="0.7511" y2="-5.77933125" width="0.125" layer="2"/>
<wire x1="5.853309375" y1="-0.46811875" x2="5.860240625" y2="-0.407509375" width="0.125" layer="2"/>
<wire x1="0.17151875" y1="-6.34118125" x2="0.2457" y2="-6.336559375" width="0.125" layer="2"/>
<wire x1="0.17151875" y1="-0.157509375" x2="0.17151875" y2="-6.341190625" width="0.125" layer="2"/>
<wire x1="0.42151875" y1="-6.07233125" x2="0.4983" y2="-6.06425" width="0.125" layer="2"/>
<wire x1="6.127109375" y1="-0.21531875" x2="6.131109375" y2="-0.157509375" width="0.125" layer="2"/>
<wire x1="0.42151875" y1="-0.407509375" x2="0.42151875" y2="-6.07233125" width="0.125" layer="2"/>
<wire x1="0.67151875" y1="-0.657509375" x2="0.67151875" y2="-5.791459375" width="0.125" layer="2"/>
<wire x1="0.92151875" y1="-0.907509375" x2="0.92151875" y2="-5.496790625" width="0.125" layer="2"/>
<wire x1="1.17151875" y1="-1.157509375" x2="1.17151875" y2="-5.18606875" width="0.125" layer="2"/>
<wire x1="1.17151875" y1="-5.18606875" x2="1.257390625" y2="-5.1634" width="0.125" layer="2"/>
<wire x1="5.26353125" y1="-0.97453125" x2="5.27826875" y2="-0.907509375" width="0.125" layer="2"/>
<wire x1="1.42151875" y1="-4.856359375" x2="1.51095" y2="-4.82668125" width="0.125" layer="2"/>
<wire x1="4.94258125" y1="-1.22823125" x2="4.96263125" y2="-1.157509375" width="0.125" layer="2"/>
<wire x1="1.42151875" y1="-1.407509375" x2="1.42151875" y2="-4.856359375" width="0.125" layer="2"/>
<wire x1="1.67151875" y1="-4.50368125" x2="1.764809375" y2="-4.46526875" width="0.125" layer="2"/>
<wire x1="4.59955" y1="-1.482340625" x2="4.62628125" y2="-1.407509375" width="0.125" layer="2"/>
<wire x1="1.67151875" y1="-1.657509375" x2="1.67151875" y2="-4.50368125" width="0.125" layer="2"/>
<wire x1="1.92151875" y1="-4.122459375" x2="2.01903125" y2="-4.07285" width="0.125" layer="2"/>
<wire x1="4.22918125" y1="-1.736940625" x2="4.26453125" y2="-1.657509375" width="0.125" layer="2"/>
<wire x1="1.92151875" y1="-1.907509375" x2="1.92151875" y2="-4.122459375" width="0.125" layer="2"/>
<wire x1="5.278259375" y1="-0.907509375" x2="0.92151875" y2="-0.907509375" width="0.125" layer="2"/>
<wire x1="4.96261875" y1="-1.157509375" x2="1.17151875" y2="-1.157509375" width="0.125" layer="2"/>
<wire x1="4.62626875" y1="-1.407509375" x2="1.42151875" y2="-1.407509375" width="0.125" layer="2"/>
<wire x1="4.26453125" y1="-1.657509375" x2="1.67151875" y2="-1.657509375" width="0.125" layer="2"/>
<wire x1="3.82371875" y1="-1.9921" x2="3.870609375" y2="-1.907509375" width="0.125" layer="2"/>
<wire x1="6.131109375" y1="-0.157509375" x2="0.17151875" y2="-0.157509375" width="0.125" layer="2"/>
<wire x1="3.870609375" y1="-1.907509375" x2="1.92151875" y2="-1.907509375" width="0.125" layer="2"/>
<wire x1="1.00411875" y1="-5.479859375" x2="5.56616875" y2="-0.72116875" width="0.125" layer="2" curve="69.100418"/>
<wire x1="0.7511" y1="-5.77933125" x2="5.8533125" y2="-0.46811875" width="0.125" layer="2" curve="74.813503"/>
<wire x1="0.2457" y1="-6.336559375" x2="3.901953125" y2="-4.9332625" width="0.125" layer="2" curve="34.724335"/>
<wire x1="0.4983" y1="-6.06425" x2="6.12710625" y2="-0.21531875" width="0.125" layer="2" curve="80.03571"/>
<wire x1="1.257390625" y1="-5.1634" x2="5.26353125" y2="-0.97453125" width="0.125" layer="2" curve="62.806533"/>
<wire x1="1.51095" y1="-4.82668125" x2="4.942590625" y2="-1.228234375" width="0.125" layer="2" curve="55.814547"/>
<wire x1="1.764809375" y1="-4.46526875" x2="4.599553125" y2="-1.482340625" width="0.125" layer="2" curve="47.966546"/>
<wire x1="2.01903125" y1="-4.07285" x2="4.229178125" y2="-1.736940625" width="0.125" layer="2" curve="39.041184"/>
<wire x1="2.27365" y1="-3.63986875" x2="3.823721875" y2="-1.992103125" width="0.125" layer="2" curve="28.712509"/>
<wire x1="5.521640625" y1="-0.899559375" x2="0.929390625" y2="-0.899559375" width="0.125" layer="15"/>
<wire x1="0.679390625" y1="-5.52581875" x2="0.759559375" y2="-5.51278125" width="0.125" layer="15"/>
<wire x1="5.507659375" y1="-0.966" x2="5.521640625" y2="-0.899559375" width="0.125" layer="15"/>
<wire x1="0.429390625" y1="-5.809009375" x2="0.50663125" y2="-5.800290625" width="0.125" layer="15"/>
<wire x1="5.807890625" y1="-0.71281875" x2="5.817859375" y2="-0.649559375" width="0.125" layer="15"/>
<wire x1="5.81785" y1="-0.649559375" x2="0.679390625" y2="-0.649559375" width="0.125" layer="15"/>
<wire x1="0.179390625" y1="-0.149559375" x2="0.179390625" y2="-6.079490625" width="0.125" layer="15"/>
<wire x1="0.179390625" y1="-6.079490625" x2="0.179390625" y2="-6.0795" width="0.125" layer="15"/>
<wire x1="0.179390625" y1="-6.079490625" x2="0.2539" y2="-6.074440625" width="0.125" layer="15"/>
<wire x1="6.09348125" y1="-0.4599" x2="6.10011875" y2="-0.399559375" width="0.125" layer="15"/>
<wire x1="0.429390625" y1="-0.399559375" x2="0.429390625" y2="-5.809009375" width="0.125" layer="15"/>
<wire x1="0.679390625" y1="-0.649559375" x2="0.679390625" y2="-5.52583125" width="0.125" layer="15"/>
<wire x1="0.929390625" y1="-5.22795" x2="1.01275" y2="-5.20975" width="0.125" layer="15"/>
<wire x1="5.1903" y1="-1.219509375" x2="5.209190625" y2="-1.149559375" width="0.125" layer="15"/>
<wire x1="0.929390625" y1="-0.899559375" x2="0.929390625" y2="-5.22795" width="0.125" layer="15"/>
<wire x1="1.429390625" y1="-4.57711875" x2="1.51996875" y2="-4.544959375" width="0.125" layer="15"/>
<wire x1="4.489740625" y1="-1.72768125" x2="4.522509375" y2="-1.649559375" width="0.125" layer="15"/>
<wire x1="1.429390625" y1="-1.399559375" x2="1.429390625" y2="-4.57711875" width="0.125" layer="15"/>
<wire x1="1.179390625" y1="-4.912840625" x2="1.2662" y2="-4.8884" width="0.125" layer="15"/>
<wire x1="4.8525" y1="-1.47338125" x2="4.8775" y2="-1.399559375" width="0.125" layer="15"/>
<wire x1="1.179390625" y1="-1.149559375" x2="1.179390625" y2="-4.91285" width="0.125" layer="15"/>
<wire x1="1.679390625" y1="-1.649559375" x2="1.679390625" y2="-4.216109375" width="0.125" layer="15"/>
<wire x1="1.679390625" y1="-4.216109375" x2="1.77408125" y2="-4.174190625" width="0.125" layer="15"/>
<wire x1="4.095559375" y1="-1.982490625" x2="4.1385" y2="-1.899559375" width="0.125" layer="15"/>
<wire x1="6.366390625" y1="-0.20723125" x2="6.370240625" y2="-0.149559375" width="0.125" layer="15"/>
<wire x1="5.20918125" y1="-1.149559375" x2="1.179390625" y2="-1.149559375" width="0.125" layer="15"/>
<wire x1="4.877490625" y1="-1.399559375" x2="1.429390625" y2="-1.399559375" width="0.125" layer="15"/>
<wire x1="4.5225" y1="-1.649559375" x2="1.679390625" y2="-1.649559375" width="0.125" layer="15"/>
<wire x1="4.138490625" y1="-1.899559375" x2="1.929390625" y2="-1.899559375" width="0.125" layer="15"/>
<wire x1="6.370240625" y1="-0.149559375" x2="0.179390625" y2="-0.149559375" width="0.125" layer="15"/>
<wire x1="6.10011875" y1="-0.399559375" x2="0.429390625" y2="-0.399559375" width="0.125" layer="15"/>
<wire x1="1.929390625" y1="-1.899559375" x2="1.929390625" y2="-3.823090625" width="0.125" layer="15"/>
<wire x1="1.929390625" y1="-3.823090625" x2="2.028590625" y2="-3.768390625" width="0.125" layer="15"/>
<wire x1="3.66013125" y1="-2.237909375" x2="3.71695" y2="-2.149559375" width="0.125" layer="15"/>
<wire x1="0.759559375" y1="-5.51278125" x2="5.5076625" y2="-0.966" width="0.125" layer="15" curve="68.882584"/>
<wire x1="0.50663125" y1="-5.800290625" x2="5.80789375" y2="-0.71281875" width="0.125" layer="15" curve="74.606751"/>
<wire x1="0.2539" y1="-6.074440625" x2="6.093478125" y2="-0.4599" width="0.125" layer="15" curve="79.838673"/>
<wire x1="1.01275" y1="-5.20975" x2="5.190303125" y2="-1.219509375" width="0.125" layer="15" curve="62.575342"/>
<wire x1="1.51996875" y1="-4.544959375" x2="4.489740625" y2="-1.72768125" width="0.125" layer="15" curve="47.699511"/>
<wire x1="1.2662" y1="-4.8884" x2="4.852496875" y2="-1.47338125" width="0.125" layer="15" curve="55.567393"/>
<wire x1="1.77408125" y1="-4.174190625" x2="4.09555625" y2="-1.9824875" width="0.125" layer="15" curve="38.748761"/>
<wire x1="3.688059375" y1="-5.077140625" x2="6.3663875" y2="-0.20723125" width="0.125" layer="15" curve="50.110238"/>
<wire x1="2.028590625" y1="-3.768390625" x2="3.660128125" y2="-2.237909375" width="0.125" layer="15" curve="28.385359"/>
<pad name="TOP_INT1_COIL3" x="2.32" y="-3.06" drill="0.2" diameter="0.3048"/>
<pad name="INT1_INT2_COIL3" x="3.09" y="-5.88" drill="0.2" diameter="0.3048"/>
<pad name="EXITCOIL3" x="2.89" y="-2.55" drill="0.2" diameter="0.3048" rot="R90"/>
<smd name="INCOIL3" x="4.43" y="-4.54" dx="0.25" dy="0.25" layer="1" roundness="100"/>
<wire x1="-5.489709375" y1="-0.654559375" x2="-5.47791875" y2="-0.727090625" width="0.125" layer="1"/>
<wire x1="-0.93758125" y1="-5.48221875" x2="-0.862209375" y2="-5.49808125" width="0.125" layer="1"/>
<wire x1="-5.19186875" y1="-0.904559375" x2="-5.17531875" y2="-0.98038125" width="0.125" layer="1"/>
<wire x1="-1.191" y1="-5.164390625" x2="-1.112209375" y2="-5.18566875" width="0.125" layer="1"/>
<wire x1="-4.876809375" y1="-1.154559375" x2="-4.85445" y2="-1.233990625" width="0.125" layer="1"/>
<wire x1="-1.44475" y1="-4.82608125" x2="-1.362209375" y2="-4.85403125" width="0.125" layer="1"/>
<wire x1="-0.17888125" y1="-6.34213125" x2="-0.112209375" y2="-6.346590625" width="0.125" layer="1"/>
<wire x1="-6.04331875" y1="-0.154559375" x2="-6.038790625" y2="-0.22128125" width="0.125" layer="1"/>
<wire x1="-0.43155" y1="-6.068859375" x2="-0.362209375" y2="-6.0765" width="0.125" layer="1"/>
<wire x1="-4.541140625" y1="-1.404559375" x2="-4.51153125" y2="-1.48796875" width="0.125" layer="1"/>
<wire x1="-1.69888125" y1="-4.46275" x2="-1.612209375" y2="-4.4991" width="0.125" layer="1"/>
<wire x1="-0.612209375" y1="-0.654559375" x2="-5.489709375" y2="-0.654559375" width="0.125" layer="1"/>
<wire x1="-0.862209375" y1="-0.904559375" x2="-5.19186875" y2="-0.904559375" width="0.125" layer="1"/>
<wire x1="-0.362209375" y1="-0.404559375" x2="-5.772859375" y2="-0.404559375" width="0.125" layer="1"/>
<wire x1="-3.78726875" y1="-1.904559375" x2="-3.73616875" y2="-1.99723125" width="0.125" layer="1"/>
<wire x1="-2.208509375" y1="-3.631790625" x2="-2.112209375" y2="-3.69371875" width="0.125" layer="1"/>
<wire x1="-0.112209375" y1="-0.154559375" x2="-6.04331875" y2="-0.154559375" width="0.125" layer="1"/>
<wire x1="-1.112209375" y1="-5.18566875" x2="-1.112209375" y2="-1.154559375" width="0.125" layer="1"/>
<wire x1="-1.612209375" y1="-1.654559375" x2="-4.1802" y2="-1.654559375" width="0.125" layer="1"/>
<wire x1="-1.112209375" y1="-1.154559375" x2="-4.876809375" y2="-1.154559375" width="0.125" layer="1"/>
<wire x1="-1.362209375" y1="-1.404559375" x2="-4.541140625" y2="-1.404559375" width="0.125" layer="1"/>
<wire x1="-1.862209375" y1="-1.904559375" x2="-3.78726875" y2="-1.904559375" width="0.125" layer="1"/>
<wire x1="-5.772859375" y1="-0.404559375" x2="-5.76501875" y2="-0.474059375" width="0.125" layer="1"/>
<wire x1="-0.684440625" y1="-5.78288125" x2="-0.612209375" y2="-5.794259375" width="0.125" layer="1"/>
<wire x1="-0.362209375" y1="-6.0765" x2="-0.362209375" y2="-0.404559375" width="0.125" layer="1"/>
<wire x1="-1.612209375" y1="-4.4991" x2="-1.612209375" y2="-1.654559375" width="0.125" layer="1"/>
<wire x1="-0.862209375" y1="-5.49808125" x2="-0.862209375" y2="-0.904559375" width="0.125" layer="1"/>
<wire x1="-0.112209375" y1="-6.346590625" x2="-0.112209375" y2="-0.154559375" width="0.125" layer="1"/>
<wire x1="-1.362209375" y1="-4.85403125" x2="-1.362209375" y2="-1.404559375" width="0.125" layer="1"/>
<wire x1="-0.612209375" y1="-5.794259375" x2="-0.612209375" y2="-0.654559375" width="0.125" layer="1"/>
<wire x1="-4.1802" y1="-1.654559375" x2="-4.141340625" y2="-1.742359375" width="0.125" layer="1"/>
<wire x1="-1.953440625" y1="-4.06793125" x2="-1.862209375" y2="-4.11516875" width="0.125" layer="1"/>
<wire x1="-1.862209375" y1="-4.11516875" x2="-1.862209375" y2="-1.904559375" width="0.125" layer="1"/>
<wire x1="-5.47791875" y1="-0.727090625" x2="-0.93758125" y2="-5.482225" width="0.125" layer="1" curve="68.882487"/>
<wire x1="-5.17531875" y1="-0.98038125" x2="-1.191" y2="-5.164390625" width="0.125" layer="1" curve="62.57537"/>
<wire x1="-4.85445" y1="-1.233990625" x2="-1.44475" y2="-4.826078125" width="0.125" layer="1" curve="55.567478"/>
<wire x1="-4.477459375" y1="-4.3363" x2="-0.17888125" y2="-6.342128125" width="0.125" layer="1" curve="42.37391"/>
<wire x1="-6.038790625" y1="-0.22128125" x2="-0.43155" y2="-6.068859375" width="0.125" layer="1" curve="79.838592"/>
<wire x1="-4.51153125" y1="-1.48796875" x2="-1.69888125" y2="-4.462746875" width="0.125" layer="1" curve="47.699477"/>
<wire x1="-3.73616875" y1="-1.99723125" x2="-2.208509375" y2="-3.631790625" width="0.125" layer="1" curve="28.385448"/>
<wire x1="-5.76501875" y1="-0.474059375" x2="-0.6844375" y2="-5.782871875" width="0.125" layer="1" curve="74.606876"/>
<wire x1="-4.141340625" y1="-1.742359375" x2="-1.95344375" y2="-4.0679375" width="0.125" layer="1" curve="38.748771"/>
<wire x1="-0.617509375" y1="-5.546609375" x2="-0.617509375" y2="-0.64151875" width="0.125" layer="2"/>
<wire x1="-5.45678125" y1="-0.89151875" x2="-5.439859375" y2="-0.97411875" width="0.125" layer="2"/>
<wire x1="-0.68116875" y1="-5.53616875" x2="-0.617509375" y2="-5.54661875" width="0.125" layer="2"/>
<wire x1="-0.367509375" y1="-5.83023125" x2="-0.367509375" y2="-0.39151875" width="0.125" layer="2"/>
<wire x1="-5.75145" y1="-0.64151875" x2="-5.73933125" y2="-0.7211" width="0.125" layer="2"/>
<wire x1="-0.42811875" y1="-5.823309375" x2="-0.367509375" y2="-5.830240625" width="0.125" layer="2"/>
<wire x1="-6.30118125" y1="-0.14151875" x2="-6.296559375" y2="-0.2157" width="0.125" layer="2"/>
<wire x1="-0.117509375" y1="-0.14151875" x2="-6.301190625" y2="-0.14151875" width="0.125" layer="2"/>
<wire x1="-6.03233125" y1="-0.39151875" x2="-6.02425" y2="-0.4683" width="0.125" layer="2"/>
<wire x1="-0.17531875" y1="-6.097109375" x2="-0.117509375" y2="-6.101109375" width="0.125" layer="2"/>
<wire x1="-0.367509375" y1="-0.39151875" x2="-6.03233125" y2="-0.39151875" width="0.125" layer="2"/>
<wire x1="-0.617509375" y1="-0.64151875" x2="-5.751459375" y2="-0.64151875" width="0.125" layer="2"/>
<wire x1="-0.867509375" y1="-0.89151875" x2="-5.456790625" y2="-0.89151875" width="0.125" layer="2"/>
<wire x1="-1.117509375" y1="-1.14151875" x2="-5.14606875" y2="-1.14151875" width="0.125" layer="2"/>
<wire x1="-5.14606875" y1="-1.14151875" x2="-5.1234" y2="-1.227390625" width="0.125" layer="2"/>
<wire x1="-0.93453125" y1="-5.23353125" x2="-0.867509375" y2="-5.24826875" width="0.125" layer="2"/>
<wire x1="-4.816359375" y1="-1.39151875" x2="-4.78668125" y2="-1.48095" width="0.125" layer="2"/>
<wire x1="-1.18823125" y1="-4.91258125" x2="-1.117509375" y2="-4.93263125" width="0.125" layer="2"/>
<wire x1="-1.367509375" y1="-1.39151875" x2="-4.816359375" y2="-1.39151875" width="0.125" layer="2"/>
<wire x1="-4.46368125" y1="-1.64151875" x2="-4.42526875" y2="-1.734809375" width="0.125" layer="2"/>
<wire x1="-1.442340625" y1="-4.56955" x2="-1.367509375" y2="-4.59628125" width="0.125" layer="2"/>
<wire x1="-1.617509375" y1="-1.64151875" x2="-4.46368125" y2="-1.64151875" width="0.125" layer="2"/>
<wire x1="-4.082459375" y1="-1.89151875" x2="-4.03285" y2="-1.98903125" width="0.125" layer="2"/>
<wire x1="-1.696940625" y1="-4.19918125" x2="-1.617509375" y2="-4.23453125" width="0.125" layer="2"/>
<wire x1="-1.867509375" y1="-1.89151875" x2="-4.082459375" y2="-1.89151875" width="0.125" layer="2"/>
<wire x1="-0.867509375" y1="-5.248259375" x2="-0.867509375" y2="-0.89151875" width="0.125" layer="2"/>
<wire x1="-1.117509375" y1="-4.93261875" x2="-1.117509375" y2="-1.14151875" width="0.125" layer="2"/>
<wire x1="-1.367509375" y1="-4.59626875" x2="-1.367509375" y2="-1.39151875" width="0.125" layer="2"/>
<wire x1="-1.617509375" y1="-4.23453125" x2="-1.617509375" y2="-1.64151875" width="0.125" layer="2"/>
<wire x1="-1.9521" y1="-3.79371875" x2="-1.867509375" y2="-3.840609375" width="0.125" layer="2"/>
<wire x1="-0.117509375" y1="-6.101109375" x2="-0.117509375" y2="-0.14151875" width="0.125" layer="2"/>
<wire x1="-1.867509375" y1="-3.840609375" x2="-1.867509375" y2="-1.89151875" width="0.125" layer="2"/>
<wire x1="-5.439859375" y1="-0.97411875" x2="-0.68116875" y2="-5.53616875" width="0.125" layer="2" curve="69.100418"/>
<wire x1="-5.73933125" y1="-0.7211" x2="-0.42811875" y2="-5.8233125" width="0.125" layer="2" curve="74.813503"/>
<wire x1="-6.296559375" y1="-0.2157" x2="-4.8932625" y2="-3.871953125" width="0.125" layer="2" curve="34.724335"/>
<wire x1="-6.02425" y1="-0.4683" x2="-0.17531875" y2="-6.09710625" width="0.125" layer="2" curve="80.03571"/>
<wire x1="-5.1234" y1="-1.227390625" x2="-0.93453125" y2="-5.23353125" width="0.125" layer="2" curve="62.806533"/>
<wire x1="-4.78668125" y1="-1.48095" x2="-1.188234375" y2="-4.912590625" width="0.125" layer="2" curve="55.814547"/>
<wire x1="-4.42526875" y1="-1.734809375" x2="-1.442340625" y2="-4.569553125" width="0.125" layer="2" curve="47.966546"/>
<wire x1="-4.03285" y1="-1.98903125" x2="-1.696940625" y2="-4.199178125" width="0.125" layer="2" curve="39.041184"/>
<wire x1="-3.59986875" y1="-2.24365" x2="-1.952103125" y2="-3.793721875" width="0.125" layer="2" curve="28.712509"/>
<wire x1="-0.859559375" y1="-5.491640625" x2="-0.859559375" y2="-0.899390625" width="0.125" layer="15"/>
<wire x1="-5.48581875" y1="-0.649390625" x2="-5.47278125" y2="-0.729559375" width="0.125" layer="15"/>
<wire x1="-0.926" y1="-5.477659375" x2="-0.859559375" y2="-5.491640625" width="0.125" layer="15"/>
<wire x1="-5.769009375" y1="-0.399390625" x2="-5.760290625" y2="-0.47663125" width="0.125" layer="15"/>
<wire x1="-0.67281875" y1="-5.777890625" x2="-0.609559375" y2="-5.787859375" width="0.125" layer="15"/>
<wire x1="-0.609559375" y1="-5.78785" x2="-0.609559375" y2="-0.649390625" width="0.125" layer="15"/>
<wire x1="-0.109559375" y1="-0.149390625" x2="-6.039490625" y2="-0.149390625" width="0.125" layer="15"/>
<wire x1="-6.039490625" y1="-0.149390625" x2="-6.0395" y2="-0.149390625" width="0.125" layer="15"/>
<wire x1="-6.039490625" y1="-0.149390625" x2="-6.034440625" y2="-0.2239" width="0.125" layer="15"/>
<wire x1="-0.4199" y1="-6.06348125" x2="-0.359559375" y2="-6.07011875" width="0.125" layer="15"/>
<wire x1="-0.359559375" y1="-0.399390625" x2="-5.769009375" y2="-0.399390625" width="0.125" layer="15"/>
<wire x1="-0.609559375" y1="-0.649390625" x2="-5.48583125" y2="-0.649390625" width="0.125" layer="15"/>
<wire x1="-5.18795" y1="-0.899390625" x2="-5.16975" y2="-0.98275" width="0.125" layer="15"/>
<wire x1="-1.179509375" y1="-5.1603" x2="-1.109559375" y2="-5.179190625" width="0.125" layer="15"/>
<wire x1="-0.859559375" y1="-0.899390625" x2="-5.18795" y2="-0.899390625" width="0.125" layer="15"/>
<wire x1="-4.53711875" y1="-1.399390625" x2="-4.504959375" y2="-1.48996875" width="0.125" layer="15"/>
<wire x1="-1.68768125" y1="-4.459740625" x2="-1.609559375" y2="-4.492509375" width="0.125" layer="15"/>
<wire x1="-1.359559375" y1="-1.399390625" x2="-4.53711875" y2="-1.399390625" width="0.125" layer="15"/>
<wire x1="-4.872840625" y1="-1.149390625" x2="-4.8484" y2="-1.2362" width="0.125" layer="15"/>
<wire x1="-1.43338125" y1="-4.8225" x2="-1.359559375" y2="-4.8475" width="0.125" layer="15"/>
<wire x1="-1.109559375" y1="-1.149390625" x2="-4.87285" y2="-1.149390625" width="0.125" layer="15"/>
<wire x1="-1.609559375" y1="-1.649390625" x2="-4.176109375" y2="-1.649390625" width="0.125" layer="15"/>
<wire x1="-4.176109375" y1="-1.649390625" x2="-4.134190625" y2="-1.74408125" width="0.125" layer="15"/>
<wire x1="-1.942490625" y1="-4.065559375" x2="-1.859559375" y2="-4.1085" width="0.125" layer="15"/>
<wire x1="-0.16723125" y1="-6.336390625" x2="-0.109559375" y2="-6.340240625" width="0.125" layer="15"/>
<wire x1="-1.109559375" y1="-5.17918125" x2="-1.109559375" y2="-1.149390625" width="0.125" layer="15"/>
<wire x1="-1.359559375" y1="-4.847490625" x2="-1.359559375" y2="-1.399390625" width="0.125" layer="15"/>
<wire x1="-1.609559375" y1="-4.4925" x2="-1.609559375" y2="-1.649390625" width="0.125" layer="15"/>
<wire x1="-1.859559375" y1="-4.108490625" x2="-1.859559375" y2="-1.899390625" width="0.125" layer="15"/>
<wire x1="-0.109559375" y1="-6.340240625" x2="-0.109559375" y2="-0.149390625" width="0.125" layer="15"/>
<wire x1="-0.359559375" y1="-6.07011875" x2="-0.359559375" y2="-0.399390625" width="0.125" layer="15"/>
<wire x1="-1.859559375" y1="-1.899390625" x2="-3.783090625" y2="-1.899390625" width="0.125" layer="15"/>
<wire x1="-3.783090625" y1="-1.899390625" x2="-3.728390625" y2="-1.998590625" width="0.125" layer="15"/>
<wire x1="-2.197909375" y1="-3.63013125" x2="-2.109559375" y2="-3.68695" width="0.125" layer="15"/>
<wire x1="-5.47278125" y1="-0.729559375" x2="-0.926" y2="-5.4776625" width="0.125" layer="15" curve="68.882584"/>
<wire x1="-5.760290625" y1="-0.47663125" x2="-0.67281875" y2="-5.77789375" width="0.125" layer="15" curve="74.606751"/>
<wire x1="-6.034440625" y1="-0.2239" x2="-0.4199" y2="-6.063478125" width="0.125" layer="15" curve="79.838673"/>
<wire x1="-5.16975" y1="-0.98275" x2="-1.179509375" y2="-5.160303125" width="0.125" layer="15" curve="62.575342"/>
<wire x1="-4.504959375" y1="-1.48996875" x2="-1.68768125" y2="-4.459740625" width="0.125" layer="15" curve="47.699511"/>
<wire x1="-4.8484" y1="-1.2362" x2="-1.43338125" y2="-4.822496875" width="0.125" layer="15" curve="55.567393"/>
<wire x1="-4.134190625" y1="-1.74408125" x2="-1.9424875" y2="-4.06555625" width="0.125" layer="15" curve="38.748761"/>
<wire x1="-5.037140625" y1="-3.658059375" x2="-0.16723125" y2="-6.3363875" width="0.125" layer="15" curve="50.110238"/>
<wire x1="-3.728390625" y1="-1.998590625" x2="-2.197909375" y2="-3.630128125" width="0.125" layer="15" curve="28.385359"/>
<pad name="TOP_INT1_COIL1" x="-3.03" y="-2.31" drill="0.2" diameter="0.3048" rot="R270"/>
<pad name="INT1_INT2_COIL1" x="-5.26" y="-3.79" drill="0.2" diameter="0.3048" rot="R270"/>
<pad name="EXITCOIL1" x="-2.6" y="-2.81" drill="0.2" diameter="0.3048" rot="R270"/>
<smd name="INCOIL1" x="-4.5" y="-4.4" dx="0.25" dy="0.25" layer="1" roundness="100" rot="R270"/>
<wire x1="-5.08" y1="-3.64" x2="-5.08" y2="-3.63" width="0.127" layer="2"/>
<wire x1="3.71" y1="-5.06" x2="2.87" y2="-5.61" width="0.125" layer="15" curve="-18"/>
<wire x1="2.87" y1="-5.61" x2="3.09" y2="-5.87" width="0.125" layer="15"/>
<wire x1="5.11" y1="3.7" x2="5.29" y2="3.83" width="0.125" layer="15"/>
<wire x1="5.3" y1="3.84" x2="5.11" y2="3.69" width="0.125" layer="2"/>
<wire x1="2.16" y1="3.73" x2="2.17" y2="2.73" width="0.125" layer="15"/>
<wire x1="2.17" y1="2.73" x2="2.67" y2="2.75" width="0.125" layer="15" curve="165.169346"/>
<wire x1="-3.67" y1="2.16" x2="-2.79" y2="2.16" width="0.125" layer="15"/>
<wire x1="-2.79" y1="2.16" x2="-2.71" y2="2.64" width="0.125" layer="15" curve="143.130237"/>
<wire x1="-6.02" y1="0.17" x2="-6.18" y2="0.17" width="0.125" layer="15"/>
<wire x1="5.3" y1="3.84" x2="5.26" y2="3.81" width="0.125" layer="15"/>
<wire x1="5.26" y1="3.81" x2="4.97" y2="3.87" width="0.125" layer="15" curve="-97.118133"/>
<wire x1="-2.11" y1="-3.67" x2="-2.11" y2="-2.89" width="0.125" layer="15"/>
<wire x1="-2.11" y1="-2.89" x2="-2.58" y2="-2.78" width="0.125" layer="15" curve="157.773952"/>
<wire x1="3.73" y1="-2.12" x2="2.87" y2="-2.12" width="0.125" layer="15"/>
<wire x1="2.87" y1="-2.12" x2="2.86" y2="-2.54" width="0.125" layer="15" curve="150.512669"/>
<wire x1="-5.24" y1="-3.77" x2="-4.91" y2="-3.83" width="0.125" layer="15" curve="-84.611271"/>
<wire x1="3.11" y1="-5.89" x2="3.07" y2="-5.85" width="0.125" layer="15"/>
<wire x1="3.07" y1="-5.85" x2="3.12" y2="-5.48" width="0.125" layer="15" curve="-105.391856"/>
<wire x1="-5.25" y1="-3.8" x2="-5.21" y2="-3.76" width="0.125" layer="2"/>
<wire x1="-5.21" y1="-3.76" x2="-5.19" y2="-3.48" width="0.125" layer="2" curve="81.829126"/>
<wire x1="-3.01" y1="-2.31" x2="-3.17" y2="-2.31" width="0.125" layer="2"/>
<wire x1="-3.17" y1="-2.31" x2="-3.31" y2="-2.64" width="0.125" layer="2" curve="134.022586"/>
<wire x1="-2.23" y1="3.1" x2="-2.22" y2="3.21" width="0.125" layer="2"/>
<wire x1="-2.22" y1="3.21" x2="-2.56" y2="3.42" width="0.125" layer="2" curve="126.986522"/>
<wire x1="3.11" y1="2.28" x2="3.2" y2="2.28" width="0.125" layer="2"/>
<wire x1="3.2" y1="2.28" x2="3.36" y2="2.69" width="0.125" layer="2" curve="137.364301"/>
<wire x1="5.31" y1="3.85" x2="5.29" y2="3.84" width="0.125" layer="2"/>
<wire x1="5.29" y1="3.84" x2="5.22" y2="3.56" width="0.125" layer="2" curve="98.797411"/>
<wire x1="3.09" y1="-5.87" x2="3.07" y2="-5.83" width="0.125" layer="2"/>
<wire x1="3.07" y1="-5.83" x2="2.7" y2="-5.69" width="0.125" layer="2" curve="85.418941"/>
<wire x1="2.27" y1="-3.08" x2="2.27" y2="-3.12" width="0.125" layer="2"/>
<wire x1="2.27" y1="-3.12" x2="2.72" y2="-3.3" width="0.125" layer="2" curve="136.397181"/>
<wire x1="-3.03" y1="-2.3" x2="-2.16" y2="-2.67" width="0.125" layer="1" curve="-122.140135"/>
<wire x1="2.31" y1="-3.05" x2="3.08" y2="-2.15" width="0.125" layer="1" curve="-102.869519"/>
<wire x1="3.1" y1="2.28" x2="3.01" y2="2.26" width="0.125" layer="1"/>
<wire x1="3.01" y1="2.26" x2="2.18" y2="2.98" width="0.125" layer="1" curve="-106.938937"/>
<wire x1="-2.23" y1="3.1" x2="-2.22" y2="3.04" width="0.125" layer="1"/>
<wire x1="-2.22" y1="3.04" x2="-3.02" y2="2.18" width="0.125" layer="1" curve="-104.784439"/>
<wire x1="-4.89" y1="4.6" x2="-4.75" y2="4.07" width="0.125" layer="15" curve="-92.01038"/>
<wire x1="-2.11" y1="-3.69" x2="-2.16" y2="-2.67" width="0.125" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="COILGROUP">
<pin name="INCOIL0" x="-5.08" y="45.72" length="middle"/>
<pin name="TOP_INT1_COIL0" x="-5.08" y="40.64" length="middle"/>
<pin name="INT1_INT2_COIL0" x="-5.08" y="35.56" length="middle"/>
<pin name="EXITCOIL0" x="-5.08" y="30.48" length="middle"/>
<pin name="INCOIL1" x="-5.08" y="20.32" length="middle"/>
<pin name="TOP_INT1_COIL1" x="-5.08" y="15.24" length="middle"/>
<pin name="INT1_INT2_COIL1" x="-5.08" y="10.16" length="middle"/>
<pin name="EXITCOIL1" x="-5.08" y="5.08" length="middle"/>
<pin name="INCOIL2" x="66.04" y="45.72" length="middle" rot="R180"/>
<pin name="TOP_INT1_COIL2" x="66.04" y="40.64" length="middle" rot="R180"/>
<pin name="INT1_INT2_COIL2" x="66.04" y="35.56" length="middle" rot="R180"/>
<pin name="EXITCOIL2" x="66.04" y="30.48" length="middle" rot="R180"/>
<pin name="INCOIL3" x="66.04" y="20.32" length="middle" rot="R180"/>
<pin name="TOP_INT1_COIL3" x="66.04" y="15.24" length="middle" rot="R180"/>
<pin name="INT1_INT2_COIL3" x="66.04" y="10.16" length="middle" rot="R180"/>
<pin name="EXITCOIL3" x="66.04" y="5.08" length="middle" rot="R180"/>
<wire x1="0" y1="0" x2="0" y2="48.26" width="0.254" layer="94"/>
<wire x1="0" y1="48.26" x2="60.96" y2="48.26" width="0.254" layer="94"/>
<wire x1="60.96" y1="48.26" x2="60.96" y2="0" width="0.254" layer="94"/>
<wire x1="60.96" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="FATSQUARE_GROUP">
<gates>
<gate name="G$1" symbol="COILGROUP" x="0" y="0"/>
</gates>
<devices>
<device name="" package="FAT_SQUARE">
<connects>
<connect gate="G$1" pin="EXITCOIL0" pad="EXITCOIL0"/>
<connect gate="G$1" pin="EXITCOIL1" pad="EXITCOIL1"/>
<connect gate="G$1" pin="EXITCOIL2" pad="EXITCOIL2"/>
<connect gate="G$1" pin="EXITCOIL3" pad="EXITCOIL3"/>
<connect gate="G$1" pin="INCOIL0" pad="INCOIL0"/>
<connect gate="G$1" pin="INCOIL1" pad="INCOIL1"/>
<connect gate="G$1" pin="INCOIL2" pad="INCOIL2"/>
<connect gate="G$1" pin="INCOIL3" pad="INCOIL3"/>
<connect gate="G$1" pin="INT1_INT2_COIL0" pad="INT1_INT2_COIL0"/>
<connect gate="G$1" pin="INT1_INT2_COIL1" pad="INT1_INT2_COIL1"/>
<connect gate="G$1" pin="INT1_INT2_COIL2" pad="INT1_INT2_COIL2"/>
<connect gate="G$1" pin="INT1_INT2_COIL3" pad="INT1_INT2_COIL3"/>
<connect gate="G$1" pin="TOP_INT1_COIL0" pad="TOP_INT1_COIL0"/>
<connect gate="G$1" pin="TOP_INT1_COIL1" pad="TOP_INT1_COIL1"/>
<connect gate="G$1" pin="TOP_INT1_COIL2" pad="TOP_INT1_COIL2"/>
<connect gate="G$1" pin="TOP_INT1_COIL3" pad="TOP_INT1_COIL3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="FATFAN_GROUP">
<gates>
<gate name="G$1" symbol="COILGROUP" x="0" y="0"/>
</gates>
<devices>
<device name="" package="FAT_FAN">
<connects>
<connect gate="G$1" pin="EXITCOIL0" pad="EXITCOIL0"/>
<connect gate="G$1" pin="EXITCOIL1" pad="EXITCOIL1"/>
<connect gate="G$1" pin="EXITCOIL2" pad="EXITCOIL2B"/>
<connect gate="G$1" pin="EXITCOIL3" pad="EXITCOIL3"/>
<connect gate="G$1" pin="INCOIL0" pad="INCOIL0"/>
<connect gate="G$1" pin="INCOIL1" pad="INCOIL1"/>
<connect gate="G$1" pin="INCOIL2" pad="INCOIL2B"/>
<connect gate="G$1" pin="INCOIL3" pad="INCOIL3"/>
<connect gate="G$1" pin="INT1_INT2_COIL0" pad="INT1_INT2_COIL0"/>
<connect gate="G$1" pin="INT1_INT2_COIL1" pad="INT1_INT2_COIL1"/>
<connect gate="G$1" pin="INT1_INT2_COIL2" pad="INT1_INT2_COIL2B"/>
<connect gate="G$1" pin="INT1_INT2_COIL3" pad="INT1_INT2_COIL3"/>
<connect gate="G$1" pin="TOP_INT1_COIL0" pad="TOP_INT1_COIL0"/>
<connect gate="G$1" pin="TOP_INT1_COIL1" pad="TOP_INT1_COIL1"/>
<connect gate="G$1" pin="TOP_INT1_COIL2" pad="TOP_INT1_COIL12B"/>
<connect gate="G$1" pin="TOP_INT1_COIL3" pad="TOP_INT1_COIL3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="wirepad" urn="urn:adsk.eagle:library:412">
<description>&lt;b&gt;Single Pads&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1,6/0,8" urn="urn:adsk.eagle:footprint:30809/1" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="-0.762" y1="0.762" x2="-0.508" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="0.762" x2="-0.762" y2="0.508" width="0.1524" layer="21"/>
<wire x1="0.762" y1="0.762" x2="0.762" y2="0.508" width="0.1524" layer="21"/>
<wire x1="0.762" y1="0.762" x2="0.508" y2="0.762" width="0.1524" layer="21"/>
<wire x1="0.762" y1="-0.508" x2="0.762" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="0.762" y1="-0.762" x2="0.508" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-0.508" y1="-0.762" x2="-0.762" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-0.762" x2="-0.762" y2="-0.508" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.635" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-0.762" y="1.016" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0.6" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="1,6/0,9" urn="urn:adsk.eagle:footprint:30812/1" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="-0.508" y1="0.762" x2="-0.762" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="0.762" x2="-0.762" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-0.508" x2="-0.762" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-0.762" x2="-0.508" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="0.508" y1="-0.762" x2="0.762" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="0.762" y1="-0.762" x2="0.762" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="0.762" y1="0.508" x2="0.762" y2="0.762" width="0.1524" layer="21"/>
<wire x1="0.762" y1="0.762" x2="0.508" y2="0.762" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.635" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="0.9144" diameter="1.6002" shape="octagon"/>
<text x="-0.762" y="1.016" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0.6" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="2,15/1,0" urn="urn:adsk.eagle:footprint:30813/1" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.143" y1="-1.143" x2="1.143" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-1.143" x2="0.635" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0.635" x2="1.143" y2="1.143" width="0.1524" layer="21"/>
<wire x1="1.143" y1="1.143" x2="0.635" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.143" x2="-1.143" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="1.143" x2="-1.143" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="-0.635" x2="-1.143" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="-1.143" x2="-0.635" y2="-1.143" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<text x="-1.143" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="1" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="2,54/0,8" urn="urn:adsk.eagle:footprint:30820/1" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="-1.27" y1="1.27" x2="-0.762" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0.762" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0.762" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="0.762" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.762" x2="1.27" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="0.762" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-1.27" x2="-1.27" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="-0.762" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.635" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="0.8128" diameter="2.54" shape="octagon"/>
<text x="-1.27" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0.6" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="2,54/0,9" urn="urn:adsk.eagle:footprint:30821/1" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="-1.27" y1="1.27" x2="-0.762" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0.762" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0.762" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="0.762" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.762" x2="1.27" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="0.762" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-1.27" x2="-1.27" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="-0.762" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.635" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="0.9144" diameter="2.54" shape="octagon"/>
<text x="-1.27" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0.6" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="2,54/1,0" urn="urn:adsk.eagle:footprint:30810/1" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0.762" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="0.762" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-0.762" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-0.762" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.762" y1="-1.27" x2="1.27" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="1.27" y2="-0.762" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="2.54" shape="octagon"/>
<text x="-1.27" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="1" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="2,54/1,1" urn="urn:adsk.eagle:footprint:30818/1" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0.762" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="0.762" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-0.762" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-0.762" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="0.762" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="1.27" y2="-0.762" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="1.1176" diameter="2.54" shape="octagon"/>
<text x="-1.27" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="1" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="3,17/1,1" urn="urn:adsk.eagle:footprint:30814/1" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.524" y1="-1.016" x2="1.524" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="1.524" y1="-1.524" x2="1.016" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="-1.524" x2="-1.524" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-1.524" x2="-1.524" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="1.016" x2="-1.524" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="1.524" x2="-1.016" y2="1.524" width="0.1524" layer="21"/>
<wire x1="1.016" y1="1.524" x2="1.524" y2="1.524" width="0.1524" layer="21"/>
<wire x1="1.524" y1="1.524" x2="1.524" y2="1.016" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="1.27" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="1.1176" diameter="3.175" shape="octagon"/>
<text x="-1.524" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="1.2" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="3,17/1,2" urn="urn:adsk.eagle:footprint:30824/1" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.524" y1="-1.016" x2="1.524" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="1.524" y1="-1.524" x2="1.016" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="-1.524" x2="-1.524" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-1.524" x2="-1.524" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="1.016" x2="-1.524" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="1.524" x2="-1.016" y2="1.524" width="0.1524" layer="21"/>
<wire x1="1.016" y1="1.524" x2="1.524" y2="1.524" width="0.1524" layer="21"/>
<wire x1="1.524" y1="1.524" x2="1.524" y2="1.016" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="1.27" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="1.1938" diameter="3.175" shape="octagon"/>
<text x="-1.524" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="1.2" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="3,17/1,3" urn="urn:adsk.eagle:footprint:30815/1" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.524" y1="-1.016" x2="1.524" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="1.524" y1="-1.524" x2="1.016" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="-1.524" x2="-1.524" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-1.524" x2="-1.524" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="1.016" x2="-1.524" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="1.524" x2="-1.016" y2="1.524" width="0.1524" layer="21"/>
<wire x1="1.016" y1="1.524" x2="1.524" y2="1.524" width="0.1524" layer="21"/>
<wire x1="1.524" y1="1.524" x2="1.524" y2="1.016" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="1.27" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="1.3208" diameter="3.175" shape="octagon"/>
<text x="-1.524" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="1.2" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="3,81/1,1" urn="urn:adsk.eagle:footprint:30811/1" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.905" y1="-1.27" x2="1.905" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.905" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-1.905" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.905" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-1.905" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.905" x2="-1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.905" x2="1.905" y2="1.905" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.905" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="1.27" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="1.1176" diameter="3.81" shape="octagon"/>
<text x="-1.905" y="2.286" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="1.2" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="3,81/1,3" urn="urn:adsk.eagle:footprint:30816/1" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.905" y1="-1.27" x2="1.905" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.905" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-1.905" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.905" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-1.905" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.905" x2="-1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.905" x2="1.905" y2="1.905" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.905" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="1.27" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="1.3208" diameter="3.81" shape="octagon"/>
<text x="-1.905" y="2.286" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="1.2" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="3,81/1,4" urn="urn:adsk.eagle:footprint:30817/1" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.905" y1="-1.27" x2="1.905" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.905" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-1.905" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.905" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-1.905" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.905" x2="-1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.905" x2="1.905" y2="1.905" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.905" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="1.27" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="1.397" diameter="3.81" shape="octagon"/>
<text x="-1.905" y="2.286" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="1.2" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="4,16O1,6" urn="urn:adsk.eagle:footprint:30825/1" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<pad name="1" x="0" y="0" drill="1.6002" diameter="4.1656" shape="octagon"/>
<text x="0" y="0" size="0.0254" layer="27">&gt;VALUE</text>
<text x="-2.1" y="2.2" size="1.27" layer="25">&gt;NAME</text>
</package>
<package name="5-1,8" urn="urn:adsk.eagle:footprint:30826/1" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.1684" y1="2.794" x2="-1.1684" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-1.1684" y1="-2.794" x2="-1.1684" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-1.1684" y1="-2.794" x2="1.1684" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="1.1684" y1="2.794" x2="1.1684" y2="-2.794" width="0.1524" layer="21"/>
<smd name="1" x="0" y="0" dx="1.8288" dy="5.08" layer="1"/>
<text x="-1.524" y="-2.54" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-0.1" y="2.8" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="5-2,5" urn="urn:adsk.eagle:footprint:30827/1" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.524" y1="2.794" x2="-1.524" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-2.794" x2="-1.524" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-2.794" x2="1.524" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="1.524" y1="2.794" x2="1.524" y2="-2.794" width="0.1524" layer="21"/>
<smd name="1" x="0" y="0" dx="2.54" dy="5.08" layer="1"/>
<text x="-1.778" y="-2.54" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-0.1" y="2.8" size="0.0254" layer="27">&gt;VALUE</text>
</package>
<package name="SMD1,27-2,54" urn="urn:adsk.eagle:footprint:30822/1" library_version="1">
<description>&lt;b&gt;SMD PAD&lt;/b&gt;</description>
<smd name="1" x="0" y="0" dx="1.27" dy="2.54" layer="1"/>
<text x="0" y="0" size="0.0254" layer="27">&gt;VALUE</text>
<text x="-0.8" y="-2.4" size="1.27" layer="25" rot="R90">&gt;NAME</text>
</package>
<package name="SMD2,54-5,08" urn="urn:adsk.eagle:footprint:30823/1" library_version="1">
<description>&lt;b&gt;SMD PAD&lt;/b&gt;</description>
<smd name="1" x="0" y="0" dx="2.54" dy="5.08" layer="1"/>
<text x="0" y="0" size="0.0254" layer="27">&gt;VALUE</text>
<text x="-1.5" y="-2.5" size="1.27" layer="25" rot="R90">&gt;NAME</text>
</package>
</packages>
<packages3d>
<package3d name="1,6/0,8" urn="urn:adsk.eagle:package:30830/1" type="box" library_version="1">
<description>THROUGH-HOLE PAD</description>
<packageinstances>
<packageinstance name="1,6/0,8"/>
</packageinstances>
</package3d>
<package3d name="1,6/0,9" urn="urn:adsk.eagle:package:30840/1" type="box" library_version="1">
<description>THROUGH-HOLE PAD</description>
<packageinstances>
<packageinstance name="1,6/0,9"/>
</packageinstances>
</package3d>
<package3d name="2,15/1,0" urn="urn:adsk.eagle:package:30831/1" type="box" library_version="1">
<description>THROUGH-HOLE PAD</description>
<packageinstances>
<packageinstance name="2,15/1,0"/>
</packageinstances>
</package3d>
<package3d name="2,54/0,8" urn="urn:adsk.eagle:package:30838/1" type="box" library_version="1">
<description>THROUGH-HOLE PAD</description>
<packageinstances>
<packageinstance name="2,54/0,8"/>
</packageinstances>
</package3d>
<package3d name="2,54/0,9" urn="urn:adsk.eagle:package:30847/1" type="box" library_version="1">
<description>THROUGH-HOLE PAD</description>
<packageinstances>
<packageinstance name="2,54/0,9"/>
</packageinstances>
</package3d>
<package3d name="2,54/1,0" urn="urn:adsk.eagle:package:30828/1" type="box" library_version="1">
<description>THROUGH-HOLE PAD</description>
<packageinstances>
<packageinstance name="2,54/1,0"/>
</packageinstances>
</package3d>
<package3d name="2,54/1,1" urn="urn:adsk.eagle:package:30836/1" type="box" library_version="1">
<description>THROUGH-HOLE PAD</description>
<packageinstances>
<packageinstance name="2,54/1,1"/>
</packageinstances>
</package3d>
<package3d name="3,17/1,1" urn="urn:adsk.eagle:package:30832/1" type="box" library_version="1">
<description>THROUGH-HOLE PAD</description>
<packageinstances>
<packageinstance name="3,17/1,1"/>
</packageinstances>
</package3d>
<package3d name="3,17/1,2" urn="urn:adsk.eagle:package:30842/1" type="box" library_version="1">
<description>THROUGH-HOLE PAD</description>
<packageinstances>
<packageinstance name="3,17/1,2"/>
</packageinstances>
</package3d>
<package3d name="3,17/1,3" urn="urn:adsk.eagle:package:30833/1" type="box" library_version="1">
<description>THROUGH-HOLE PAD</description>
<packageinstances>
<packageinstance name="3,17/1,3"/>
</packageinstances>
</package3d>
<package3d name="3,81/1,1" urn="urn:adsk.eagle:package:30829/1" type="box" library_version="1">
<description>THROUGH-HOLE PAD</description>
<packageinstances>
<packageinstance name="3,81/1,1"/>
</packageinstances>
</package3d>
<package3d name="3,81/1,3" urn="urn:adsk.eagle:package:30834/1" type="box" library_version="1">
<description>THROUGH-HOLE PAD</description>
<packageinstances>
<packageinstance name="3,81/1,3"/>
</packageinstances>
</package3d>
<package3d name="3,81/1,4" urn="urn:adsk.eagle:package:30835/1" type="box" library_version="1">
<description>THROUGH-HOLE PAD</description>
<packageinstances>
<packageinstance name="3,81/1,4"/>
</packageinstances>
</package3d>
<package3d name="4,16O1,6" urn="urn:adsk.eagle:package:30843/1" type="box" library_version="1">
<description>THROUGH-HOLE PAD</description>
<packageinstances>
<packageinstance name="4,16O1,6"/>
</packageinstances>
</package3d>
<package3d name="5-1,8" urn="urn:adsk.eagle:package:30844/1" type="box" library_version="1">
<description>THROUGH-HOLE PAD</description>
<packageinstances>
<packageinstance name="5-1,8"/>
</packageinstances>
</package3d>
<package3d name="5-2,5" urn="urn:adsk.eagle:package:30845/1" type="box" library_version="1">
<description>THROUGH-HOLE PAD</description>
<packageinstances>
<packageinstance name="5-2,5"/>
</packageinstances>
</package3d>
<package3d name="SMD1,27-2,54" urn="urn:adsk.eagle:package:30839/1" type="box" library_version="1">
<description>SMD PAD</description>
<packageinstances>
<packageinstance name="SMD1,27-2,54"/>
</packageinstances>
</package3d>
<package3d name="SMD2,54-5,08" urn="urn:adsk.eagle:package:30841/1" type="box" library_version="1">
<description>SMD PAD</description>
<packageinstances>
<packageinstance name="SMD2,54-5,08"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="PAD" urn="urn:adsk.eagle:symbol:30808/1" library_version="1">
<wire x1="-1.016" y1="1.016" x2="1.016" y2="-1.016" width="0.254" layer="94"/>
<wire x1="-1.016" y1="-1.016" x2="1.016" y2="1.016" width="0.254" layer="94"/>
<text x="-1.143" y="1.8542" size="1.778" layer="95">&gt;NAME</text>
<text x="-1.143" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="P" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="WIREPAD" urn="urn:adsk.eagle:component:30861/1" prefix="PAD" library_version="1">
<description>&lt;b&gt;Wire PAD&lt;/b&gt; connect wire on PCB</description>
<gates>
<gate name="G$1" symbol="PAD" x="0" y="0"/>
</gates>
<devices>
<device name="1,6/0,8" package="1,6/0,8">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30830/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1,6/0,9" package="1,6/0,9">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30840/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2,15/1,0" package="2,15/1,0">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30831/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2,54/0,8" package="2,54/0,8">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30838/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2,54/0,9" package="2,54/0,9">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30847/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2,54/1,0" package="2,54/1,0">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30828/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2,54/1,1" package="2,54/1,1">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30836/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3,17/1,1" package="3,17/1,1">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30832/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3,17/1,2" package="3,17/1,2">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30842/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3,17/1,3" package="3,17/1,3">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30833/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3,81/1,1" package="3,81/1,1">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30829/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3,81/1,3" package="3,81/1,3">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30834/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3,81/1,4" package="3,81/1,4">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30835/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="4,16O1,6" package="4,16O1,6">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30843/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD5-1,8" package="5-1,8">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30844/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD5-2,5" package="5-2,5">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30845/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD1,27-254" package="SMD1,27-2,54">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30839/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD2,54-5,08" package="SMD2,54-5,08">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30841/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="GND8" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND9" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="U2" library="LDC1614" deviceset="LDC1614" device=""/>
<part name="R5" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="R6" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="3.3V5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="3.3V6" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="C2" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="C-EU" device="C0402" package3d_urn="urn:adsk.eagle:package:26136/1" value="10uF"/>
<part name="3.3V7" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND10" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND11" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V8" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="U$1" library="coils" deviceset="FATSQUARE_GROUP" device=""/>
<part name="VDD1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND12" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="PAD8" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD11" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD12" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD13" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD14" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="GND13" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND14" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V9" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="PAD15" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD16" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD17" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD18" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="R7" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="R8" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="GND22" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND23" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="U4" library="LDC1614" deviceset="LDC1614" device=""/>
<part name="R13" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="R14" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="3.3V15" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="3.3V16" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="C4" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="C-EU" device="C0402" package3d_urn="urn:adsk.eagle:package:26136/1" value="10uF"/>
<part name="3.3V17" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND24" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND25" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V18" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="U$4" library="coils" deviceset="FATSQUARE_GROUP" device=""/>
<part name="VDD4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND26" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="PAD28" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD29" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD30" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD31" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD32" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="GND27" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND28" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V19" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="PAD33" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD34" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD35" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD36" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="R15" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="R16" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="GND36" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND37" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="U6" library="LDC1614" deviceset="LDC1614" device=""/>
<part name="R21" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="R22" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="3.3V25" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="3.3V26" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="C6" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="C-EU" device="C0402" package3d_urn="urn:adsk.eagle:package:26136/1" value="10uF"/>
<part name="3.3V27" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND38" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND39" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V28" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="U$6" library="coils" deviceset="FATSQUARE_GROUP" device=""/>
<part name="VDD6" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND40" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="PAD46" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD47" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD48" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD49" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD50" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="GND41" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND42" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V29" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="PAD51" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD52" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD53" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD54" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="R23" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="R24" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="GND50" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND51" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="U8" library="LDC1614" deviceset="LDC1614" device=""/>
<part name="R29" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="R30" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="3.3V35" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="3.3V36" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="C8" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="C-EU" device="C0402" package3d_urn="urn:adsk.eagle:package:26136/1" value="10uF"/>
<part name="3.3V37" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND52" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND53" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V38" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="U$8" library="coils" deviceset="FATSQUARE_GROUP" device=""/>
<part name="VDD8" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND54" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="PAD64" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD65" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD66" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD67" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD68" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="GND55" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND56" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V39" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="PAD69" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD70" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD71" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD72" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="R31" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="R32" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="GND64" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND65" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="U10" library="LDC1614" deviceset="LDC1614" device=""/>
<part name="R37" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="R38" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="3.3V45" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="3.3V46" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="C10" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="C-EU" device="C0402" package3d_urn="urn:adsk.eagle:package:26136/1" value="10uF"/>
<part name="3.3V47" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND66" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND67" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V48" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="U$10" library="coils" deviceset="FATSQUARE_GROUP" device=""/>
<part name="VDD10" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND68" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="PAD82" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD83" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD84" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD85" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD86" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="GND69" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND70" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V49" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="PAD87" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD88" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD89" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD90" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="R39" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="R40" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="GND29" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND30" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="U5" library="LDC1614" deviceset="LDC1614" device=""/>
<part name="R17" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="R18" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="3.3V20" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="3.3V21" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="C5" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="C-EU" device="C0402" package3d_urn="urn:adsk.eagle:package:26136/1" value="10uF"/>
<part name="3.3V22" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND31" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND32" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V23" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="U$5" library="coils" deviceset="FATSQUARE_GROUP" device=""/>
<part name="VDD5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND33" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="PAD37" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD38" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD39" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD40" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD41" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="GND34" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND35" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V24" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="PAD42" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD43" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD44" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD45" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="R19" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="R20" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="GND57" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND58" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="U9" library="LDC1614" deviceset="LDC1614" device=""/>
<part name="R33" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="R34" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="3.3V40" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="3.3V41" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="C9" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="C-EU" device="C0402" package3d_urn="urn:adsk.eagle:package:26136/1" value="10uF"/>
<part name="3.3V42" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND59" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND60" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V43" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="U$9" library="coils" deviceset="FATSQUARE_GROUP" device=""/>
<part name="VDD9" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND61" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="PAD73" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD74" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD75" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD76" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD77" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="GND62" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND63" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V44" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="PAD78" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD79" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD80" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD81" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="R35" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="R36" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="GND78" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND79" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="U12" library="LDC1614" deviceset="LDC1614" device=""/>
<part name="R45" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="R46" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="3.3V55" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="3.3V56" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="C12" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="C-EU" device="C0402" package3d_urn="urn:adsk.eagle:package:26136/1" value="10uF"/>
<part name="3.3V57" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND80" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND81" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V58" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="U$12" library="coils" deviceset="FATSQUARE_GROUP" device=""/>
<part name="VDD12" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND82" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="PAD100" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD101" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD102" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD103" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD104" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="GND83" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND84" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V59" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="PAD105" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD106" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD107" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD108" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="R47" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="R48" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="GND92" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND93" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="U14" library="LDC1614" deviceset="LDC1614" device=""/>
<part name="R53" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="R54" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="3.3V65" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="3.3V66" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="C14" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="C-EU" device="C0402" package3d_urn="urn:adsk.eagle:package:26136/1" value="10uF"/>
<part name="3.3V67" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND94" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND95" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V68" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="U$14" library="coils" deviceset="FATSQUARE_GROUP" device=""/>
<part name="VDD14" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND96" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="PAD118" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD119" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD120" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD121" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD122" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="GND97" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND98" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V69" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="PAD123" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD124" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD125" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD126" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="R55" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="R56" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="GND106" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND107" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="U16" library="LDC1614" deviceset="LDC1614" device=""/>
<part name="R61" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="R62" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="3.3V75" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="3.3V76" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="C16" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="C-EU" device="C0402" package3d_urn="urn:adsk.eagle:package:26136/1" value="10uF"/>
<part name="3.3V77" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND108" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND109" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V78" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="U$16" library="coils" deviceset="FATSQUARE_GROUP" device=""/>
<part name="VDD16" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND110" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="PAD136" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD137" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD138" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD139" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD140" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="GND111" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND112" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V79" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="PAD141" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD142" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD143" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD144" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="R63" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="R64" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="GND127" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND128" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="U19" library="LDC1614" deviceset="LDC1614" device=""/>
<part name="R73" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="R74" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="3.3V90" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="3.3V91" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="C19" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="C-EU" device="C0402" package3d_urn="urn:adsk.eagle:package:26136/1" value="10uF"/>
<part name="3.3V92" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND129" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND130" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V93" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="U$19" library="coils" deviceset="FATFAN_GROUP" device=""/>
<part name="VDD19" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND131" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="PAD165" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD166" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD167" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD168" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD169" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="GND132" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND133" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V94" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="PAD170" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD171" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD172" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD173" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD174" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="R75" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="R76" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="GND141" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND142" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="U21" library="LDC1614" deviceset="LDC1614" device=""/>
<part name="R81" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="R82" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="3.3V100" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="3.3V101" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="C21" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="C-EU" device="C0402" package3d_urn="urn:adsk.eagle:package:26136/1" value="10uF"/>
<part name="3.3V102" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND143" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND144" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V103" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="U$21" library="coils" deviceset="FATFAN_GROUP" device=""/>
<part name="VDD21" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND145" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="PAD185" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD186" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD187" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD188" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD189" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="GND146" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND147" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V104" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="PAD190" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD191" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD192" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD193" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD194" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="R83" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="R84" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="GND155" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND156" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="U23" library="LDC1614" deviceset="LDC1614" device=""/>
<part name="R89" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="R90" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="3.3V110" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="3.3V111" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="C23" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="C-EU" device="C0402" package3d_urn="urn:adsk.eagle:package:26136/1" value="10uF"/>
<part name="3.3V112" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND157" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND158" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V113" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="U$23" library="coils" deviceset="FATFAN_GROUP" device=""/>
<part name="VDD23" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND159" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="PAD205" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD206" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD207" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD208" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD209" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="GND160" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND161" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V114" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="PAD210" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD211" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD212" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD213" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD214" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="R91" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="R92" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="GND169" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND170" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="U25" library="LDC1614" deviceset="LDC1614" device=""/>
<part name="R97" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="R98" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="3.3V120" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="3.3V121" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="C25" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="C-EU" device="C0402" package3d_urn="urn:adsk.eagle:package:26136/1" value="10uF"/>
<part name="3.3V122" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND171" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND172" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V123" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="U$25" library="coils" deviceset="FATFAN_GROUP" device=""/>
<part name="VDD25" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND173" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="PAD225" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD226" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD227" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD228" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD229" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="GND174" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND175" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V124" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="PAD230" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD231" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD232" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD233" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD234" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="R99" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="R100" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="GND183" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND184" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="U27" library="LDC1614" deviceset="LDC1614" device=""/>
<part name="R105" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="R106" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="3.3V130" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="3.3V131" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="C27" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="C-EU" device="C0402" package3d_urn="urn:adsk.eagle:package:26136/1" value="10uF"/>
<part name="3.3V132" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND185" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND186" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V133" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="U$27" library="coils" deviceset="FATFAN_GROUP" device=""/>
<part name="VDD27" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND187" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="PAD245" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD246" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD247" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD248" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD249" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="GND188" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND189" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V134" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="PAD250" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD251" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD252" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD253" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD254" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="R107" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="R108" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="GND197" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND198" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="U29" library="LDC1614" deviceset="LDC1614" device=""/>
<part name="R113" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="R114" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="3.3V140" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="3.3V141" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="C29" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="C-EU" device="C0402" package3d_urn="urn:adsk.eagle:package:26136/1" value="10uF"/>
<part name="3.3V142" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND199" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND200" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V143" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="U$29" library="coils" deviceset="FATFAN_GROUP" device=""/>
<part name="VDD29" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND201" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="PAD265" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD266" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD267" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD268" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD269" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="GND202" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND203" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V144" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="PAD270" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD271" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD272" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD273" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD274" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="R115" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="R116" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="GND211" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND212" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="U31" library="LDC1614" deviceset="LDC1614" device=""/>
<part name="R121" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="R122" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="3.3V150" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="3.3V151" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="C31" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="C-EU" device="C0402" package3d_urn="urn:adsk.eagle:package:26136/1" value="10uF"/>
<part name="3.3V152" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND213" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND214" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V153" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="U$31" library="coils" deviceset="FATFAN_GROUP" device=""/>
<part name="VDD31" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND215" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="PAD285" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD286" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD287" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD288" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD289" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="GND216" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND217" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V154" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="PAD290" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD291" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD292" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD293" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD294" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="R123" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="R124" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="GND225" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND226" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="U33" library="LDC1614" deviceset="LDC1614" device=""/>
<part name="R129" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="R130" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="3.3V160" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="3.3V161" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="C33" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="C-EU" device="C0402" package3d_urn="urn:adsk.eagle:package:26136/1" value="10uF"/>
<part name="3.3V162" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND227" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND228" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V163" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="U$33" library="coils" deviceset="FATFAN_GROUP" device=""/>
<part name="VDD33" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND229" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="PAD305" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD306" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD307" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD308" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD309" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="GND230" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND231" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V164" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="PAD310" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD311" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD312" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD313" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD314" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="R131" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="R132" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="GND239" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND240" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="U35" library="LDC1614" deviceset="LDC1614" device=""/>
<part name="R137" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="R138" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="3.3V170" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="3.3V171" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="C35" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="C-EU" device="C0402" package3d_urn="urn:adsk.eagle:package:26136/1" value="10uF"/>
<part name="3.3V172" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND241" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND242" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V173" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="U$35" library="coils" deviceset="FATFAN_GROUP" device=""/>
<part name="VDD35" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND243" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="PAD325" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD326" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD327" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD328" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD329" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="GND244" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND245" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V174" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="PAD330" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD331" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD332" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD333" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD334" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="R139" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="R140" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="GND253" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND254" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="U37" library="LDC1614" deviceset="LDC1614" device=""/>
<part name="R145" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="R146" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0402" package3d_urn="urn:adsk.eagle:package:26058/1" value="10k"/>
<part name="3.3V180" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="3.3V181" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="C37" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="C-EU" device="C0402" package3d_urn="urn:adsk.eagle:package:26136/1" value="10uF"/>
<part name="3.3V182" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND255" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND256" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V183" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="U$37" library="coils" deviceset="FATFAN_GROUP" device=""/>
<part name="VDD37" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="GND257" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="PAD345" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD346" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD347" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD348" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD349" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="GND258" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND259" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="3.3V184" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VDD" device=""/>
<part name="PAD350" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD351" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD352" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD353" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD354" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="WIREPAD" device="SMD1,27-254" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="R147" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
<part name="R148" library="resistor" library_urn="urn:adsk.eagle:library:348" deviceset="R-EU_" device="R0201" package3d_urn="urn:adsk.eagle:package:26117/1" value="NOFIT"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="GND8" gate="1" x="218.44" y="30.48"/>
<instance part="GND9" gate="1" x="162.56" y="30.48"/>
<instance part="U2" gate="G$1" x="172.72" y="78.74"/>
<instance part="R5" gate="G$1" x="223.52" y="58.42" rot="R90"/>
<instance part="R6" gate="G$1" x="215.9" y="58.42" rot="R90"/>
<instance part="3.3V5" gate="G$1" x="223.52" y="68.58"/>
<instance part="3.3V6" gate="G$1" x="210.82" y="83.82"/>
<instance part="C2" gate="G$1" x="231.14" y="93.98"/>
<instance part="3.3V7" gate="G$1" x="231.14" y="101.6"/>
<instance part="GND10" gate="1" x="231.14" y="83.82"/>
<instance part="GND11" gate="1" x="261.62" y="81.28"/>
<instance part="3.3V8" gate="G$1" x="264.16" y="99.06"/>
<instance part="U$1" gate="G$1" x="109.22" y="25.4" rot="MR0"/>
<instance part="VDD1" gate="G$1" x="299.72" y="55.88"/>
<instance part="GND12" gate="1" x="299.72" y="15.24"/>
<instance part="PAD8" gate="G$1" x="276.86" y="91.44" rot="R180"/>
<instance part="PAD11" gate="G$1" x="276.86" y="83.82" rot="R180"/>
<instance part="PAD12" gate="G$1" x="246.38" y="60.96" rot="R180"/>
<instance part="PAD13" gate="G$1" x="276.86" y="58.42" smashed="yes" rot="R180"/>
<instance part="PAD14" gate="G$1" x="279.4" y="50.8" smashed="yes" rot="R180"/>
<instance part="GND13" gate="1" x="236.22" y="73.66"/>
<instance part="GND14" gate="1" x="294.64" y="81.28"/>
<instance part="3.3V9" gate="G$1" x="297.18" y="99.06"/>
<instance part="PAD15" gate="G$1" x="309.88" y="91.44" rot="R180"/>
<instance part="PAD16" gate="G$1" x="309.88" y="83.82" rot="R180"/>
<instance part="PAD17" gate="G$1" x="284.48" y="71.12" rot="R180"/>
<instance part="PAD18" gate="G$1" x="284.48" y="63.5" rot="R180"/>
<instance part="R7" gate="G$1" x="299.72" y="43.18" rot="R90"/>
<instance part="R8" gate="G$1" x="299.72" y="30.48" rot="R90"/>
<instance part="GND22" gate="1" x="223.52" y="-73.66"/>
<instance part="GND23" gate="1" x="167.64" y="-73.66"/>
<instance part="U4" gate="G$1" x="177.8" y="-25.4"/>
<instance part="R13" gate="G$1" x="228.6" y="-45.72" rot="R90"/>
<instance part="R14" gate="G$1" x="220.98" y="-45.72" rot="R90"/>
<instance part="3.3V15" gate="G$1" x="228.6" y="-35.56"/>
<instance part="3.3V16" gate="G$1" x="215.9" y="-20.32"/>
<instance part="C4" gate="G$1" x="236.22" y="-10.16"/>
<instance part="3.3V17" gate="G$1" x="236.22" y="-2.54"/>
<instance part="GND24" gate="1" x="236.22" y="-20.32"/>
<instance part="GND25" gate="1" x="266.7" y="-22.86"/>
<instance part="3.3V18" gate="G$1" x="269.24" y="-5.08"/>
<instance part="U$4" gate="G$1" x="114.3" y="-78.74" rot="MR0"/>
<instance part="VDD4" gate="G$1" x="304.8" y="-48.26"/>
<instance part="GND26" gate="1" x="304.8" y="-88.9"/>
<instance part="PAD28" gate="G$1" x="281.94" y="-12.7" rot="R180"/>
<instance part="PAD29" gate="G$1" x="281.94" y="-20.32" rot="R180"/>
<instance part="PAD30" gate="G$1" x="251.46" y="-43.18" rot="R180"/>
<instance part="PAD31" gate="G$1" x="281.94" y="-45.72" smashed="yes" rot="R180"/>
<instance part="PAD32" gate="G$1" x="284.48" y="-53.34" smashed="yes" rot="R180"/>
<instance part="GND27" gate="1" x="241.3" y="-30.48"/>
<instance part="GND28" gate="1" x="299.72" y="-22.86"/>
<instance part="3.3V19" gate="G$1" x="302.26" y="-5.08"/>
<instance part="PAD33" gate="G$1" x="314.96" y="-12.7" rot="R180"/>
<instance part="PAD34" gate="G$1" x="314.96" y="-20.32" rot="R180"/>
<instance part="PAD35" gate="G$1" x="289.56" y="-33.02" rot="R180"/>
<instance part="PAD36" gate="G$1" x="289.56" y="-40.64" rot="R180"/>
<instance part="R15" gate="G$1" x="304.8" y="-60.96" rot="R90"/>
<instance part="R16" gate="G$1" x="304.8" y="-73.66" rot="R90"/>
<instance part="GND36" gate="1" x="223.52" y="-172.72"/>
<instance part="GND37" gate="1" x="167.64" y="-172.72"/>
<instance part="U6" gate="G$1" x="177.8" y="-124.46"/>
<instance part="R21" gate="G$1" x="228.6" y="-144.78" rot="R90"/>
<instance part="R22" gate="G$1" x="220.98" y="-144.78" rot="R90"/>
<instance part="3.3V25" gate="G$1" x="228.6" y="-134.62"/>
<instance part="3.3V26" gate="G$1" x="215.9" y="-119.38"/>
<instance part="C6" gate="G$1" x="236.22" y="-109.22"/>
<instance part="3.3V27" gate="G$1" x="236.22" y="-101.6"/>
<instance part="GND38" gate="1" x="236.22" y="-119.38"/>
<instance part="GND39" gate="1" x="266.7" y="-121.92"/>
<instance part="3.3V28" gate="G$1" x="269.24" y="-104.14"/>
<instance part="U$6" gate="G$1" x="114.3" y="-177.8" rot="MR0"/>
<instance part="VDD6" gate="G$1" x="304.8" y="-147.32"/>
<instance part="GND40" gate="1" x="304.8" y="-187.96"/>
<instance part="PAD46" gate="G$1" x="281.94" y="-111.76" rot="R180"/>
<instance part="PAD47" gate="G$1" x="281.94" y="-119.38" rot="R180"/>
<instance part="PAD48" gate="G$1" x="251.46" y="-142.24" rot="R180"/>
<instance part="PAD49" gate="G$1" x="281.94" y="-144.78" smashed="yes" rot="R180"/>
<instance part="PAD50" gate="G$1" x="284.48" y="-152.4" smashed="yes" rot="R180"/>
<instance part="GND41" gate="1" x="241.3" y="-129.54"/>
<instance part="GND42" gate="1" x="299.72" y="-121.92"/>
<instance part="3.3V29" gate="G$1" x="302.26" y="-104.14"/>
<instance part="PAD51" gate="G$1" x="314.96" y="-111.76" rot="R180"/>
<instance part="PAD52" gate="G$1" x="314.96" y="-119.38" rot="R180"/>
<instance part="PAD53" gate="G$1" x="289.56" y="-132.08" rot="R180"/>
<instance part="PAD54" gate="G$1" x="289.56" y="-139.7" rot="R180"/>
<instance part="R23" gate="G$1" x="304.8" y="-160.02" rot="R90"/>
<instance part="R24" gate="G$1" x="304.8" y="-172.72" rot="R90"/>
<instance part="GND50" gate="1" x="568.96" y="45.72"/>
<instance part="GND51" gate="1" x="513.08" y="45.72"/>
<instance part="U8" gate="G$1" x="523.24" y="93.98"/>
<instance part="R29" gate="G$1" x="574.04" y="73.66" rot="R90"/>
<instance part="R30" gate="G$1" x="566.42" y="73.66" rot="R90"/>
<instance part="3.3V35" gate="G$1" x="574.04" y="83.82"/>
<instance part="3.3V36" gate="G$1" x="561.34" y="99.06"/>
<instance part="C8" gate="G$1" x="581.66" y="109.22"/>
<instance part="3.3V37" gate="G$1" x="581.66" y="116.84"/>
<instance part="GND52" gate="1" x="581.66" y="99.06"/>
<instance part="GND53" gate="1" x="612.14" y="96.52"/>
<instance part="3.3V38" gate="G$1" x="614.68" y="114.3"/>
<instance part="U$8" gate="G$1" x="459.74" y="40.64" rot="MR0"/>
<instance part="VDD8" gate="G$1" x="650.24" y="71.12"/>
<instance part="GND54" gate="1" x="650.24" y="30.48"/>
<instance part="PAD64" gate="G$1" x="627.38" y="106.68" rot="R180"/>
<instance part="PAD65" gate="G$1" x="627.38" y="99.06" rot="R180"/>
<instance part="PAD66" gate="G$1" x="596.9" y="76.2" rot="R180"/>
<instance part="PAD67" gate="G$1" x="627.38" y="73.66" smashed="yes" rot="R180"/>
<instance part="PAD68" gate="G$1" x="629.92" y="66.04" smashed="yes" rot="R180"/>
<instance part="GND55" gate="1" x="586.74" y="88.9"/>
<instance part="GND56" gate="1" x="645.16" y="96.52"/>
<instance part="3.3V39" gate="G$1" x="647.7" y="114.3"/>
<instance part="PAD69" gate="G$1" x="660.4" y="106.68" rot="R180"/>
<instance part="PAD70" gate="G$1" x="660.4" y="99.06" rot="R180"/>
<instance part="PAD71" gate="G$1" x="635" y="86.36" rot="R180"/>
<instance part="PAD72" gate="G$1" x="635" y="78.74" rot="R180"/>
<instance part="R31" gate="G$1" x="650.24" y="58.42" rot="R90"/>
<instance part="R32" gate="G$1" x="650.24" y="45.72" rot="R90"/>
<instance part="GND64" gate="1" x="574.04" y="-60.96"/>
<instance part="GND65" gate="1" x="518.16" y="-60.96"/>
<instance part="U10" gate="G$1" x="528.32" y="-12.7"/>
<instance part="R37" gate="G$1" x="579.12" y="-33.02" rot="R90"/>
<instance part="R38" gate="G$1" x="571.5" y="-33.02" rot="R90"/>
<instance part="3.3V45" gate="G$1" x="579.12" y="-22.86"/>
<instance part="3.3V46" gate="G$1" x="566.42" y="-7.62"/>
<instance part="C10" gate="G$1" x="586.74" y="2.54"/>
<instance part="3.3V47" gate="G$1" x="586.74" y="10.16"/>
<instance part="GND66" gate="1" x="586.74" y="-7.62"/>
<instance part="GND67" gate="1" x="617.22" y="-10.16"/>
<instance part="3.3V48" gate="G$1" x="619.76" y="7.62"/>
<instance part="U$10" gate="G$1" x="464.82" y="-66.04" rot="MR0"/>
<instance part="VDD10" gate="G$1" x="655.32" y="-35.56"/>
<instance part="GND68" gate="1" x="655.32" y="-76.2"/>
<instance part="PAD82" gate="G$1" x="632.46" y="0" rot="R180"/>
<instance part="PAD83" gate="G$1" x="632.46" y="-7.62" rot="R180"/>
<instance part="PAD84" gate="G$1" x="601.98" y="-30.48" rot="R180"/>
<instance part="PAD85" gate="G$1" x="632.46" y="-33.02" smashed="yes" rot="R180"/>
<instance part="PAD86" gate="G$1" x="635" y="-40.64" smashed="yes" rot="R180"/>
<instance part="GND69" gate="1" x="591.82" y="-17.78"/>
<instance part="GND70" gate="1" x="650.24" y="-10.16"/>
<instance part="3.3V49" gate="G$1" x="652.78" y="7.62"/>
<instance part="PAD87" gate="G$1" x="665.48" y="0" rot="R180"/>
<instance part="PAD88" gate="G$1" x="665.48" y="-7.62" rot="R180"/>
<instance part="PAD89" gate="G$1" x="640.08" y="-20.32" rot="R180"/>
<instance part="PAD90" gate="G$1" x="640.08" y="-27.94" rot="R180"/>
<instance part="R39" gate="G$1" x="655.32" y="-48.26" rot="R90"/>
<instance part="R40" gate="G$1" x="655.32" y="-60.96" rot="R90"/>
<instance part="GND29" gate="1" x="574.04" y="-172.72"/>
<instance part="GND30" gate="1" x="518.16" y="-172.72"/>
<instance part="U5" gate="G$1" x="528.32" y="-124.46"/>
<instance part="R17" gate="G$1" x="579.12" y="-144.78" rot="R90"/>
<instance part="R18" gate="G$1" x="571.5" y="-144.78" rot="R90"/>
<instance part="3.3V20" gate="G$1" x="579.12" y="-134.62"/>
<instance part="3.3V21" gate="G$1" x="566.42" y="-119.38"/>
<instance part="C5" gate="G$1" x="586.74" y="-109.22"/>
<instance part="3.3V22" gate="G$1" x="586.74" y="-101.6"/>
<instance part="GND31" gate="1" x="586.74" y="-119.38"/>
<instance part="GND32" gate="1" x="617.22" y="-121.92"/>
<instance part="3.3V23" gate="G$1" x="619.76" y="-104.14"/>
<instance part="U$5" gate="G$1" x="464.82" y="-177.8" rot="MR0"/>
<instance part="VDD5" gate="G$1" x="655.32" y="-147.32"/>
<instance part="GND33" gate="1" x="655.32" y="-187.96"/>
<instance part="PAD37" gate="G$1" x="632.46" y="-111.76" rot="R180"/>
<instance part="PAD38" gate="G$1" x="632.46" y="-119.38" rot="R180"/>
<instance part="PAD39" gate="G$1" x="601.98" y="-142.24" rot="R180"/>
<instance part="PAD40" gate="G$1" x="632.46" y="-144.78" smashed="yes" rot="R180"/>
<instance part="PAD41" gate="G$1" x="635" y="-152.4" smashed="yes" rot="R180"/>
<instance part="GND34" gate="1" x="591.82" y="-129.54"/>
<instance part="GND35" gate="1" x="650.24" y="-121.92"/>
<instance part="3.3V24" gate="G$1" x="652.78" y="-104.14"/>
<instance part="PAD42" gate="G$1" x="665.48" y="-111.76" rot="R180"/>
<instance part="PAD43" gate="G$1" x="665.48" y="-119.38" rot="R180"/>
<instance part="PAD44" gate="G$1" x="640.08" y="-132.08" rot="R180"/>
<instance part="PAD45" gate="G$1" x="640.08" y="-139.7" rot="R180"/>
<instance part="R19" gate="G$1" x="655.32" y="-160.02" rot="R90"/>
<instance part="R20" gate="G$1" x="655.32" y="-172.72" rot="R90"/>
<instance part="GND57" gate="1" x="233.68" y="-309.88"/>
<instance part="GND58" gate="1" x="177.8" y="-309.88"/>
<instance part="U9" gate="G$1" x="187.96" y="-261.62"/>
<instance part="R33" gate="G$1" x="238.76" y="-281.94" rot="R90"/>
<instance part="R34" gate="G$1" x="231.14" y="-281.94" rot="R90"/>
<instance part="3.3V40" gate="G$1" x="238.76" y="-271.78"/>
<instance part="3.3V41" gate="G$1" x="226.06" y="-256.54"/>
<instance part="C9" gate="G$1" x="246.38" y="-246.38"/>
<instance part="3.3V42" gate="G$1" x="246.38" y="-238.76"/>
<instance part="GND59" gate="1" x="246.38" y="-256.54"/>
<instance part="GND60" gate="1" x="276.86" y="-259.08"/>
<instance part="3.3V43" gate="G$1" x="279.4" y="-241.3"/>
<instance part="U$9" gate="G$1" x="124.46" y="-314.96" rot="MR0"/>
<instance part="VDD9" gate="G$1" x="314.96" y="-284.48"/>
<instance part="GND61" gate="1" x="314.96" y="-325.12"/>
<instance part="PAD73" gate="G$1" x="292.1" y="-248.92" rot="R180"/>
<instance part="PAD74" gate="G$1" x="292.1" y="-256.54" rot="R180"/>
<instance part="PAD75" gate="G$1" x="261.62" y="-279.4" rot="R180"/>
<instance part="PAD76" gate="G$1" x="292.1" y="-281.94" smashed="yes" rot="R180"/>
<instance part="PAD77" gate="G$1" x="294.64" y="-289.56" smashed="yes" rot="R180"/>
<instance part="GND62" gate="1" x="251.46" y="-266.7"/>
<instance part="GND63" gate="1" x="309.88" y="-259.08"/>
<instance part="3.3V44" gate="G$1" x="312.42" y="-241.3"/>
<instance part="PAD78" gate="G$1" x="325.12" y="-248.92" rot="R180"/>
<instance part="PAD79" gate="G$1" x="325.12" y="-256.54" rot="R180"/>
<instance part="PAD80" gate="G$1" x="299.72" y="-269.24" rot="R180"/>
<instance part="PAD81" gate="G$1" x="299.72" y="-276.86" rot="R180"/>
<instance part="R35" gate="G$1" x="314.96" y="-297.18" rot="R90"/>
<instance part="R36" gate="G$1" x="314.96" y="-309.88" rot="R90"/>
<instance part="GND78" gate="1" x="589.28" y="-292.1"/>
<instance part="GND79" gate="1" x="533.4" y="-292.1"/>
<instance part="U12" gate="G$1" x="543.56" y="-243.84"/>
<instance part="R45" gate="G$1" x="594.36" y="-264.16" rot="R90"/>
<instance part="R46" gate="G$1" x="586.74" y="-264.16" rot="R90"/>
<instance part="3.3V55" gate="G$1" x="594.36" y="-254"/>
<instance part="3.3V56" gate="G$1" x="581.66" y="-238.76"/>
<instance part="C12" gate="G$1" x="601.98" y="-228.6"/>
<instance part="3.3V57" gate="G$1" x="601.98" y="-220.98"/>
<instance part="GND80" gate="1" x="601.98" y="-238.76"/>
<instance part="GND81" gate="1" x="632.46" y="-241.3"/>
<instance part="3.3V58" gate="G$1" x="635" y="-223.52"/>
<instance part="U$12" gate="G$1" x="480.06" y="-297.18" rot="MR0"/>
<instance part="VDD12" gate="G$1" x="670.56" y="-266.7"/>
<instance part="GND82" gate="1" x="670.56" y="-307.34"/>
<instance part="PAD100" gate="G$1" x="647.7" y="-231.14" rot="R180"/>
<instance part="PAD101" gate="G$1" x="647.7" y="-238.76" rot="R180"/>
<instance part="PAD102" gate="G$1" x="617.22" y="-261.62" rot="R180"/>
<instance part="PAD103" gate="G$1" x="647.7" y="-264.16" smashed="yes" rot="R180"/>
<instance part="PAD104" gate="G$1" x="650.24" y="-271.78" smashed="yes" rot="R180"/>
<instance part="GND83" gate="1" x="607.06" y="-248.92"/>
<instance part="GND84" gate="1" x="665.48" y="-241.3"/>
<instance part="3.3V59" gate="G$1" x="668.02" y="-223.52"/>
<instance part="PAD105" gate="G$1" x="680.72" y="-231.14" rot="R180"/>
<instance part="PAD106" gate="G$1" x="680.72" y="-238.76" rot="R180"/>
<instance part="PAD107" gate="G$1" x="655.32" y="-251.46" rot="R180"/>
<instance part="PAD108" gate="G$1" x="655.32" y="-259.08" rot="R180"/>
<instance part="R47" gate="G$1" x="670.56" y="-279.4" rot="R90"/>
<instance part="R48" gate="G$1" x="670.56" y="-292.1" rot="R90"/>
<instance part="GND92" gate="1" x="977.9" y="68.58"/>
<instance part="GND93" gate="1" x="922.02" y="68.58"/>
<instance part="U14" gate="G$1" x="932.18" y="116.84"/>
<instance part="R53" gate="G$1" x="982.98" y="96.52" rot="R90"/>
<instance part="R54" gate="G$1" x="975.36" y="96.52" rot="R90"/>
<instance part="3.3V65" gate="G$1" x="982.98" y="106.68"/>
<instance part="3.3V66" gate="G$1" x="970.28" y="121.92"/>
<instance part="C14" gate="G$1" x="990.6" y="132.08"/>
<instance part="3.3V67" gate="G$1" x="990.6" y="139.7"/>
<instance part="GND94" gate="1" x="990.6" y="121.92"/>
<instance part="GND95" gate="1" x="1021.08" y="119.38"/>
<instance part="3.3V68" gate="G$1" x="1023.62" y="137.16"/>
<instance part="U$14" gate="G$1" x="868.68" y="63.5" rot="MR0"/>
<instance part="VDD14" gate="G$1" x="1059.18" y="93.98"/>
<instance part="GND96" gate="1" x="1059.18" y="53.34"/>
<instance part="PAD118" gate="G$1" x="1036.32" y="129.54" rot="R180"/>
<instance part="PAD119" gate="G$1" x="1036.32" y="121.92" rot="R180"/>
<instance part="PAD120" gate="G$1" x="1005.84" y="99.06" rot="R180"/>
<instance part="PAD121" gate="G$1" x="1036.32" y="96.52" smashed="yes" rot="R180"/>
<instance part="PAD122" gate="G$1" x="1038.86" y="88.9" smashed="yes" rot="R180"/>
<instance part="GND97" gate="1" x="995.68" y="111.76"/>
<instance part="GND98" gate="1" x="1054.1" y="119.38"/>
<instance part="3.3V69" gate="G$1" x="1056.64" y="137.16"/>
<instance part="PAD123" gate="G$1" x="1069.34" y="129.54" rot="R180"/>
<instance part="PAD124" gate="G$1" x="1069.34" y="121.92" rot="R180"/>
<instance part="PAD125" gate="G$1" x="1043.94" y="109.22" rot="R180"/>
<instance part="PAD126" gate="G$1" x="1043.94" y="101.6" rot="R180"/>
<instance part="R55" gate="G$1" x="1059.18" y="81.28" rot="R90"/>
<instance part="R56" gate="G$1" x="1059.18" y="68.58" rot="R90"/>
<instance part="GND106" gate="1" x="985.52" y="-48.26"/>
<instance part="GND107" gate="1" x="929.64" y="-48.26"/>
<instance part="U16" gate="G$1" x="939.8" y="0"/>
<instance part="R61" gate="G$1" x="990.6" y="-20.32" rot="R90"/>
<instance part="R62" gate="G$1" x="982.98" y="-20.32" rot="R90"/>
<instance part="3.3V75" gate="G$1" x="990.6" y="-10.16"/>
<instance part="3.3V76" gate="G$1" x="977.9" y="5.08"/>
<instance part="C16" gate="G$1" x="998.22" y="15.24"/>
<instance part="3.3V77" gate="G$1" x="998.22" y="22.86"/>
<instance part="GND108" gate="1" x="998.22" y="5.08"/>
<instance part="GND109" gate="1" x="1028.7" y="2.54"/>
<instance part="3.3V78" gate="G$1" x="1031.24" y="20.32"/>
<instance part="U$16" gate="G$1" x="876.3" y="-53.34" rot="MR0"/>
<instance part="VDD16" gate="G$1" x="1066.8" y="-22.86"/>
<instance part="GND110" gate="1" x="1066.8" y="-63.5"/>
<instance part="PAD136" gate="G$1" x="1043.94" y="12.7" rot="R180"/>
<instance part="PAD137" gate="G$1" x="1043.94" y="5.08" rot="R180"/>
<instance part="PAD138" gate="G$1" x="1013.46" y="-17.78" rot="R180"/>
<instance part="PAD139" gate="G$1" x="1043.94" y="-20.32" smashed="yes" rot="R180"/>
<instance part="PAD140" gate="G$1" x="1046.48" y="-27.94" smashed="yes" rot="R180"/>
<instance part="GND111" gate="1" x="1003.3" y="-5.08"/>
<instance part="GND112" gate="1" x="1061.72" y="2.54"/>
<instance part="3.3V79" gate="G$1" x="1064.26" y="20.32"/>
<instance part="PAD141" gate="G$1" x="1076.96" y="12.7" rot="R180"/>
<instance part="PAD142" gate="G$1" x="1076.96" y="5.08" rot="R180"/>
<instance part="PAD143" gate="G$1" x="1051.56" y="-7.62" rot="R180"/>
<instance part="PAD144" gate="G$1" x="1051.56" y="-15.24" rot="R180"/>
<instance part="R63" gate="G$1" x="1066.8" y="-35.56" rot="R90"/>
<instance part="R64" gate="G$1" x="1066.8" y="-48.26" rot="R90"/>
</instances>
<busses>
</busses>
<nets>
<net name="ADDR1" class="0">
<segment>
<pinref part="R7" gate="G$1" pin="1"/>
<pinref part="R8" gate="G$1" pin="2"/>
<wire x1="299.72" y1="35.56" x2="299.72" y2="38.1" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="ADDR"/>
<wire x1="210.82" y1="38.1" x2="292.1" y2="38.1" width="0.1524" layer="91"/>
<wire x1="292.1" y1="38.1" x2="292.1" y2="35.56" width="0.1524" layer="91"/>
<wire x1="292.1" y1="35.56" x2="299.72" y2="35.56" width="0.1524" layer="91"/>
<junction x="299.72" y="35.56"/>
</segment>
</net>
<net name="VDD" class="0">
<segment>
<pinref part="3.3V5" gate="G$1" pin="VDD"/>
<pinref part="R5" gate="G$1" pin="2"/>
<wire x1="223.52" y1="66.04" x2="223.52" y2="63.5" width="0.1524" layer="91"/>
<pinref part="R6" gate="G$1" pin="2"/>
<wire x1="215.9" y1="63.5" x2="223.52" y2="63.5" width="0.1524" layer="91"/>
<junction x="223.52" y="63.5"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="VDD"/>
<wire x1="210.82" y1="76.2" x2="210.82" y2="81.28" width="0.1524" layer="91"/>
<pinref part="3.3V6" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="C2" gate="G$1" pin="1"/>
<pinref part="3.3V7" gate="G$1" pin="VDD"/>
<wire x1="231.14" y1="96.52" x2="231.14" y2="99.06" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="3.3V8" gate="G$1" pin="VDD"/>
<wire x1="264.16" y1="96.52" x2="264.16" y2="91.44" width="0.1524" layer="91"/>
<wire x1="264.16" y1="91.44" x2="274.32" y2="91.44" width="0.1524" layer="91"/>
<pinref part="PAD8" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="VDD1" gate="G$1" pin="VDD"/>
<wire x1="299.72" y1="48.26" x2="299.72" y2="53.34" width="0.1524" layer="91"/>
<pinref part="R7" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="3.3V9" gate="G$1" pin="VDD"/>
<wire x1="297.18" y1="96.52" x2="297.18" y2="91.44" width="0.1524" layer="91"/>
<wire x1="297.18" y1="91.44" x2="307.34" y2="91.44" width="0.1524" layer="91"/>
<pinref part="PAD15" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="3.3V15" gate="G$1" pin="VDD"/>
<pinref part="R13" gate="G$1" pin="2"/>
<wire x1="228.6" y1="-38.1" x2="228.6" y2="-40.64" width="0.1524" layer="91"/>
<pinref part="R14" gate="G$1" pin="2"/>
<wire x1="220.98" y1="-40.64" x2="228.6" y2="-40.64" width="0.1524" layer="91"/>
<junction x="228.6" y="-40.64"/>
</segment>
<segment>
<pinref part="U4" gate="G$1" pin="VDD"/>
<wire x1="215.9" y1="-27.94" x2="215.9" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="3.3V16" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="C4" gate="G$1" pin="1"/>
<pinref part="3.3V17" gate="G$1" pin="VDD"/>
<wire x1="236.22" y1="-7.62" x2="236.22" y2="-5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="3.3V18" gate="G$1" pin="VDD"/>
<wire x1="269.24" y1="-7.62" x2="269.24" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="269.24" y1="-12.7" x2="279.4" y2="-12.7" width="0.1524" layer="91"/>
<pinref part="PAD28" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="VDD4" gate="G$1" pin="VDD"/>
<wire x1="304.8" y1="-55.88" x2="304.8" y2="-50.8" width="0.1524" layer="91"/>
<pinref part="R15" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="3.3V19" gate="G$1" pin="VDD"/>
<wire x1="302.26" y1="-7.62" x2="302.26" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="302.26" y1="-12.7" x2="312.42" y2="-12.7" width="0.1524" layer="91"/>
<pinref part="PAD33" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="3.3V25" gate="G$1" pin="VDD"/>
<pinref part="R21" gate="G$1" pin="2"/>
<wire x1="228.6" y1="-137.16" x2="228.6" y2="-139.7" width="0.1524" layer="91"/>
<pinref part="R22" gate="G$1" pin="2"/>
<wire x1="220.98" y1="-139.7" x2="228.6" y2="-139.7" width="0.1524" layer="91"/>
<junction x="228.6" y="-139.7"/>
</segment>
<segment>
<pinref part="U6" gate="G$1" pin="VDD"/>
<wire x1="215.9" y1="-127" x2="215.9" y2="-121.92" width="0.1524" layer="91"/>
<pinref part="3.3V26" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="C6" gate="G$1" pin="1"/>
<pinref part="3.3V27" gate="G$1" pin="VDD"/>
<wire x1="236.22" y1="-106.68" x2="236.22" y2="-104.14" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="3.3V28" gate="G$1" pin="VDD"/>
<wire x1="269.24" y1="-106.68" x2="269.24" y2="-111.76" width="0.1524" layer="91"/>
<wire x1="269.24" y1="-111.76" x2="279.4" y2="-111.76" width="0.1524" layer="91"/>
<pinref part="PAD46" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="VDD6" gate="G$1" pin="VDD"/>
<wire x1="304.8" y1="-154.94" x2="304.8" y2="-149.86" width="0.1524" layer="91"/>
<pinref part="R23" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="3.3V29" gate="G$1" pin="VDD"/>
<wire x1="302.26" y1="-106.68" x2="302.26" y2="-111.76" width="0.1524" layer="91"/>
<wire x1="302.26" y1="-111.76" x2="312.42" y2="-111.76" width="0.1524" layer="91"/>
<pinref part="PAD51" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="3.3V35" gate="G$1" pin="VDD"/>
<pinref part="R29" gate="G$1" pin="2"/>
<wire x1="574.04" y1="81.28" x2="574.04" y2="78.74" width="0.1524" layer="91"/>
<pinref part="R30" gate="G$1" pin="2"/>
<wire x1="566.42" y1="78.74" x2="574.04" y2="78.74" width="0.1524" layer="91"/>
<junction x="574.04" y="78.74"/>
</segment>
<segment>
<pinref part="U8" gate="G$1" pin="VDD"/>
<wire x1="561.34" y1="91.44" x2="561.34" y2="96.52" width="0.1524" layer="91"/>
<pinref part="3.3V36" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="C8" gate="G$1" pin="1"/>
<pinref part="3.3V37" gate="G$1" pin="VDD"/>
<wire x1="581.66" y1="111.76" x2="581.66" y2="114.3" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="3.3V38" gate="G$1" pin="VDD"/>
<wire x1="614.68" y1="111.76" x2="614.68" y2="106.68" width="0.1524" layer="91"/>
<wire x1="614.68" y1="106.68" x2="624.84" y2="106.68" width="0.1524" layer="91"/>
<pinref part="PAD64" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="VDD8" gate="G$1" pin="VDD"/>
<wire x1="650.24" y1="63.5" x2="650.24" y2="68.58" width="0.1524" layer="91"/>
<pinref part="R31" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="3.3V39" gate="G$1" pin="VDD"/>
<wire x1="647.7" y1="111.76" x2="647.7" y2="106.68" width="0.1524" layer="91"/>
<wire x1="647.7" y1="106.68" x2="657.86" y2="106.68" width="0.1524" layer="91"/>
<pinref part="PAD69" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="3.3V45" gate="G$1" pin="VDD"/>
<pinref part="R37" gate="G$1" pin="2"/>
<wire x1="579.12" y1="-25.4" x2="579.12" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="R38" gate="G$1" pin="2"/>
<wire x1="571.5" y1="-27.94" x2="579.12" y2="-27.94" width="0.1524" layer="91"/>
<junction x="579.12" y="-27.94"/>
</segment>
<segment>
<pinref part="U10" gate="G$1" pin="VDD"/>
<wire x1="566.42" y1="-15.24" x2="566.42" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="3.3V46" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="C10" gate="G$1" pin="1"/>
<pinref part="3.3V47" gate="G$1" pin="VDD"/>
<wire x1="586.74" y1="5.08" x2="586.74" y2="7.62" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="3.3V48" gate="G$1" pin="VDD"/>
<wire x1="619.76" y1="5.08" x2="619.76" y2="0" width="0.1524" layer="91"/>
<wire x1="619.76" y1="0" x2="629.92" y2="0" width="0.1524" layer="91"/>
<pinref part="PAD82" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="VDD10" gate="G$1" pin="VDD"/>
<wire x1="655.32" y1="-43.18" x2="655.32" y2="-38.1" width="0.1524" layer="91"/>
<pinref part="R39" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="3.3V49" gate="G$1" pin="VDD"/>
<wire x1="652.78" y1="5.08" x2="652.78" y2="0" width="0.1524" layer="91"/>
<wire x1="652.78" y1="0" x2="662.94" y2="0" width="0.1524" layer="91"/>
<pinref part="PAD87" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="3.3V20" gate="G$1" pin="VDD"/>
<pinref part="R17" gate="G$1" pin="2"/>
<wire x1="579.12" y1="-137.16" x2="579.12" y2="-139.7" width="0.1524" layer="91"/>
<pinref part="R18" gate="G$1" pin="2"/>
<wire x1="571.5" y1="-139.7" x2="579.12" y2="-139.7" width="0.1524" layer="91"/>
<junction x="579.12" y="-139.7"/>
</segment>
<segment>
<pinref part="U5" gate="G$1" pin="VDD"/>
<wire x1="566.42" y1="-127" x2="566.42" y2="-121.92" width="0.1524" layer="91"/>
<pinref part="3.3V21" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="C5" gate="G$1" pin="1"/>
<pinref part="3.3V22" gate="G$1" pin="VDD"/>
<wire x1="586.74" y1="-106.68" x2="586.74" y2="-104.14" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="3.3V23" gate="G$1" pin="VDD"/>
<wire x1="619.76" y1="-106.68" x2="619.76" y2="-111.76" width="0.1524" layer="91"/>
<wire x1="619.76" y1="-111.76" x2="629.92" y2="-111.76" width="0.1524" layer="91"/>
<pinref part="PAD37" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="VDD5" gate="G$1" pin="VDD"/>
<wire x1="655.32" y1="-154.94" x2="655.32" y2="-149.86" width="0.1524" layer="91"/>
<pinref part="R19" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="3.3V24" gate="G$1" pin="VDD"/>
<wire x1="652.78" y1="-106.68" x2="652.78" y2="-111.76" width="0.1524" layer="91"/>
<wire x1="652.78" y1="-111.76" x2="662.94" y2="-111.76" width="0.1524" layer="91"/>
<pinref part="PAD42" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="3.3V40" gate="G$1" pin="VDD"/>
<pinref part="R33" gate="G$1" pin="2"/>
<wire x1="238.76" y1="-274.32" x2="238.76" y2="-276.86" width="0.1524" layer="91"/>
<pinref part="R34" gate="G$1" pin="2"/>
<wire x1="231.14" y1="-276.86" x2="238.76" y2="-276.86" width="0.1524" layer="91"/>
<junction x="238.76" y="-276.86"/>
</segment>
<segment>
<pinref part="U9" gate="G$1" pin="VDD"/>
<wire x1="226.06" y1="-264.16" x2="226.06" y2="-259.08" width="0.1524" layer="91"/>
<pinref part="3.3V41" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="C9" gate="G$1" pin="1"/>
<pinref part="3.3V42" gate="G$1" pin="VDD"/>
<wire x1="246.38" y1="-243.84" x2="246.38" y2="-241.3" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="3.3V43" gate="G$1" pin="VDD"/>
<wire x1="279.4" y1="-243.84" x2="279.4" y2="-248.92" width="0.1524" layer="91"/>
<wire x1="279.4" y1="-248.92" x2="289.56" y2="-248.92" width="0.1524" layer="91"/>
<pinref part="PAD73" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="VDD9" gate="G$1" pin="VDD"/>
<wire x1="314.96" y1="-292.1" x2="314.96" y2="-287.02" width="0.1524" layer="91"/>
<pinref part="R35" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="3.3V44" gate="G$1" pin="VDD"/>
<wire x1="312.42" y1="-243.84" x2="312.42" y2="-248.92" width="0.1524" layer="91"/>
<wire x1="312.42" y1="-248.92" x2="322.58" y2="-248.92" width="0.1524" layer="91"/>
<pinref part="PAD78" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="3.3V55" gate="G$1" pin="VDD"/>
<pinref part="R45" gate="G$1" pin="2"/>
<wire x1="594.36" y1="-256.54" x2="594.36" y2="-259.08" width="0.1524" layer="91"/>
<pinref part="R46" gate="G$1" pin="2"/>
<wire x1="586.74" y1="-259.08" x2="594.36" y2="-259.08" width="0.1524" layer="91"/>
<junction x="594.36" y="-259.08"/>
</segment>
<segment>
<pinref part="U12" gate="G$1" pin="VDD"/>
<wire x1="581.66" y1="-246.38" x2="581.66" y2="-241.3" width="0.1524" layer="91"/>
<pinref part="3.3V56" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="C12" gate="G$1" pin="1"/>
<pinref part="3.3V57" gate="G$1" pin="VDD"/>
<wire x1="601.98" y1="-226.06" x2="601.98" y2="-223.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="3.3V58" gate="G$1" pin="VDD"/>
<wire x1="635" y1="-226.06" x2="635" y2="-231.14" width="0.1524" layer="91"/>
<wire x1="635" y1="-231.14" x2="645.16" y2="-231.14" width="0.1524" layer="91"/>
<pinref part="PAD100" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="VDD12" gate="G$1" pin="VDD"/>
<wire x1="670.56" y1="-274.32" x2="670.56" y2="-269.24" width="0.1524" layer="91"/>
<pinref part="R47" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="3.3V59" gate="G$1" pin="VDD"/>
<wire x1="668.02" y1="-226.06" x2="668.02" y2="-231.14" width="0.1524" layer="91"/>
<wire x1="668.02" y1="-231.14" x2="678.18" y2="-231.14" width="0.1524" layer="91"/>
<pinref part="PAD105" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="3.3V65" gate="G$1" pin="VDD"/>
<pinref part="R53" gate="G$1" pin="2"/>
<wire x1="982.98" y1="104.14" x2="982.98" y2="101.6" width="0.1524" layer="91"/>
<pinref part="R54" gate="G$1" pin="2"/>
<wire x1="975.36" y1="101.6" x2="982.98" y2="101.6" width="0.1524" layer="91"/>
<junction x="982.98" y="101.6"/>
</segment>
<segment>
<pinref part="U14" gate="G$1" pin="VDD"/>
<wire x1="970.28" y1="114.3" x2="970.28" y2="119.38" width="0.1524" layer="91"/>
<pinref part="3.3V66" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="C14" gate="G$1" pin="1"/>
<pinref part="3.3V67" gate="G$1" pin="VDD"/>
<wire x1="990.6" y1="134.62" x2="990.6" y2="137.16" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="3.3V68" gate="G$1" pin="VDD"/>
<wire x1="1023.62" y1="134.62" x2="1023.62" y2="129.54" width="0.1524" layer="91"/>
<wire x1="1023.62" y1="129.54" x2="1033.78" y2="129.54" width="0.1524" layer="91"/>
<pinref part="PAD118" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="VDD14" gate="G$1" pin="VDD"/>
<wire x1="1059.18" y1="86.36" x2="1059.18" y2="91.44" width="0.1524" layer="91"/>
<pinref part="R55" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="3.3V69" gate="G$1" pin="VDD"/>
<wire x1="1056.64" y1="134.62" x2="1056.64" y2="129.54" width="0.1524" layer="91"/>
<wire x1="1056.64" y1="129.54" x2="1066.8" y2="129.54" width="0.1524" layer="91"/>
<pinref part="PAD123" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="3.3V75" gate="G$1" pin="VDD"/>
<pinref part="R61" gate="G$1" pin="2"/>
<wire x1="990.6" y1="-12.7" x2="990.6" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="R62" gate="G$1" pin="2"/>
<wire x1="982.98" y1="-15.24" x2="990.6" y2="-15.24" width="0.1524" layer="91"/>
<junction x="990.6" y="-15.24"/>
</segment>
<segment>
<pinref part="U16" gate="G$1" pin="VDD"/>
<wire x1="977.9" y1="-2.54" x2="977.9" y2="2.54" width="0.1524" layer="91"/>
<pinref part="3.3V76" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="C16" gate="G$1" pin="1"/>
<pinref part="3.3V77" gate="G$1" pin="VDD"/>
<wire x1="998.22" y1="17.78" x2="998.22" y2="20.32" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="3.3V78" gate="G$1" pin="VDD"/>
<wire x1="1031.24" y1="17.78" x2="1031.24" y2="12.7" width="0.1524" layer="91"/>
<wire x1="1031.24" y1="12.7" x2="1041.4" y2="12.7" width="0.1524" layer="91"/>
<pinref part="PAD136" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="VDD16" gate="G$1" pin="VDD"/>
<wire x1="1066.8" y1="-30.48" x2="1066.8" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="R63" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="3.3V79" gate="G$1" pin="VDD"/>
<wire x1="1064.26" y1="17.78" x2="1064.26" y2="12.7" width="0.1524" layer="91"/>
<wire x1="1064.26" y1="12.7" x2="1074.42" y2="12.7" width="0.1524" layer="91"/>
<pinref part="PAD141" gate="G$1" pin="P"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="GND8" gate="1" pin="GND"/>
<wire x1="210.82" y1="33.02" x2="218.44" y2="33.02" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="DAP"/>
</segment>
<segment>
<pinref part="GND9" gate="1" pin="GND"/>
<wire x1="162.56" y1="33.02" x2="162.56" y2="35.56" width="0.1524" layer="91"/>
<wire x1="162.56" y1="35.56" x2="167.64" y2="35.56" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="GND"/>
<pinref part="U2" gate="G$1" pin="CLKIN"/>
<wire x1="167.64" y1="76.2" x2="162.56" y2="76.2" width="0.1524" layer="91"/>
<wire x1="162.56" y1="76.2" x2="162.56" y2="35.56" width="0.1524" layer="91"/>
<junction x="162.56" y="35.56"/>
</segment>
<segment>
<pinref part="GND10" gate="1" pin="GND"/>
<pinref part="C2" gate="G$1" pin="2"/>
<wire x1="231.14" y1="86.36" x2="231.14" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND11" gate="1" pin="GND"/>
<wire x1="261.62" y1="83.82" x2="274.32" y2="83.82" width="0.1524" layer="91"/>
<pinref part="PAD11" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND12" gate="1" pin="GND"/>
<wire x1="299.72" y1="25.4" x2="299.72" y2="17.78" width="0.1524" layer="91"/>
<pinref part="R8" gate="G$1" pin="1"/>
<junction x="299.72" y="25.4"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="SD"/>
<wire x1="210.82" y1="68.58" x2="213.36" y2="68.58" width="0.1524" layer="91"/>
<wire x1="213.36" y1="68.58" x2="213.36" y2="76.2" width="0.1524" layer="91"/>
<wire x1="213.36" y1="76.2" x2="236.22" y2="76.2" width="0.1524" layer="91"/>
<pinref part="GND13" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND14" gate="1" pin="GND"/>
<wire x1="294.64" y1="83.82" x2="307.34" y2="83.82" width="0.1524" layer="91"/>
<pinref part="PAD16" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND22" gate="1" pin="GND"/>
<wire x1="215.9" y1="-71.12" x2="223.52" y2="-71.12" width="0.1524" layer="91"/>
<pinref part="U4" gate="G$1" pin="DAP"/>
</segment>
<segment>
<pinref part="GND23" gate="1" pin="GND"/>
<wire x1="167.64" y1="-71.12" x2="167.64" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="167.64" y1="-68.58" x2="172.72" y2="-68.58" width="0.1524" layer="91"/>
<pinref part="U4" gate="G$1" pin="GND"/>
<pinref part="U4" gate="G$1" pin="CLKIN"/>
<wire x1="172.72" y1="-27.94" x2="167.64" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="167.64" y1="-27.94" x2="167.64" y2="-68.58" width="0.1524" layer="91"/>
<junction x="167.64" y="-68.58"/>
</segment>
<segment>
<pinref part="GND24" gate="1" pin="GND"/>
<pinref part="C4" gate="G$1" pin="2"/>
<wire x1="236.22" y1="-17.78" x2="236.22" y2="-15.24" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND25" gate="1" pin="GND"/>
<wire x1="266.7" y1="-20.32" x2="279.4" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="PAD29" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND26" gate="1" pin="GND"/>
<wire x1="304.8" y1="-78.74" x2="304.8" y2="-86.36" width="0.1524" layer="91"/>
<pinref part="R16" gate="G$1" pin="1"/>
<junction x="304.8" y="-78.74"/>
</segment>
<segment>
<pinref part="U4" gate="G$1" pin="SD"/>
<wire x1="215.9" y1="-35.56" x2="218.44" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="218.44" y1="-35.56" x2="218.44" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="218.44" y1="-27.94" x2="241.3" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="GND27" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND28" gate="1" pin="GND"/>
<wire x1="299.72" y1="-20.32" x2="312.42" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="PAD34" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND36" gate="1" pin="GND"/>
<wire x1="215.9" y1="-170.18" x2="223.52" y2="-170.18" width="0.1524" layer="91"/>
<pinref part="U6" gate="G$1" pin="DAP"/>
</segment>
<segment>
<pinref part="GND37" gate="1" pin="GND"/>
<wire x1="167.64" y1="-170.18" x2="167.64" y2="-167.64" width="0.1524" layer="91"/>
<wire x1="167.64" y1="-167.64" x2="172.72" y2="-167.64" width="0.1524" layer="91"/>
<pinref part="U6" gate="G$1" pin="GND"/>
<pinref part="U6" gate="G$1" pin="CLKIN"/>
<wire x1="172.72" y1="-127" x2="167.64" y2="-127" width="0.1524" layer="91"/>
<wire x1="167.64" y1="-127" x2="167.64" y2="-167.64" width="0.1524" layer="91"/>
<junction x="167.64" y="-167.64"/>
</segment>
<segment>
<pinref part="GND38" gate="1" pin="GND"/>
<pinref part="C6" gate="G$1" pin="2"/>
<wire x1="236.22" y1="-116.84" x2="236.22" y2="-114.3" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND39" gate="1" pin="GND"/>
<wire x1="266.7" y1="-119.38" x2="279.4" y2="-119.38" width="0.1524" layer="91"/>
<pinref part="PAD47" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND40" gate="1" pin="GND"/>
<wire x1="304.8" y1="-177.8" x2="304.8" y2="-185.42" width="0.1524" layer="91"/>
<pinref part="R24" gate="G$1" pin="1"/>
<junction x="304.8" y="-177.8"/>
</segment>
<segment>
<pinref part="U6" gate="G$1" pin="SD"/>
<wire x1="215.9" y1="-134.62" x2="218.44" y2="-134.62" width="0.1524" layer="91"/>
<wire x1="218.44" y1="-134.62" x2="218.44" y2="-127" width="0.1524" layer="91"/>
<wire x1="218.44" y1="-127" x2="241.3" y2="-127" width="0.1524" layer="91"/>
<pinref part="GND41" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND42" gate="1" pin="GND"/>
<wire x1="299.72" y1="-119.38" x2="312.42" y2="-119.38" width="0.1524" layer="91"/>
<pinref part="PAD52" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND50" gate="1" pin="GND"/>
<wire x1="561.34" y1="48.26" x2="568.96" y2="48.26" width="0.1524" layer="91"/>
<pinref part="U8" gate="G$1" pin="DAP"/>
</segment>
<segment>
<pinref part="GND51" gate="1" pin="GND"/>
<wire x1="513.08" y1="48.26" x2="513.08" y2="50.8" width="0.1524" layer="91"/>
<wire x1="513.08" y1="50.8" x2="518.16" y2="50.8" width="0.1524" layer="91"/>
<pinref part="U8" gate="G$1" pin="GND"/>
<pinref part="U8" gate="G$1" pin="CLKIN"/>
<wire x1="518.16" y1="91.44" x2="513.08" y2="91.44" width="0.1524" layer="91"/>
<wire x1="513.08" y1="91.44" x2="513.08" y2="50.8" width="0.1524" layer="91"/>
<junction x="513.08" y="50.8"/>
</segment>
<segment>
<pinref part="GND52" gate="1" pin="GND"/>
<pinref part="C8" gate="G$1" pin="2"/>
<wire x1="581.66" y1="101.6" x2="581.66" y2="104.14" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND53" gate="1" pin="GND"/>
<wire x1="612.14" y1="99.06" x2="624.84" y2="99.06" width="0.1524" layer="91"/>
<pinref part="PAD65" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND54" gate="1" pin="GND"/>
<wire x1="650.24" y1="40.64" x2="650.24" y2="33.02" width="0.1524" layer="91"/>
<pinref part="R32" gate="G$1" pin="1"/>
<junction x="650.24" y="40.64"/>
</segment>
<segment>
<pinref part="U8" gate="G$1" pin="SD"/>
<wire x1="561.34" y1="83.82" x2="563.88" y2="83.82" width="0.1524" layer="91"/>
<wire x1="563.88" y1="83.82" x2="563.88" y2="91.44" width="0.1524" layer="91"/>
<wire x1="563.88" y1="91.44" x2="586.74" y2="91.44" width="0.1524" layer="91"/>
<pinref part="GND55" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND56" gate="1" pin="GND"/>
<wire x1="645.16" y1="99.06" x2="657.86" y2="99.06" width="0.1524" layer="91"/>
<pinref part="PAD70" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND64" gate="1" pin="GND"/>
<wire x1="566.42" y1="-58.42" x2="574.04" y2="-58.42" width="0.1524" layer="91"/>
<pinref part="U10" gate="G$1" pin="DAP"/>
</segment>
<segment>
<pinref part="GND65" gate="1" pin="GND"/>
<wire x1="518.16" y1="-58.42" x2="518.16" y2="-55.88" width="0.1524" layer="91"/>
<wire x1="518.16" y1="-55.88" x2="523.24" y2="-55.88" width="0.1524" layer="91"/>
<pinref part="U10" gate="G$1" pin="GND"/>
<pinref part="U10" gate="G$1" pin="CLKIN"/>
<wire x1="523.24" y1="-15.24" x2="518.16" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="518.16" y1="-15.24" x2="518.16" y2="-55.88" width="0.1524" layer="91"/>
<junction x="518.16" y="-55.88"/>
</segment>
<segment>
<pinref part="GND66" gate="1" pin="GND"/>
<pinref part="C10" gate="G$1" pin="2"/>
<wire x1="586.74" y1="-5.08" x2="586.74" y2="-2.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND67" gate="1" pin="GND"/>
<wire x1="617.22" y1="-7.62" x2="629.92" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="PAD83" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND68" gate="1" pin="GND"/>
<wire x1="655.32" y1="-66.04" x2="655.32" y2="-73.66" width="0.1524" layer="91"/>
<pinref part="R40" gate="G$1" pin="1"/>
<junction x="655.32" y="-66.04"/>
</segment>
<segment>
<pinref part="U10" gate="G$1" pin="SD"/>
<wire x1="566.42" y1="-22.86" x2="568.96" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="568.96" y1="-22.86" x2="568.96" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="568.96" y1="-15.24" x2="591.82" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="GND69" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND70" gate="1" pin="GND"/>
<wire x1="650.24" y1="-7.62" x2="662.94" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="PAD88" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND29" gate="1" pin="GND"/>
<wire x1="566.42" y1="-170.18" x2="574.04" y2="-170.18" width="0.1524" layer="91"/>
<pinref part="U5" gate="G$1" pin="DAP"/>
</segment>
<segment>
<pinref part="GND30" gate="1" pin="GND"/>
<wire x1="518.16" y1="-170.18" x2="518.16" y2="-167.64" width="0.1524" layer="91"/>
<wire x1="518.16" y1="-167.64" x2="523.24" y2="-167.64" width="0.1524" layer="91"/>
<pinref part="U5" gate="G$1" pin="GND"/>
<pinref part="U5" gate="G$1" pin="CLKIN"/>
<wire x1="523.24" y1="-127" x2="518.16" y2="-127" width="0.1524" layer="91"/>
<wire x1="518.16" y1="-127" x2="518.16" y2="-167.64" width="0.1524" layer="91"/>
<junction x="518.16" y="-167.64"/>
</segment>
<segment>
<pinref part="GND31" gate="1" pin="GND"/>
<pinref part="C5" gate="G$1" pin="2"/>
<wire x1="586.74" y1="-116.84" x2="586.74" y2="-114.3" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND32" gate="1" pin="GND"/>
<wire x1="617.22" y1="-119.38" x2="629.92" y2="-119.38" width="0.1524" layer="91"/>
<pinref part="PAD38" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND33" gate="1" pin="GND"/>
<wire x1="655.32" y1="-177.8" x2="655.32" y2="-185.42" width="0.1524" layer="91"/>
<pinref part="R20" gate="G$1" pin="1"/>
<junction x="655.32" y="-177.8"/>
</segment>
<segment>
<pinref part="U5" gate="G$1" pin="SD"/>
<wire x1="566.42" y1="-134.62" x2="568.96" y2="-134.62" width="0.1524" layer="91"/>
<wire x1="568.96" y1="-134.62" x2="568.96" y2="-127" width="0.1524" layer="91"/>
<wire x1="568.96" y1="-127" x2="591.82" y2="-127" width="0.1524" layer="91"/>
<pinref part="GND34" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND35" gate="1" pin="GND"/>
<wire x1="650.24" y1="-119.38" x2="662.94" y2="-119.38" width="0.1524" layer="91"/>
<pinref part="PAD43" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND57" gate="1" pin="GND"/>
<wire x1="226.06" y1="-307.34" x2="233.68" y2="-307.34" width="0.1524" layer="91"/>
<pinref part="U9" gate="G$1" pin="DAP"/>
</segment>
<segment>
<pinref part="GND58" gate="1" pin="GND"/>
<wire x1="177.8" y1="-307.34" x2="177.8" y2="-304.8" width="0.1524" layer="91"/>
<wire x1="177.8" y1="-304.8" x2="182.88" y2="-304.8" width="0.1524" layer="91"/>
<pinref part="U9" gate="G$1" pin="GND"/>
<pinref part="U9" gate="G$1" pin="CLKIN"/>
<wire x1="182.88" y1="-264.16" x2="177.8" y2="-264.16" width="0.1524" layer="91"/>
<wire x1="177.8" y1="-264.16" x2="177.8" y2="-304.8" width="0.1524" layer="91"/>
<junction x="177.8" y="-304.8"/>
</segment>
<segment>
<pinref part="GND59" gate="1" pin="GND"/>
<pinref part="C9" gate="G$1" pin="2"/>
<wire x1="246.38" y1="-254" x2="246.38" y2="-251.46" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND60" gate="1" pin="GND"/>
<wire x1="276.86" y1="-256.54" x2="289.56" y2="-256.54" width="0.1524" layer="91"/>
<pinref part="PAD74" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND61" gate="1" pin="GND"/>
<wire x1="314.96" y1="-314.96" x2="314.96" y2="-322.58" width="0.1524" layer="91"/>
<pinref part="R36" gate="G$1" pin="1"/>
<junction x="314.96" y="-314.96"/>
</segment>
<segment>
<pinref part="U9" gate="G$1" pin="SD"/>
<wire x1="226.06" y1="-271.78" x2="228.6" y2="-271.78" width="0.1524" layer="91"/>
<wire x1="228.6" y1="-271.78" x2="228.6" y2="-264.16" width="0.1524" layer="91"/>
<wire x1="228.6" y1="-264.16" x2="251.46" y2="-264.16" width="0.1524" layer="91"/>
<pinref part="GND62" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND63" gate="1" pin="GND"/>
<wire x1="309.88" y1="-256.54" x2="322.58" y2="-256.54" width="0.1524" layer="91"/>
<pinref part="PAD79" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND78" gate="1" pin="GND"/>
<wire x1="581.66" y1="-289.56" x2="589.28" y2="-289.56" width="0.1524" layer="91"/>
<pinref part="U12" gate="G$1" pin="DAP"/>
</segment>
<segment>
<pinref part="GND79" gate="1" pin="GND"/>
<wire x1="533.4" y1="-289.56" x2="533.4" y2="-287.02" width="0.1524" layer="91"/>
<wire x1="533.4" y1="-287.02" x2="538.48" y2="-287.02" width="0.1524" layer="91"/>
<pinref part="U12" gate="G$1" pin="GND"/>
<pinref part="U12" gate="G$1" pin="CLKIN"/>
<wire x1="538.48" y1="-246.38" x2="533.4" y2="-246.38" width="0.1524" layer="91"/>
<wire x1="533.4" y1="-246.38" x2="533.4" y2="-287.02" width="0.1524" layer="91"/>
<junction x="533.4" y="-287.02"/>
</segment>
<segment>
<pinref part="GND80" gate="1" pin="GND"/>
<pinref part="C12" gate="G$1" pin="2"/>
<wire x1="601.98" y1="-236.22" x2="601.98" y2="-233.68" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND81" gate="1" pin="GND"/>
<wire x1="632.46" y1="-238.76" x2="645.16" y2="-238.76" width="0.1524" layer="91"/>
<pinref part="PAD101" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND82" gate="1" pin="GND"/>
<wire x1="670.56" y1="-297.18" x2="670.56" y2="-304.8" width="0.1524" layer="91"/>
<pinref part="R48" gate="G$1" pin="1"/>
<junction x="670.56" y="-297.18"/>
</segment>
<segment>
<pinref part="U12" gate="G$1" pin="SD"/>
<wire x1="581.66" y1="-254" x2="584.2" y2="-254" width="0.1524" layer="91"/>
<wire x1="584.2" y1="-254" x2="584.2" y2="-246.38" width="0.1524" layer="91"/>
<wire x1="584.2" y1="-246.38" x2="607.06" y2="-246.38" width="0.1524" layer="91"/>
<pinref part="GND83" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND84" gate="1" pin="GND"/>
<wire x1="665.48" y1="-238.76" x2="678.18" y2="-238.76" width="0.1524" layer="91"/>
<pinref part="PAD106" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND92" gate="1" pin="GND"/>
<wire x1="970.28" y1="71.12" x2="977.9" y2="71.12" width="0.1524" layer="91"/>
<pinref part="U14" gate="G$1" pin="DAP"/>
</segment>
<segment>
<pinref part="GND93" gate="1" pin="GND"/>
<wire x1="922.02" y1="71.12" x2="922.02" y2="73.66" width="0.1524" layer="91"/>
<wire x1="922.02" y1="73.66" x2="927.1" y2="73.66" width="0.1524" layer="91"/>
<pinref part="U14" gate="G$1" pin="GND"/>
<pinref part="U14" gate="G$1" pin="CLKIN"/>
<wire x1="927.1" y1="114.3" x2="922.02" y2="114.3" width="0.1524" layer="91"/>
<wire x1="922.02" y1="114.3" x2="922.02" y2="73.66" width="0.1524" layer="91"/>
<junction x="922.02" y="73.66"/>
</segment>
<segment>
<pinref part="GND94" gate="1" pin="GND"/>
<pinref part="C14" gate="G$1" pin="2"/>
<wire x1="990.6" y1="124.46" x2="990.6" y2="127" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND95" gate="1" pin="GND"/>
<wire x1="1021.08" y1="121.92" x2="1033.78" y2="121.92" width="0.1524" layer="91"/>
<pinref part="PAD119" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND96" gate="1" pin="GND"/>
<wire x1="1059.18" y1="63.5" x2="1059.18" y2="55.88" width="0.1524" layer="91"/>
<pinref part="R56" gate="G$1" pin="1"/>
<junction x="1059.18" y="63.5"/>
</segment>
<segment>
<pinref part="U14" gate="G$1" pin="SD"/>
<wire x1="970.28" y1="106.68" x2="972.82" y2="106.68" width="0.1524" layer="91"/>
<wire x1="972.82" y1="106.68" x2="972.82" y2="114.3" width="0.1524" layer="91"/>
<wire x1="972.82" y1="114.3" x2="995.68" y2="114.3" width="0.1524" layer="91"/>
<pinref part="GND97" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND98" gate="1" pin="GND"/>
<wire x1="1054.1" y1="121.92" x2="1066.8" y2="121.92" width="0.1524" layer="91"/>
<pinref part="PAD124" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND106" gate="1" pin="GND"/>
<wire x1="977.9" y1="-45.72" x2="985.52" y2="-45.72" width="0.1524" layer="91"/>
<pinref part="U16" gate="G$1" pin="DAP"/>
</segment>
<segment>
<pinref part="GND107" gate="1" pin="GND"/>
<wire x1="929.64" y1="-45.72" x2="929.64" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="929.64" y1="-43.18" x2="934.72" y2="-43.18" width="0.1524" layer="91"/>
<pinref part="U16" gate="G$1" pin="GND"/>
<pinref part="U16" gate="G$1" pin="CLKIN"/>
<wire x1="934.72" y1="-2.54" x2="929.64" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="929.64" y1="-2.54" x2="929.64" y2="-43.18" width="0.1524" layer="91"/>
<junction x="929.64" y="-43.18"/>
</segment>
<segment>
<pinref part="GND108" gate="1" pin="GND"/>
<pinref part="C16" gate="G$1" pin="2"/>
<wire x1="998.22" y1="7.62" x2="998.22" y2="10.16" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND109" gate="1" pin="GND"/>
<wire x1="1028.7" y1="5.08" x2="1041.4" y2="5.08" width="0.1524" layer="91"/>
<pinref part="PAD137" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND110" gate="1" pin="GND"/>
<wire x1="1066.8" y1="-53.34" x2="1066.8" y2="-60.96" width="0.1524" layer="91"/>
<pinref part="R64" gate="G$1" pin="1"/>
<junction x="1066.8" y="-53.34"/>
</segment>
<segment>
<pinref part="U16" gate="G$1" pin="SD"/>
<wire x1="977.9" y1="-10.16" x2="980.44" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="980.44" y1="-10.16" x2="980.44" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="980.44" y1="-2.54" x2="1003.3" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="GND111" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND112" gate="1" pin="GND"/>
<wire x1="1061.72" y1="5.08" x2="1074.42" y2="5.08" width="0.1524" layer="91"/>
<pinref part="PAD142" gate="G$1" pin="P"/>
</segment>
</net>
<net name="INTRPT1" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="INTB"/>
<wire x1="210.82" y1="66.04" x2="215.9" y2="66.04" width="0.1524" layer="91"/>
<wire x1="215.9" y1="66.04" x2="215.9" y2="73.66" width="0.1524" layer="91"/>
<wire x1="215.9" y1="73.66" x2="228.6" y2="73.66" width="0.1524" layer="91"/>
<wire x1="228.6" y1="73.66" x2="228.6" y2="60.96" width="0.1524" layer="91"/>
<wire x1="228.6" y1="60.96" x2="243.84" y2="60.96" width="0.1524" layer="91"/>
<pinref part="PAD12" gate="G$1" pin="P"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="EXITCOIL0"/>
<wire x1="116.84" y1="55.88" x2="114.3" y2="55.88" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="IN1B"/>
<wire x1="116.84" y1="55.88" x2="116.84" y2="58.42" width="0.1524" layer="91"/>
<wire x1="116.84" y1="58.42" x2="167.64" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<wire x1="119.38" y1="68.58" x2="119.38" y2="45.72" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="INCOIL1"/>
<wire x1="119.38" y1="45.72" x2="114.3" y2="45.72" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="IN0A"/>
<wire x1="167.64" y1="68.58" x2="119.38" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<wire x1="121.92" y1="66.04" x2="121.92" y2="30.48" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="EXITCOIL1"/>
<wire x1="121.92" y1="30.48" x2="114.3" y2="30.48" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="IN0B"/>
<wire x1="121.92" y1="66.04" x2="167.64" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="IN2A"/>
<wire x1="167.64" y1="53.34" x2="124.46" y2="53.34" width="0.1524" layer="91"/>
<wire x1="124.46" y1="53.34" x2="124.46" y2="20.32" width="0.1524" layer="91"/>
<wire x1="124.46" y1="20.32" x2="25.4" y2="20.32" width="0.1524" layer="91"/>
<wire x1="25.4" y1="20.32" x2="25.4" y2="55.88" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="EXITCOIL2"/>
<wire x1="25.4" y1="55.88" x2="43.18" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="IN2B"/>
<wire x1="20.32" y1="71.12" x2="20.32" y2="17.78" width="0.1524" layer="91"/>
<wire x1="20.32" y1="17.78" x2="127" y2="17.78" width="0.1524" layer="91"/>
<wire x1="127" y1="17.78" x2="127" y2="50.8" width="0.1524" layer="91"/>
<wire x1="127" y1="50.8" x2="167.64" y2="50.8" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="INCOIL2"/>
<wire x1="20.32" y1="71.12" x2="43.18" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="IN3A"/>
<wire x1="167.64" y1="45.72" x2="129.54" y2="45.72" width="0.1524" layer="91"/>
<wire x1="129.54" y1="45.72" x2="129.54" y2="15.24" width="0.1524" layer="91"/>
<wire x1="129.54" y1="15.24" x2="15.24" y2="15.24" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="INCOIL3"/>
<wire x1="15.24" y1="15.24" x2="15.24" y2="45.72" width="0.1524" layer="91"/>
<wire x1="15.24" y1="45.72" x2="43.18" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="IN3B"/>
<pinref part="U$1" gate="G$1" pin="EXITCOIL3"/>
<wire x1="43.18" y1="30.48" x2="10.16" y2="30.48" width="0.1524" layer="91"/>
<wire x1="10.16" y1="30.48" x2="10.16" y2="12.7" width="0.1524" layer="91"/>
<wire x1="10.16" y1="12.7" x2="132.08" y2="12.7" width="0.1524" layer="91"/>
<wire x1="132.08" y1="12.7" x2="132.08" y2="43.18" width="0.1524" layer="91"/>
<wire x1="132.08" y1="43.18" x2="167.64" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="IN1A"/>
<wire x1="167.64" y1="60.96" x2="147.32" y2="60.96" width="0.1524" layer="91"/>
<wire x1="147.32" y1="60.96" x2="147.32" y2="71.12" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="INCOIL0"/>
<wire x1="147.32" y1="71.12" x2="114.3" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SCL1" class="0">
<segment>
<wire x1="281.94" y1="63.5" x2="266.7" y2="63.5" width="0.1524" layer="91"/>
<pinref part="PAD18" gate="G$1" pin="P"/>
<wire x1="259.08" y1="43.18" x2="259.08" y2="50.8" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="SCL"/>
<pinref part="R5" gate="G$1" pin="1"/>
<wire x1="210.82" y1="43.18" x2="223.52" y2="43.18" width="0.1524" layer="91"/>
<wire x1="223.52" y1="43.18" x2="223.52" y2="53.34" width="0.1524" layer="91"/>
<wire x1="259.08" y1="43.18" x2="223.52" y2="43.18" width="0.1524" layer="91"/>
<junction x="223.52" y="43.18"/>
<wire x1="276.86" y1="50.8" x2="266.7" y2="50.8" width="0.1524" layer="91"/>
<pinref part="PAD14" gate="G$1" pin="P"/>
<wire x1="266.7" y1="50.8" x2="259.08" y2="50.8" width="0.1524" layer="91"/>
<wire x1="266.7" y1="63.5" x2="266.7" y2="50.8" width="0.1524" layer="91"/>
<junction x="266.7" y="50.8"/>
</segment>
</net>
<net name="SDA1" class="0">
<segment>
<pinref part="PAD17" gate="G$1" pin="P"/>
<wire x1="264.16" y1="71.12" x2="281.94" y2="71.12" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="SDA"/>
<pinref part="R6" gate="G$1" pin="1"/>
<wire x1="210.82" y1="45.72" x2="215.9" y2="45.72" width="0.1524" layer="91"/>
<wire x1="215.9" y1="45.72" x2="215.9" y2="53.34" width="0.1524" layer="91"/>
<wire x1="215.9" y1="45.72" x2="256.54" y2="45.72" width="0.1524" layer="91"/>
<wire x1="256.54" y1="45.72" x2="256.54" y2="58.42" width="0.1524" layer="91"/>
<junction x="215.9" y="45.72"/>
<wire x1="256.54" y1="58.42" x2="264.16" y2="58.42" width="0.1524" layer="91"/>
<pinref part="PAD13" gate="G$1" pin="P"/>
<wire x1="264.16" y1="58.42" x2="274.32" y2="58.42" width="0.1524" layer="91"/>
<wire x1="264.16" y1="71.12" x2="264.16" y2="58.42" width="0.1524" layer="91"/>
<junction x="264.16" y="58.42"/>
</segment>
</net>
<net name="ADDR3" class="0">
<segment>
<pinref part="R15" gate="G$1" pin="1"/>
<pinref part="R16" gate="G$1" pin="2"/>
<wire x1="304.8" y1="-68.58" x2="304.8" y2="-66.04" width="0.1524" layer="91"/>
<pinref part="U4" gate="G$1" pin="ADDR"/>
<wire x1="215.9" y1="-66.04" x2="297.18" y2="-66.04" width="0.1524" layer="91"/>
<wire x1="297.18" y1="-66.04" x2="297.18" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="297.18" y1="-68.58" x2="304.8" y2="-68.58" width="0.1524" layer="91"/>
<junction x="304.8" y="-68.58"/>
</segment>
</net>
<net name="INTRPT3" class="0">
<segment>
<pinref part="U4" gate="G$1" pin="INTB"/>
<wire x1="215.9" y1="-38.1" x2="220.98" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="220.98" y1="-38.1" x2="220.98" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="220.98" y1="-30.48" x2="233.68" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-30.48" x2="233.68" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-43.18" x2="248.92" y2="-43.18" width="0.1524" layer="91"/>
<pinref part="PAD30" gate="G$1" pin="P"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="EXITCOIL0"/>
<wire x1="121.92" y1="-48.26" x2="119.38" y2="-48.26" width="0.1524" layer="91"/>
<pinref part="U4" gate="G$1" pin="IN1B"/>
<wire x1="121.92" y1="-48.26" x2="121.92" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="121.92" y1="-45.72" x2="172.72" y2="-45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<wire x1="124.46" y1="-35.56" x2="124.46" y2="-58.42" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="INCOIL1"/>
<wire x1="124.46" y1="-58.42" x2="119.38" y2="-58.42" width="0.1524" layer="91"/>
<pinref part="U4" gate="G$1" pin="IN0A"/>
<wire x1="172.72" y1="-35.56" x2="124.46" y2="-35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<wire x1="127" y1="-38.1" x2="127" y2="-73.66" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="EXITCOIL1"/>
<wire x1="127" y1="-73.66" x2="119.38" y2="-73.66" width="0.1524" layer="91"/>
<pinref part="U4" gate="G$1" pin="IN0B"/>
<wire x1="127" y1="-38.1" x2="172.72" y2="-38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="U4" gate="G$1" pin="IN2A"/>
<wire x1="172.72" y1="-50.8" x2="129.54" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="129.54" y1="-50.8" x2="129.54" y2="-83.82" width="0.1524" layer="91"/>
<wire x1="129.54" y1="-83.82" x2="30.48" y2="-83.82" width="0.1524" layer="91"/>
<wire x1="30.48" y1="-83.82" x2="30.48" y2="-48.26" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="EXITCOIL2"/>
<wire x1="30.48" y1="-48.26" x2="48.26" y2="-48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="U4" gate="G$1" pin="IN2B"/>
<wire x1="25.4" y1="-33.02" x2="25.4" y2="-86.36" width="0.1524" layer="91"/>
<wire x1="25.4" y1="-86.36" x2="132.08" y2="-86.36" width="0.1524" layer="91"/>
<wire x1="132.08" y1="-86.36" x2="132.08" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="132.08" y1="-53.34" x2="172.72" y2="-53.34" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="INCOIL2"/>
<wire x1="25.4" y1="-33.02" x2="48.26" y2="-33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="U4" gate="G$1" pin="IN3A"/>
<wire x1="172.72" y1="-58.42" x2="134.62" y2="-58.42" width="0.1524" layer="91"/>
<wire x1="134.62" y1="-58.42" x2="134.62" y2="-88.9" width="0.1524" layer="91"/>
<wire x1="134.62" y1="-88.9" x2="20.32" y2="-88.9" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="INCOIL3"/>
<wire x1="20.32" y1="-88.9" x2="20.32" y2="-58.42" width="0.1524" layer="91"/>
<wire x1="20.32" y1="-58.42" x2="48.26" y2="-58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="U4" gate="G$1" pin="IN3B"/>
<pinref part="U$4" gate="G$1" pin="EXITCOIL3"/>
<wire x1="48.26" y1="-73.66" x2="15.24" y2="-73.66" width="0.1524" layer="91"/>
<wire x1="15.24" y1="-73.66" x2="15.24" y2="-91.44" width="0.1524" layer="91"/>
<wire x1="15.24" y1="-91.44" x2="137.16" y2="-91.44" width="0.1524" layer="91"/>
<wire x1="137.16" y1="-91.44" x2="137.16" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="137.16" y1="-60.96" x2="172.72" y2="-60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="U4" gate="G$1" pin="IN1A"/>
<wire x1="172.72" y1="-43.18" x2="152.4" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="152.4" y1="-43.18" x2="152.4" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="INCOIL0"/>
<wire x1="152.4" y1="-33.02" x2="119.38" y2="-33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SCL3" class="0">
<segment>
<wire x1="287.02" y1="-40.64" x2="271.78" y2="-40.64" width="0.1524" layer="91"/>
<pinref part="PAD36" gate="G$1" pin="P"/>
<wire x1="264.16" y1="-60.96" x2="264.16" y2="-53.34" width="0.1524" layer="91"/>
<pinref part="U4" gate="G$1" pin="SCL"/>
<pinref part="R13" gate="G$1" pin="1"/>
<wire x1="215.9" y1="-60.96" x2="228.6" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="228.6" y1="-60.96" x2="228.6" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="264.16" y1="-60.96" x2="228.6" y2="-60.96" width="0.1524" layer="91"/>
<junction x="228.6" y="-60.96"/>
<wire x1="281.94" y1="-53.34" x2="271.78" y2="-53.34" width="0.1524" layer="91"/>
<pinref part="PAD32" gate="G$1" pin="P"/>
<wire x1="271.78" y1="-53.34" x2="264.16" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="271.78" y1="-40.64" x2="271.78" y2="-53.34" width="0.1524" layer="91"/>
<junction x="271.78" y="-53.34"/>
</segment>
</net>
<net name="SDA3" class="0">
<segment>
<pinref part="PAD35" gate="G$1" pin="P"/>
<wire x1="269.24" y1="-33.02" x2="287.02" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="U4" gate="G$1" pin="SDA"/>
<pinref part="R14" gate="G$1" pin="1"/>
<wire x1="215.9" y1="-58.42" x2="220.98" y2="-58.42" width="0.1524" layer="91"/>
<wire x1="220.98" y1="-58.42" x2="220.98" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="220.98" y1="-58.42" x2="261.62" y2="-58.42" width="0.1524" layer="91"/>
<wire x1="261.62" y1="-58.42" x2="261.62" y2="-45.72" width="0.1524" layer="91"/>
<junction x="220.98" y="-58.42"/>
<wire x1="261.62" y1="-45.72" x2="269.24" y2="-45.72" width="0.1524" layer="91"/>
<pinref part="PAD31" gate="G$1" pin="P"/>
<wire x1="269.24" y1="-45.72" x2="279.4" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="269.24" y1="-33.02" x2="269.24" y2="-45.72" width="0.1524" layer="91"/>
<junction x="269.24" y="-45.72"/>
</segment>
</net>
<net name="ADDR5" class="0">
<segment>
<pinref part="R23" gate="G$1" pin="1"/>
<pinref part="R24" gate="G$1" pin="2"/>
<wire x1="304.8" y1="-167.64" x2="304.8" y2="-165.1" width="0.1524" layer="91"/>
<pinref part="U6" gate="G$1" pin="ADDR"/>
<wire x1="215.9" y1="-165.1" x2="297.18" y2="-165.1" width="0.1524" layer="91"/>
<wire x1="297.18" y1="-165.1" x2="297.18" y2="-167.64" width="0.1524" layer="91"/>
<wire x1="297.18" y1="-167.64" x2="304.8" y2="-167.64" width="0.1524" layer="91"/>
<junction x="304.8" y="-167.64"/>
</segment>
</net>
<net name="INTRPT5" class="0">
<segment>
<pinref part="U6" gate="G$1" pin="INTB"/>
<wire x1="215.9" y1="-137.16" x2="220.98" y2="-137.16" width="0.1524" layer="91"/>
<wire x1="220.98" y1="-137.16" x2="220.98" y2="-129.54" width="0.1524" layer="91"/>
<wire x1="220.98" y1="-129.54" x2="233.68" y2="-129.54" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-129.54" x2="233.68" y2="-142.24" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-142.24" x2="248.92" y2="-142.24" width="0.1524" layer="91"/>
<pinref part="PAD48" gate="G$1" pin="P"/>
</segment>
</net>
<net name="N$41" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="EXITCOIL0"/>
<wire x1="121.92" y1="-147.32" x2="119.38" y2="-147.32" width="0.1524" layer="91"/>
<pinref part="U6" gate="G$1" pin="IN1B"/>
<wire x1="121.92" y1="-147.32" x2="121.92" y2="-144.78" width="0.1524" layer="91"/>
<wire x1="121.92" y1="-144.78" x2="172.72" y2="-144.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$42" class="0">
<segment>
<wire x1="124.46" y1="-134.62" x2="124.46" y2="-157.48" width="0.1524" layer="91"/>
<pinref part="U$6" gate="G$1" pin="INCOIL1"/>
<wire x1="124.46" y1="-157.48" x2="119.38" y2="-157.48" width="0.1524" layer="91"/>
<pinref part="U6" gate="G$1" pin="IN0A"/>
<wire x1="172.72" y1="-134.62" x2="124.46" y2="-134.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$43" class="0">
<segment>
<wire x1="127" y1="-137.16" x2="127" y2="-172.72" width="0.1524" layer="91"/>
<pinref part="U$6" gate="G$1" pin="EXITCOIL1"/>
<wire x1="127" y1="-172.72" x2="119.38" y2="-172.72" width="0.1524" layer="91"/>
<pinref part="U6" gate="G$1" pin="IN0B"/>
<wire x1="127" y1="-137.16" x2="172.72" y2="-137.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$44" class="0">
<segment>
<pinref part="U6" gate="G$1" pin="IN2A"/>
<wire x1="172.72" y1="-149.86" x2="129.54" y2="-149.86" width="0.1524" layer="91"/>
<wire x1="129.54" y1="-149.86" x2="129.54" y2="-182.88" width="0.1524" layer="91"/>
<wire x1="129.54" y1="-182.88" x2="30.48" y2="-182.88" width="0.1524" layer="91"/>
<wire x1="30.48" y1="-182.88" x2="30.48" y2="-147.32" width="0.1524" layer="91"/>
<pinref part="U$6" gate="G$1" pin="EXITCOIL2"/>
<wire x1="30.48" y1="-147.32" x2="48.26" y2="-147.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$45" class="0">
<segment>
<pinref part="U6" gate="G$1" pin="IN2B"/>
<wire x1="25.4" y1="-132.08" x2="25.4" y2="-185.42" width="0.1524" layer="91"/>
<wire x1="25.4" y1="-185.42" x2="132.08" y2="-185.42" width="0.1524" layer="91"/>
<wire x1="132.08" y1="-185.42" x2="132.08" y2="-152.4" width="0.1524" layer="91"/>
<wire x1="132.08" y1="-152.4" x2="172.72" y2="-152.4" width="0.1524" layer="91"/>
<pinref part="U$6" gate="G$1" pin="INCOIL2"/>
<wire x1="25.4" y1="-132.08" x2="48.26" y2="-132.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$46" class="0">
<segment>
<pinref part="U6" gate="G$1" pin="IN3A"/>
<wire x1="172.72" y1="-157.48" x2="134.62" y2="-157.48" width="0.1524" layer="91"/>
<wire x1="134.62" y1="-157.48" x2="134.62" y2="-187.96" width="0.1524" layer="91"/>
<wire x1="134.62" y1="-187.96" x2="20.32" y2="-187.96" width="0.1524" layer="91"/>
<pinref part="U$6" gate="G$1" pin="INCOIL3"/>
<wire x1="20.32" y1="-187.96" x2="20.32" y2="-157.48" width="0.1524" layer="91"/>
<wire x1="20.32" y1="-157.48" x2="48.26" y2="-157.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$47" class="0">
<segment>
<pinref part="U6" gate="G$1" pin="IN3B"/>
<pinref part="U$6" gate="G$1" pin="EXITCOIL3"/>
<wire x1="48.26" y1="-172.72" x2="15.24" y2="-172.72" width="0.1524" layer="91"/>
<wire x1="15.24" y1="-172.72" x2="15.24" y2="-190.5" width="0.1524" layer="91"/>
<wire x1="15.24" y1="-190.5" x2="137.16" y2="-190.5" width="0.1524" layer="91"/>
<wire x1="137.16" y1="-190.5" x2="137.16" y2="-160.02" width="0.1524" layer="91"/>
<wire x1="137.16" y1="-160.02" x2="172.72" y2="-160.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$48" class="0">
<segment>
<pinref part="U6" gate="G$1" pin="IN1A"/>
<wire x1="172.72" y1="-142.24" x2="152.4" y2="-142.24" width="0.1524" layer="91"/>
<wire x1="152.4" y1="-142.24" x2="152.4" y2="-132.08" width="0.1524" layer="91"/>
<pinref part="U$6" gate="G$1" pin="INCOIL0"/>
<wire x1="152.4" y1="-132.08" x2="119.38" y2="-132.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SCL5" class="0">
<segment>
<wire x1="287.02" y1="-139.7" x2="271.78" y2="-139.7" width="0.1524" layer="91"/>
<pinref part="PAD54" gate="G$1" pin="P"/>
<wire x1="264.16" y1="-160.02" x2="264.16" y2="-152.4" width="0.1524" layer="91"/>
<pinref part="U6" gate="G$1" pin="SCL"/>
<pinref part="R21" gate="G$1" pin="1"/>
<wire x1="215.9" y1="-160.02" x2="228.6" y2="-160.02" width="0.1524" layer="91"/>
<wire x1="228.6" y1="-160.02" x2="228.6" y2="-149.86" width="0.1524" layer="91"/>
<wire x1="264.16" y1="-160.02" x2="228.6" y2="-160.02" width="0.1524" layer="91"/>
<junction x="228.6" y="-160.02"/>
<wire x1="281.94" y1="-152.4" x2="271.78" y2="-152.4" width="0.1524" layer="91"/>
<pinref part="PAD50" gate="G$1" pin="P"/>
<wire x1="271.78" y1="-152.4" x2="264.16" y2="-152.4" width="0.1524" layer="91"/>
<wire x1="271.78" y1="-139.7" x2="271.78" y2="-152.4" width="0.1524" layer="91"/>
<junction x="271.78" y="-152.4"/>
</segment>
</net>
<net name="SDA5" class="0">
<segment>
<pinref part="PAD53" gate="G$1" pin="P"/>
<wire x1="269.24" y1="-132.08" x2="287.02" y2="-132.08" width="0.1524" layer="91"/>
<pinref part="U6" gate="G$1" pin="SDA"/>
<pinref part="R22" gate="G$1" pin="1"/>
<wire x1="215.9" y1="-157.48" x2="220.98" y2="-157.48" width="0.1524" layer="91"/>
<wire x1="220.98" y1="-157.48" x2="220.98" y2="-149.86" width="0.1524" layer="91"/>
<wire x1="220.98" y1="-157.48" x2="261.62" y2="-157.48" width="0.1524" layer="91"/>
<wire x1="261.62" y1="-157.48" x2="261.62" y2="-144.78" width="0.1524" layer="91"/>
<junction x="220.98" y="-157.48"/>
<wire x1="261.62" y1="-144.78" x2="269.24" y2="-144.78" width="0.1524" layer="91"/>
<pinref part="PAD49" gate="G$1" pin="P"/>
<wire x1="269.24" y1="-144.78" x2="279.4" y2="-144.78" width="0.1524" layer="91"/>
<wire x1="269.24" y1="-132.08" x2="269.24" y2="-144.78" width="0.1524" layer="91"/>
<junction x="269.24" y="-144.78"/>
</segment>
</net>
<net name="ADDR7" class="0">
<segment>
<pinref part="R31" gate="G$1" pin="1"/>
<pinref part="R32" gate="G$1" pin="2"/>
<wire x1="650.24" y1="50.8" x2="650.24" y2="53.34" width="0.1524" layer="91"/>
<pinref part="U8" gate="G$1" pin="ADDR"/>
<wire x1="561.34" y1="53.34" x2="642.62" y2="53.34" width="0.1524" layer="91"/>
<wire x1="642.62" y1="53.34" x2="642.62" y2="50.8" width="0.1524" layer="91"/>
<wire x1="642.62" y1="50.8" x2="650.24" y2="50.8" width="0.1524" layer="91"/>
<junction x="650.24" y="50.8"/>
</segment>
</net>
<net name="INTRPT7" class="0">
<segment>
<pinref part="U8" gate="G$1" pin="INTB"/>
<wire x1="561.34" y1="81.28" x2="566.42" y2="81.28" width="0.1524" layer="91"/>
<wire x1="566.42" y1="81.28" x2="566.42" y2="88.9" width="0.1524" layer="91"/>
<wire x1="566.42" y1="88.9" x2="579.12" y2="88.9" width="0.1524" layer="91"/>
<wire x1="579.12" y1="88.9" x2="579.12" y2="76.2" width="0.1524" layer="91"/>
<wire x1="579.12" y1="76.2" x2="594.36" y2="76.2" width="0.1524" layer="91"/>
<pinref part="PAD66" gate="G$1" pin="P"/>
</segment>
</net>
<net name="N$57" class="0">
<segment>
<pinref part="U$8" gate="G$1" pin="EXITCOIL0"/>
<wire x1="467.36" y1="71.12" x2="464.82" y2="71.12" width="0.1524" layer="91"/>
<pinref part="U8" gate="G$1" pin="IN1B"/>
<wire x1="467.36" y1="71.12" x2="467.36" y2="73.66" width="0.1524" layer="91"/>
<wire x1="467.36" y1="73.66" x2="518.16" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$58" class="0">
<segment>
<wire x1="469.9" y1="83.82" x2="469.9" y2="60.96" width="0.1524" layer="91"/>
<pinref part="U$8" gate="G$1" pin="INCOIL1"/>
<wire x1="469.9" y1="60.96" x2="464.82" y2="60.96" width="0.1524" layer="91"/>
<pinref part="U8" gate="G$1" pin="IN0A"/>
<wire x1="518.16" y1="83.82" x2="469.9" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$59" class="0">
<segment>
<wire x1="472.44" y1="81.28" x2="472.44" y2="45.72" width="0.1524" layer="91"/>
<pinref part="U$8" gate="G$1" pin="EXITCOIL1"/>
<wire x1="472.44" y1="45.72" x2="464.82" y2="45.72" width="0.1524" layer="91"/>
<pinref part="U8" gate="G$1" pin="IN0B"/>
<wire x1="472.44" y1="81.28" x2="518.16" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$60" class="0">
<segment>
<pinref part="U8" gate="G$1" pin="IN2A"/>
<wire x1="518.16" y1="68.58" x2="474.98" y2="68.58" width="0.1524" layer="91"/>
<wire x1="474.98" y1="68.58" x2="474.98" y2="35.56" width="0.1524" layer="91"/>
<wire x1="474.98" y1="35.56" x2="375.92" y2="35.56" width="0.1524" layer="91"/>
<wire x1="375.92" y1="35.56" x2="375.92" y2="71.12" width="0.1524" layer="91"/>
<pinref part="U$8" gate="G$1" pin="EXITCOIL2"/>
<wire x1="375.92" y1="71.12" x2="393.7" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$61" class="0">
<segment>
<pinref part="U8" gate="G$1" pin="IN2B"/>
<wire x1="370.84" y1="86.36" x2="370.84" y2="33.02" width="0.1524" layer="91"/>
<wire x1="370.84" y1="33.02" x2="477.52" y2="33.02" width="0.1524" layer="91"/>
<wire x1="477.52" y1="33.02" x2="477.52" y2="66.04" width="0.1524" layer="91"/>
<wire x1="477.52" y1="66.04" x2="518.16" y2="66.04" width="0.1524" layer="91"/>
<pinref part="U$8" gate="G$1" pin="INCOIL2"/>
<wire x1="370.84" y1="86.36" x2="393.7" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$62" class="0">
<segment>
<pinref part="U8" gate="G$1" pin="IN3A"/>
<wire x1="518.16" y1="60.96" x2="480.06" y2="60.96" width="0.1524" layer="91"/>
<wire x1="480.06" y1="60.96" x2="480.06" y2="30.48" width="0.1524" layer="91"/>
<wire x1="480.06" y1="30.48" x2="365.76" y2="30.48" width="0.1524" layer="91"/>
<pinref part="U$8" gate="G$1" pin="INCOIL3"/>
<wire x1="365.76" y1="30.48" x2="365.76" y2="60.96" width="0.1524" layer="91"/>
<wire x1="365.76" y1="60.96" x2="393.7" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$63" class="0">
<segment>
<pinref part="U8" gate="G$1" pin="IN3B"/>
<pinref part="U$8" gate="G$1" pin="EXITCOIL3"/>
<wire x1="393.7" y1="45.72" x2="360.68" y2="45.72" width="0.1524" layer="91"/>
<wire x1="360.68" y1="45.72" x2="360.68" y2="27.94" width="0.1524" layer="91"/>
<wire x1="360.68" y1="27.94" x2="482.6" y2="27.94" width="0.1524" layer="91"/>
<wire x1="482.6" y1="27.94" x2="482.6" y2="58.42" width="0.1524" layer="91"/>
<wire x1="482.6" y1="58.42" x2="518.16" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$64" class="0">
<segment>
<pinref part="U8" gate="G$1" pin="IN1A"/>
<wire x1="518.16" y1="76.2" x2="497.84" y2="76.2" width="0.1524" layer="91"/>
<wire x1="497.84" y1="76.2" x2="497.84" y2="86.36" width="0.1524" layer="91"/>
<pinref part="U$8" gate="G$1" pin="INCOIL0"/>
<wire x1="497.84" y1="86.36" x2="464.82" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SCL7" class="0">
<segment>
<wire x1="632.46" y1="78.74" x2="617.22" y2="78.74" width="0.1524" layer="91"/>
<pinref part="PAD72" gate="G$1" pin="P"/>
<wire x1="609.6" y1="58.42" x2="609.6" y2="66.04" width="0.1524" layer="91"/>
<pinref part="U8" gate="G$1" pin="SCL"/>
<pinref part="R29" gate="G$1" pin="1"/>
<wire x1="561.34" y1="58.42" x2="574.04" y2="58.42" width="0.1524" layer="91"/>
<wire x1="574.04" y1="58.42" x2="574.04" y2="68.58" width="0.1524" layer="91"/>
<wire x1="609.6" y1="58.42" x2="574.04" y2="58.42" width="0.1524" layer="91"/>
<junction x="574.04" y="58.42"/>
<wire x1="627.38" y1="66.04" x2="617.22" y2="66.04" width="0.1524" layer="91"/>
<pinref part="PAD68" gate="G$1" pin="P"/>
<wire x1="617.22" y1="66.04" x2="609.6" y2="66.04" width="0.1524" layer="91"/>
<wire x1="617.22" y1="78.74" x2="617.22" y2="66.04" width="0.1524" layer="91"/>
<junction x="617.22" y="66.04"/>
</segment>
</net>
<net name="SDA7" class="0">
<segment>
<pinref part="PAD71" gate="G$1" pin="P"/>
<wire x1="614.68" y1="86.36" x2="632.46" y2="86.36" width="0.1524" layer="91"/>
<pinref part="U8" gate="G$1" pin="SDA"/>
<pinref part="R30" gate="G$1" pin="1"/>
<wire x1="561.34" y1="60.96" x2="566.42" y2="60.96" width="0.1524" layer="91"/>
<wire x1="566.42" y1="60.96" x2="566.42" y2="68.58" width="0.1524" layer="91"/>
<wire x1="566.42" y1="60.96" x2="607.06" y2="60.96" width="0.1524" layer="91"/>
<wire x1="607.06" y1="60.96" x2="607.06" y2="73.66" width="0.1524" layer="91"/>
<junction x="566.42" y="60.96"/>
<wire x1="607.06" y1="73.66" x2="614.68" y2="73.66" width="0.1524" layer="91"/>
<pinref part="PAD67" gate="G$1" pin="P"/>
<wire x1="614.68" y1="73.66" x2="624.84" y2="73.66" width="0.1524" layer="91"/>
<wire x1="614.68" y1="86.36" x2="614.68" y2="73.66" width="0.1524" layer="91"/>
<junction x="614.68" y="73.66"/>
</segment>
</net>
<net name="ADDR9" class="0">
<segment>
<pinref part="R39" gate="G$1" pin="1"/>
<pinref part="R40" gate="G$1" pin="2"/>
<wire x1="655.32" y1="-55.88" x2="655.32" y2="-53.34" width="0.1524" layer="91"/>
<pinref part="U10" gate="G$1" pin="ADDR"/>
<wire x1="566.42" y1="-53.34" x2="647.7" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="647.7" y1="-53.34" x2="647.7" y2="-55.88" width="0.1524" layer="91"/>
<wire x1="647.7" y1="-55.88" x2="655.32" y2="-55.88" width="0.1524" layer="91"/>
<junction x="655.32" y="-55.88"/>
</segment>
</net>
<net name="INTRPT9" class="0">
<segment>
<pinref part="U10" gate="G$1" pin="INTB"/>
<wire x1="566.42" y1="-25.4" x2="571.5" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="571.5" y1="-25.4" x2="571.5" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="571.5" y1="-17.78" x2="584.2" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="584.2" y1="-17.78" x2="584.2" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="584.2" y1="-30.48" x2="599.44" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="PAD84" gate="G$1" pin="P"/>
</segment>
</net>
<net name="N$73" class="0">
<segment>
<pinref part="U$10" gate="G$1" pin="EXITCOIL0"/>
<wire x1="472.44" y1="-35.56" x2="469.9" y2="-35.56" width="0.1524" layer="91"/>
<pinref part="U10" gate="G$1" pin="IN1B"/>
<wire x1="472.44" y1="-35.56" x2="472.44" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="472.44" y1="-33.02" x2="523.24" y2="-33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$74" class="0">
<segment>
<wire x1="474.98" y1="-22.86" x2="474.98" y2="-45.72" width="0.1524" layer="91"/>
<pinref part="U$10" gate="G$1" pin="INCOIL1"/>
<wire x1="474.98" y1="-45.72" x2="469.9" y2="-45.72" width="0.1524" layer="91"/>
<pinref part="U10" gate="G$1" pin="IN0A"/>
<wire x1="523.24" y1="-22.86" x2="474.98" y2="-22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$75" class="0">
<segment>
<wire x1="477.52" y1="-25.4" x2="477.52" y2="-60.96" width="0.1524" layer="91"/>
<pinref part="U$10" gate="G$1" pin="EXITCOIL1"/>
<wire x1="477.52" y1="-60.96" x2="469.9" y2="-60.96" width="0.1524" layer="91"/>
<pinref part="U10" gate="G$1" pin="IN0B"/>
<wire x1="477.52" y1="-25.4" x2="523.24" y2="-25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$76" class="0">
<segment>
<pinref part="U10" gate="G$1" pin="IN2A"/>
<wire x1="523.24" y1="-38.1" x2="480.06" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="480.06" y1="-38.1" x2="480.06" y2="-71.12" width="0.1524" layer="91"/>
<wire x1="480.06" y1="-71.12" x2="381" y2="-71.12" width="0.1524" layer="91"/>
<wire x1="381" y1="-71.12" x2="381" y2="-35.56" width="0.1524" layer="91"/>
<pinref part="U$10" gate="G$1" pin="EXITCOIL2"/>
<wire x1="381" y1="-35.56" x2="398.78" y2="-35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$77" class="0">
<segment>
<pinref part="U10" gate="G$1" pin="IN2B"/>
<wire x1="375.92" y1="-20.32" x2="375.92" y2="-73.66" width="0.1524" layer="91"/>
<wire x1="375.92" y1="-73.66" x2="482.6" y2="-73.66" width="0.1524" layer="91"/>
<wire x1="482.6" y1="-73.66" x2="482.6" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="482.6" y1="-40.64" x2="523.24" y2="-40.64" width="0.1524" layer="91"/>
<pinref part="U$10" gate="G$1" pin="INCOIL2"/>
<wire x1="375.92" y1="-20.32" x2="398.78" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$78" class="0">
<segment>
<pinref part="U10" gate="G$1" pin="IN3A"/>
<wire x1="523.24" y1="-45.72" x2="485.14" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="485.14" y1="-45.72" x2="485.14" y2="-76.2" width="0.1524" layer="91"/>
<wire x1="485.14" y1="-76.2" x2="370.84" y2="-76.2" width="0.1524" layer="91"/>
<pinref part="U$10" gate="G$1" pin="INCOIL3"/>
<wire x1="370.84" y1="-76.2" x2="370.84" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="370.84" y1="-45.72" x2="398.78" y2="-45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$79" class="0">
<segment>
<pinref part="U10" gate="G$1" pin="IN3B"/>
<pinref part="U$10" gate="G$1" pin="EXITCOIL3"/>
<wire x1="398.78" y1="-60.96" x2="365.76" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="365.76" y1="-60.96" x2="365.76" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="365.76" y1="-78.74" x2="487.68" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="487.68" y1="-78.74" x2="487.68" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="487.68" y1="-48.26" x2="523.24" y2="-48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$80" class="0">
<segment>
<pinref part="U10" gate="G$1" pin="IN1A"/>
<wire x1="523.24" y1="-30.48" x2="502.92" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="502.92" y1="-30.48" x2="502.92" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="U$10" gate="G$1" pin="INCOIL0"/>
<wire x1="502.92" y1="-20.32" x2="469.9" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SCL9" class="0">
<segment>
<wire x1="637.54" y1="-27.94" x2="622.3" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="PAD90" gate="G$1" pin="P"/>
<wire x1="614.68" y1="-48.26" x2="614.68" y2="-40.64" width="0.1524" layer="91"/>
<pinref part="U10" gate="G$1" pin="SCL"/>
<pinref part="R37" gate="G$1" pin="1"/>
<wire x1="566.42" y1="-48.26" x2="579.12" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="579.12" y1="-48.26" x2="579.12" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="614.68" y1="-48.26" x2="579.12" y2="-48.26" width="0.1524" layer="91"/>
<junction x="579.12" y="-48.26"/>
<wire x1="632.46" y1="-40.64" x2="622.3" y2="-40.64" width="0.1524" layer="91"/>
<pinref part="PAD86" gate="G$1" pin="P"/>
<wire x1="622.3" y1="-40.64" x2="614.68" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="622.3" y1="-27.94" x2="622.3" y2="-40.64" width="0.1524" layer="91"/>
<junction x="622.3" y="-40.64"/>
</segment>
</net>
<net name="SDA9" class="0">
<segment>
<pinref part="PAD89" gate="G$1" pin="P"/>
<wire x1="619.76" y1="-20.32" x2="637.54" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="U10" gate="G$1" pin="SDA"/>
<pinref part="R38" gate="G$1" pin="1"/>
<wire x1="566.42" y1="-45.72" x2="571.5" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="571.5" y1="-45.72" x2="571.5" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="571.5" y1="-45.72" x2="612.14" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="612.14" y1="-45.72" x2="612.14" y2="-33.02" width="0.1524" layer="91"/>
<junction x="571.5" y="-45.72"/>
<wire x1="612.14" y1="-33.02" x2="619.76" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="PAD85" gate="G$1" pin="P"/>
<wire x1="619.76" y1="-33.02" x2="629.92" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="619.76" y1="-20.32" x2="619.76" y2="-33.02" width="0.1524" layer="91"/>
<junction x="619.76" y="-33.02"/>
</segment>
</net>
<net name="ADDR4" class="0">
<segment>
<pinref part="R19" gate="G$1" pin="1"/>
<pinref part="R20" gate="G$1" pin="2"/>
<wire x1="655.32" y1="-167.64" x2="655.32" y2="-165.1" width="0.1524" layer="91"/>
<pinref part="U5" gate="G$1" pin="ADDR"/>
<wire x1="566.42" y1="-165.1" x2="647.7" y2="-165.1" width="0.1524" layer="91"/>
<wire x1="647.7" y1="-165.1" x2="647.7" y2="-167.64" width="0.1524" layer="91"/>
<wire x1="647.7" y1="-167.64" x2="655.32" y2="-167.64" width="0.1524" layer="91"/>
<junction x="655.32" y="-167.64"/>
</segment>
</net>
<net name="INTRPT4" class="0">
<segment>
<pinref part="U5" gate="G$1" pin="INTB"/>
<wire x1="566.42" y1="-137.16" x2="571.5" y2="-137.16" width="0.1524" layer="91"/>
<wire x1="571.5" y1="-137.16" x2="571.5" y2="-129.54" width="0.1524" layer="91"/>
<wire x1="571.5" y1="-129.54" x2="584.2" y2="-129.54" width="0.1524" layer="91"/>
<wire x1="584.2" y1="-129.54" x2="584.2" y2="-142.24" width="0.1524" layer="91"/>
<wire x1="584.2" y1="-142.24" x2="599.44" y2="-142.24" width="0.1524" layer="91"/>
<pinref part="PAD39" gate="G$1" pin="P"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="EXITCOIL0"/>
<wire x1="472.44" y1="-147.32" x2="469.9" y2="-147.32" width="0.1524" layer="91"/>
<pinref part="U5" gate="G$1" pin="IN1B"/>
<wire x1="472.44" y1="-147.32" x2="472.44" y2="-144.78" width="0.1524" layer="91"/>
<wire x1="472.44" y1="-144.78" x2="523.24" y2="-144.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<wire x1="474.98" y1="-134.62" x2="474.98" y2="-157.48" width="0.1524" layer="91"/>
<pinref part="U$5" gate="G$1" pin="INCOIL1"/>
<wire x1="474.98" y1="-157.48" x2="469.9" y2="-157.48" width="0.1524" layer="91"/>
<pinref part="U5" gate="G$1" pin="IN0A"/>
<wire x1="523.24" y1="-134.62" x2="474.98" y2="-134.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<wire x1="477.52" y1="-137.16" x2="477.52" y2="-172.72" width="0.1524" layer="91"/>
<pinref part="U$5" gate="G$1" pin="EXITCOIL1"/>
<wire x1="477.52" y1="-172.72" x2="469.9" y2="-172.72" width="0.1524" layer="91"/>
<pinref part="U5" gate="G$1" pin="IN0B"/>
<wire x1="477.52" y1="-137.16" x2="523.24" y2="-137.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<pinref part="U5" gate="G$1" pin="IN2A"/>
<wire x1="523.24" y1="-149.86" x2="480.06" y2="-149.86" width="0.1524" layer="91"/>
<wire x1="480.06" y1="-149.86" x2="480.06" y2="-182.88" width="0.1524" layer="91"/>
<wire x1="480.06" y1="-182.88" x2="381" y2="-182.88" width="0.1524" layer="91"/>
<wire x1="381" y1="-182.88" x2="381" y2="-147.32" width="0.1524" layer="91"/>
<pinref part="U$5" gate="G$1" pin="EXITCOIL2"/>
<wire x1="381" y1="-147.32" x2="398.78" y2="-147.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$37" class="0">
<segment>
<pinref part="U5" gate="G$1" pin="IN2B"/>
<wire x1="375.92" y1="-132.08" x2="375.92" y2="-185.42" width="0.1524" layer="91"/>
<wire x1="375.92" y1="-185.42" x2="482.6" y2="-185.42" width="0.1524" layer="91"/>
<wire x1="482.6" y1="-185.42" x2="482.6" y2="-152.4" width="0.1524" layer="91"/>
<wire x1="482.6" y1="-152.4" x2="523.24" y2="-152.4" width="0.1524" layer="91"/>
<pinref part="U$5" gate="G$1" pin="INCOIL2"/>
<wire x1="375.92" y1="-132.08" x2="398.78" y2="-132.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$38" class="0">
<segment>
<pinref part="U5" gate="G$1" pin="IN3A"/>
<wire x1="523.24" y1="-157.48" x2="485.14" y2="-157.48" width="0.1524" layer="91"/>
<wire x1="485.14" y1="-157.48" x2="485.14" y2="-187.96" width="0.1524" layer="91"/>
<wire x1="485.14" y1="-187.96" x2="370.84" y2="-187.96" width="0.1524" layer="91"/>
<pinref part="U$5" gate="G$1" pin="INCOIL3"/>
<wire x1="370.84" y1="-187.96" x2="370.84" y2="-157.48" width="0.1524" layer="91"/>
<wire x1="370.84" y1="-157.48" x2="398.78" y2="-157.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$39" class="0">
<segment>
<pinref part="U5" gate="G$1" pin="IN3B"/>
<pinref part="U$5" gate="G$1" pin="EXITCOIL3"/>
<wire x1="398.78" y1="-172.72" x2="365.76" y2="-172.72" width="0.1524" layer="91"/>
<wire x1="365.76" y1="-172.72" x2="365.76" y2="-190.5" width="0.1524" layer="91"/>
<wire x1="365.76" y1="-190.5" x2="487.68" y2="-190.5" width="0.1524" layer="91"/>
<wire x1="487.68" y1="-190.5" x2="487.68" y2="-160.02" width="0.1524" layer="91"/>
<wire x1="487.68" y1="-160.02" x2="523.24" y2="-160.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$40" class="0">
<segment>
<pinref part="U5" gate="G$1" pin="IN1A"/>
<wire x1="523.24" y1="-142.24" x2="502.92" y2="-142.24" width="0.1524" layer="91"/>
<wire x1="502.92" y1="-142.24" x2="502.92" y2="-132.08" width="0.1524" layer="91"/>
<pinref part="U$5" gate="G$1" pin="INCOIL0"/>
<wire x1="502.92" y1="-132.08" x2="469.9" y2="-132.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SCL4" class="0">
<segment>
<wire x1="637.54" y1="-139.7" x2="622.3" y2="-139.7" width="0.1524" layer="91"/>
<pinref part="PAD45" gate="G$1" pin="P"/>
<wire x1="614.68" y1="-160.02" x2="614.68" y2="-152.4" width="0.1524" layer="91"/>
<pinref part="U5" gate="G$1" pin="SCL"/>
<pinref part="R17" gate="G$1" pin="1"/>
<wire x1="566.42" y1="-160.02" x2="579.12" y2="-160.02" width="0.1524" layer="91"/>
<wire x1="579.12" y1="-160.02" x2="579.12" y2="-149.86" width="0.1524" layer="91"/>
<wire x1="614.68" y1="-160.02" x2="579.12" y2="-160.02" width="0.1524" layer="91"/>
<junction x="579.12" y="-160.02"/>
<wire x1="632.46" y1="-152.4" x2="622.3" y2="-152.4" width="0.1524" layer="91"/>
<pinref part="PAD41" gate="G$1" pin="P"/>
<wire x1="622.3" y1="-152.4" x2="614.68" y2="-152.4" width="0.1524" layer="91"/>
<wire x1="622.3" y1="-139.7" x2="622.3" y2="-152.4" width="0.1524" layer="91"/>
<junction x="622.3" y="-152.4"/>
</segment>
</net>
<net name="SDA4" class="0">
<segment>
<pinref part="PAD44" gate="G$1" pin="P"/>
<wire x1="619.76" y1="-132.08" x2="637.54" y2="-132.08" width="0.1524" layer="91"/>
<pinref part="U5" gate="G$1" pin="SDA"/>
<pinref part="R18" gate="G$1" pin="1"/>
<wire x1="566.42" y1="-157.48" x2="571.5" y2="-157.48" width="0.1524" layer="91"/>
<wire x1="571.5" y1="-157.48" x2="571.5" y2="-149.86" width="0.1524" layer="91"/>
<wire x1="571.5" y1="-157.48" x2="612.14" y2="-157.48" width="0.1524" layer="91"/>
<wire x1="612.14" y1="-157.48" x2="612.14" y2="-144.78" width="0.1524" layer="91"/>
<junction x="571.5" y="-157.48"/>
<wire x1="612.14" y1="-144.78" x2="619.76" y2="-144.78" width="0.1524" layer="91"/>
<pinref part="PAD40" gate="G$1" pin="P"/>
<wire x1="619.76" y1="-144.78" x2="629.92" y2="-144.78" width="0.1524" layer="91"/>
<wire x1="619.76" y1="-132.08" x2="619.76" y2="-144.78" width="0.1524" layer="91"/>
<junction x="619.76" y="-144.78"/>
</segment>
</net>
<net name="ADDR8" class="0">
<segment>
<pinref part="R35" gate="G$1" pin="1"/>
<pinref part="R36" gate="G$1" pin="2"/>
<wire x1="314.96" y1="-304.8" x2="314.96" y2="-302.26" width="0.1524" layer="91"/>
<pinref part="U9" gate="G$1" pin="ADDR"/>
<wire x1="226.06" y1="-302.26" x2="307.34" y2="-302.26" width="0.1524" layer="91"/>
<wire x1="307.34" y1="-302.26" x2="307.34" y2="-304.8" width="0.1524" layer="91"/>
<wire x1="307.34" y1="-304.8" x2="314.96" y2="-304.8" width="0.1524" layer="91"/>
<junction x="314.96" y="-304.8"/>
</segment>
</net>
<net name="INTRPT8" class="0">
<segment>
<pinref part="U9" gate="G$1" pin="INTB"/>
<wire x1="226.06" y1="-274.32" x2="231.14" y2="-274.32" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-274.32" x2="231.14" y2="-266.7" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-266.7" x2="243.84" y2="-266.7" width="0.1524" layer="91"/>
<wire x1="243.84" y1="-266.7" x2="243.84" y2="-279.4" width="0.1524" layer="91"/>
<wire x1="243.84" y1="-279.4" x2="259.08" y2="-279.4" width="0.1524" layer="91"/>
<pinref part="PAD75" gate="G$1" pin="P"/>
</segment>
</net>
<net name="N$65" class="0">
<segment>
<pinref part="U$9" gate="G$1" pin="EXITCOIL0"/>
<wire x1="132.08" y1="-284.48" x2="129.54" y2="-284.48" width="0.1524" layer="91"/>
<pinref part="U9" gate="G$1" pin="IN1B"/>
<wire x1="132.08" y1="-284.48" x2="132.08" y2="-281.94" width="0.1524" layer="91"/>
<wire x1="132.08" y1="-281.94" x2="182.88" y2="-281.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$66" class="0">
<segment>
<wire x1="134.62" y1="-271.78" x2="134.62" y2="-294.64" width="0.1524" layer="91"/>
<pinref part="U$9" gate="G$1" pin="INCOIL1"/>
<wire x1="134.62" y1="-294.64" x2="129.54" y2="-294.64" width="0.1524" layer="91"/>
<pinref part="U9" gate="G$1" pin="IN0A"/>
<wire x1="182.88" y1="-271.78" x2="134.62" y2="-271.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$67" class="0">
<segment>
<wire x1="137.16" y1="-274.32" x2="137.16" y2="-309.88" width="0.1524" layer="91"/>
<pinref part="U$9" gate="G$1" pin="EXITCOIL1"/>
<wire x1="137.16" y1="-309.88" x2="129.54" y2="-309.88" width="0.1524" layer="91"/>
<pinref part="U9" gate="G$1" pin="IN0B"/>
<wire x1="137.16" y1="-274.32" x2="182.88" y2="-274.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$68" class="0">
<segment>
<pinref part="U9" gate="G$1" pin="IN2A"/>
<wire x1="182.88" y1="-287.02" x2="139.7" y2="-287.02" width="0.1524" layer="91"/>
<wire x1="139.7" y1="-287.02" x2="139.7" y2="-320.04" width="0.1524" layer="91"/>
<wire x1="139.7" y1="-320.04" x2="40.64" y2="-320.04" width="0.1524" layer="91"/>
<wire x1="40.64" y1="-320.04" x2="40.64" y2="-284.48" width="0.1524" layer="91"/>
<pinref part="U$9" gate="G$1" pin="EXITCOIL2"/>
<wire x1="40.64" y1="-284.48" x2="58.42" y2="-284.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$69" class="0">
<segment>
<pinref part="U9" gate="G$1" pin="IN2B"/>
<wire x1="35.56" y1="-269.24" x2="35.56" y2="-322.58" width="0.1524" layer="91"/>
<wire x1="35.56" y1="-322.58" x2="142.24" y2="-322.58" width="0.1524" layer="91"/>
<wire x1="142.24" y1="-322.58" x2="142.24" y2="-289.56" width="0.1524" layer="91"/>
<wire x1="142.24" y1="-289.56" x2="182.88" y2="-289.56" width="0.1524" layer="91"/>
<pinref part="U$9" gate="G$1" pin="INCOIL2"/>
<wire x1="35.56" y1="-269.24" x2="58.42" y2="-269.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$70" class="0">
<segment>
<pinref part="U9" gate="G$1" pin="IN3A"/>
<wire x1="182.88" y1="-294.64" x2="144.78" y2="-294.64" width="0.1524" layer="91"/>
<wire x1="144.78" y1="-294.64" x2="144.78" y2="-325.12" width="0.1524" layer="91"/>
<wire x1="144.78" y1="-325.12" x2="30.48" y2="-325.12" width="0.1524" layer="91"/>
<pinref part="U$9" gate="G$1" pin="INCOIL3"/>
<wire x1="30.48" y1="-325.12" x2="30.48" y2="-294.64" width="0.1524" layer="91"/>
<wire x1="30.48" y1="-294.64" x2="58.42" y2="-294.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$71" class="0">
<segment>
<pinref part="U9" gate="G$1" pin="IN3B"/>
<pinref part="U$9" gate="G$1" pin="EXITCOIL3"/>
<wire x1="58.42" y1="-309.88" x2="25.4" y2="-309.88" width="0.1524" layer="91"/>
<wire x1="25.4" y1="-309.88" x2="25.4" y2="-327.66" width="0.1524" layer="91"/>
<wire x1="25.4" y1="-327.66" x2="147.32" y2="-327.66" width="0.1524" layer="91"/>
<wire x1="147.32" y1="-327.66" x2="147.32" y2="-297.18" width="0.1524" layer="91"/>
<wire x1="147.32" y1="-297.18" x2="182.88" y2="-297.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$72" class="0">
<segment>
<pinref part="U9" gate="G$1" pin="IN1A"/>
<wire x1="182.88" y1="-279.4" x2="162.56" y2="-279.4" width="0.1524" layer="91"/>
<wire x1="162.56" y1="-279.4" x2="162.56" y2="-269.24" width="0.1524" layer="91"/>
<pinref part="U$9" gate="G$1" pin="INCOIL0"/>
<wire x1="162.56" y1="-269.24" x2="129.54" y2="-269.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SCL8" class="0">
<segment>
<wire x1="297.18" y1="-276.86" x2="281.94" y2="-276.86" width="0.1524" layer="91"/>
<pinref part="PAD81" gate="G$1" pin="P"/>
<wire x1="274.32" y1="-297.18" x2="274.32" y2="-289.56" width="0.1524" layer="91"/>
<pinref part="U9" gate="G$1" pin="SCL"/>
<pinref part="R33" gate="G$1" pin="1"/>
<wire x1="226.06" y1="-297.18" x2="238.76" y2="-297.18" width="0.1524" layer="91"/>
<wire x1="238.76" y1="-297.18" x2="238.76" y2="-287.02" width="0.1524" layer="91"/>
<wire x1="274.32" y1="-297.18" x2="238.76" y2="-297.18" width="0.1524" layer="91"/>
<junction x="238.76" y="-297.18"/>
<wire x1="292.1" y1="-289.56" x2="281.94" y2="-289.56" width="0.1524" layer="91"/>
<pinref part="PAD77" gate="G$1" pin="P"/>
<wire x1="281.94" y1="-289.56" x2="274.32" y2="-289.56" width="0.1524" layer="91"/>
<wire x1="281.94" y1="-276.86" x2="281.94" y2="-289.56" width="0.1524" layer="91"/>
<junction x="281.94" y="-289.56"/>
</segment>
</net>
<net name="SDA8" class="0">
<segment>
<pinref part="PAD80" gate="G$1" pin="P"/>
<wire x1="279.4" y1="-269.24" x2="297.18" y2="-269.24" width="0.1524" layer="91"/>
<pinref part="U9" gate="G$1" pin="SDA"/>
<pinref part="R34" gate="G$1" pin="1"/>
<wire x1="226.06" y1="-294.64" x2="231.14" y2="-294.64" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-294.64" x2="231.14" y2="-287.02" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-294.64" x2="271.78" y2="-294.64" width="0.1524" layer="91"/>
<wire x1="271.78" y1="-294.64" x2="271.78" y2="-281.94" width="0.1524" layer="91"/>
<junction x="231.14" y="-294.64"/>
<wire x1="271.78" y1="-281.94" x2="279.4" y2="-281.94" width="0.1524" layer="91"/>
<pinref part="PAD76" gate="G$1" pin="P"/>
<wire x1="279.4" y1="-281.94" x2="289.56" y2="-281.94" width="0.1524" layer="91"/>
<wire x1="279.4" y1="-269.24" x2="279.4" y2="-281.94" width="0.1524" layer="91"/>
<junction x="279.4" y="-281.94"/>
</segment>
</net>
<net name="ADDR11" class="0">
<segment>
<pinref part="R47" gate="G$1" pin="1"/>
<pinref part="R48" gate="G$1" pin="2"/>
<wire x1="670.56" y1="-287.02" x2="670.56" y2="-284.48" width="0.1524" layer="91"/>
<pinref part="U12" gate="G$1" pin="ADDR"/>
<wire x1="581.66" y1="-284.48" x2="662.94" y2="-284.48" width="0.1524" layer="91"/>
<wire x1="662.94" y1="-284.48" x2="662.94" y2="-287.02" width="0.1524" layer="91"/>
<wire x1="662.94" y1="-287.02" x2="670.56" y2="-287.02" width="0.1524" layer="91"/>
<junction x="670.56" y="-287.02"/>
</segment>
</net>
<net name="INTRPT11" class="0">
<segment>
<pinref part="U12" gate="G$1" pin="INTB"/>
<wire x1="581.66" y1="-256.54" x2="586.74" y2="-256.54" width="0.1524" layer="91"/>
<wire x1="586.74" y1="-256.54" x2="586.74" y2="-248.92" width="0.1524" layer="91"/>
<wire x1="586.74" y1="-248.92" x2="599.44" y2="-248.92" width="0.1524" layer="91"/>
<wire x1="599.44" y1="-248.92" x2="599.44" y2="-261.62" width="0.1524" layer="91"/>
<wire x1="599.44" y1="-261.62" x2="614.68" y2="-261.62" width="0.1524" layer="91"/>
<pinref part="PAD102" gate="G$1" pin="P"/>
</segment>
</net>
<net name="N$89" class="0">
<segment>
<pinref part="U$12" gate="G$1" pin="EXITCOIL0"/>
<wire x1="487.68" y1="-266.7" x2="485.14" y2="-266.7" width="0.1524" layer="91"/>
<pinref part="U12" gate="G$1" pin="IN1B"/>
<wire x1="487.68" y1="-266.7" x2="487.68" y2="-264.16" width="0.1524" layer="91"/>
<wire x1="487.68" y1="-264.16" x2="538.48" y2="-264.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$90" class="0">
<segment>
<wire x1="490.22" y1="-254" x2="490.22" y2="-276.86" width="0.1524" layer="91"/>
<pinref part="U$12" gate="G$1" pin="INCOIL1"/>
<wire x1="490.22" y1="-276.86" x2="485.14" y2="-276.86" width="0.1524" layer="91"/>
<pinref part="U12" gate="G$1" pin="IN0A"/>
<wire x1="538.48" y1="-254" x2="490.22" y2="-254" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$91" class="0">
<segment>
<wire x1="492.76" y1="-256.54" x2="492.76" y2="-292.1" width="0.1524" layer="91"/>
<pinref part="U$12" gate="G$1" pin="EXITCOIL1"/>
<wire x1="492.76" y1="-292.1" x2="485.14" y2="-292.1" width="0.1524" layer="91"/>
<pinref part="U12" gate="G$1" pin="IN0B"/>
<wire x1="492.76" y1="-256.54" x2="538.48" y2="-256.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$92" class="0">
<segment>
<pinref part="U12" gate="G$1" pin="IN2A"/>
<wire x1="538.48" y1="-269.24" x2="495.3" y2="-269.24" width="0.1524" layer="91"/>
<wire x1="495.3" y1="-269.24" x2="495.3" y2="-302.26" width="0.1524" layer="91"/>
<wire x1="495.3" y1="-302.26" x2="396.24" y2="-302.26" width="0.1524" layer="91"/>
<wire x1="396.24" y1="-302.26" x2="396.24" y2="-266.7" width="0.1524" layer="91"/>
<pinref part="U$12" gate="G$1" pin="EXITCOIL2"/>
<wire x1="396.24" y1="-266.7" x2="414.02" y2="-266.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$93" class="0">
<segment>
<pinref part="U12" gate="G$1" pin="IN2B"/>
<wire x1="391.16" y1="-251.46" x2="391.16" y2="-304.8" width="0.1524" layer="91"/>
<wire x1="391.16" y1="-304.8" x2="497.84" y2="-304.8" width="0.1524" layer="91"/>
<wire x1="497.84" y1="-304.8" x2="497.84" y2="-271.78" width="0.1524" layer="91"/>
<wire x1="497.84" y1="-271.78" x2="538.48" y2="-271.78" width="0.1524" layer="91"/>
<pinref part="U$12" gate="G$1" pin="INCOIL2"/>
<wire x1="391.16" y1="-251.46" x2="414.02" y2="-251.46" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$94" class="0">
<segment>
<pinref part="U12" gate="G$1" pin="IN3A"/>
<wire x1="538.48" y1="-276.86" x2="500.38" y2="-276.86" width="0.1524" layer="91"/>
<wire x1="500.38" y1="-276.86" x2="500.38" y2="-307.34" width="0.1524" layer="91"/>
<wire x1="500.38" y1="-307.34" x2="386.08" y2="-307.34" width="0.1524" layer="91"/>
<pinref part="U$12" gate="G$1" pin="INCOIL3"/>
<wire x1="386.08" y1="-307.34" x2="386.08" y2="-276.86" width="0.1524" layer="91"/>
<wire x1="386.08" y1="-276.86" x2="414.02" y2="-276.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$95" class="0">
<segment>
<pinref part="U12" gate="G$1" pin="IN3B"/>
<pinref part="U$12" gate="G$1" pin="EXITCOIL3"/>
<wire x1="414.02" y1="-292.1" x2="381" y2="-292.1" width="0.1524" layer="91"/>
<wire x1="381" y1="-292.1" x2="381" y2="-309.88" width="0.1524" layer="91"/>
<wire x1="381" y1="-309.88" x2="502.92" y2="-309.88" width="0.1524" layer="91"/>
<wire x1="502.92" y1="-309.88" x2="502.92" y2="-279.4" width="0.1524" layer="91"/>
<wire x1="502.92" y1="-279.4" x2="538.48" y2="-279.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$96" class="0">
<segment>
<pinref part="U12" gate="G$1" pin="IN1A"/>
<wire x1="538.48" y1="-261.62" x2="518.16" y2="-261.62" width="0.1524" layer="91"/>
<wire x1="518.16" y1="-261.62" x2="518.16" y2="-251.46" width="0.1524" layer="91"/>
<pinref part="U$12" gate="G$1" pin="INCOIL0"/>
<wire x1="518.16" y1="-251.46" x2="485.14" y2="-251.46" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SCL11" class="0">
<segment>
<wire x1="652.78" y1="-259.08" x2="637.54" y2="-259.08" width="0.1524" layer="91"/>
<pinref part="PAD108" gate="G$1" pin="P"/>
<wire x1="629.92" y1="-279.4" x2="629.92" y2="-271.78" width="0.1524" layer="91"/>
<pinref part="U12" gate="G$1" pin="SCL"/>
<pinref part="R45" gate="G$1" pin="1"/>
<wire x1="581.66" y1="-279.4" x2="594.36" y2="-279.4" width="0.1524" layer="91"/>
<wire x1="594.36" y1="-279.4" x2="594.36" y2="-269.24" width="0.1524" layer="91"/>
<wire x1="629.92" y1="-279.4" x2="594.36" y2="-279.4" width="0.1524" layer="91"/>
<junction x="594.36" y="-279.4"/>
<wire x1="647.7" y1="-271.78" x2="637.54" y2="-271.78" width="0.1524" layer="91"/>
<pinref part="PAD104" gate="G$1" pin="P"/>
<wire x1="637.54" y1="-271.78" x2="629.92" y2="-271.78" width="0.1524" layer="91"/>
<wire x1="637.54" y1="-259.08" x2="637.54" y2="-271.78" width="0.1524" layer="91"/>
<junction x="637.54" y="-271.78"/>
</segment>
</net>
<net name="SDA11" class="0">
<segment>
<pinref part="PAD107" gate="G$1" pin="P"/>
<wire x1="635" y1="-251.46" x2="652.78" y2="-251.46" width="0.1524" layer="91"/>
<pinref part="U12" gate="G$1" pin="SDA"/>
<pinref part="R46" gate="G$1" pin="1"/>
<wire x1="581.66" y1="-276.86" x2="586.74" y2="-276.86" width="0.1524" layer="91"/>
<wire x1="586.74" y1="-276.86" x2="586.74" y2="-269.24" width="0.1524" layer="91"/>
<wire x1="586.74" y1="-276.86" x2="627.38" y2="-276.86" width="0.1524" layer="91"/>
<wire x1="627.38" y1="-276.86" x2="627.38" y2="-264.16" width="0.1524" layer="91"/>
<junction x="586.74" y="-276.86"/>
<wire x1="627.38" y1="-264.16" x2="635" y2="-264.16" width="0.1524" layer="91"/>
<pinref part="PAD103" gate="G$1" pin="P"/>
<wire x1="635" y1="-264.16" x2="645.16" y2="-264.16" width="0.1524" layer="91"/>
<wire x1="635" y1="-251.46" x2="635" y2="-264.16" width="0.1524" layer="91"/>
<junction x="635" y="-264.16"/>
</segment>
</net>
<net name="ADDR13" class="0">
<segment>
<pinref part="R55" gate="G$1" pin="1"/>
<pinref part="R56" gate="G$1" pin="2"/>
<wire x1="1059.18" y1="73.66" x2="1059.18" y2="76.2" width="0.1524" layer="91"/>
<pinref part="U14" gate="G$1" pin="ADDR"/>
<wire x1="970.28" y1="76.2" x2="1051.56" y2="76.2" width="0.1524" layer="91"/>
<wire x1="1051.56" y1="76.2" x2="1051.56" y2="73.66" width="0.1524" layer="91"/>
<wire x1="1051.56" y1="73.66" x2="1059.18" y2="73.66" width="0.1524" layer="91"/>
<junction x="1059.18" y="73.66"/>
</segment>
</net>
<net name="INTRPT13" class="0">
<segment>
<pinref part="U14" gate="G$1" pin="INTB"/>
<wire x1="970.28" y1="104.14" x2="975.36" y2="104.14" width="0.1524" layer="91"/>
<wire x1="975.36" y1="104.14" x2="975.36" y2="111.76" width="0.1524" layer="91"/>
<wire x1="975.36" y1="111.76" x2="988.06" y2="111.76" width="0.1524" layer="91"/>
<wire x1="988.06" y1="111.76" x2="988.06" y2="99.06" width="0.1524" layer="91"/>
<wire x1="988.06" y1="99.06" x2="1003.3" y2="99.06" width="0.1524" layer="91"/>
<pinref part="PAD120" gate="G$1" pin="P"/>
</segment>
</net>
<net name="N$105" class="0">
<segment>
<pinref part="U$14" gate="G$1" pin="EXITCOIL0"/>
<wire x1="876.3" y1="93.98" x2="873.76" y2="93.98" width="0.1524" layer="91"/>
<pinref part="U14" gate="G$1" pin="IN1B"/>
<wire x1="876.3" y1="93.98" x2="876.3" y2="96.52" width="0.1524" layer="91"/>
<wire x1="876.3" y1="96.52" x2="927.1" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$106" class="0">
<segment>
<wire x1="878.84" y1="106.68" x2="878.84" y2="83.82" width="0.1524" layer="91"/>
<pinref part="U$14" gate="G$1" pin="INCOIL1"/>
<wire x1="878.84" y1="83.82" x2="873.76" y2="83.82" width="0.1524" layer="91"/>
<pinref part="U14" gate="G$1" pin="IN0A"/>
<wire x1="927.1" y1="106.68" x2="878.84" y2="106.68" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$107" class="0">
<segment>
<wire x1="881.38" y1="104.14" x2="881.38" y2="68.58" width="0.1524" layer="91"/>
<pinref part="U$14" gate="G$1" pin="EXITCOIL1"/>
<wire x1="881.38" y1="68.58" x2="873.76" y2="68.58" width="0.1524" layer="91"/>
<pinref part="U14" gate="G$1" pin="IN0B"/>
<wire x1="881.38" y1="104.14" x2="927.1" y2="104.14" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$108" class="0">
<segment>
<pinref part="U14" gate="G$1" pin="IN2A"/>
<wire x1="927.1" y1="91.44" x2="883.92" y2="91.44" width="0.1524" layer="91"/>
<wire x1="883.92" y1="91.44" x2="883.92" y2="58.42" width="0.1524" layer="91"/>
<wire x1="883.92" y1="58.42" x2="784.86" y2="58.42" width="0.1524" layer="91"/>
<wire x1="784.86" y1="58.42" x2="784.86" y2="93.98" width="0.1524" layer="91"/>
<pinref part="U$14" gate="G$1" pin="EXITCOIL2"/>
<wire x1="784.86" y1="93.98" x2="802.64" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$109" class="0">
<segment>
<pinref part="U14" gate="G$1" pin="IN2B"/>
<wire x1="779.78" y1="109.22" x2="779.78" y2="55.88" width="0.1524" layer="91"/>
<wire x1="779.78" y1="55.88" x2="886.46" y2="55.88" width="0.1524" layer="91"/>
<wire x1="886.46" y1="55.88" x2="886.46" y2="88.9" width="0.1524" layer="91"/>
<wire x1="886.46" y1="88.9" x2="927.1" y2="88.9" width="0.1524" layer="91"/>
<pinref part="U$14" gate="G$1" pin="INCOIL2"/>
<wire x1="779.78" y1="109.22" x2="802.64" y2="109.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$110" class="0">
<segment>
<pinref part="U14" gate="G$1" pin="IN3A"/>
<wire x1="927.1" y1="83.82" x2="889" y2="83.82" width="0.1524" layer="91"/>
<wire x1="889" y1="83.82" x2="889" y2="53.34" width="0.1524" layer="91"/>
<wire x1="889" y1="53.34" x2="774.7" y2="53.34" width="0.1524" layer="91"/>
<pinref part="U$14" gate="G$1" pin="INCOIL3"/>
<wire x1="774.7" y1="53.34" x2="774.7" y2="83.82" width="0.1524" layer="91"/>
<wire x1="774.7" y1="83.82" x2="802.64" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$111" class="0">
<segment>
<pinref part="U14" gate="G$1" pin="IN3B"/>
<pinref part="U$14" gate="G$1" pin="EXITCOIL3"/>
<wire x1="802.64" y1="68.58" x2="769.62" y2="68.58" width="0.1524" layer="91"/>
<wire x1="769.62" y1="68.58" x2="769.62" y2="50.8" width="0.1524" layer="91"/>
<wire x1="769.62" y1="50.8" x2="891.54" y2="50.8" width="0.1524" layer="91"/>
<wire x1="891.54" y1="50.8" x2="891.54" y2="81.28" width="0.1524" layer="91"/>
<wire x1="891.54" y1="81.28" x2="927.1" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$112" class="0">
<segment>
<pinref part="U14" gate="G$1" pin="IN1A"/>
<wire x1="927.1" y1="99.06" x2="906.78" y2="99.06" width="0.1524" layer="91"/>
<wire x1="906.78" y1="99.06" x2="906.78" y2="109.22" width="0.1524" layer="91"/>
<pinref part="U$14" gate="G$1" pin="INCOIL0"/>
<wire x1="906.78" y1="109.22" x2="873.76" y2="109.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SCL13" class="0">
<segment>
<wire x1="1041.4" y1="101.6" x2="1026.16" y2="101.6" width="0.1524" layer="91"/>
<pinref part="PAD126" gate="G$1" pin="P"/>
<wire x1="1018.54" y1="81.28" x2="1018.54" y2="88.9" width="0.1524" layer="91"/>
<pinref part="U14" gate="G$1" pin="SCL"/>
<pinref part="R53" gate="G$1" pin="1"/>
<wire x1="970.28" y1="81.28" x2="982.98" y2="81.28" width="0.1524" layer="91"/>
<wire x1="982.98" y1="81.28" x2="982.98" y2="91.44" width="0.1524" layer="91"/>
<wire x1="1018.54" y1="81.28" x2="982.98" y2="81.28" width="0.1524" layer="91"/>
<junction x="982.98" y="81.28"/>
<wire x1="1036.32" y1="88.9" x2="1026.16" y2="88.9" width="0.1524" layer="91"/>
<pinref part="PAD122" gate="G$1" pin="P"/>
<wire x1="1026.16" y1="88.9" x2="1018.54" y2="88.9" width="0.1524" layer="91"/>
<wire x1="1026.16" y1="101.6" x2="1026.16" y2="88.9" width="0.1524" layer="91"/>
<junction x="1026.16" y="88.9"/>
</segment>
</net>
<net name="SDA13" class="0">
<segment>
<pinref part="PAD125" gate="G$1" pin="P"/>
<wire x1="1023.62" y1="109.22" x2="1041.4" y2="109.22" width="0.1524" layer="91"/>
<pinref part="U14" gate="G$1" pin="SDA"/>
<pinref part="R54" gate="G$1" pin="1"/>
<wire x1="970.28" y1="83.82" x2="975.36" y2="83.82" width="0.1524" layer="91"/>
<wire x1="975.36" y1="83.82" x2="975.36" y2="91.44" width="0.1524" layer="91"/>
<wire x1="975.36" y1="83.82" x2="1016" y2="83.82" width="0.1524" layer="91"/>
<wire x1="1016" y1="83.82" x2="1016" y2="96.52" width="0.1524" layer="91"/>
<junction x="975.36" y="83.82"/>
<wire x1="1016" y1="96.52" x2="1023.62" y2="96.52" width="0.1524" layer="91"/>
<pinref part="PAD121" gate="G$1" pin="P"/>
<wire x1="1023.62" y1="96.52" x2="1033.78" y2="96.52" width="0.1524" layer="91"/>
<wire x1="1023.62" y1="109.22" x2="1023.62" y2="96.52" width="0.1524" layer="91"/>
<junction x="1023.62" y="96.52"/>
</segment>
</net>
<net name="ADDR15" class="0">
<segment>
<pinref part="R63" gate="G$1" pin="1"/>
<pinref part="R64" gate="G$1" pin="2"/>
<wire x1="1066.8" y1="-43.18" x2="1066.8" y2="-40.64" width="0.1524" layer="91"/>
<pinref part="U16" gate="G$1" pin="ADDR"/>
<wire x1="977.9" y1="-40.64" x2="1059.18" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="1059.18" y1="-40.64" x2="1059.18" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="1059.18" y1="-43.18" x2="1066.8" y2="-43.18" width="0.1524" layer="91"/>
<junction x="1066.8" y="-43.18"/>
</segment>
</net>
<net name="INTRPT15" class="0">
<segment>
<pinref part="U16" gate="G$1" pin="INTB"/>
<wire x1="977.9" y1="-12.7" x2="982.98" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="982.98" y1="-12.7" x2="982.98" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="982.98" y1="-5.08" x2="995.68" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="995.68" y1="-5.08" x2="995.68" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="995.68" y1="-17.78" x2="1010.92" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="PAD138" gate="G$1" pin="P"/>
</segment>
</net>
<net name="N$121" class="0">
<segment>
<pinref part="U$16" gate="G$1" pin="EXITCOIL0"/>
<wire x1="883.92" y1="-22.86" x2="881.38" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="U16" gate="G$1" pin="IN1B"/>
<wire x1="883.92" y1="-22.86" x2="883.92" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="883.92" y1="-20.32" x2="934.72" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$122" class="0">
<segment>
<wire x1="886.46" y1="-10.16" x2="886.46" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="U$16" gate="G$1" pin="INCOIL1"/>
<wire x1="886.46" y1="-33.02" x2="881.38" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="U16" gate="G$1" pin="IN0A"/>
<wire x1="934.72" y1="-10.16" x2="886.46" y2="-10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$123" class="0">
<segment>
<wire x1="889" y1="-12.7" x2="889" y2="-48.26" width="0.1524" layer="91"/>
<pinref part="U$16" gate="G$1" pin="EXITCOIL1"/>
<wire x1="889" y1="-48.26" x2="881.38" y2="-48.26" width="0.1524" layer="91"/>
<pinref part="U16" gate="G$1" pin="IN0B"/>
<wire x1="889" y1="-12.7" x2="934.72" y2="-12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$124" class="0">
<segment>
<pinref part="U16" gate="G$1" pin="IN2A"/>
<wire x1="934.72" y1="-25.4" x2="891.54" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="891.54" y1="-25.4" x2="891.54" y2="-58.42" width="0.1524" layer="91"/>
<wire x1="891.54" y1="-58.42" x2="792.48" y2="-58.42" width="0.1524" layer="91"/>
<wire x1="792.48" y1="-58.42" x2="792.48" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="U$16" gate="G$1" pin="EXITCOIL2"/>
<wire x1="792.48" y1="-22.86" x2="810.26" y2="-22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$125" class="0">
<segment>
<pinref part="U16" gate="G$1" pin="IN2B"/>
<wire x1="787.4" y1="-7.62" x2="787.4" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="787.4" y1="-60.96" x2="894.08" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="894.08" y1="-60.96" x2="894.08" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="894.08" y1="-27.94" x2="934.72" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="U$16" gate="G$1" pin="INCOIL2"/>
<wire x1="787.4" y1="-7.62" x2="810.26" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$126" class="0">
<segment>
<pinref part="U16" gate="G$1" pin="IN3A"/>
<wire x1="934.72" y1="-33.02" x2="896.62" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="896.62" y1="-33.02" x2="896.62" y2="-63.5" width="0.1524" layer="91"/>
<wire x1="896.62" y1="-63.5" x2="782.32" y2="-63.5" width="0.1524" layer="91"/>
<pinref part="U$16" gate="G$1" pin="INCOIL3"/>
<wire x1="782.32" y1="-63.5" x2="782.32" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="782.32" y1="-33.02" x2="810.26" y2="-33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$127" class="0">
<segment>
<pinref part="U16" gate="G$1" pin="IN3B"/>
<pinref part="U$16" gate="G$1" pin="EXITCOIL3"/>
<wire x1="810.26" y1="-48.26" x2="777.24" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="777.24" y1="-48.26" x2="777.24" y2="-66.04" width="0.1524" layer="91"/>
<wire x1="777.24" y1="-66.04" x2="899.16" y2="-66.04" width="0.1524" layer="91"/>
<wire x1="899.16" y1="-66.04" x2="899.16" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="899.16" y1="-35.56" x2="934.72" y2="-35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$128" class="0">
<segment>
<pinref part="U16" gate="G$1" pin="IN1A"/>
<wire x1="934.72" y1="-17.78" x2="914.4" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="914.4" y1="-17.78" x2="914.4" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="U$16" gate="G$1" pin="INCOIL0"/>
<wire x1="914.4" y1="-7.62" x2="881.38" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SCL15" class="0">
<segment>
<wire x1="1049.02" y1="-15.24" x2="1033.78" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="PAD144" gate="G$1" pin="P"/>
<wire x1="1026.16" y1="-35.56" x2="1026.16" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="U16" gate="G$1" pin="SCL"/>
<pinref part="R61" gate="G$1" pin="1"/>
<wire x1="977.9" y1="-35.56" x2="990.6" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="990.6" y1="-35.56" x2="990.6" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="1026.16" y1="-35.56" x2="990.6" y2="-35.56" width="0.1524" layer="91"/>
<junction x="990.6" y="-35.56"/>
<wire x1="1043.94" y1="-27.94" x2="1033.78" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="PAD140" gate="G$1" pin="P"/>
<wire x1="1033.78" y1="-27.94" x2="1026.16" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="1033.78" y1="-15.24" x2="1033.78" y2="-27.94" width="0.1524" layer="91"/>
<junction x="1033.78" y="-27.94"/>
</segment>
</net>
<net name="SDA15" class="0">
<segment>
<pinref part="PAD143" gate="G$1" pin="P"/>
<wire x1="1031.24" y1="-7.62" x2="1049.02" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="U16" gate="G$1" pin="SDA"/>
<pinref part="R62" gate="G$1" pin="1"/>
<wire x1="977.9" y1="-33.02" x2="982.98" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="982.98" y1="-33.02" x2="982.98" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="982.98" y1="-33.02" x2="1023.62" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="1023.62" y1="-33.02" x2="1023.62" y2="-20.32" width="0.1524" layer="91"/>
<junction x="982.98" y="-33.02"/>
<wire x1="1023.62" y1="-20.32" x2="1031.24" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="PAD139" gate="G$1" pin="P"/>
<wire x1="1031.24" y1="-20.32" x2="1041.4" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="1031.24" y1="-7.62" x2="1031.24" y2="-20.32" width="0.1524" layer="91"/>
<junction x="1031.24" y="-20.32"/>
</segment>
</net>
</nets>
</sheet>
<sheet>
<plain>
</plain>
<instances>
<instance part="GND127" gate="1" x="350.52" y="944.88"/>
<instance part="GND128" gate="1" x="294.64" y="944.88"/>
<instance part="U19" gate="G$1" x="304.8" y="993.14"/>
<instance part="R73" gate="G$1" x="355.6" y="972.82" rot="R90"/>
<instance part="R74" gate="G$1" x="347.98" y="972.82" rot="R90"/>
<instance part="3.3V90" gate="G$1" x="355.6" y="982.98"/>
<instance part="3.3V91" gate="G$1" x="342.9" y="998.22"/>
<instance part="C19" gate="G$1" x="363.22" y="1008.38"/>
<instance part="3.3V92" gate="G$1" x="363.22" y="1016"/>
<instance part="GND129" gate="1" x="363.22" y="998.22"/>
<instance part="GND130" gate="1" x="393.7" y="995.68"/>
<instance part="3.3V93" gate="G$1" x="396.24" y="1013.46"/>
<instance part="U$19" gate="G$1" x="241.3" y="939.8" rot="MR0"/>
<instance part="VDD19" gate="G$1" x="431.8" y="970.28"/>
<instance part="GND131" gate="1" x="431.8" y="929.64"/>
<instance part="PAD165" gate="G$1" x="408.94" y="1005.84" rot="R180"/>
<instance part="PAD166" gate="G$1" x="408.94" y="998.22" rot="R180"/>
<instance part="PAD167" gate="G$1" x="378.46" y="975.36" rot="R180"/>
<instance part="PAD168" gate="G$1" x="408.94" y="972.82" smashed="yes" rot="R180"/>
<instance part="PAD169" gate="G$1" x="411.48" y="965.2" smashed="yes" rot="R180"/>
<instance part="GND132" gate="1" x="368.3" y="988.06"/>
<instance part="GND133" gate="1" x="426.72" y="995.68"/>
<instance part="3.3V94" gate="G$1" x="429.26" y="1013.46"/>
<instance part="PAD170" gate="G$1" x="441.96" y="1005.84" rot="R180"/>
<instance part="PAD171" gate="G$1" x="441.96" y="998.22" rot="R180"/>
<instance part="PAD172" gate="G$1" x="383.54" y="985.52" rot="R180"/>
<instance part="PAD173" gate="G$1" x="416.56" y="985.52" rot="R180"/>
<instance part="PAD174" gate="G$1" x="416.56" y="977.9" rot="R180"/>
<instance part="R75" gate="G$1" x="431.8" y="957.58" rot="R90"/>
<instance part="R76" gate="G$1" x="431.8" y="944.88" rot="R90"/>
<instance part="GND141" gate="1" x="365.76" y="802.64"/>
<instance part="GND142" gate="1" x="309.88" y="802.64"/>
<instance part="U21" gate="G$1" x="320.04" y="850.9"/>
<instance part="R81" gate="G$1" x="370.84" y="830.58" rot="R90"/>
<instance part="R82" gate="G$1" x="363.22" y="830.58" rot="R90"/>
<instance part="3.3V100" gate="G$1" x="370.84" y="840.74"/>
<instance part="3.3V101" gate="G$1" x="358.14" y="855.98"/>
<instance part="C21" gate="G$1" x="378.46" y="866.14"/>
<instance part="3.3V102" gate="G$1" x="378.46" y="873.76"/>
<instance part="GND143" gate="1" x="378.46" y="855.98"/>
<instance part="GND144" gate="1" x="408.94" y="853.44"/>
<instance part="3.3V103" gate="G$1" x="411.48" y="871.22"/>
<instance part="U$21" gate="G$1" x="256.54" y="797.56" rot="MR0"/>
<instance part="VDD21" gate="G$1" x="447.04" y="828.04"/>
<instance part="GND145" gate="1" x="447.04" y="787.4"/>
<instance part="PAD185" gate="G$1" x="424.18" y="863.6" rot="R180"/>
<instance part="PAD186" gate="G$1" x="424.18" y="855.98" rot="R180"/>
<instance part="PAD187" gate="G$1" x="393.7" y="833.12" rot="R180"/>
<instance part="PAD188" gate="G$1" x="424.18" y="830.58" smashed="yes" rot="R180"/>
<instance part="PAD189" gate="G$1" x="426.72" y="822.96" smashed="yes" rot="R180"/>
<instance part="GND146" gate="1" x="383.54" y="845.82"/>
<instance part="GND147" gate="1" x="441.96" y="853.44"/>
<instance part="3.3V104" gate="G$1" x="444.5" y="871.22"/>
<instance part="PAD190" gate="G$1" x="457.2" y="863.6" rot="R180"/>
<instance part="PAD191" gate="G$1" x="457.2" y="855.98" rot="R180"/>
<instance part="PAD192" gate="G$1" x="398.78" y="843.28" rot="R180"/>
<instance part="PAD193" gate="G$1" x="431.8" y="843.28" rot="R180"/>
<instance part="PAD194" gate="G$1" x="431.8" y="835.66" rot="R180"/>
<instance part="R83" gate="G$1" x="447.04" y="815.34" rot="R90"/>
<instance part="R84" gate="G$1" x="447.04" y="802.64" rot="R90"/>
<instance part="GND155" gate="1" x="365.76" y="655.32"/>
<instance part="GND156" gate="1" x="309.88" y="655.32"/>
<instance part="U23" gate="G$1" x="320.04" y="703.58"/>
<instance part="R89" gate="G$1" x="370.84" y="683.26" rot="R90"/>
<instance part="R90" gate="G$1" x="363.22" y="683.26" rot="R90"/>
<instance part="3.3V110" gate="G$1" x="370.84" y="693.42"/>
<instance part="3.3V111" gate="G$1" x="358.14" y="708.66"/>
<instance part="C23" gate="G$1" x="378.46" y="718.82"/>
<instance part="3.3V112" gate="G$1" x="378.46" y="726.44"/>
<instance part="GND157" gate="1" x="378.46" y="708.66"/>
<instance part="GND158" gate="1" x="408.94" y="706.12"/>
<instance part="3.3V113" gate="G$1" x="411.48" y="723.9"/>
<instance part="U$23" gate="G$1" x="256.54" y="650.24" rot="MR0"/>
<instance part="VDD23" gate="G$1" x="447.04" y="680.72"/>
<instance part="GND159" gate="1" x="447.04" y="640.08"/>
<instance part="PAD205" gate="G$1" x="424.18" y="716.28" rot="R180"/>
<instance part="PAD206" gate="G$1" x="424.18" y="708.66" rot="R180"/>
<instance part="PAD207" gate="G$1" x="393.7" y="685.8" rot="R180"/>
<instance part="PAD208" gate="G$1" x="424.18" y="683.26" smashed="yes" rot="R180"/>
<instance part="PAD209" gate="G$1" x="426.72" y="675.64" smashed="yes" rot="R180"/>
<instance part="GND160" gate="1" x="383.54" y="698.5"/>
<instance part="GND161" gate="1" x="441.96" y="706.12"/>
<instance part="3.3V114" gate="G$1" x="444.5" y="723.9"/>
<instance part="PAD210" gate="G$1" x="457.2" y="716.28" rot="R180"/>
<instance part="PAD211" gate="G$1" x="457.2" y="708.66" rot="R180"/>
<instance part="PAD212" gate="G$1" x="398.78" y="695.96" rot="R180"/>
<instance part="PAD213" gate="G$1" x="431.8" y="695.96" rot="R180"/>
<instance part="PAD214" gate="G$1" x="431.8" y="688.34" rot="R180"/>
<instance part="R91" gate="G$1" x="447.04" y="668.02" rot="R90"/>
<instance part="R92" gate="G$1" x="447.04" y="655.32" rot="R90"/>
<instance part="GND169" gate="1" x="393.7" y="528.32"/>
<instance part="GND170" gate="1" x="337.82" y="528.32"/>
<instance part="U25" gate="G$1" x="347.98" y="576.58"/>
<instance part="R97" gate="G$1" x="398.78" y="556.26" rot="R90"/>
<instance part="R98" gate="G$1" x="391.16" y="556.26" rot="R90"/>
<instance part="3.3V120" gate="G$1" x="398.78" y="566.42"/>
<instance part="3.3V121" gate="G$1" x="386.08" y="581.66"/>
<instance part="C25" gate="G$1" x="406.4" y="591.82"/>
<instance part="3.3V122" gate="G$1" x="406.4" y="599.44"/>
<instance part="GND171" gate="1" x="406.4" y="581.66"/>
<instance part="GND172" gate="1" x="436.88" y="579.12"/>
<instance part="3.3V123" gate="G$1" x="439.42" y="596.9"/>
<instance part="U$25" gate="G$1" x="284.48" y="523.24" rot="MR0"/>
<instance part="VDD25" gate="G$1" x="474.98" y="553.72"/>
<instance part="GND173" gate="1" x="474.98" y="513.08"/>
<instance part="PAD225" gate="G$1" x="452.12" y="589.28" rot="R180"/>
<instance part="PAD226" gate="G$1" x="452.12" y="581.66" rot="R180"/>
<instance part="PAD227" gate="G$1" x="421.64" y="558.8" rot="R180"/>
<instance part="PAD228" gate="G$1" x="452.12" y="556.26" smashed="yes" rot="R180"/>
<instance part="PAD229" gate="G$1" x="454.66" y="548.64" smashed="yes" rot="R180"/>
<instance part="GND174" gate="1" x="411.48" y="571.5"/>
<instance part="GND175" gate="1" x="469.9" y="579.12"/>
<instance part="3.3V124" gate="G$1" x="472.44" y="596.9"/>
<instance part="PAD230" gate="G$1" x="485.14" y="589.28" rot="R180"/>
<instance part="PAD231" gate="G$1" x="485.14" y="581.66" rot="R180"/>
<instance part="PAD232" gate="G$1" x="426.72" y="568.96" rot="R180"/>
<instance part="PAD233" gate="G$1" x="459.74" y="568.96" rot="R180"/>
<instance part="PAD234" gate="G$1" x="459.74" y="561.34" rot="R180"/>
<instance part="R99" gate="G$1" x="474.98" y="541.02" rot="R90"/>
<instance part="R100" gate="G$1" x="474.98" y="528.32" rot="R90"/>
<instance part="GND183" gate="1" x="756.92" y="944.88"/>
<instance part="GND184" gate="1" x="701.04" y="944.88"/>
<instance part="U27" gate="G$1" x="711.2" y="993.14"/>
<instance part="R105" gate="G$1" x="762" y="972.82" rot="R90"/>
<instance part="R106" gate="G$1" x="754.38" y="972.82" rot="R90"/>
<instance part="3.3V130" gate="G$1" x="762" y="982.98"/>
<instance part="3.3V131" gate="G$1" x="749.3" y="998.22"/>
<instance part="C27" gate="G$1" x="769.62" y="1008.38"/>
<instance part="3.3V132" gate="G$1" x="769.62" y="1016"/>
<instance part="GND185" gate="1" x="769.62" y="998.22"/>
<instance part="GND186" gate="1" x="800.1" y="995.68"/>
<instance part="3.3V133" gate="G$1" x="802.64" y="1013.46"/>
<instance part="U$27" gate="G$1" x="647.7" y="939.8" rot="MR0"/>
<instance part="VDD27" gate="G$1" x="838.2" y="970.28"/>
<instance part="GND187" gate="1" x="838.2" y="929.64"/>
<instance part="PAD245" gate="G$1" x="815.34" y="1005.84" rot="R180"/>
<instance part="PAD246" gate="G$1" x="815.34" y="998.22" rot="R180"/>
<instance part="PAD247" gate="G$1" x="784.86" y="975.36" rot="R180"/>
<instance part="PAD248" gate="G$1" x="815.34" y="972.82" smashed="yes" rot="R180"/>
<instance part="PAD249" gate="G$1" x="817.88" y="965.2" smashed="yes" rot="R180"/>
<instance part="GND188" gate="1" x="774.7" y="988.06"/>
<instance part="GND189" gate="1" x="833.12" y="995.68"/>
<instance part="3.3V134" gate="G$1" x="835.66" y="1013.46"/>
<instance part="PAD250" gate="G$1" x="848.36" y="1005.84" rot="R180"/>
<instance part="PAD251" gate="G$1" x="848.36" y="998.22" rot="R180"/>
<instance part="PAD252" gate="G$1" x="789.94" y="985.52" rot="R180"/>
<instance part="PAD253" gate="G$1" x="822.96" y="985.52" rot="R180"/>
<instance part="PAD254" gate="G$1" x="822.96" y="977.9" rot="R180"/>
<instance part="R107" gate="G$1" x="838.2" y="957.58" rot="R90"/>
<instance part="R108" gate="G$1" x="838.2" y="944.88" rot="R90"/>
<instance part="GND197" gate="1" x="762" y="800.1"/>
<instance part="GND198" gate="1" x="706.12" y="800.1"/>
<instance part="U29" gate="G$1" x="716.28" y="848.36"/>
<instance part="R113" gate="G$1" x="767.08" y="828.04" rot="R90"/>
<instance part="R114" gate="G$1" x="759.46" y="828.04" rot="R90"/>
<instance part="3.3V140" gate="G$1" x="767.08" y="838.2"/>
<instance part="3.3V141" gate="G$1" x="754.38" y="853.44"/>
<instance part="C29" gate="G$1" x="774.7" y="863.6"/>
<instance part="3.3V142" gate="G$1" x="774.7" y="871.22"/>
<instance part="GND199" gate="1" x="774.7" y="853.44"/>
<instance part="GND200" gate="1" x="805.18" y="850.9"/>
<instance part="3.3V143" gate="G$1" x="807.72" y="868.68"/>
<instance part="U$29" gate="G$1" x="652.78" y="795.02" rot="MR0"/>
<instance part="VDD29" gate="G$1" x="843.28" y="825.5"/>
<instance part="GND201" gate="1" x="843.28" y="784.86"/>
<instance part="PAD265" gate="G$1" x="820.42" y="861.06" rot="R180"/>
<instance part="PAD266" gate="G$1" x="820.42" y="853.44" rot="R180"/>
<instance part="PAD267" gate="G$1" x="789.94" y="830.58" rot="R180"/>
<instance part="PAD268" gate="G$1" x="820.42" y="828.04" smashed="yes" rot="R180"/>
<instance part="PAD269" gate="G$1" x="822.96" y="820.42" smashed="yes" rot="R180"/>
<instance part="GND202" gate="1" x="779.78" y="843.28"/>
<instance part="GND203" gate="1" x="838.2" y="850.9"/>
<instance part="3.3V144" gate="G$1" x="840.74" y="868.68"/>
<instance part="PAD270" gate="G$1" x="853.44" y="861.06" rot="R180"/>
<instance part="PAD271" gate="G$1" x="853.44" y="853.44" rot="R180"/>
<instance part="PAD272" gate="G$1" x="795.02" y="840.74" rot="R180"/>
<instance part="PAD273" gate="G$1" x="828.04" y="840.74" rot="R180"/>
<instance part="PAD274" gate="G$1" x="828.04" y="833.12" rot="R180"/>
<instance part="R115" gate="G$1" x="843.28" y="812.8" rot="R90"/>
<instance part="R116" gate="G$1" x="843.28" y="800.1" rot="R90"/>
<instance part="GND211" gate="1" x="777.24" y="678.18"/>
<instance part="GND212" gate="1" x="721.36" y="678.18"/>
<instance part="U31" gate="G$1" x="731.52" y="726.44"/>
<instance part="R121" gate="G$1" x="782.32" y="706.12" rot="R90"/>
<instance part="R122" gate="G$1" x="774.7" y="706.12" rot="R90"/>
<instance part="3.3V150" gate="G$1" x="782.32" y="716.28"/>
<instance part="3.3V151" gate="G$1" x="769.62" y="731.52"/>
<instance part="C31" gate="G$1" x="789.94" y="741.68"/>
<instance part="3.3V152" gate="G$1" x="789.94" y="749.3"/>
<instance part="GND213" gate="1" x="789.94" y="731.52"/>
<instance part="GND214" gate="1" x="820.42" y="728.98"/>
<instance part="3.3V153" gate="G$1" x="822.96" y="746.76"/>
<instance part="U$31" gate="G$1" x="668.02" y="673.1" rot="MR0"/>
<instance part="VDD31" gate="G$1" x="858.52" y="703.58"/>
<instance part="GND215" gate="1" x="858.52" y="662.94"/>
<instance part="PAD285" gate="G$1" x="835.66" y="739.14" rot="R180"/>
<instance part="PAD286" gate="G$1" x="835.66" y="731.52" rot="R180"/>
<instance part="PAD287" gate="G$1" x="805.18" y="708.66" rot="R180"/>
<instance part="PAD288" gate="G$1" x="835.66" y="706.12" smashed="yes" rot="R180"/>
<instance part="PAD289" gate="G$1" x="838.2" y="698.5" smashed="yes" rot="R180"/>
<instance part="GND216" gate="1" x="795.02" y="721.36"/>
<instance part="GND217" gate="1" x="853.44" y="728.98"/>
<instance part="3.3V154" gate="G$1" x="855.98" y="746.76"/>
<instance part="PAD290" gate="G$1" x="868.68" y="739.14" rot="R180"/>
<instance part="PAD291" gate="G$1" x="868.68" y="731.52" rot="R180"/>
<instance part="PAD292" gate="G$1" x="810.26" y="718.82" rot="R180"/>
<instance part="PAD293" gate="G$1" x="843.28" y="718.82" rot="R180"/>
<instance part="PAD294" gate="G$1" x="843.28" y="711.2" rot="R180"/>
<instance part="R123" gate="G$1" x="858.52" y="690.88" rot="R90"/>
<instance part="R124" gate="G$1" x="858.52" y="678.18" rot="R90"/>
<instance part="GND225" gate="1" x="795.02" y="551.18"/>
<instance part="GND226" gate="1" x="739.14" y="551.18"/>
<instance part="U33" gate="G$1" x="749.3" y="599.44"/>
<instance part="R129" gate="G$1" x="800.1" y="579.12" rot="R90"/>
<instance part="R130" gate="G$1" x="792.48" y="579.12" rot="R90"/>
<instance part="3.3V160" gate="G$1" x="800.1" y="589.28"/>
<instance part="3.3V161" gate="G$1" x="787.4" y="604.52"/>
<instance part="C33" gate="G$1" x="807.72" y="614.68"/>
<instance part="3.3V162" gate="G$1" x="807.72" y="622.3"/>
<instance part="GND227" gate="1" x="807.72" y="604.52"/>
<instance part="GND228" gate="1" x="838.2" y="601.98"/>
<instance part="3.3V163" gate="G$1" x="840.74" y="619.76"/>
<instance part="U$33" gate="G$1" x="685.8" y="546.1" rot="MR0"/>
<instance part="VDD33" gate="G$1" x="876.3" y="576.58"/>
<instance part="GND229" gate="1" x="876.3" y="535.94"/>
<instance part="PAD305" gate="G$1" x="853.44" y="612.14" rot="R180"/>
<instance part="PAD306" gate="G$1" x="853.44" y="604.52" rot="R180"/>
<instance part="PAD307" gate="G$1" x="822.96" y="581.66" rot="R180"/>
<instance part="PAD308" gate="G$1" x="853.44" y="579.12" smashed="yes" rot="R180"/>
<instance part="PAD309" gate="G$1" x="855.98" y="571.5" smashed="yes" rot="R180"/>
<instance part="GND230" gate="1" x="812.8" y="594.36"/>
<instance part="GND231" gate="1" x="871.22" y="601.98"/>
<instance part="3.3V164" gate="G$1" x="873.76" y="619.76"/>
<instance part="PAD310" gate="G$1" x="886.46" y="612.14" rot="R180"/>
<instance part="PAD311" gate="G$1" x="886.46" y="604.52" rot="R180"/>
<instance part="PAD312" gate="G$1" x="828.04" y="591.82" rot="R180"/>
<instance part="PAD313" gate="G$1" x="861.06" y="591.82" rot="R180"/>
<instance part="PAD314" gate="G$1" x="861.06" y="584.2" rot="R180"/>
<instance part="R131" gate="G$1" x="876.3" y="563.88" rot="R90"/>
<instance part="R132" gate="G$1" x="876.3" y="551.18" rot="R90"/>
<instance part="GND239" gate="1" x="401.32" y="383.54"/>
<instance part="GND240" gate="1" x="345.44" y="383.54"/>
<instance part="U35" gate="G$1" x="355.6" y="431.8"/>
<instance part="R137" gate="G$1" x="406.4" y="411.48" rot="R90"/>
<instance part="R138" gate="G$1" x="398.78" y="411.48" rot="R90"/>
<instance part="3.3V170" gate="G$1" x="406.4" y="421.64"/>
<instance part="3.3V171" gate="G$1" x="393.7" y="436.88"/>
<instance part="C35" gate="G$1" x="414.02" y="447.04"/>
<instance part="3.3V172" gate="G$1" x="414.02" y="454.66"/>
<instance part="GND241" gate="1" x="414.02" y="436.88"/>
<instance part="GND242" gate="1" x="444.5" y="434.34"/>
<instance part="3.3V173" gate="G$1" x="447.04" y="452.12"/>
<instance part="U$35" gate="G$1" x="292.1" y="378.46" rot="MR0"/>
<instance part="VDD35" gate="G$1" x="482.6" y="408.94"/>
<instance part="GND243" gate="1" x="482.6" y="368.3"/>
<instance part="PAD325" gate="G$1" x="459.74" y="444.5" rot="R180"/>
<instance part="PAD326" gate="G$1" x="459.74" y="436.88" rot="R180"/>
<instance part="PAD327" gate="G$1" x="429.26" y="414.02" rot="R180"/>
<instance part="PAD328" gate="G$1" x="459.74" y="411.48" smashed="yes" rot="R180"/>
<instance part="PAD329" gate="G$1" x="462.28" y="403.86" smashed="yes" rot="R180"/>
<instance part="GND244" gate="1" x="419.1" y="426.72"/>
<instance part="GND245" gate="1" x="477.52" y="434.34"/>
<instance part="3.3V174" gate="G$1" x="480.06" y="452.12"/>
<instance part="PAD330" gate="G$1" x="492.76" y="444.5" rot="R180"/>
<instance part="PAD331" gate="G$1" x="492.76" y="436.88" rot="R180"/>
<instance part="PAD332" gate="G$1" x="434.34" y="424.18" rot="R180"/>
<instance part="PAD333" gate="G$1" x="467.36" y="424.18" rot="R180"/>
<instance part="PAD334" gate="G$1" x="467.36" y="416.56" rot="R180"/>
<instance part="R139" gate="G$1" x="482.6" y="396.24" rot="R90"/>
<instance part="R140" gate="G$1" x="482.6" y="383.54" rot="R90"/>
<instance part="GND253" gate="1" x="756.92" y="414.02"/>
<instance part="GND254" gate="1" x="701.04" y="414.02"/>
<instance part="U37" gate="G$1" x="711.2" y="462.28"/>
<instance part="R145" gate="G$1" x="762" y="441.96" rot="R90"/>
<instance part="R146" gate="G$1" x="754.38" y="441.96" rot="R90"/>
<instance part="3.3V180" gate="G$1" x="762" y="452.12"/>
<instance part="3.3V181" gate="G$1" x="749.3" y="467.36"/>
<instance part="C37" gate="G$1" x="769.62" y="477.52"/>
<instance part="3.3V182" gate="G$1" x="769.62" y="485.14"/>
<instance part="GND255" gate="1" x="769.62" y="467.36"/>
<instance part="GND256" gate="1" x="800.1" y="464.82"/>
<instance part="3.3V183" gate="G$1" x="802.64" y="482.6"/>
<instance part="U$37" gate="G$1" x="647.7" y="408.94" rot="MR0"/>
<instance part="VDD37" gate="G$1" x="838.2" y="439.42"/>
<instance part="GND257" gate="1" x="838.2" y="398.78"/>
<instance part="PAD345" gate="G$1" x="815.34" y="474.98" rot="R180"/>
<instance part="PAD346" gate="G$1" x="815.34" y="467.36" rot="R180"/>
<instance part="PAD347" gate="G$1" x="784.86" y="444.5" rot="R180"/>
<instance part="PAD348" gate="G$1" x="815.34" y="441.96" smashed="yes" rot="R180"/>
<instance part="PAD349" gate="G$1" x="817.88" y="434.34" smashed="yes" rot="R180"/>
<instance part="GND258" gate="1" x="774.7" y="457.2"/>
<instance part="GND259" gate="1" x="833.12" y="464.82"/>
<instance part="3.3V184" gate="G$1" x="835.66" y="482.6"/>
<instance part="PAD350" gate="G$1" x="848.36" y="474.98" rot="R180"/>
<instance part="PAD351" gate="G$1" x="848.36" y="467.36" rot="R180"/>
<instance part="PAD352" gate="G$1" x="789.94" y="454.66" rot="R180"/>
<instance part="PAD353" gate="G$1" x="822.96" y="454.66" rot="R180"/>
<instance part="PAD354" gate="G$1" x="822.96" y="447.04" rot="R180"/>
<instance part="R147" gate="G$1" x="838.2" y="426.72" rot="R90"/>
<instance part="R148" gate="G$1" x="838.2" y="414.02" rot="R90"/>
</instances>
<busses>
</busses>
<nets>
<net name="ADDR18" class="0">
<segment>
<pinref part="R75" gate="G$1" pin="1"/>
<pinref part="R76" gate="G$1" pin="2"/>
<wire x1="431.8" y1="949.96" x2="431.8" y2="952.5" width="0.1524" layer="91"/>
<pinref part="U19" gate="G$1" pin="ADDR"/>
<wire x1="342.9" y1="952.5" x2="424.18" y2="952.5" width="0.1524" layer="91"/>
<wire x1="424.18" y1="952.5" x2="424.18" y2="949.96" width="0.1524" layer="91"/>
<wire x1="424.18" y1="949.96" x2="431.8" y2="949.96" width="0.1524" layer="91"/>
<junction x="431.8" y="949.96"/>
</segment>
</net>
<net name="VDD" class="0">
<segment>
<pinref part="3.3V90" gate="G$1" pin="VDD"/>
<pinref part="R73" gate="G$1" pin="2"/>
<wire x1="355.6" y1="980.44" x2="355.6" y2="977.9" width="0.1524" layer="91"/>
<pinref part="R74" gate="G$1" pin="2"/>
<wire x1="347.98" y1="977.9" x2="355.6" y2="977.9" width="0.1524" layer="91"/>
<junction x="355.6" y="977.9"/>
</segment>
<segment>
<pinref part="U19" gate="G$1" pin="VDD"/>
<wire x1="342.9" y1="990.6" x2="342.9" y2="995.68" width="0.1524" layer="91"/>
<pinref part="3.3V91" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="C19" gate="G$1" pin="1"/>
<pinref part="3.3V92" gate="G$1" pin="VDD"/>
<wire x1="363.22" y1="1010.92" x2="363.22" y2="1013.46" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="3.3V93" gate="G$1" pin="VDD"/>
<wire x1="396.24" y1="1010.92" x2="396.24" y2="1005.84" width="0.1524" layer="91"/>
<wire x1="396.24" y1="1005.84" x2="406.4" y2="1005.84" width="0.1524" layer="91"/>
<pinref part="PAD165" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="VDD19" gate="G$1" pin="VDD"/>
<wire x1="431.8" y1="962.66" x2="431.8" y2="967.74" width="0.1524" layer="91"/>
<pinref part="R75" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="3.3V94" gate="G$1" pin="VDD"/>
<wire x1="429.26" y1="1010.92" x2="429.26" y2="1005.84" width="0.1524" layer="91"/>
<wire x1="429.26" y1="1005.84" x2="439.42" y2="1005.84" width="0.1524" layer="91"/>
<pinref part="PAD170" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="3.3V100" gate="G$1" pin="VDD"/>
<pinref part="R81" gate="G$1" pin="2"/>
<wire x1="370.84" y1="838.2" x2="370.84" y2="835.66" width="0.1524" layer="91"/>
<pinref part="R82" gate="G$1" pin="2"/>
<wire x1="363.22" y1="835.66" x2="370.84" y2="835.66" width="0.1524" layer="91"/>
<junction x="370.84" y="835.66"/>
</segment>
<segment>
<pinref part="U21" gate="G$1" pin="VDD"/>
<wire x1="358.14" y1="848.36" x2="358.14" y2="853.44" width="0.1524" layer="91"/>
<pinref part="3.3V101" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="C21" gate="G$1" pin="1"/>
<pinref part="3.3V102" gate="G$1" pin="VDD"/>
<wire x1="378.46" y1="868.68" x2="378.46" y2="871.22" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="3.3V103" gate="G$1" pin="VDD"/>
<wire x1="411.48" y1="868.68" x2="411.48" y2="863.6" width="0.1524" layer="91"/>
<wire x1="411.48" y1="863.6" x2="421.64" y2="863.6" width="0.1524" layer="91"/>
<pinref part="PAD185" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="VDD21" gate="G$1" pin="VDD"/>
<wire x1="447.04" y1="820.42" x2="447.04" y2="825.5" width="0.1524" layer="91"/>
<pinref part="R83" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="3.3V104" gate="G$1" pin="VDD"/>
<wire x1="444.5" y1="868.68" x2="444.5" y2="863.6" width="0.1524" layer="91"/>
<wire x1="444.5" y1="863.6" x2="454.66" y2="863.6" width="0.1524" layer="91"/>
<pinref part="PAD190" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="3.3V110" gate="G$1" pin="VDD"/>
<pinref part="R89" gate="G$1" pin="2"/>
<wire x1="370.84" y1="690.88" x2="370.84" y2="688.34" width="0.1524" layer="91"/>
<pinref part="R90" gate="G$1" pin="2"/>
<wire x1="363.22" y1="688.34" x2="370.84" y2="688.34" width="0.1524" layer="91"/>
<junction x="370.84" y="688.34"/>
</segment>
<segment>
<pinref part="U23" gate="G$1" pin="VDD"/>
<wire x1="358.14" y1="701.04" x2="358.14" y2="706.12" width="0.1524" layer="91"/>
<pinref part="3.3V111" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="C23" gate="G$1" pin="1"/>
<pinref part="3.3V112" gate="G$1" pin="VDD"/>
<wire x1="378.46" y1="721.36" x2="378.46" y2="723.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="3.3V113" gate="G$1" pin="VDD"/>
<wire x1="411.48" y1="721.36" x2="411.48" y2="716.28" width="0.1524" layer="91"/>
<wire x1="411.48" y1="716.28" x2="421.64" y2="716.28" width="0.1524" layer="91"/>
<pinref part="PAD205" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="VDD23" gate="G$1" pin="VDD"/>
<wire x1="447.04" y1="673.1" x2="447.04" y2="678.18" width="0.1524" layer="91"/>
<pinref part="R91" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="3.3V114" gate="G$1" pin="VDD"/>
<wire x1="444.5" y1="721.36" x2="444.5" y2="716.28" width="0.1524" layer="91"/>
<wire x1="444.5" y1="716.28" x2="454.66" y2="716.28" width="0.1524" layer="91"/>
<pinref part="PAD210" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="3.3V120" gate="G$1" pin="VDD"/>
<pinref part="R97" gate="G$1" pin="2"/>
<wire x1="398.78" y1="563.88" x2="398.78" y2="561.34" width="0.1524" layer="91"/>
<pinref part="R98" gate="G$1" pin="2"/>
<wire x1="391.16" y1="561.34" x2="398.78" y2="561.34" width="0.1524" layer="91"/>
<junction x="398.78" y="561.34"/>
</segment>
<segment>
<pinref part="U25" gate="G$1" pin="VDD"/>
<wire x1="386.08" y1="574.04" x2="386.08" y2="579.12" width="0.1524" layer="91"/>
<pinref part="3.3V121" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="C25" gate="G$1" pin="1"/>
<pinref part="3.3V122" gate="G$1" pin="VDD"/>
<wire x1="406.4" y1="594.36" x2="406.4" y2="596.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="3.3V123" gate="G$1" pin="VDD"/>
<wire x1="439.42" y1="594.36" x2="439.42" y2="589.28" width="0.1524" layer="91"/>
<wire x1="439.42" y1="589.28" x2="449.58" y2="589.28" width="0.1524" layer="91"/>
<pinref part="PAD225" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="VDD25" gate="G$1" pin="VDD"/>
<wire x1="474.98" y1="546.1" x2="474.98" y2="551.18" width="0.1524" layer="91"/>
<pinref part="R99" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="3.3V124" gate="G$1" pin="VDD"/>
<wire x1="472.44" y1="594.36" x2="472.44" y2="589.28" width="0.1524" layer="91"/>
<wire x1="472.44" y1="589.28" x2="482.6" y2="589.28" width="0.1524" layer="91"/>
<pinref part="PAD230" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="3.3V130" gate="G$1" pin="VDD"/>
<pinref part="R105" gate="G$1" pin="2"/>
<wire x1="762" y1="980.44" x2="762" y2="977.9" width="0.1524" layer="91"/>
<pinref part="R106" gate="G$1" pin="2"/>
<wire x1="754.38" y1="977.9" x2="762" y2="977.9" width="0.1524" layer="91"/>
<junction x="762" y="977.9"/>
</segment>
<segment>
<pinref part="U27" gate="G$1" pin="VDD"/>
<wire x1="749.3" y1="990.6" x2="749.3" y2="995.68" width="0.1524" layer="91"/>
<pinref part="3.3V131" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="C27" gate="G$1" pin="1"/>
<pinref part="3.3V132" gate="G$1" pin="VDD"/>
<wire x1="769.62" y1="1010.92" x2="769.62" y2="1013.46" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="3.3V133" gate="G$1" pin="VDD"/>
<wire x1="802.64" y1="1010.92" x2="802.64" y2="1005.84" width="0.1524" layer="91"/>
<wire x1="802.64" y1="1005.84" x2="812.8" y2="1005.84" width="0.1524" layer="91"/>
<pinref part="PAD245" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="VDD27" gate="G$1" pin="VDD"/>
<wire x1="838.2" y1="962.66" x2="838.2" y2="967.74" width="0.1524" layer="91"/>
<pinref part="R107" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="3.3V134" gate="G$1" pin="VDD"/>
<wire x1="835.66" y1="1010.92" x2="835.66" y2="1005.84" width="0.1524" layer="91"/>
<wire x1="835.66" y1="1005.84" x2="845.82" y2="1005.84" width="0.1524" layer="91"/>
<pinref part="PAD250" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="3.3V140" gate="G$1" pin="VDD"/>
<pinref part="R113" gate="G$1" pin="2"/>
<wire x1="767.08" y1="835.66" x2="767.08" y2="833.12" width="0.1524" layer="91"/>
<pinref part="R114" gate="G$1" pin="2"/>
<wire x1="759.46" y1="833.12" x2="767.08" y2="833.12" width="0.1524" layer="91"/>
<junction x="767.08" y="833.12"/>
</segment>
<segment>
<pinref part="U29" gate="G$1" pin="VDD"/>
<wire x1="754.38" y1="845.82" x2="754.38" y2="850.9" width="0.1524" layer="91"/>
<pinref part="3.3V141" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="C29" gate="G$1" pin="1"/>
<pinref part="3.3V142" gate="G$1" pin="VDD"/>
<wire x1="774.7" y1="866.14" x2="774.7" y2="868.68" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="3.3V143" gate="G$1" pin="VDD"/>
<wire x1="807.72" y1="866.14" x2="807.72" y2="861.06" width="0.1524" layer="91"/>
<wire x1="807.72" y1="861.06" x2="817.88" y2="861.06" width="0.1524" layer="91"/>
<pinref part="PAD265" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="VDD29" gate="G$1" pin="VDD"/>
<wire x1="843.28" y1="817.88" x2="843.28" y2="822.96" width="0.1524" layer="91"/>
<pinref part="R115" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="3.3V144" gate="G$1" pin="VDD"/>
<wire x1="840.74" y1="866.14" x2="840.74" y2="861.06" width="0.1524" layer="91"/>
<wire x1="840.74" y1="861.06" x2="850.9" y2="861.06" width="0.1524" layer="91"/>
<pinref part="PAD270" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="3.3V150" gate="G$1" pin="VDD"/>
<pinref part="R121" gate="G$1" pin="2"/>
<wire x1="782.32" y1="713.74" x2="782.32" y2="711.2" width="0.1524" layer="91"/>
<pinref part="R122" gate="G$1" pin="2"/>
<wire x1="774.7" y1="711.2" x2="782.32" y2="711.2" width="0.1524" layer="91"/>
<junction x="782.32" y="711.2"/>
</segment>
<segment>
<pinref part="U31" gate="G$1" pin="VDD"/>
<wire x1="769.62" y1="723.9" x2="769.62" y2="728.98" width="0.1524" layer="91"/>
<pinref part="3.3V151" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="C31" gate="G$1" pin="1"/>
<pinref part="3.3V152" gate="G$1" pin="VDD"/>
<wire x1="789.94" y1="744.22" x2="789.94" y2="746.76" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="3.3V153" gate="G$1" pin="VDD"/>
<wire x1="822.96" y1="744.22" x2="822.96" y2="739.14" width="0.1524" layer="91"/>
<wire x1="822.96" y1="739.14" x2="833.12" y2="739.14" width="0.1524" layer="91"/>
<pinref part="PAD285" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="VDD31" gate="G$1" pin="VDD"/>
<wire x1="858.52" y1="695.96" x2="858.52" y2="701.04" width="0.1524" layer="91"/>
<pinref part="R123" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="3.3V154" gate="G$1" pin="VDD"/>
<wire x1="855.98" y1="744.22" x2="855.98" y2="739.14" width="0.1524" layer="91"/>
<wire x1="855.98" y1="739.14" x2="866.14" y2="739.14" width="0.1524" layer="91"/>
<pinref part="PAD290" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="3.3V160" gate="G$1" pin="VDD"/>
<pinref part="R129" gate="G$1" pin="2"/>
<wire x1="800.1" y1="586.74" x2="800.1" y2="584.2" width="0.1524" layer="91"/>
<pinref part="R130" gate="G$1" pin="2"/>
<wire x1="792.48" y1="584.2" x2="800.1" y2="584.2" width="0.1524" layer="91"/>
<junction x="800.1" y="584.2"/>
</segment>
<segment>
<pinref part="U33" gate="G$1" pin="VDD"/>
<wire x1="787.4" y1="596.9" x2="787.4" y2="601.98" width="0.1524" layer="91"/>
<pinref part="3.3V161" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="C33" gate="G$1" pin="1"/>
<pinref part="3.3V162" gate="G$1" pin="VDD"/>
<wire x1="807.72" y1="617.22" x2="807.72" y2="619.76" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="3.3V163" gate="G$1" pin="VDD"/>
<wire x1="840.74" y1="617.22" x2="840.74" y2="612.14" width="0.1524" layer="91"/>
<wire x1="840.74" y1="612.14" x2="850.9" y2="612.14" width="0.1524" layer="91"/>
<pinref part="PAD305" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="VDD33" gate="G$1" pin="VDD"/>
<wire x1="876.3" y1="568.96" x2="876.3" y2="574.04" width="0.1524" layer="91"/>
<pinref part="R131" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="3.3V164" gate="G$1" pin="VDD"/>
<wire x1="873.76" y1="617.22" x2="873.76" y2="612.14" width="0.1524" layer="91"/>
<wire x1="873.76" y1="612.14" x2="883.92" y2="612.14" width="0.1524" layer="91"/>
<pinref part="PAD310" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="3.3V170" gate="G$1" pin="VDD"/>
<pinref part="R137" gate="G$1" pin="2"/>
<wire x1="406.4" y1="419.1" x2="406.4" y2="416.56" width="0.1524" layer="91"/>
<pinref part="R138" gate="G$1" pin="2"/>
<wire x1="398.78" y1="416.56" x2="406.4" y2="416.56" width="0.1524" layer="91"/>
<junction x="406.4" y="416.56"/>
</segment>
<segment>
<pinref part="U35" gate="G$1" pin="VDD"/>
<wire x1="393.7" y1="429.26" x2="393.7" y2="434.34" width="0.1524" layer="91"/>
<pinref part="3.3V171" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="C35" gate="G$1" pin="1"/>
<pinref part="3.3V172" gate="G$1" pin="VDD"/>
<wire x1="414.02" y1="449.58" x2="414.02" y2="452.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="3.3V173" gate="G$1" pin="VDD"/>
<wire x1="447.04" y1="449.58" x2="447.04" y2="444.5" width="0.1524" layer="91"/>
<wire x1="447.04" y1="444.5" x2="457.2" y2="444.5" width="0.1524" layer="91"/>
<pinref part="PAD325" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="VDD35" gate="G$1" pin="VDD"/>
<wire x1="482.6" y1="401.32" x2="482.6" y2="406.4" width="0.1524" layer="91"/>
<pinref part="R139" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="3.3V174" gate="G$1" pin="VDD"/>
<wire x1="480.06" y1="449.58" x2="480.06" y2="444.5" width="0.1524" layer="91"/>
<wire x1="480.06" y1="444.5" x2="490.22" y2="444.5" width="0.1524" layer="91"/>
<pinref part="PAD330" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="3.3V180" gate="G$1" pin="VDD"/>
<pinref part="R145" gate="G$1" pin="2"/>
<wire x1="762" y1="449.58" x2="762" y2="447.04" width="0.1524" layer="91"/>
<pinref part="R146" gate="G$1" pin="2"/>
<wire x1="754.38" y1="447.04" x2="762" y2="447.04" width="0.1524" layer="91"/>
<junction x="762" y="447.04"/>
</segment>
<segment>
<pinref part="U37" gate="G$1" pin="VDD"/>
<wire x1="749.3" y1="459.74" x2="749.3" y2="464.82" width="0.1524" layer="91"/>
<pinref part="3.3V181" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="C37" gate="G$1" pin="1"/>
<pinref part="3.3V182" gate="G$1" pin="VDD"/>
<wire x1="769.62" y1="480.06" x2="769.62" y2="482.6" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="3.3V183" gate="G$1" pin="VDD"/>
<wire x1="802.64" y1="480.06" x2="802.64" y2="474.98" width="0.1524" layer="91"/>
<wire x1="802.64" y1="474.98" x2="812.8" y2="474.98" width="0.1524" layer="91"/>
<pinref part="PAD345" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="VDD37" gate="G$1" pin="VDD"/>
<wire x1="838.2" y1="431.8" x2="838.2" y2="436.88" width="0.1524" layer="91"/>
<pinref part="R147" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="3.3V184" gate="G$1" pin="VDD"/>
<wire x1="835.66" y1="480.06" x2="835.66" y2="474.98" width="0.1524" layer="91"/>
<wire x1="835.66" y1="474.98" x2="845.82" y2="474.98" width="0.1524" layer="91"/>
<pinref part="PAD350" gate="G$1" pin="P"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="GND127" gate="1" pin="GND"/>
<wire x1="342.9" y1="947.42" x2="350.52" y2="947.42" width="0.1524" layer="91"/>
<pinref part="U19" gate="G$1" pin="DAP"/>
</segment>
<segment>
<pinref part="GND128" gate="1" pin="GND"/>
<wire x1="294.64" y1="947.42" x2="294.64" y2="949.96" width="0.1524" layer="91"/>
<wire x1="294.64" y1="949.96" x2="299.72" y2="949.96" width="0.1524" layer="91"/>
<pinref part="U19" gate="G$1" pin="GND"/>
<pinref part="U19" gate="G$1" pin="CLKIN"/>
<wire x1="299.72" y1="990.6" x2="294.64" y2="990.6" width="0.1524" layer="91"/>
<wire x1="294.64" y1="990.6" x2="294.64" y2="949.96" width="0.1524" layer="91"/>
<junction x="294.64" y="949.96"/>
</segment>
<segment>
<pinref part="GND129" gate="1" pin="GND"/>
<pinref part="C19" gate="G$1" pin="2"/>
<wire x1="363.22" y1="1000.76" x2="363.22" y2="1003.3" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND130" gate="1" pin="GND"/>
<wire x1="393.7" y1="998.22" x2="406.4" y2="998.22" width="0.1524" layer="91"/>
<pinref part="PAD166" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND131" gate="1" pin="GND"/>
<wire x1="431.8" y1="939.8" x2="431.8" y2="932.18" width="0.1524" layer="91"/>
<pinref part="R76" gate="G$1" pin="1"/>
<junction x="431.8" y="939.8"/>
</segment>
<segment>
<pinref part="U19" gate="G$1" pin="SD"/>
<wire x1="342.9" y1="982.98" x2="345.44" y2="982.98" width="0.1524" layer="91"/>
<wire x1="345.44" y1="982.98" x2="345.44" y2="990.6" width="0.1524" layer="91"/>
<wire x1="345.44" y1="990.6" x2="368.3" y2="990.6" width="0.1524" layer="91"/>
<pinref part="GND132" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND133" gate="1" pin="GND"/>
<wire x1="426.72" y1="998.22" x2="439.42" y2="998.22" width="0.1524" layer="91"/>
<pinref part="PAD171" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND141" gate="1" pin="GND"/>
<wire x1="358.14" y1="805.18" x2="365.76" y2="805.18" width="0.1524" layer="91"/>
<pinref part="U21" gate="G$1" pin="DAP"/>
</segment>
<segment>
<pinref part="GND142" gate="1" pin="GND"/>
<wire x1="309.88" y1="805.18" x2="309.88" y2="807.72" width="0.1524" layer="91"/>
<wire x1="309.88" y1="807.72" x2="314.96" y2="807.72" width="0.1524" layer="91"/>
<pinref part="U21" gate="G$1" pin="GND"/>
<pinref part="U21" gate="G$1" pin="CLKIN"/>
<wire x1="314.96" y1="848.36" x2="309.88" y2="848.36" width="0.1524" layer="91"/>
<wire x1="309.88" y1="848.36" x2="309.88" y2="807.72" width="0.1524" layer="91"/>
<junction x="309.88" y="807.72"/>
</segment>
<segment>
<pinref part="GND143" gate="1" pin="GND"/>
<pinref part="C21" gate="G$1" pin="2"/>
<wire x1="378.46" y1="858.52" x2="378.46" y2="861.06" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND144" gate="1" pin="GND"/>
<wire x1="408.94" y1="855.98" x2="421.64" y2="855.98" width="0.1524" layer="91"/>
<pinref part="PAD186" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND145" gate="1" pin="GND"/>
<wire x1="447.04" y1="797.56" x2="447.04" y2="789.94" width="0.1524" layer="91"/>
<pinref part="R84" gate="G$1" pin="1"/>
<junction x="447.04" y="797.56"/>
</segment>
<segment>
<pinref part="U21" gate="G$1" pin="SD"/>
<wire x1="358.14" y1="840.74" x2="360.68" y2="840.74" width="0.1524" layer="91"/>
<wire x1="360.68" y1="840.74" x2="360.68" y2="848.36" width="0.1524" layer="91"/>
<wire x1="360.68" y1="848.36" x2="383.54" y2="848.36" width="0.1524" layer="91"/>
<pinref part="GND146" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND147" gate="1" pin="GND"/>
<wire x1="441.96" y1="855.98" x2="454.66" y2="855.98" width="0.1524" layer="91"/>
<pinref part="PAD191" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND155" gate="1" pin="GND"/>
<wire x1="358.14" y1="657.86" x2="365.76" y2="657.86" width="0.1524" layer="91"/>
<pinref part="U23" gate="G$1" pin="DAP"/>
</segment>
<segment>
<pinref part="GND156" gate="1" pin="GND"/>
<wire x1="309.88" y1="657.86" x2="309.88" y2="660.4" width="0.1524" layer="91"/>
<wire x1="309.88" y1="660.4" x2="314.96" y2="660.4" width="0.1524" layer="91"/>
<pinref part="U23" gate="G$1" pin="GND"/>
<pinref part="U23" gate="G$1" pin="CLKIN"/>
<wire x1="314.96" y1="701.04" x2="309.88" y2="701.04" width="0.1524" layer="91"/>
<wire x1="309.88" y1="701.04" x2="309.88" y2="660.4" width="0.1524" layer="91"/>
<junction x="309.88" y="660.4"/>
</segment>
<segment>
<pinref part="GND157" gate="1" pin="GND"/>
<pinref part="C23" gate="G$1" pin="2"/>
<wire x1="378.46" y1="711.2" x2="378.46" y2="713.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND158" gate="1" pin="GND"/>
<wire x1="408.94" y1="708.66" x2="421.64" y2="708.66" width="0.1524" layer="91"/>
<pinref part="PAD206" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND159" gate="1" pin="GND"/>
<wire x1="447.04" y1="650.24" x2="447.04" y2="642.62" width="0.1524" layer="91"/>
<pinref part="R92" gate="G$1" pin="1"/>
<junction x="447.04" y="650.24"/>
</segment>
<segment>
<pinref part="U23" gate="G$1" pin="SD"/>
<wire x1="358.14" y1="693.42" x2="360.68" y2="693.42" width="0.1524" layer="91"/>
<wire x1="360.68" y1="693.42" x2="360.68" y2="701.04" width="0.1524" layer="91"/>
<wire x1="360.68" y1="701.04" x2="383.54" y2="701.04" width="0.1524" layer="91"/>
<pinref part="GND160" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND161" gate="1" pin="GND"/>
<wire x1="441.96" y1="708.66" x2="454.66" y2="708.66" width="0.1524" layer="91"/>
<pinref part="PAD211" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND169" gate="1" pin="GND"/>
<wire x1="386.08" y1="530.86" x2="393.7" y2="530.86" width="0.1524" layer="91"/>
<pinref part="U25" gate="G$1" pin="DAP"/>
</segment>
<segment>
<pinref part="GND170" gate="1" pin="GND"/>
<wire x1="337.82" y1="530.86" x2="337.82" y2="533.4" width="0.1524" layer="91"/>
<wire x1="337.82" y1="533.4" x2="342.9" y2="533.4" width="0.1524" layer="91"/>
<pinref part="U25" gate="G$1" pin="GND"/>
<pinref part="U25" gate="G$1" pin="CLKIN"/>
<wire x1="342.9" y1="574.04" x2="337.82" y2="574.04" width="0.1524" layer="91"/>
<wire x1="337.82" y1="574.04" x2="337.82" y2="533.4" width="0.1524" layer="91"/>
<junction x="337.82" y="533.4"/>
</segment>
<segment>
<pinref part="GND171" gate="1" pin="GND"/>
<pinref part="C25" gate="G$1" pin="2"/>
<wire x1="406.4" y1="584.2" x2="406.4" y2="586.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND172" gate="1" pin="GND"/>
<wire x1="436.88" y1="581.66" x2="449.58" y2="581.66" width="0.1524" layer="91"/>
<pinref part="PAD226" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND173" gate="1" pin="GND"/>
<wire x1="474.98" y1="523.24" x2="474.98" y2="515.62" width="0.1524" layer="91"/>
<pinref part="R100" gate="G$1" pin="1"/>
<junction x="474.98" y="523.24"/>
</segment>
<segment>
<pinref part="U25" gate="G$1" pin="SD"/>
<wire x1="386.08" y1="566.42" x2="388.62" y2="566.42" width="0.1524" layer="91"/>
<wire x1="388.62" y1="566.42" x2="388.62" y2="574.04" width="0.1524" layer="91"/>
<wire x1="388.62" y1="574.04" x2="411.48" y2="574.04" width="0.1524" layer="91"/>
<pinref part="GND174" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND175" gate="1" pin="GND"/>
<wire x1="469.9" y1="581.66" x2="482.6" y2="581.66" width="0.1524" layer="91"/>
<pinref part="PAD231" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND183" gate="1" pin="GND"/>
<wire x1="749.3" y1="947.42" x2="756.92" y2="947.42" width="0.1524" layer="91"/>
<pinref part="U27" gate="G$1" pin="DAP"/>
</segment>
<segment>
<pinref part="GND184" gate="1" pin="GND"/>
<wire x1="701.04" y1="947.42" x2="701.04" y2="949.96" width="0.1524" layer="91"/>
<wire x1="701.04" y1="949.96" x2="706.12" y2="949.96" width="0.1524" layer="91"/>
<pinref part="U27" gate="G$1" pin="GND"/>
<pinref part="U27" gate="G$1" pin="CLKIN"/>
<wire x1="706.12" y1="990.6" x2="701.04" y2="990.6" width="0.1524" layer="91"/>
<wire x1="701.04" y1="990.6" x2="701.04" y2="949.96" width="0.1524" layer="91"/>
<junction x="701.04" y="949.96"/>
</segment>
<segment>
<pinref part="GND185" gate="1" pin="GND"/>
<pinref part="C27" gate="G$1" pin="2"/>
<wire x1="769.62" y1="1000.76" x2="769.62" y2="1003.3" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND186" gate="1" pin="GND"/>
<wire x1="800.1" y1="998.22" x2="812.8" y2="998.22" width="0.1524" layer="91"/>
<pinref part="PAD246" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND187" gate="1" pin="GND"/>
<wire x1="838.2" y1="939.8" x2="838.2" y2="932.18" width="0.1524" layer="91"/>
<pinref part="R108" gate="G$1" pin="1"/>
<junction x="838.2" y="939.8"/>
</segment>
<segment>
<pinref part="U27" gate="G$1" pin="SD"/>
<wire x1="749.3" y1="982.98" x2="751.84" y2="982.98" width="0.1524" layer="91"/>
<wire x1="751.84" y1="982.98" x2="751.84" y2="990.6" width="0.1524" layer="91"/>
<wire x1="751.84" y1="990.6" x2="774.7" y2="990.6" width="0.1524" layer="91"/>
<pinref part="GND188" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND189" gate="1" pin="GND"/>
<wire x1="833.12" y1="998.22" x2="845.82" y2="998.22" width="0.1524" layer="91"/>
<pinref part="PAD251" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND197" gate="1" pin="GND"/>
<wire x1="754.38" y1="802.64" x2="762" y2="802.64" width="0.1524" layer="91"/>
<pinref part="U29" gate="G$1" pin="DAP"/>
</segment>
<segment>
<pinref part="GND198" gate="1" pin="GND"/>
<wire x1="706.12" y1="802.64" x2="706.12" y2="805.18" width="0.1524" layer="91"/>
<wire x1="706.12" y1="805.18" x2="711.2" y2="805.18" width="0.1524" layer="91"/>
<pinref part="U29" gate="G$1" pin="GND"/>
<pinref part="U29" gate="G$1" pin="CLKIN"/>
<wire x1="711.2" y1="845.82" x2="706.12" y2="845.82" width="0.1524" layer="91"/>
<wire x1="706.12" y1="845.82" x2="706.12" y2="805.18" width="0.1524" layer="91"/>
<junction x="706.12" y="805.18"/>
</segment>
<segment>
<pinref part="GND199" gate="1" pin="GND"/>
<pinref part="C29" gate="G$1" pin="2"/>
<wire x1="774.7" y1="855.98" x2="774.7" y2="858.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND200" gate="1" pin="GND"/>
<wire x1="805.18" y1="853.44" x2="817.88" y2="853.44" width="0.1524" layer="91"/>
<pinref part="PAD266" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND201" gate="1" pin="GND"/>
<wire x1="843.28" y1="795.02" x2="843.28" y2="787.4" width="0.1524" layer="91"/>
<pinref part="R116" gate="G$1" pin="1"/>
<junction x="843.28" y="795.02"/>
</segment>
<segment>
<pinref part="U29" gate="G$1" pin="SD"/>
<wire x1="754.38" y1="838.2" x2="756.92" y2="838.2" width="0.1524" layer="91"/>
<wire x1="756.92" y1="838.2" x2="756.92" y2="845.82" width="0.1524" layer="91"/>
<wire x1="756.92" y1="845.82" x2="779.78" y2="845.82" width="0.1524" layer="91"/>
<pinref part="GND202" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND203" gate="1" pin="GND"/>
<wire x1="838.2" y1="853.44" x2="850.9" y2="853.44" width="0.1524" layer="91"/>
<pinref part="PAD271" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND211" gate="1" pin="GND"/>
<wire x1="769.62" y1="680.72" x2="777.24" y2="680.72" width="0.1524" layer="91"/>
<pinref part="U31" gate="G$1" pin="DAP"/>
</segment>
<segment>
<pinref part="GND212" gate="1" pin="GND"/>
<wire x1="721.36" y1="680.72" x2="721.36" y2="683.26" width="0.1524" layer="91"/>
<wire x1="721.36" y1="683.26" x2="726.44" y2="683.26" width="0.1524" layer="91"/>
<pinref part="U31" gate="G$1" pin="GND"/>
<pinref part="U31" gate="G$1" pin="CLKIN"/>
<wire x1="726.44" y1="723.9" x2="721.36" y2="723.9" width="0.1524" layer="91"/>
<wire x1="721.36" y1="723.9" x2="721.36" y2="683.26" width="0.1524" layer="91"/>
<junction x="721.36" y="683.26"/>
</segment>
<segment>
<pinref part="GND213" gate="1" pin="GND"/>
<pinref part="C31" gate="G$1" pin="2"/>
<wire x1="789.94" y1="734.06" x2="789.94" y2="736.6" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND214" gate="1" pin="GND"/>
<wire x1="820.42" y1="731.52" x2="833.12" y2="731.52" width="0.1524" layer="91"/>
<pinref part="PAD286" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND215" gate="1" pin="GND"/>
<wire x1="858.52" y1="673.1" x2="858.52" y2="665.48" width="0.1524" layer="91"/>
<pinref part="R124" gate="G$1" pin="1"/>
<junction x="858.52" y="673.1"/>
</segment>
<segment>
<pinref part="U31" gate="G$1" pin="SD"/>
<wire x1="769.62" y1="716.28" x2="772.16" y2="716.28" width="0.1524" layer="91"/>
<wire x1="772.16" y1="716.28" x2="772.16" y2="723.9" width="0.1524" layer="91"/>
<wire x1="772.16" y1="723.9" x2="795.02" y2="723.9" width="0.1524" layer="91"/>
<pinref part="GND216" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND217" gate="1" pin="GND"/>
<wire x1="853.44" y1="731.52" x2="866.14" y2="731.52" width="0.1524" layer="91"/>
<pinref part="PAD291" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND225" gate="1" pin="GND"/>
<wire x1="787.4" y1="553.72" x2="795.02" y2="553.72" width="0.1524" layer="91"/>
<pinref part="U33" gate="G$1" pin="DAP"/>
</segment>
<segment>
<pinref part="GND226" gate="1" pin="GND"/>
<wire x1="739.14" y1="553.72" x2="739.14" y2="556.26" width="0.1524" layer="91"/>
<wire x1="739.14" y1="556.26" x2="744.22" y2="556.26" width="0.1524" layer="91"/>
<pinref part="U33" gate="G$1" pin="GND"/>
<pinref part="U33" gate="G$1" pin="CLKIN"/>
<wire x1="744.22" y1="596.9" x2="739.14" y2="596.9" width="0.1524" layer="91"/>
<wire x1="739.14" y1="596.9" x2="739.14" y2="556.26" width="0.1524" layer="91"/>
<junction x="739.14" y="556.26"/>
</segment>
<segment>
<pinref part="GND227" gate="1" pin="GND"/>
<pinref part="C33" gate="G$1" pin="2"/>
<wire x1="807.72" y1="607.06" x2="807.72" y2="609.6" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND228" gate="1" pin="GND"/>
<wire x1="838.2" y1="604.52" x2="850.9" y2="604.52" width="0.1524" layer="91"/>
<pinref part="PAD306" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND229" gate="1" pin="GND"/>
<wire x1="876.3" y1="546.1" x2="876.3" y2="538.48" width="0.1524" layer="91"/>
<pinref part="R132" gate="G$1" pin="1"/>
<junction x="876.3" y="546.1"/>
</segment>
<segment>
<pinref part="U33" gate="G$1" pin="SD"/>
<wire x1="787.4" y1="589.28" x2="789.94" y2="589.28" width="0.1524" layer="91"/>
<wire x1="789.94" y1="589.28" x2="789.94" y2="596.9" width="0.1524" layer="91"/>
<wire x1="789.94" y1="596.9" x2="812.8" y2="596.9" width="0.1524" layer="91"/>
<pinref part="GND230" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND231" gate="1" pin="GND"/>
<wire x1="871.22" y1="604.52" x2="883.92" y2="604.52" width="0.1524" layer="91"/>
<pinref part="PAD311" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND239" gate="1" pin="GND"/>
<wire x1="393.7" y1="386.08" x2="401.32" y2="386.08" width="0.1524" layer="91"/>
<pinref part="U35" gate="G$1" pin="DAP"/>
</segment>
<segment>
<pinref part="GND240" gate="1" pin="GND"/>
<wire x1="345.44" y1="386.08" x2="345.44" y2="388.62" width="0.1524" layer="91"/>
<wire x1="345.44" y1="388.62" x2="350.52" y2="388.62" width="0.1524" layer="91"/>
<pinref part="U35" gate="G$1" pin="GND"/>
<pinref part="U35" gate="G$1" pin="CLKIN"/>
<wire x1="350.52" y1="429.26" x2="345.44" y2="429.26" width="0.1524" layer="91"/>
<wire x1="345.44" y1="429.26" x2="345.44" y2="388.62" width="0.1524" layer="91"/>
<junction x="345.44" y="388.62"/>
</segment>
<segment>
<pinref part="GND241" gate="1" pin="GND"/>
<pinref part="C35" gate="G$1" pin="2"/>
<wire x1="414.02" y1="439.42" x2="414.02" y2="441.96" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND242" gate="1" pin="GND"/>
<wire x1="444.5" y1="436.88" x2="457.2" y2="436.88" width="0.1524" layer="91"/>
<pinref part="PAD326" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND243" gate="1" pin="GND"/>
<wire x1="482.6" y1="378.46" x2="482.6" y2="370.84" width="0.1524" layer="91"/>
<pinref part="R140" gate="G$1" pin="1"/>
<junction x="482.6" y="378.46"/>
</segment>
<segment>
<pinref part="U35" gate="G$1" pin="SD"/>
<wire x1="393.7" y1="421.64" x2="396.24" y2="421.64" width="0.1524" layer="91"/>
<wire x1="396.24" y1="421.64" x2="396.24" y2="429.26" width="0.1524" layer="91"/>
<wire x1="396.24" y1="429.26" x2="419.1" y2="429.26" width="0.1524" layer="91"/>
<pinref part="GND244" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND245" gate="1" pin="GND"/>
<wire x1="477.52" y1="436.88" x2="490.22" y2="436.88" width="0.1524" layer="91"/>
<pinref part="PAD331" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND253" gate="1" pin="GND"/>
<wire x1="749.3" y1="416.56" x2="756.92" y2="416.56" width="0.1524" layer="91"/>
<pinref part="U37" gate="G$1" pin="DAP"/>
</segment>
<segment>
<pinref part="GND254" gate="1" pin="GND"/>
<wire x1="701.04" y1="416.56" x2="701.04" y2="419.1" width="0.1524" layer="91"/>
<wire x1="701.04" y1="419.1" x2="706.12" y2="419.1" width="0.1524" layer="91"/>
<pinref part="U37" gate="G$1" pin="GND"/>
<pinref part="U37" gate="G$1" pin="CLKIN"/>
<wire x1="706.12" y1="459.74" x2="701.04" y2="459.74" width="0.1524" layer="91"/>
<wire x1="701.04" y1="459.74" x2="701.04" y2="419.1" width="0.1524" layer="91"/>
<junction x="701.04" y="419.1"/>
</segment>
<segment>
<pinref part="GND255" gate="1" pin="GND"/>
<pinref part="C37" gate="G$1" pin="2"/>
<wire x1="769.62" y1="469.9" x2="769.62" y2="472.44" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND256" gate="1" pin="GND"/>
<wire x1="800.1" y1="467.36" x2="812.8" y2="467.36" width="0.1524" layer="91"/>
<pinref part="PAD346" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="GND257" gate="1" pin="GND"/>
<wire x1="838.2" y1="408.94" x2="838.2" y2="401.32" width="0.1524" layer="91"/>
<pinref part="R148" gate="G$1" pin="1"/>
<junction x="838.2" y="408.94"/>
</segment>
<segment>
<pinref part="U37" gate="G$1" pin="SD"/>
<wire x1="749.3" y1="452.12" x2="751.84" y2="452.12" width="0.1524" layer="91"/>
<wire x1="751.84" y1="452.12" x2="751.84" y2="459.74" width="0.1524" layer="91"/>
<wire x1="751.84" y1="459.74" x2="774.7" y2="459.74" width="0.1524" layer="91"/>
<pinref part="GND258" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND259" gate="1" pin="GND"/>
<wire x1="833.12" y1="467.36" x2="845.82" y2="467.36" width="0.1524" layer="91"/>
<pinref part="PAD351" gate="G$1" pin="P"/>
</segment>
</net>
<net name="INTRPT18" class="0">
<segment>
<pinref part="U19" gate="G$1" pin="INTB"/>
<wire x1="342.9" y1="980.44" x2="347.98" y2="980.44" width="0.1524" layer="91"/>
<wire x1="347.98" y1="980.44" x2="347.98" y2="988.06" width="0.1524" layer="91"/>
<wire x1="347.98" y1="988.06" x2="360.68" y2="988.06" width="0.1524" layer="91"/>
<wire x1="360.68" y1="988.06" x2="360.68" y2="975.36" width="0.1524" layer="91"/>
<wire x1="360.68" y1="975.36" x2="373.38" y2="975.36" width="0.1524" layer="91"/>
<pinref part="PAD167" gate="G$1" pin="P"/>
<pinref part="PAD172" gate="G$1" pin="P"/>
<wire x1="373.38" y1="975.36" x2="375.92" y2="975.36" width="0.1524" layer="91"/>
<wire x1="381" y1="985.52" x2="373.38" y2="985.52" width="0.1524" layer="91"/>
<wire x1="373.38" y1="985.52" x2="373.38" y2="975.36" width="0.1524" layer="91"/>
<junction x="373.38" y="975.36"/>
</segment>
</net>
<net name="N$145" class="0">
<segment>
<pinref part="U$19" gate="G$1" pin="EXITCOIL0"/>
<wire x1="248.92" y1="970.28" x2="246.38" y2="970.28" width="0.1524" layer="91"/>
<pinref part="U19" gate="G$1" pin="IN1B"/>
<wire x1="248.92" y1="970.28" x2="248.92" y2="972.82" width="0.1524" layer="91"/>
<wire x1="248.92" y1="972.82" x2="299.72" y2="972.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$146" class="0">
<segment>
<wire x1="251.46" y1="982.98" x2="251.46" y2="960.12" width="0.1524" layer="91"/>
<pinref part="U$19" gate="G$1" pin="INCOIL1"/>
<wire x1="251.46" y1="960.12" x2="246.38" y2="960.12" width="0.1524" layer="91"/>
<pinref part="U19" gate="G$1" pin="IN0A"/>
<wire x1="299.72" y1="982.98" x2="251.46" y2="982.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$147" class="0">
<segment>
<wire x1="254" y1="980.44" x2="254" y2="944.88" width="0.1524" layer="91"/>
<pinref part="U$19" gate="G$1" pin="EXITCOIL1"/>
<wire x1="254" y1="944.88" x2="246.38" y2="944.88" width="0.1524" layer="91"/>
<pinref part="U19" gate="G$1" pin="IN0B"/>
<wire x1="254" y1="980.44" x2="299.72" y2="980.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$148" class="0">
<segment>
<pinref part="U19" gate="G$1" pin="IN2A"/>
<wire x1="299.72" y1="967.74" x2="256.54" y2="967.74" width="0.1524" layer="91"/>
<wire x1="256.54" y1="967.74" x2="256.54" y2="934.72" width="0.1524" layer="91"/>
<wire x1="256.54" y1="934.72" x2="157.48" y2="934.72" width="0.1524" layer="91"/>
<wire x1="157.48" y1="934.72" x2="157.48" y2="970.28" width="0.1524" layer="91"/>
<pinref part="U$19" gate="G$1" pin="EXITCOIL2"/>
<wire x1="157.48" y1="970.28" x2="175.26" y2="970.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$149" class="0">
<segment>
<pinref part="U19" gate="G$1" pin="IN2B"/>
<wire x1="152.4" y1="985.52" x2="152.4" y2="932.18" width="0.1524" layer="91"/>
<wire x1="152.4" y1="932.18" x2="259.08" y2="932.18" width="0.1524" layer="91"/>
<wire x1="259.08" y1="932.18" x2="259.08" y2="965.2" width="0.1524" layer="91"/>
<wire x1="259.08" y1="965.2" x2="299.72" y2="965.2" width="0.1524" layer="91"/>
<pinref part="U$19" gate="G$1" pin="INCOIL2"/>
<wire x1="152.4" y1="985.52" x2="175.26" y2="985.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$150" class="0">
<segment>
<pinref part="U19" gate="G$1" pin="IN3A"/>
<wire x1="299.72" y1="960.12" x2="261.62" y2="960.12" width="0.1524" layer="91"/>
<wire x1="261.62" y1="960.12" x2="261.62" y2="929.64" width="0.1524" layer="91"/>
<wire x1="261.62" y1="929.64" x2="147.32" y2="929.64" width="0.1524" layer="91"/>
<pinref part="U$19" gate="G$1" pin="INCOIL3"/>
<wire x1="147.32" y1="929.64" x2="147.32" y2="960.12" width="0.1524" layer="91"/>
<wire x1="147.32" y1="960.12" x2="175.26" y2="960.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$151" class="0">
<segment>
<pinref part="U19" gate="G$1" pin="IN3B"/>
<pinref part="U$19" gate="G$1" pin="EXITCOIL3"/>
<wire x1="175.26" y1="944.88" x2="142.24" y2="944.88" width="0.1524" layer="91"/>
<wire x1="142.24" y1="944.88" x2="142.24" y2="927.1" width="0.1524" layer="91"/>
<wire x1="142.24" y1="927.1" x2="264.16" y2="927.1" width="0.1524" layer="91"/>
<wire x1="264.16" y1="927.1" x2="264.16" y2="957.58" width="0.1524" layer="91"/>
<wire x1="264.16" y1="957.58" x2="299.72" y2="957.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$152" class="0">
<segment>
<pinref part="U19" gate="G$1" pin="IN1A"/>
<wire x1="299.72" y1="975.36" x2="279.4" y2="975.36" width="0.1524" layer="91"/>
<wire x1="279.4" y1="975.36" x2="279.4" y2="985.52" width="0.1524" layer="91"/>
<pinref part="U$19" gate="G$1" pin="INCOIL0"/>
<wire x1="279.4" y1="985.52" x2="246.38" y2="985.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SCL18" class="0">
<segment>
<wire x1="414.02" y1="977.9" x2="398.78" y2="977.9" width="0.1524" layer="91"/>
<pinref part="PAD174" gate="G$1" pin="P"/>
<wire x1="391.16" y1="957.58" x2="391.16" y2="965.2" width="0.1524" layer="91"/>
<pinref part="U19" gate="G$1" pin="SCL"/>
<pinref part="R73" gate="G$1" pin="1"/>
<wire x1="342.9" y1="957.58" x2="355.6" y2="957.58" width="0.1524" layer="91"/>
<wire x1="355.6" y1="957.58" x2="355.6" y2="967.74" width="0.1524" layer="91"/>
<wire x1="391.16" y1="957.58" x2="355.6" y2="957.58" width="0.1524" layer="91"/>
<junction x="355.6" y="957.58"/>
<wire x1="408.94" y1="965.2" x2="398.78" y2="965.2" width="0.1524" layer="91"/>
<pinref part="PAD169" gate="G$1" pin="P"/>
<wire x1="398.78" y1="965.2" x2="391.16" y2="965.2" width="0.1524" layer="91"/>
<wire x1="398.78" y1="977.9" x2="398.78" y2="965.2" width="0.1524" layer="91"/>
<junction x="398.78" y="965.2"/>
</segment>
</net>
<net name="SDA18" class="0">
<segment>
<pinref part="PAD173" gate="G$1" pin="P"/>
<wire x1="396.24" y1="985.52" x2="414.02" y2="985.52" width="0.1524" layer="91"/>
<pinref part="U19" gate="G$1" pin="SDA"/>
<pinref part="R74" gate="G$1" pin="1"/>
<wire x1="342.9" y1="960.12" x2="347.98" y2="960.12" width="0.1524" layer="91"/>
<wire x1="347.98" y1="960.12" x2="347.98" y2="967.74" width="0.1524" layer="91"/>
<wire x1="347.98" y1="960.12" x2="388.62" y2="960.12" width="0.1524" layer="91"/>
<wire x1="388.62" y1="960.12" x2="388.62" y2="972.82" width="0.1524" layer="91"/>
<junction x="347.98" y="960.12"/>
<wire x1="388.62" y1="972.82" x2="396.24" y2="972.82" width="0.1524" layer="91"/>
<pinref part="PAD168" gate="G$1" pin="P"/>
<wire x1="396.24" y1="972.82" x2="406.4" y2="972.82" width="0.1524" layer="91"/>
<wire x1="396.24" y1="985.52" x2="396.24" y2="972.82" width="0.1524" layer="91"/>
<junction x="396.24" y="972.82"/>
</segment>
</net>
<net name="ADDR20" class="0">
<segment>
<pinref part="R83" gate="G$1" pin="1"/>
<pinref part="R84" gate="G$1" pin="2"/>
<wire x1="447.04" y1="807.72" x2="447.04" y2="810.26" width="0.1524" layer="91"/>
<pinref part="U21" gate="G$1" pin="ADDR"/>
<wire x1="358.14" y1="810.26" x2="439.42" y2="810.26" width="0.1524" layer="91"/>
<wire x1="439.42" y1="810.26" x2="439.42" y2="807.72" width="0.1524" layer="91"/>
<wire x1="439.42" y1="807.72" x2="447.04" y2="807.72" width="0.1524" layer="91"/>
<junction x="447.04" y="807.72"/>
</segment>
</net>
<net name="INTRPT20" class="0">
<segment>
<pinref part="U21" gate="G$1" pin="INTB"/>
<wire x1="358.14" y1="838.2" x2="363.22" y2="838.2" width="0.1524" layer="91"/>
<wire x1="363.22" y1="838.2" x2="363.22" y2="845.82" width="0.1524" layer="91"/>
<wire x1="363.22" y1="845.82" x2="375.92" y2="845.82" width="0.1524" layer="91"/>
<wire x1="375.92" y1="845.82" x2="375.92" y2="833.12" width="0.1524" layer="91"/>
<wire x1="375.92" y1="833.12" x2="388.62" y2="833.12" width="0.1524" layer="91"/>
<pinref part="PAD187" gate="G$1" pin="P"/>
<pinref part="PAD192" gate="G$1" pin="P"/>
<wire x1="388.62" y1="833.12" x2="391.16" y2="833.12" width="0.1524" layer="91"/>
<wire x1="396.24" y1="843.28" x2="388.62" y2="843.28" width="0.1524" layer="91"/>
<wire x1="388.62" y1="843.28" x2="388.62" y2="833.12" width="0.1524" layer="91"/>
<junction x="388.62" y="833.12"/>
</segment>
</net>
<net name="N$161" class="0">
<segment>
<pinref part="U$21" gate="G$1" pin="EXITCOIL0"/>
<wire x1="264.16" y1="828.04" x2="261.62" y2="828.04" width="0.1524" layer="91"/>
<pinref part="U21" gate="G$1" pin="IN1B"/>
<wire x1="264.16" y1="828.04" x2="264.16" y2="830.58" width="0.1524" layer="91"/>
<wire x1="264.16" y1="830.58" x2="314.96" y2="830.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$162" class="0">
<segment>
<wire x1="266.7" y1="840.74" x2="266.7" y2="817.88" width="0.1524" layer="91"/>
<pinref part="U$21" gate="G$1" pin="INCOIL1"/>
<wire x1="266.7" y1="817.88" x2="261.62" y2="817.88" width="0.1524" layer="91"/>
<pinref part="U21" gate="G$1" pin="IN0A"/>
<wire x1="314.96" y1="840.74" x2="266.7" y2="840.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$163" class="0">
<segment>
<wire x1="269.24" y1="838.2" x2="269.24" y2="802.64" width="0.1524" layer="91"/>
<pinref part="U$21" gate="G$1" pin="EXITCOIL1"/>
<wire x1="269.24" y1="802.64" x2="261.62" y2="802.64" width="0.1524" layer="91"/>
<pinref part="U21" gate="G$1" pin="IN0B"/>
<wire x1="269.24" y1="838.2" x2="314.96" y2="838.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$164" class="0">
<segment>
<pinref part="U21" gate="G$1" pin="IN2A"/>
<wire x1="314.96" y1="825.5" x2="271.78" y2="825.5" width="0.1524" layer="91"/>
<wire x1="271.78" y1="825.5" x2="271.78" y2="792.48" width="0.1524" layer="91"/>
<wire x1="271.78" y1="792.48" x2="172.72" y2="792.48" width="0.1524" layer="91"/>
<wire x1="172.72" y1="792.48" x2="172.72" y2="828.04" width="0.1524" layer="91"/>
<pinref part="U$21" gate="G$1" pin="EXITCOIL2"/>
<wire x1="172.72" y1="828.04" x2="190.5" y2="828.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$165" class="0">
<segment>
<pinref part="U21" gate="G$1" pin="IN2B"/>
<wire x1="167.64" y1="843.28" x2="167.64" y2="789.94" width="0.1524" layer="91"/>
<wire x1="167.64" y1="789.94" x2="274.32" y2="789.94" width="0.1524" layer="91"/>
<wire x1="274.32" y1="789.94" x2="274.32" y2="822.96" width="0.1524" layer="91"/>
<wire x1="274.32" y1="822.96" x2="314.96" y2="822.96" width="0.1524" layer="91"/>
<pinref part="U$21" gate="G$1" pin="INCOIL2"/>
<wire x1="167.64" y1="843.28" x2="190.5" y2="843.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$166" class="0">
<segment>
<pinref part="U21" gate="G$1" pin="IN3A"/>
<wire x1="314.96" y1="817.88" x2="276.86" y2="817.88" width="0.1524" layer="91"/>
<wire x1="276.86" y1="817.88" x2="276.86" y2="787.4" width="0.1524" layer="91"/>
<wire x1="276.86" y1="787.4" x2="162.56" y2="787.4" width="0.1524" layer="91"/>
<pinref part="U$21" gate="G$1" pin="INCOIL3"/>
<wire x1="162.56" y1="787.4" x2="162.56" y2="817.88" width="0.1524" layer="91"/>
<wire x1="162.56" y1="817.88" x2="190.5" y2="817.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$167" class="0">
<segment>
<pinref part="U21" gate="G$1" pin="IN3B"/>
<pinref part="U$21" gate="G$1" pin="EXITCOIL3"/>
<wire x1="190.5" y1="802.64" x2="157.48" y2="802.64" width="0.1524" layer="91"/>
<wire x1="157.48" y1="802.64" x2="157.48" y2="784.86" width="0.1524" layer="91"/>
<wire x1="157.48" y1="784.86" x2="279.4" y2="784.86" width="0.1524" layer="91"/>
<wire x1="279.4" y1="784.86" x2="279.4" y2="815.34" width="0.1524" layer="91"/>
<wire x1="279.4" y1="815.34" x2="314.96" y2="815.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$168" class="0">
<segment>
<pinref part="U21" gate="G$1" pin="IN1A"/>
<wire x1="314.96" y1="833.12" x2="294.64" y2="833.12" width="0.1524" layer="91"/>
<wire x1="294.64" y1="833.12" x2="294.64" y2="843.28" width="0.1524" layer="91"/>
<pinref part="U$21" gate="G$1" pin="INCOIL0"/>
<wire x1="294.64" y1="843.28" x2="261.62" y2="843.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SCL20" class="0">
<segment>
<wire x1="429.26" y1="835.66" x2="414.02" y2="835.66" width="0.1524" layer="91"/>
<pinref part="PAD194" gate="G$1" pin="P"/>
<wire x1="406.4" y1="815.34" x2="406.4" y2="822.96" width="0.1524" layer="91"/>
<pinref part="U21" gate="G$1" pin="SCL"/>
<pinref part="R81" gate="G$1" pin="1"/>
<wire x1="358.14" y1="815.34" x2="370.84" y2="815.34" width="0.1524" layer="91"/>
<wire x1="370.84" y1="815.34" x2="370.84" y2="825.5" width="0.1524" layer="91"/>
<wire x1="406.4" y1="815.34" x2="370.84" y2="815.34" width="0.1524" layer="91"/>
<junction x="370.84" y="815.34"/>
<wire x1="424.18" y1="822.96" x2="414.02" y2="822.96" width="0.1524" layer="91"/>
<pinref part="PAD189" gate="G$1" pin="P"/>
<wire x1="414.02" y1="822.96" x2="406.4" y2="822.96" width="0.1524" layer="91"/>
<wire x1="414.02" y1="835.66" x2="414.02" y2="822.96" width="0.1524" layer="91"/>
<junction x="414.02" y="822.96"/>
</segment>
</net>
<net name="SDA20" class="0">
<segment>
<pinref part="PAD193" gate="G$1" pin="P"/>
<wire x1="411.48" y1="843.28" x2="429.26" y2="843.28" width="0.1524" layer="91"/>
<pinref part="U21" gate="G$1" pin="SDA"/>
<pinref part="R82" gate="G$1" pin="1"/>
<wire x1="358.14" y1="817.88" x2="363.22" y2="817.88" width="0.1524" layer="91"/>
<wire x1="363.22" y1="817.88" x2="363.22" y2="825.5" width="0.1524" layer="91"/>
<wire x1="363.22" y1="817.88" x2="403.86" y2="817.88" width="0.1524" layer="91"/>
<wire x1="403.86" y1="817.88" x2="403.86" y2="830.58" width="0.1524" layer="91"/>
<junction x="363.22" y="817.88"/>
<wire x1="403.86" y1="830.58" x2="411.48" y2="830.58" width="0.1524" layer="91"/>
<pinref part="PAD188" gate="G$1" pin="P"/>
<wire x1="411.48" y1="830.58" x2="421.64" y2="830.58" width="0.1524" layer="91"/>
<wire x1="411.48" y1="843.28" x2="411.48" y2="830.58" width="0.1524" layer="91"/>
<junction x="411.48" y="830.58"/>
</segment>
</net>
<net name="ADDR22" class="0">
<segment>
<pinref part="R91" gate="G$1" pin="1"/>
<pinref part="R92" gate="G$1" pin="2"/>
<wire x1="447.04" y1="660.4" x2="447.04" y2="662.94" width="0.1524" layer="91"/>
<pinref part="U23" gate="G$1" pin="ADDR"/>
<wire x1="358.14" y1="662.94" x2="439.42" y2="662.94" width="0.1524" layer="91"/>
<wire x1="439.42" y1="662.94" x2="439.42" y2="660.4" width="0.1524" layer="91"/>
<wire x1="439.42" y1="660.4" x2="447.04" y2="660.4" width="0.1524" layer="91"/>
<junction x="447.04" y="660.4"/>
</segment>
</net>
<net name="INTRPT22" class="0">
<segment>
<pinref part="U23" gate="G$1" pin="INTB"/>
<wire x1="358.14" y1="690.88" x2="363.22" y2="690.88" width="0.1524" layer="91"/>
<wire x1="363.22" y1="690.88" x2="363.22" y2="698.5" width="0.1524" layer="91"/>
<wire x1="363.22" y1="698.5" x2="375.92" y2="698.5" width="0.1524" layer="91"/>
<wire x1="375.92" y1="698.5" x2="375.92" y2="685.8" width="0.1524" layer="91"/>
<wire x1="375.92" y1="685.8" x2="388.62" y2="685.8" width="0.1524" layer="91"/>
<pinref part="PAD207" gate="G$1" pin="P"/>
<pinref part="PAD212" gate="G$1" pin="P"/>
<wire x1="388.62" y1="685.8" x2="391.16" y2="685.8" width="0.1524" layer="91"/>
<wire x1="396.24" y1="695.96" x2="388.62" y2="695.96" width="0.1524" layer="91"/>
<wire x1="388.62" y1="695.96" x2="388.62" y2="685.8" width="0.1524" layer="91"/>
<junction x="388.62" y="685.8"/>
</segment>
</net>
<net name="N$177" class="0">
<segment>
<pinref part="U$23" gate="G$1" pin="EXITCOIL0"/>
<wire x1="264.16" y1="680.72" x2="261.62" y2="680.72" width="0.1524" layer="91"/>
<pinref part="U23" gate="G$1" pin="IN1B"/>
<wire x1="264.16" y1="680.72" x2="264.16" y2="683.26" width="0.1524" layer="91"/>
<wire x1="264.16" y1="683.26" x2="314.96" y2="683.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$178" class="0">
<segment>
<wire x1="266.7" y1="693.42" x2="266.7" y2="670.56" width="0.1524" layer="91"/>
<pinref part="U$23" gate="G$1" pin="INCOIL1"/>
<wire x1="266.7" y1="670.56" x2="261.62" y2="670.56" width="0.1524" layer="91"/>
<pinref part="U23" gate="G$1" pin="IN0A"/>
<wire x1="314.96" y1="693.42" x2="266.7" y2="693.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$179" class="0">
<segment>
<wire x1="269.24" y1="690.88" x2="269.24" y2="655.32" width="0.1524" layer="91"/>
<pinref part="U$23" gate="G$1" pin="EXITCOIL1"/>
<wire x1="269.24" y1="655.32" x2="261.62" y2="655.32" width="0.1524" layer="91"/>
<pinref part="U23" gate="G$1" pin="IN0B"/>
<wire x1="269.24" y1="690.88" x2="314.96" y2="690.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$180" class="0">
<segment>
<pinref part="U23" gate="G$1" pin="IN2A"/>
<wire x1="314.96" y1="678.18" x2="271.78" y2="678.18" width="0.1524" layer="91"/>
<wire x1="271.78" y1="678.18" x2="271.78" y2="645.16" width="0.1524" layer="91"/>
<wire x1="271.78" y1="645.16" x2="172.72" y2="645.16" width="0.1524" layer="91"/>
<wire x1="172.72" y1="645.16" x2="172.72" y2="680.72" width="0.1524" layer="91"/>
<pinref part="U$23" gate="G$1" pin="EXITCOIL2"/>
<wire x1="172.72" y1="680.72" x2="190.5" y2="680.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$181" class="0">
<segment>
<pinref part="U23" gate="G$1" pin="IN2B"/>
<wire x1="167.64" y1="695.96" x2="167.64" y2="642.62" width="0.1524" layer="91"/>
<wire x1="167.64" y1="642.62" x2="274.32" y2="642.62" width="0.1524" layer="91"/>
<wire x1="274.32" y1="642.62" x2="274.32" y2="675.64" width="0.1524" layer="91"/>
<wire x1="274.32" y1="675.64" x2="314.96" y2="675.64" width="0.1524" layer="91"/>
<pinref part="U$23" gate="G$1" pin="INCOIL2"/>
<wire x1="167.64" y1="695.96" x2="190.5" y2="695.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$182" class="0">
<segment>
<pinref part="U23" gate="G$1" pin="IN3A"/>
<wire x1="314.96" y1="670.56" x2="276.86" y2="670.56" width="0.1524" layer="91"/>
<wire x1="276.86" y1="670.56" x2="276.86" y2="640.08" width="0.1524" layer="91"/>
<wire x1="276.86" y1="640.08" x2="162.56" y2="640.08" width="0.1524" layer="91"/>
<pinref part="U$23" gate="G$1" pin="INCOIL3"/>
<wire x1="162.56" y1="640.08" x2="162.56" y2="670.56" width="0.1524" layer="91"/>
<wire x1="162.56" y1="670.56" x2="190.5" y2="670.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$183" class="0">
<segment>
<pinref part="U23" gate="G$1" pin="IN3B"/>
<pinref part="U$23" gate="G$1" pin="EXITCOIL3"/>
<wire x1="190.5" y1="655.32" x2="157.48" y2="655.32" width="0.1524" layer="91"/>
<wire x1="157.48" y1="655.32" x2="157.48" y2="637.54" width="0.1524" layer="91"/>
<wire x1="157.48" y1="637.54" x2="279.4" y2="637.54" width="0.1524" layer="91"/>
<wire x1="279.4" y1="637.54" x2="279.4" y2="668.02" width="0.1524" layer="91"/>
<wire x1="279.4" y1="668.02" x2="314.96" y2="668.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$184" class="0">
<segment>
<pinref part="U23" gate="G$1" pin="IN1A"/>
<wire x1="314.96" y1="685.8" x2="294.64" y2="685.8" width="0.1524" layer="91"/>
<wire x1="294.64" y1="685.8" x2="294.64" y2="695.96" width="0.1524" layer="91"/>
<pinref part="U$23" gate="G$1" pin="INCOIL0"/>
<wire x1="294.64" y1="695.96" x2="261.62" y2="695.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SCL22" class="0">
<segment>
<wire x1="429.26" y1="688.34" x2="414.02" y2="688.34" width="0.1524" layer="91"/>
<pinref part="PAD214" gate="G$1" pin="P"/>
<wire x1="406.4" y1="668.02" x2="406.4" y2="675.64" width="0.1524" layer="91"/>
<pinref part="U23" gate="G$1" pin="SCL"/>
<pinref part="R89" gate="G$1" pin="1"/>
<wire x1="358.14" y1="668.02" x2="370.84" y2="668.02" width="0.1524" layer="91"/>
<wire x1="370.84" y1="668.02" x2="370.84" y2="678.18" width="0.1524" layer="91"/>
<wire x1="406.4" y1="668.02" x2="370.84" y2="668.02" width="0.1524" layer="91"/>
<junction x="370.84" y="668.02"/>
<wire x1="424.18" y1="675.64" x2="414.02" y2="675.64" width="0.1524" layer="91"/>
<pinref part="PAD209" gate="G$1" pin="P"/>
<wire x1="414.02" y1="675.64" x2="406.4" y2="675.64" width="0.1524" layer="91"/>
<wire x1="414.02" y1="688.34" x2="414.02" y2="675.64" width="0.1524" layer="91"/>
<junction x="414.02" y="675.64"/>
</segment>
</net>
<net name="SDA22" class="0">
<segment>
<pinref part="PAD213" gate="G$1" pin="P"/>
<wire x1="411.48" y1="695.96" x2="429.26" y2="695.96" width="0.1524" layer="91"/>
<pinref part="U23" gate="G$1" pin="SDA"/>
<pinref part="R90" gate="G$1" pin="1"/>
<wire x1="358.14" y1="670.56" x2="363.22" y2="670.56" width="0.1524" layer="91"/>
<wire x1="363.22" y1="670.56" x2="363.22" y2="678.18" width="0.1524" layer="91"/>
<wire x1="363.22" y1="670.56" x2="403.86" y2="670.56" width="0.1524" layer="91"/>
<wire x1="403.86" y1="670.56" x2="403.86" y2="683.26" width="0.1524" layer="91"/>
<junction x="363.22" y="670.56"/>
<wire x1="403.86" y1="683.26" x2="411.48" y2="683.26" width="0.1524" layer="91"/>
<pinref part="PAD208" gate="G$1" pin="P"/>
<wire x1="411.48" y1="683.26" x2="421.64" y2="683.26" width="0.1524" layer="91"/>
<wire x1="411.48" y1="695.96" x2="411.48" y2="683.26" width="0.1524" layer="91"/>
<junction x="411.48" y="683.26"/>
</segment>
</net>
<net name="ADDR24" class="0">
<segment>
<pinref part="R99" gate="G$1" pin="1"/>
<pinref part="R100" gate="G$1" pin="2"/>
<wire x1="474.98" y1="533.4" x2="474.98" y2="535.94" width="0.1524" layer="91"/>
<pinref part="U25" gate="G$1" pin="ADDR"/>
<wire x1="386.08" y1="535.94" x2="467.36" y2="535.94" width="0.1524" layer="91"/>
<wire x1="467.36" y1="535.94" x2="467.36" y2="533.4" width="0.1524" layer="91"/>
<wire x1="467.36" y1="533.4" x2="474.98" y2="533.4" width="0.1524" layer="91"/>
<junction x="474.98" y="533.4"/>
</segment>
</net>
<net name="INTRPT24" class="0">
<segment>
<pinref part="U25" gate="G$1" pin="INTB"/>
<wire x1="386.08" y1="563.88" x2="391.16" y2="563.88" width="0.1524" layer="91"/>
<wire x1="391.16" y1="563.88" x2="391.16" y2="571.5" width="0.1524" layer="91"/>
<wire x1="391.16" y1="571.5" x2="403.86" y2="571.5" width="0.1524" layer="91"/>
<wire x1="403.86" y1="571.5" x2="403.86" y2="558.8" width="0.1524" layer="91"/>
<wire x1="403.86" y1="558.8" x2="416.56" y2="558.8" width="0.1524" layer="91"/>
<pinref part="PAD227" gate="G$1" pin="P"/>
<pinref part="PAD232" gate="G$1" pin="P"/>
<wire x1="416.56" y1="558.8" x2="419.1" y2="558.8" width="0.1524" layer="91"/>
<wire x1="424.18" y1="568.96" x2="416.56" y2="568.96" width="0.1524" layer="91"/>
<wire x1="416.56" y1="568.96" x2="416.56" y2="558.8" width="0.1524" layer="91"/>
<junction x="416.56" y="558.8"/>
</segment>
</net>
<net name="N$193" class="0">
<segment>
<pinref part="U$25" gate="G$1" pin="EXITCOIL0"/>
<wire x1="292.1" y1="553.72" x2="289.56" y2="553.72" width="0.1524" layer="91"/>
<pinref part="U25" gate="G$1" pin="IN1B"/>
<wire x1="292.1" y1="553.72" x2="292.1" y2="556.26" width="0.1524" layer="91"/>
<wire x1="292.1" y1="556.26" x2="342.9" y2="556.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$194" class="0">
<segment>
<wire x1="294.64" y1="566.42" x2="294.64" y2="543.56" width="0.1524" layer="91"/>
<pinref part="U$25" gate="G$1" pin="INCOIL1"/>
<wire x1="294.64" y1="543.56" x2="289.56" y2="543.56" width="0.1524" layer="91"/>
<pinref part="U25" gate="G$1" pin="IN0A"/>
<wire x1="342.9" y1="566.42" x2="294.64" y2="566.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$195" class="0">
<segment>
<wire x1="297.18" y1="563.88" x2="297.18" y2="528.32" width="0.1524" layer="91"/>
<pinref part="U$25" gate="G$1" pin="EXITCOIL1"/>
<wire x1="297.18" y1="528.32" x2="289.56" y2="528.32" width="0.1524" layer="91"/>
<pinref part="U25" gate="G$1" pin="IN0B"/>
<wire x1="297.18" y1="563.88" x2="342.9" y2="563.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$196" class="0">
<segment>
<pinref part="U25" gate="G$1" pin="IN2A"/>
<wire x1="342.9" y1="551.18" x2="299.72" y2="551.18" width="0.1524" layer="91"/>
<wire x1="299.72" y1="551.18" x2="299.72" y2="518.16" width="0.1524" layer="91"/>
<wire x1="299.72" y1="518.16" x2="200.66" y2="518.16" width="0.1524" layer="91"/>
<wire x1="200.66" y1="518.16" x2="200.66" y2="553.72" width="0.1524" layer="91"/>
<pinref part="U$25" gate="G$1" pin="EXITCOIL2"/>
<wire x1="200.66" y1="553.72" x2="218.44" y2="553.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$197" class="0">
<segment>
<pinref part="U25" gate="G$1" pin="IN2B"/>
<wire x1="195.58" y1="568.96" x2="195.58" y2="515.62" width="0.1524" layer="91"/>
<wire x1="195.58" y1="515.62" x2="302.26" y2="515.62" width="0.1524" layer="91"/>
<wire x1="302.26" y1="515.62" x2="302.26" y2="548.64" width="0.1524" layer="91"/>
<wire x1="302.26" y1="548.64" x2="342.9" y2="548.64" width="0.1524" layer="91"/>
<pinref part="U$25" gate="G$1" pin="INCOIL2"/>
<wire x1="195.58" y1="568.96" x2="218.44" y2="568.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$198" class="0">
<segment>
<pinref part="U25" gate="G$1" pin="IN3A"/>
<wire x1="342.9" y1="543.56" x2="304.8" y2="543.56" width="0.1524" layer="91"/>
<wire x1="304.8" y1="543.56" x2="304.8" y2="513.08" width="0.1524" layer="91"/>
<wire x1="304.8" y1="513.08" x2="190.5" y2="513.08" width="0.1524" layer="91"/>
<pinref part="U$25" gate="G$1" pin="INCOIL3"/>
<wire x1="190.5" y1="513.08" x2="190.5" y2="543.56" width="0.1524" layer="91"/>
<wire x1="190.5" y1="543.56" x2="218.44" y2="543.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$199" class="0">
<segment>
<pinref part="U25" gate="G$1" pin="IN3B"/>
<pinref part="U$25" gate="G$1" pin="EXITCOIL3"/>
<wire x1="218.44" y1="528.32" x2="185.42" y2="528.32" width="0.1524" layer="91"/>
<wire x1="185.42" y1="528.32" x2="185.42" y2="510.54" width="0.1524" layer="91"/>
<wire x1="185.42" y1="510.54" x2="307.34" y2="510.54" width="0.1524" layer="91"/>
<wire x1="307.34" y1="510.54" x2="307.34" y2="541.02" width="0.1524" layer="91"/>
<wire x1="307.34" y1="541.02" x2="342.9" y2="541.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$200" class="0">
<segment>
<pinref part="U25" gate="G$1" pin="IN1A"/>
<wire x1="342.9" y1="558.8" x2="322.58" y2="558.8" width="0.1524" layer="91"/>
<wire x1="322.58" y1="558.8" x2="322.58" y2="568.96" width="0.1524" layer="91"/>
<pinref part="U$25" gate="G$1" pin="INCOIL0"/>
<wire x1="322.58" y1="568.96" x2="289.56" y2="568.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SCL24" class="0">
<segment>
<wire x1="457.2" y1="561.34" x2="441.96" y2="561.34" width="0.1524" layer="91"/>
<pinref part="PAD234" gate="G$1" pin="P"/>
<wire x1="434.34" y1="541.02" x2="434.34" y2="548.64" width="0.1524" layer="91"/>
<pinref part="U25" gate="G$1" pin="SCL"/>
<pinref part="R97" gate="G$1" pin="1"/>
<wire x1="386.08" y1="541.02" x2="398.78" y2="541.02" width="0.1524" layer="91"/>
<wire x1="398.78" y1="541.02" x2="398.78" y2="551.18" width="0.1524" layer="91"/>
<wire x1="434.34" y1="541.02" x2="398.78" y2="541.02" width="0.1524" layer="91"/>
<junction x="398.78" y="541.02"/>
<wire x1="452.12" y1="548.64" x2="441.96" y2="548.64" width="0.1524" layer="91"/>
<pinref part="PAD229" gate="G$1" pin="P"/>
<wire x1="441.96" y1="548.64" x2="434.34" y2="548.64" width="0.1524" layer="91"/>
<wire x1="441.96" y1="561.34" x2="441.96" y2="548.64" width="0.1524" layer="91"/>
<junction x="441.96" y="548.64"/>
</segment>
</net>
<net name="SDA24" class="0">
<segment>
<pinref part="PAD233" gate="G$1" pin="P"/>
<wire x1="439.42" y1="568.96" x2="457.2" y2="568.96" width="0.1524" layer="91"/>
<pinref part="U25" gate="G$1" pin="SDA"/>
<pinref part="R98" gate="G$1" pin="1"/>
<wire x1="386.08" y1="543.56" x2="391.16" y2="543.56" width="0.1524" layer="91"/>
<wire x1="391.16" y1="543.56" x2="391.16" y2="551.18" width="0.1524" layer="91"/>
<wire x1="391.16" y1="543.56" x2="431.8" y2="543.56" width="0.1524" layer="91"/>
<wire x1="431.8" y1="543.56" x2="431.8" y2="556.26" width="0.1524" layer="91"/>
<junction x="391.16" y="543.56"/>
<wire x1="431.8" y1="556.26" x2="439.42" y2="556.26" width="0.1524" layer="91"/>
<pinref part="PAD228" gate="G$1" pin="P"/>
<wire x1="439.42" y1="556.26" x2="449.58" y2="556.26" width="0.1524" layer="91"/>
<wire x1="439.42" y1="568.96" x2="439.42" y2="556.26" width="0.1524" layer="91"/>
<junction x="439.42" y="556.26"/>
</segment>
</net>
<net name="ADDR26" class="0">
<segment>
<pinref part="R107" gate="G$1" pin="1"/>
<pinref part="R108" gate="G$1" pin="2"/>
<wire x1="838.2" y1="949.96" x2="838.2" y2="952.5" width="0.1524" layer="91"/>
<pinref part="U27" gate="G$1" pin="ADDR"/>
<wire x1="749.3" y1="952.5" x2="830.58" y2="952.5" width="0.1524" layer="91"/>
<wire x1="830.58" y1="952.5" x2="830.58" y2="949.96" width="0.1524" layer="91"/>
<wire x1="830.58" y1="949.96" x2="838.2" y2="949.96" width="0.1524" layer="91"/>
<junction x="838.2" y="949.96"/>
</segment>
</net>
<net name="INTRPT26" class="0">
<segment>
<pinref part="U27" gate="G$1" pin="INTB"/>
<wire x1="749.3" y1="980.44" x2="754.38" y2="980.44" width="0.1524" layer="91"/>
<wire x1="754.38" y1="980.44" x2="754.38" y2="988.06" width="0.1524" layer="91"/>
<wire x1="754.38" y1="988.06" x2="767.08" y2="988.06" width="0.1524" layer="91"/>
<wire x1="767.08" y1="988.06" x2="767.08" y2="975.36" width="0.1524" layer="91"/>
<wire x1="767.08" y1="975.36" x2="779.78" y2="975.36" width="0.1524" layer="91"/>
<pinref part="PAD247" gate="G$1" pin="P"/>
<pinref part="PAD252" gate="G$1" pin="P"/>
<wire x1="779.78" y1="975.36" x2="782.32" y2="975.36" width="0.1524" layer="91"/>
<wire x1="787.4" y1="985.52" x2="779.78" y2="985.52" width="0.1524" layer="91"/>
<wire x1="779.78" y1="985.52" x2="779.78" y2="975.36" width="0.1524" layer="91"/>
<junction x="779.78" y="975.36"/>
</segment>
</net>
<net name="N$209" class="0">
<segment>
<pinref part="U$27" gate="G$1" pin="EXITCOIL0"/>
<wire x1="655.32" y1="970.28" x2="652.78" y2="970.28" width="0.1524" layer="91"/>
<pinref part="U27" gate="G$1" pin="IN1B"/>
<wire x1="655.32" y1="970.28" x2="655.32" y2="972.82" width="0.1524" layer="91"/>
<wire x1="655.32" y1="972.82" x2="706.12" y2="972.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$210" class="0">
<segment>
<wire x1="657.86" y1="982.98" x2="657.86" y2="960.12" width="0.1524" layer="91"/>
<pinref part="U$27" gate="G$1" pin="INCOIL1"/>
<wire x1="657.86" y1="960.12" x2="652.78" y2="960.12" width="0.1524" layer="91"/>
<pinref part="U27" gate="G$1" pin="IN0A"/>
<wire x1="706.12" y1="982.98" x2="657.86" y2="982.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$211" class="0">
<segment>
<wire x1="660.4" y1="980.44" x2="660.4" y2="944.88" width="0.1524" layer="91"/>
<pinref part="U$27" gate="G$1" pin="EXITCOIL1"/>
<wire x1="660.4" y1="944.88" x2="652.78" y2="944.88" width="0.1524" layer="91"/>
<pinref part="U27" gate="G$1" pin="IN0B"/>
<wire x1="660.4" y1="980.44" x2="706.12" y2="980.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$212" class="0">
<segment>
<pinref part="U27" gate="G$1" pin="IN2A"/>
<wire x1="706.12" y1="967.74" x2="662.94" y2="967.74" width="0.1524" layer="91"/>
<wire x1="662.94" y1="967.74" x2="662.94" y2="934.72" width="0.1524" layer="91"/>
<wire x1="662.94" y1="934.72" x2="563.88" y2="934.72" width="0.1524" layer="91"/>
<wire x1="563.88" y1="934.72" x2="563.88" y2="970.28" width="0.1524" layer="91"/>
<pinref part="U$27" gate="G$1" pin="EXITCOIL2"/>
<wire x1="563.88" y1="970.28" x2="581.66" y2="970.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$213" class="0">
<segment>
<pinref part="U27" gate="G$1" pin="IN2B"/>
<wire x1="558.8" y1="985.52" x2="558.8" y2="932.18" width="0.1524" layer="91"/>
<wire x1="558.8" y1="932.18" x2="665.48" y2="932.18" width="0.1524" layer="91"/>
<wire x1="665.48" y1="932.18" x2="665.48" y2="965.2" width="0.1524" layer="91"/>
<wire x1="665.48" y1="965.2" x2="706.12" y2="965.2" width="0.1524" layer="91"/>
<pinref part="U$27" gate="G$1" pin="INCOIL2"/>
<wire x1="558.8" y1="985.52" x2="581.66" y2="985.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$214" class="0">
<segment>
<pinref part="U27" gate="G$1" pin="IN3A"/>
<wire x1="706.12" y1="960.12" x2="668.02" y2="960.12" width="0.1524" layer="91"/>
<wire x1="668.02" y1="960.12" x2="668.02" y2="929.64" width="0.1524" layer="91"/>
<wire x1="668.02" y1="929.64" x2="553.72" y2="929.64" width="0.1524" layer="91"/>
<pinref part="U$27" gate="G$1" pin="INCOIL3"/>
<wire x1="553.72" y1="929.64" x2="553.72" y2="960.12" width="0.1524" layer="91"/>
<wire x1="553.72" y1="960.12" x2="581.66" y2="960.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$215" class="0">
<segment>
<pinref part="U27" gate="G$1" pin="IN3B"/>
<pinref part="U$27" gate="G$1" pin="EXITCOIL3"/>
<wire x1="581.66" y1="944.88" x2="548.64" y2="944.88" width="0.1524" layer="91"/>
<wire x1="548.64" y1="944.88" x2="548.64" y2="927.1" width="0.1524" layer="91"/>
<wire x1="548.64" y1="927.1" x2="670.56" y2="927.1" width="0.1524" layer="91"/>
<wire x1="670.56" y1="927.1" x2="670.56" y2="957.58" width="0.1524" layer="91"/>
<wire x1="670.56" y1="957.58" x2="706.12" y2="957.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$216" class="0">
<segment>
<pinref part="U27" gate="G$1" pin="IN1A"/>
<wire x1="706.12" y1="975.36" x2="685.8" y2="975.36" width="0.1524" layer="91"/>
<wire x1="685.8" y1="975.36" x2="685.8" y2="985.52" width="0.1524" layer="91"/>
<pinref part="U$27" gate="G$1" pin="INCOIL0"/>
<wire x1="685.8" y1="985.52" x2="652.78" y2="985.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SCL26" class="0">
<segment>
<wire x1="820.42" y1="977.9" x2="805.18" y2="977.9" width="0.1524" layer="91"/>
<pinref part="PAD254" gate="G$1" pin="P"/>
<wire x1="797.56" y1="957.58" x2="797.56" y2="965.2" width="0.1524" layer="91"/>
<pinref part="U27" gate="G$1" pin="SCL"/>
<pinref part="R105" gate="G$1" pin="1"/>
<wire x1="749.3" y1="957.58" x2="762" y2="957.58" width="0.1524" layer="91"/>
<wire x1="762" y1="957.58" x2="762" y2="967.74" width="0.1524" layer="91"/>
<wire x1="797.56" y1="957.58" x2="762" y2="957.58" width="0.1524" layer="91"/>
<junction x="762" y="957.58"/>
<wire x1="815.34" y1="965.2" x2="805.18" y2="965.2" width="0.1524" layer="91"/>
<pinref part="PAD249" gate="G$1" pin="P"/>
<wire x1="805.18" y1="965.2" x2="797.56" y2="965.2" width="0.1524" layer="91"/>
<wire x1="805.18" y1="977.9" x2="805.18" y2="965.2" width="0.1524" layer="91"/>
<junction x="805.18" y="965.2"/>
</segment>
</net>
<net name="SDA26" class="0">
<segment>
<pinref part="PAD253" gate="G$1" pin="P"/>
<wire x1="802.64" y1="985.52" x2="820.42" y2="985.52" width="0.1524" layer="91"/>
<pinref part="U27" gate="G$1" pin="SDA"/>
<pinref part="R106" gate="G$1" pin="1"/>
<wire x1="749.3" y1="960.12" x2="754.38" y2="960.12" width="0.1524" layer="91"/>
<wire x1="754.38" y1="960.12" x2="754.38" y2="967.74" width="0.1524" layer="91"/>
<wire x1="754.38" y1="960.12" x2="795.02" y2="960.12" width="0.1524" layer="91"/>
<wire x1="795.02" y1="960.12" x2="795.02" y2="972.82" width="0.1524" layer="91"/>
<junction x="754.38" y="960.12"/>
<wire x1="795.02" y1="972.82" x2="802.64" y2="972.82" width="0.1524" layer="91"/>
<pinref part="PAD248" gate="G$1" pin="P"/>
<wire x1="802.64" y1="972.82" x2="812.8" y2="972.82" width="0.1524" layer="91"/>
<wire x1="802.64" y1="985.52" x2="802.64" y2="972.82" width="0.1524" layer="91"/>
<junction x="802.64" y="972.82"/>
</segment>
</net>
<net name="ADDR28" class="0">
<segment>
<pinref part="R115" gate="G$1" pin="1"/>
<pinref part="R116" gate="G$1" pin="2"/>
<wire x1="843.28" y1="805.18" x2="843.28" y2="807.72" width="0.1524" layer="91"/>
<pinref part="U29" gate="G$1" pin="ADDR"/>
<wire x1="754.38" y1="807.72" x2="835.66" y2="807.72" width="0.1524" layer="91"/>
<wire x1="835.66" y1="807.72" x2="835.66" y2="805.18" width="0.1524" layer="91"/>
<wire x1="835.66" y1="805.18" x2="843.28" y2="805.18" width="0.1524" layer="91"/>
<junction x="843.28" y="805.18"/>
</segment>
</net>
<net name="INTRPT28" class="0">
<segment>
<pinref part="U29" gate="G$1" pin="INTB"/>
<wire x1="754.38" y1="835.66" x2="759.46" y2="835.66" width="0.1524" layer="91"/>
<wire x1="759.46" y1="835.66" x2="759.46" y2="843.28" width="0.1524" layer="91"/>
<wire x1="759.46" y1="843.28" x2="772.16" y2="843.28" width="0.1524" layer="91"/>
<wire x1="772.16" y1="843.28" x2="772.16" y2="830.58" width="0.1524" layer="91"/>
<wire x1="772.16" y1="830.58" x2="784.86" y2="830.58" width="0.1524" layer="91"/>
<pinref part="PAD267" gate="G$1" pin="P"/>
<pinref part="PAD272" gate="G$1" pin="P"/>
<wire x1="784.86" y1="830.58" x2="787.4" y2="830.58" width="0.1524" layer="91"/>
<wire x1="792.48" y1="840.74" x2="784.86" y2="840.74" width="0.1524" layer="91"/>
<wire x1="784.86" y1="840.74" x2="784.86" y2="830.58" width="0.1524" layer="91"/>
<junction x="784.86" y="830.58"/>
</segment>
</net>
<net name="N$225" class="0">
<segment>
<pinref part="U$29" gate="G$1" pin="EXITCOIL0"/>
<wire x1="660.4" y1="825.5" x2="657.86" y2="825.5" width="0.1524" layer="91"/>
<pinref part="U29" gate="G$1" pin="IN1B"/>
<wire x1="660.4" y1="825.5" x2="660.4" y2="828.04" width="0.1524" layer="91"/>
<wire x1="660.4" y1="828.04" x2="711.2" y2="828.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$226" class="0">
<segment>
<wire x1="662.94" y1="838.2" x2="662.94" y2="815.34" width="0.1524" layer="91"/>
<pinref part="U$29" gate="G$1" pin="INCOIL1"/>
<wire x1="662.94" y1="815.34" x2="657.86" y2="815.34" width="0.1524" layer="91"/>
<pinref part="U29" gate="G$1" pin="IN0A"/>
<wire x1="711.2" y1="838.2" x2="662.94" y2="838.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$227" class="0">
<segment>
<wire x1="665.48" y1="835.66" x2="665.48" y2="800.1" width="0.1524" layer="91"/>
<pinref part="U$29" gate="G$1" pin="EXITCOIL1"/>
<wire x1="665.48" y1="800.1" x2="657.86" y2="800.1" width="0.1524" layer="91"/>
<pinref part="U29" gate="G$1" pin="IN0B"/>
<wire x1="665.48" y1="835.66" x2="711.2" y2="835.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$228" class="0">
<segment>
<pinref part="U29" gate="G$1" pin="IN2A"/>
<wire x1="711.2" y1="822.96" x2="668.02" y2="822.96" width="0.1524" layer="91"/>
<wire x1="668.02" y1="822.96" x2="668.02" y2="789.94" width="0.1524" layer="91"/>
<wire x1="668.02" y1="789.94" x2="568.96" y2="789.94" width="0.1524" layer="91"/>
<wire x1="568.96" y1="789.94" x2="568.96" y2="825.5" width="0.1524" layer="91"/>
<pinref part="U$29" gate="G$1" pin="EXITCOIL2"/>
<wire x1="568.96" y1="825.5" x2="586.74" y2="825.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$229" class="0">
<segment>
<pinref part="U29" gate="G$1" pin="IN2B"/>
<wire x1="563.88" y1="840.74" x2="563.88" y2="787.4" width="0.1524" layer="91"/>
<wire x1="563.88" y1="787.4" x2="670.56" y2="787.4" width="0.1524" layer="91"/>
<wire x1="670.56" y1="787.4" x2="670.56" y2="820.42" width="0.1524" layer="91"/>
<wire x1="670.56" y1="820.42" x2="711.2" y2="820.42" width="0.1524" layer="91"/>
<pinref part="U$29" gate="G$1" pin="INCOIL2"/>
<wire x1="563.88" y1="840.74" x2="586.74" y2="840.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$230" class="0">
<segment>
<pinref part="U29" gate="G$1" pin="IN3A"/>
<wire x1="711.2" y1="815.34" x2="673.1" y2="815.34" width="0.1524" layer="91"/>
<wire x1="673.1" y1="815.34" x2="673.1" y2="784.86" width="0.1524" layer="91"/>
<wire x1="673.1" y1="784.86" x2="558.8" y2="784.86" width="0.1524" layer="91"/>
<pinref part="U$29" gate="G$1" pin="INCOIL3"/>
<wire x1="558.8" y1="784.86" x2="558.8" y2="815.34" width="0.1524" layer="91"/>
<wire x1="558.8" y1="815.34" x2="586.74" y2="815.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$231" class="0">
<segment>
<pinref part="U29" gate="G$1" pin="IN3B"/>
<pinref part="U$29" gate="G$1" pin="EXITCOIL3"/>
<wire x1="586.74" y1="800.1" x2="553.72" y2="800.1" width="0.1524" layer="91"/>
<wire x1="553.72" y1="800.1" x2="553.72" y2="782.32" width="0.1524" layer="91"/>
<wire x1="553.72" y1="782.32" x2="675.64" y2="782.32" width="0.1524" layer="91"/>
<wire x1="675.64" y1="782.32" x2="675.64" y2="812.8" width="0.1524" layer="91"/>
<wire x1="675.64" y1="812.8" x2="711.2" y2="812.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$232" class="0">
<segment>
<pinref part="U29" gate="G$1" pin="IN1A"/>
<wire x1="711.2" y1="830.58" x2="690.88" y2="830.58" width="0.1524" layer="91"/>
<wire x1="690.88" y1="830.58" x2="690.88" y2="840.74" width="0.1524" layer="91"/>
<pinref part="U$29" gate="G$1" pin="INCOIL0"/>
<wire x1="690.88" y1="840.74" x2="657.86" y2="840.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SCL28" class="0">
<segment>
<wire x1="825.5" y1="833.12" x2="810.26" y2="833.12" width="0.1524" layer="91"/>
<pinref part="PAD274" gate="G$1" pin="P"/>
<wire x1="802.64" y1="812.8" x2="802.64" y2="820.42" width="0.1524" layer="91"/>
<pinref part="U29" gate="G$1" pin="SCL"/>
<pinref part="R113" gate="G$1" pin="1"/>
<wire x1="754.38" y1="812.8" x2="767.08" y2="812.8" width="0.1524" layer="91"/>
<wire x1="767.08" y1="812.8" x2="767.08" y2="822.96" width="0.1524" layer="91"/>
<wire x1="802.64" y1="812.8" x2="767.08" y2="812.8" width="0.1524" layer="91"/>
<junction x="767.08" y="812.8"/>
<wire x1="820.42" y1="820.42" x2="810.26" y2="820.42" width="0.1524" layer="91"/>
<pinref part="PAD269" gate="G$1" pin="P"/>
<wire x1="810.26" y1="820.42" x2="802.64" y2="820.42" width="0.1524" layer="91"/>
<wire x1="810.26" y1="833.12" x2="810.26" y2="820.42" width="0.1524" layer="91"/>
<junction x="810.26" y="820.42"/>
</segment>
</net>
<net name="SDA28" class="0">
<segment>
<pinref part="PAD273" gate="G$1" pin="P"/>
<wire x1="807.72" y1="840.74" x2="825.5" y2="840.74" width="0.1524" layer="91"/>
<pinref part="U29" gate="G$1" pin="SDA"/>
<pinref part="R114" gate="G$1" pin="1"/>
<wire x1="754.38" y1="815.34" x2="759.46" y2="815.34" width="0.1524" layer="91"/>
<wire x1="759.46" y1="815.34" x2="759.46" y2="822.96" width="0.1524" layer="91"/>
<wire x1="759.46" y1="815.34" x2="800.1" y2="815.34" width="0.1524" layer="91"/>
<wire x1="800.1" y1="815.34" x2="800.1" y2="828.04" width="0.1524" layer="91"/>
<junction x="759.46" y="815.34"/>
<wire x1="800.1" y1="828.04" x2="807.72" y2="828.04" width="0.1524" layer="91"/>
<pinref part="PAD268" gate="G$1" pin="P"/>
<wire x1="807.72" y1="828.04" x2="817.88" y2="828.04" width="0.1524" layer="91"/>
<wire x1="807.72" y1="840.74" x2="807.72" y2="828.04" width="0.1524" layer="91"/>
<junction x="807.72" y="828.04"/>
</segment>
</net>
<net name="ADDR30" class="0">
<segment>
<pinref part="R123" gate="G$1" pin="1"/>
<pinref part="R124" gate="G$1" pin="2"/>
<wire x1="858.52" y1="683.26" x2="858.52" y2="685.8" width="0.1524" layer="91"/>
<pinref part="U31" gate="G$1" pin="ADDR"/>
<wire x1="769.62" y1="685.8" x2="850.9" y2="685.8" width="0.1524" layer="91"/>
<wire x1="850.9" y1="685.8" x2="850.9" y2="683.26" width="0.1524" layer="91"/>
<wire x1="850.9" y1="683.26" x2="858.52" y2="683.26" width="0.1524" layer="91"/>
<junction x="858.52" y="683.26"/>
</segment>
</net>
<net name="INTRPT30" class="0">
<segment>
<pinref part="U31" gate="G$1" pin="INTB"/>
<wire x1="769.62" y1="713.74" x2="774.7" y2="713.74" width="0.1524" layer="91"/>
<wire x1="774.7" y1="713.74" x2="774.7" y2="721.36" width="0.1524" layer="91"/>
<wire x1="774.7" y1="721.36" x2="787.4" y2="721.36" width="0.1524" layer="91"/>
<wire x1="787.4" y1="721.36" x2="787.4" y2="708.66" width="0.1524" layer="91"/>
<wire x1="787.4" y1="708.66" x2="800.1" y2="708.66" width="0.1524" layer="91"/>
<pinref part="PAD287" gate="G$1" pin="P"/>
<pinref part="PAD292" gate="G$1" pin="P"/>
<wire x1="800.1" y1="708.66" x2="802.64" y2="708.66" width="0.1524" layer="91"/>
<wire x1="807.72" y1="718.82" x2="800.1" y2="718.82" width="0.1524" layer="91"/>
<wire x1="800.1" y1="718.82" x2="800.1" y2="708.66" width="0.1524" layer="91"/>
<junction x="800.1" y="708.66"/>
</segment>
</net>
<net name="N$241" class="0">
<segment>
<pinref part="U$31" gate="G$1" pin="EXITCOIL0"/>
<wire x1="675.64" y1="703.58" x2="673.1" y2="703.58" width="0.1524" layer="91"/>
<pinref part="U31" gate="G$1" pin="IN1B"/>
<wire x1="675.64" y1="703.58" x2="675.64" y2="706.12" width="0.1524" layer="91"/>
<wire x1="675.64" y1="706.12" x2="726.44" y2="706.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$242" class="0">
<segment>
<wire x1="678.18" y1="716.28" x2="678.18" y2="693.42" width="0.1524" layer="91"/>
<pinref part="U$31" gate="G$1" pin="INCOIL1"/>
<wire x1="678.18" y1="693.42" x2="673.1" y2="693.42" width="0.1524" layer="91"/>
<pinref part="U31" gate="G$1" pin="IN0A"/>
<wire x1="726.44" y1="716.28" x2="678.18" y2="716.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$243" class="0">
<segment>
<wire x1="680.72" y1="713.74" x2="680.72" y2="678.18" width="0.1524" layer="91"/>
<pinref part="U$31" gate="G$1" pin="EXITCOIL1"/>
<wire x1="680.72" y1="678.18" x2="673.1" y2="678.18" width="0.1524" layer="91"/>
<pinref part="U31" gate="G$1" pin="IN0B"/>
<wire x1="680.72" y1="713.74" x2="726.44" y2="713.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$244" class="0">
<segment>
<pinref part="U31" gate="G$1" pin="IN2A"/>
<wire x1="726.44" y1="701.04" x2="683.26" y2="701.04" width="0.1524" layer="91"/>
<wire x1="683.26" y1="701.04" x2="683.26" y2="668.02" width="0.1524" layer="91"/>
<wire x1="683.26" y1="668.02" x2="584.2" y2="668.02" width="0.1524" layer="91"/>
<wire x1="584.2" y1="668.02" x2="584.2" y2="703.58" width="0.1524" layer="91"/>
<pinref part="U$31" gate="G$1" pin="EXITCOIL2"/>
<wire x1="584.2" y1="703.58" x2="601.98" y2="703.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$245" class="0">
<segment>
<pinref part="U31" gate="G$1" pin="IN2B"/>
<wire x1="579.12" y1="718.82" x2="579.12" y2="665.48" width="0.1524" layer="91"/>
<wire x1="579.12" y1="665.48" x2="685.8" y2="665.48" width="0.1524" layer="91"/>
<wire x1="685.8" y1="665.48" x2="685.8" y2="698.5" width="0.1524" layer="91"/>
<wire x1="685.8" y1="698.5" x2="726.44" y2="698.5" width="0.1524" layer="91"/>
<pinref part="U$31" gate="G$1" pin="INCOIL2"/>
<wire x1="579.12" y1="718.82" x2="601.98" y2="718.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$246" class="0">
<segment>
<pinref part="U31" gate="G$1" pin="IN3A"/>
<wire x1="726.44" y1="693.42" x2="688.34" y2="693.42" width="0.1524" layer="91"/>
<wire x1="688.34" y1="693.42" x2="688.34" y2="662.94" width="0.1524" layer="91"/>
<wire x1="688.34" y1="662.94" x2="574.04" y2="662.94" width="0.1524" layer="91"/>
<pinref part="U$31" gate="G$1" pin="INCOIL3"/>
<wire x1="574.04" y1="662.94" x2="574.04" y2="693.42" width="0.1524" layer="91"/>
<wire x1="574.04" y1="693.42" x2="601.98" y2="693.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$247" class="0">
<segment>
<pinref part="U31" gate="G$1" pin="IN3B"/>
<pinref part="U$31" gate="G$1" pin="EXITCOIL3"/>
<wire x1="601.98" y1="678.18" x2="568.96" y2="678.18" width="0.1524" layer="91"/>
<wire x1="568.96" y1="678.18" x2="568.96" y2="660.4" width="0.1524" layer="91"/>
<wire x1="568.96" y1="660.4" x2="690.88" y2="660.4" width="0.1524" layer="91"/>
<wire x1="690.88" y1="660.4" x2="690.88" y2="690.88" width="0.1524" layer="91"/>
<wire x1="690.88" y1="690.88" x2="726.44" y2="690.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$248" class="0">
<segment>
<pinref part="U31" gate="G$1" pin="IN1A"/>
<wire x1="726.44" y1="708.66" x2="706.12" y2="708.66" width="0.1524" layer="91"/>
<wire x1="706.12" y1="708.66" x2="706.12" y2="718.82" width="0.1524" layer="91"/>
<pinref part="U$31" gate="G$1" pin="INCOIL0"/>
<wire x1="706.12" y1="718.82" x2="673.1" y2="718.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SCL30" class="0">
<segment>
<wire x1="840.74" y1="711.2" x2="825.5" y2="711.2" width="0.1524" layer="91"/>
<pinref part="PAD294" gate="G$1" pin="P"/>
<wire x1="817.88" y1="690.88" x2="817.88" y2="698.5" width="0.1524" layer="91"/>
<pinref part="U31" gate="G$1" pin="SCL"/>
<pinref part="R121" gate="G$1" pin="1"/>
<wire x1="769.62" y1="690.88" x2="782.32" y2="690.88" width="0.1524" layer="91"/>
<wire x1="782.32" y1="690.88" x2="782.32" y2="701.04" width="0.1524" layer="91"/>
<wire x1="817.88" y1="690.88" x2="782.32" y2="690.88" width="0.1524" layer="91"/>
<junction x="782.32" y="690.88"/>
<wire x1="835.66" y1="698.5" x2="825.5" y2="698.5" width="0.1524" layer="91"/>
<pinref part="PAD289" gate="G$1" pin="P"/>
<wire x1="825.5" y1="698.5" x2="817.88" y2="698.5" width="0.1524" layer="91"/>
<wire x1="825.5" y1="711.2" x2="825.5" y2="698.5" width="0.1524" layer="91"/>
<junction x="825.5" y="698.5"/>
</segment>
</net>
<net name="SDA30" class="0">
<segment>
<pinref part="PAD293" gate="G$1" pin="P"/>
<wire x1="822.96" y1="718.82" x2="840.74" y2="718.82" width="0.1524" layer="91"/>
<pinref part="U31" gate="G$1" pin="SDA"/>
<pinref part="R122" gate="G$1" pin="1"/>
<wire x1="769.62" y1="693.42" x2="774.7" y2="693.42" width="0.1524" layer="91"/>
<wire x1="774.7" y1="693.42" x2="774.7" y2="701.04" width="0.1524" layer="91"/>
<wire x1="774.7" y1="693.42" x2="815.34" y2="693.42" width="0.1524" layer="91"/>
<wire x1="815.34" y1="693.42" x2="815.34" y2="706.12" width="0.1524" layer="91"/>
<junction x="774.7" y="693.42"/>
<wire x1="815.34" y1="706.12" x2="822.96" y2="706.12" width="0.1524" layer="91"/>
<pinref part="PAD288" gate="G$1" pin="P"/>
<wire x1="822.96" y1="706.12" x2="833.12" y2="706.12" width="0.1524" layer="91"/>
<wire x1="822.96" y1="718.82" x2="822.96" y2="706.12" width="0.1524" layer="91"/>
<junction x="822.96" y="706.12"/>
</segment>
</net>
<net name="ADDR32" class="0">
<segment>
<pinref part="R131" gate="G$1" pin="1"/>
<pinref part="R132" gate="G$1" pin="2"/>
<wire x1="876.3" y1="556.26" x2="876.3" y2="558.8" width="0.1524" layer="91"/>
<pinref part="U33" gate="G$1" pin="ADDR"/>
<wire x1="787.4" y1="558.8" x2="868.68" y2="558.8" width="0.1524" layer="91"/>
<wire x1="868.68" y1="558.8" x2="868.68" y2="556.26" width="0.1524" layer="91"/>
<wire x1="868.68" y1="556.26" x2="876.3" y2="556.26" width="0.1524" layer="91"/>
<junction x="876.3" y="556.26"/>
</segment>
</net>
<net name="INTRPT32" class="0">
<segment>
<pinref part="U33" gate="G$1" pin="INTB"/>
<wire x1="787.4" y1="586.74" x2="792.48" y2="586.74" width="0.1524" layer="91"/>
<wire x1="792.48" y1="586.74" x2="792.48" y2="594.36" width="0.1524" layer="91"/>
<wire x1="792.48" y1="594.36" x2="805.18" y2="594.36" width="0.1524" layer="91"/>
<wire x1="805.18" y1="594.36" x2="805.18" y2="581.66" width="0.1524" layer="91"/>
<wire x1="805.18" y1="581.66" x2="817.88" y2="581.66" width="0.1524" layer="91"/>
<pinref part="PAD307" gate="G$1" pin="P"/>
<pinref part="PAD312" gate="G$1" pin="P"/>
<wire x1="817.88" y1="581.66" x2="820.42" y2="581.66" width="0.1524" layer="91"/>
<wire x1="825.5" y1="591.82" x2="817.88" y2="591.82" width="0.1524" layer="91"/>
<wire x1="817.88" y1="591.82" x2="817.88" y2="581.66" width="0.1524" layer="91"/>
<junction x="817.88" y="581.66"/>
</segment>
</net>
<net name="N$257" class="0">
<segment>
<pinref part="U$33" gate="G$1" pin="EXITCOIL0"/>
<wire x1="693.42" y1="576.58" x2="690.88" y2="576.58" width="0.1524" layer="91"/>
<pinref part="U33" gate="G$1" pin="IN1B"/>
<wire x1="693.42" y1="576.58" x2="693.42" y2="579.12" width="0.1524" layer="91"/>
<wire x1="693.42" y1="579.12" x2="744.22" y2="579.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$258" class="0">
<segment>
<wire x1="695.96" y1="589.28" x2="695.96" y2="566.42" width="0.1524" layer="91"/>
<pinref part="U$33" gate="G$1" pin="INCOIL1"/>
<wire x1="695.96" y1="566.42" x2="690.88" y2="566.42" width="0.1524" layer="91"/>
<pinref part="U33" gate="G$1" pin="IN0A"/>
<wire x1="744.22" y1="589.28" x2="695.96" y2="589.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$259" class="0">
<segment>
<wire x1="698.5" y1="586.74" x2="698.5" y2="551.18" width="0.1524" layer="91"/>
<pinref part="U$33" gate="G$1" pin="EXITCOIL1"/>
<wire x1="698.5" y1="551.18" x2="690.88" y2="551.18" width="0.1524" layer="91"/>
<pinref part="U33" gate="G$1" pin="IN0B"/>
<wire x1="698.5" y1="586.74" x2="744.22" y2="586.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$260" class="0">
<segment>
<pinref part="U33" gate="G$1" pin="IN2A"/>
<wire x1="744.22" y1="574.04" x2="701.04" y2="574.04" width="0.1524" layer="91"/>
<wire x1="701.04" y1="574.04" x2="701.04" y2="541.02" width="0.1524" layer="91"/>
<wire x1="701.04" y1="541.02" x2="601.98" y2="541.02" width="0.1524" layer="91"/>
<wire x1="601.98" y1="541.02" x2="601.98" y2="576.58" width="0.1524" layer="91"/>
<pinref part="U$33" gate="G$1" pin="EXITCOIL2"/>
<wire x1="601.98" y1="576.58" x2="619.76" y2="576.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$261" class="0">
<segment>
<pinref part="U33" gate="G$1" pin="IN2B"/>
<wire x1="596.9" y1="591.82" x2="596.9" y2="538.48" width="0.1524" layer="91"/>
<wire x1="596.9" y1="538.48" x2="703.58" y2="538.48" width="0.1524" layer="91"/>
<wire x1="703.58" y1="538.48" x2="703.58" y2="571.5" width="0.1524" layer="91"/>
<wire x1="703.58" y1="571.5" x2="744.22" y2="571.5" width="0.1524" layer="91"/>
<pinref part="U$33" gate="G$1" pin="INCOIL2"/>
<wire x1="596.9" y1="591.82" x2="619.76" y2="591.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$262" class="0">
<segment>
<pinref part="U33" gate="G$1" pin="IN3A"/>
<wire x1="744.22" y1="566.42" x2="706.12" y2="566.42" width="0.1524" layer="91"/>
<wire x1="706.12" y1="566.42" x2="706.12" y2="535.94" width="0.1524" layer="91"/>
<wire x1="706.12" y1="535.94" x2="591.82" y2="535.94" width="0.1524" layer="91"/>
<pinref part="U$33" gate="G$1" pin="INCOIL3"/>
<wire x1="591.82" y1="535.94" x2="591.82" y2="566.42" width="0.1524" layer="91"/>
<wire x1="591.82" y1="566.42" x2="619.76" y2="566.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$263" class="0">
<segment>
<pinref part="U33" gate="G$1" pin="IN3B"/>
<pinref part="U$33" gate="G$1" pin="EXITCOIL3"/>
<wire x1="619.76" y1="551.18" x2="586.74" y2="551.18" width="0.1524" layer="91"/>
<wire x1="586.74" y1="551.18" x2="586.74" y2="533.4" width="0.1524" layer="91"/>
<wire x1="586.74" y1="533.4" x2="708.66" y2="533.4" width="0.1524" layer="91"/>
<wire x1="708.66" y1="533.4" x2="708.66" y2="563.88" width="0.1524" layer="91"/>
<wire x1="708.66" y1="563.88" x2="744.22" y2="563.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$264" class="0">
<segment>
<pinref part="U33" gate="G$1" pin="IN1A"/>
<wire x1="744.22" y1="581.66" x2="723.9" y2="581.66" width="0.1524" layer="91"/>
<wire x1="723.9" y1="581.66" x2="723.9" y2="591.82" width="0.1524" layer="91"/>
<pinref part="U$33" gate="G$1" pin="INCOIL0"/>
<wire x1="723.9" y1="591.82" x2="690.88" y2="591.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SCL32" class="0">
<segment>
<wire x1="858.52" y1="584.2" x2="843.28" y2="584.2" width="0.1524" layer="91"/>
<pinref part="PAD314" gate="G$1" pin="P"/>
<wire x1="835.66" y1="563.88" x2="835.66" y2="571.5" width="0.1524" layer="91"/>
<pinref part="U33" gate="G$1" pin="SCL"/>
<pinref part="R129" gate="G$1" pin="1"/>
<wire x1="787.4" y1="563.88" x2="800.1" y2="563.88" width="0.1524" layer="91"/>
<wire x1="800.1" y1="563.88" x2="800.1" y2="574.04" width="0.1524" layer="91"/>
<wire x1="835.66" y1="563.88" x2="800.1" y2="563.88" width="0.1524" layer="91"/>
<junction x="800.1" y="563.88"/>
<wire x1="853.44" y1="571.5" x2="843.28" y2="571.5" width="0.1524" layer="91"/>
<pinref part="PAD309" gate="G$1" pin="P"/>
<wire x1="843.28" y1="571.5" x2="835.66" y2="571.5" width="0.1524" layer="91"/>
<wire x1="843.28" y1="584.2" x2="843.28" y2="571.5" width="0.1524" layer="91"/>
<junction x="843.28" y="571.5"/>
</segment>
</net>
<net name="SDA32" class="0">
<segment>
<pinref part="PAD313" gate="G$1" pin="P"/>
<wire x1="840.74" y1="591.82" x2="858.52" y2="591.82" width="0.1524" layer="91"/>
<pinref part="U33" gate="G$1" pin="SDA"/>
<pinref part="R130" gate="G$1" pin="1"/>
<wire x1="787.4" y1="566.42" x2="792.48" y2="566.42" width="0.1524" layer="91"/>
<wire x1="792.48" y1="566.42" x2="792.48" y2="574.04" width="0.1524" layer="91"/>
<wire x1="792.48" y1="566.42" x2="833.12" y2="566.42" width="0.1524" layer="91"/>
<wire x1="833.12" y1="566.42" x2="833.12" y2="579.12" width="0.1524" layer="91"/>
<junction x="792.48" y="566.42"/>
<wire x1="833.12" y1="579.12" x2="840.74" y2="579.12" width="0.1524" layer="91"/>
<pinref part="PAD308" gate="G$1" pin="P"/>
<wire x1="840.74" y1="579.12" x2="850.9" y2="579.12" width="0.1524" layer="91"/>
<wire x1="840.74" y1="591.82" x2="840.74" y2="579.12" width="0.1524" layer="91"/>
<junction x="840.74" y="579.12"/>
</segment>
</net>
<net name="ADDR34" class="0">
<segment>
<pinref part="R139" gate="G$1" pin="1"/>
<pinref part="R140" gate="G$1" pin="2"/>
<wire x1="482.6" y1="388.62" x2="482.6" y2="391.16" width="0.1524" layer="91"/>
<pinref part="U35" gate="G$1" pin="ADDR"/>
<wire x1="393.7" y1="391.16" x2="474.98" y2="391.16" width="0.1524" layer="91"/>
<wire x1="474.98" y1="391.16" x2="474.98" y2="388.62" width="0.1524" layer="91"/>
<wire x1="474.98" y1="388.62" x2="482.6" y2="388.62" width="0.1524" layer="91"/>
<junction x="482.6" y="388.62"/>
</segment>
</net>
<net name="INTRPT34" class="0">
<segment>
<pinref part="U35" gate="G$1" pin="INTB"/>
<wire x1="393.7" y1="419.1" x2="398.78" y2="419.1" width="0.1524" layer="91"/>
<wire x1="398.78" y1="419.1" x2="398.78" y2="426.72" width="0.1524" layer="91"/>
<wire x1="398.78" y1="426.72" x2="411.48" y2="426.72" width="0.1524" layer="91"/>
<wire x1="411.48" y1="426.72" x2="411.48" y2="414.02" width="0.1524" layer="91"/>
<wire x1="411.48" y1="414.02" x2="424.18" y2="414.02" width="0.1524" layer="91"/>
<pinref part="PAD327" gate="G$1" pin="P"/>
<pinref part="PAD332" gate="G$1" pin="P"/>
<wire x1="424.18" y1="414.02" x2="426.72" y2="414.02" width="0.1524" layer="91"/>
<wire x1="431.8" y1="424.18" x2="424.18" y2="424.18" width="0.1524" layer="91"/>
<wire x1="424.18" y1="424.18" x2="424.18" y2="414.02" width="0.1524" layer="91"/>
<junction x="424.18" y="414.02"/>
</segment>
</net>
<net name="N$273" class="0">
<segment>
<pinref part="U$35" gate="G$1" pin="EXITCOIL0"/>
<wire x1="299.72" y1="408.94" x2="297.18" y2="408.94" width="0.1524" layer="91"/>
<pinref part="U35" gate="G$1" pin="IN1B"/>
<wire x1="299.72" y1="408.94" x2="299.72" y2="411.48" width="0.1524" layer="91"/>
<wire x1="299.72" y1="411.48" x2="350.52" y2="411.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$274" class="0">
<segment>
<wire x1="302.26" y1="421.64" x2="302.26" y2="398.78" width="0.1524" layer="91"/>
<pinref part="U$35" gate="G$1" pin="INCOIL1"/>
<wire x1="302.26" y1="398.78" x2="297.18" y2="398.78" width="0.1524" layer="91"/>
<pinref part="U35" gate="G$1" pin="IN0A"/>
<wire x1="350.52" y1="421.64" x2="302.26" y2="421.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$275" class="0">
<segment>
<wire x1="304.8" y1="419.1" x2="304.8" y2="383.54" width="0.1524" layer="91"/>
<pinref part="U$35" gate="G$1" pin="EXITCOIL1"/>
<wire x1="304.8" y1="383.54" x2="297.18" y2="383.54" width="0.1524" layer="91"/>
<pinref part="U35" gate="G$1" pin="IN0B"/>
<wire x1="304.8" y1="419.1" x2="350.52" y2="419.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$276" class="0">
<segment>
<pinref part="U35" gate="G$1" pin="IN2A"/>
<wire x1="350.52" y1="406.4" x2="307.34" y2="406.4" width="0.1524" layer="91"/>
<wire x1="307.34" y1="406.4" x2="307.34" y2="373.38" width="0.1524" layer="91"/>
<wire x1="307.34" y1="373.38" x2="208.28" y2="373.38" width="0.1524" layer="91"/>
<wire x1="208.28" y1="373.38" x2="208.28" y2="408.94" width="0.1524" layer="91"/>
<pinref part="U$35" gate="G$1" pin="EXITCOIL2"/>
<wire x1="208.28" y1="408.94" x2="226.06" y2="408.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$277" class="0">
<segment>
<pinref part="U35" gate="G$1" pin="IN2B"/>
<wire x1="203.2" y1="424.18" x2="203.2" y2="370.84" width="0.1524" layer="91"/>
<wire x1="203.2" y1="370.84" x2="309.88" y2="370.84" width="0.1524" layer="91"/>
<wire x1="309.88" y1="370.84" x2="309.88" y2="403.86" width="0.1524" layer="91"/>
<wire x1="309.88" y1="403.86" x2="350.52" y2="403.86" width="0.1524" layer="91"/>
<pinref part="U$35" gate="G$1" pin="INCOIL2"/>
<wire x1="203.2" y1="424.18" x2="226.06" y2="424.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$278" class="0">
<segment>
<pinref part="U35" gate="G$1" pin="IN3A"/>
<wire x1="350.52" y1="398.78" x2="312.42" y2="398.78" width="0.1524" layer="91"/>
<wire x1="312.42" y1="398.78" x2="312.42" y2="368.3" width="0.1524" layer="91"/>
<wire x1="312.42" y1="368.3" x2="198.12" y2="368.3" width="0.1524" layer="91"/>
<pinref part="U$35" gate="G$1" pin="INCOIL3"/>
<wire x1="198.12" y1="368.3" x2="198.12" y2="398.78" width="0.1524" layer="91"/>
<wire x1="198.12" y1="398.78" x2="226.06" y2="398.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$279" class="0">
<segment>
<pinref part="U35" gate="G$1" pin="IN3B"/>
<pinref part="U$35" gate="G$1" pin="EXITCOIL3"/>
<wire x1="226.06" y1="383.54" x2="193.04" y2="383.54" width="0.1524" layer="91"/>
<wire x1="193.04" y1="383.54" x2="193.04" y2="365.76" width="0.1524" layer="91"/>
<wire x1="193.04" y1="365.76" x2="314.96" y2="365.76" width="0.1524" layer="91"/>
<wire x1="314.96" y1="365.76" x2="314.96" y2="396.24" width="0.1524" layer="91"/>
<wire x1="314.96" y1="396.24" x2="350.52" y2="396.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$280" class="0">
<segment>
<pinref part="U35" gate="G$1" pin="IN1A"/>
<wire x1="350.52" y1="414.02" x2="330.2" y2="414.02" width="0.1524" layer="91"/>
<wire x1="330.2" y1="414.02" x2="330.2" y2="424.18" width="0.1524" layer="91"/>
<pinref part="U$35" gate="G$1" pin="INCOIL0"/>
<wire x1="330.2" y1="424.18" x2="297.18" y2="424.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SCL34" class="0">
<segment>
<wire x1="464.82" y1="416.56" x2="449.58" y2="416.56" width="0.1524" layer="91"/>
<pinref part="PAD334" gate="G$1" pin="P"/>
<wire x1="441.96" y1="396.24" x2="441.96" y2="403.86" width="0.1524" layer="91"/>
<pinref part="U35" gate="G$1" pin="SCL"/>
<pinref part="R137" gate="G$1" pin="1"/>
<wire x1="393.7" y1="396.24" x2="406.4" y2="396.24" width="0.1524" layer="91"/>
<wire x1="406.4" y1="396.24" x2="406.4" y2="406.4" width="0.1524" layer="91"/>
<wire x1="441.96" y1="396.24" x2="406.4" y2="396.24" width="0.1524" layer="91"/>
<junction x="406.4" y="396.24"/>
<wire x1="459.74" y1="403.86" x2="449.58" y2="403.86" width="0.1524" layer="91"/>
<pinref part="PAD329" gate="G$1" pin="P"/>
<wire x1="449.58" y1="403.86" x2="441.96" y2="403.86" width="0.1524" layer="91"/>
<wire x1="449.58" y1="416.56" x2="449.58" y2="403.86" width="0.1524" layer="91"/>
<junction x="449.58" y="403.86"/>
</segment>
</net>
<net name="SDA34" class="0">
<segment>
<pinref part="PAD333" gate="G$1" pin="P"/>
<wire x1="447.04" y1="424.18" x2="464.82" y2="424.18" width="0.1524" layer="91"/>
<pinref part="U35" gate="G$1" pin="SDA"/>
<pinref part="R138" gate="G$1" pin="1"/>
<wire x1="393.7" y1="398.78" x2="398.78" y2="398.78" width="0.1524" layer="91"/>
<wire x1="398.78" y1="398.78" x2="398.78" y2="406.4" width="0.1524" layer="91"/>
<wire x1="398.78" y1="398.78" x2="439.42" y2="398.78" width="0.1524" layer="91"/>
<wire x1="439.42" y1="398.78" x2="439.42" y2="411.48" width="0.1524" layer="91"/>
<junction x="398.78" y="398.78"/>
<wire x1="439.42" y1="411.48" x2="447.04" y2="411.48" width="0.1524" layer="91"/>
<pinref part="PAD328" gate="G$1" pin="P"/>
<wire x1="447.04" y1="411.48" x2="457.2" y2="411.48" width="0.1524" layer="91"/>
<wire x1="447.04" y1="424.18" x2="447.04" y2="411.48" width="0.1524" layer="91"/>
<junction x="447.04" y="411.48"/>
</segment>
</net>
<net name="ADDR36" class="0">
<segment>
<pinref part="R147" gate="G$1" pin="1"/>
<pinref part="R148" gate="G$1" pin="2"/>
<wire x1="838.2" y1="419.1" x2="838.2" y2="421.64" width="0.1524" layer="91"/>
<pinref part="U37" gate="G$1" pin="ADDR"/>
<wire x1="749.3" y1="421.64" x2="830.58" y2="421.64" width="0.1524" layer="91"/>
<wire x1="830.58" y1="421.64" x2="830.58" y2="419.1" width="0.1524" layer="91"/>
<wire x1="830.58" y1="419.1" x2="838.2" y2="419.1" width="0.1524" layer="91"/>
<junction x="838.2" y="419.1"/>
</segment>
</net>
<net name="INTRPT36" class="0">
<segment>
<pinref part="U37" gate="G$1" pin="INTB"/>
<wire x1="749.3" y1="449.58" x2="754.38" y2="449.58" width="0.1524" layer="91"/>
<wire x1="754.38" y1="449.58" x2="754.38" y2="457.2" width="0.1524" layer="91"/>
<wire x1="754.38" y1="457.2" x2="767.08" y2="457.2" width="0.1524" layer="91"/>
<wire x1="767.08" y1="457.2" x2="767.08" y2="444.5" width="0.1524" layer="91"/>
<wire x1="767.08" y1="444.5" x2="779.78" y2="444.5" width="0.1524" layer="91"/>
<pinref part="PAD347" gate="G$1" pin="P"/>
<pinref part="PAD352" gate="G$1" pin="P"/>
<wire x1="779.78" y1="444.5" x2="782.32" y2="444.5" width="0.1524" layer="91"/>
<wire x1="787.4" y1="454.66" x2="779.78" y2="454.66" width="0.1524" layer="91"/>
<wire x1="779.78" y1="454.66" x2="779.78" y2="444.5" width="0.1524" layer="91"/>
<junction x="779.78" y="444.5"/>
</segment>
</net>
<net name="N$289" class="0">
<segment>
<pinref part="U$37" gate="G$1" pin="EXITCOIL0"/>
<wire x1="655.32" y1="439.42" x2="652.78" y2="439.42" width="0.1524" layer="91"/>
<pinref part="U37" gate="G$1" pin="IN1B"/>
<wire x1="655.32" y1="439.42" x2="655.32" y2="441.96" width="0.1524" layer="91"/>
<wire x1="655.32" y1="441.96" x2="706.12" y2="441.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$290" class="0">
<segment>
<wire x1="657.86" y1="452.12" x2="657.86" y2="429.26" width="0.1524" layer="91"/>
<pinref part="U$37" gate="G$1" pin="INCOIL1"/>
<wire x1="657.86" y1="429.26" x2="652.78" y2="429.26" width="0.1524" layer="91"/>
<pinref part="U37" gate="G$1" pin="IN0A"/>
<wire x1="706.12" y1="452.12" x2="657.86" y2="452.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$291" class="0">
<segment>
<wire x1="660.4" y1="449.58" x2="660.4" y2="414.02" width="0.1524" layer="91"/>
<pinref part="U$37" gate="G$1" pin="EXITCOIL1"/>
<wire x1="660.4" y1="414.02" x2="652.78" y2="414.02" width="0.1524" layer="91"/>
<pinref part="U37" gate="G$1" pin="IN0B"/>
<wire x1="660.4" y1="449.58" x2="706.12" y2="449.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$292" class="0">
<segment>
<pinref part="U37" gate="G$1" pin="IN2A"/>
<wire x1="706.12" y1="436.88" x2="662.94" y2="436.88" width="0.1524" layer="91"/>
<wire x1="662.94" y1="436.88" x2="662.94" y2="403.86" width="0.1524" layer="91"/>
<wire x1="662.94" y1="403.86" x2="563.88" y2="403.86" width="0.1524" layer="91"/>
<wire x1="563.88" y1="403.86" x2="563.88" y2="439.42" width="0.1524" layer="91"/>
<pinref part="U$37" gate="G$1" pin="EXITCOIL2"/>
<wire x1="563.88" y1="439.42" x2="581.66" y2="439.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$293" class="0">
<segment>
<pinref part="U37" gate="G$1" pin="IN2B"/>
<wire x1="558.8" y1="454.66" x2="558.8" y2="401.32" width="0.1524" layer="91"/>
<wire x1="558.8" y1="401.32" x2="665.48" y2="401.32" width="0.1524" layer="91"/>
<wire x1="665.48" y1="401.32" x2="665.48" y2="434.34" width="0.1524" layer="91"/>
<wire x1="665.48" y1="434.34" x2="706.12" y2="434.34" width="0.1524" layer="91"/>
<pinref part="U$37" gate="G$1" pin="INCOIL2"/>
<wire x1="558.8" y1="454.66" x2="581.66" y2="454.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$294" class="0">
<segment>
<pinref part="U37" gate="G$1" pin="IN3A"/>
<wire x1="706.12" y1="429.26" x2="668.02" y2="429.26" width="0.1524" layer="91"/>
<wire x1="668.02" y1="429.26" x2="668.02" y2="398.78" width="0.1524" layer="91"/>
<wire x1="668.02" y1="398.78" x2="553.72" y2="398.78" width="0.1524" layer="91"/>
<pinref part="U$37" gate="G$1" pin="INCOIL3"/>
<wire x1="553.72" y1="398.78" x2="553.72" y2="429.26" width="0.1524" layer="91"/>
<wire x1="553.72" y1="429.26" x2="581.66" y2="429.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$295" class="0">
<segment>
<pinref part="U37" gate="G$1" pin="IN3B"/>
<pinref part="U$37" gate="G$1" pin="EXITCOIL3"/>
<wire x1="581.66" y1="414.02" x2="548.64" y2="414.02" width="0.1524" layer="91"/>
<wire x1="548.64" y1="414.02" x2="548.64" y2="396.24" width="0.1524" layer="91"/>
<wire x1="548.64" y1="396.24" x2="670.56" y2="396.24" width="0.1524" layer="91"/>
<wire x1="670.56" y1="396.24" x2="670.56" y2="426.72" width="0.1524" layer="91"/>
<wire x1="670.56" y1="426.72" x2="706.12" y2="426.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$296" class="0">
<segment>
<pinref part="U37" gate="G$1" pin="IN1A"/>
<wire x1="706.12" y1="444.5" x2="685.8" y2="444.5" width="0.1524" layer="91"/>
<wire x1="685.8" y1="444.5" x2="685.8" y2="454.66" width="0.1524" layer="91"/>
<pinref part="U$37" gate="G$1" pin="INCOIL0"/>
<wire x1="685.8" y1="454.66" x2="652.78" y2="454.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SCL36" class="0">
<segment>
<wire x1="820.42" y1="447.04" x2="805.18" y2="447.04" width="0.1524" layer="91"/>
<pinref part="PAD354" gate="G$1" pin="P"/>
<wire x1="797.56" y1="426.72" x2="797.56" y2="434.34" width="0.1524" layer="91"/>
<pinref part="U37" gate="G$1" pin="SCL"/>
<pinref part="R145" gate="G$1" pin="1"/>
<wire x1="749.3" y1="426.72" x2="762" y2="426.72" width="0.1524" layer="91"/>
<wire x1="762" y1="426.72" x2="762" y2="436.88" width="0.1524" layer="91"/>
<wire x1="797.56" y1="426.72" x2="762" y2="426.72" width="0.1524" layer="91"/>
<junction x="762" y="426.72"/>
<wire x1="815.34" y1="434.34" x2="805.18" y2="434.34" width="0.1524" layer="91"/>
<pinref part="PAD349" gate="G$1" pin="P"/>
<wire x1="805.18" y1="434.34" x2="797.56" y2="434.34" width="0.1524" layer="91"/>
<wire x1="805.18" y1="447.04" x2="805.18" y2="434.34" width="0.1524" layer="91"/>
<junction x="805.18" y="434.34"/>
</segment>
</net>
<net name="SDA36" class="0">
<segment>
<pinref part="PAD353" gate="G$1" pin="P"/>
<wire x1="802.64" y1="454.66" x2="820.42" y2="454.66" width="0.1524" layer="91"/>
<pinref part="U37" gate="G$1" pin="SDA"/>
<pinref part="R146" gate="G$1" pin="1"/>
<wire x1="749.3" y1="429.26" x2="754.38" y2="429.26" width="0.1524" layer="91"/>
<wire x1="754.38" y1="429.26" x2="754.38" y2="436.88" width="0.1524" layer="91"/>
<wire x1="754.38" y1="429.26" x2="795.02" y2="429.26" width="0.1524" layer="91"/>
<wire x1="795.02" y1="429.26" x2="795.02" y2="441.96" width="0.1524" layer="91"/>
<junction x="754.38" y="429.26"/>
<wire x1="795.02" y1="441.96" x2="802.64" y2="441.96" width="0.1524" layer="91"/>
<pinref part="PAD348" gate="G$1" pin="P"/>
<wire x1="802.64" y1="441.96" x2="812.8" y2="441.96" width="0.1524" layer="91"/>
<wire x1="802.64" y1="454.66" x2="802.64" y2="441.96" width="0.1524" layer="91"/>
<junction x="802.64" y="441.96"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
