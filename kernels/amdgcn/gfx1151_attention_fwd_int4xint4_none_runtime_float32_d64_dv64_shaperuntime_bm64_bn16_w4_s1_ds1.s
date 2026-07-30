	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[44:47], s[0:1], 0x80
	s_load_b128 s[28:31], s[0:1], 0x4c
	s_load_b32 s19, s[0:1], 0x60
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v71, 5, v0
	s_load_b64 s[40:41], s[0:1], 0x0
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v20, 0x198, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v72, 4, v71
	v_or_b32_e32 v73, 8, v71
	v_or_b32_e32 v74, 12, v71
	v_and_b32_e32 v34, 0x60, v0
	v_and_b32_e32 v33, 15, v0
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v18, 0x110, v0
	v_add_nc_u32_e32 v77, 0, v0
	s_mov_b32 s35, 0
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v19, 1, v34
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v80, 0, v20
	v_add_nc_u32_e32 v79, 0, v18
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s44
	s_bitcmp1_b32 s44, 8
	.loc	1 583 26                        ; attention.py:583:26
	s_mul_i32 s22, s3, s30
	s_cselect_b32 s34, -1, 0
	s_cmp_eq_u32 s4, 1
	s_cselect_b32 s20, -1, 0
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s15, s28
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s21, s2, 6
	.loc	1 566 23                        ; attention.py:566:23
	s_cvt_f32_u32 s4, s15
	s_sub_i32 s6, 0, s15
	s_abs_i32 s2, s3
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v3, s21, v73
	.loc	1 566 23                        ; attention.py:566:23
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v4, s21, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 566 23                        ; attention.py:566:23
	v_readfirstlane_b32 s4, v1
	.loc	1 584 86                        ; attention.py:584:86
	v_and_b32_e32 v1, 31, v0
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[49:50], null, s19, v71, v[1:2]
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e64 s5, s19, v1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 566 23                        ; attention.py:566:23
	s_cvt_u32_f32 s4, s4
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v1, s21, v71
	.loc	1 570 21 is_stmt 0              ; attention.py:570:21
	v_or_b32_e32 v2, s21, v72
	.loc	1 566 23 is_stmt 1              ; attention.py:566:23
	s_mul_i32 s6, s6, s4
	.loc	1 584 26                        ; attention.py:584:26
	v_lshl_add_u32 v75, s19, 2, v49
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_hi_u32 s6, s4, s6
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v5, 16, v1
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s4, s4, s6
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v6, 20, v1
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_hi_u32 s4, s2, s4
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v7, 24, v1
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_i32 s6, s4, s15
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v9, 28, v1
	.loc	1 566 23                        ; attention.py:566:23
	s_sub_i32 s2, s2, s6
	s_add_i32 s6, s4, 1
	s_sub_i32 s7, s2, s15
	s_cmp_ge_u32 s2, s15
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v10, 32, v1
	.loc	1 566 23                        ; attention.py:566:23
	s_cselect_b32 s4, s6, s4
	s_cselect_b32 s2, s7, s2
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s2, s15
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v11, 36, v1
	.loc	1 566 23                        ; attention.py:566:23
	s_cselect_b32 s39, s6, s4
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s16, s29
	s_xor_b32 s18, s28, s29
	s_cvt_f32_u32 s2, s16
	s_sub_i32 s12, 0, s16
	s_ashr_i32 s24, s18, 31
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
	v_mad_u64_u32 v[50:51], null, s19, 12, v[49:50]
	.loc	1 568 22                        ; attention.py:568:22
	v_readfirstlane_b32 s7, v8
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s6, s30, v4
	.loc	1 584 26                        ; attention.py:584:26
	v_lshl_add_u32 v76, s19, 3, v49
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s8, s30, v6
	v_cmp_gt_i32_e64 s9, s30, v7
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_f32 s10, s7, 0x4f7ffffe
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s7, s30, v5
	v_cmp_gt_i32_e64 s11, s30, v10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 568 22                        ; attention.py:568:22
	s_cvt_u32_f32 s14, s10
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s10, s30, v9
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_i32 s13, s12, s14
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s12, s30, v11
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_hi_u32 s17, s14, s13
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s13, s30, v12
	.loc	1 568 22                        ; attention.py:568:22
	s_add_i32 s17, s14, s17
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s14, s30, v13
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_hi_u32 s17, s15, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s23, s17, s16
	s_sub_i32 s18, s15, s23
	s_add_i32 s23, s17, 1
	s_sub_i32 s25, s18, s16
	s_cmp_ge_u32 s18, s16
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s15, s30, v14
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s17, s23, s17
	s_cselect_b32 s18, s25, s18
	s_add_i32 s23, s17, 1
	s_cmp_ge_u32 s18, s16
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s16, s30, v15
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s23, s23, s17
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s22, s22, s21
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, vcc_lo, s5
	.loc	1 584 26                        ; attention.py:584:26
	s_mul_i32 s25, s22, s19
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s17, s30, v16
	.loc	1 584 26                        ; attention.py:584:26
	v_add_nc_u32_e32 v1, s25, v49
	v_add_nc_u32_e32 v13, s25, v75
	v_add_nc_u32_e32 v14, s25, v76
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s18, s30, v17
	.loc	1 584 26                        ; attention.py:584:26
	v_add_nc_u32_e32 v15, s25, v50
	v_mad_u64_u32 v[2:3], null, s19, 20, v[1:2]
	v_lshl_add_u32 v16, s19, 4, v1
	v_lshl_add_u32 v17, s19, 5, v1
	.loc	1 585 26                        ; attention.py:585:26
	s_and_b32 s41, s41, 0xffff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[3:4], null, s19, 24, v[1:2]
	v_mad_u64_u32 v[4:5], null, s19, 28, v[1:2]
	v_mad_u64_u32 v[5:6], null, s19, 36, v[1:2]
	v_mad_u64_u32 v[6:7], null, s19, 40, v[1:2]
	v_mad_u64_u32 v[7:8], null, s19, 44, v[1:2]
	v_mad_u64_u32 v[8:9], null, s19, 48, v[1:2]
	v_mad_u64_u32 v[9:10], null, s19, 52, v[1:2]
	v_mad_u64_u32 v[10:11], null, s19, 56, v[1:2]
	v_mad_u64_u32 v[11:12], null, s19, 60, v[1:2]
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s2, s5
	.loc	1 568 22                        ; attention.py:568:22
	s_xor_b32 s2, s23, s24
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v12, 0x80000000, v13, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s4, s5
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v13, 0x80000000, v14, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s6, s5
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v14, 0x80000000, v15, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s7, s5
	.loc	1 568 22                        ; attention.py:568:22
	s_sub_i32 s7, s2, s24
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v15, 0x80000000, v16, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s8, s5
	.loc	1 569 19                        ; attention.py:569:19
	s_abs_i32 s6, s7
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s9, s5
	.loc	1 569 19                        ; attention.py:569:19
	s_cvt_f32_u32 s2, s6
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s10, s5
	.loc	1 585 26                        ; attention.py:585:26
	s_clause 0x5
	buffer_load_u8 v16, v1, s[40:43], 0 offen
	buffer_load_u8 v12, v12, s[40:43], 0 offen
	buffer_load_u8 v13, v13, s[40:43], 0 offen
	buffer_load_u8 v15, v15, s[40:43], 0 offen
	buffer_load_u8 v2, v2, s[40:43], 0 offen
	buffer_load_u8 v3, v3, s[40:43], 0 offen
	v_cndmask_b32_e32 v1, 0x80000000, v4, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s11, s5
	.loc	1 569 19                        ; attention.py:569:19
	v_rcp_iflag_f32_e32 v21, s2
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v4, 0x80000000, v17, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s12, s5
	.loc	1 606 16                        ; attention.py:606:16
	s_add_i32 s8, s31, 15
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s13, s5
	.loc	1 606 15                        ; attention.py:606:15
	s_ashr_i32 s2, s8, 31
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s15, s5
	.loc	1 606 15                        ; attention.py:606:15
	s_lshr_b32 s2, s2, 28
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s14, s5
	.loc	1 585 26                        ; attention.py:585:26
	s_clause 0x1
	buffer_load_u8 v4, v4, s[40:43], 0 offen
	buffer_load_u8 v8, v8, s[40:43], 0 offen
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s16, s5
	.loc	1 569 19                        ; attention.py:569:19
	v_readfirstlane_b32 s9, v21
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s17, s5
	.loc	1 585 26                        ; attention.py:585:26
	s_clause 0x1
	buffer_load_u8 v5, v5, s[40:43], 0 offen
	buffer_load_u8 v9, v9, s[40:43], 0 offen
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s18, s5
	.loc	1 606 15                        ; attention.py:606:15
	s_add_i32 s8, s8, s2
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	s_clause 0x5
	buffer_load_u8 v6, v6, s[40:43], 0 offen
	buffer_load_u8 v10, v10, s[40:43], 0 offen
	buffer_load_u8 v14, v14, s[40:43], 0 offen
	buffer_load_u8 v17, v1, s[40:43], 0 offen
	buffer_load_u8 v7, v7, s[40:43], 0 offen
	buffer_load_u8 v11, v11, s[40:43], 0 offen
	v_xor_b32_e32 v1, 0x88, v0
	.loc	1 606 14                        ; attention.py:606:14
	s_and_b32 s38, s8, -16
	.loc	1 612 9                         ; attention.py:612:9
	s_bfe_u32 s2, s44, 0x10008
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v78, 0, v1
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v1, v19, v33
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(15)
	ds_store_b8 v77, v16
	s_waitcnt vmcnt(12)
	ds_store_b8 v77, v15 offset:512
	s_waitcnt vmcnt(9)
	ds_store_b8 v77, v4 offset:1024
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
	ds_store_b8 v80, v17 offset:512
	s_waitcnt vmcnt(1)
	ds_store_b8 v80, v7 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v80, v11 offset:1536
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v35, s21, v1
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 612 9                         ; attention.py:612:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s21, s46
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s10, s21, s45
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s2, s47
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s10, s10, s47
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s2, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s2, s31, s2
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s2, s2, 15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 619 34 is_stmt 0              ; attention.py:619:34
	s_ashr_i32 s4, s2, 31
	s_lshr_b32 s4, s4, 28
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s2, s2, s4
	.loc	1 613 25 is_stmt 1              ; attention.py:613:25
	s_max_i32 s4, s10, 0
	.loc	1 619 33                        ; attention.py:619:33
	s_and_b32 s2, s2, -16
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s35, s4, 0x7ffffff0
	.loc	1 619 18                        ; attention.py:619:18
	s_min_i32 s38, s38, s2
