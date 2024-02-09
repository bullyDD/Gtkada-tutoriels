pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__tutoriel_01.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__tutoriel_01.adb");
pragma Suppress (Overflow_Check);
with Ada.Exceptions;

package body ada_main is

   E065 : Short_Integer; pragma Import (Ada, E065, "system__os_lib_E");
   E016 : Short_Integer; pragma Import (Ada, E016, "ada__exceptions_E");
   E012 : Short_Integer; pragma Import (Ada, E012, "system__soft_links_E");
   E010 : Short_Integer; pragma Import (Ada, E010, "system__exception_table_E");
   E033 : Short_Integer; pragma Import (Ada, E033, "ada__containers_E");
   E061 : Short_Integer; pragma Import (Ada, E061, "ada__io_exceptions_E");
   E007 : Short_Integer; pragma Import (Ada, E007, "ada__strings_E");
   E048 : Short_Integer; pragma Import (Ada, E048, "ada__strings__maps_E");
   E052 : Short_Integer; pragma Import (Ada, E052, "ada__strings__maps__constants_E");
   E071 : Short_Integer; pragma Import (Ada, E071, "interfaces__c_E");
   E019 : Short_Integer; pragma Import (Ada, E019, "system__exceptions_E");
   E073 : Short_Integer; pragma Import (Ada, E073, "system__object_reader_E");
   E042 : Short_Integer; pragma Import (Ada, E042, "system__dwarf_lines_E");
   E090 : Short_Integer; pragma Import (Ada, E090, "system__soft_links__initialize_E");
   E032 : Short_Integer; pragma Import (Ada, E032, "system__traceback__symbolic_E");
   E344 : Short_Integer; pragma Import (Ada, E344, "ada__assertions_E");
   E094 : Short_Integer; pragma Import (Ada, E094, "ada__strings__utf_encoding_E");
   E100 : Short_Integer; pragma Import (Ada, E100, "ada__tags_E");
   E005 : Short_Integer; pragma Import (Ada, E005, "ada__strings__text_buffers_E");
   E156 : Short_Integer; pragma Import (Ada, E156, "gnat_E");
   E130 : Short_Integer; pragma Import (Ada, E130, "interfaces__c__strings_E");
   E110 : Short_Integer; pragma Import (Ada, E110, "ada__streams_E");
   E122 : Short_Integer; pragma Import (Ada, E122, "system__file_control_block_E");
   E121 : Short_Integer; pragma Import (Ada, E121, "system__finalization_root_E");
   E119 : Short_Integer; pragma Import (Ada, E119, "ada__finalization_E");
   E118 : Short_Integer; pragma Import (Ada, E118, "system__file_io_E");
   E134 : Short_Integer; pragma Import (Ada, E134, "system__storage_pools_E");
   E132 : Short_Integer; pragma Import (Ada, E132, "system__finalization_masters_E");
   E151 : Short_Integer; pragma Import (Ada, E151, "system__storage_pools__subpools_E");
   E108 : Short_Integer; pragma Import (Ada, E108, "ada__text_io_E");
   E136 : Short_Integer; pragma Import (Ada, E136, "system__pool_global_E");
   E125 : Short_Integer; pragma Import (Ada, E125, "glib_E");
   E128 : Short_Integer; pragma Import (Ada, E128, "gtkada__types_E");
   E215 : Short_Integer; pragma Import (Ada, E215, "gdk__frame_timings_E");
   E167 : Short_Integer; pragma Import (Ada, E167, "glib__glist_E");
   E199 : Short_Integer; pragma Import (Ada, E199, "gdk__visual_E");
   E169 : Short_Integer; pragma Import (Ada, E169, "glib__gslist_E");
   E161 : Short_Integer; pragma Import (Ada, E161, "gtkada__c_E");
   E147 : Short_Integer; pragma Import (Ada, E147, "glib__object_E");
   E149 : Short_Integer; pragma Import (Ada, E149, "glib__type_conversion_hooks_E");
   E163 : Short_Integer; pragma Import (Ada, E163, "glib__types_E");
   E165 : Short_Integer; pragma Import (Ada, E165, "glib__values_E");
   E155 : Short_Integer; pragma Import (Ada, E155, "gtkada__bindings_E");
   E182 : Short_Integer; pragma Import (Ada, E182, "cairo_E");
   E184 : Short_Integer; pragma Import (Ada, E184, "cairo__region_E");
   E188 : Short_Integer; pragma Import (Ada, E188, "gdk__rectangle_E");
   E176 : Short_Integer; pragma Import (Ada, E176, "glib__generic_properties_E");
   E209 : Short_Integer; pragma Import (Ada, E209, "gdk__color_E");
   E191 : Short_Integer; pragma Import (Ada, E191, "gdk__rgba_E");
   E186 : Short_Integer; pragma Import (Ada, E186, "gdk__event_E");
   E318 : Short_Integer; pragma Import (Ada, E318, "glib__key_file_E");
   E201 : Short_Integer; pragma Import (Ada, E201, "glib__properties_E");
   E280 : Short_Integer; pragma Import (Ada, E280, "glib__string_E");
   E278 : Short_Integer; pragma Import (Ada, E278, "glib__variant_E");
   E276 : Short_Integer; pragma Import (Ada, E276, "glib__g_icon_E");
   E352 : Short_Integer; pragma Import (Ada, E352, "gtk__actionable_E");
   E223 : Short_Integer; pragma Import (Ada, E223, "gtk__builder_E");
   E260 : Short_Integer; pragma Import (Ada, E260, "gtk__buildable_E");
   E292 : Short_Integer; pragma Import (Ada, E292, "gtk__cell_area_context_E");
   E308 : Short_Integer; pragma Import (Ada, E308, "gtk__css_section_E");
   E203 : Short_Integer; pragma Import (Ada, E203, "gtk__enums_E");
   E266 : Short_Integer; pragma Import (Ada, E266, "gtk__orientable_E");
   E320 : Short_Integer; pragma Import (Ada, E320, "gtk__paper_size_E");
   E316 : Short_Integer; pragma Import (Ada, E316, "gtk__page_setup_E");
   E328 : Short_Integer; pragma Import (Ada, E328, "gtk__print_settings_E");
   E231 : Short_Integer; pragma Import (Ada, E231, "gtk__target_entry_E");
   E229 : Short_Integer; pragma Import (Ada, E229, "gtk__target_list_E");
   E236 : Short_Integer; pragma Import (Ada, E236, "pango__enums_E");
   E254 : Short_Integer; pragma Import (Ada, E254, "pango__attributes_E");
   E240 : Short_Integer; pragma Import (Ada, E240, "pango__font_metrics_E");
   E242 : Short_Integer; pragma Import (Ada, E242, "pango__language_E");
   E238 : Short_Integer; pragma Import (Ada, E238, "pango__font_E");
   E334 : Short_Integer; pragma Import (Ada, E334, "gtk__text_attributes_E");
   E336 : Short_Integer; pragma Import (Ada, E336, "gtk__text_tag_E");
   E246 : Short_Integer; pragma Import (Ada, E246, "pango__font_face_E");
   E244 : Short_Integer; pragma Import (Ada, E244, "pango__font_family_E");
   E248 : Short_Integer; pragma Import (Ada, E248, "pango__fontset_E");
   E250 : Short_Integer; pragma Import (Ada, E250, "pango__matrix_E");
   E234 : Short_Integer; pragma Import (Ada, E234, "pango__context_E");
   E324 : Short_Integer; pragma Import (Ada, E324, "pango__font_map_E");
   E256 : Short_Integer; pragma Import (Ada, E256, "pango__tabs_E");
   E252 : Short_Integer; pragma Import (Ada, E252, "pango__layout_E");
   E322 : Short_Integer; pragma Import (Ada, E322, "gtk__print_context_E");
   E178 : Short_Integer; pragma Import (Ada, E178, "gdk__display_E");
   E213 : Short_Integer; pragma Import (Ada, E213, "gdk__frame_clock_E");
   E217 : Short_Integer; pragma Import (Ada, E217, "gdk__pixbuf_E");
   E197 : Short_Integer; pragma Import (Ada, E197, "gdk__screen_E");
   E174 : Short_Integer; pragma Import (Ada, E174, "gdk__device_E");
   E211 : Short_Integer; pragma Import (Ada, E211, "gdk__drag_contexts_E");
   E270 : Short_Integer; pragma Import (Ada, E270, "gdk__window_E");
   E221 : Short_Integer; pragma Import (Ada, E221, "gtk__accel_group_E");
   E264 : Short_Integer; pragma Import (Ada, E264, "gtk__adjustment_E");
   E282 : Short_Integer; pragma Import (Ada, E282, "gtk__cell_editable_E");
   E284 : Short_Integer; pragma Import (Ada, E284, "gtk__editable_E");
   E286 : Short_Integer; pragma Import (Ada, E286, "gtk__entry_buffer_E");
   E304 : Short_Integer; pragma Import (Ada, E304, "gtk__icon_source_E");
   E326 : Short_Integer; pragma Import (Ada, E326, "gtk__print_operation_preview_E");
   E225 : Short_Integer; pragma Import (Ada, E225, "gtk__selection_data_E");
   E227 : Short_Integer; pragma Import (Ada, E227, "gtk__style_E");
   E332 : Short_Integer; pragma Import (Ada, E332, "gtk__text_iter_E");
   E298 : Short_Integer; pragma Import (Ada, E298, "gtk__tree_model_E");
   E207 : Short_Integer; pragma Import (Ada, E207, "gtk__widget_E");
   E296 : Short_Integer; pragma Import (Ada, E296, "gtk__cell_renderer_E");
   E294 : Short_Integer; pragma Import (Ada, E294, "gtk__cell_layout_E");
   E290 : Short_Integer; pragma Import (Ada, E290, "gtk__cell_area_E");
   E262 : Short_Integer; pragma Import (Ada, E262, "gtk__container_E");
   E272 : Short_Integer; pragma Import (Ada, E272, "gtk__bin_E");
   E258 : Short_Integer; pragma Import (Ada, E258, "gtk__box_E");
   E288 : Short_Integer; pragma Import (Ada, E288, "gtk__entry_completion_E");
   E310 : Short_Integer; pragma Import (Ada, E310, "gtk__misc_E");
   E312 : Short_Integer; pragma Import (Ada, E312, "gtk__notebook_E");
   E330 : Short_Integer; pragma Import (Ada, E330, "gtk__status_bar_E");
   E205 : Short_Integer; pragma Import (Ada, E205, "gtk__style_provider_E");
   E195 : Short_Integer; pragma Import (Ada, E195, "gtk__settings_E");
   E306 : Short_Integer; pragma Import (Ada, E306, "gtk__style_context_E");
   E302 : Short_Integer; pragma Import (Ada, E302, "gtk__icon_set_E");
   E300 : Short_Integer; pragma Import (Ada, E300, "gtk__image_E");
   E274 : Short_Integer; pragma Import (Ada, E274, "gtk__gentry_E");
   E268 : Short_Integer; pragma Import (Ada, E268, "gtk__window_E");
   E193 : Short_Integer; pragma Import (Ada, E193, "gtk__dialog_E");
   E314 : Short_Integer; pragma Import (Ada, E314, "gtk__print_operation_E");
   E180 : Short_Integer; pragma Import (Ada, E180, "gtk__arguments_E");
   E350 : Short_Integer; pragma Import (Ada, E350, "gtk__action_E");
   E354 : Short_Integer; pragma Import (Ada, E354, "gtk__activatable_E");
   E348 : Short_Integer; pragma Import (Ada, E348, "gtk__button_E");
   E171 : Short_Integer; pragma Import (Ada, E171, "gtk__main_E");
   E338 : Short_Integer; pragma Import (Ada, E338, "gtk__marshallers_E");
   E346 : Short_Integer; pragma Import (Ada, E346, "gtk__tree_view_column_E");
   E106 : Short_Integer; pragma Import (Ada, E106, "callback_E");

   Sec_Default_Sized_Stacks : array (1 .. 1) of aliased System.Secondary_Stack.SS_Stack (System.Parameters.Runtime_Default_Sec_Stack_Size);

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E106 := E106 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "callback__finalize_spec");
      begin
         F1;
      end;
      E346 := E346 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "gtk__tree_view_column__finalize_spec");
      begin
         F2;
      end;
      E348 := E348 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "gtk__button__finalize_spec");
      begin
         F3;
      end;
      E350 := E350 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "gtk__action__finalize_spec");
      begin
         F4;
      end;
      E268 := E268 - 1;
      E207 := E207 - 1;
      E298 := E298 - 1;
      E306 := E306 - 1;
      E227 := E227 - 1;
      E330 := E330 - 1;
      E314 := E314 - 1;
      E312 := E312 - 1;
      E274 := E274 - 1;
      E288 := E288 - 1;
      E286 := E286 - 1;
      E193 := E193 - 1;
      E262 := E262 - 1;
      E296 := E296 - 1;
      E290 := E290 - 1;
      E264 := E264 - 1;
      E221 := E221 - 1;
      E213 := E213 - 1;
      E178 := E178 - 1;
      declare
         procedure F5;
         pragma Import (Ada, F5, "gtk__print_operation__finalize_spec");
      begin
         F5;
      end;
      declare
         procedure F6;
         pragma Import (Ada, F6, "gtk__dialog__finalize_spec");
      begin
         F6;
      end;
      declare
         procedure F7;
         pragma Import (Ada, F7, "gtk__window__finalize_spec");
      begin
         F7;
      end;
      declare
         procedure F8;
         pragma Import (Ada, F8, "gtk__gentry__finalize_spec");
      begin
         F8;
      end;
      E300 := E300 - 1;
      declare
         procedure F9;
         pragma Import (Ada, F9, "gtk__image__finalize_spec");
      begin
         F9;
      end;
      E302 := E302 - 1;
      declare
         procedure F10;
         pragma Import (Ada, F10, "gtk__icon_set__finalize_spec");
      begin
         F10;
      end;
      declare
         procedure F11;
         pragma Import (Ada, F11, "gtk__style_context__finalize_spec");
      begin
         F11;
      end;
      E195 := E195 - 1;
      declare
         procedure F12;
         pragma Import (Ada, F12, "gtk__settings__finalize_spec");
      begin
         F12;
      end;
      declare
         procedure F13;
         pragma Import (Ada, F13, "gtk__status_bar__finalize_spec");
      begin
         F13;
      end;
      declare
         procedure F14;
         pragma Import (Ada, F14, "gtk__notebook__finalize_spec");
      begin
         F14;
      end;
      E310 := E310 - 1;
      declare
         procedure F15;
         pragma Import (Ada, F15, "gtk__misc__finalize_spec");
      begin
         F15;
      end;
      declare
         procedure F16;
         pragma Import (Ada, F16, "gtk__entry_completion__finalize_spec");
      begin
         F16;
      end;
      E258 := E258 - 1;
      declare
         procedure F17;
         pragma Import (Ada, F17, "gtk__box__finalize_spec");
      begin
         F17;
      end;
      E272 := E272 - 1;
      declare
         procedure F18;
         pragma Import (Ada, F18, "gtk__bin__finalize_spec");
      begin
         F18;
      end;
      declare
         procedure F19;
         pragma Import (Ada, F19, "gtk__container__finalize_spec");
      begin
         F19;
      end;
      declare
         procedure F20;
         pragma Import (Ada, F20, "gtk__cell_area__finalize_spec");
      begin
         F20;
      end;
      declare
         procedure F21;
         pragma Import (Ada, F21, "gtk__cell_renderer__finalize_spec");
      begin
         F21;
      end;
      declare
         procedure F22;
         pragma Import (Ada, F22, "gtk__widget__finalize_spec");
      begin
         F22;
      end;
      declare
         procedure F23;
         pragma Import (Ada, F23, "gtk__tree_model__finalize_spec");
      begin
         F23;
      end;
      declare
         procedure F24;
         pragma Import (Ada, F24, "gtk__style__finalize_spec");
      begin
         F24;
      end;
      E225 := E225 - 1;
      declare
         procedure F25;
         pragma Import (Ada, F25, "gtk__selection_data__finalize_spec");
      begin
         F25;
      end;
      E304 := E304 - 1;
      declare
         procedure F26;
         pragma Import (Ada, F26, "gtk__icon_source__finalize_spec");
      begin
         F26;
      end;
      declare
         procedure F27;
         pragma Import (Ada, F27, "gtk__entry_buffer__finalize_spec");
      begin
         F27;
      end;
      declare
         procedure F28;
         pragma Import (Ada, F28, "gtk__adjustment__finalize_spec");
      begin
         F28;
      end;
      declare
         procedure F29;
         pragma Import (Ada, F29, "gtk__accel_group__finalize_spec");
      begin
         F29;
      end;
      E211 := E211 - 1;
      declare
         procedure F30;
         pragma Import (Ada, F30, "gdk__drag_contexts__finalize_spec");
      begin
         F30;
      end;
      E174 := E174 - 1;
      declare
         procedure F31;
         pragma Import (Ada, F31, "gdk__device__finalize_spec");
      begin
         F31;
      end;
      E197 := E197 - 1;
      declare
         procedure F32;
         pragma Import (Ada, F32, "gdk__screen__finalize_spec");
      begin
         F32;
      end;
      E217 := E217 - 1;
      declare
         procedure F33;
         pragma Import (Ada, F33, "gdk__pixbuf__finalize_spec");
      begin
         F33;
      end;
      declare
         procedure F34;
         pragma Import (Ada, F34, "gdk__frame_clock__finalize_spec");
      begin
         F34;
      end;
      declare
         procedure F35;
         pragma Import (Ada, F35, "gdk__display__finalize_spec");
      begin
         F35;
      end;
      E322 := E322 - 1;
      declare
         procedure F36;
         pragma Import (Ada, F36, "gtk__print_context__finalize_spec");
      begin
         F36;
      end;
      E252 := E252 - 1;
      declare
         procedure F37;
         pragma Import (Ada, F37, "pango__layout__finalize_spec");
      begin
         F37;
      end;
      E256 := E256 - 1;
      declare
         procedure F38;
         pragma Import (Ada, F38, "pango__tabs__finalize_spec");
      begin
         F38;
      end;
      E324 := E324 - 1;
      declare
         procedure F39;
         pragma Import (Ada, F39, "pango__font_map__finalize_spec");
      begin
         F39;
      end;
      E234 := E234 - 1;
      declare
         procedure F40;
         pragma Import (Ada, F40, "pango__context__finalize_spec");
      begin
         F40;
      end;
      E248 := E248 - 1;
      declare
         procedure F41;
         pragma Import (Ada, F41, "pango__fontset__finalize_spec");
      begin
         F41;
      end;
      E244 := E244 - 1;
      declare
         procedure F42;
         pragma Import (Ada, F42, "pango__font_family__finalize_spec");
      begin
         F42;
      end;
      E246 := E246 - 1;
      declare
         procedure F43;
         pragma Import (Ada, F43, "pango__font_face__finalize_spec");
      begin
         F43;
      end;
      E336 := E336 - 1;
      declare
         procedure F44;
         pragma Import (Ada, F44, "gtk__text_tag__finalize_spec");
      begin
         F44;
      end;
      E238 := E238 - 1;
      declare
         procedure F45;
         pragma Import (Ada, F45, "pango__font__finalize_spec");
      begin
         F45;
      end;
      E242 := E242 - 1;
      declare
         procedure F46;
         pragma Import (Ada, F46, "pango__language__finalize_spec");
      begin
         F46;
      end;
      E240 := E240 - 1;
      declare
         procedure F47;
         pragma Import (Ada, F47, "pango__font_metrics__finalize_spec");
      begin
         F47;
      end;
      E254 := E254 - 1;
      declare
         procedure F48;
         pragma Import (Ada, F48, "pango__attributes__finalize_spec");
      begin
         F48;
      end;
      E229 := E229 - 1;
      declare
         procedure F49;
         pragma Import (Ada, F49, "gtk__target_list__finalize_spec");
      begin
         F49;
      end;
      E328 := E328 - 1;
      declare
         procedure F50;
         pragma Import (Ada, F50, "gtk__print_settings__finalize_spec");
      begin
         F50;
      end;
      E316 := E316 - 1;
      declare
         procedure F51;
         pragma Import (Ada, F51, "gtk__page_setup__finalize_spec");
      begin
         F51;
      end;
      E320 := E320 - 1;
      declare
         procedure F52;
         pragma Import (Ada, F52, "gtk__paper_size__finalize_spec");
      begin
         F52;
      end;
      E308 := E308 - 1;
      declare
         procedure F53;
         pragma Import (Ada, F53, "gtk__css_section__finalize_spec");
      begin
         F53;
      end;
      E292 := E292 - 1;
      declare
         procedure F54;
         pragma Import (Ada, F54, "gtk__cell_area_context__finalize_spec");
      begin
         F54;
      end;
      E223 := E223 - 1;
      declare
         procedure F55;
         pragma Import (Ada, F55, "gtk__builder__finalize_spec");
      begin
         F55;
      end;
      E278 := E278 - 1;
      declare
         procedure F56;
         pragma Import (Ada, F56, "glib__variant__finalize_spec");
      begin
         F56;
      end;
      E147 := E147 - 1;
      declare
         procedure F57;
         pragma Import (Ada, F57, "glib__object__finalize_spec");
      begin
         F57;
      end;
      E215 := E215 - 1;
      declare
         procedure F58;
         pragma Import (Ada, F58, "gdk__frame_timings__finalize_spec");
      begin
         F58;
      end;
      E125 := E125 - 1;
      declare
         procedure F59;
         pragma Import (Ada, F59, "glib__finalize_spec");
      begin
         F59;
      end;
      E136 := E136 - 1;
      declare
         procedure F60;
         pragma Import (Ada, F60, "system__pool_global__finalize_spec");
      begin
         F60;
      end;
      E108 := E108 - 1;
      declare
         procedure F61;
         pragma Import (Ada, F61, "ada__text_io__finalize_spec");
      begin
         F61;
      end;
      E151 := E151 - 1;
      declare
         procedure F62;
         pragma Import (Ada, F62, "system__storage_pools__subpools__finalize_spec");
      begin
         F62;
      end;
      E132 := E132 - 1;
      declare
         procedure F63;
         pragma Import (Ada, F63, "system__finalization_masters__finalize_spec");
      begin
         F63;
      end;
      declare
         procedure F64;
         pragma Import (Ada, F64, "system__file_io__finalize_body");
      begin
         E118 := E118 - 1;
         F64;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (Ada, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;
   pragma Favor_Top_Level (No_Param_Proc);

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Default_Secondary_Stack_Size : System.Parameters.Size_Type;
      pragma Import (C, Default_Secondary_Stack_Size, "__gnat_default_ss_size");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
      Binder_Sec_Stacks_Count : Natural;
      pragma Import (Ada, Binder_Sec_Stacks_Count, "__gnat_binder_ss_count");
      Default_Sized_SS_Pool : System.Address;
      pragma Import (Ada, Default_Sized_SS_Pool, "__gnat_default_ss_pool");

   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;

      ada_main'Elab_Body;
      Default_Secondary_Stack_Size := System.Parameters.Runtime_Default_Sec_Stack_Size;
      Binder_Sec_Stacks_Count := 1;
      Default_Sized_SS_Pool := Sec_Default_Sized_Stacks'Address;

      Runtime_Initialize (1);

      Finalize_Library_Objects := finalize_library'access;

      Ada.Exceptions'Elab_Spec;
      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E010 := E010 + 1;
      Ada.Containers'Elab_Spec;
      E033 := E033 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E061 := E061 + 1;
      Ada.Strings'Elab_Spec;
      E007 := E007 + 1;
      Ada.Strings.Maps'Elab_Spec;
      E048 := E048 + 1;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E052 := E052 + 1;
      Interfaces.C'Elab_Spec;
      E071 := E071 + 1;
      System.Exceptions'Elab_Spec;
      E019 := E019 + 1;
      System.Object_Reader'Elab_Spec;
      E073 := E073 + 1;
      System.Dwarf_Lines'Elab_Spec;
      E042 := E042 + 1;
      System.Os_Lib'Elab_Body;
      E065 := E065 + 1;
      System.Soft_Links.Initialize'Elab_Body;
      E090 := E090 + 1;
      E012 := E012 + 1;
      System.Traceback.Symbolic'Elab_Body;
      E032 := E032 + 1;
      E016 := E016 + 1;
      Ada.Assertions'Elab_Spec;
      E344 := E344 + 1;
      Ada.Strings.Utf_Encoding'Elab_Spec;
      E094 := E094 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Tags'Elab_Body;
      E100 := E100 + 1;
      Ada.Strings.Text_Buffers'Elab_Spec;
      Ada.Strings.Text_Buffers'Elab_Body;
      E005 := E005 + 1;
      Gnat'Elab_Spec;
      E156 := E156 + 1;
      Interfaces.C.Strings'Elab_Spec;
      E130 := E130 + 1;
      Ada.Streams'Elab_Spec;
      E110 := E110 + 1;
      System.File_Control_Block'Elab_Spec;
      E122 := E122 + 1;
      System.Finalization_Root'Elab_Spec;
      System.Finalization_Root'Elab_Body;
      E121 := E121 + 1;
      Ada.Finalization'Elab_Spec;
      E119 := E119 + 1;
      System.File_Io'Elab_Body;
      E118 := E118 + 1;
      System.Storage_Pools'Elab_Spec;
      E134 := E134 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E132 := E132 + 1;
      System.Storage_Pools.Subpools'Elab_Spec;
      System.Storage_Pools.Subpools'Elab_Body;
      E151 := E151 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E108 := E108 + 1;
      System.Pool_Global'Elab_Spec;
      System.Pool_Global'Elab_Body;
      E136 := E136 + 1;
      Glib'Elab_Spec;
      Gtkada.Types'Elab_Spec;
      E128 := E128 + 1;
      E125 := E125 + 1;
      Gdk.Frame_Timings'Elab_Spec;
      Gdk.Frame_Timings'Elab_Body;
      E215 := E215 + 1;
      E167 := E167 + 1;
      Gdk.Visual'Elab_Body;
      E199 := E199 + 1;
      E169 := E169 + 1;
      E161 := E161 + 1;
      Glib.Object'Elab_Spec;
      E149 := E149 + 1;
      Glib.Values'Elab_Body;
      E165 := E165 + 1;
      E155 := E155 + 1;
      Glib.Object'Elab_Body;
      E147 := E147 + 1;
      E163 := E163 + 1;
      E182 := E182 + 1;
      E184 := E184 + 1;
      E188 := E188 + 1;
      Glib.Generic_Properties'Elab_Spec;
      Glib.Generic_Properties'Elab_Body;
      E176 := E176 + 1;
      Gdk.Color'Elab_Spec;
      E209 := E209 + 1;
      E191 := E191 + 1;
      E186 := E186 + 1;
      E318 := E318 + 1;
      E201 := E201 + 1;
      E280 := E280 + 1;
      Glib.Variant'Elab_Spec;
      Glib.Variant'Elab_Body;
      E278 := E278 + 1;
      E276 := E276 + 1;
      Gtk.Actionable'Elab_Spec;
      E352 := E352 + 1;
      Gtk.Builder'Elab_Spec;
      Gtk.Builder'Elab_Body;
      E223 := E223 + 1;
      E260 := E260 + 1;
      Gtk.Cell_Area_Context'Elab_Spec;
      Gtk.Cell_Area_Context'Elab_Body;
      E292 := E292 + 1;
      Gtk.Css_Section'Elab_Spec;
      Gtk.Css_Section'Elab_Body;
      E308 := E308 + 1;
      E203 := E203 + 1;
      Gtk.Orientable'Elab_Spec;
      E266 := E266 + 1;
      Gtk.Paper_Size'Elab_Spec;
      Gtk.Paper_Size'Elab_Body;
      E320 := E320 + 1;
      Gtk.Page_Setup'Elab_Spec;
      Gtk.Page_Setup'Elab_Body;
      E316 := E316 + 1;
      Gtk.Print_Settings'Elab_Spec;
      Gtk.Print_Settings'Elab_Body;
      E328 := E328 + 1;
      E231 := E231 + 1;
      Gtk.Target_List'Elab_Spec;
      Gtk.Target_List'Elab_Body;
      E229 := E229 + 1;
      E236 := E236 + 1;
      Pango.Attributes'Elab_Spec;
      Pango.Attributes'Elab_Body;
      E254 := E254 + 1;
      Pango.Font_Metrics'Elab_Spec;
      Pango.Font_Metrics'Elab_Body;
      E240 := E240 + 1;
      Pango.Language'Elab_Spec;
      Pango.Language'Elab_Body;
      E242 := E242 + 1;
      Pango.Font'Elab_Spec;
      Pango.Font'Elab_Body;
      E238 := E238 + 1;
      E334 := E334 + 1;
      Gtk.Text_Tag'Elab_Spec;
      Gtk.Text_Tag'Elab_Body;
      E336 := E336 + 1;
      Pango.Font_Face'Elab_Spec;
      Pango.Font_Face'Elab_Body;
      E246 := E246 + 1;
      Pango.Font_Family'Elab_Spec;
      Pango.Font_Family'Elab_Body;
      E244 := E244 + 1;
      Pango.Fontset'Elab_Spec;
      Pango.Fontset'Elab_Body;
      E248 := E248 + 1;
      E250 := E250 + 1;
      Pango.Context'Elab_Spec;
      Pango.Context'Elab_Body;
      E234 := E234 + 1;
      Pango.Font_Map'Elab_Spec;
      Pango.Font_Map'Elab_Body;
      E324 := E324 + 1;
      Pango.Tabs'Elab_Spec;
      Pango.Tabs'Elab_Body;
      E256 := E256 + 1;
      Pango.Layout'Elab_Spec;
      Pango.Layout'Elab_Body;
      E252 := E252 + 1;
      Gtk.Print_Context'Elab_Spec;
      Gtk.Print_Context'Elab_Body;
      E322 := E322 + 1;
      Gdk.Display'Elab_Spec;
      Gdk.Frame_Clock'Elab_Spec;
      Gdk.Pixbuf'Elab_Spec;
      E217 := E217 + 1;
      Gdk.Screen'Elab_Spec;
      Gdk.Screen'Elab_Body;
      E197 := E197 + 1;
      Gdk.Device'Elab_Spec;
      Gdk.Device'Elab_Body;
      E174 := E174 + 1;
      Gdk.Drag_Contexts'Elab_Spec;
      Gdk.Drag_Contexts'Elab_Body;
      E211 := E211 + 1;
      Gdk.Window'Elab_Spec;
      E270 := E270 + 1;
      Gtk.Accel_Group'Elab_Spec;
      Gtk.Adjustment'Elab_Spec;
      Gtk.Cell_Editable'Elab_Spec;
      Gtk.Entry_Buffer'Elab_Spec;
      Gtk.Icon_Source'Elab_Spec;
      Gtk.Icon_Source'Elab_Body;
      E304 := E304 + 1;
      Gtk.Selection_Data'Elab_Spec;
      Gtk.Selection_Data'Elab_Body;
      E225 := E225 + 1;
      Gtk.Style'Elab_Spec;
      E332 := E332 + 1;
      Gtk.Tree_Model'Elab_Spec;
      Gtk.Widget'Elab_Spec;
      Gtk.Cell_Renderer'Elab_Spec;
      E294 := E294 + 1;
      Gtk.Cell_Area'Elab_Spec;
      Gtk.Container'Elab_Spec;
      Gtk.Bin'Elab_Spec;
      Gtk.Bin'Elab_Body;
      E272 := E272 + 1;
      Gtk.Box'Elab_Spec;
      Gtk.Box'Elab_Body;
      E258 := E258 + 1;
      Gtk.Entry_Completion'Elab_Spec;
      Gtk.Misc'Elab_Spec;
      Gtk.Misc'Elab_Body;
      E310 := E310 + 1;
      Gtk.Notebook'Elab_Spec;
      Gtk.Status_Bar'Elab_Spec;
      E205 := E205 + 1;
      Gtk.Settings'Elab_Spec;
      Gtk.Settings'Elab_Body;
      E195 := E195 + 1;
      Gtk.Style_Context'Elab_Spec;
      Gtk.Icon_Set'Elab_Spec;
      Gtk.Icon_Set'Elab_Body;
      E302 := E302 + 1;
      Gtk.Image'Elab_Spec;
      Gtk.Image'Elab_Body;
      E300 := E300 + 1;
      Gtk.Gentry'Elab_Spec;
      Gtk.Window'Elab_Spec;
      Gtk.Dialog'Elab_Spec;
      Gtk.Print_Operation'Elab_Spec;
      E180 := E180 + 1;
      Gdk.Display'Elab_Body;
      E178 := E178 + 1;
      Gdk.Frame_Clock'Elab_Body;
      E213 := E213 + 1;
      Gtk.Accel_Group'Elab_Body;
      E221 := E221 + 1;
      Gtk.Adjustment'Elab_Body;
      E264 := E264 + 1;
      Gtk.Cell_Area'Elab_Body;
      E290 := E290 + 1;
      E282 := E282 + 1;
      Gtk.Cell_Renderer'Elab_Body;
      E296 := E296 + 1;
      Gtk.Container'Elab_Body;
      E262 := E262 + 1;
      Gtk.Dialog'Elab_Body;
      E193 := E193 + 1;
      E284 := E284 + 1;
      Gtk.Entry_Buffer'Elab_Body;
      E286 := E286 + 1;
      Gtk.Entry_Completion'Elab_Body;
      E288 := E288 + 1;
      Gtk.Gentry'Elab_Body;
      E274 := E274 + 1;
      Gtk.Notebook'Elab_Body;
      E312 := E312 + 1;
      Gtk.Print_Operation'Elab_Body;
      E314 := E314 + 1;
      E326 := E326 + 1;
      Gtk.Status_Bar'Elab_Body;
      E330 := E330 + 1;
      Gtk.Style'Elab_Body;
      E227 := E227 + 1;
      Gtk.Style_Context'Elab_Body;
      E306 := E306 + 1;
      Gtk.Tree_Model'Elab_Body;
      E298 := E298 + 1;
      Gtk.Widget'Elab_Body;
      E207 := E207 + 1;
      Gtk.Window'Elab_Body;
      E268 := E268 + 1;
      Gtk.Action'Elab_Spec;
      Gtk.Action'Elab_Body;
      E350 := E350 + 1;
      Gtk.Activatable'Elab_Spec;
      E354 := E354 + 1;
      Gtk.Button'Elab_Spec;
      Gtk.Button'Elab_Body;
      E348 := E348 + 1;
      E171 := E171 + 1;
      E338 := E338 + 1;
      Gtk.Tree_View_Column'Elab_Spec;
      Gtk.Tree_View_Column'Elab_Body;
      E346 := E346 + 1;
      Callback'Elab_Spec;
      E106 := E106 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_tutoriel_01");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      if gnat_argc = 0 then
         gnat_argc := argc;
         gnat_argv := argv;
      end if;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   C:\Users\HP\Documents\Ada\Code\GUI\Gtkada-tutoriels\obj\callback.o
   --   C:\Users\HP\Documents\Ada\Code\GUI\Gtkada-tutoriels\obj\tutoriel_01.o
   --   -LC:\Users\HP\Documents\Ada\Code\GUI\Gtkada-tutoriels\obj\
   --   -LC:\Users\HP\Documents\Ada\Code\GUI\Gtkada-tutoriels\obj\
   --   -LC:\GtkAda\lib\gtkada\gtkada.static\gtkada\
   --   -LC:/gnat/2021/lib/gcc/x86_64-w64-mingw32/10.3.1/adalib/
   --   -static
   --   -shared-libgcc
   --   -shared-libgcc
   --   -shared-libgcc
   --   -lgnat
   --   -Wl,--stack=0x2000000
--  END Object file/option list   

end ada_main;
