<patch-1.0 appVersion="1.0.10">
   <obj type="math/-1" uuid="e869edae3ba60b8ca33929e8a0a2b70a86074e11" name="-1_1" x="476" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/double" uuid="3b7c0f3e2d95da4ec849103bfaba6c1cee7b8661" name="double_1" x="532" y="42">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/max" uuid="1d512af879107527df7313f1749d700fa05b5376" name="max_1" x="630" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="inlet_1" x="14" y="70">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+1" uuid="6b958b82fafa8d61216203d28f9f0e4cd27fa2a6" name="+1_1" x="168" y="70">
      <params/>
      <attribs/>
   </obj>
   <obj type="conv/interp" uuid="d68c1a8709d8b55e3de8715d727ec0a2d8569d9a" name="interp_1" x="224" y="70">
      <params/>
      <attribs/>
   </obj>
   <obj type="sptnk/split/split 2" uuid="48e6f8d9-c7bc-4fc3-9765-91e5907dd286" name="split_1" x="294" y="70">
      <params>
         <frac32.s.map name="cutoff" value="33.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="drj/math/&lt; const i" uuid="b798cf9d5a1b4a65236aeb4da17a59539d64bc2f" name="&lt;_1" x="448" y="98">
      <params/>
      <attribs>
         <spinner attributeName="value" value="1"/>
      </attribs>
   </obj>
   <obj type="conv/interp" uuid="d68c1a8709d8b55e3de8715d727ec0a2d8569d9a" name="interp_2" x="546" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_1" x="784" y="98">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/-c" uuid="aafdb4cc793fc2dd9b2310a9833c7099a771cd33" name="-c_1" x="448" y="168">
      <params>
         <frac32.u.map name="c" value="33.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/double" uuid="3b7c0f3e2d95da4ec849103bfaba6c1cee7b8661" name="double_2" x="504" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/max" uuid="1d512af879107527df7313f1749d700fa05b5376" name="max_2" x="574" y="168">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="outlet_2" x="784" y="196">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="split_1" outlet="o1"/>
         <dest obj="&lt;_1" inlet="in"/>
         <dest obj="-1_1" inlet="a"/>
      </net>
      <net>
         <source obj="split_1" outlet="o2"/>
         <dest obj="-c_1" inlet="in"/>
      </net>
      <net>
         <source obj="interp_1" outlet="o"/>
         <dest obj="split_1" inlet="in"/>
      </net>
      <net>
         <source obj="+1_1" outlet="result"/>
         <dest obj="interp_1" inlet="i"/>
      </net>
      <net>
         <source obj="&lt;_1" outlet="out"/>
         <dest obj="interp_2" inlet="i"/>
      </net>
      <net>
         <source obj="interp_2" outlet="o"/>
         <dest obj="max_1" inlet="in2"/>
      </net>
      <net>
         <source obj="double_1" outlet="out"/>
         <dest obj="max_1" inlet="in1"/>
      </net>
      <net>
         <source obj="-1_1" outlet="result"/>
         <dest obj="double_1" inlet="in"/>
      </net>
      <net>
         <source obj="-c_1" outlet="out"/>
         <dest obj="double_2" inlet="in"/>
      </net>
      <net>
         <source obj="double_2" outlet="out"/>
         <dest obj="max_2" inlet="in1"/>
      </net>
      <net>
         <source obj="inlet_1" outlet="inlet"/>
         <dest obj="+1_1" inlet="a"/>
      </net>
      <net>
         <source obj="max_1" outlet="out"/>
         <dest obj="outlet_1" inlet="outlet"/>
      </net>
      <net>
         <source obj="max_2" outlet="out"/>
         <dest obj="outlet_2" inlet="outlet"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>400</x>
      <y>138</y>
      <width>1016</width>
      <height>400</height>
   </windowPos>
</patch-1.0>