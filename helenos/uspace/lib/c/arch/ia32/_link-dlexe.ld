
STARTUP(/home/pratik/HelenOS_Emacs/helenos/uspace/lib/c/arch/ia32/src/entry.o)
ENTRY(__entry)


PHDRS {

 interp PT_INTERP;
 text PT_LOAD FILEHDR PHDRS FLAGS(5);



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



 .interp : {
  *(.interp);
 } :interp :text


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
 .bss : {
  *(.dynbss);
  *(COMMON);
  *(.bss);
 } :data
 /DISCARD/ : {
  *(*);
 }
}
