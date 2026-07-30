	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds4,@function
amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds4:                                 ; @amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 868 0                         ; attention.py:868:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[12:13], s[0:1], 0x10
	s_load_b128 s[4:7], s[0:1], 0x0
.Ltmp0:
	.loc	1 878 25 prologue_end           ; attention.py:878:25
	v_and_b32_e32 v1, 3, v0
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	v_lshrrev_b32_e32 v3, 6, v0
	v_bfe_i32 v12, v0, 6, 1
	v_and_b32_e32 v11, 64, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b32_e32 v6, 2, v3
	.loc	1 881 26                        ; attention.py:881:26
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s3, s13, s2
	.loc	1 880 28                        ; attention.py:880:28
	s_add_i32 s0, s12, 2
	.loc	1 884 13                        ; attention.py:884:13
	v_add_nc_u32_e32 v2, s3, v1
	.loc	1 882 22                        ; attention.py:882:22
	v_cmp_gt_i32_e32 vcc_lo, s13, v1
	.loc	1 883 23                        ; attention.py:883:23
	s_and_b32 s9, s5, 0xffff
	s_mov_b32 s8, s4
	.loc	1 884 13                        ; attention.py:884:13
	v_mul_lo_u32 v4, s0, v3
	v_mul_lo_u32 v2, v2, s0
	.loc	1 881 26                        ; attention.py:881:26
	s_mul_i32 s3, s3, s0
	.loc	1 882 22                        ; attention.py:882:22
	v_cmp_gt_i32_e64 s1, s13, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 884 13                        ; attention.py:884:13
	v_lshl_add_u32 v5, s0, 1, v4
	.loc	1 883 23                        ; attention.py:883:23
	v_lshlrev_b32_e32 v2, 2, v2
	.loc	1 882 22                        ; attention.py:882:22
	v_cmp_gt_i32_e64 s0, s13, v6
	.loc	1 883 23                        ; attention.py:883:23
	v_add_lshl_u32 v8, s3, v4, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_lshl_u32 v7, s3, v5, 2
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 894 23                        ; attention.py:894:23
	v_add_nc_u32_e32 v2, 4, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 883 23                        ; attention.py:883:23
	v_cndmask_b32_e64 v3, 0x80000000, v8, s1
	v_cndmask_b32_e64 v6, 0x80000000, v7, s0
	s_clause 0x2
	buffer_load_b32 v1, v1, s[8:11], 0 offen
	buffer_load_b32 v6, v6, s[8:11], 0 offen
	buffer_load_b32 v3, v3, s[8:11], 0 offen
	.loc	1 894 23                        ; attention.py:894:23
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	buffer_load_b32 v2, v2, s[8:11], 0 offen
	.loc	1 883 23                        ; attention.py:883:23
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e32 v1, 0xff800000, v1, vcc_lo
	.loc	1 879 25                        ; attention.py:879:25
	v_and_b32_e32 v7, 63, v0
	.loc	1 883 23                        ; attention.py:883:23
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v6, 0xff800000, v6, s0
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v3, 0xff800000, v3, s1
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:888:22 ] ]
	v_max_f32_e32 v9, v1, v1
.Ltmp2:
	.loc	1 901 13                        ; attention.py:901:13
	v_add3_u32 v8, s3, 2, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 890 27                        ; attention.py:890:27
	v_cmp_neq_f32_e64 s5, 0xff800000, v3
	.loc	1 900 26                        ; attention.py:900:26
	v_add_lshl_u32 v5, v8, v5, 2
	v_add_lshl_u32 v4, v8, v4, 2
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:888:22 ]
	v_mov_b32_e32 v8, v1
.Ltmp4:
	.loc	1 906 41                        ; attention.py:906:41
	v_cmp_gt_i32_e64 s3, s12, v7
.Ltmp5:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:909:18 ]
	v_lshlrev_b32_e32 v13, 2, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:888:22 ]
	v_mov_b32_dpp v8, v8 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp7:
	.loc	1 906 18                        ; attention.py:906:18
	s_and_b32 s4, s3, s0
	.loc	1 900 26                        ; attention.py:900:26
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	.loc	1 906 18                        ; attention.py:906:18
	s_and_b32 s4, s3, s1
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:888:22 ] ]
	v_max_f32_e32 v8, v8, v8
.Ltmp9:
	.loc	1 900 26                        ; attention.py:900:26
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	s_clause 0x1
	buffer_load_b32 v5, v5, s[8:11], 0 offen
	buffer_load_b32 v4, v4, s[8:11], 0 offen
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:888:22 ] ]
	v_max_f32_e32 v8, v9, v8
.Ltmp11:
	.loc	1 890 27                        ; attention.py:890:27
	v_cmp_neq_f32_e64 s4, 0xff800000, v6
	.loc	1 915 13                        ; attention.py:915:13
	s_and_b32 s9, s7, 0xffff
	s_mov_b32 s8, s6
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:888:22 ]
	v_mov_b32_e32 v9, v8
.Ltmp13:
	.loc	1 890 13                        ; attention.py:890:13
	s_and_b32 s0, s0, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:888:22 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:888:22 ] ]
	v_max_f32_e32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v8, v8, v9
