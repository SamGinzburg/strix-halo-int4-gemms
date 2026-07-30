	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[20:23], s[0:1], 0x80
	s_load_b128 s[28:31], s[0:1], 0x4c
	s_load_b32 s56, s[0:1], 0x60
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v70, 5, v0
	s_clause 0x1
	s_load_b64 s[40:41], s[0:1], 0x0
	s_load_b64 s[36:37], s[0:1], 0x18
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	v_and_b32_e32 v42, 0x60, v0
	v_or_b32_e32 v71, 4, v70
	v_or_b32_e32 v72, 8, v70
	v_or_b32_e32 v73, 12, v70
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v18, 0x88, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v43, 1, v42
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v77, 0, v0
	v_xor_b32_e32 v19, 0x110, v0
	v_xor_b32_e32 v20, 0x198, v0
	v_add_nc_u32_e32 v78, 0, v18
	.loc	1 590 31                        ; attention.py:590:31
	s_mov_b32 s38, s42
	s_mov_b32 s39, s43
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v79, 0, v19
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s20
	s_bitcmp1_b32 s20, 8
	.loc	1 583 26                        ; attention.py:583:26
	s_mul_i32 s16, s3, s30
	s_cselect_b32 s27, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v80, 0, v20
	s_cselect_b32 s19, -1, 0
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s14, s28
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s18, s2, 6
	.loc	1 566 23                        ; attention.py:566:23
	s_cvt_f32_u32 s4, s14
	s_sub_i32 s5, 0, s14
	s_abs_i32 s2, s3
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v3, s18, v72
	.loc	1 566 23                        ; attention.py:566:23
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v4, s18, v73
	.loc	1 585 26                        ; attention.py:585:26
	v_lshlrev_b32_e32 v44, 1, v0
	v_lshlrev_b32_e32 v45, 4, v42
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v76, 15, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 566 23                        ; attention.py:566:23
	v_readfirstlane_b32 s4, v1
	.loc	1 584 86                        ; attention.py:584:86
	v_and_b32_e32 v1, 31, v0
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[46:47], null, s56, v70, v[1:2]
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e64 s26, s56, v1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 566 23                        ; attention.py:566:23
	s_cvt_u32_f32 s4, s4
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v1, s18, v70
	.loc	1 570 21 is_stmt 0              ; attention.py:570:21
	v_or_b32_e32 v2, s18, v71
	.loc	1 566 23 is_stmt 1              ; attention.py:566:23
	s_mul_i32 s5, s5, s4
	.loc	1 584 26                        ; attention.py:584:26
	v_lshl_add_u32 v74, s56, 2, v46
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_hi_u32 s5, s4, s5
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v5, 16, v1
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s4, s4, s5
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v6, 20, v1
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_hi_u32 s4, s2, s4
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v7, 24, v1
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_i32 s5, s4, s14
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v9, 28, v1
	.loc	1 566 23                        ; attention.py:566:23
	s_sub_i32 s2, s2, s5
	s_add_i32 s5, s4, 1
	s_sub_i32 s6, s2, s14
	s_cmp_ge_u32 s2, s14
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v10, 32, v1
	.loc	1 566 23                        ; attention.py:566:23
	s_cselect_b32 s4, s5, s4
	s_cselect_b32 s2, s6, s2
	s_add_i32 s5, s4, 1
	s_cmp_ge_u32 s2, s14
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v11, 36, v1
	.loc	1 566 23                        ; attention.py:566:23
	s_cselect_b32 s24, s5, s4
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s15, s29
	s_xor_b32 s25, s28, s29
	s_cvt_f32_u32 s2, s15
	s_sub_i32 s11, 0, s15
	s_ashr_i32 s25, s25, 31
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v12, 40, v1
	.loc	1 568 22                        ; attention.py:568:22
	v_rcp_iflag_f32_e32 v8, s2
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v13, 44, v1
	v_or_b32_e32 v14, 48, v1
	v_or_b32_e32 v15, 52, v1
	v_or_b32_e32 v16, 56, v1
	v_or_b32_e32 v17, 60, v1
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v1
	v_cmp_gt_i32_e64 s2, s30, v2
	v_cmp_gt_i32_e64 s4, s30, v3
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[47:48], null, s56, 12, v[46:47]
	.loc	1 568 22                        ; attention.py:568:22
	v_readfirstlane_b32 s6, v8
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s30, v4
	.loc	1 584 26                        ; attention.py:584:26
	v_lshl_add_u32 v75, s56, 3, v46
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s7, s30, v6
	v_cmp_gt_i32_e64 s8, s30, v7
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_f32 s9, s6, 0x4f7ffffe
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s6, s30, v5
	v_cmp_gt_i32_e64 s10, s30, v10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 568 22                        ; attention.py:568:22
	s_cvt_u32_f32 s13, s9
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s9, s30, v9
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_i32 s12, s11, s13
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s11, s30, v11
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_hi_u32 s17, s13, s12
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s12, s30, v12
	.loc	1 568 22                        ; attention.py:568:22
	s_add_i32 s17, s13, s17
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s13, s30, v13
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_hi_u32 s17, s14, s17
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_i32 s33, s17, s15
	s_add_i32 s34, s17, 1
	s_sub_i32 s33, s14, s33
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s14, s30, v14
	.loc	1 568 22                        ; attention.py:568:22
	s_sub_i32 s35, s33, s15
	s_cmp_ge_u32 s33, s15
	s_cselect_b32 s17, s34, s17
	s_cselect_b32 s33, s35, s33
	s_add_i32 s34, s17, 1
	s_cmp_ge_u32 s33, s15
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s15, s30, v15
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s33, s34, s17
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s34, s16, s18
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, vcc_lo, s26
	.loc	1 584 26                        ; attention.py:584:26
	s_mul_i32 s35, s34, s56
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s16, s30, v16
	.loc	1 584 26                        ; attention.py:584:26
	v_add_nc_u32_e32 v1, s35, v46
	v_add_nc_u32_e32 v13, s35, v74
	v_add_nc_u32_e32 v14, s35, v75
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s17, s30, v17
	.loc	1 584 26                        ; attention.py:584:26
	v_add_nc_u32_e32 v15, s35, v47
	v_mad_u64_u32 v[2:3], null, s56, 20, v[1:2]
	v_lshl_add_u32 v16, s56, 4, v1
	v_lshl_add_u32 v17, s56, 5, v1
	.loc	1 585 26                        ; attention.py:585:26
	s_and_b32 s41, s41, 0xffff
	.loc	1 590 31                        ; attention.py:590:31
	s_and_b32 s37, s37, 0xffff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[3:4], null, s56, 24, v[1:2]
	v_mad_u64_u32 v[4:5], null, s56, 28, v[1:2]
	v_mad_u64_u32 v[5:6], null, s56, 36, v[1:2]
	v_mad_u64_u32 v[6:7], null, s56, 40, v[1:2]
	v_mad_u64_u32 v[7:8], null, s56, 44, v[1:2]
	v_mad_u64_u32 v[8:9], null, s56, 48, v[1:2]
	v_mad_u64_u32 v[9:10], null, s56, 52, v[1:2]
	v_mad_u64_u32 v[10:11], null, s56, 56, v[1:2]
	v_mad_u64_u32 v[11:12], null, s56, 60, v[1:2]
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s2, s26
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v12, 0x80000000, v13, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s4, s26
	.loc	1 568 22                        ; attention.py:568:22
	s_xor_b32 s4, s33, s25
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v13, 0x80000000, v14, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s5, s26
	.loc	1 568 22                        ; attention.py:568:22
	s_sub_i32 s5, s4, s25
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v14, 0x80000000, v15, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s6, s26
	.loc	1 569 19                        ; attention.py:569:19
	s_abs_i32 s4, s5
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v15, 0x80000000, v16, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s7, s26
	.loc	1 569 19                        ; attention.py:569:19
	s_cvt_f32_u32 s6, s4
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s8, s26
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s9, s26
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s10, s26
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v16, 0x80000000, v17, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s11, s26
	.loc	1 585 26                        ; attention.py:585:26
	s_clause 0x5
	buffer_load_u8 v1, v1, s[40:43], 0 offen
	buffer_load_u8 v12, v12, s[40:43], 0 offen
	buffer_load_u8 v13, v13, s[40:43], 0 offen
	buffer_load_u8 v15, v15, s[40:43], 0 offen
	buffer_load_u8 v2, v2, s[40:43], 0 offen
	buffer_load_u8 v3, v3, s[40:43], 0 offen
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s12, s26
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v17, v43, v76
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s14, s26
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s13, s26
	.loc	1 591 17                        ; attention.py:591:17
	v_add_nc_u32_e32 v69, s34, v17
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s15, s26
	.loc	1 585 26                        ; attention.py:585:26
	s_clause 0x1
	buffer_load_u8 v16, v16, s[40:43], 0 offen
	buffer_load_u8 v8, v8, s[40:43], 0 offen
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s16, s26
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v17, s18, v17
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s17, s26
	.loc	1 585 26                        ; attention.py:585:26
	s_clause 0x1
	buffer_load_u8 v5, v5, s[40:43], 0 offen
	buffer_load_u8 v9, v9, s[40:43], 0 offen
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	s_clause 0x5
	buffer_load_u8 v6, v6, s[40:43], 0 offen
	buffer_load_u8 v10, v10, s[40:43], 0 offen
	buffer_load_u8 v14, v14, s[40:43], 0 offen
	buffer_load_u8 v4, v4, s[40:43], 0 offen
	buffer_load_u8 v7, v7, s[40:43], 0 offen
	buffer_load_u8 v11, v11, s[40:43], 0 offen
	.loc	1 590 31                        ; attention.py:590:31
	v_lshlrev_b32_e32 v18, 1, v69
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, s30, v17
	s_mov_b32 s43, 0
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(15)
	ds_store_b8 v77, v1
	s_waitcnt vmcnt(12)
	ds_store_b8 v77, v15 offset:512
	s_waitcnt vmcnt(9)
	ds_store_b8 v77, v16 offset:1024
	s_waitcnt vmcnt(8)
	ds_store_b8 v77, v8 offset:1536
	ds_store_b8 v78, v12
	ds_store_b8 v78, v2 offset:512
	s_waitcnt vmcnt(7)
	ds_store_b8 v78, v5 offset:1024
	s_waitcnt vmcnt(6)
	ds_store_b8 v78, v9 offset:1536
	ds_store_b8 v79, v13
	ds_store_b8 v79, v3 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v79, v6 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v79, v10 offset:1536
	s_waitcnt vmcnt(3)
	ds_store_b8 v80, v14
	s_waitcnt vmcnt(2)
	ds_store_b8 v80, v4 offset:512
	s_waitcnt vmcnt(1)
	ds_store_b8 v80, v7 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v80, v11 offset:1536
	.loc	1 590 31                        ; attention.py:590:31
	v_cndmask_b32_e64 v17, 0x80000000, v18, s2
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_lshlrev_b32_e32 v1, 5, v76
	.loc	1 590 31                        ; attention.py:590:31
	buffer_load_u16 v57, v17, s[36:39], 0 offen
	.loc	1 585 26                        ; attention.py:585:26
	v_and_or_b32 v83, v44, 24, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v1, v83, v45
	v_add_nc_u32_e32 v2, 0, v1
	v_xad_u32 v3, v1, 8, 0
	v_xad_u32 v4, v1, 16, 0
	v_xad_u32 v1, v1, 24, 0
	ds_load_b64 v[48:49], v2
	ds_load_b64 v[50:51], v3
	ds_load_b64 v[52:53], v4
	ds_load_b64 v[54:55], v1
	.loc	1 569 19                        ; attention.py:569:19
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 606 16                        ; attention.py:606:16
	s_add_i32 s6, s31, 15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 606 15 is_stmt 0              ; attention.py:606:15
	s_ashr_i32 s7, s6, 31
	s_lshr_b32 s8, s7, 28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s8
	.loc	1 606 14                        ; attention.py:606:14
	s_and_b32 s42, s6, -16
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 569 19 is_stmt 1              ; attention.py:569:19
	v_readfirstlane_b32 s7, v1
	.loc	1 612 9                         ; attention.py:612:9
	s_bfe_u32 s8, s20, 0x10008
	s_cbranch_scc1 .LBB0_4
; %bb.1:
	.loc	1 620 9                         ; attention.py:620:9
	v_cndmask_b32_e64 v85, 0, 1, s19
	s_and_not1_b32 vcc_lo, exec_lo, s19
	s_cbranch_vccz .LBB0_5
.LBB0_2:
	.loc	1 571 21                        ; attention.py:571:21
	v_and_b32_e32 v68, 16, v0
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_lt_i32 s43, s42
	s_delay_alu instid0(VALU_DEP_1)
	v_lshrrev_b32_e32 v84, 1, v68
	s_cbranch_scc1 .LBB0_6
.LBB0_3:                                ; %.._crit_edge_crit_edge
	.loc	1 843 74                        ; attention.py:843:74
	v_lshrrev_b32_e32 v33, 1, v68
	s_mov_b32 s8, 0
	s_branch .LBB0_7
.LBB0_4:
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s8, s18, s22
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s10, s18, s21
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s8, s8, s23
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s10, s10, s23
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s8, s8, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s8, s31, s8
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s8, s8, 15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 619 34 is_stmt 0              ; attention.py:619:34
	s_ashr_i32 s9, s8, 31
	s_lshr_b32 s9, s9, 28
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s8, s8, s9
	.loc	1 613 25 is_stmt 1              ; attention.py:613:25
	s_max_i32 s9, s10, 0
	.loc	1 619 33                        ; attention.py:619:33
	s_and_b32 s8, s8, -16
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s43, s9, 0x7ffffff0
	.loc	1 619 18                        ; attention.py:619:18
	s_min_i32 s42, s42, s8
	.loc	1 620 9                         ; attention.py:620:9
	v_cndmask_b32_e64 v85, 0, 1, s19
	s_and_not1_b32 vcc_lo, exec_lo, s19
	s_cbranch_vccnz .LBB0_2
.LBB0_5:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s8, s18, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s8, s8, 64
	s_min_i32 s8, s31, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s8, s8, 15
	.loc	1 622 34 is_stmt 1              ; attention.py:622:34
	s_ashr_i32 s9, s8, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s9, s9, 28
	s_add_i32 s8, s8, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 622 33 is_stmt 0              ; attention.py:622:33
	s_and_b32 s8, s8, -16
	.loc	1 622 18                        ; attention.py:622:18
	s_min_i32 s42, s42, s8
	.loc	1 571 21 is_stmt 1              ; attention.py:571:21
	v_and_b32_e32 v68, 16, v0
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_lt_i32 s43, s42
	s_delay_alu instid0(VALU_DEP_1)
	v_lshrrev_b32_e32 v84, 1, v68
	s_cbranch_scc0 .LBB0_3
.LBB0_6:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr33
.LBB0_7:                                ; %Flow157
	s_clause 0x1
	s_load_b64 s[40:41], s[0:1], 0x38
	s_load_b32 s33, s[0:1], 0x64
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v81, 0x70, v0
	v_and_b32_e32 v82, 64, v0
	v_cmp_eq_u32_e64 s11, 0, v68
	s_and_not1_b32 vcc_lo, exec_lo, s8
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v41, v8
	v_mov_b32_e32 v40, v8
	v_mov_b32_e32 v37, v8
	v_mov_b32_e32 v36, v8
	v_mov_b32_e32 v39, v8
	v_mov_b32_e32 v38, v8
	v_mov_b32_e32 v35, v8
	v_mov_b32_e32 v34, v8
	s_cbranch_vccnz .LBB0_31
