CLASS lhc_ZI_MD_HEADER_UM DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zi_md_header_um RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR zi_md_header_um RESULT result.

    METHODS create FOR MODIFY
      IMPORTING entities FOR CREATE zi_md_header_um.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE zi_md_header_um.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE zi_md_header_um.

    METHODS read FOR READ
      IMPORTING keys FOR READ zi_md_header_um RESULT result.

    METHODS lock FOR LOCK
      IMPORTING keys FOR LOCK zi_md_header_um.

    METHODS rba_Item FOR READ
      IMPORTING keys_rba FOR READ zi_md_header_um\_Item FULL result_requested RESULT result LINK association_links.

    METHODS cba_Item FOR MODIFY
      IMPORTING entities_cba FOR CREATE zi_md_header_um\_Item.

ENDCLASS.

CLASS lhc_ZI_MD_HEADER_UM IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD create.
  ENDMETHOD.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD lock.
  ENDMETHOD.

  METHOD rba_Item.
  ENDMETHOD.

  METHOD cba_Item.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_ZI_MD_ITEM_UM DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE zi_md_item_um.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE zi_md_item_um.

    METHODS read FOR READ
      IMPORTING keys FOR READ zi_md_item_um RESULT result.

    METHODS rba_Header FOR READ
      IMPORTING keys_rba FOR READ zi_md_item_um\_Header FULL result_requested RESULT result LINK association_links.
*    METHODS po_check FOR VALIDATE ON SAVE
*      IMPORTING keys FOR ZI_MD_ITEM_UM~po_check.

ENDCLASS.

CLASS lhc_ZI_MD_ITEM_UM IMPLEMENTATION.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD rba_Header.
  ENDMETHOD.

*  METHOD po_check.
*  DATA: lv_po TYPE ebeln.
*    LOOP AT keys ASSIGNING FIELD-SYMBOL(<fs_key>).
*      IF <fs_key>-MaterialDocument IS NOT INITIAL AND <fs_key>-DocumentItem IS INITIAL.
*
*      endif.
*    endloop.
*  ENDMETHOD.

ENDCLASS.

CLASS lsc_ZI_MD_HEADER_UM DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS finalize REDEFINITION.

    METHODS check_before_save REDEFINITION.

    METHODS adjust_numbers REDEFINITION.

    METHODS save REDEFINITION.

    METHODS cleanup REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_ZI_MD_HEADER_UM IMPLEMENTATION.

  METHOD finalize.
  ENDMETHOD.

  METHOD check_before_save.
  ENDMETHOD.

  METHOD adjust_numbers.
  ENDMETHOD.

  METHOD save.
  ENDMETHOD.

  METHOD cleanup.
  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.
