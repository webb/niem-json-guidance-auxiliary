digraph G {
  graph [M_font_attrs, rankdir = TB];
  edge [M_font_attrs, dir = forward];
  node [M_font_attrs, width = 0, height = 0, shape = plain];
  
  "j:Crash" [label=<
    <TABLE>
      <TR><TD TD_attrs>\N</TD></TR>
    </TABLE>>];
  "j:Crash":e -> "j:CrashType":n;

  "j:CrashType" [label=<
    <TABLE>
      <TR><TD TD_attrs>\N</TD></TR>
      <HR/>
      <TR><TD port="cv" TD_attrs> - j:CrashVehicle [1-n]</TD></TR>
    </TABLE>>];
  "j:CrashType":cv:e -> "j:CrashVehicleType":n;

  "j:CrashVehicleType" [label=<
    <TABLE>
      <TR><TD TD_attrs>\N</TD></TR>
      <HR/>
      <TR><TD port="roi" TD_attrs> - nc:RoleOfItem: nc:ItemType [1]</TD></TR>
      <TR><TD port="cd" TD_attrs> - j:CrashDriver [1]</TD></TR>
    </TABLE>>];
  "j:CrashVehicleType":cd:e -> "j:CrashDriverType":n;
  "j:CrashVehicleType":roi:e -> "nc:VehicleType":n;

  "nc:VehicleType" [label=<
    <TABLE>
      <TR><TD TD_attrs>\N</TD></TR>
      <HR/>
      <TR><TD port="vi" TD_attrs> - nc:VehicleIdentification [1]</TD></TR>
    </TABLE>>];
  "nc:VehicleType":vi:e -> "nc:IdentificationType":n

  "nc:IdentificationType" [label=<
    <TABLE>
      <TR><TD TD_attrs>\N</TD></TR>
      <HR/>
      <TR><TD port="vi" TD_attrs> - nc:IdentificationID: niem-xs:string [1]</TD></TR>
    </TABLE>>];

  "j:CrashDriverType" [label=<
    <TABLE>
      <TR><TD TD_attrs>\N</TD></TR>
      <HR/>
      <TR><TD port="rop" TD_attrs> - nc:RoleOfPerson [1]</TD></TR>
    </TABLE>>];
  "j:CrashDriverType":rop:e -> "nc:PersonType";

  "nc:PersonType" [label=<
    <TABLE>
      <TR><TD TD_attrs>\N</TD></TR>
      <HR/>
      <TR><TD ALIGN="LEFT" BORDER="0" PORT="pn"> - nc:PersonName [1]</TD></TR>
    </TABLE>>];
  "nc:PersonType":pn:e -> "nc:PersonNameType":n;

  "nc:PersonNameType" [label=<
    <TABLE>
      <TR><TD TD_attrs>\N</TD></TR>
      <HR/>
      <TR><TD ALIGN="LEFT" BORDER="0" PORT="pn"> - nc:PersonFullName: nc:PersonNameTextType [1]</TD></TR>
    </TABLE>>];
}