; %bb.8:                                ; %.lr.ph
	s_xor_b32 s8, s3, s28
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x6c
	s_load_b64 s[34:35], s[0:1], 0x30
	s_ashr_i32 s8, s8, 31
	.loc	1 570 31 is_stmt 1              ; attention.py:570:31
	v_lshrrev_b32_e32 v2, 4, v81
	s_xor_b32 s9, s24, s8
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_sub_i32 s16, s9, s8
	s_clause 0x1
	s_load_b128 s[36:39], s[0:1], 0x8
	s_load_b128 s[44:47], s[0:1], 0x20
	s_mul_i32 s9, s16, s28
	s_load_b32 s28, s[0:1], 0x7c
	.loc	1 570 21 is_stmt 0              ; attention.py:570:21
	v_or_b32_e32 v1, s18, v2
	s_cvt_u32_f32 s7, s7
	s_sub_i32 s8, 0, s4
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v3, 8, v2
	s_sub_i32 s3, s3, s9
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v86, s23, v1
	.loc	1 587 23 is_stmt 1              ; attention.py:587:23
	v_cmp_gt_i32_e64 s1, s30, v1
	s_mul_i32 s8, s8, s7
	s_abs_i32 s9, s3
	s_mul_hi_u32 s8, s7, s8
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v4, 16, v2
	s_add_i32 s7, s7, s8
	v_or_b32_e32 v5, 24, v2
	.loc	1 570 21 is_stmt 0              ; attention.py:570:21
	v_or_b32_e32 v10, s18, v3
	.loc	1 590 31 is_stmt 1              ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v94.h, v57.l
	s_mul_hi_u32 s7, s9, s7
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v6, 32, v2
	v_or_b32_e32 v7, 40, v2
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s28, v76
	s_ashr_i32 s8, s3, 31
	s_ashr_i32 s5, s5, 31
	.loc	1 569 19                        ; attention.py:569:19
	s_mul_i32 s10, s7, s4
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v8, 48, v2
	v_or_b32_e32 v9, 56, v2
	.loc	1 569 19                        ; attention.py:569:19
	s_xor_b32 s5, s8, s5
	s_sub_i32 s8, s9, s10
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[57:58], null, s15, v3, v[1:2]
	v_dual_mov_b32 v32, v33 :: v_dual_lshlrev_b32 v3, 2, v42
	v_mad_u64_u32 v[58:59], null, s15, v4, v[1:2]
	v_mad_u64_u32 v[59:60], null, s15, v5, v[1:2]
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v3, v76, 3, v3
	v_mad_u64_u32 v[60:61], null, s15, v6, v[1:2]
	s_ashr_i32 s6, s6, 4
	.loc	1 569 19                        ; attention.py:569:19
	s_add_i32 s9, s7, 1
	s_sub_i32 s10, s8, s4
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[61:62], null, s15, v7, v[1:2]
	.loc	1 569 19                        ; attention.py:569:19
	s_cmp_ge_u32 s8, s4
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[62:63], null, s15, v8, v[1:2]
	v_mad_u64_u32 v[63:64], null, s15, v9, v[1:2]
	.loc	1 569 19                        ; attention.py:569:19
	s_cselect_b32 s7, s9, s7
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v11, s18, v4
	v_or_b32_e32 v12, s18, v5
	v_or_b32_e32 v14, s18, v7
	v_or_b32_e32 v15, s18, v8
	v_dual_mov_b32 v31, v33 :: v_dual_and_b32 v4, 14, v0
	v_and_b32_e32 v5, 1, v0
	v_lshrrev_b32_e32 v7, 2, v68
	v_xor_b32_e32 v3, v3, v43
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[64:65], null, s15, v2, v[1:2]
	v_lshlrev_b32_e32 v1, 2, v81
	.loc	1 569 19                        ; attention.py:569:19
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s7, 1
	s_cmp_ge_u32 s8, s4
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v56, 63, v0
	.loc	1 569 19                        ; attention.py:569:19
	s_cselect_b32 s4, s9, s7
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v87, s23, v10
	v_dual_mov_b32 v28, v33 :: v_dual_add_nc_u32 v91, s23, v14
	v_dual_mov_b32 v29, v33 :: v_dual_add_nc_u32 v92, s23, v15
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s8, s30, v14
	v_cmp_gt_i32_e64 s9, s30, v15
	v_or_b32_e32 v95, v3, v7
	v_lshlrev_b32_e32 v2, 1, v4
	v_dual_mov_b32 v22, v33 :: v_dual_lshlrev_b32 v3, 5, v5
	v_lshl_or_b32 v1, v4, 8, v1
	v_mov_b32_e32 v14, 0x5410
	v_mov_b32_e32 v15, 0x7632
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v16, s18, v9
	v_or_b32_e32 v13, s18, v6
	v_or3_b32 v97, v1, v3, v2
	v_cndmask_b32_e64 v14, 0x1054, v14, s11
	v_cndmask_b32_e64 v15, 0x3276, v15, s11
	v_dual_mov_b32 v30, v33 :: v_dual_add_nc_u32 v93, s23, v16
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s10, s30, v16
	v_mul_u32_u24_e32 v6, 0x48, v4
	v_lshrrev_b32_e32 v16, 3, v42
	v_and_or_b32 v17, v44, 60, v45
	v_xor_b32_e32 v18, 8, v97
	v_lshl_or_b32 v14, v14, 8, v14
	v_lshl_or_b32 v15, v15, 8, v15
	.loc	1 771 51                        ; attention.py:771:51
	v_lshrrev_b32_e32 v121, 6, v82
	v_xor_b32_e32 v19, 12, v97
	v_xor_b32_e32 v16, v17, v16
	v_and_b32_e32 v14, 0x540054, v14
	v_dual_mov_b32 v24, v33 :: v_dual_and_b32 v15, 0x760076, v15
	v_add_nc_u32_e32 v113, 0, v18
	v_mov_b32_e32 v18, v33
	v_lshl_or_b32 v6, v5, 2, v6
	.loc	1 569 19                        ; attention.py:569:19
	s_xor_b32 s4, s4, s5
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[65:66], null, s33, v121, v[56:57]
	v_lshl_or_b32 v98, v5, 6, v16
	s_delay_alu instid0(VALU_DEP_3)
	v_or3_b32 v96, v6, v84, v70
	v_lshl_or_b32 v15, v15, 4, v15
	v_add_nc_u32_e32 v114, 0, v19
	v_mov_b32_e32 v19, v33
	v_lshl_or_b32 v14, v14, 4, v14
	.loc	1 569 19                        ; attention.py:569:19
	s_sub_i32 s4, s4, s5
	.loc	1 710 33                        ; attention.py:710:33
	s_mul_i32 s5, s16, s29
	.loc	1 772 39                        ; attention.py:772:39
	s_lshl_b32 s57, s6, 3
	.loc	1 710 33                        ; attention.py:710:33
	s_add_i32 s60, s4, s5
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v88, s23, v11
	.loc	1 710 32 is_stmt 0              ; attention.py:710:32
	s_mul_i32 s29, s60, s31
	.loc	1 773 30 is_stmt 1              ; attention.py:773:30
	s_mul_i32 s59, s60, s57
	.loc	1 794 21                        ; attention.py:794:21
	s_mul_i32 s60, s60, s6
	v_dual_mov_b32 v26, v33 :: v_dual_add_nc_u32 v89, s23, v12
	v_dual_mov_b32 v27, v33 :: v_dual_add_nc_u32 v90, s23, v13
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s4, s30, v10
	v_cmp_gt_i32_e64 s5, s30, v11
	v_cmp_gt_i32_e64 s6, s30, v12
	v_cmp_gt_i32_e64 s7, s30, v13
	v_xor_b32_e32 v10, 8, v83
	v_xor_b32_e32 v11, 16, v83
	v_xor_b32_e32 v12, 24, v83
	v_xor_b32_e32 v4, 0x240, v95
	v_xor_b32_e32 v6, 16, v96
	v_xor_b32_e32 v7, 32, v96
	v_xor_b32_e32 v8, 48, v96
	v_xor_b32_e32 v1, 64, v96
	v_xor_b32_e32 v2, 0x50, v96
	v_xor_b32_e32 v3, 0x60, v96
	v_xor_b32_e32 v9, 0x70, v96
	v_xor_b32_e32 v13, 4, v97
	v_xor_b32_e32 v17, 16, v97
	v_xor_b32_e32 v20, 20, v97
	v_xor_b32_e32 v5, 24, v97
	v_xor_b32_e32 v16, 28, v97
	v_xor_b32_e32 v21, 0x810, v98
	v_and_b32_e32 v99, 0x5040504, v14
	v_and_b32_e32 v100, 0x7060706, v15
	v_dual_mov_b32 v23, v33 :: v_dual_lshlrev_b32 v14, 1, v56
	v_lshl_add_u32 v15, v82, 2, 0
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[66:67], null, s33, 6, v[65:66]
	.loc	1 742 27                        ; attention.py:742:27
	s_mul_f32 s58, s12, 0x3fb8aa3b
	.loc	1 752 25                        ; attention.py:752:25
	s_mul_i32 s12, s15, s18
	.loc	1 753 27                        ; attention.py:753:27
	s_mul_i32 s13, s16, s13
	.loc	1 778 24                        ; attention.py:778:24
	v_cmp_gt_i32_e64 s0, s33, v56
	v_mov_b16_e32 v94.l, 0
	v_add_nc_u32_e32 v101, 0, v10
	v_add_nc_u32_e32 v102, 0, v11
	v_add_nc_u32_e32 v103, 0, v12
	v_dual_mov_b32 v11, v33 :: v_dual_add_nc_u32 v104, 0, v4
	v_add_nc_u32_e32 v105, 0, v6
	v_add_nc_u32_e32 v106, 0, v7
	v_add_nc_u32_e32 v107, 0, v8
	v_add_nc_u32_e32 v108, 0, v1
	v_dual_mov_b32 v4, v33 :: v_dual_add_nc_u32 v109, 0, v2
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v110, 0, v3
	v_dual_mov_b32 v6, v33 :: v_dual_add_nc_u32 v111, 0, v9
	v_dual_mov_b32 v3, v33 :: v_dual_add_nc_u32 v112, 0, v13
	v_dual_mov_b32 v160, 0xff800000 :: v_dual_add_nc_u32 v115, 0, v17
	v_dual_mov_b32 v7, v33 :: v_dual_add_nc_u32 v116, 0, v20
	v_dual_mov_b32 v144, 0xff800000 :: v_dual_add_nc_u32 v117, 0, v5
	v_dual_mov_b32 v145, 0xff800000 :: v_dual_add_nc_u32 v118, 0, v16
	v_dual_mov_b32 v146, 0xff800000 :: v_dual_add_nc_u32 v119, 0, v21
	v_dual_mov_b32 v147, 0xff800000 :: v_dual_add_nc_u32 v120, v15, v14
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v20, v33
	v_mov_b32_e32 v21, v33
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, v33
	v_mov_b32_e32 v12, v33
	v_mov_b32_e32 v13, v33
	v_mov_b32_e32 v14, v33
	v_mov_b32_e32 v15, v33
	v_mov_b32_e32 v16, v33
	v_mov_b32_e32 v2, v33
	v_mov_b32_e32 v5, v33
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v122, 4, v68
	v_mov_b32_e32 v8, v33
	.loc	1 771 51                        ; attention.py:771:51
	v_or_b32_e32 v123, 4, v121
	v_or_b32_e32 v124, 6, v121
	v_subrev_nc_u32_e32 v125, s21, v86
	v_subrev_nc_u32_e32 v126, s21, v87
	v_subrev_nc_u32_e32 v127, s21, v88
	v_subrev_nc_u32_e32 v128, s21, v89
	v_subrev_nc_u32_e32 v129, s21, v90
	v_subrev_nc_u32_e32 v130, s21, v91
	v_subrev_nc_u32_e32 v131, s21, v92
	v_subrev_nc_u32_e32 v132, s21, v93
	v_dual_mov_b32 v148, 0xff800000 :: v_dual_add_nc_u32 v133, s22, v86
	v_dual_mov_b32 v149, 0xff800000 :: v_dual_add_nc_u32 v134, s22, v87
	v_dual_mov_b32 v150, 0xff800000 :: v_dual_add_nc_u32 v135, s22, v88
	v_dual_mov_b32 v151, 0xff800000 :: v_dual_add_nc_u32 v136, s22, v89
	v_dual_mov_b32 v152, 0 :: v_dual_add_nc_u32 v137, s22, v90
	v_dual_mov_b32 v153, 0 :: v_dual_add_nc_u32 v138, s22, v91
	v_dual_mov_b32 v154, 0 :: v_dual_add_nc_u32 v139, s22, v92
	v_dual_mov_b32 v155, 0 :: v_dual_add_nc_u32 v140, s22, v93
	.loc	1 707 13                        ; attention.py:707:13
	v_lshl_add_u32 v141, s33, 1, v65
	v_lshl_add_u32 v142, s33, 2, v65
	v_lshl_add_u32 v143, v76, 1, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v167, 0xff800000 :: v_dual_mov_b32 v164, 0xff800000
	v_dual_mov_b32 v163, 0xff800000 :: v_dual_mov_b32 v166, 0xff800000
	v_dual_mov_b32 v165, 0xff800000 :: v_dual_mov_b32 v162, 0xff800000
	v_mov_b32_e32 v161, 0xff800000
	v_mov_b32_e32 v67, 0xff800000
	.loc	1 754 27                        ; attention.py:754:27
	s_mul_i32 s3, s3, s14
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	s_add_i32 s30, s13, s12
	s_and_b32 s37, s37, 0xffff
	s_and_b32 s45, s45, 0xffff
	s_add_i32 s30, s30, s3
	s_and_b32 s49, s39, 0xffff
	s_mov_b32 s48, s38
	s_and_b32 s53, s47, 0xffff
	s_mov_b32 s52, s46
	s_mov_b32 s38, s50
	s_mov_b32 s39, s51
	s_mov_b32 s61, 0x76543210
	s_mov_b32 s46, s50
	s_mov_b32 s47, s51
	s_branch .LBB0_10
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 27 is_stmt 0                ; attention.py:0:27
	s_or_b32 exec_lo, exec_lo, s11
	.loc	1 759 34 is_stmt 1              ; attention.py:759:34
	s_waitcnt vmcnt(0)
	v_and_b16 v169.h, 0xff, v45.l
	.loc	1 785 30                        ; attention.py:785:30
	v_mov_b16_e32 v45.l, 0
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e64 v175.h, v174.l
	v_mov_b16_e64 v174.h, v173.l
	v_mov_b16_e64 v174.l, v45.l
	v_mov_b16_e64 v173.l, v45.l
	v_mov_b16_e64 v173.h, v172.l
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_mul_f32_e32 v37, v94, v37
	v_mul_f32_e32 v36, v94, v36
	.loc	1 759 34                        ; attention.py:759:34
	v_and_b16 v168.h, 0xff, v45.h
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e64 v45.h, v175.l
	v_mov_b16_e64 v175.l, v45.l
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v173, v37, v173
	v_dual_mul_f32 v35, v94, v35 :: v_dual_mul_f32 v174, v36, v174
	v_mul_f32_e32 v34, v94, v34
	.loc	1 759 34                        ; attention.py:759:34
	v_and_b16 v43.h, 0xff, v43.h
	v_and_b16 v43.l, 0xff, v43.l
	v_and_b16 v42.l, 0xff, v42.l
	v_and_b16 v42.h, 0xff, v42.h
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e64 v176.l, v45.l
	v_mov_b16_e64 v176.h, v168.l
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v175, v35, v175 :: v_dual_mul_f32 v178, v34, v45
	.loc	1 759 34                        ; attention.py:759:34
	v_and_b16 v34.l, 0xff, v44.l
	v_and_b16 v44.h, 0xff, v44.h
	v_cmp_ne_u16_e32 vcc_lo, 0, v42.h
	v_cmp_ne_u16_e64 s3, 0, v42.l
	v_cmp_ne_u16_e64 s11, 0, v43.l
	v_cmp_ne_u16_e64 s12, 0, v43.h
	v_cmp_ne_u16_e64 s14, 0, v169.h
	v_cmp_ne_u16_e64 s15, 0, v168.h
	v_cmp_ne_u16_e64 s16, 0, v34.l
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 759 34                        ; attention.py:759:34
	v_cmp_ne_u16_e64 s13, 0, v44.h
	.loc	1 759 25 is_stmt 0              ; attention.py:759:25
	s_and_b32 s23, s66, vcc_lo
	s_and_b32 s24, s64, s3
	s_and_b32 s18, s65, s15
	s_and_b32 s25, s25, s11
	s_and_b32 s20, s63, s12
	s_and_b32 s19, s62, s16
	s_and_b32 s22, s54, s14
	.loc	1 732 30 is_stmt 1              ; attention.py:732:30
	v_mul_f32_e32 v177, v94, v38
	.loc	1 759 25                        ; attention.py:759:25
	v_cndmask_b32_e64 v42, 0, 1, s23
	v_cndmask_b32_e64 v43, 0, 1, s24
	v_cndmask_b32_e64 v34, 0, 1, s18
	v_cndmask_b32_e64 v35, 0, 1, s25
	v_cndmask_b32_e64 v38, 0, 1, s20
	v_cndmask_b32_e64 v36, 0, 1, s19
	v_cndmask_b32_e64 v44, 0, 1, s22
	s_and_b32 s21, s55, s13
	v_lshlrev_b16 v34.l, 8, v34.l
	v_cndmask_b32_e64 v37, 0, 1, s21
	v_lshlrev_b16 v34.h, 8, v35.l
	v_mov_b16_e32 v35.l, v42.l
	v_lshlrev_b16 v35.h, 8, v36.l
	v_mov_b16_e32 v36.l, v44.l
	v_lshlrev_b16 v36.h, 8, v38.l
	v_mov_b16_e32 v38.l, v43.l
	v_or_b16 v37.h, v37.l, v34.l
	v_or_b16 v37.l, v35.l, v34.h
	v_add_nc_u32_e32 v34, 0, v95
	v_or_b16 v35.h, v36.l, v35.h
	v_or_b16 v35.l, v38.l, v36.h
	v_add_nc_u32_e32 v36, 0, v96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v34, v37
	ds_store_b32 v104, v35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v34, v36
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v34, v105
	ds_load_u8_d16 v35, v106
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v35, v107
	ds_load_u8_d16 v36, v108
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v36, v109
	ds_load_u8_d16 v37, v110
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v37, v111
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v39, v39
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e64 v172.l, v45.l
	v_mov_b16_e64 v172.h, v171.l
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e64 v171.l, v45.l
	v_mov_b16_e64 v171.h, v170.l
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v41, v41
	v_dual_mul_f32 v39, v94, v39 :: v_dual_mul_f32 v38, v177, v172
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e64 v170.l, v45.l
	v_mov_b16_e64 v170.h, v169.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v40, v94, v40 :: v_dual_mul_f32 v39, v39, v171
	v_mul_f32_e32 v41, v94, v41
	.loc	1 759 25                        ; attention.py:759:25
	v_and_b16 v34.l, 1, v34.l
	v_and_b16 v34.h, 1, v34.h
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v40, v40, v170
	.loc	1 759 25                        ; attention.py:759:25
	v_and_b16 v36.l, 1, v36.l
	s_waitcnt lgkmcnt(0)
	v_and_b16 v37.l, 1, v37.l
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v41, v41, v176
	.loc	1 759 25                        ; attention.py:759:25
	v_and_b16 v37.h, 1, v37.h
	v_and_b16 v35.l, 1, v35.l
	v_and_b16 v35.h, 1, v35.h
	.loc	1 742 17                        ; attention.py:742:17
	v_dual_mul_f32 v42, s58, v178 :: v_dual_mul_f32 v43, s58, v175
	v_dual_mul_f32 v38, s58, v38 :: v_dual_mul_f32 v41, s58, v41
	v_mul_f32_e32 v40, s58, v40
	.loc	1 759 25                        ; attention.py:759:25
	v_and_b16 v36.h, 1, v36.h
	v_cmp_eq_u16_e64 s16, 1, v34.l
	v_cmp_eq_u16_e64 s12, 1, v36.l
	v_cmp_eq_u16_e32 vcc_lo, 1, v37.l
	v_cmp_eq_u16_e64 s17, 1, v34.h
	v_cmp_eq_u16_e64 s11, 1, v37.h
	.loc	1 742 17                        ; attention.py:742:17
	v_dual_mul_f32 v44, s58, v174 :: v_dual_mul_f32 v39, s58, v39
	.loc	1 759 25                        ; attention.py:759:25
	v_cmp_eq_u16_e64 s14, 1, v35.l
	.loc	1 742 17                        ; attention.py:742:17
	v_mul_f32_e32 v168, s58, v173
	.loc	1 759 25                        ; attention.py:759:25
	v_cmp_eq_u16_e64 s15, 1, v35.h
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v175, 0xff800000, v42, s16
	v_cndmask_b32_e64 v179, 0xff800000, v38, s12
	.loc	1 759 25                        ; attention.py:759:25
	v_cmp_eq_u16_e64 s13, 1, v36.h
	.loc	1 764 26                        ; attention.py:764:26
	v_add_nc_u32_e32 v34, 0, v97
	v_cndmask_b32_e32 v180, 0xff800000, v40, vcc_lo
	v_add_nc_u32_e32 v38, 0, v98
	v_cndmask_b32_e64 v176, 0xff800000, v43, s17
	v_cndmask_b32_e64 v182, 0xff800000, v41, s11
	v_cndmask_b32_e64 v177, 0xff800000, v44, s14
	v_cndmask_b32_e64 v178, 0xff800000, v168, s15
	v_cndmask_b32_e64 v181, 0xff800000, v39, s13
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v34, v175
	ds_store_b32 v112, v176
	ds_store_b32 v113, v177
	ds_store_b32 v114, v178
	ds_store_b32 v115, v179
	ds_store_b32 v116, v181
	ds_store_b32 v117, v180
	ds_store_b32 v118, v182
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[34:35], v38 offset1:32
	ds_load_2addr_b32 v[36:37], v119 offset1:32
	.loc	1 771 36                        ; attention.py:771:36
	s_lshr_b32 s62, s43, 1
	.loc	1 797 41                        ; attention.py:797:41
	s_mov_b32 s55, s51
	.loc	1 774 30                        ; attention.py:774:30
	s_add_i32 s3, s62, s59
	.loc	1 771 36                        ; attention.py:771:36
	v_or_b32_e32 v183, s62, v121
	.loc	1 774 30                        ; attention.py:774:30
	s_mul_i32 s54, s3, s33
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v144, v144, v144
	v_add_nc_u32_e32 v172, s54, v141
	v_add_nc_u32_e32 v174, s54, v66
	.loc	1 777 27                        ; attention.py:777:27
	v_cmp_gt_i32_e64 s3, s57, v183
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v148, v148, v148
	.loc	1 759 25                        ; attention.py:759:25
	.loc	1 777 26                        ; attention.py:777:26
	s_and_b32 s3, s0, s3
	.loc	1 759 25                        ; attention.py:759:25
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v172, 0x80000000, v172, s3
	v_cndmask_b32_e64 v174, 0x80000000, v174, s3
	.loc	1 759 25                        ; attention.py:759:25
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	s_waitcnt lgkmcnt(1)
	v_mov_b32_e32 v39, v34