.LBB0_2:
	.loc	1 620 9                         ; attention.py:620:9
	v_cndmask_b32_e64 v2, 0, 1, s20
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_cmp_gt_i32_e64 s2, s30, v35
	.loc	1 620 9                         ; attention.py:620:9
	s_and_not1_b32 vcc_lo, exec_lo, s20
	v_cmp_ne_u32_e64 s4, 1, v2
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention.py:0:9
	s_add_i32 s10, s21, s47
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s10, s10, 64
	s_min_i32 s10, s31, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s10, s10, 15
	.loc	1 622 34 is_stmt 1              ; attention.py:622:34
	s_ashr_i32 s11, s10, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s11, s11, 28
	s_add_i32 s10, s10, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 622 33 is_stmt 0              ; attention.py:622:33
	s_and_b32 s10, s10, -16
	.loc	1 622 18                        ; attention.py:622:18
	s_min_i32 s38, s38, s10
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_clause 0x1
	s_load_b64 s[36:37], s[0:1], 0x38
	s_load_b32 s33, s[0:1], 0x64
	.loc	1 571 21 is_stmt 1              ; attention.py:571:21
	v_bfe_u32 v68, v0, 4, 1
	v_mov_b32_e32 v8, 0
	v_add_nc_u32_e32 v70, s22, v1
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_ge_i32 s35, s38
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v69, 2, v68
	v_or_b32_e32 v67, 4, v68
	v_or_b32_e32 v65, 6, v68
	v_or_b32_e32 v66, 8, v68
	v_or_b32_e32 v64, 10, v68
	v_or_b32_e32 v63, 12, v68
	v_or_b32_e32 v62, 14, v68
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
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[20:27], s[0:1], 0x8
	v_dual_mov_b32 v4, 0x5410 :: v_dual_lshlrev_b32 v1, 1, v70
	v_dual_mov_b32 v103, 0xff800000 :: v_dual_lshlrev_b32 v42, 5, v33
	.loc	1 573 27 is_stmt 1              ; attention.py:573:27
	v_add_nc_u32_e32 v82, s47, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_lshl_add_u32 v84, v33, 1, 0
	v_mov_b32_e32 v33, 0
	v_and_b32_e32 v3, 16, v0
	s_xor_b32 s10, s3, s28
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v36, v33 :: v_dual_and_b32 v51, 63, v0
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	v_lshlrev_b32_e32 v43, 4, v34
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v2, 64, v0
	.loc	1 771 51                        ; attention.py:771:51
	v_lshrrev_b32_e32 v81, 6, v0
	s_cvt_u32_f32 s9, s9
	s_waitcnt lgkmcnt(0)
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	v_mov_b32_e32 v44, 0x7632
	buffer_load_u16 v41, v1, s[40:43], 0 offen
	v_lshlrev_b32_e32 v1, 1, v0
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x28
	s_load_b32 s12, s[0:1], 0x6c
	s_ashr_i32 s1, s8, 4
	s_ashr_i32 s8, s10, 31
	s_sub_i32 s11, 0, s6
	v_dual_mov_b32 v38, v33 :: v_dual_and_b32 v45, 24, v1
	s_xor_b32 s10, s39, s8
	v_cndmask_b32_e32 v46, 0x1054, v4, vcc_lo
	s_sub_i32 s8, s10, s8
	s_delay_alu instid0(VALU_DEP_2)
	v_or3_b32 v43, v42, v43, v45
	v_lshl_add_u32 v48, v2, 2, 0
	v_mov_b32_e32 v34, v33
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[52:53], null, s33, v81, v[51:52]
	v_dual_mov_b32 v26, v25 :: v_dual_lshlrev_b32 v47, 1, v51
	s_mul_i32 s10, s8, s28
	s_mul_i32 s11, s11, s9
	s_sub_i32 s3, s3, s10
	s_mul_hi_u32 s10, s9, s11
	v_mov_b32_e32 v39, v33
	v_or_b32_e32 v42, v42, v45
	v_lshl_or_b32 v45, v46, 8, v46
	v_dual_mov_b32 v37, v33 :: v_dual_add_nc_u32 v46, 0, v43
	v_add_nc_u32_e32 v90, v48, v47
	s_abs_i32 s11, s3
	s_add_i32 s9, s9, s10
	v_xad_u32 v47, v43, 8, 0
	v_dual_mov_b32 v35, v33 :: v_dual_cndmask_b32 v44, 0x3276, v44
	v_xad_u32 v48, v43, 16, 0
	s_ashr_i32 s7, s7, 31
	s_ashr_i32 s3, s3, 31
	s_mul_hi_u32 s9, s11, s9
	v_xad_u32 v43, v43, 24, 0
	v_mad_u64_u32 v[53:54], null, s33, 6, v[52:53]
	.loc	1 569 19                        ; attention.py:569:19
	s_xor_b32 s3, s3, s7
	s_mul_i32 s7, s9, s6
	ds_load_b64 v[54:55], v46
	ds_load_b64 v[56:57], v47
	ds_load_b64 v[58:59], v48
	ds_load_b64 v[60:61], v43
	v_dual_mov_b32 v28, v25 :: v_dual_and_b32 v45, 0x540054, v45
	v_lshl_or_b32 v44, v44, 8, v44
	s_sub_i32 s7, s11, s7
	s_add_i32 s10, s9, 1
	s_sub_i32 s11, s7, s6
	s_cmp_ge_u32 s7, s6
	v_dual_mov_b32 v30, v25 :: v_dual_add_nc_u32 v93, 0, v42
	v_dual_mov_b32 v32, v25 :: v_dual_and_b32 v43, 0x760076, v44
	v_xor_b32_e32 v94, 8, v42
	v_xor_b32_e32 v95, 16, v42
	v_xor_b32_e32 v96, 24, v42
	v_lshl_or_b32 v42, v45, 4, v45
	s_cselect_b32 s9, s10, s9
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s9, 1
	s_cmp_ge_u32 s7, s6
	v_mov_b16_e32 v83.l, 0
	v_dual_mov_b32 v20, v25 :: v_dual_and_b32 v97, 0x5040504, v42
	v_lshl_or_b32 v42, v43, 4, v43
	s_cselect_b32 s6, s10, s9
	.loc	1 710 33                        ; attention.py:710:33
	s_mul_i32 s8, s8, s29
	.loc	1 569 19                        ; attention.py:569:19
	s_xor_b32 s6, s6, s3
	.loc	1 742 27                        ; attention.py:742:27
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s28, s12, 0x3fb8aa3b
	.loc	1 569 19                        ; attention.py:569:19
	s_sub_i32 s3, s6, s3
	.loc	1 771 51                        ; attention.py:771:51
	v_or_b32_e32 v85, 2, v81
	v_or_b32_e32 v86, 4, v81
	v_or_b32_e32 v87, 6, v81
	.loc	1 778 24                        ; attention.py:778:24
	v_cmp_gt_i32_e64 s0, s33, v51
	v_subrev_nc_u32_e32 v88, s45, v82
	v_dual_mov_b32 v40, v33 :: v_dual_add_nc_u32 v89, s46, v82
	v_dual_mov_b32 v27, v25 :: v_dual_add_nc_u32 v94, 0, v94
	v_dual_mov_b32 v29, v25 :: v_dual_add_nc_u32 v96, 0, v96
	v_dual_mov_b32 v31, v25 :: v_dual_and_b32 v98, 0x7060706, v42
	v_dual_mov_b32 v18, v25 :: v_dual_add_nc_u32 v95, 0, v95
	v_mov_b32_e32 v19, v25
	v_mov_b32_e32 v21, v25
	v_mov_b32_e32 v23, v25
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v10, v25
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v12, v25
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v14, v25
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v16, v25
	v_mov_b32_e32 v1, v25
	v_mov_b32_e32 v2, v25
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v6, v25
	v_mov_b32_e32 v7, v25
	v_mov_b32_e32 v8, v25
	.loc	1 707 13                        ; attention.py:707:13
	v_lshl_add_u32 v91, s33, 1, v52
	v_lshl_add_u32 v92, s33, 2, v52
	v_mov_b32_e32 v102, v25
	.loc	1 772 39                        ; attention.py:772:39
	s_lshl_b32 s48, s1, 3
	s_and_b32 s27, s27, 0xffff
	.loc	1 710 33                        ; attention.py:710:33
	s_add_i32 s51, s3, s8
	s_mov_b32 s40, s22
	s_mov_b32 s22, s42
	s_mov_b32 s44, s26
	.loc	1 742 17                        ; attention.py:742:17
	s_mov_b32 s29, s28
	s_mov_b32 s30, s28
	s_mov_b32 s39, s28
	s_and_b32 s21, s21, 0xffff
	s_and_b32 s41, s23, 0xffff
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s23, s43
	s_mov_b32 s45, s27
	.loc	1 710 32                        ; attention.py:710:32
	s_mul_i32 s49, s51, s31
	.loc	1 773 30                        ; attention.py:773:30
	s_mul_i32 s50, s51, s48
	.loc	1 794 21                        ; attention.py:794:21
	s_mul_i32 s51, s51, s1
	s_mov_b32 s46, s42
	s_mov_b32 s47, s43
	s_mov_b32 s52, 0x76543210
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v83.h, v41.l
	v_mov_b32_e32 v17, v25
	v_mov_b32_e32 v22, v25
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v24, v25 :: v_dual_mov_b32 v101, v83
	.loc	1 732 30                        ; attention.py:732:30
	v_mov_b32_e32 v99, v83
	v_mov_b32_e32 v100, v83
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 771 36                        ; attention.py:771:36
	s_lshr_b32 s1, s35, 1
	.loc	1 798 53                        ; attention.py:798:53
	s_lshr_b32 s6, s35, 4
	.loc	1 771 36                        ; attention.py:771:36
	v_or_b32_e32 v105, s1, v81
	.loc	1 798 25                        ; attention.py:798:25
	s_add_i32 s6, s6, s51
	.loc	1 774 30                        ; attention.py:774:30
	s_add_i32 s3, s1, s50
	.loc	1 798 25                        ; attention.py:798:25
	s_mul_i32 s6, s6, s33
	.loc	1 774 30                        ; attention.py:774:30
	s_mul_i32 s3, s3, s33
	.loc	1 777 27                        ; attention.py:777:27
	v_cmp_gt_i32_e32 vcc_lo, s48, v105
	.loc	1 797 41                        ; attention.py:797:41
	v_add_lshl_u32 v109, s6, v51, 1
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v41, v41
	v_add_nc_u32_e32 v106, s3, v52
	v_add_nc_u32_e32 v107, s3, v91
	v_cvt_f32_i32_e32 v43, v43
	v_add_nc_u32_e32 v108, s3, v92
	v_cvt_f32_i32_e32 v47, v47
	v_add_nc_u32_e32 v110, s3, v53
	.loc	1 777 26                        ; attention.py:777:26
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 797 41                        ; attention.py:797:41
	v_cndmask_b32_e64 v109, 0x80000000, v109, s0
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v41, v83, v41
	v_mul_f32_e32 v42, v99, v42
	.loc	1 775 32                        ; attention.py:775:32
	v_dual_cndmask_b32 v106, 0x80000000, v106 :: v_dual_cndmask_b32 v107, 0x80000000, v107
	.loc	1 797 41                        ; attention.py:797:41
	s_mov_b32 s26, s42
	s_mov_b32 s27, s43
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v43, v100, v43
	v_dual_mul_f32 v47, v100, v47 :: v_dual_cndmask_b32 v108, 0x80000000, v108
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e32 v111, 0x80000000, v110, vcc_lo
	.loc	1 797 41                        ; attention.py:797:41
	buffer_load_u16 v110, v109, s[24:27], 0 offen
	.loc	1 775 32                        ; attention.py:775:32
	s_clause 0x3
	buffer_load_u8 v109, v106, s[40:43], 0 offen
	buffer_load_u8 v106, v107, s[40:43], 0 offen
	buffer_load_u8 v107, v108, s[40:43], 0 offen
	buffer_load_u8 v108, v111, s[40:43], 0 offen
	.loc	1 785 30                        ; attention.py:785:30
	v_mov_b16_e32 v111.l, 0
	.loc	1 727 37                        ; attention.py:727:37
	s_waitcnt vmcnt(12)
	v_mov_b16_e32 v111.h, v115.l
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v46, v46
	.loc	1 727 37                        ; attention.py:727:37
	s_waitcnt vmcnt(7)
	v_mov_b16_e32 v112.h, v116.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v113.h, v117.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v114.h, v118.l
	v_mov_b16_e32 v115.h, v112.l
	v_mov_b16_e32 v116.h, v113.l
	v_mov_b16_e32 v117.h, v114.l
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e32 v112.l, v111.l
	v_mov_b16_e32 v113.l, v111.l
	v_mov_b16_e32 v114.l, v111.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v44, v101, v44 :: v_dual_mul_f32 v45, v83, v45
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e32 v115.l, v111.l
	v_mov_b16_e32 v116.l, v111.l
	v_mov_b16_e32 v117.l, v111.l
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v46, v99, v46 :: v_dual_mul_f32 v41, v41, v111
	v_dual_mul_f32 v48, v101, v48 :: v_dual_mul_f32 v43, v43, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v44, v44, v114 :: v_dual_mul_f32 v47, v47, v116
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e32 v111.h, v104.l
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v42, v42, v112
	v_dual_mul_f32 v48, v48, v117 :: v_dual_mul_f32 v43, s30, v43
	v_dual_mul_f32 v46, v46, v115 :: v_dual_mul_f32 v41, s28, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v45, v45, v111 :: v_dual_mul_f32 v42, s29, v42
	.loc	1 742 17                        ; attention.py:742:17
	v_dual_mul_f32 v47, s30, v47 :: v_dual_mul_f32 v44, s39, v44
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v41, 0xff800000, v41, s56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 742 17                        ; attention.py:742:17
	v_dual_mul_f32 v48, s39, v48 :: v_dual_mul_f32 v45, s28, v45
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v47, 0xff800000, v47, s60
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v44, 0xff800000, v44, s53
	v_cndmask_b32_e64 v43, 0xff800000, v43, s58
	v_cndmask_b32_e64 v48, 0xff800000, v48, s59
	.loc	1 742 17                        ; attention.py:742:17
	v_mul_f32_e32 v46, s29, v46
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v104, 0xff800000, v42, s54
	v_cndmask_b32_e64 v45, 0xff800000, v45, s57
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v103
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v113, v47, v48
.Ltmp2:
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v46, 0xff800000, v46, s55
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v42, v41, v104, v43
.Ltmp4:
	.loc	1 771 36                        ; attention.py:771:36
	v_or_b32_e32 v118, s1, v85
	.loc	1 782 31                        ; attention.py:782:31
	v_lshl_or_b32 v105, v105, 1, 1
	.loc	1 771 36                        ; attention.py:771:36
	v_or_b32_e32 v119, s1, v86
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v114, v44, v45, v46
.Ltmp6:
	.loc	1 785 30                        ; attention.py:785:30
	v_mov_b16_e32 v111.h, v111.l
	v_mov_b16_e32 v112.h, v111.l
	v_mov_b16_e32 v115.h, v111.l
	v_mov_b16_e32 v116.h, v111.l
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v42, v42, v114, v113
.Ltmp8:
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v117.h, v111.l
	v_mov_b16_e32 v121.h, v111.l
	v_mov_b16_e32 v113.h, v111.l
	v_mov_b16_e32 v114.h, v111.l
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_permlanex16_b32 v124, v42, s52, 0xfedcba98 op_sel:[1,0]
.Ltmp10:
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v122.h, v111.l
	v_mov_b16_e32 v123.h, v111.l
	v_mov_b16_e32 v125.h, v111.l
	v_mov_b16_e32 v126.h, v111.l
	.loc	1 766 24                        ; attention.py:766:24
	v_max3_f32 v42, v103, v42, v124
	.loc	1 782 31                        ; attention.py:782:31
	v_lshl_or_b32 v118, v118, 1, 1
	.loc	1 782 30 is_stmt 0              ; attention.py:782:30
	v_cmp_gt_i32_e64 s11, s31, v105
	.loc	1 771 36 is_stmt 1              ; attention.py:771:36
	v_or_b32_e32 v120, s1, v87
	.loc	1 782 31                        ; attention.py:782:31
	v_lshl_or_b32 v119, v119, 1, 1
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v41, v41, v42
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v124, v103, v42
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	.loc	1 782 31                        ; attention.py:782:31
	v_lshl_or_b32 v120, v120, 1, 1
	.loc	1 814 30                        ; attention.py:814:30
	s_barrier
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v41, v41
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v124, v124
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v104, v104, v42
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s35, s35, 16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	s_cmp_lt_i32 s35, s38
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v41, 0, v41, s56
	.loc	1 768 62 is_stmt 0              ; attention.py:768:62
	v_sub_f32_e32 v43, v43, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_mov_b16_e32 v121.l, v41.h
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v127, v43
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 767 25                        ; attention.py:767:25
	v_dual_cndmask_b32 v43, 0, v124 :: v_dual_sub_f32 v44, v44, v42
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v45, v45, v42
	v_sub_f32_e32 v46, v46, v42
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v104, v104
	.loc	1 815 23 is_stmt 1              ; attention.py:815:23
	v_mul_f32_e32 v26, v26, v43
	v_mul_f32_e32 v27, v27, v43
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v44, v44
	v_exp_f32_e32 v45, v45
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v29, v29, v43
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v46, v46
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v20, v20, v43 :: v_dual_and_b32 v121, 1, v121
	v_mul_f32_e32 v12, v12, v43
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v103, 0, v104, s54
	v_cndmask_b32_e64 v104, 0, v127, s58
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v9, v9, v43
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v44, 0, v44, s53
	v_cndmask_b32_e64 v45, 0, v45, s57
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v117.l, v103.h
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v46, 0, v46, s55
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v114.l, v104.h
	v_mov_b16_e32 v113.l, v44.h
	v_mov_b16_e32 v123.l, v45.h
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v17, v17, v43
	v_mul_f32_e32 v22, v22, v43
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v122.l, v46.h
	v_and_b32_e32 v113, 1, v113
	v_and_b32_e32 v114, 1, v114
	v_and_b32_e32 v123, 1, v123
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v30, v30, v43 :: v_dual_add_f32 v127, v104, v44
	v_dual_mul_f32 v18, v18, v43 :: v_dual_and_b32 v117, 1, v117
	v_dual_mul_f32 v19, v19, v43 :: v_dual_add_f32 v128, v45, v46
	v_dual_mul_f32 v21, v21, v43 :: v_dual_and_b32 v122, 1, v122
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s3, v44, v44
	v_cmp_o_f32_e64 s6, v104, v104
	v_cmp_o_f32_e64 s7, v45, v45
	v_add3_u32 v104, v104, v114, 0x7fff
	v_add3_u32 v113, v44, v113, 0x7fff
	v_add3_u32 v114, v45, v123, 0x7fff
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v11, v11, v43
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v124, v41, v103
.Ltmp12:
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e32 vcc_lo, v103, v103
	v_cmp_o_f32_e64 s1, v41, v41
	v_cmp_o_f32_e64 s10, v46, v46
	v_add3_u32 v121, v41, v121, 0x7fff
	v_add3_u32 v103, v103, v117, 0x7fff
	v_add3_u32 v117, v46, v122, 0x7fff
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v14, v14, v43 :: v_dual_sub_f32 v47, v47, v42
	v_mul_f32_e32 v28, v28, v43
	.loc	1 768 62                        ; attention.py:768:62
	v_dual_sub_f32 v48, v48, v42 :: v_dual_mul_f32 v31, v31, v43
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v25, v25, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v47, v47
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v5, v5, v43
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v48, v48
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v6, v6, v43
	v_mul_f32_e32 v7, v7, v43
	v_mul_f32_e32 v8, v8, v43
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v47, 0, v47, s60
	v_cndmask_b32_e64 v48, 0, v48, s59
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v32, v32, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v126.l, v47.h
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v23, v23, v43
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v129, v47, v48 :: v_dual_mul_f32 v10, v10, v43
.Ltmp14:
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v125.l, v48.h
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v24, v24, v43
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v126, 1, v126
	v_cmp_o_f32_e64 s8, v48, v48
	v_cmp_o_f32_e64 s9, v47, v47
	v_and_b32_e32 v125, 1, v125
	.loc	1 797 41                        ; attention.py:797:41
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v45, 16, v110
	.loc	1 785 32                        ; attention.py:785:32
	s_waitcnt vmcnt(3)
	v_lshrrev_b16 v111.l, 4, v109.l
	s_waitcnt vmcnt(2)
	v_lshrrev_b16 v112.l, 4, v106.l
	.loc	1 783 76                        ; attention.py:783:76
	s_waitcnt vmcnt(1)
	v_and_b16 v44.l, v107.l, 15
	.loc	1 784 29                        ; attention.py:784:29
	v_and_b32_e32 v110, 15, v107
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v115.l, 4, v107.l
	.loc	1 783 32                        ; attention.py:783:32
	v_cndmask_b32_e64 v105, 0, v111, s11
	.loc	1 782 30                        ; attention.py:782:30
	v_cmp_gt_i32_e64 s11, s31, v118
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v41.l, v109.l, 15
	.loc	1 784 29                        ; attention.py:784:29
	v_and_b32_e32 v46, 15, v109
	.loc	1 783 76                        ; attention.py:783:76
	s_waitcnt vmcnt(0)
	v_and_b16 v44.h, v108.l, 15
	.loc	1 784 29                        ; attention.py:784:29
	v_and_b32_e32 v122, 15, v108
	.loc	1 783 32                        ; attention.py:783:32
	v_cndmask_b32_e64 v107, 0, v112, s11
	.loc	1 782 30                        ; attention.py:782:30
	v_cmp_gt_i32_e64 s11, s31, v119
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v116.l, 4, v108.l
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v41.h, v106.l, 15
	.loc	1 784 29                        ; attention.py:784:29
	v_and_b32_e32 v109, 15, v106
	.loc	1 786 54                        ; attention.py:786:54
	v_or_b32_e32 v106, -16, v46
	.loc	1 783 32                        ; attention.py:783:32
	v_cndmask_b32_e64 v108, 0, v115, s11
	.loc	1 782 30                        ; attention.py:782:30
	v_cmp_gt_i32_e64 s11, s31, v120
	.loc	1 786 54                        ; attention.py:786:54
	v_or_b32_e32 v115, -16, v110
	v_or_b32_e32 v112, -16, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 783 32                        ; attention.py:783:32
	v_cndmask_b32_e64 v111, 0, v116, s11
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s11, 7, v41.l
	.loc	1 786 54 is_stmt 0              ; attention.py:786:54
	v_or_b32_e32 v116, -16, v122
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b32_e64 v46, v46, v106, s11
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s11, 7, v41.h
	.loc	1 787 56 is_stmt 1              ; attention.py:787:56
	v_or_b32_e32 v106, -16, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v46, v46
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b32_e64 v41, v109, v112, s11
	.loc	1 786 38 is_stmt 0              ; attention.py:786:38
	v_cmp_lt_u16_e64 s11, 7, v44.l
	.loc	1 787 56 is_stmt 1              ; attention.py:787:56
	v_or_b32_e32 v112, -16, v108
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v13, v13, v43 :: v_dual_mul_f32 v46, v46, v45
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v41, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b32_e64 v109, v110, v115, s11
	.loc	1 786 38 is_stmt 0              ; attention.py:786:38
	v_cmp_lt_u16_e64 s11, 7, v44.h
	.loc	1 787 56 is_stmt 1              ; attention.py:787:56
	v_or_b32_e32 v110, -16, v107
	v_or_b32_e32 v115, -16, v111
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v16, v16, v43 :: v_dual_mul_f32 v41, v41, v45
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b32_e64 v44, v122, v116, s11
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_lt_u32_e64 s11, 7, v105
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v109, v109
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v2, v2, v43
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s12, v41, v41
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_cvt_f32_i32_e32 v44, v44
	.loc	1 787 30 is_stmt 1              ; attention.py:787:30
	v_cndmask_b32_e64 v105, v105, v106, s11
	.loc	1 787 39 is_stmt 0              ; attention.py:787:39
	v_cmp_lt_u32_e64 s11, 7, v107
	.loc	1 815 23 is_stmt 1              ; attention.py:815:23
	v_mul_f32_e32 v15, v15, v43
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v109, v109, v45
	v_mul_f32_e32 v44, v45, v44
	v_cvt_f32_i32_e32 v105, v105
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b32_e64 v106, v107, v110, s11
	.loc	1 787 39 is_stmt 0              ; attention.py:787:39
	v_cmp_lt_u32_e64 s11, 7, v108
	.loc	1 815 23 is_stmt 1              ; attention.py:815:23
	v_mul_f32_e32 v4, v4, v43
	.loc	1 814 30                        ; attention.py:814:30
	v_bfe_u32 v110, v46, 16, 1
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_mul_f32_e32 v105, v105, v45
	v_cvt_f32_i32_e32 v106, v106
	.loc	1 787 30 is_stmt 1              ; attention.py:787:30
	v_cndmask_b32_e64 v107, v108, v112, s11
	.loc	1 787 39 is_stmt 0              ; attention.py:787:39
	v_cmp_lt_u32_e64 s11, 7, v111
	.loc	1 815 23 is_stmt 1              ; attention.py:815:23
	v_mul_f32_e32 v1, v1, v43
	.loc	1 814 30                        ; attention.py:814:30
	v_bfe_u32 v112, v44, 16, 1
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_mul_f32_e32 v106, v106, v45
	v_cvt_f32_i32_e32 v107, v107
	.loc	1 787 30 is_stmt 1              ; attention.py:787:30
	v_cndmask_b32_e64 v108, v111, v115, s11
	.loc	1 814 30                        ; attention.py:814:30
	v_bfe_u32 v111, v109, 16, 1
	v_cmp_o_f32_e64 s11, v46, v46
	v_add3_u32 v46, v46, v110, 0x7fff
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_mul_f32_e32 v107, v45, v107
	v_cvt_f32_i32_e32 v108, v108
