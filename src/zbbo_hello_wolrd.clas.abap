class ZBBO_HELLO_WOLRD definition
  public
  create public .

public section.

  types TY_FLOAT type F .

  methods MAIN .
  methods SET_RADIUS
    importing
      !IM_RADIUS type F
    returning
      value(RETURNING) type F .
  class-methods SET_PI
    importing
      !IM_PI type F .
  class-methods CLASS_CONSTRUCTOR .
  methods GET_PI
    returning
      value(RE_PI) type F .
  methods GET_RADIUS
    returning
      value(RE_RADIUS) type F .
protected section.

  class-data AREA type F .

  methods GET_AREA
    returning
      value(RE_AREA) type F .
private section.

  types TY_INTEGER type I .

  data RADIUS type F .
  class-data PI type F value 0 ##NO_TEXT.
ENDCLASS.



CLASS ZBBO_HELLO_WOLRD IMPLEMENTATION.


  method CLASS_CONSTRUCTOR.
   set_pi( '3.141592' ).
  endmethod.


  METHOD get_area.
    re_area = 2 * pi * ( radius ** 2 ).
  ENDMETHOD.


  method GET_PI.
    RE_PI = PI.
  endmethod.


  method GET_RADIUS.
    re_radius = me->radius.
  endmethod.


 METHOD main.

WRITE 'Hello World'.

 ENDMETHOD.


  method SET_PI.
    pi = im_pi.
  endmethod.


  method SET_RADIUS.
    me->radius = im_radius.
  endmethod.
ENDCLASS.