.Ltmp2:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v40, v34, v34 :: v_dual_mov_b32 v43, v35
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v41, v36
	v_add_nc_u32_e32 v171, s54, v65
	v_mov_b32_dpp v39, v39 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_add_nc_u32_e32 v173, s54, v142
	v_mov_b32_dpp v43, v43 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v41, v41 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp4:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v42, v36, v36 :: v_dual_max_f32 v39, v39, v39
.Ltmp5:
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v171, 0x80000000, v171, s3
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v43, v43, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v41, v41, v41
.Ltmp7:
	.loc	1 797 41                        ; attention.py:797:41
	s_mov_b32 s54, s50
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v39, v40, v39
.Ltmp9:
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v173, 0x80000000, v173, s3
	.loc	1 798 53                        ; attention.py:798:53
	s_lshr_b32 s3, s43, 4
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v41, v42, v41
.Ltmp11:
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s43, s43, 16
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v40, v39
.Ltmp13:
	.loc	1 798 25                        ; attention.py:798:25
	s_add_i32 s3, s3, s60
	.loc	1 775 32                        ; attention.py:775:32
	s_clause 0x3
	buffer_load_u8 v185, v171, s[48:51], 0 offen
	buffer_load_u8 v186, v172, s[48:51], 0 offen
	buffer_load_u8 v187, v173, s[48:51], 0 offen
	buffer_load_u8 v188, v174, s[48:51], 0 offen
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_lt_i32 s43, s42
	.loc	1 798 25                        ; attention.py:798:25
	s_mul_i32 s3, s3, s33
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v40, v40 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp15:
	.loc	1 797 41                        ; attention.py:797:41
	v_add_lshl_u32 v189, s3, v56, 1
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v160
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v193, v180, v182
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp17:
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v149, v149, v149 :: v_dual_max_f32 v40, v40, v40
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v42, v41
.Ltmp19:
	.loc	1 797 41                        ; attention.py:797:41
	v_cndmask_b32_e64 v189, 0x80000000, v189, s0
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v39, v39, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v42, v42 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v42, v42, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v44, v35, v35 :: v_dual_max_f32 v41, v41, v42
	v_dual_max_f32 v40, v44, v43 :: v_dual_mov_b32 v43, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v42, v43, v43 :: v_dual_mov_b32 v43, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v44, v40
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v44, v44 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v44, v44, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v44, v40, v44
	v_dual_max_f32 v40, v43, v43 :: v_dual_mov_b32 v43, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v43, v43, v43
	v_max_f32_e32 v42, v39, v42
.Ltmp29:
	.loc	1 764 26                        ; attention.py:764:26
	ds_load_2addr_b32 v[38:39], v38 offset0:64 offset1:96
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v43, v44, v43 :: v_dual_mov_b32 v184, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v44, v37, v37 :: v_dual_mov_b32 v173, v43
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v184, v184 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v168, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v173, v173 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v171, v184, v184
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v168, v168 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v44, v44, v171
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v168, v168, v168
	s_waitcnt lgkmcnt(0)
	v_dual_max_f32 v184, v39, v39 :: v_dual_mov_b32 v171, v44
	v_max_f32_e32 v169, v41, v40
.Ltmp35:
	.loc	1 764 26                        ; attention.py:764:26
	ds_load_2addr_b32 v[40:41], v119 offset0:64 offset1:96
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v42, v42, v168
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v172, v38
	v_mov_b32_dpp v171, v171 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v170, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v170, v170 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_dual_max_f32 v168, v170, v170 :: v_dual_max_f32 v191, v41, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max_f32_e32 v168, v169, v168
	v_dual_max_f32 v169, v173, v173 :: v_dual_mov_b32 v170, v40
	v_max_f32_e32 v173, v40, v40
	v_max_f32_e32 v169, v43, v169
	v_max_f32_e32 v43, v171, v171
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v171, v39
	v_mov_b32_dpp v170, v170 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v43, v44, v43
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v171, v171 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v170, v170, v170 :: v_dual_max_f32 v171, v171, v171
	v_dual_max_f32 v174, v38, v38 :: v_dual_max_f32 v171, v184, v171
	s_delay_alu instid0(VALU_DEP_2)
	v_max_f32_e32 v170, v173, v170
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v173, v41
	v_mov_b32_dpp v172, v172 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	1 797 41                        ; attention.py:797:41
	buffer_load_u16 v184, v189, s[52:55], 0 offen
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v189, v171
.Ltmp46:
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v173, v173 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v172, v172, v172
.Ltmp49:
	.loc	1 814 30                        ; attention.py:814:30
	s_barrier
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v189, v189 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v173, v173, v173
	v_dual_max_f32 v173, v191, v173 :: v_dual_max_f32 v172, v174, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_dual_mov_b32 v191, v173 :: v_dual_mov_b32 v174, v172
	v_mov_b32_dpp v191, v191 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v174, v174 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v44, v174, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v44, v172, v44
	v_dual_max_f32 v172, v189, v189 :: v_dual_mov_b32 v189, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v171, v171, v172 :: v_dual_mov_b32 v190, v170
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v189, v189 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v190, v190 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v174, v190, v190
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v170, v170, v174
	v_dual_max_f32 v174, v191, v191 :: v_dual_mov_b32 v191, v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v172, v173, v174
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v174, v171
	v_mov_b32_dpp v191, v191 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v174, v174 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v190, v43
	v_mov_b32_dpp v190, v190 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v173, v190, v190
	v_max_f32_e32 v43, v43, v173
	v_max_f32_e32 v173, v189, v189
	v_max_f32_e32 v189, v191, v191
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_dual_mov_b32 v191, v43 :: v_dual_max_f32 v44, v44, v173
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v173, v174, v174
	v_max_f32_e32 v170, v170, v189
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v191, v191 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v171, v171, v173 :: v_dual_mov_b32 v190, v172
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v173, v191, v191
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v190, v190 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v192, v43, v173
	v_max_f32_e32 v174, v190, v190
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v190, v170
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v172, v172, v174
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v190, v190 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v174, v171 :: v_dual_max_f32 v173, v190, v190
	v_mov_b32_e32 v189, v44
	v_mov_b32_dpp v174, v174 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v190, v178, v179, v181
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v170, v170, v173
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v189, v189 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp69:
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v149, v149, v170
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v43, v189, v189
	v_max3_f32 v189, v175, v176, v177
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v194, v44, v43 :: v_dual_max_f32 v43, v174, v174
	v_max3_f32 v173, v189, v190, v193
.Ltmp71:
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v189, v163, v163 :: v_dual_max_f32 v190, v164, v164
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v171, v171, v43
.Ltmp73:
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v43, v145, v145
	v_max_f32_e32 v145, v43, v168
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v191, v172
.Ltmp75:
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v43, v147, v147
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v191, v191 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp77:
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v147, v43, v192
	v_dual_max_f32 v43, v151, v151 :: v_dual_max_f32 v144, v144, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v44, v191, v191
.Ltmp79:
	.loc	1 768 62                        ; attention.py:768:62
	v_dual_sub_f32 v37, v37, v147 :: v_dual_max_f32 v172, v172, v44
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v146, v146, v146
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v37, v37
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v151, v43, v172
	v_max_f32_e32 v43, v189, v168
.Ltmp80:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_permlanex16_b32 v44, v173, s61, 0xfedcba98 op_sel:[1,0]
.Ltmp81:
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v146, v146, v169
	v_max_f32_e32 v189, v162, v162
	v_dual_max_f32 v150, v150, v150 :: v_dual_sub_f32 v41, v41, v151
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_max3_f32 v173, v160, v173, v44
	v_max_f32_e32 v44, v190, v169
	v_dual_max_f32 v169, v166, v166 :: v_dual_max_f32 v190, v67, v67
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v41, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 768 62 is_stmt 0              ; attention.py:768:62
	v_sub_f32_e32 v181, v181, v173
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v37, 0, v37, s20
	.loc	1 766 24 is_stmt 1              ; attention.py:766:24
	v_max_f32_e32 v169, v169, v194
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v35, v35, v146
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v174, v167, v167 :: v_dual_sub_f32 v191, v164, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v148, v148, v194 :: v_dual_sub_f32 v193, v166, v169
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v42, v174, v42
	v_max_f32_e32 v150, v150, v171
	v_max_f32_e32 v171, v189, v171
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v191, v191
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v41, 0, v41, s19
	.loc	1 767 74                        ; attention.py:767:74
	v_dual_sub_f32 v189, v167, v42 :: v_dual_max_f32 v168, v165, v165
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v39, v39, v150
	v_sub_f32_e32 v179, v179, v173
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v35, 0, v35, s25
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v34, v34, v144
	.loc	1 767 61 is_stmt 1              ; attention.py:767:61
	v_exp_f32_e32 v189, v189
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v168, v168, v192
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v39, v39
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v193, v193
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 767 74                        ; attention.py:767:74
	v_dual_sub_f32 v195, v162, v171 :: v_dual_sub_f32 v192, v165, v168
	.loc	1 783 76                        ; attention.py:783:76
	s_waitcnt vmcnt(4)
	v_and_b16 v45.h, v185.l, 15
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v179, v179
	v_exp_f32_e32 v181, v181
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v195, v195
	v_exp_f32_e32 v192, v192
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v39, 0, v39, s18
	.loc	1 784 29                        ; attention.py:784:29
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v197, 15, v188
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v34, 0, v34, s23
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v174, v161, v161
	.loc	1 785 30                        ; attention.py:785:30
	v_mov_b16_e64 v188.h, v45.l
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v179, 0, v179, s12
	v_cndmask_b32_e64 v181, 0, v181, s13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v170, v174, v170
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v174, v160, v173
	.loc	1 767 61 is_stmt 0              ; attention.py:767:61
	v_exp_f32_e32 v174, v174
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v174, 0, v174, s3
	v_cmp_neq_f32_e64 s3, 0xff800000, v167
	.loc	1 768 62 is_stmt 1              ; attention.py:768:62
	v_sub_f32_e32 v167, v175, v173
	v_sub_f32_e32 v175, v176, v173
	v_dual_sub_f32 v176, v177, v173 :: v_dual_mov_b32 v177, v34
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v160, 0, v189, s3
	v_cmp_neq_f32_e64 s3, 0xff800000, v163
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v31, v31, v174
	v_mul_f32_e32 v25, v25, v174
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v177, v177 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp83:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v29, v29, v174
	v_mul_f32_e32 v16, v16, v174
	v_mul_f32_e32 v2, v2, v174
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v3, v3, v174 :: v_dual_add_f32 v34, v34, v177
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_dual_mov_b32 v177, v35 :: v_dual_sub_f32 v194, v161, v170
.Ltmp85:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v4, v4, v174
	v_mul_f32_e32 v6, v6, v174
	v_mul_f32_e32 v8, v8, v174
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v177, v177 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp87:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v27, v27, v174
	v_mul_f32_e32 v17, v17, v174
	v_mul_f32_e32 v21, v21, v174
	v_mul_f32_e32 v23, v23, v174
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v35, v35, v177
.Ltmp89:
	.loc	1 768 62                        ; attention.py:768:62
	v_dual_sub_f32 v36, v36, v145 :: v_dual_mul_f32 v19, v19, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v36, v36
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v36, 0, v36, s24
	.loc	1 766 24 is_stmt 1              ; attention.py:766:24
	v_max_f32_e32 v172, v190, v172
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 767 74                        ; attention.py:767:74
	v_dual_sub_f32 v190, v163, v43 :: v_dual_mov_b32 v189, v36
	.loc	1 767 61 is_stmt 0              ; attention.py:767:61
	v_exp_f32_e32 v190, v190
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp90:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v189, v189 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp91:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v36, v36, v189 :: v_dual_mov_b32 v189, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp92:
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v163, 0, v190, s3
	v_cmp_neq_f32_e64 s3, 0xff800000, v164
	.loc	1 767 61 is_stmt 0              ; attention.py:767:61
	v_exp_f32_e32 v194, v194
