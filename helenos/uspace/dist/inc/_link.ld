

ENTRY(__entry)


PHDRS {




 text PT_LOAD FLAGS(5);

 data PT_LOAD FLAGS(6);



 debug PT_NOTE;
}

SECTIONS {



 . = 0x1000 + SIZEOF_HEADERS;


 .init : {
  *(.init);
 } :text

 .text : {
  *(.text .text.*);
  *(.rodata .rodata.*);
 } :text
 . = . + 0x1000;







 .data : {
  *(.data);
 } :data
 .tdata : {
  _tdata_start = .;
  *(.tdata);
  *(.gnu.linkonce.tb.*);
  _tdata_end = .;
  _tbss_start = .;
  *(.tbss);
  _tbss_end = .;
 } :data

 _tls_alignment = ALIGNOF(.tdata);


 .bss : {
  *(.dynbss);
  *(COMMON);
  *(.bss);
 } :data
 /DISCARD/ : {
  *(*);
 }
}
