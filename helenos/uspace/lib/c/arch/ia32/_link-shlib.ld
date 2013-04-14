




PHDRS {




 text PT_LOAD FLAGS(5);

 data PT_LOAD FLAGS(6);

 dynamic PT_DYNAMIC;

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


 .rel.plt : {
  *(.rel.plt);
 }




 .rel.dyn : {
  *(.rel.*);
 } :text

 .plt : {
  *(.plt);
 } :text

 .dynsym : {
  *(.dynsym);
 } :text

 .dynstr : {
  *(.dynstr);
 } :text

 .hash : {
  *(.hash);
 } :text
 . = . + 0x1000;


 .dynamic : {
  *(.dynamic);
 } :data :dynamic


 .data : {
  *(.data);
 } :data


 .data.rel : {
  *(.data.rel .data.rel.*);
 } :data

 .got : {
  *(.got);
 } :data

 .got.plt : {
  *(.got.plt);
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