.Ltmp93:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v189, v189 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp94:
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v164, 0, v191, s3
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v191, v167
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_dual_mov_b32 v167, v35 :: v_dual_add_f32 v34, v34, v189
.Ltmp96:
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v196, v67, v172
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v189, v175
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v165
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v167, v167 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp98:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v38, v38, v148
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v175, v34
.Ltmp100:
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v196, v196
	.loc	1 767 25 is_stmt 0              ; attention.py:767:25
	v_cndmask_b32_e64 v165, 0, v192, s3
.Ltmp101:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v35, v35, v167 :: v_dual_sub_f32 v40, v40, v149
.Ltmp102:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v38, v38
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v175, v175 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp104:
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v166
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v167, v35
.Ltmp106:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v40, v40
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v34, v34, v175
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp108:
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v166, 0, v193, s3
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v167, v167 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp110:
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v161
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v177, 0, v38, s21
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v175, v34
.Ltmp112:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v182, v182, v173
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v38, v35, v167
.Ltmp114:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v180, v180, v173
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v40, 0, v40, s22
.Ltmp115:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v175, v175 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp116:
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v161, 0, v194, s3
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v167, v38
.Ltmp118:
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v162
	.loc	1 797 41                        ; attention.py:797:41
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v184, 16, v184
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v34, v34, v175 :: v_dual_mov_b32 v175, v177
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v167, v167 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp121:
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v162, 0, v195, s3
	.loc	1 784 29                        ; attention.py:784:29
	v_and_b32_e32 v195, 15, v186
	.loc	1 771 51                        ; attention.py:771:51
	v_or_b32_e32 v193, 2, v121
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v175, v175 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v38, v38, v167 :: v_dual_mov_b32 v167, v41
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v190, v36
.Ltmp125:
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v67
	.loc	1 784 29                        ; attention.py:784:29
	v_and_b32_e32 v194, 15, v185
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v185.l, 4, v185.l
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v167, v167 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v190, v190 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp127:
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v67, 0, v196, s3
	.loc	1 785 30                        ; attention.py:785:30
	v_mov_b16_e64 v185.h, v45.l
	v_mov_b16_e64 v186.h, v45.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v41, v41, v167 :: v_dual_add_f32 v36, v36, v190
.Ltmp129:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v190, v176
	.loc	1 784 29                        ; attention.py:784:29
	v_and_b32_e32 v196, 15, v187
	.loc	1 785 30                        ; attention.py:785:30
	v_mov_b16_e64 v187.h, v45.l
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_dual_mov_b32 v167, v41 :: v_dual_mov_b32 v176, v36
.Ltmp131:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v180, v180
	v_exp_f32_e32 v182, v182
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v11, v11, v174
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v167, v167 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v176, v176 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v41, v41, v167 :: v_dual_add_f32 v36, v36, v176
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp134:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e32 v180, 0, v180, vcc_lo
	v_cndmask_b32_e64 v182, 0, v182, s11
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s11, v179, v179
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_dual_mov_b32 v167, v41 :: v_dual_mov_b32 v176, v36
.Ltmp136:
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s13, v180, v180
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s12, v182, v182
.Ltmp137:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v167, v167 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v176, v176 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp138:
	.loc	1 768 62                        ; attention.py:768:62
	v_dual_sub_f32 v178, v178, v173 :: v_dual_add_f32 v41, v41, v167
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp139:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v35, v36, v176
.Ltmp140:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v176, v40
	v_mov_b32_e32 v36, v37
.Ltmp141:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v192, v178
.Ltmp142:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_dual_mov_b32 v167, v41 :: v_dual_mul_f32 v32, v32, v174
.Ltmp143:
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v35, v153, v163
.Ltmp144:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v176, v176 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v36, v36 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v167, v167 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp145:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v30, v30, v174
	v_dual_mul_f32 v24, v24, v174 :: v_dual_mov_b32 v153, v35
.Ltmp146:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v40, v40, v176
	v_add_f32_e32 v36, v37, v36
	v_add_f32_e32 v37, v177, v175
	v_dual_add_f32 v41, v41, v167 :: v_dual_mul_f32 v22, v22, v174
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp147:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v177, v40
	v_mov_b32_e32 v167, v42
	v_mov_b32_e32 v163, v43
.Ltmp148:
	.loc	1 817 23                        ; attention.py:817:23
	v_dual_fmac_f32 v41, v159, v67 :: v_dual_mul_f32 v14, v14, v174
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp149:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v177, v177 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v67, v172
	v_dual_mov_b32 v159, v41 :: v_dual_add_f32 v40, v40, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_e32 v177, v40
	v_mov_b32_dpp v177, v177 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp150:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v40, v40, v177
.Ltmp151:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v177, v40
	v_mov_b32_e32 v175, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v177, v177 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v175, v175 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp152:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v36, v36, v175
.Ltmp153:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v175, v36
.Ltmp154:
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v15, v15, v174 :: v_dual_fmac_f32 v34, v152, v160
	v_mov_b32_e32 v160, v173
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp155:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v175, v175 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v152, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp156:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v36, v36, v175
.Ltmp157:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v176, v37
	v_mov_b32_dpp v176, v176 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp158:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v37, v37, v176
.Ltmp159:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v176, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v176, v176 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v178, v39 :: v_dual_add_f32 v37, v37, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v178, v178 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v176, v37 :: v_dual_add_f32 v39, v39, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v176, v176 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v178, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v178, v178 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp160:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v39, v39, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp161:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v178, v39
	v_mov_b32_dpp v178, v178 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp162:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v175, v39, v178
.Ltmp163:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v39, v36
.Ltmp164:
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v1, v1, v174 :: v_dual_fmac_f32 v38, v154, v164
	v_dual_mul_f32 v5, v5, v174 :: v_dual_mov_b32 v178, v175
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp165:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v39, v39 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v164, v44
	v_mov_b32_e32 v154, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v178, v178 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp166:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v39, v36, v39 :: v_dual_add_f32 v36, v37, v176
	v_add_f32_e32 v37, v40, v177