.Ltmp15:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v124, v124, v127
.Ltmp16:
	.loc	1 814 30                        ; attention.py:814:30
	v_bfe_u32 v110, v105, 16, 1
	v_cmp_o_f32_e64 s13, v109, v109
	v_cmp_o_f32_e64 s14, v44, v44
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_mul_f32_e32 v45, v45, v108
	.loc	1 814 30                        ; attention.py:814:30
	v_bfe_u32 v108, v41, 16, 1
	v_add3_u32 v109, v109, v111, 0x7fff
	v_bfe_u32 v111, v107, 16, 1
	v_add3_u32 v44, v44, v112, 0x7fff
	v_bfe_u32 v112, v45, 16, 1
	v_add3_u32 v41, v41, v108, 0x7fff
	v_bfe_u32 v108, v106, 16, 1
	v_cmp_o_f32_e64 s15, v105, v105
	v_cndmask_b16 v41.l, 0x7fff, v46.h, s11
	v_add3_u32 v46, v105, v110, 0x7fff
	v_cmp_o_f32_e64 s16, v106, v106
	v_add3_u32 v105, v106, v108, 0x7fff
	v_cmp_o_f32_e64 s17, v107, v107
	v_cmp_o_f32_e64 s18, v45, v45
	v_add3_u32 v106, v107, v111, 0x7fff
	v_add3_u32 v107, v45, v112, 0x7fff
	v_cndmask_b16 v45.l, 0x7fff, v46.h, s15
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s12
	v_cndmask_b16 v45.h, 0x7fff, v105.h, s16
	v_cndmask_b16 v44.l, 0x7fff, v109.h, s13
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s14
	v_cndmask_b16 v46.l, 0x7fff, v106.h, s17
	v_cndmask_b16 v46.h, 0x7fff, v107.h, s18
	ds_store_b16 v90, v41
	ds_store_b16 v90, v45 offset:128
	ds_store_b16_d16_hi v90, v41 offset:512
	ds_store_b16_d16_hi v90, v45 offset:640
	ds_store_b16 v90, v44 offset:1024
	ds_store_b16 v90, v46 offset:1152
	ds_store_b16_d16_hi v90, v44 offset:1536
	ds_store_b16_d16_hi v90, v46 offset:1664
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v105, v84 offset:512
	ds_load_u16_d16 v112, v84 offset:288
	ds_load_u16_d16 v121, v84 offset:608
	ds_load_u16_d16 v120, v84 offset:352
