digraph G {
  graph [M_font_attrs, rankdir = TB];
  edge [M_font_attrs, dir = forward];
  node [M_font_attrs, width = 0, height = 0, shape = record];
  
  "j:Crash" [label="\N\l"];
  "j:Crash":e -> "j:CrashType":n;

  "j:CrashType" [label="{<top>\N\l | { | {
                <cv>j:CrashVehicle [1-n]\l } } }"];
  "j:CrashType":top:e -> "j:CrashVehicleType":n;

  "j:CrashVehicleType" [label="{\N\l | { | {
                       <roi>nc:RoleOfItem [1]
                       | <cd>j:CrashDriver [1]
                       }}}"];
  "j:CrashVehicleType":cd:e -> "j:CrashDriverType":n;
  "j:CrashVehicleType":roi:e -> "nc:VehicleType":n;

  "nc:VehicleType" [label="{\N\l | { | {
                       <vi>nc:VehicleIdentification [1]
                       }}}"];
  "nc:VehicleType":vi:e -> "nc:IdentificationType":n

  "nc:IdentificationType" [label="{\N\l | { | {
                       nc:IdentificationID: niem-xs:string [1]
                       }}}"];

  "j:CrashDriverType" [label="{\N\l | { | {
                       <rop>nc:RoleOfPerson [1]
                       }}}"];
  "j:CrashDriverType":rop:e -> "nc:PersonType";

  "nc:PersonType" [label="{\N\l | { | {
                       <pn>nc:PersonName [1]
                       }}}"];
  "nc:PersonType":pn:e -> "nc:PersonNameType";

  "nc:PersonNameType" [label="{\N\l | { | {
                       nc:PersonFullName: nc:PersonNameTextType [1]
                       }}}"];
       
}
