
SECTIONS {
 .unmapped 0x108000: AT (0) {
  unmapped_ktext_start = .;
  *(K_TEXT_START);
  unmapped_ktext_end = .;

  unmapped_kdata_start = .;
  *(K_DATA_START);
  unmapped_kdata_end = .;
 }

 .mapped (((0x108000) + 0x80000000)+SIZEOF(.unmapped)): AT (SIZEOF(.unmapped)) {
  ktext_start = .;
  *(.text .text.*);
  ktext_end = .;

  kdata_start = .;
  *(.data);
  *(.rodata .rodata.*);
  *(COMMON);
  hardcoded_load_address = .;
  LONG(((0x108000) + 0x80000000));
  hardcoded_ktext_size = .;
  LONG((ktext_end - ktext_start) + (unmapped_ktext_end - unmapped_ktext_start));
  hardcoded_kdata_size = .;
  LONG((kdata_end - kdata_start) + (unmapped_kdata_end - unmapped_kdata_start));
  hardcoded_unmapped_ktext_size = .;
  LONG(unmapped_ktext_end - unmapped_ktext_start);
  hardcoded_unmapped_kdata_size = .;
  LONG(unmapped_kdata_end - unmapped_kdata_start);
  . = ALIGN(8);
  symbol_table = .;
  *(symtab.*);
  *(.bss);
  kdata_end = .;
 }
 /DISCARD/ : {
  *(*);
 }



 _hardcoded_unmapped_size = (unmapped_ktext_end - unmapped_ktext_start) + (unmapped_kdata_end - unmapped_kdata_start);
 ap_boot = unmapped_ap_boot - 0x108000 + 0x8000;
 ap_gdtr = unmapped_ap_gdtr - 0x108000 + 0x8000;
 protected_ap_gdtr = ((ap_gdtr) + 0x80000000);



}