.Ltmp17:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v127, v128, v129
.Ltmp18:
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_u16_d16 v129, v84 offset:576
	ds_load_u16_d16 v130, v84 offset:832
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v46.h, 0x7fff, v103.h, vcc_lo
	v_add3_u32 v44, v47, v126, 0x7fff
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v41, v124, v127
.Ltmp20:
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v45, v48, v125, 0x7fff
	s_waitcnt lgkmcnt(3)
	v_cndmask_b16 v46.l, 0x7fff, v121.h, s1
	v_cndmask_b16 v47.h, 0x7fff, v113.h, s3
	v_cndmask_b16 v47.l, 0x7fff, v104.h, s6
.Ltmp21:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_permlanex16_b32 v103, v41, s52, 0xfedcba98 op_sel:[1,0]
.Ltmp22:
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v48.l, 0x7fff, v114.h, s7
	v_cndmask_b16 v48.h, 0x7fff, v117.h, s10
	v_cndmask_b16 v45.h, 0x7fff, v45.h, s8
	v_cndmask_b16 v45.l, 0x7fff, v44.h, s9
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v41, v41, v103
.Ltmp24:
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_u16_d16 v131, v84 offset:1088
	ds_load_u16_d16 v132, v84 offset:1344
	ds_load_u16_d16 v133, v84 offset:1600
	ds_load_u16_d16 v134, v84 offset:1856
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v120, v84 offset:480
	ds_load_u16_d16 v106, v84 offset:768
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v129, v84 offset:704
	ds_load_u16_d16 v113, v84 offset:544
	ds_load_u16_d16 v104, v84 offset:256
	ds_load_u16_d16 v128, v84 offset:320
	ds_load_u16_d16 v103, v84
	ds_load_u16_d16 v111, v84 offset:32
	ds_load_u16_d16 v127, v84 offset:64
	ds_load_u16_d16 v119, v84 offset:96
	ds_load_u16_d16 v107, v84 offset:1024
	ds_load_u16_d16 v114, v84 offset:800
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v130, v84 offset:960
	ds_load_u16_d16 v122, v84 offset:864
	ds_load_u16_d16 v108, v84 offset:1280
	ds_load_u16_d16 v115, v84 offset:1056
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v131, v84 offset:1216
	ds_load_u16_d16 v123, v84 offset:1120
	ds_load_u16_d16 v109, v84 offset:1536
	ds_load_u16_d16 v116, v84 offset:1312
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v132, v84 offset:1472
	ds_load_u16_d16 v124, v84 offset:1376
	ds_load_u16_d16 v110, v84 offset:1792
	ds_load_u16_d16 v117, v84 offset:1568
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v133, v84 offset:1728
	ds_load_u16_d16 v125, v84 offset:1632
	ds_load_u16_d16 v118, v84 offset:1824
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v134, v84 offset:1984
	ds_load_u16_d16 v126, v84 offset:1888
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v103, v84 offset:128
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v111, v84 offset:160
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v127, v84 offset:192
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v119, v84 offset:224
	ds_load_u16_d16_hi v105, v84 offset:640
	ds_load_u16_d16_hi v104, v84 offset:384
	ds_load_u16_d16_hi v112, v84 offset:416
	ds_load_u16_d16_hi v128, v84 offset:448
	ds_load_u16_d16_hi v106, v84 offset:896
	ds_load_u16_d16_hi v113, v84 offset:672
	ds_load_u16_d16_hi v121, v84 offset:736
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v107, v84 offset:1152
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v114, v84 offset:928
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v122, v84 offset:992
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v108, v84 offset:1408
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v115, v84 offset:1184
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v123, v84 offset:1248
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v109, v84 offset:1664
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v116, v84 offset:1440
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v124, v84 offset:1504
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v110, v84 offset:1920
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v117, v84 offset:1696
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v125, v84 offset:1760
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v118, v84 offset:1952
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v44, v46, s52, 0xfedcba98 op_sel:[1,0]
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v126, v84 offset:2016
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v138, v47, s52, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v140, v48, s52, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v142, v45, s52, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v135, v44, v46, v97
	v_perm_b32 v136, v44, v46, v98
	v_perm_b32 v137, v138, v47, v97
	v_perm_b32 v138, v138, v47, v98
	v_perm_b32 v139, v140, v48, v97
	v_perm_b32 v140, v140, v48, v98
	v_perm_b32 v141, v142, v45, v97
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v41, v102, v43
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v3, v3, v43
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v142, v142, v45, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v102, v41
	.loc	1 816 23 is_stmt 0              ; attention.py:816:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[103:110], v[135:142], v[25:32]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[111:118], v[135:142], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[127:134], v[135:142], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[119:126], v[135:142], v[1:8]
	v_mov_b32_e32 v103, v42
	.loc	1 707 13 is_stmt 1              ; attention.py:707:13
	s_cbranch_scc0 .LBB0_11
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v41, s35, v71
	v_or_b32_e32 v42, s35, v72
	.loc	1 711 32                        ; attention.py:711:32
	s_add_i32 s26, s35, s49
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v43, s35, v73
	.loc	1 711 32                        ; attention.py:711:32
	s_mul_i32 s1, s26, s19
	.loc	1 714 73                        ; attention.py:714:73
	v_cmp_gt_i32_e32 vcc_lo, s31, v41
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v44, s35, v74
	.loc	1 711 32                        ; attention.py:711:32
	v_add_nc_u32_e32 v45, s1, v49
	v_add_nc_u32_e32 v46, s1, v75
	v_add_nc_u32_e32 v47, s1, v76
	v_add_nc_u32_e32 v41, s1, v50
	.loc	1 714 73                        ; attention.py:714:73
	v_cmp_gt_i32_e64 s1, s31, v42
	v_cmp_gt_i32_e64 s3, s31, v43
	.loc	1 714 30 is_stmt 0              ; attention.py:714:30
	s_and_b32 vcc_lo, s5, vcc_lo
	.loc	1 714 73                        ; attention.py:714:73
	v_cmp_gt_i32_e64 s6, s31, v44
	.loc	1 712 32 is_stmt 1              ; attention.py:712:32
	v_cndmask_b32_e32 v42, 0x80000000, v45, vcc_lo
	.loc	1 714 30                        ; attention.py:714:30
	s_and_b32 vcc_lo, s5, s1
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v105, s35, v68
	.loc	1 712 32                        ; attention.py:712:32
	v_cndmask_b32_e32 v43, 0x80000000, v46, vcc_lo
	.loc	1 714 30                        ; attention.py:714:30
	s_and_b32 vcc_lo, s5, s3
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v106, s35, v69
	.loc	1 712 32                        ; attention.py:712:32
	v_cndmask_b32_e32 v44, 0x80000000, v47, vcc_lo
	.loc	1 714 30                        ; attention.py:714:30
	s_and_b32 vcc_lo, s5, s6
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v107, s35, v67
	.loc	1 712 32                        ; attention.py:712:32
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	s_clause 0x3
	buffer_load_u8 v42, v42, s[20:23], 0 offen
	buffer_load_u8 v43, v43, s[20:23], 0 offen
	buffer_load_u8 v44, v44, s[20:23], 0 offen
	buffer_load_u8 v41, v41, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v108, s35, v65
	v_or_b32_e32 v109, s35, v66
	v_or_b32_e32 v110, s35, v64
	v_or_b32_e32 v111, s35, v63
	v_or_b32_e32 v119, s35, v62
	.loc	1 714 73                        ; attention.py:714:73
	v_cmp_gt_i32_e64 s3, s31, v108
	v_cmp_gt_i32_e64 s7, s31, v107
	v_cmp_gt_i32_e64 s9, s31, v106
	v_cmp_gt_i32_e64 s11, s31, v105
	v_cmp_gt_i32_e64 s1, s31, v119
	v_cmp_gt_i32_e64 s6, s31, v111
	v_cmp_gt_i32_e64 s8, s31, v110
	v_cmp_gt_i32_e64 s10, s31, v109
	.loc	1 743 25                        ; attention.py:743:25
	s_and_b32 s56, s2, s11
	s_and_b32 s54, s2, s9
	s_and_b32 s58, s2, s7
	s_and_b32 s53, s2, s3
	s_and_b32 s57, s2, s10
	s_and_b32 s55, s2, s8
	s_and_b32 s60, s2, s6
	.loc	1 745 17                        ; attention.py:745:17
	s_and_b32 vcc_lo, exec_lo, s4
	.loc	1 743 25                        ; attention.py:743:25
	s_and_b32 s59, s2, s1
	.loc	1 712 32                        ; attention.py:712:32
	s_waitcnt vmcnt(3)
	ds_store_b8 v77, v42
	s_waitcnt vmcnt(2)
	ds_store_b8 v78, v43
	s_waitcnt vmcnt(1)
	ds_store_b8 v79, v44
	s_waitcnt vmcnt(0)
	ds_store_b8 v80, v41
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[112:113], v93
	ds_load_b64 v[114:115], v94
	ds_load_b64 v[116:117], v95
	ds_load_b64 v[120:121], v96
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[112:113], v[54:55], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[114:115], v[56:57], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[116:117], v[58:59], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[120:121], v[60:61], v[41:48] neg_lo:[1,1,0]
	.loc	1 745 17                        ; attention.py:745:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 746 30                        ; attention.py:746:30
	v_cmp_le_i32_e32 vcc_lo, v105, v82
	v_cmp_le_i32_e64 s12, v106, v82
	v_cmp_le_i32_e64 s13, v107, v82
	v_cmp_le_i32_e64 s14, v108, v82
	v_cmp_le_i32_e64 s15, v109, v82
	v_cmp_le_i32_e64 s16, v110, v82
	.loc	1 746 21 is_stmt 0              ; attention.py:746:21
	s_and_b32 s27, vcc_lo, s56
	s_and_b32 s12, s12, s54
	.loc	1 746 30                        ; attention.py:746:30
	v_cmp_le_i32_e64 s17, v111, v82
	v_cmp_le_i32_e64 s18, v119, v82
	.loc	1 746 21                        ; attention.py:746:21
	s_and_b32 s13, s13, s58
	s_and_b32 s14, s14, s53
	s_and_not1_b32 s56, s56, exec_lo
	s_and_b32 s27, s27, exec_lo
	s_and_not1_b32 s54, s54, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_b32 s15, s15, s57
	s_and_b32 s16, s16, s55
	s_or_b32 s56, s56, s27
	s_or_b32 s54, s54, s12
	s_and_not1_b32 s12, s58, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_not1_b32 s27, s53, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_b32 s17, s17, s60
	s_and_b32 s18, s18, s59
	s_or_b32 s58, s12, s13
	s_or_b32 s53, s27, s14
	s_and_not1_b32 s12, s57, exec_lo
	s_and_b32 s13, s15, exec_lo
	s_and_not1_b32 s14, s55, exec_lo
	s_and_b32 s15, s16, exec_lo
	s_or_b32 s57, s12, s13
	s_or_b32 s55, s14, s15
	s_and_not1_b32 s12, s60, exec_lo
	s_and_b32 s13, s17, exec_lo
	s_and_not1_b32 s14, s59, exec_lo
	s_and_b32 s15, s18, exec_lo
	s_or_b32 s60, s12, s13
	s_or_b32 s59, s14, s15
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           ; attention.py:0
	v_add_lshl_u32 v104, s26, v68, 1
	.loc	1 747 17 is_stmt 1              ; attention.py:747:17
	s_and_not1_b32 vcc_lo, exec_lo, s34
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_add_nc_u32_e32 v112, 4, v104
	v_add_nc_u32_e32 v113, 8, v104
	v_add_nc_u32_e32 v114, 12, v104
	v_add_nc_u32_e32 v115, 16, v104
	v_add_nc_u32_e32 v116, 20, v104
	v_add_nc_u32_e32 v117, 24, v104
	v_add_nc_u32_e32 v118, 28, v104
	v_cndmask_b32_e64 v104, 0x80000000, v104, s11
	v_cndmask_b32_e64 v112, 0x80000000, v112, s9
	v_cndmask_b32_e64 v113, 0x80000000, v113, s7
	v_cndmask_b32_e64 v114, 0x80000000, v114, s3
	v_cndmask_b32_e64 v120, 0x80000000, v115, s10
	v_cndmask_b32_e64 v121, 0x80000000, v116, s8
	v_cndmask_b32_e64 v122, 0x80000000, v117, s6
	v_cndmask_b32_e64 v123, 0x80000000, v118, s1
	s_clause 0x7
	buffer_load_u16 v115, v104, s[44:47], 0 offen
	buffer_load_u16 v116, v112, s[44:47], 0 offen
	buffer_load_u16 v117, v113, s[44:47], 0 offen
	buffer_load_u16 v118, v114, s[44:47], 0 offen
	buffer_load_u16 v104, v120, s[44:47], 0 offen
	buffer_load_u16 v112, v121, s[44:47], 0 offen
	buffer_load_u16 v113, v122, s[44:47], 0 offen
	buffer_load_u16 v114, v123, s[44:47], 0 offen
	.loc	1 747 17                        ; attention.py:747:17
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 748 30 is_stmt 1              ; attention.py:748:30
	v_cmp_ge_i32_e32 vcc_lo, v105, v88
	v_cmp_ge_i32_e64 s1, v106, v88
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s11, v105, v89
	v_cmp_le_i32_e64 s12, v106, v89
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s3, v107, v88
	v_cmp_ge_i32_e64 s6, v108, v88
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s13, v107, v89
	v_cmp_le_i32_e64 s14, v108, v89
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s7, v109, v88
	v_cmp_ge_i32_e64 s8, v110, v88
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s15, v109, v89
	v_cmp_le_i32_e64 s16, v110, v89
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s11, vcc_lo, s11
	s_and_b32 s1, s1, s12
	.loc	1 748 30 is_stmt 1              ; attention.py:748:30
	v_cmp_ge_i32_e64 s9, v111, v88
	v_cmp_ge_i32_e64 s10, v119, v88
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s17, v111, v89
	v_cmp_le_i32_e64 s18, v119, v89
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s6, s6, s14
	s_and_b32 s3, s3, s13
	s_and_b32 s11, s11, s56
	s_and_b32 s1, s1, s54
	s_and_b32 s3, s3, s58
	s_and_b32 s6, s6, s53
	s_and_b32 s7, s7, s15
	s_and_b32 s8, s8, s16
	s_and_not1_b32 s12, s56, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_not1_b32 s13, s54, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_b32 s10, s10, s18
	s_and_b32 s9, s9, s17
	s_and_b32 s7, s7, s57
	s_and_b32 s8, s8, s55
	s_or_b32 s56, s12, s11
	s_or_b32 s54, s13, s1
	s_and_not1_b32 s1, s58, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s11, s53, exec_lo
	s_and_b32 s6, s6, exec_lo
	s_and_b32 s9, s9, s60
	s_and_b32 s10, s10, s59
	s_or_b32 s58, s1, s3
	s_or_b32 s53, s11, s6
	s_and_not1_b32 s1, s57, exec_lo
	s_and_b32 s3, s7, exec_lo
	s_and_not1_b32 s6, s55, exec_lo
	s_and_b32 s7, s8, exec_lo
	s_or_b32 s57, s1, s3
	s_or_b32 s55, s6, s7
	s_and_not1_b32 s1, s60, exec_lo
	s_and_b32 s3, s9, exec_lo
	s_and_not1_b32 s6, s59, exec_lo
	s_and_b32 s7, s10, exec_lo
	s_or_b32 s60, s1, s3
	s_or_b32 s59, s6, s7
	s_branch .LBB0_6
