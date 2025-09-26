CLASS zcl_header_read DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_rap_query_provider .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_header_read IMPLEMENTATION.


  METHOD if_rap_query_provider~select.
DATA : t_header TYPE ztt_md_header,
           t_item   TYPE ztt_md_item,
           r_mblnr TYPE ztt_range_mblnr,
           r_mjahr TYPE ztt_range_mjahr,
           t_return TYPE TABLE OF bapiret2.
    TRY.
        DATA(lt_conditions) = io_request->get_filter(  )->get_as_ranges( ).
      CATCH cx_rap_query_filter_no_range.
    ENDTRY.
    IF lt_conditions IS NOT INITIAL.
      TRY.
          DATA(r_MaterialDocument) = lt_conditions[ name = 'MATERIALDOCUMENT' ]-range.
          r_mblnr = CORRESPONDING #( r_MaterialDocument MAPPING opti = option ).
      CATCH cx_sy_itab_line_not_found.
      ENDTRY.
       TRY.
          DATA(r_DocumentYear) = lt_conditions[ name = 'DOCUMENTYEAR' ]-range.
           r_mjahr = CORRESPONDING #( r_DocumentYear MAPPING opti = option ).
        CATCH cx_sy_itab_line_not_found.
      ENDTRY.
    ENDIF.
      DATA it_response TYPE TABLE OF zkir_c_md_header.
      CALL FUNCTION 'ZBAPI_GOODS_MVMT_READ'
        EXPORTING
          mblnr  = r_mblnr
          mjahr  = r_mjahr
        IMPORTING
          header = t_header
        .
      it_response = CORRESPONDING #( t_header MAPPING
                                          MaterialDocument = mblnr
                                          DocumentYear = mjahr
                                          GoodsMovementCode = gmcode
                                          MaterialDocumentHeaderText = bktxt
                                          ReceivingPlant = rplant
                                          ReferenceDocument = xblnr
                                          Supplier = lifnr
                                   ).

    TRY.
        DATA(lv_top) = io_request->get_paging(  )->get_page_size(  ).

        io_response->set_data( it_data = it_response ).
        io_response->set_total_number_of_records( lines( it_response ) ).
      CATCH cx_rap_query_response_set_twic.
    ENDTRY.
  ENDMETHOD.
ENDCLASS.
