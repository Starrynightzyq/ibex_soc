OUTPUT_ARCH(riscv)

/* required to correctly link newlib */
GROUP( -lc -lgloss -lgcc -lsupc++ )

SEARCH_DIR(.)
__DYNAMIC  =  0;

MEMORY
{
    itcm         : ORIGIN = 0x80000000, LENGTH = 0x4000 /* itcm 16 kB */
    ram         : ORIGIN = 0x90000000, LENGTH = 0x4000 /* dtcm 16 kB */
    /*stack       : ORIGIN = 0x90000000, LENGTH = 0x4000*/ /* 16 kB */
}

/* Stack information variables */
/*_min_stack      = 0x400;*/    /*1K - minimum stack space to reserve*/ 
/*_stack_len     = LENGTH(stack);*/
/*_stack_start   = ORIGIN(stack) + LENGTH(stack);*/

/* We have to align each sector to word boundaries as our current s19->slm
 * conversion scripts are not able to handle non-word aligned sections. */

SECTIONS
{
    __stack_size = DEFINED(__stack_size) ? __stack_size : 2K;

    .vectors :
    {
        . = ALIGN(4);
        KEEP(*(.vectors))
    } > itcm AT>itcm

    .init :
    {
        . = ALIGN(4);
        KEEP (*(SORT_NONE(.init)))
    } >itcm AT>itcm 

    .text : {
        . = ALIGN(4);
        _stext = .;
        *(.text)
        *(.text.*)
        _etext  =  .;
        __CTOR_LIST__ = .;
        LONG((__CTOR_END__ - __CTOR_LIST__) / 4 - 2)
        *(.ctors)
        LONG(0)
        __CTOR_END__ = .;
        __DTOR_LIST__ = .;
        LONG((__DTOR_END__ - __DTOR_LIST__) / 4 - 2)
        *(.dtors)
        LONG(0)
        __DTOR_END__ = .;
        *(.lit)
        *(.shdata)
        . = ALIGN(4);
        _endtext = .;
    }  > itcm AT>itcm

    .lalign         :
    {
        . = ALIGN(4);
        PROVIDE( _data_lma = . ); /* data 物理地址 itcm */ 
    } >itcm AT>itcm 

    .dalign         :
    {
        . = ALIGN(4);
        PROVIDE( _data = . ); /* data 虚拟地址 ram */
    } >ram AT>itcm 

    .data          :
    {
        *(.rdata)
        *(.rodata .rodata.*)
        *(.gnu.linkonce.r.*)
        *(.data .data.*)
        *(.gnu.linkonce.d.*)
        . = ALIGN(8);
        PROVIDE( __global_pointer$ = . + 0x800 );
        *(.sdata .sdata.*)
        *(.gnu.linkonce.s.*)
        . = ALIGN(8);
        *(.srodata.cst16)
        *(.srodata.cst8)
        *(.srodata.cst4)
        *(.srodata.cst2)
        *(.srodata .srodata.*)
    } >ram AT>itcm 

    . = ALIGN(4);
    PROVIDE( _edata = . );
    PROVIDE( edata = . );


    PROVIDE( _fbss = . );
    PROVIDE( _bss_start = . );
    .bss            :
    {
        *(.sbss*)
        *(.gnu.linkonce.sb.*)
        *(.bss .bss.*)
        *(.gnu.linkonce.b.*)
        *(COMMON)
        . = ALIGN(4);
    } >ram AT>ram 

    . = ALIGN(8);
    PROVIDE( _bss_end = . );
    PROVIDE( bss_end = . );

    .stack ORIGIN(ram) + LENGTH(ram) - __stack_size :
    {
        PROVIDE( _heap_end = . );
        . = __stack_size;
        PROVIDE( _sp = . );
    } >ram AT>ram 

    /* ensure there is enough room for stack */
/*    .stack (NOLOAD): {*/
/*        . = ALIGN(4);*/
/*        . = . + _min_stack ;*/
/*        . = ALIGN(4);*/
/*        stack = . ;*/
/*        _stack = . ;*/
/*    } > ram AT>itcm*/

/*    .stab  0 (NOLOAD) :*/
/*    {*/
/*        [ .stab ]*/
/*    }*/

/*    .stabstr  0 (NOLOAD) :*/
/*    {*/
/*        [ .stabstr ]*/
/*    }*/

}
