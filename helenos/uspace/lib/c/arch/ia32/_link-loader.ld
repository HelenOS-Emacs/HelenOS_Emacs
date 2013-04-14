
STARTUP(/home/pratik/HelenOS_Emacs/helenos/uspace/lib/c/arch/ia32/src/entry.o)
ENTRY(__entry)


PHDRS {

 interp PT_INTERP;
 text PT_LOAD FILEHDR PHDRS FLAGS(5);



 data PT_LOAD FLAGS(6);



 debug PT_NOTE;
}

SECTIONS {

 . = 0x70001000 + SIZEOF_HEADERS;




 .init : {
  *(.init);
 } :text

 .text : {
  *(.text .text.*);
  *(.rodata .rodata.*);
 } :text
 .interp : {
  *(.interp);
 } :interp :text


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