.Ltmp167:
	.loc	1 771 36                        ; attention.py:771:36
	v_or_b32_e32 v176, s62, v123
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp168:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v40, v175, v178
.Ltmp169:
	.loc	1 771 36                        ; attention.py:771:36
	v_or_b32_e32 v175, s62, v193
	.loc	1 782 31                        ; attention.py:782:31
	v_lshl_or_b32 v178, v183, 1, 1
	.loc	1 771 36                        ; attention.py:771:36
	v_or_b32_e32 v177, s62, v124
	.loc	1 782 31                        ; attention.py:782:31
	v_lshl_or_b32 v193, v176, 1, 1
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v176.l, v188.l, 15
	.loc	1 782 31                        ; attention.py:782:31
	v_lshl_or_b32 v183, v175, 1, 1
	.loc	1 782 30 is_stmt 0              ; attention.py:782:30
	v_cmp_gt_i32_e64 s3, s31, v178
	.loc	1 783 76 is_stmt 1              ; attention.py:783:76
	v_and_b16 v175.l, v186.l, 15
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v186.l, 4, v186.l
	.loc	1 782 31                        ; attention.py:782:31
	v_lshl_or_b32 v177, v177, 1, 1
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v175.h, v187.l, 15
	.loc	1 783 32 is_stmt 0              ; attention.py:783:32
	v_cndmask_b32_e64 v178, 0, v185, s3
	.loc	1 782 30 is_stmt 1              ; attention.py:782:30
	v_cmp_gt_i32_e64 s3, s31, v183
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v187.l, 4, v187.l
	v_lshrrev_b16 v188.l, 4, v188.l
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v18, v18, v174 :: v_dual_fmac_f32 v39, v155, v165
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 783 32                        ; attention.py:783:32
	v_cndmask_b32_e64 v183, 0, v186, s3
	.loc	1 782 30                        ; attention.py:782:30
	v_cmp_gt_i32_e64 s3, s31, v193
	.loc	1 786 54                        ; attention.py:786:54
	v_or_b32_e32 v186, -16, v194
	v_or_b32_e32 v193, -16, v196
	v_mov_b32_e32 v165, v168
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v20, v20, v174 :: v_dual_fmac_f32 v37, v157, v161
	.loc	1 783 32                        ; attention.py:783:32
	v_cndmask_b32_e64 v185, 0, v187, s3
	.loc	1 782 30                        ; attention.py:782:30
	v_cmp_gt_i32_e64 s3, s31, v177
	.loc	1 786 54                        ; attention.py:786:54
	v_or_b32_e32 v187, -16, v195
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v10, v10, v174 :: v_dual_mov_b32 v155, v39
	v_dual_mul_f32 v12, v12, v174 :: v_dual_mov_b32 v157, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 783 32                        ; attention.py:783:32
	v_cndmask_b32_e64 v177, 0, v188, s3
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s3, 7, v45.h
	.loc	1 786 54 is_stmt 0              ; attention.py:786:54
	v_or_b32_e32 v188, -16, v197
	.loc	1 817 23 is_stmt 1              ; attention.py:817:23
	v_fmac_f32_e32 v36, v156, v166
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v7, v7, v174 :: v_dual_mov_b32 v166, v169
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b32_e64 v186, v194, v186, s3
	.loc	1 786 38 is_stmt 0              ; attention.py:786:38
	v_cmp_lt_u16_e64 s3, 7, v175.l
	.loc	1 787 56 is_stmt 1              ; attention.py:787:56
	v_or_b32_e32 v194, -16, v183
	v_dual_mov_b32 v156, v36 :: v_dual_mov_b32 v161, v170
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v186, v186
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b32_e64 v187, v195, v187, s3
	.loc	1 786 38 is_stmt 0              ; attention.py:786:38
	v_cmp_lt_u16_e64 s3, 7, v175.h
	.loc	1 787 56 is_stmt 1              ; attention.py:787:56
	v_or_b32_e32 v195, -16, v185
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v186, v186, v184
	v_cvt_f32_i32_e32 v187, v187
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b32_e64 v175, v196, v193, s3
	.loc	1 786 38 is_stmt 0              ; attention.py:786:38
	v_cmp_lt_u16_e64 s3, 7, v176.l
	.loc	1 787 56 is_stmt 1              ; attention.py:787:56
	v_or_b32_e32 v193, -16, v178
	v_or_b32_e32 v196, -16, v177
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v187, v187, v184
	v_cvt_f32_i32_e32 v175, v175
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b32_e64 v176, v197, v188, s3
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_lt_u32_e64 s3, 7, v178
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s19, v187, v187
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_mul_f32_e32 v188, v175, v184
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v176, v176
	.loc	1 787 30 is_stmt 1              ; attention.py:787:30
	v_cndmask_b32_e64 v178, v178, v193, s3
	.loc	1 787 39 is_stmt 0              ; attention.py:787:39
	v_cmp_lt_u32_e64 s3, 7, v183
	.loc	1 814 30 is_stmt 1              ; attention.py:814:30
	v_bfe_u32 v175, v186, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_mul_f32_e32 v176, v184, v176
	v_cvt_f32_i32_e32 v178, v178
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 787 30 is_stmt 1              ; attention.py:787:30
	v_cndmask_b32_e64 v183, v183, v194, s3
	.loc	1 787 39 is_stmt 0              ; attention.py:787:39
	v_cmp_lt_u32_e64 s3, 7, v185
	.loc	1 814 30 is_stmt 1              ; attention.py:814:30
	v_add3_u32 v175, v186, v175, 0x7fff
	v_cmp_o_f32_e64 s20, v176, v176
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_mul_f32_e32 v178, v178, v184
	v_cvt_f32_i32_e32 v183, v183
	.loc	1 787 30 is_stmt 1              ; attention.py:787:30
	v_cndmask_b32_e64 v185, v185, v195, s3
	.loc	1 787 39 is_stmt 0              ; attention.py:787:39
	v_cmp_lt_u32_e64 s3, 7, v177
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 814 30 is_stmt 1              ; attention.py:814:30
	v_bfe_u32 v193, v178, 16, 1
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_mul_f32_e32 v183, v183, v184
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v185, v185
	.loc	1 787 30 is_stmt 1              ; attention.py:787:30
	v_cndmask_b32_e64 v177, v177, v196, s3
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s3, v186, v186
	v_add3_u32 v186, v178, v193, 0x7fff
	v_cmp_o_f32_e64 s18, v178, v178
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_mul_f32_e32 v185, v184, v185
	v_cvt_f32_i32_e32 v177, v177
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v45.h, 0x7fff, v175.h, s3
	v_cmp_o_f32_e64 s3, v183, v183
	v_cndmask_b16 v175.l, 0x7fff, v186.h, s18
	v_bfe_u32 v186, v188, 16, 1
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v177, v184, v177
	.loc	1 814 30                        ; attention.py:814:30
	v_bfe_u32 v184, v187, 16, 1
	v_cmp_o_f32_e64 s18, v188, v188
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s21, v177, v177
	v_add3_u32 v178, v187, v184, 0x7fff
	v_bfe_u32 v184, v183, 16, 1
	v_bfe_u32 v187, v177, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v175.h, 0x7fff, v178.h, s19
	v_add3_u32 v178, v183, v184, 0x7fff
	v_bfe_u32 v183, v185, 16, 1
	v_add3_u32 v184, v188, v186, 0x7fff
	v_bfe_u32 v186, v176, 16, 1
	v_cmp_o_f32_e64 s19, v185, v185
	.loc	1 768 33 is_stmt 1              ; attention.py:768:33
	v_cndmask_b32_e64 v188, 0, v190, s14
	.loc	1 814 30                        ; attention.py:814:30
	v_add3_u32 v183, v185, v183, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v185, v176, v186, 0x7fff
	v_add3_u32 v186, v177, v187, 0x7fff
	v_cndmask_b16 v176.h, 0x7fff, v184.h, s18
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v184, 0, v191, s16
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v177.l, 0x7fff, v183.h, s19
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v183, 0, v189, s17
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v178.l, 0x7fff, v186.h, s21
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e64 v186.h, v45.l
	v_mov_b16_e64 v186.l, v184.h
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v177.h, 0x7fff, v185.h, s20
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e64 v185.l, v183.h
	v_mov_b16_e64 v185.h, v45.l
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v187, 0, v192, s15
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v186, 1, v186
	v_cmp_o_f32_e64 s14, v184, v184
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v176.l, 0x7fff, v178.h, s3
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v185, 1, v185
	.loc	1 814 30                        ; attention.py:814:30
	ds_store_b16_d16_hi v120, v45
	ds_store_b16 v120, v175 offset:128
	ds_store_b16_d16_hi v120, v175 offset:512
	ds_store_b16 v120, v176 offset:640
	ds_store_b16_d16_hi v120, v176 offset:1024
	ds_store_b16 v120, v177 offset:1152
	ds_store_b16_d16_hi v120, v177 offset:1536
	ds_store_b16 v120, v178 offset:1664
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v186, v184, v186, 0x7fff
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v176, v143 offset:352
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v185, v183, v185, 0x7fff
	v_cmp_o_f32_e64 s3, v183, v183
	v_mov_b16_e64 v183.l, v187.h
	v_mov_b16_e64 v183.h, v45.l
	v_mov_b16_e64 v184.l, v188.h
	v_mov_b16_e64 v184.h, v45.l
	v_cndmask_b16 v208.l, 0x7fff, v186.h, s14
	v_mov_b16_e64 v186.l, v179.h
	v_mov_b16_e64 v186.h, v45.l
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v26, v26, v174 :: v_dual_and_b32 v183, 1, v183
	v_dual_mul_f32 v9, v9, v174 :: v_dual_and_b32 v184, 1, v184
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v175, 1, v186
	v_cndmask_b16 v208.h, 0x7fff, v185.h, s3
	v_mov_b16_e64 v185.l, v181.h
	v_mov_b16_e64 v185.h, v45.l
	v_add3_u32 v183, v187, v183, 0x7fff
	v_add3_u32 v184, v188, v184, 0x7fff
	v_add3_u32 v175, v179, v175, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v13, v13, v174 :: v_dual_and_b32 v186, 1, v185
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_u16_d16 v185, v143 offset:512
	ds_load_u16_d16 v192, v143 offset:288
	ds_load_u16_d16 v201, v143 offset:576
	ds_load_u16_d16 v183, v143
	ds_load_u16_d16 v191, v143 offset:32
	ds_load_u16_d16 v184, v143 offset:256
	ds_load_u16_d16 v199, v143 offset:64
	ds_load_u16_d16 v200, v143 offset:320
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v176, v143 offset:480
	ds_load_u16_d16 v175, v143 offset:96
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e64 v177.l, v182.h
	v_mov_b16_e64 v178.l, v180.h
	v_mov_b16_e64 v178.h, v45.l
	v_mov_b16_e64 v177.h, v45.l
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v28, v28, v174
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s3, v187, v187
	v_cmp_o_f32_e32 vcc_lo, v188, v188
	v_and_b32_e32 v178, 1, v178
	v_and_b32_e32 v177, 1, v177
	v_add3_u32 v186, v181, v186, 0x7fff
	s_waitcnt lgkmcnt(6)
	v_cndmask_b16 v45.h, 0x7fff, v183.h, s3
	v_cmp_o_f32_e64 s3, v181, v181
	v_add3_u32 v178, v180, v178, 0x7fff
	v_add3_u32 v177, v182, v177, 0x7fff
	s_waitcnt lgkmcnt(4)
	v_cndmask_b16 v45.l, 0x7fff, v184.h, vcc_lo
	s_waitcnt lgkmcnt(0)
	v_cndmask_b16 v212.l, 0x7fff, v175.h, s11
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_u16_d16 v202, v143 offset:832
	ds_load_u16_d16 v186, v143 offset:768
	ds_load_u16_d16 v193, v143 offset:544
	ds_load_u16_d16 v177, v143 offset:608
	ds_load_u16_d16_hi v183, v143 offset:128
	ds_load_u16_d16_hi v191, v143 offset:160
	ds_load_u16_d16_hi v199, v143 offset:192
	ds_load_u16_d16_hi v175, v143 offset:224
	ds_load_u16_d16 v203, v143 offset:1088
	ds_load_u16_d16 v187, v143 offset:1024
	ds_load_u16_d16 v194, v143 offset:800
	ds_load_u16_d16 v178, v143 offset:864
	ds_load_u16_d16 v204, v143 offset:1344
	ds_load_u16_d16 v188, v143 offset:1280
	ds_load_u16_d16 v195, v143 offset:1056
	ds_load_u16_d16 v179, v143 offset:1120
	ds_load_u16_d16 v205, v143 offset:1600
	ds_load_u16_d16 v189, v143 offset:1536
	ds_load_u16_d16 v196, v143 offset:1312
	ds_load_u16_d16 v180, v143 offset:1376
	ds_load_u16_d16 v206, v143 offset:1856
	ds_load_u16_d16 v190, v143 offset:1792
	ds_load_u16_d16 v197, v143 offset:1568
	ds_load_u16_d16 v181, v143 offset:1632
	ds_load_u16_d16 v198, v143 offset:1824
	ds_load_u16_d16 v182, v143 offset:1888
	ds_load_u16_d16_hi v201, v143 offset:704
	ds_load_u16_d16_hi v185, v143 offset:640
	ds_load_u16_d16_hi v184, v143 offset:384
	ds_load_u16_d16_hi v192, v143 offset:416
	ds_load_u16_d16_hi v200, v143 offset:448
	.loc	1 816 30                        ; attention.py:816:30
	s_waitcnt lgkmcnt(29)
	v_cndmask_b16 v212.h, 0x7fff, v186.h, s3
	s_waitcnt lgkmcnt(27)
	v_cndmask_b16 v214.h, 0x7fff, v177.h, s12
	s_waitcnt lgkmcnt(19)
	v_cndmask_b16 v214.l, 0x7fff, v178.h, s13
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_u16_d16_hi v202, v143 offset:960
	ds_load_u16_d16_hi v186, v143 offset:896
	ds_load_u16_d16_hi v193, v143 offset:672
	ds_load_u16_d16_hi v177, v143 offset:736
	ds_load_u16_d16_hi v203, v143 offset:1216
	ds_load_u16_d16_hi v187, v143 offset:1152
	ds_load_u16_d16_hi v194, v143 offset:928
	ds_load_u16_d16_hi v178, v143 offset:992
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v204, v143 offset:1472
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v188, v143 offset:1408
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v195, v143 offset:1184
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v179, v143 offset:1248
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v205, v143 offset:1728
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v189, v143 offset:1664
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v196, v143 offset:1440
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v180, v143 offset:1504
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v206, v143 offset:1984
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v190, v143 offset:1920
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v197, v143 offset:1696
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v181, v143 offset:1760
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v198, v143 offset:1952
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v182, v143 offset:2016
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v209, v208, s61, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v210, v45, s61, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v213, v212, s61, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v215, v214, s61, 0xfedcba98 op_sel:[1,0]
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v40, v158, v162
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v207, v209, v208, v99
	v_perm_b32 v208, v209, v208, v100
	v_perm_b32 v209, v210, v45, v99
	v_perm_b32 v210, v210, v45, v100
	v_perm_b32 v211, v213, v212, v99
	v_perm_b32 v212, v213, v212, v100
	v_perm_b32 v213, v215, v214, v99
	v_perm_b32 v214, v215, v214, v100
	v_mov_b32_e32 v158, v40
	v_mov_b32_e32 v162, v171
	.loc	1 816 23 is_stmt 0              ; attention.py:816:23
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[183:190], v[207:214], v[25:32]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[191:198], v[207:214], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[199:206], v[207:214], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[175:182], v[207:214], v[1:8]
	.loc	1 707 13 is_stmt 1              ; attention.py:707:13
	s_cbranch_scc0 .LBB0_30
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v34, s43, v70
	v_or_b32_e32 v35, s43, v71
	.loc	1 711 32                        ; attention.py:711:32
	s_add_i32 s13, s43, s29
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v36, s43, v72
	.loc	1 711 32                        ; attention.py:711:32
	s_mul_i32 s3, s13, s56
	.loc	1 714 73                        ; attention.py:714:73
	v_cmp_gt_i32_e32 vcc_lo, s31, v34
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v37, s43, v73
	.loc	1 711 32                        ; attention.py:711:32
	v_add_nc_u32_e32 v38, s3, v46
	v_add_nc_u32_e32 v39, s3, v74
	v_add_nc_u32_e32 v40, s3, v75
	v_add_nc_u32_e32 v34, s3, v47
	.loc	1 714 73                        ; attention.py:714:73
	v_cmp_gt_i32_e64 s3, s31, v35
	v_cmp_gt_i32_e64 s11, s31, v36
	.loc	1 714 30 is_stmt 0              ; attention.py:714:30
	s_and_b32 vcc_lo, s26, vcc_lo
	.loc	1 714 73                        ; attention.py:714:73
	v_cmp_gt_i32_e64 s12, s31, v37
	.loc	1 712 32 is_stmt 1              ; attention.py:712:32
	v_cndmask_b32_e32 v35, 0x80000000, v38, vcc_lo
	.loc	1 714 30                        ; attention.py:714:30
	s_and_b32 vcc_lo, s26, s3
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v38, s43, v122
	.loc	1 712 32                        ; attention.py:712:32
	v_cndmask_b32_e32 v36, 0x80000000, v39, vcc_lo
	.loc	1 714 30                        ; attention.py:714:30
	s_and_b32 vcc_lo, s26, s11
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v39, 2, v122
	.loc	1 712 32                        ; attention.py:712:32
	v_cndmask_b32_e32 v37, 0x80000000, v40, vcc_lo
	.loc	1 714 30                        ; attention.py:714:30
	s_and_b32 vcc_lo, s26, s12
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v40, 4, v122
	.loc	1 712 32                        ; attention.py:712:32
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	s_clause 0x3
	buffer_load_u8 v35, v35, s[36:39], 0 offen
	buffer_load_u8 v36, v36, s[36:39], 0 offen
	buffer_load_u8 v37, v37, s[36:39], 0 offen
	buffer_load_u8 v34, v34, s[36:39], 0 offen
	.loc	1 728 25                        ; attention.py:728:25
	v_add_lshl_u32 v168, s13, v122, 1
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v39, s43, v39
	.loc	1 729 30                        ; attention.py:729:30
	v_cmp_gt_i32_e32 vcc_lo, s31, v38
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v41, 6, v122
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v40, s43, v40
	.loc	1 727 37                        ; attention.py:727:37
	v_add_nc_u32_e32 v173, 20, v168
	.loc	1 712 32                        ; attention.py:712:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v42, 8, v122
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v41, s43, v41
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v43, 10, v122
	v_or_b32_e32 v44, 12, v122
	v_or_b32_e32 v45, 14, v122
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v42, s43, v42
	.loc	1 712 32                        ; attention.py:712:32
	s_waitcnt vmcnt(3)
	ds_store_b8 v77, v35
	s_waitcnt vmcnt(2)
	ds_store_b8 v78, v36
	s_waitcnt vmcnt(1)
	ds_store_b8 v79, v37
	s_waitcnt vmcnt(0)
	ds_store_b8 v80, v34
	.loc	1 717 33                        ; attention.py:717:33
	v_mov_b32_e32 v35, v33
	v_mov_b32_e32 v36, v33
	v_dual_mov_b32 v37, v33 :: v_dual_add_nc_u32 v174, 24, v168
	.loc	1 727 37                        ; attention.py:727:37
	v_add_nc_u32_e32 v171, 12, v168
	v_add_nc_u32_e32 v170, 8, v168
	v_add_nc_u32_e32 v169, 4, v168
	v_cndmask_b32_e32 v38, 0x80000000, v168, vcc_lo
	.loc	1 729 30                        ; attention.py:729:30
	v_cmp_gt_i32_e32 vcc_lo, s31, v39
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v43, s43, v43
	.loc	1 727 37                        ; attention.py:727:37
	v_add_nc_u32_e32 v172, 16, v168
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v44, s43, v44
	v_or_b32_e32 v45, s43, v45
	.loc	1 727 37                        ; attention.py:727:37
	v_cndmask_b32_e32 v39, 0x80000000, v169, vcc_lo
	.loc	1 729 30                        ; attention.py:729:30
	v_cmp_gt_i32_e32 vcc_lo, s31, v40
	.loc	1 727 37                        ; attention.py:727:37
	v_add_nc_u32_e32 v168, 28, v168
	.loc	1 712 32                        ; attention.py:712:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[176:177], v102
	ds_load_b64 v[178:179], v103
	.loc	1 727 37                        ; attention.py:727:37
	v_cndmask_b32_e32 v40, 0x80000000, v170, vcc_lo
	.loc	1 729 30                        ; attention.py:729:30
	v_cmp_gt_i32_e32 vcc_lo, s31, v41
	.loc	1 712 32                        ; attention.py:712:32
	v_add_nc_u32_e32 v34, 0, v83
	.loc	1 727 37                        ; attention.py:727:37
	v_cndmask_b32_e32 v41, 0x80000000, v171, vcc_lo
	.loc	1 729 30                        ; attention.py:729:30
	v_cmp_gt_i32_e32 vcc_lo, s31, v42
	.loc	1 727 37                        ; attention.py:727:37
	v_cndmask_b32_e32 v42, 0x80000000, v172, vcc_lo
	.loc	1 729 30                        ; attention.py:729:30
	v_cmp_gt_i32_e32 vcc_lo, s31, v43
	.loc	1 727 37                        ; attention.py:727:37
	v_cndmask_b32_e32 v43, 0x80000000, v173, vcc_lo
	.loc	1 729 30                        ; attention.py:729:30
	v_cmp_gt_i32_e32 vcc_lo, s31, v44
	.loc	1 727 37                        ; attention.py:727:37
	v_cndmask_b32_e32 v44, 0x80000000, v174, vcc_lo
	.loc	1 729 30                        ; attention.py:729:30
	v_cmp_gt_i32_e32 vcc_lo, s31, v45
	.loc	1 727 37                        ; attention.py:727:37
	v_cndmask_b32_e32 v45, 0x80000000, v168, vcc_lo
	s_clause 0x7
	buffer_load_u16 v175, v38, s[44:47], 0 offen
	buffer_load_u16 v174, v39, s[44:47], 0 offen
	buffer_load_u16 v173, v40, s[44:47], 0 offen
	buffer_load_u16 v172, v41, s[44:47], 0 offen
	buffer_load_u16 v171, v42, s[44:47], 0 offen
	buffer_load_u16 v170, v43, s[44:47], 0 offen
	buffer_load_u16 v169, v44, s[44:47], 0 offen
	buffer_load_u16 v168, v45, s[44:47], 0 offen
	.loc	1 712 32                        ; attention.py:712:32
	ds_load_b64 v[42:43], v34
	ds_load_b64 v[44:45], v101
	.loc	1 717 33                        ; attention.py:717:33
	v_mov_b32_e32 v40, v33
	v_mov_b32_e32 v34, v33
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v39, v33
	.loc	1 745 17                        ; attention.py:745:17
	v_cmp_ne_u32_e32 vcc_lo, 1, v85
	.loc	1 717 33                        ; attention.py:717:33
	v_mov_b32_e32 v41, v40
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v40, v39
	v_mov_b32_e32 v39, v38
	v_mov_b32_e32 v38, v37
	v_mov_b32_e32 v37, v36
	v_mov_b32_e32 v36, v35
	v_mov_b32_e32 v35, v34
	v_mov_b32_e32 v34, v33
	.loc	1 745 17                        ; attention.py:745:17
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[48:49], v[34:41] neg_lo:[1,1,0]
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v42, s43, v76
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[44:45], v[50:51], v[34:41] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 714 73                        ; attention.py:714:73
	v_cmp_gt_i32_e64 s3, s31, v42
	.loc	1 717 33                        ; attention.py:717:33
	v_wmma_i32_16x16x16_iu4 v[34:41], v[176:177], v[52:53], v[34:41] neg_lo:[1,1,0]
	.loc	1 743 25                        ; attention.py:743:25
	s_and_b32 s66, s1, s3
	s_and_b32 s64, s4, s3
	s_and_b32 s25, s5, s3
	s_and_b32 s63, s6, s3
	.loc	1 717 33                        ; attention.py:717:33
	v_wmma_i32_16x16x16_iu4 v[34:41], v[178:179], v[54:55], v[34:41] neg_lo:[1,1,0]
	.loc	1 743 25                        ; attention.py:743:25
	s_and_b32 s55, s7, s3
	s_and_b32 s54, s8, s3
	s_and_b32 s65, s9, s3
	s_and_b32 s62, s10, s3
	.loc	1 745 17                        ; attention.py:745:17
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 746 30                        ; attention.py:746:30
	v_cmp_le_i32_e32 vcc_lo, v42, v86
	v_cmp_le_i32_e64 s3, v42, v87
	v_cmp_le_i32_e64 s11, v42, v88
	v_cmp_le_i32_e64 s12, v42, v89
	v_cmp_le_i32_e64 s13, v42, v90
	v_cmp_le_i32_e64 s14, v42, v91
	.loc	1 746 21 is_stmt 0              ; attention.py:746:21
	s_and_b32 s17, vcc_lo, s66
	s_and_b32 s3, s3, s64
	.loc	1 746 30                        ; attention.py:746:30
	v_cmp_le_i32_e64 s15, v42, v92
	v_cmp_le_i32_e64 s16, v42, v93
	.loc	1 746 21                        ; attention.py:746:21
	s_and_b32 s11, s11, s25
	s_and_b32 s12, s12, s63
	s_and_not1_b32 s18, s66, exec_lo
	s_and_b32 s17, s17, exec_lo
	s_and_not1_b32 s19, s64, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s13, s13, s55
	s_and_b32 s14, s14, s54
	s_or_b32 s66, s18, s17
	s_or_b32 s64, s19, s3
	s_and_not1_b32 s3, s25, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_not1_b32 s17, s63, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_b32 s15, s15, s65
	s_and_b32 s16, s16, s62
	s_or_b32 s25, s3, s11
	s_or_b32 s63, s17, s12
	s_and_not1_b32 s3, s55, exec_lo
	s_and_b32 s11, s13, exec_lo
	s_and_not1_b32 s12, s54, exec_lo
	s_and_b32 s13, s14, exec_lo
	s_or_b32 s55, s3, s11
	s_or_b32 s54, s12, s13
	s_and_not1_b32 s3, s65, exec_lo
	s_and_b32 s11, s15, exec_lo
	s_and_not1_b32 s12, s62, exec_lo
	s_and_b32 s13, s16, exec_lo
	s_or_b32 s65, s3, s11
	s_or_b32 s62, s12, s13