.LBB0_11:                               ; %Flow119
	.loc	1 0 21                          ; attention.py:0:21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 841 48 is_stmt 1              ; attention.py:841:48
	v_div_scale_f32 v33, null, v41, v41, v25
	v_div_scale_f32 v34, null, v41, v41, v26
	v_div_scale_f32 v35, null, v41, v41, v27
	v_rcp_f32_e32 v36, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v39, vcc_lo, v25, v41, v25
	v_rcp_f32_e32 v38, v35
	v_div_scale_f32 v40, s0, v26, v41, v26
	v_div_scale_f32 v44, null, v41, v41, v28
	v_div_scale_f32 v50, s3, v28, v41, v28
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v42, -v33, v36, 1.0
	v_fma_f32 v43, -v34, v37, 1.0
	.loc	1 843 24                        ; attention.py:843:24
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v56, v70, s33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v45, -v35, v38, 1.0
	.loc	1 848 17                        ; attention.py:848:17
	s_and_b32 s37, s37, 0xffff
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_fmac_f32 v36, v42, v36 :: v_dual_fmac_f32 v37, v43, v37
	v_div_scale_f32 v42, s1, v27, v41, v27
	v_dual_fmac_f32 v38, v45, v38 :: v_dual_mul_f32 v45, v39, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v46, v40, v37
	v_rcp_f32_e32 v43, v44
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v57, v56, v68, 2
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v47, v42, v38
	v_fma_f32 v48, -v33, v45, v39
	v_fma_f32 v49, -v34, v46, v40
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v58, v56, v69, 2
	v_add_lshl_u32 v59, v56, v67, 2
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v52, -v35, v47, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v45, v48, v36 :: v_dual_fmac_f32 v46, v49, v37
	v_div_scale_f32 v48, null, v41, v41, v29
	v_fma_f32 v51, -v44, v43, 1.0
	v_fma_f32 v33, -v33, v45, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v46, v40
	v_rcp_f32_e32 v39, v48
	v_div_scale_f32 v40, null, v41, v41, v30
	v_fmac_f32_e32 v43, v51, v43
	v_div_fmas_f32 v33, v33, v36, v45
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v45, v40
	v_dual_fmac_f32 v47, v52, v38 :: v_dual_mul_f32 v36, v50, v43
	v_div_fmas_f32 v34, v34, v37, v46
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v37, -v48, v39, 1.0
	v_div_fixup_f32 v25, v33, v41, v25
	v_div_scale_f32 v46, null, v41, v41, v32
	v_fma_f32 v33, -v44, v36, v50
	v_div_fixup_f32 v26, v34, v41, v26
	v_fma_f32 v34, -v35, v47, v42
	v_fmac_f32_e32 v39, v37, v39
	v_fma_f32 v35, -v40, v45, 1.0
	v_div_scale_f32 v37, null, v41, v41, v31
	v_fmac_f32_e32 v36, v33, v43
	v_div_scale_f32 v33, s4, v29, v41, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v45, v35, v45
	v_rcp_f32_e32 v35, v37
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v49, v46
	v_div_fmas_f32 v34, v34, v38, v47
	v_fma_f32 v38, -v44, v36, v50
	v_div_scale_f32 v44, s1, v30, v41, v30
	v_mul_f32_e32 v42, v33, v39
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v27, v34, v41, v27
	v_div_fmas_f32 v36, v38, v43, v36
	v_mul_f32_e32 v43, v44, v45
	v_fma_f32 v38, -v48, v42, v33
	v_fma_f32 v47, -v37, v35, 1.0
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v28, v36, v41, v28
	v_fma_f32 v34, -v40, v43, v44
	v_div_scale_f32 v36, s3, v31, v41, v31
	v_fmac_f32_e32 v35, v47, v35
	v_fma_f32 v47, -v46, v49, 1.0
	v_fmac_f32_e32 v42, v38, v39
	v_div_scale_f32 v38, null, v41, v41, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v43, v34, v45 :: v_dual_mul_f32 v34, v36, v35
	v_fmac_f32_e32 v49, v47, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v48, v42, v33
	v_rcp_f32_e32 v48, v38
	v_div_scale_f32 v47, s5, v32, v41, v32
	v_div_scale_f32 v50, null, v41, v41, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v33, v33, v39, v42
	v_fma_f32 v39, -v40, v43, v44
	v_fma_f32 v40, -v37, v34, v36
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v42, v47, v49
	v_fma_f32 v44, -v38, v48, 1.0
	v_div_fixup_f32 v29, v33, v41, v29
	v_fmac_f32_e32 v34, v40, v35
	v_div_fmas_f32 v39, v39, v45, v43
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v48, v44, v48
	v_div_scale_f32 v44, s1, v17, v41, v17
	v_fma_f32 v33, -v37, v34, v36
	v_div_scale_f32 v45, null, v41, v41, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v36, v44, v48
	v_rcp_f32_e32 v40, v50
	v_div_fmas_f32 v33, v33, v35, v34
	v_fma_f32 v43, -v46, v42, v47
	v_div_fixup_f32 v30, v39, v41, v30
	v_fma_f32 v35, -v38, v36, v44
	v_div_scale_f32 v39, null, v41, v41, v19
	v_div_fixup_f32 v31, v33, v41, v31
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v36, v35, v48
	v_rcp_f32_e32 v35, v45
	v_fma_f32 v37, -v50, v40, 1.0
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s0, 0, v41
	s_mov_b32 s39, 0x31027000
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v33, -v38, v36, v44
	v_div_scale_f32 v38, s4, v19, v41, v19
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	v_cndmask_b32_e64 v26, 0, v26, s0
	v_cndmask_b32_e64 v27, 0, v27, s0
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v44, -v45, v35, 1.0
	v_fmac_f32_e32 v42, v43, v49
	v_div_scale_f32 v43, s3, v18, v41, v18
	s_mov_b32 s38, 0x7ffffffe
	v_fmac_f32_e32 v35, v44, v35
	v_fma_f32 v34, -v46, v42, v47
	v_div_scale_f32 v47, null, v41, v41, v22
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s6, s33, v66
	v_cmp_gt_i32_e64 s7, s33, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v34, v34, v49, v42
	v_rcp_f32_e32 v49, v47
	v_fmac_f32_e32 v40, v37, v40
	v_rcp_f32_e32 v37, v39
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v32, v34, v41, v32
	v_div_fmas_f32 v33, v33, v48, v36
	v_mul_f32_e32 v42, v43, v40
	v_div_scale_f32 v44, s1, v20, v41, v20
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v17, v33, v41, v17
	v_fma_f32 v34, -v50, v42, v43
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v46, -v39, v37, 1.0
	v_mul_f32_e32 v48, v44, v35
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s8, s33, v63
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	.loc	1 841 48 is_stmt 0              ; attention.py:841:48
	v_fmac_f32_e32 v42, v34, v40
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v41, v41, v21
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v33, -v50, v42, v43
	v_mul_f32_e32 v34, v38, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v36, v46
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s9, s33, v62
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v30, 0, v30, s0
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 841 48 is_stmt 0              ; attention.py:841:48
	v_fma_f32 v43, -v39, v34, v38
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v32, 0, v32, s0
	v_cndmask_b32_e64 v17, 0, v17, s0
	v_lshrrev_b32_e32 v0, 4, v0
	.loc	1 843 74 is_stmt 1              ; attention.py:843:74
	v_or_b32_e32 v55, 60, v68
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v34, v43, v37
	v_fma_f32 v43, -v47, v49, 1.0
	v_fma_f32 v50, -v46, v36, 1.0
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v0, 62, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v49, v43, v49
	v_div_fmas_f32 v33, v33, v40, v42
	v_fma_f32 v40, -v45, v48, v44
	v_fmac_f32_e32 v36, v50, v36
	v_div_scale_f32 v42, s3, v21, v41, v21
	v_div_fixup_f32 v18, v33, v41, v18
	v_fma_f32 v33, -v39, v34, v38
	v_fmac_f32_e32 v48, v40, v35
	v_div_scale_f32 v40, null, v41, v41, v23
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v38, v42, v36
	v_div_scale_f32 v39, s5, v22, v41, v22
	v_div_fmas_f32 v33, v33, v37, v34
	v_fma_f32 v34, -v45, v48, v44
	v_rcp_f32_e32 v43, v40
	v_div_scale_f32 v45, null, v41, v41, v24
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v37, -v46, v38, v42
	v_mul_f32_e32 v44, v39, v49
	v_div_fmas_f32 v34, v34, v35, v48
	v_rcp_f32_e32 v35, v45
	v_div_fixup_f32 v19, v33, v41, v19
	v_fmac_f32_e32 v38, v37, v36
	v_fma_f32 v37, -v47, v44, v39
	v_fma_f32 v48, -v40, v43, 1.0
	v_div_fixup_f32 v20, v34, v41, v20
	v_div_scale_f32 v34, s1, v23, v41, v23
	v_fma_f32 v33, -v46, v38, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v44, v37, v49 :: v_dual_fmac_f32 v43, v48, v43
	v_fma_f32 v37, -v45, v35, 1.0
	s_mov_b32 vcc_lo, s3
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v33, v33, v36, v38
	v_fma_f32 v36, -v47, v44, v39
	v_mul_f32_e32 v38, v34, v43
	v_fmac_f32_e32 v35, v37, v35
	v_div_scale_f32 v37, null, v41, v41, v9
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v39, s3, v24, v41, v24
	v_div_fmas_f32 v36, v36, v49, v44
	v_rcp_f32_e32 v42, v37
	v_fma_f32 v44, -v40, v38, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v46, v39, v35
	v_div_scale_f32 v47, null, v41, v41, v10
	v_div_fixup_f32 v21, v33, v41, v21
	v_fmac_f32_e32 v38, v44, v43
	v_div_fixup_f32 v22, v36, v41, v22
	v_fma_f32 v33, -v45, v46, v39
	v_rcp_f32_e32 v36, v47
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v37, v42, 1.0
	v_fma_f32 v34, -v40, v38, v34
	v_div_scale_f32 v40, null, v41, v41, v11
	v_fmac_f32_e32 v46, v33, v35
	v_fmac_f32_e32 v42, v44, v42
	v_div_scale_f32 v33, s4, v9, v41, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v44, v40
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v48, -v47, v36, 1.0
	v_div_fmas_f32 v34, v34, v43, v38
	v_fma_f32 v38, -v45, v46, v39
	v_mul_f32_e32 v39, v33, v42
	v_div_scale_f32 v43, s1, v10, v41, v10
	v_fmac_f32_e32 v36, v48, v36
	v_div_scale_f32 v49, null, v41, v41, v12
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v45, -v40, v44, 1.0
	v_fma_f32 v48, -v37, v39, v33
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v50, v43, v36
	v_rcp_f32_e32 v51, v49
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, s5, v11, v41, v11
	v_div_fmas_f32 v35, v38, v35, v46
	v_fmac_f32_e32 v39, v48, v42
	v_fma_f32 v38, -v47, v50, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v46, v45, v44
	v_div_fixup_f32 v23, v34, v41, v23
	v_div_fixup_f32 v24, v35, v41, v24
	v_fma_f32 v33, -v37, v39, v33
	v_div_scale_f32 v37, null, v41, v41, v13
	v_fma_f32 v34, -v40, v46, v45
	v_fmac_f32_e32 v50, v38, v36
	v_fma_f32 v35, -v49, v51, 1.0
	s_mov_b32 vcc_lo, s4
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v46, v34, v44
	v_rcp_f32_e32 v34, v37
	v_fma_f32 v38, -v47, v50, v43
	v_fmac_f32_e32 v51, v35, v51
	v_div_scale_f32 v35, s3, v12, v41, v12
	v_div_fmas_f32 v33, v33, v42, v39
	s_mov_b32 vcc_lo, s1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v36, v38, v36, v50
	v_fma_f32 v38, -v40, v46, v45
	v_mul_f32_e32 v39, v35, v51
	v_div_scale_f32 v40, null, v41, v41, v14
	v_fma_f32 v42, -v37, v34, 1.0
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v9, v33, v41, v9
	v_div_fmas_f32 v38, v38, v44, v46
	v_rcp_f32_e32 v43, v40
	v_fma_f32 v44, -v49, v39, v35
	v_fmac_f32_e32 v34, v42, v34
	v_div_scale_f32 v42, s1, v13, v41, v13
	v_div_fixup_f32 v10, v36, v41, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v44, v51
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v33, v42, v34
	v_div_fixup_f32 v11, v38, v41, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v40, v43, 1.0
	v_fma_f32 v35, -v49, v39, v35
	v_div_scale_f32 v38, null, v41, v41, v15
	v_fma_f32 v44, -v37, v33, v42
	v_fmac_f32_e32 v43, v36, v43
	v_div_scale_f32 v36, s4, v14, v41, v14
	v_div_fmas_f32 v35, v35, v51, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v44, v34
	v_rcp_f32_e32 v45, v38
	v_mul_f32_e32 v39, v36, v43
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v12, v35, v41, v12
	v_fma_f32 v35, -v37, v33, v42
	v_div_scale_f32 v44, null, v41, v41, v16
	v_fma_f32 v37, -v40, v39, v36
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v33, v35, v34, v33
	v_div_scale_f32 v34, null, v41, v41, v1
	v_fma_f32 v42, -v38, v45, 1.0
	v_rcp_f32_e32 v46, v44
	v_fmac_f32_e32 v39, v37, v43
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v35, s1, v15, v41, v15
	v_fmac_f32_e32 v45, v42, v45
	v_div_scale_f32 v42, null, v41, v41, v2
	v_div_fixup_f32 v13, v33, v41, v13
	v_fma_f32 v36, -v40, v39, v36
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v44, v46, 1.0
	v_rcp_f32_e32 v48, v42
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v47, -v34, v37, 1.0
	v_mul_f32_e32 v40, v35, v45
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v46, v33, v46
	v_div_scale_f32 v33, s3, v16, v41, v16
	v_fmac_f32_e32 v37, v47, v37
	v_div_scale_f32 v47, null, v41, v41, v3
	v_div_fmas_f32 v36, v36, v43, v39
	v_fma_f32 v39, -v38, v40, v35
	v_mul_f32_e32 v43, v33, v46
	v_div_scale_f32 v49, s4, v1, v41, v1
	v_fma_f32 v50, -v42, v48, 1.0
	v_rcp_f32_e32 v51, v47
	v_fmac_f32_e32 v40, v39, v45
	v_fma_f32 v39, -v44, v43, v33
	v_mul_f32_e32 v52, v49, v37
	v_fmac_f32_e32 v48, v50, v48
	v_div_scale_f32 v50, s5, v2, v41, v2
	v_div_fixup_f32 v14, v36, v41, v14
	v_fma_f32 v35, -v38, v40, v35
	v_fmac_f32_e32 v43, v39, v46
	v_fma_f32 v36, -v34, v52, v49
	v_mul_f32_e32 v38, v50, v48
	v_fma_f32 v39, -v47, v51, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v33, -v44, v43, v33
	v_fmac_f32_e32 v52, v36, v37
	v_fma_f32 v36, -v42, v38, v50
	v_fmac_f32_e32 v51, v39, v51
	v_div_scale_f32 v39, s1, v3, v41, v3
	v_div_fmas_f32 v35, v35, v45, v40
	v_div_scale_f32 v40, null, v41, v41, v4
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v34, -v34, v52, v49
	v_fmac_f32_e32 v38, v36, v48
	v_mul_f32_e32 v36, v39, v51
	v_div_fmas_f32 v33, v33, v46, v43
	v_rcp_f32_e32 v43, v40
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v35, v41, v15
	v_div_fmas_f32 v34, v34, v37, v52
	v_fma_f32 v37, -v42, v38, v50
	v_fma_f32 v42, -v47, v36, v39
	v_div_fixup_f32 v16, v33, v41, v16
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v1, v34, v41, v1
	v_div_scale_f32 v34, null, v41, v41, v5
	v_fmac_f32_e32 v36, v42, v51
	v_fma_f32 v35, -v40, v43, 1.0
	v_div_fmas_f32 v37, v37, v48, v38
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v45, null, v41, v41, v8
	v_fma_f32 v33, -v47, v36, v39
	v_fmac_f32_e32 v43, v35, v43
	v_div_scale_f32 v35, null, v41, v41, v6
	v_div_fixup_f32 v2, v37, v41, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v51, v36
	v_rcp_f32_e32 v36, v34
	v_rcp_f32_e32 v39, v35
	v_div_scale_f32 v37, null, v41, v41, v7
	v_div_scale_f32 v38, vcc_lo, v4, v41, v4
	v_div_fixup_f32 v3, v33, v41, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v42, v37
	v_rcp_f32_e32 v47, v45
	v_mul_f32_e32 v44, v38, v43
	v_fma_f32 v33, -v34, v36, 1.0
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v46, -v35, v39, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v48, -v40, v44, v38
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s1, v5, v41, v5
	v_fmac_f32_e32 v39, v46, v39
	v_div_scale_f32 v46, s3, v6, v41, v6
	v_fma_f32 v49, -v37, v42, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v50, v33, v36
	v_fmac_f32_e32 v44, v48, v43
	v_mul_f32_e32 v52, v46, v39
	v_fma_f32 v51, -v45, v47, 1.0
	v_fmac_f32_e32 v42, v49, v42
	v_div_scale_f32 v49, s4, v7, v41, v7
	v_fma_f32 v48, -v34, v50, v33
	v_fma_f32 v38, -v40, v44, v38
	v_fma_f32 v40, -v35, v52, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v53, v49, v42
	v_fmac_f32_e32 v47, v51, v47
	v_div_scale_f32 v51, s5, v8, v41, v8
	v_fmac_f32_e32 v50, v48, v36
	v_fmac_f32_e32 v52, v40, v39
	v_fma_f32 v48, -v37, v53, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v54, v51, v47
	v_div_fmas_f32 v38, v38, v43, v44
	v_fma_f32 v33, -v34, v50, v33
	v_fma_f32 v35, -v35, v52, v46
	s_mov_b32 vcc_lo, s1
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s33, v68
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v53, v48, v42
	v_fma_f32 v34, -v45, v54, v51
	v_div_fmas_f32 v33, v33, v36, v50
	s_mov_b32 vcc_lo, s3
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s3, s33, v69
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v35, v35, v39, v52
	s_mov_b32 vcc_lo, s4
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s4, s33, v67
	.loc	1 844 24 is_stmt 0              ; attention.py:844:24
	s_and_b32 s1, s2, s1
	.loc	1 841 48 is_stmt 1              ; attention.py:841:48
	v_fmac_f32_e32 v54, v34, v47
	v_fma_f32 v34, -v37, v53, v49
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v57, 0x80000000, v57, s1
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s1, s2, s3
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v5, v33, v41, v5
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v58, 0x80000000, v58, s1
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s1, s2, s4
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v34, v34, v42, v53
	s_mov_b32 vcc_lo, s5
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s5, s33, v65
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v59, 0x80000000, v59, s1
	buffer_store_b32 v25, v57, s[36:39], 0 offen
	v_add_lshl_u32 v25, v56, v65, 2
	s_clause 0x1
	buffer_store_b32 v26, v58, s[36:39], 0 offen
	buffer_store_b32 v27, v59, s[36:39], 0 offen
	v_add_lshl_u32 v26, v56, v66, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s5
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v27, v56, v64, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s6
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v33, 16, v68
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v57, v56, v63, 2
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v36, -v45, v54, v51
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s7
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v7, v34, v41, v7
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v34, 18, v68
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s8
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v6, v35, v41, v6
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v35, 20, v68
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s10, s33, v33
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v57, 0x80000000, v57, s3
	s_clause 0x1
	buffer_store_b32 v28, v25, s[36:39], 0 offen
	buffer_store_b32 v29, v26, s[36:39], 0 offen
	v_add_lshl_u32 v25, v56, v62, 2
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v36, v36, v47, v54
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s11, s33, v34
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v26, v56, v33, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s9
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s12, s33, v35
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v30, v27, s[36:39], 0 offen
	buffer_store_b32 v31, v57, s[36:39], 0 offen
	v_add_lshl_u32 v27, v56, v34, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s10
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v8, v36, v41, v8
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v36, 22, v68
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v28, v56, v35, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s11
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v37, 24, v68
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s12
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v4, v38, v41, v4
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v38, 26, v68
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s13, s33, v36
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v28, 0x80000000, v28, s3
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v39, 28, v68
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s14, s33, v37
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v32, v25, s[36:39], 0 offen
	buffer_store_b32 v17, v26, s[36:39], 0 offen
	v_add_lshl_u32 v17, v56, v36, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s15, s33, v38
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v18, v27, s[36:39], 0 offen
	buffer_store_b32 v19, v28, s[36:39], 0 offen
	v_add_lshl_u32 v18, v56, v37, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s13
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v40, 30, v68
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s16, s33, v39
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v19, v56, v38, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s14
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v41, 32, v68
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v25, v56, v39, 2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s15
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v42, 34, v68
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s17, s33, v40
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s16
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v43, 36, v68
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s18, s33, v41
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	s_clause 0x1
	buffer_store_b32 v20, v17, s[36:39], 0 offen
	buffer_store_b32 v21, v18, s[36:39], 0 offen
	v_add_lshl_u32 v17, v56, v40, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s19, s33, v42
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v18, v56, v41, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s17
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s20, s33, v43
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v22, v19, s[36:39], 0 offen
	buffer_store_b32 v23, v25, s[36:39], 0 offen
	v_add_lshl_u32 v19, v56, v42, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s18
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v44, 38, v68
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v20, v56, v43, 2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s19
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v45, 40, v68
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s20
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v46, 42, v68
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s21, s33, v44
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v47, 44, v68
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s22, s33, v45
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v24, v17, s[36:39], 0 offen
	buffer_store_b32 v9, v18, s[36:39], 0 offen
	v_add_lshl_u32 v9, v56, v44, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s23, s33, v46
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v10, v19, s[36:39], 0 offen
	buffer_store_b32 v11, v20, s[36:39], 0 offen
	v_add_lshl_u32 v10, v56, v45, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s21
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v48, 46, v68
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s24, s33, v47
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v11, v56, v46, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s22
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v49, 48, v68
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v17, v56, v47, 2
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s23
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v50, 50, v68
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s25, s33, v48
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s24
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v51, 52, v68
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s26, s33, v49
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	s_clause 0x1
	buffer_store_b32 v12, v9, s[36:39], 0 offen
	buffer_store_b32 v13, v10, s[36:39], 0 offen
	v_add_lshl_u32 v9, v56, v48, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s27, s33, v50
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v10, v56, v49, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s25
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s28, s33, v51
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v14, v11, s[36:39], 0 offen
	buffer_store_b32 v15, v17, s[36:39], 0 offen
	v_add_lshl_u32 v11, v56, v50, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s26
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v52, 54, v68
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v12, v56, v51, 2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s27
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v53, 56, v68
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v1, 0, v1, s0
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v54, 58, v68
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s28
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s29, s33, v52
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s30, s33, v53
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v16, v9, s[36:39], 0 offen
	buffer_store_b32 v1, v10, s[36:39], 0 offen
	v_add_lshl_u32 v1, v56, v52, 2
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s0, s33, v54
	v_cmp_gt_i32_e32 vcc_lo, s33, v55
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v2, v11, s[36:39], 0 offen
	buffer_store_b32 v3, v12, s[36:39], 0 offen
	v_add_lshl_u32 v2, v56, v53, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s33, v0
	.loc	1 844 24 is_stmt 0              ; attention.py:844:24
	s_and_b32 s3, s2, s29
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	v_add_lshl_u32 v3, v56, v54, 2
	v_add_lshl_u32 v9, v56, v55, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s30
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v0, v56, v0, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s0, s2, s0
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[36:39], 0 offen
	buffer_store_b32 v5, v2, s[36:39], 0 offen
	buffer_store_b32 v6, v3, s[36:39], 0 offen
	buffer_store_b32 v7, v9, s[36:39], 0 offen
	buffer_store_b32 v8, v0, s[36:39], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp25:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 143
		.amdhsa_next_free_sgpr 61
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_vgpr, 143
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.numbered_sgpr, 61
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10852
; TotalNumSgprs: 63
; NumVgprs: 143
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 63
; NumVGPRsForWavesPerEU: 143
; Occupancy: 10
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
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     63
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     143
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