.Ltmp16:
	.loc	1 891 26                        ; attention.py:891:26
	v_sub_f32_e32 v10, v3, v8
	v_sub_f32_e32 v9, v6, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 891 13 is_stmt 0              ; attention.py:891:13
	v_exp_f32_e32 v6, v10
.Ltmp17:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:909:18 ]
	v_lshlrev_b32_e32 v10, 2, v0
	v_bfe_i32 v0, v0, 0, 1
	v_and_b32_e32 v10, 0xf8, v10
.Ltmp18:
	.loc	1 891 13                        ; attention.py:891:13
	v_exp_f32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp19:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:909:18 ]
	v_and_or_b32 v0, 0x104, v0, v10
.Ltmp20:
	.loc	1 889 19                        ; attention.py:889:19
	v_cndmask_b32_e64 v3, 0, v9, s0
	.loc	1 890 13                        ; attention.py:890:13
	s_and_b32 s0, s1, s5
.Ltmp21:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:909:18 ]
	v_and_b32_e32 v9, 0x104, v12
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp22:
	.loc	1 889 19                        ; attention.py:889:19
	v_cndmask_b32_e64 v6, 0, v6, s0
	.loc	1 890 27                        ; attention.py:890:27
	v_cmp_neq_f32_e64 s0, 0xff800000, v1
.Ltmp23:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:909:18 ]
	v_xad_u32 v9, v9, v13, 0
.Ltmp24:
	.loc	1 890 13                        ; attention.py:890:13
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 911 26                        ; attention.py:911:26
	s_mul_i32 s0, s12, s2
	.loc	1 909 25                        ; attention.py:909:25
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v3, v3, v5
.Ltmp25:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:909:18 ]
	v_lshrrev_b32_e32 v5, 4, v11
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:909:18 ] ]
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v3, v4, v6
.Ltmp27:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:909:18 ]
	v_xad_u32 v0, v0, v5, 0
	v_add3_u32 v5, 0, v10, v5
	ds_store_b32 v9, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v0
.Ltmp28:
	.loc	1 891 26                        ; attention.py:891:26
	v_sub_f32_e32 v3, v1, v8
.Ltmp29:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:909:18 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp30:
	.loc	1 891 13                        ; attention.py:891:13
	v_exp_f32_e32 v3, v3
	.loc	1 889 19                        ; attention.py:889:19
	v_cndmask_b32_e32 v1, 0, v3, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp31:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:909:18 ]
	v_dual_mov_b32 v3, v0 :: v_dual_mul_f32 v4, v2, v1
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp32:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:899:23 ]
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:909:18 ] ]
	v_dual_add_f32 v0, v0, v3 :: v_dual_add_nc_u32 v3, 0, v13
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp34:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:899:23 ] ]
	v_fmac_f32_e32 v4, v2, v1
.Ltmp35:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:909:18 ]
	ds_store_b32 v5, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v3
.Ltmp36:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:899:23 ]
	v_mov_b32_e32 v1, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:899:23 ] ]
	v_add_f32_e32 v1, v4, v1
.Ltmp38:
	.loc	1 910 46                        ; attention.py:910:46
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_scale_f32 v2, null, v1, v1, v0
	v_div_scale_f32 v5, vcc_lo, v0, v1, v0
	v_rcp_f32_e32 v3, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v4, -v2, v3, 1.0
	v_fmac_f32_e32 v3, v4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v4, v5, v3
	v_fma_f32 v6, -v2, v4, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v4, v6, v3
	v_fma_f32 v2, -v2, v4, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v2, v2, v3, v4
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:909:18 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v11
.Ltmp40:
	.loc	1 910 46                        ; attention.py:910:46
	v_div_fixup_f32 v0, v2, v1, v0
	.loc	1 915 13                        ; attention.py:915:13
	v_add_lshl_u32 v2, s0, v7, 2
	.loc	1 910 27                        ; attention.py:910:27
	v_cmp_lt_f32_e64 s0, 0, v1
	.loc	1 915 13                        ; attention.py:915:13
	s_and_b32 vcc_lo, vcc_lo, s3
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 910 18                        ; attention.py:910:18
	v_cndmask_b32_e64 v0, 0, v0, s0
	.loc	1 915 13                        ; attention.py:915:13
	buffer_store_b32 v0, v1, s[8:11], 0 offen
	.loc	1 868 5                         ; attention.py:868:5
	s_endpgm
.Ltmp41:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds4
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 40
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 14
		.amdhsa_next_free_sgpr 14
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
		.amdhsa_inst_pref_size 8
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds4.num_vgpr, 14
	.set amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds4.numbered_sgpr, 14
	.set amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 936
; TotalNumSgprs: 16
; NumVgprs: 14
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 1
; NumSGPRsForWavesPerEU: 16
; NumVGPRsForWavesPerEU: 14
; Occupancy: 16
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x88 DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x62 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	888                             ; DW_AT_call_line
	.byte	22                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	909                             ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x76:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	899                             ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x83:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds4
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .offset:         16
        .size:           4
        .value_kind:     by_value
      - .offset:         20
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 40
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     16
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_reduce_float32_dv64_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     14
    .vgpr_spill_count: 0
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1151
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