.LBB0_12:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 747 17 is_stmt 1              ; attention.py:747:17
	s_and_not1_b32 vcc_lo, exec_lo, s27
	s_cbranch_vccnz .LBB0_14
; %bb.13:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e32 vcc_lo, v42, v125
	v_cmp_ge_i32_e64 s3, v42, v126
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s17, v42, v133
	v_cmp_le_i32_e64 s18, v42, v134
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s11, v42, v127
	v_cmp_ge_i32_e64 s12, v42, v128
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s19, v42, v135
	v_cmp_le_i32_e64 s20, v42, v136
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s13, v42, v129
	v_cmp_ge_i32_e64 s14, v42, v130
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s21, v42, v137
	v_cmp_le_i32_e64 s22, v42, v138
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s17, vcc_lo, s17
	s_and_b32 s3, s3, s18
	.loc	1 748 30 is_stmt 1              ; attention.py:748:30
	v_cmp_ge_i32_e64 s15, v42, v131
	v_cmp_ge_i32_e64 s16, v42, v132
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s23, v42, v139
	v_cmp_le_i32_e64 s24, v42, v140
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s17, s17, s66
	s_and_b32 s3, s3, s64
	s_and_b32 s11, s11, s19
	s_and_b32 s12, s12, s20
	s_and_b32 s11, s11, s25
	s_and_b32 s12, s12, s63
	s_and_b32 s13, s13, s21
	s_and_b32 s14, s14, s22
	s_and_not1_b32 s18, s66, exec_lo
	s_and_b32 s17, s17, exec_lo
	s_and_not1_b32 s19, s64, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s13, s13, s55
	s_and_b32 s14, s14, s54
	s_and_b32 s15, s15, s23
	s_and_b32 s16, s16, s24
	s_or_b32 s66, s18, s17
	s_or_b32 s64, s19, s3
	s_and_not1_b32 s3, s25, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_not1_b32 s17, s63, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_b32 s15, s15, s65
	s_and_b32 s16, s16, s62
	s_or_b32 s25, s3, s11
	s_or_b32 s63, s17, s12
	s_and_not1_b32 s3, s55, exec_lo
	s_and_b32 s11, s13, exec_lo
	s_and_not1_b32 s12, s54, exec_lo
	s_and_b32 s13, s14, exec_lo
	s_or_b32 s55, s3, s11
	s_or_b32 s54, s12, s13
	s_and_not1_b32 s3, s65, exec_lo
	s_and_b32 s11, s15, exec_lo
	s_and_not1_b32 s12, s62, exec_lo
	s_and_b32 s13, s16, exec_lo
	s_or_b32 s65, s3, s11
	s_or_b32 s62, s12, s13
.LBB0_14:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 21                          ; attention.py:0:21
	v_mov_b16_e32 v42.l, 0
	.loc	1 752 25 is_stmt 1              ; attention.py:752:25
	s_mul_i32 s3, s43, s28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s3, s30, s3
	v_mov_b16_e32 v42.h, v42.l
	.loc	1 759 34                        ; attention.py:759:34
	s_and_saveexec_b32 s11, s66
	s_cbranch_execz .LBB0_16
; %bb.15:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v43, s3, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 759 34                        ; attention.py:759:34
	v_ashrrev_i32_e32 v44, 31, v43
	v_add_co_u32 v43, vcc_lo, s34, v43
	v_add_co_ci_u32_e64 v44, null, s35, v44, vcc_lo
	global_load_d16_hi_u8 v42, v[43:44], off
.LBB0_16:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s11
	.loc	1 759 34                        ; attention.py:759:34
	s_and_saveexec_b32 s11, s64
	s_cbranch_execz .LBB0_18
; %bb.17:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	v_add_nc_u32_e32 v43, s3, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 759 34                        ; attention.py:759:34
	v_ashrrev_i32_e32 v44, 31, v43
	v_add_co_u32 v43, vcc_lo, s34, v43
	v_add_co_ci_u32_e64 v44, null, s35, v44, vcc_lo
	global_load_d16_u8 v42, v[43:44], off
.LBB0_18:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s11
	v_mov_b16_e32 v43.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v43.l, v43.h
	.loc	1 759 34                        ; attention.py:759:34
	s_and_saveexec_b32 s11, s25
	s_cbranch_execz .LBB0_20
; %bb.19:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	v_add_nc_u32_e32 v44, s3, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 759 34                        ; attention.py:759:34
	v_ashrrev_i32_e32 v45, 31, v44
	v_add_co_u32 v44, vcc_lo, s34, v44
	v_add_co_ci_u32_e64 v45, null, s35, v45, vcc_lo
	global_load_d16_u8 v43, v[44:45], off
.LBB0_20:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s11
	.loc	1 759 34                        ; attention.py:759:34
	s_and_saveexec_b32 s11, s63
	s_cbranch_execz .LBB0_22
; %bb.21:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	v_add_nc_u32_e32 v44, s3, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 759 34                        ; attention.py:759:34
	v_ashrrev_i32_e32 v45, 31, v44
	v_add_co_u32 v44, vcc_lo, s34, v44
	v_add_co_ci_u32_e64 v45, null, s35, v45, vcc_lo
	global_load_d16_hi_u8 v43, v[44:45], off
.LBB0_22:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s11
	v_mov_b16_e32 v45.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v44.h, v45.l
	.loc	1 759 34                        ; attention.py:759:34
	s_and_saveexec_b32 s11, s55
	s_cbranch_execz .LBB0_24
; %bb.23:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	v_add_nc_u32_e32 v44, s3, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 759 34                        ; attention.py:759:34
	v_ashrrev_i32_e32 v177, 31, v44
	v_add_co_u32 v176, vcc_lo, s34, v44
	v_add_co_ci_u32_e64 v177, null, s35, v177, vcc_lo
	global_load_d16_hi_u8 v44, v[176:177], off
.LBB0_24:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s11
	.loc	1 759 34                        ; attention.py:759:34
	s_and_saveexec_b32 s11, s54
	s_cbranch_execz .LBB0_26
; %bb.25:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	v_add_nc_u32_e32 v45, s3, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 759 34                        ; attention.py:759:34
	v_ashrrev_i32_e32 v177, 31, v45
	v_add_co_u32 v176, vcc_lo, s34, v45
	v_add_co_ci_u32_e64 v177, null, s35, v177, vcc_lo
	global_load_d16_u8 v45, v[176:177], off
.LBB0_26:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s11
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v44.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v45.h, v44.l
	.loc	1 759 34                        ; attention.py:759:34
	s_and_saveexec_b32 s11, s65
	s_cbranch_execz .LBB0_28
; %bb.27:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	v_add_nc_u32_e32 v176, s3, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 759 34                        ; attention.py:759:34
	v_ashrrev_i32_e32 v177, 31, v176
	v_add_co_u32 v176, vcc_lo, s34, v176
	v_add_co_ci_u32_e64 v177, null, s35, v177, vcc_lo
	global_load_d16_hi_u8 v45, v[176:177], off
.LBB0_28:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s11
	.loc	1 759 34                        ; attention.py:759:34
	s_and_saveexec_b32 s11, s62
	s_cbranch_execz .LBB0_9
; %bb.29:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	v_add_nc_u32_e32 v176, s3, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 759 34                        ; attention.py:759:34
	v_ashrrev_i32_e32 v177, 31, v176
	v_add_co_u32 v176, vcc_lo, s34, v176
	v_add_co_ci_u32_e64 v177, null, s35, v177, vcc_lo
	global_load_d16_u8 v44, v[176:177], off
	s_branch .LBB0_9
.LBB0_30:                               ; %Flow
	.loc	1 0 34                          ; attention.py:0:34
	v_mov_b32_e32 v33, v84
