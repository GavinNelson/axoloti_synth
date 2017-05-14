<patch-1.0 appVersion="1.0.10">
   <obj type="patch/inlet a" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="in" x="1106" y="56">
      <params/>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="pitch" x="42" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="sss/math/glide_multi" uuid="78ca6107-ebdf-439f-9aad-d112fe763f7a" name="glide_multi_1" x="112" y="84">
      <params>
         <frac32.u.map name="glide" value="8.5"/>
         <int32.hradio name="mode" value="0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/inv" uuid="565521d3699b36d8095aa1c79b9ad0046fb133ce" name="inv_1" x="224" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="conv/bipolar2unipolar" uuid="f6f63d71053d572d3c795f83c7ec11dfbbce82dd" name="bipolar2unipolar_1" x="280" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="*c_5" x="392" y="84">
      <params>
         <frac32.u.map name="amp" value="13.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/*c" uuid="7d5ef61c3bcd571ee6bbd8437ef3612125dfb225" name="kbd" x="490" y="84">
      <params>
         <frac32.u.map name="amp" onParent="true" MidiCC="6" value="63.99999952316284"/>
      </params>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="time" x="588" y="84">
      <params>
         <frac32.u.map name="value" onParent="true" MidiCC="21" value="54.5"/>
      </params>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="44553fdc8628c67ab535845ed1be304ad6c9553b" name="+_2" x="644" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="+_1" x="1302" y="84">
      <params/>
      <attribs/>
   </obj>
   <obj type="delay/write sdram" uuid="5ae03f8d7b815edcfc40585d8bbac2ed48460fba" name="write_1" x="1372" y="84">
      <params/>
      <attribs>
         <combo attributeName="size" selection="32768 (682ms)"/>
      </attribs>
   </obj>
   <obj type="math/max" uuid="12440f9565ca6f036f087665b49fb708062e90d0" name="max_1" x="728" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/smooth" uuid="6c5d08c282bb08bff24af85b4891447f99bcbc97" name="smooth_1" x="826" y="126">
      <params>
         <frac32.u.map name="time" value="49.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="conv/interp" uuid="d68c1a8709d8b55e3de8715d727ec0a2d8569d9a" name="interp_1" x="910" y="126">
      <params/>
      <attribs/>
   </obj>
   <obj type="delay/read interp" uuid="e3d8b8823ab551c588659520bf6cc25c630466c7" name="read_1" x="980" y="126">
      <params>
         <frac32.u.map name="time" value="0.0"/>
      </params>
      <attribs>
         <objref attributeName="delayname" obj="write_1"/>
      </attribs>
   </obj>
   <obj type="math/*c" uuid="7a66f52a9594e7e9eb31328ea725cb3641a80b55" name="feedback" x="1134" y="126">
      <params>
         <frac32.u.map name="amp" onParent="true" MidiCC="4" value="41.0"/>
      </params>
      <attribs/>
   </obj>
   <comment type="patch/comment" x="224" y="140" text="TODO    make it track actual notes"/>
   <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_2" x="644" y="140">
      <params/>
      <attribs>
         <spinner attributeName="value" value="1"/>
      </attribs>
   </obj>
   <obj type="math/min" uuid="e8e70895f32cf1d38f8c4ed78774c30ff352375d" name="min_1" x="728" y="182">
      <params/>
      <attribs/>
   </obj>
   <obj type="const/i" uuid="e202f44b2df17ae0b3e663b98ea6b14c8ff00408" name="i_1" x="644" y="196">
      <params/>
      <attribs>
         <spinner attributeName="value" value="63"/>
      </attribs>
   </obj>
   <obj type="patch/outlet a" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="out" x="1372" y="224">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="read_1" outlet="out"/>
         <dest obj="feedback" inlet="in"/>
         <dest obj="out" inlet="outlet"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="write_1" inlet="in"/>
      </net>
      <net>
         <source obj="feedback" outlet="out"/>
         <dest obj="+_1" inlet="in2"/>
      </net>
      <net>
         <source obj="interp_1" outlet="o"/>
         <dest obj="read_1" inlet="time"/>
      </net>
      <net>
         <source obj="smooth_1" outlet="out"/>
         <dest obj="interp_1" inlet="i"/>
      </net>
      <net>
         <source obj="glide_multi_1" outlet="out"/>
         <dest obj="inv_1" inlet="in"/>
      </net>
      <net>
         <source obj="inv_1" outlet="out"/>
         <dest obj="bipolar2unipolar_1" inlet="i"/>
      </net>
      <net>
         <source obj="bipolar2unipolar_1" outlet="o"/>
         <dest obj="*c_5" inlet="in"/>
      </net>
      <net>
         <source obj="time" outlet="out"/>
         <dest obj="+_2" inlet="in2"/>
      </net>
      <net>
         <source obj="*c_5" outlet="out"/>
         <dest obj="kbd" inlet="in"/>
      </net>
      <net>
         <source obj="+_2" outlet="out"/>
         <dest obj="max_1" inlet="in1"/>
      </net>
      <net>
         <source obj="kbd" outlet="out"/>
         <dest obj="+_2" inlet="in1"/>
      </net>
      <net>
         <source obj="i_1" outlet="out"/>
         <dest obj="min_1" inlet="in2"/>
      </net>
      <net>
         <source obj="min_1" outlet="out"/>
         <dest obj="smooth_1" inlet="in"/>
      </net>
      <net>
         <source obj="i_2" outlet="out"/>
         <dest obj="max_1" inlet="in2"/>
      </net>
      <net>
         <source obj="max_1" outlet="out"/>
         <dest obj="min_1" inlet="in1"/>
      </net>
      <net>
         <source obj="in" outlet="inlet"/>
         <dest obj="+_1" inlet="in1"/>
      </net>
      <net>
         <source obj="pitch" outlet="inlet"/>
         <dest obj="glide_multi_1" inlet="in"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>-8</x>
      <y>-8</y>
      <width>1552</width>
      <height>840</height>
   </windowPos>
</patch-1.0>