.LBB0_31:                               ; %._crit_edge
	.loc	1 707 13 is_stmt 1              ; attention.py:707:13
	v_lshlrev_b32_e32 v42, 4, v0
	v_lshrrev_b32_e32 v43, 1, v0
	v_lshlrev_b32_e32 v0, 2, v0
	v_lshrrev_b32_e32 v44, 3, v82
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v42, 0x70, v42
	v_and_b32_e32 v43, 4, v43
	v_and_b32_e32 v0, 0x80, v0
	s_barrier
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v64, 16, v33
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s31, s33, v33
	.loc	1 707 13                        ; attention.py:707:13
	v_add3_u32 v42, 0, v42, v43
	v_add_nc_u32_e32 v43, 0, v81
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v67.h, 0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s23, s33, v64
	.loc	1 707 13                        ; attention.py:707:13
	ds_store_b128 v43, v[34:37]
	ds_store_b128 v43, v[38:41] offset:128
	v_add3_u32 v0, v42, v0, v44
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s31, s2, s31
	.loc	1 846 17                        ; attention.py:846:17
	s_and_b32 s41, s41, 0xffff
	.loc	1 707 13                        ; attention.py:707:13
	ds_load_b32 v0, v0
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s23, s2, s23
	.loc	1 841 48                        ; attention.py:841:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v34, null, v0, v0, v25
	v_div_scale_f32 v36, null, v0, v0, v26
	v_div_scale_f32 v38, null, v0, v0, v27
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v46, v34
	v_div_scale_f32 v42, null, v0, v0, v29
	v_div_scale_f32 v44, null, v0, v0, v30
	v_rcp_f32_e32 v47, v36
	v_div_scale_f32 v40, null, v0, v0, v28
	v_rcp_f32_e32 v48, v38
	v_rcp_f32_e32 v50, v42
	v_rcp_f32_e32 v51, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v49, v40
	v_fma_f32 v55, -v34, v46, 1.0
	v_div_scale_f32 v35, vcc_lo, v25, v0, v25
	v_fma_f32 v56, -v36, v47, 1.0
	v_div_scale_f32 v37, s0, v26, v0, v26
	v_fmac_f32_e32 v46, v55, v46
	s_waitcnt vmcnt(0)
	v_fma_f32 v57, -v38, v48, 1.0
	v_fma_f32 v59, -v42, v50, 1.0
	v_fma_f32 v60, -v44, v51, 1.0
	v_fmac_f32_e32 v47, v56, v47
	v_fma_f32 v58, -v40, v49, 1.0
	v_mul_f32_e32 v55, v35, v46
	v_div_scale_f32 v39, s1, v27, v0, v27
	v_div_scale_f32 v43, s4, v29, v0, v29
	v_fmac_f32_e32 v48, v57, v48
	v_dual_fmac_f32 v50, v59, v50 :: v_dual_fmac_f32 v51, v60, v51
	v_mul_f32_e32 v56, v37, v47
	v_div_scale_f32 v41, s3, v28, v0, v28
	v_fmac_f32_e32 v49, v58, v49
	v_fma_f32 v59, -v34, v55, v35
	v_mul_f32_e32 v57, v39, v48
	v_mul_f32_e32 v63, v43, v50
	v_fma_f32 v60, -v36, v56, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v58, v41, v49 :: v_dual_fmac_f32 v55, v59, v46
	v_fma_f32 v61, -v38, v57, v39
	v_div_scale_f32 v45, null, v0, v0, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v56, v60, v47
	v_fma_f32 v34, -v34, v55, v35
	v_fma_f32 v62, -v40, v58, v41
	v_fmac_f32_e32 v57, v61, v48
	v_div_scale_f32 v52, s5, v30, v0, v30
	v_fma_f32 v35, -v36, v56, v37
	v_div_fmas_f32 v34, v34, v46, v55
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v54, v45
	v_fmac_f32_e32 v58, v62, v49
	v_div_fmas_f32 v35, v35, v47, v56
	v_fma_f32 v36, -v38, v57, v39
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v25, v34, v0, v25
	v_div_scale_f32 v53, null, v0, v0, v32
	v_div_fixup_f32 v26, v35, v0, v26
	v_mul_f32_e32 v35, v52, v51
	v_fma_f32 v37, -v40, v58, v41
	v_div_fmas_f32 v36, v36, v48, v57
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v38, v53
	v_fma_f32 v59, -v42, v63, v43
	v_div_fmas_f32 v34, v37, v49, v58
	v_fma_f32 v37, -v45, v54, 1.0
	v_div_fixup_f32 v27, v36, v0, v27
	v_div_scale_f32 v36, s1, v31, v0, v31
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v28, v34, v0, v28
	v_fma_f32 v34, -v44, v35, v52
	v_fmac_f32_e32 v54, v37, v54
	v_div_scale_f32 v37, null, v0, v0, v17
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v35, v34, v51
	v_fma_f32 v39, -v53, v38, 1.0
	v_rcp_f32_e32 v41, v37
	v_div_scale_f32 v47, null, v0, v0, v18
	v_div_scale_f32 v48, null, v0, v0, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v38, v39, v38
	v_div_scale_f32 v39, s3, v32, v0, v32
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s0, 0, v0
	.loc	1 843 74 is_stmt 1              ; attention.py:843:74
	v_or_b32_e32 v57, 1, v33
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v46, -v37, v41, 1.0
	v_mul_f32_e32 v34, v36, v54
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v58, 2, v33
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 841 48 is_stmt 0              ; attention.py:841:48
	v_fmac_f32_e32 v41, v46, v41
	v_div_scale_f32 v46, s4, v17, v0, v17
	v_fmac_f32_e32 v63, v59, v50
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	v_cndmask_b32_e64 v28, 0, v28, s0
	.loc	1 843 74 is_stmt 1              ; attention.py:843:74
	v_or_b32_e32 v59, 3, v33
	v_or_b32_e32 v60, 4, v33
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v40, -v42, v63, v43
	v_fma_f32 v42, -v44, v35, v52
	v_fma_f32 v43, -v45, v34, v36
	v_mul_f32_e32 v44, v39, v38
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v61, 5, v33
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v40, v40, v50, v63
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v34, v43, v54
	v_div_fmas_f32 v35, v42, v51, v35
	v_rcp_f32_e32 v42, v47
	v_fma_f32 v43, -v53, v44, v39
	v_div_fixup_f32 v29, v40, v0, v29
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v30, v35, v0, v30
	v_fma_f32 v35, -v45, v34, v36
	v_fmac_f32_e32 v44, v43, v38
	v_div_scale_f32 v43, null, v0, v0, v19
	v_mul_f32_e32 v36, v46, v41
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v47, v42, 1.0
	v_div_fmas_f32 v34, v35, v54, v34
	v_fma_f32 v35, -v53, v44, v39
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v39, -v37, v36, v46
	v_fmac_f32_e32 v42, v40, v42
	v_rcp_f32_e32 v40, v43
	v_div_scale_f32 v45, s1, v18, v0, v18
	v_div_fmas_f32 v35, v35, v38, v44
	v_rcp_f32_e32 v38, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v36, v39, v41 :: v_dual_mul_f32 v39, v45, v42
	v_div_fixup_f32 v31, v34, v0, v31
	v_div_fixup_f32 v32, v35, v0, v32
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v43, v40, 1.0
	v_fma_f32 v34, -v37, v36, v46
	v_fma_f32 v35, -v47, v39, v45
	v_div_scale_f32 v46, null, v0, v0, v21
	v_fmac_f32_e32 v40, v44, v40
	v_fma_f32 v44, -v48, v38, 1.0
	v_div_scale_f32 v37, s3, v19, v0, v19
	v_div_fmas_f32 v34, v34, v41, v36
	v_rcp_f32_e32 v36, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, v44, v38
	v_div_scale_f32 v44, null, v0, v0, v22
	v_fmac_f32_e32 v39, v35, v42
	v_mul_f32_e32 v35, v37, v40
	v_div_scale_f32 v41, s4, v20, v0, v20
	v_rcp_f32_e32 v49, v44
	v_div_fixup_f32 v17, v34, v0, v17
	v_fma_f32 v34, -v47, v39, v45
	v_fma_f32 v45, -v43, v35, v37
	v_fma_f32 v50, -v46, v36, 1.0
	v_mul_f32_e32 v47, v41, v38
	s_mov_b32 vcc_lo, s1
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v62, 6, v33
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v34, v34, v42, v39
	v_fmac_f32_e32 v35, v45, v40
	v_fmac_f32_e32 v36, v50, v36
	v_fma_f32 v39, -v48, v47, v41
	v_div_scale_f32 v42, s1, v21, v0, v21
	v_fma_f32 v45, -v44, v49, 1.0
	v_div_fixup_f32 v18, v34, v0, v18
	v_fma_f32 v34, -v43, v35, v37
	v_fmac_f32_e32 v47, v39, v38
	v_mul_f32_e32 v37, v42, v36
	v_fmac_f32_e32 v49, v45, v49
	v_div_scale_f32 v39, s5, v22, v0, v22
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v43, null, v0, v0, v23
	v_div_fmas_f32 v34, v34, v40, v35
	v_fma_f32 v40, -v46, v37, v42
	v_mul_f32_e32 v45, v39, v49
	v_fma_f32 v35, -v48, v47, v41
	v_rcp_f32_e32 v41, v43
	v_div_fixup_f32 v19, v34, v0, v19
	v_fmac_f32_e32 v37, v40, v36
	v_fma_f32 v40, -v44, v45, v39
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v48, null, v0, v0, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v46, v37, v42
	v_fmac_f32_e32 v45, v40, v49
	v_div_fmas_f32 v35, v35, v38, v47
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v38, v48
	v_div_fmas_f32 v34, v34, v36, v37
	v_fma_f32 v36, -v44, v45, v39
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v47, -v43, v41, 1.0
	v_div_scale_f32 v46, null, v0, v0, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v36, v36, v49, v45
	v_div_fixup_f32 v20, v35, v0, v20
	v_fmac_f32_e32 v41, v47, v41
	v_div_scale_f32 v35, s3, v23, v0, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v22, v36, v0, v22
	v_rcp_f32_e32 v36, v46
	v_fma_f32 v40, -v48, v38, 1.0
	v_mul_f32_e32 v37, v35, v41
	v_div_scale_f32 v39, null, v0, v0, v9
	v_div_fixup_f32 v21, v34, v0, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, v40, v38
	v_fma_f32 v44, -v43, v37, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v42, v39
	v_div_scale_f32 v40, s1, v24, v0, v24
	v_fma_f32 v47, -v46, v36, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v49, null, v0, v0, v12
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v63, 7, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_fmac_f32 v36, v47, v36 :: v_dual_fmac_f32 v37, v44, v41
	v_fma_f32 v44, -v39, v42, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v51, v49
	.loc	1 846 36                        ; attention.py:846:36
	v_bfe_u32 v65, v25, 16, 1
	v_bfe_u32 v66, v26, 16, 1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v35, -v43, v37, v35
	v_div_scale_f32 v43, null, v0, v0, v11
	v_fmac_f32_e32 v42, v44, v42
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v35, v35, v41, v37
	v_rcp_f32_e32 v44, v43
	v_div_scale_f32 v41, s3, v10, v0, v10
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v23, v35, v0, v23
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v30, 0, v30, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v50, v41, v36
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	v_cndmask_b32_e64 v32, 0, v32, s0
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s30, s33, v57
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v47, -v43, v44, 1.0
	v_mul_f32_e32 v45, v40, v38
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s29, s33, v58
	v_cmp_gt_i32_e64 s28, s33, v59
	v_cmp_gt_i32_e64 s27, s33, v60
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v44, v47, v44
	v_fma_f32 v34, -v48, v45, v40
	v_div_scale_f32 v47, s5, v11, v0, v11
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s26, s33, v61
	v_cmp_gt_i32_e64 s25, s33, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v45, v34, v38
	v_div_scale_f32 v34, s4, v9, v0, v9
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s24, s33, v63
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v65, v25, v65, 0x7fff
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v37, -v48, v45, v40
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v66, v26, v66, 0x7fff
	v_cmp_o_f32_e64 s34, v26, v26
	v_cmp_o_f32_e64 s35, v27, v27
	v_cmp_o_f32_e64 s36, v28, v28
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v37, v37, v38, v45
	v_dual_mul_f32 v45, v47, v44 :: v_dual_mul_f32 v40, v34, v42
	v_fma_f32 v38, -v46, v50, v41
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v24, v37, v0, v24
	v_fma_f32 v35, -v43, v45, v47
	v_fma_f32 v48, -v39, v40, v34
	v_fmac_f32_e32 v50, v38, v36
	v_div_scale_f32 v38, null, v0, v0, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v45, v35, v44 :: v_dual_fmac_f32 v40, v48, v42
	v_fma_f32 v37, -v49, v51, 1.0
	v_rcp_f32_e32 v35, v38
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s30, s2, s30
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v34, -v39, v40, v34
	v_fma_f32 v39, -v46, v50, v41
	v_fmac_f32_e32 v51, v37, v51
	v_div_scale_f32 v37, s1, v12, v0, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v34, v34, v42, v40
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v42, -v38, v35, 1.0
	v_div_fmas_f32 v36, v39, v36, v50
	v_fma_f32 v39, -v43, v45, v47
	s_mov_b32 vcc_lo, s5
	v_mul_f32_e32 v40, v37, v51
	v_fmac_f32_e32 v35, v42, v35
	v_div_scale_f32 v42, s3, v13, v0, v13
	v_div_fmas_f32 v39, v39, v44, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v49, v40, v37
	v_div_fixup_f32 v9, v34, v0, v9
	v_mul_f32_e32 v34, v42, v35
	v_div_scale_f32 v41, null, v0, v0, v14
	v_div_fixup_f32 v11, v39, v0, v11
	v_div_scale_f32 v39, null, v0, v0, v15
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v43, v41
	v_div_fixup_f32 v10, v36, v0, v10
	v_rcp_f32_e32 v45, v39
	v_fmac_f32_e32 v40, v44, v51
	v_fma_f32 v44, -v38, v34, v42
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s29, s2, s29
	s_and_b32 s28, s2, s28
	s_and_b32 s27, s2, s27
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v37, -v49, v40, v37
	v_fmac_f32_e32 v34, v44, v35
	v_div_scale_f32 v44, null, v0, v0, v16
	v_fma_f32 v36, -v41, v43, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v37, v37, v51, v40
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v46, v44
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s26, s2, s26
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v43, v36, v43
	v_div_fixup_f32 v12, v37, v0, v12
	v_fma_f32 v37, -v38, v34, v42
	v_fma_f32 v42, -v39, v45, 1.0
	v_div_scale_f32 v36, s4, v14, v0, v14
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s25, s2, s25
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v34, v37, v35, v34
	v_fmac_f32_e32 v45, v42, v45
	v_div_scale_f32 v42, null, v0, v0, v2
	v_div_scale_f32 v35, null, v0, v0, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v13, v34, v0, v13
	v_fma_f32 v34, -v44, v46, 1.0
	v_rcp_f32_e32 v48, v42
	v_div_scale_f32 v37, s1, v15, v0, v15
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v46, v34, v46
	v_div_scale_f32 v34, s3, v16, v0, v16
	v_mul_f32_e32 v40, v36, v43
	v_div_scale_f32 v49, s4, v1, v0, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v50, -v42, v48, 1.0
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s24, s2, s24
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v38, -v41, v40, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v48, v50, v48
	v_div_scale_f32 v50, s5, v2, v0, v2
	v_fmac_f32_e32 v40, v38, v43
	v_rcp_f32_e32 v38, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v36, -v41, v40, v36
	v_mul_f32_e32 v41, v37, v45
	v_fma_f32 v47, -v35, v38, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v38, v47, v38
	v_div_scale_f32 v47, null, v0, v0, v3
	v_mul_f32_e32 v52, v49, v38
	v_div_fmas_f32 v36, v36, v43, v40
	v_fma_f32 v40, -v39, v41, v37
	v_mul_f32_e32 v43, v34, v46
	v_rcp_f32_e32 v51, v47
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v14, v36, v0, v14
	v_fmac_f32_e32 v41, v40, v45
	v_fma_f32 v40, -v44, v43, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v39, v41, v37
	v_fmac_f32_e32 v43, v40, v46
	v_fma_f32 v37, -v35, v52, v49
	v_mul_f32_e32 v39, v50, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v47, v51, 1.0
	v_fma_f32 v34, -v44, v43, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v52, v37, v38
	v_fma_f32 v37, -v42, v39, v50
	v_div_fmas_f32 v36, v36, v45, v41
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v51, v40, v51
	v_fma_f32 v35, -v35, v52, v49
	v_fmac_f32_e32 v39, v37, v48
	v_div_fmas_f32 v34, v34, v46, v43
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v40, s1, v3, v0, v3
	v_div_fmas_f32 v35, v35, v38, v52
	v_fma_f32 v38, -v42, v39, v50
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v37, v40, v51
	v_div_scale_f32 v41, null, v0, v0, v4
	v_div_fmas_f32 v38, v38, v48, v39
	v_div_fixup_f32 v15, v36, v0, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v47, v37, v40
	v_rcp_f32_e32 v43, v41
	v_div_fixup_f32 v16, v34, v0, v16
	v_div_fixup_f32 v2, v38, v0, v2
	v_div_scale_f32 v38, null, v0, v0, v7
	v_fmac_f32_e32 v37, v42, v51
	v_div_fixup_f32 v1, v35, v0, v1
	v_div_scale_f32 v35, null, v0, v0, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v42, v38
	v_fma_f32 v36, -v41, v43, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v45, null, v0, v0, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v43, v36, v43
	v_div_scale_f32 v36, null, v0, v0, v6
	v_fma_f32 v49, -v38, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, v49, v42
	v_fma_f32 v34, -v47, v37, v40
	v_rcp_f32_e32 v40, v36
	v_rcp_f32_e32 v47, v45
	v_div_scale_f32 v49, s4, v7, v0, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v34, v34, v51, v37
	v_rcp_f32_e32 v37, v35
	v_div_scale_f32 v39, vcc_lo, v4, v0, v4
	v_mul_f32_e32 v53, v49, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_div_fixup_f32 v3, v34, v0, v3
	v_fma_f32 v46, -v36, v40, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v51, -v45, v47, 1.0
	v_fma_f32 v34, -v35, v37, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v46, s3, v6, v0, v6
	v_fmac_f32_e32 v37, v34, v37
	v_div_scale_f32 v34, s1, v5, v0, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v52, v46, v40
	v_mul_f32_e32 v44, v39, v43
	v_mul_f32_e32 v50, v34, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v41, v44, v39
	v_fmac_f32_e32 v44, v48, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v48, -v35, v50, v34
	v_fmac_f32_e32 v47, v51, v47
	v_div_scale_f32 v51, s5, v8, v0, v8
	v_fma_f32 v39, -v41, v44, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v50, v48, v37
	v_fma_f32 v48, -v38, v53, v49
	v_mul_f32_e32 v54, v51, v47
	v_fma_f32 v41, -v36, v52, v46
	v_div_fmas_f32 v39, v39, v43, v44
	v_fma_f32 v34, -v35, v50, v34
	v_fmac_f32_e32 v53, v48, v42
	v_fma_f32 v35, -v45, v54, v51
	v_fmac_f32_e32 v52, v41, v40
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v4, v39, v0, v4
	v_div_fmas_f32 v34, v34, v37, v50
	v_fmac_f32_e32 v54, v35, v47
	v_fma_f32 v36, -v36, v52, v46
	v_fma_f32 v35, -v38, v53, v49
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v5, v34, v0, v5
	v_fma_f32 v37, -v45, v54, v51
	v_div_fmas_f32 v36, v36, v40, v52
	s_mov_b32 vcc_lo, s4
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v34, 0, v17, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v35, v35, v42, v53
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v36, v0, v6
	v_div_fmas_f32 v37, v37, v47, v54
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v36, 0, v19, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v7, v35, v0, v7
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v35, 0, v18, s0
	v_cndmask_b32_e64 v38, 0, v21, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v0, v37, v0, v8
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v37, 0, v20, s0
	v_cndmask_b32_e64 v39, 0, v22, s0
	v_cndmask_b32_e64 v40, 0, v23, s0
	v_cndmask_b32_e64 v41, 0, v9, s0
	v_cndmask_b32_e64 v42, 0, v10, s0
	v_cndmask_b32_e64 v43, 0, v11, s0
	v_cndmask_b32_e64 v44, 0, v12, s0
	v_cndmask_b32_e64 v45, 0, v13, s0
	v_cndmask_b32_e64 v46, 0, v14, s0
	v_cndmask_b32_e64 v47, 0, v15, s0
	v_cndmask_b32_e64 v48, 0, v16, s0
	v_cndmask_b32_e64 v50, 0, v2, s0
	v_cndmask_b32_e64 v51, 0, v3, s0
	v_cndmask_b32_e64 v52, 0, v4, s0
	v_cndmask_b32_e64 v53, 0, v5, s0
	v_cndmask_b32_e64 v54, 0, v6, s0
	v_cndmask_b32_e64 v55, 0, v7, s0
	v_cndmask_b32_e64 v56, 0, v0, s0
	.loc	1 843 74 is_stmt 1              ; attention.py:843:74
	v_or_b32_e32 v23, 17, v33
	v_or_b32_e32 v22, 18, v33
	v_or_b32_e32 v21, 19, v33
	v_or_b32_e32 v20, 20, v33
	v_or_b32_e32 v19, 21, v33
	v_or_b32_e32 v18, 22, v33
	v_or_b32_e32 v17, 23, v33
	v_or_b32_e32 v16, 32, v33
	v_or_b32_e32 v15, 33, v33
	v_or_b32_e32 v14, 34, v33
	v_or_b32_e32 v13, 35, v33
	v_or_b32_e32 v12, 36, v33
	v_or_b32_e32 v11, 37, v33
	v_or_b32_e32 v10, 38, v33
	v_or_b32_e32 v9, 39, v33
	v_or_b32_e32 v8, 48, v33
	v_or_b32_e32 v7, 49, v33
	v_or_b32_e32 v6, 50, v33
	v_or_b32_e32 v5, 51, v33
	v_or_b32_e32 v4, 52, v33
	v_or_b32_e32 v3, 53, v33
	v_or_b32_e32 v2, 54, v33
	v_or_b32_e32 v0, 55, v33
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v49, 0, v1, s0
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v1, v69, s33
	.loc	1 846 36                        ; attention.py:846:36
	v_bfe_u32 v69, v27, 16, 1
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s22, s33, v23
	v_cmp_gt_i32_e64 s21, s33, v22
	v_cmp_gt_i32_e64 s20, s33, v21
	v_cmp_gt_i32_e64 s19, s33, v20
	v_cmp_gt_i32_e64 s18, s33, v19
	v_cmp_gt_i32_e64 s17, s33, v18
	v_cmp_gt_i32_e64 s16, s33, v17
	v_cmp_gt_i32_e64 s15, s33, v16
	v_cmp_gt_i32_e64 s14, s33, v15
	v_cmp_gt_i32_e64 s13, s33, v14
	v_cmp_gt_i32_e64 s12, s33, v13
	v_cmp_gt_i32_e64 s10, s33, v12
	v_cmp_gt_i32_e64 s9, s33, v11
	v_cmp_gt_i32_e64 s8, s33, v10
	v_cmp_gt_i32_e64 s4, s33, v9
	v_cmp_gt_i32_e64 s3, s33, v8
	v_cmp_gt_i32_e64 s1, s33, v7
	v_cmp_gt_i32_e64 s0, s33, v6
	v_cmp_gt_i32_e32 vcc_lo, s33, v5
	v_cmp_gt_i32_e64 s11, s33, v4
	v_cmp_gt_i32_e64 s7, s33, v3
	v_cmp_gt_i32_e64 s6, s33, v2
	v_cmp_gt_i32_e64 s5, s33, v0
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s33, v25, v25
	v_bfe_u32 v25, v28, 16, 1
	v_add3_u32 v26, v27, v69, 0x7fff
	v_cndmask_b16 v27.h, 0x7fff, v66.h, s34
	v_cmp_o_f32_e64 s34, v30, v30
	v_cndmask_b16 v27.l, 0x7fff, v65.h, s33
	v_add3_u32 v25, v28, v25, 0x7fff
	v_bfe_u32 v28, v29, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v26.h, s35
	v_bfe_u32 v26, v30, 16, 1
	v_bfe_u32 v65, v31, 16, 1
	v_cmp_o_f32_e64 s33, v29, v29
	v_add3_u32 v28, v29, v28, 0x7fff
	v_bfe_u32 v29, v32, 16, 1
	v_add3_u32 v26, v30, v26, 0x7fff
	v_add3_u32 v30, v31, v65, 0x7fff
	v_cmp_o_f32_e64 s35, v31, v31
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s36
	v_add3_u32 v29, v32, v29, 0x7fff
	v_cmp_o_f32_e64 s36, v32, v32
	v_cndmask_b16 v26.l, 0x7fff, v28.h, s33
	v_bfe_u32 v28, v34, 16, 1
	v_cndmask_b16 v29.l, 0x7fff, v30.h, s35
	v_bfe_u32 v30, v35, 16, 1
	v_bfe_u32 v32, v37, 16, 1
	v_bfe_u32 v31, v36, 16, 1
	v_cndmask_b16 v26.h, 0x7fff, v26.h, s34
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s36
	v_add3_u32 v28, v34, v28, 0x7fff
	v_cmp_o_f32_e64 s33, v34, v34
	v_add3_u32 v30, v35, v30, 0x7fff
	v_cmp_o_f32_e64 s34, v35, v35
	v_add3_u32 v32, v37, v32, 0x7fff
	v_cmp_o_f32_e64 s36, v37, v37
	v_bfe_u32 v34, v38, 16, 1
	v_add3_u32 v31, v36, v31, 0x7fff
	v_cmp_o_f32_e64 s35, v36, v36
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s33
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s34
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s36
	v_add3_u32 v32, v38, v34, 0x7fff
	v_bfe_u32 v34, v40, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v31.h, s35
	v_bfe_u32 v31, v39, 16, 1
	v_bfe_u32 v35, v24, 16, 1
	v_cmp_o_f32_e64 s33, v38, v38
	v_add3_u32 v34, v40, v34, 0x7fff
	v_cmp_o_f32_e64 s35, v40, v40
	v_add3_u32 v31, v39, v31, 0x7fff
	v_cmp_o_f32_e64 s34, v39, v39
	v_add3_u32 v35, v24, v35, 0x7fff
	v_cmp_o_f32_e64 s36, v24, v24
	v_cndmask_b16 v24.l, 0x7fff, v32.h, s33
	v_bfe_u32 v32, v41, 16, 1
	v_cndmask_b16 v31.l, 0x7fff, v34.h, s35
	v_bfe_u32 v34, v42, 16, 1
	v_bfe_u32 v36, v44, 16, 1
	v_cndmask_b16 v24.h, 0x7fff, v31.h, s34
	v_cndmask_b16 v31.h, 0x7fff, v35.h, s36
	v_bfe_u32 v35, v43, 16, 1
	v_add3_u32 v32, v41, v32, 0x7fff
	v_cmp_o_f32_e64 s33, v41, v41
	v_add3_u32 v34, v42, v34, 0x7fff
	v_cmp_o_f32_e64 s34, v42, v42
	v_add3_u32 v36, v44, v36, 0x7fff
	v_cmp_o_f32_e64 s36, v44, v44
	v_bfe_u32 v37, v45, 16, 1
	v_add3_u32 v35, v43, v35, 0x7fff
	v_cmp_o_f32_e64 s35, v43, v43
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s33
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s34
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s36
	v_add3_u32 v36, v45, v37, 0x7fff
	v_bfe_u32 v37, v47, 16, 1
	v_bfe_u32 v38, v48, 16, 1
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s35
	v_bfe_u32 v35, v46, 16, 1
	v_cmp_o_f32_e64 s33, v45, v45
	v_add3_u32 v37, v47, v37, 0x7fff
	v_cmp_o_f32_e64 s35, v47, v47
	v_add3_u32 v38, v48, v38, 0x7fff
	v_cmp_o_f32_e64 s36, v48, v48
	v_add3_u32 v35, v46, v35, 0x7fff
	v_bfe_u32 v39, v51, 16, 1
	v_cmp_o_f32_e64 s34, v46, v46
	v_cndmask_b16 v35.l, 0x7fff, v36.h, s33
	v_bfe_u32 v36, v49, 16, 1
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s35
	v_cndmask_b16 v37.h, 0x7fff, v38.h, s36
	v_bfe_u32 v38, v50, 16, 1
	v_bfe_u32 v40, v52, 16, 1
	v_add3_u32 v39, v51, v39, 0x7fff
	v_cmp_o_f32_e64 s35, v51, v51
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s34
	v_add3_u32 v36, v49, v36, 0x7fff
	v_cmp_o_f32_e64 s33, v49, v49
	v_add3_u32 v38, v50, v38, 0x7fff
	v_cmp_o_f32_e64 s34, v50, v50
	v_add3_u32 v40, v52, v40, 0x7fff
	v_cmp_o_f32_e64 s36, v52, v52
	v_bfe_u32 v41, v53, 16, 1
	v_bfe_u32 v42, v56, 16, 1
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s35
	v_bfe_u32 v39, v54, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s33
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s34
	v_cndmask_b16 v38.h, 0x7fff, v40.h, s36
	v_add3_u32 v40, v53, v41, 0x7fff
	v_bfe_u32 v41, v55, 16, 1
	v_cmp_o_f32_e64 s33, v53, v53
	v_add3_u32 v42, v56, v42, 0x7fff
	v_cmp_o_f32_e64 s36, v56, v56
	v_add3_u32 v39, v54, v39, 0x7fff
	v_add3_u32 v41, v55, v41, 0x7fff
	v_cmp_o_f32_e64 s35, v55, v55
	v_cndmask_b16 v39.l, 0x7fff, v40.h, s33
	v_cmp_eq_u32_e64 s33, 0, v68
	v_cndmask_b16 v40.h, 0x7fff, v42.h, s36
	v_mov_b32_e32 v42, 0x5410
	v_cndmask_b16 v40.l, 0x7fff, v41.h, s35
	v_mov_b32_e32 v43, 0x7632
	v_cndmask_b32_e64 v41, v26, v27, s33
	v_cndmask_b32_e64 v26, v27, v26, s33
	v_cndmask_b32_e64 v27, v29, v25, s33
	v_cndmask_b32_e64 v25, v25, v29, s33
	v_cndmask_b32_e64 v29, v24, v28, s33
	v_cndmask_b32_e64 v24, v28, v24, s33
	v_cndmask_b32_e64 v28, v31, v30, s33
	v_cndmask_b32_e64 v30, v30, v31, s33
	v_cndmask_b32_e64 v31, v35, v32, s33
	v_cndmask_b32_e64 v32, v32, v35, s33
	v_cndmask_b32_e64 v35, 0x1054, v42, s33
	v_cndmask_b32_e64 v42, 0x3276, v43, s33
	v_cmp_o_f32_e64 s34, v54, v54
	v_cndmask_b32_e64 v43, v37, v34, s33
	v_cndmask_b32_e64 v34, v34, v37, s33
	v_lshl_or_b32 v35, v35, 8, v35
	v_lshl_or_b32 v42, v42, 8, v42
	v_cndmask_b16 v39.h, 0x7fff, v39.h, s34
	s_mov_b32 s34, 0x76543210
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v33, v1, v33, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_and_b32_e32 v35, 0x540054, v35
	v_and_b32_e32 v42, 0x760076, v42
	v_cndmask_b32_e64 v37, v39, v36, s33
	v_cndmask_b32_e64 v36, v36, v39, s33
	v_cndmask_b32_e64 v39, v40, v38, s33
	v_lshl_or_b32 v35, v35, 4, v35
	v_cndmask_b32_e64 v38, v38, v40, s33
	v_permlanex16_b32 v26, v26, s34, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v40, v42, 4, v42
	v_permlanex16_b32 v25, v25, s34, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v35, 0x5040504, v35
	v_permlanex16_b32 v24, v24, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v32, s34, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v40, 0x7060706, v40
	v_permlanex16_b32 v34, v34, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v36, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v38, s34, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v42, v26, v41, v35
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v56, v1, v57, 1
	v_add_lshl_u32 v57, v1, v58, 1
	v_cndmask_b32_e64 v33, 0x80000000, v33, s31
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v26, v26, v41, v40
	v_perm_b32 v41, v25, v27, v35
	v_perm_b32 v25, v25, v27, v40
	v_perm_b32 v27, v24, v29, v35
	v_perm_b32 v24, v24, v29, v40
	v_perm_b32 v29, v30, v28, v35
	v_perm_b32 v28, v30, v28, v40
	v_perm_b32 v30, v32, v31, v35
	v_perm_b32 v31, v32, v31, v40
	v_perm_b32 v32, v34, v43, v35
	v_perm_b32 v34, v34, v43, v40
	v_perm_b32 v43, v36, v37, v35
	v_perm_b32 v36, v36, v37, v40
	v_perm_b32 v35, v38, v39, v35
	v_perm_b32 v37, v38, v39, v40
	v_mov_b16_e32 v38.l, v42.h
	v_mov_b16_e32 v38.h, v67.h
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v56, 0x80000000, v56, s30
	v_cndmask_b32_e64 v57, 0x80000000, v57, s29
	buffer_store_b16 v42, v33, s[40:43], 0 offen
	v_add_lshl_u32 v33, v1, v59, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v67.l, v26.h
	.loc	1 846 17                        ; attention.py:846:17
	s_clause 0x1
	buffer_store_b16 v38, v56, s[40:43], 0 offen
	buffer_store_b16 v26, v57, s[40:43], 0 offen
	v_add_lshl_u32 v26, v1, v60, 1
	v_add_lshl_u32 v38, v1, v61, 1
	v_add_lshl_u32 v42, v1, v62, 1
	v_cndmask_b32_e64 v33, 0x80000000, v33, s28
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v40.l, v41.h
	v_mov_b16_e32 v40.h, v67.h
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v26, 0x80000000, v26, s27
	v_cndmask_b32_e64 v38, 0x80000000, v38, s26
	v_add_lshl_u32 v5, v1, v5, 1
	v_cndmask_b32_e64 v42, 0x80000000, v42, s25
	v_add_lshl_u32 v4, v1, v4, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 846 17                        ; attention.py:846:17
	s_clause 0x1
	buffer_store_b16 v67, v33, s[40:43], 0 offen
	buffer_store_b16 v41, v26, s[40:43], 0 offen
	v_add_lshl_u32 v26, v1, v63, 1
	v_add_lshl_u32 v23, v1, v23, 1
	v_add_lshl_u32 v21, v1, v21, 1
	v_add_lshl_u32 v19, v1, v19, 1
	v_add_lshl_u32 v17, v1, v17, 1
	v_add_lshl_u32 v15, v1, v15, 1
	v_add_lshl_u32 v13, v1, v13, 1
	v_add_lshl_u32 v11, v1, v11, 1
	v_add_lshl_u32 v9, v1, v9, 1
	v_add_lshl_u32 v7, v1, v7, 1
	v_add_lshl_u32 v3, v1, v3, 1
	.loc	1 846 36 is_stmt 0              ; attention.py:846:36
	v_mov_b16_e32 v39.l, v25.h
	.loc	1 846 17                        ; attention.py:846:17
	s_clause 0x1
	buffer_store_b16 v40, v38, s[40:43], 0 offen
	buffer_store_b16 v25, v42, s[40:43], 0 offen
	v_add_lshl_u32 v25, v1, v64, 1
	v_add_lshl_u32 v22, v1, v22, 1
	v_add_lshl_u32 v20, v1, v20, 1
	v_add_lshl_u32 v18, v1, v18, 1
	v_add_lshl_u32 v16, v1, v16, 1
	v_add_lshl_u32 v14, v1, v14, 1
	v_add_lshl_u32 v12, v1, v12, 1
	v_add_lshl_u32 v10, v1, v10, 1
	v_add_lshl_u32 v8, v1, v8, 1
	v_add_lshl_u32 v6, v1, v6, 1
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s11
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v2, v1, v2, 1
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s22, s2, s22
	s_and_b32 s20, s2, s20
	s_and_b32 s18, s2, s18
	s_and_b32 s16, s2, s16
	s_and_b32 s14, s2, s14
	s_and_b32 s12, s2, s12
	s_and_b32 s9, s2, s9
	s_and_b32 s4, s2, s4
	s_and_b32 s1, s2, s1
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s7
	s_and_b32 s21, s2, s21
	s_and_b32 s19, s2, s19
	s_and_b32 s17, s2, s17
	s_and_b32 s15, s2, s15
	s_and_b32 s13, s2, s13
	s_and_b32 s10, s2, s10
	s_and_b32 s8, s2, s8
	s_and_b32 s3, s2, s3
	s_and_b32 s0, s2, s0
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v0, v1, v0, 1
	.loc	1 846 36 is_stmt 0              ; attention.py:846:36
	v_mov_b16_e32 v39.h, v67.h
	v_mov_b16_e32 v44.l, v24.h
	v_mov_b16_e32 v44.h, v67.h
	v_mov_b16_e32 v45.l, v27.h
	v_mov_b16_e32 v45.h, v67.h
	v_mov_b16_e32 v46.l, v28.h
	v_mov_b16_e32 v46.h, v67.h
	v_mov_b16_e32 v47.l, v29.h
	v_mov_b16_e32 v47.h, v67.h
	v_mov_b16_e32 v48.l, v31.h
	v_mov_b16_e32 v48.h, v67.h
	v_mov_b16_e32 v49.l, v30.h
	v_mov_b16_e32 v49.h, v67.h
	v_mov_b16_e32 v50.l, v34.h
	v_mov_b16_e32 v50.h, v67.h
	v_mov_b16_e32 v51.l, v32.h
	v_mov_b16_e32 v51.h, v67.h
	v_mov_b16_e32 v52.l, v36.h
	v_mov_b16_e32 v52.h, v67.h
	v_mov_b16_e32 v53.l, v43.h
	v_mov_b16_e32 v53.h, v67.h
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v26, 0x80000000, v26, s24
	v_cndmask_b32_e64 v23, 0x80000000, v23, s22
	v_cndmask_b32_e64 v21, 0x80000000, v21, s20
	v_cndmask_b32_e64 v19, 0x80000000, v19, s18
	v_cndmask_b32_e64 v17, 0x80000000, v17, s16
	v_cndmask_b32_e64 v15, 0x80000000, v15, s14
	v_cndmask_b32_e64 v13, 0x80000000, v13, s12
	v_cndmask_b32_e64 v11, 0x80000000, v11, s9
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	v_cndmask_b32_e64 v7, 0x80000000, v7, s1
	v_cndmask_b32_e32 v1, 0x80000000, v3, vcc_lo
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s6
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v25, 0x80000000, v25, s23
	v_cndmask_b32_e64 v22, 0x80000000, v22, s21
	v_cndmask_b32_e64 v20, 0x80000000, v20, s19
	v_cndmask_b32_e64 v18, 0x80000000, v18, s17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s15
	v_cndmask_b32_e64 v14, 0x80000000, v14, s13
	v_cndmask_b32_e64 v12, 0x80000000, v12, s10
	v_cndmask_b32_e64 v10, 0x80000000, v10, s8
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	.loc	1 846 36 is_stmt 0              ; attention.py:846:36
	v_mov_b16_e32 v55.l, v35.h
	v_mov_b16_e32 v55.h, v67.h
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s5
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v54.l, v37.h
	v_mov_b16_e32 v54.h, v67.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x18
	buffer_store_b16 v39, v26, s[40:43], 0 offen
	buffer_store_b16 v27, v25, s[40:43], 0 offen
	buffer_store_b16 v45, v23, s[40:43], 0 offen
	buffer_store_b16 v24, v22, s[40:43], 0 offen
	buffer_store_b16 v44, v21, s[40:43], 0 offen
	buffer_store_b16 v29, v20, s[40:43], 0 offen
	buffer_store_b16 v47, v19, s[40:43], 0 offen
	buffer_store_b16 v28, v18, s[40:43], 0 offen
	buffer_store_b16 v46, v17, s[40:43], 0 offen
	buffer_store_b16 v30, v16, s[40:43], 0 offen
	buffer_store_b16 v49, v15, s[40:43], 0 offen
	buffer_store_b16 v31, v14, s[40:43], 0 offen
	buffer_store_b16 v48, v13, s[40:43], 0 offen
	buffer_store_b16 v32, v12, s[40:43], 0 offen
	buffer_store_b16 v51, v11, s[40:43], 0 offen
	buffer_store_b16 v34, v10, s[40:43], 0 offen
	buffer_store_b16 v50, v9, s[40:43], 0 offen
	buffer_store_b16 v43, v8, s[40:43], 0 offen
	buffer_store_b16 v53, v7, s[40:43], 0 offen
	buffer_store_b16 v36, v6, s[40:43], 0 offen
	buffer_store_b16 v52, v5, s[40:43], 0 offen
	buffer_store_b16 v35, v4, s[40:43], 0 offen
	buffer_store_b16 v55, v1, s[40:43], 0 offen
	buffer_store_b16 v37, v2, s[40:43], 0 offen
	buffer_store_b16 v54, v0, s[40:43], 0 offen
	.loc	1 502 5 is_stmt 1               ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp170:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
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
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 216
		.amdhsa_next_free_sgpr 67
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
		.amdhsa_inst_pref_size 63
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_vgpr, 216
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.numbered_sgpr, 67
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16976
; TotalNumSgprs: 69
; NumVgprs: 216
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 69
; NumVGPRsForWavesPerEU: 216
; Occupancy: 7
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
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
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	765                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
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
	.short	769                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
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
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
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
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           1
        .value_kind:     by_value
      - .offset:         129
        .size:           1
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .offset:         140
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         152
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     69
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     216
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
