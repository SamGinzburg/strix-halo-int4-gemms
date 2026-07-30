	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[24:27], s[0:1], 0x80
	s_load_b128 s[40:43], s[0:1], 0x4c
	s_load_b32 s54, s[0:1], 0x60
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v70, 5, v0
	s_load_b64 s[28:29], s[0:1], 0x0
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v19, 0x198, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v71, 4, v70
	v_or_b32_e32 v72, 8, v70
	v_or_b32_e32 v73, 12, v70
	v_and_b32_e32 v33, 0x60, v0
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v18, 0x110, v0
	v_add_nc_u32_e32 v77, 0, v0
	s_mov_b32 s69, 0
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v76, 15, v0
	v_lshrrev_b32_e32 v47, 1, v33
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v81, 0, v18
	v_add_nc_u32_e32 v82, 0, v19
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s24
	s_bitcmp1_b32 s24, 8
	.loc	1 583 26                        ; attention.py:583:26
	s_mul_i32 s22, s3, s42
	s_cselect_b32 s55, -1, 0
	s_cmp_eq_u32 s4, 1
	s_cselect_b32 s21, -1, 0
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s14, s40
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
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 566 23                        ; attention.py:566:23
	v_readfirstlane_b32 s4, v1
	.loc	1 584 86                        ; attention.py:584:86
	v_and_b32_e32 v1, 31, v0
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[42:43], null, s54, v70, v[1:2]
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e64 s20, s54, v1
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
	v_lshl_add_u32 v74, s54, 2, v42
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
	s_cselect_b32 s19, s5, s4
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s15, s41
	s_xor_b32 s17, s40, s41
	s_cvt_f32_u32 s2, s15
	s_sub_i32 s11, 0, s15
	s_ashr_i32 s33, s17, 31
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
	v_cmp_gt_i32_e32 vcc_lo, s42, v1
	v_cmp_gt_i32_e64 s2, s42, v2
	v_cmp_gt_i32_e64 s4, s42, v3
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[43:44], null, s54, 12, v[42:43]
	.loc	1 568 22                        ; attention.py:568:22
	v_readfirstlane_b32 s6, v8
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s42, v4
	.loc	1 584 26                        ; attention.py:584:26
	v_lshl_add_u32 v75, s54, 3, v42
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s7, s42, v6
	v_cmp_gt_i32_e64 s8, s42, v7
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_f32 s9, s6, 0x4f7ffffe
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s6, s42, v5
	v_cmp_gt_i32_e64 s10, s42, v10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 568 22                        ; attention.py:568:22
	s_cvt_u32_f32 s13, s9
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s9, s42, v9
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_i32 s12, s11, s13
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s11, s42, v11
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_hi_u32 s16, s13, s12
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s12, s42, v12
	.loc	1 568 22                        ; attention.py:568:22
	s_add_i32 s16, s13, s16
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s13, s42, v13
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_hi_u32 s16, s14, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s23, s16, s15
	s_sub_i32 s17, s14, s23
	s_add_i32 s23, s16, 1
	s_sub_i32 s34, s17, s15
	s_cmp_ge_u32 s17, s15
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s14, s42, v14
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s16, s23, s16
	s_cselect_b32 s17, s34, s17
	s_add_i32 s23, s16, 1
	s_cmp_ge_u32 s17, s15
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s15, s42, v15
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s23, s23, s16
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s22, s22, s18
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, vcc_lo, s20
	.loc	1 584 26                        ; attention.py:584:26
	s_mul_i32 s34, s22, s54
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s16, s42, v16
	.loc	1 584 26                        ; attention.py:584:26
	v_add_nc_u32_e32 v1, s34, v42
	v_add_nc_u32_e32 v13, s34, v74
	v_add_nc_u32_e32 v14, s34, v75
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s17, s42, v17
	.loc	1 584 26                        ; attention.py:584:26
	v_add_nc_u32_e32 v15, s34, v43
	v_mad_u64_u32 v[2:3], null, s54, 20, v[1:2]
	v_lshl_add_u32 v16, s54, 4, v1
	v_lshl_add_u32 v17, s54, 5, v1
	.loc	1 585 26                        ; attention.py:585:26
	s_and_b32 s29, s29, 0xffff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[3:4], null, s54, 24, v[1:2]
	v_mad_u64_u32 v[4:5], null, s54, 28, v[1:2]
	v_mad_u64_u32 v[5:6], null, s54, 36, v[1:2]
	v_mad_u64_u32 v[6:7], null, s54, 40, v[1:2]
	v_mad_u64_u32 v[7:8], null, s54, 44, v[1:2]
	v_mad_u64_u32 v[8:9], null, s54, 48, v[1:2]
	v_mad_u64_u32 v[9:10], null, s54, 52, v[1:2]
	v_mad_u64_u32 v[10:11], null, s54, 56, v[1:2]
	v_mad_u64_u32 v[11:12], null, s54, 60, v[1:2]
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s2, s20
	.loc	1 568 22                        ; attention.py:568:22
	s_xor_b32 s2, s23, s33
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v12, 0x80000000, v13, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s4, s20
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v13, 0x80000000, v14, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s5, s20
	.loc	1 568 22                        ; attention.py:568:22
	s_sub_i32 s5, s2, s33
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v14, 0x80000000, v15, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s6, s20
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v15, 0x80000000, v16, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s7, s20
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s8, s20
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s9, s20
	.loc	1 585 26                        ; attention.py:585:26
	s_clause 0x5
	buffer_load_u8 v16, v1, s[28:31], 0 offen
	buffer_load_u8 v12, v12, s[28:31], 0 offen
	buffer_load_u8 v13, v13, s[28:31], 0 offen
	buffer_load_u8 v15, v15, s[28:31], 0 offen
	buffer_load_u8 v2, v2, s[28:31], 0 offen
	buffer_load_u8 v3, v3, s[28:31], 0 offen
	v_cndmask_b32_e32 v1, 0x80000000, v4, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s10, s20
	.loc	1 606 16                        ; attention.py:606:16
	s_add_i32 s9, s43, 15
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v4, 0x80000000, v17, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s11, s20
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s12, s20
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s14, s20
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s13, s20
	.loc	1 585 26                        ; attention.py:585:26
	s_clause 0x1
	buffer_load_u8 v4, v4, s[28:31], 0 offen
	buffer_load_u8 v8, v8, s[28:31], 0 offen
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s15, s20
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s16, s20
	.loc	1 585 26                        ; attention.py:585:26
	s_clause 0x1
	buffer_load_u8 v5, v5, s[28:31], 0 offen
	buffer_load_u8 v9, v9, s[28:31], 0 offen
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s17, s20
	.loc	1 569 19                        ; attention.py:569:19
	s_abs_i32 s16, s5
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	s_clause 0x5
	buffer_load_u8 v6, v6, s[28:31], 0 offen
	buffer_load_u8 v10, v10, s[28:31], 0 offen
	buffer_load_u8 v14, v14, s[28:31], 0 offen
	buffer_load_u8 v17, v1, s[28:31], 0 offen
	buffer_load_u8 v7, v7, s[28:31], 0 offen
	buffer_load_u8 v11, v11, s[28:31], 0 offen
	.loc	1 569 19                        ; attention.py:569:19
	s_cvt_f32_u32 s2, s16
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v1, 0x88, v0
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 569 19                        ; attention.py:569:19
	v_rcp_iflag_f32_e32 v20, s2
	.loc	1 606 15                        ; attention.py:606:15
	s_ashr_i32 s2, s9, 31
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v80, 0, v1
	.loc	1 606 15                        ; attention.py:606:15
	s_lshr_b32 s2, s2, 28
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v1, v47, v76
	.loc	1 606 15                        ; attention.py:606:15
	s_add_i32 s9, s9, s2
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(15)
	ds_store_b8 v77, v16
	s_waitcnt vmcnt(12)
	ds_store_b8 v77, v15 offset:512
	s_waitcnt vmcnt(9)
	ds_store_b8 v77, v4 offset:1024
	s_waitcnt vmcnt(8)
	ds_store_b8 v77, v8 offset:1536
	ds_store_b8 v80, v12
	ds_store_b8 v80, v2 offset:512
	s_waitcnt vmcnt(7)
	ds_store_b8 v80, v5 offset:1024
	s_waitcnt vmcnt(6)
	ds_store_b8 v80, v9 offset:1536
	ds_store_b8 v81, v13
	ds_store_b8 v81, v3 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v81, v6 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v81, v10 offset:1536
	s_waitcnt vmcnt(3)
	ds_store_b8 v82, v14
	s_waitcnt vmcnt(2)
	ds_store_b8 v82, v17 offset:512
	s_waitcnt vmcnt(1)
	ds_store_b8 v82, v7 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v82, v11 offset:1536
	.loc	1 569 19                        ; attention.py:569:19
	v_readfirstlane_b32 s6, v20
	.loc	1 606 14                        ; attention.py:606:14
	s_and_b32 s70, s9, -16
	.loc	1 612 9                         ; attention.py:612:9
	s_bfe_u32 s2, s24, 0x10008
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 612 9                         ; attention.py:612:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s18, s26
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s7, s18, s25
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s2, s27
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s7, s7, s27
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s2, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s2, s43, s2
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s2, s2, 15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 619 34 is_stmt 0              ; attention.py:619:34
	s_ashr_i32 s4, s2, 31
	s_lshr_b32 s4, s4, 28
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s2, s2, s4
	.loc	1 613 25 is_stmt 1              ; attention.py:613:25
	s_max_i32 s4, s7, 0
	.loc	1 619 33                        ; attention.py:619:33
	s_and_b32 s2, s2, -16
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s69, s4, 0x7ffffff0
	.loc	1 619 18                        ; attention.py:619:18
	s_min_i32 s70, s70, s2
.LBB0_2:
	.loc	1 620 9                         ; attention.py:620:9
	v_cndmask_b32_e64 v2, 0, 1, s21
	s_and_not1_b32 vcc_lo, exec_lo, s21
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s4, 1, v2
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_or_b32_e32 v2, s18, v1
	.loc	1 620 9                         ; attention.py:620:9
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention.py:0:9
	s_add_i32 s2, s18, s27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 64
	s_min_i32 s2, s43, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 15
	.loc	1 622 34 is_stmt 1              ; attention.py:622:34
	s_ashr_i32 s7, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s7, s7, 28
	s_add_i32 s2, s2, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 622 33 is_stmt 0              ; attention.py:622:33
	s_and_b32 s2, s2, -16
	.loc	1 622 18                        ; attention.py:622:18
	s_min_i32 s70, s70, s2
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_clause 0x1
	s_load_b64 s[52:53], s[0:1], 0x38
	s_load_b32 s68, s[0:1], 0x64
	v_dual_mov_b32 v8, 0 :: v_dual_add_nc_u32 v69, s22, v1
	.loc	1 571 21 is_stmt 1              ; attention.py:571:21
	v_bfe_u32 v67, v0, 4, 1
	v_cmp_gt_i32_e64 s2, s42, v2
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v78, 0x70, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v6, v8 :: v_dual_and_b32 v79, 64, v0
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v68, 2, v67
	v_or_b32_e32 v66, 4, v67
	v_or_b32_e32 v65, 6, v67
	v_or_b32_e32 v63, 8, v67
	v_or_b32_e32 v64, 10, v67
	v_or_b32_e32 v62, 12, v67
	v_or_b32_e32 v61, 14, v67
	v_mov_b32_e32 v7, v8
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
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_ge_i32 s69, s70
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[44:51], s[0:1], 0x8
	v_dual_mov_b32 v8, 0x5410 :: v_dual_lshlrev_b32 v1, 1, v69
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v4, 16, v0
	s_clause 0x2
	s_load_b32 s71, s[0:1], 0x7c
	s_load_b128 s[56:59], s[0:1], 0x28
	s_load_b128 s[12:15], s[0:1], 0x6c
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v39, 0x7632 :: v_dual_lshlrev_b32 v2, 5, v76
	v_dual_mov_b32 v186, 0xff800000 :: v_dual_lshlrev_b32 v3, 1, v0
	v_lshlrev_b32_e32 v36, 4, v33
	.loc	1 570 31 is_stmt 1              ; attention.py:570:31
	v_lshrrev_b32_e32 v35, 4, v78
	v_lshrrev_b32_e32 v37, 3, v33
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v38, 1, v0
	v_dual_mov_b32 v188, 0xff800000 :: v_dual_and_b32 v5, 14, v0
	v_lshlrev_b32_e32 v6, 2, v78
	v_dual_mov_b32 v190, 0xff800000 :: v_dual_lshlrev_b32 v7, 2, v33
	s_waitcnt lgkmcnt(0)
	s_and_b32 s29, s49, 0xffff
	s_mov_b32 s28, s48
	v_mov_b32_e32 v33, 0
	buffer_load_u16 v34, v1, s[28:31], 0 offen
	v_cmp_eq_u32_e32 vcc_lo, 0, v4
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v44, 63, v0
	.loc	1 771 51                        ; attention.py:771:51
	v_lshrrev_b32_e32 v83, 6, v79
	v_mov_b32_e32 v1, 0
	v_dual_mov_b32 v155, 0xff800000 :: v_dual_lshlrev_b32 v50, 5, v38
	v_and_or_b32 v86, v3, 24, v2
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v41, s18, v35
	v_and_or_b32 v48, v3, 60, v36
	v_dual_cndmask_b32 v56, 0x1054, v8 :: v_dual_lshlrev_b32 v49, 1, v5
	v_lshl_or_b32 v51, v5, 8, v6
	v_lshl_or_b32 v53, v76, 3, v7
	v_dual_mov_b32 v18, v33 :: v_dual_cndmask_b32 v39, 0x3276, v39
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[45:46], null, s68, v83, v[44:45]
	v_lshl_add_u32 v40, v79, 2, 0
	v_lshrrev_b32_e32 v52, 2, v4
	v_mul_u32_u24_e32 v55, 0x48, v5
	v_dual_mov_b32 v32, v33 :: v_dual_lshlrev_b32 v57, 1, v44
	v_or_b32_e32 v36, v86, v36
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v111, 40, v41
	v_xor_b32_e32 v37, v48, v37
	v_or3_b32 v99, v51, v50, v49
	v_xor_b32_e32 v48, v53, v47
	v_lshl_or_b32 v50, v56, 8, v56
	v_lshl_or_b32 v39, v39, 8, v39
	s_xor_b32 s8, s3, s40
	s_mul_f32 s7, s6, 0x4f7ffffe
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[46:47], null, s68, 6, v[45:46]
	s_ashr_i32 s17, s9, 4
	s_ashr_i32 s1, s8, 31
	v_lshrrev_b32_e32 v54, 1, v4
	v_dual_mov_b32 v29, v33 :: v_dual_add_nc_u32 v100, v40, v57
	v_dual_mov_b32 v31, v33 :: v_dual_add_nc_u32 v40, 0, v36
	v_dual_mov_b32 v24, v33 :: v_dual_add_nc_u32 v107, s27, v111
	v_mov_b32_e32 v11, v33
	v_dual_mov_b32 v2, v33 :: v_dual_and_b32 v39, 0x760076, v39
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v112, 48, v41
	v_lshl_or_b32 v49, v38, 2, v55
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s9, s42, v111
	v_xor_b32_e32 v47, 12, v99
	v_or_b32_e32 v111, v48, v52
	v_and_b32_e32 v48, 0x540054, v50
	v_xad_u32 v51, v36, 8, 0
	s_xor_b32 s8, s19, s1
	s_cvt_u32_f32 s7, s7
	v_xad_u32 v53, v36, 16, 0
	v_mul_lo_u32 v35, s15, v35
	v_xad_u32 v36, v36, 24, 0
	s_sub_i32 s6, 0, s16
	s_sub_i32 s19, s8, s1
	v_dual_mov_b32 v23, v33 :: v_dual_add_nc_u32 v108, s27, v112
	v_dual_mov_b32 v3, v33 :: v_dual_add_nc_u32 v120, 0, v47
	v_cmp_gt_i32_e64 s10, s42, v112
	v_xor_b32_e32 v55, 16, v99
	v_xor_b32_e32 v56, 20, v99
	v_or3_b32 v112, v49, v54, v70
	v_lshl_or_b32 v139, v48, 4, v48
	ds_load_b64 v[47:48], v40
	ds_load_b64 v[49:50], v51
	ds_load_b64 v[51:52], v53
	ds_load_b64 v[53:54], v36
	v_lshl_or_b32 v36, v39, 4, v39
	s_mul_i32 s1, s19, s40
	s_mul_i32 s6, s6, s7
	s_sub_i32 s3, s3, s1
	s_mul_hi_u32 s6, s7, s6
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v58, 8, v41
	v_or_b32_e32 v59, 16, v41
	v_or_b32_e32 v60, 24, v41
	v_or_b32_e32 v110, 32, v41
	v_or_b32_e32 v113, 56, v41
	v_dual_mov_b32 v5, v33 :: v_dual_add_nc_u32 v122, 0, v56
	v_dual_mov_b32 v6, v33 :: v_dual_add_nc_u32 v121, 0, v55
	s_abs_i32 s22, s3
	s_add_i32 s7, s7, s6
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[55:56], null, s71, v76, v[35:36]
	s_mul_hi_u32 s23, s22, s7
	v_xor_b32_e32 v57, 24, v99
	v_dual_mov_b32 v27, v33 :: v_dual_add_nc_u32 v98, s27, v41
	v_dual_mov_b32 v19, v33 :: v_dual_add_nc_u32 v104, s27, v59
	v_dual_mov_b32 v20, v33 :: v_dual_add_nc_u32 v103, s27, v58
	v_dual_mov_b32 v21, v33 :: v_dual_add_nc_u32 v106, s27, v110
	v_dual_mov_b32 v22, v33 :: v_dual_add_nc_u32 v105, s27, v60
	v_dual_mov_b32 v10, v33 :: v_dual_add_nc_u32 v109, s27, v113
	.loc	1 569 19                        ; attention.py:569:19
	s_mul_i32 s27, s23, s16
	s_ashr_i32 s5, s5, 31
	s_ashr_i32 s6, s3, 31
	s_sub_i32 s22, s22, s27
	v_dual_mov_b32 v8, v33 :: v_dual_add_nc_u32 v123, 0, v57
	s_xor_b32 s24, s6, s5
	s_add_i32 s27, s23, 1
	s_sub_i32 s28, s22, s16
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[56:57], null, s15, 24, v[55:56]
	.loc	1 569 19                        ; attention.py:569:19
	s_cmp_ge_u32 s22, s16
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s1, s42, v41
	v_xor_b32_e32 v41, 8, v86
	v_cmp_gt_i32_e64 s5, s42, v58
	v_cmp_gt_i32_e64 s8, s42, v110
	v_lshl_or_b32 v110, v38, 6, v37
	v_xor_b32_e32 v58, 28, v99
	.loc	1 754 27                        ; attention.py:754:27
	s_mul_i32 s3, s3, s14
	.loc	1 569 19                        ; attention.py:569:19
	s_cselect_b32 s14, s27, s23
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s6, s42, v59
	v_cmp_gt_i32_e64 s7, s42, v60
	v_cmp_gt_i32_e64 s11, s42, v113
	.loc	1 742 27                        ; attention.py:742:27
	s_mul_f32 s42, s12, 0x3fb8aa3b
	.loc	1 752 25                        ; attention.py:752:25
	s_mul_i32 s12, s15, s18
	v_xor_b32_e32 v59, 0x240, v111
	.loc	1 569 19                        ; attention.py:569:19
	s_cselect_b32 s18, s28, s22
	.loc	1 710 33                        ; attention.py:710:33
	s_mul_i32 s21, s19, s41
	.loc	1 753 27                        ; attention.py:753:27
	s_mul_i32 s13, s19, s13
	v_xor_b32_e32 v60, 16, v112
	.loc	1 569 19                        ; attention.py:569:19
	s_add_i32 s19, s14, 1
	s_cmp_ge_u32 s18, s16
	v_mov_b16_e32 v84.l, 0
	v_dual_mov_b32 v12, v33 :: v_dual_add_nc_u32 v113, 0, v41
	v_dual_mov_b32 v7, v33 :: v_dual_add_nc_u32 v124, 0, v58
	v_xor_b32_e32 v114, 16, v86
	v_xor_b32_e32 v115, 24, v86
	v_xor_b32_e32 v37, 4, v99
	v_xor_b32_e32 v38, 8, v99
	v_xor_b32_e32 v41, 0x810, v110
	v_xor_b32_e32 v143, 32, v112
	v_xor_b32_e32 v144, 48, v112
	v_xor_b32_e32 v145, 64, v112
	v_xor_b32_e32 v146, 0x50, v112
	v_xor_b32_e32 v147, 0x60, v112
	v_xor_b32_e32 v148, 0x70, v112
	s_cselect_b32 s14, s19, s14
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[57:58], null, s15, 40, v[55:56]
	v_add_nc_u32_e32 v141, 0, v59
	v_mad_u64_u32 v[58:59], null, s15, 48, v[55:56]
	v_add_nc_u32_e32 v142, 0, v60
	s_add_i32 s77, s13, s12
	.loc	1 569 19                        ; attention.py:569:19
	s_xor_b32 s12, s14, s24
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[59:60], null, s15, 56, v[55:56]
	s_add_i32 s77, s77, s3
	.loc	1 569 19                        ; attention.py:569:19
	s_sub_i32 s3, s12, s24
	v_lshl_add_u32 v85, v76, 1, 0
	v_dual_mov_b32 v163, 0xff800000 :: v_dual_mov_b32 v192, 0xff800000
	v_dual_mov_b32 v187, 0xff800000 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v189, 0xff800000 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v191, 0xff800000 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v165, 0xff800000 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v156, 0xff800000
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v158, 0xff800000
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v160, 0xff800000
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v162, 0xff800000
	v_dual_mov_b32 v157, 0xff800000 :: v_dual_mov_b32 v26, v33
	v_dual_mov_b32 v159, 0xff800000 :: v_dual_mov_b32 v28, v33
	v_dual_mov_b32 v161, 0xff800000 :: v_dual_mov_b32 v30, v33
	.loc	1 778 24                        ; attention.py:778:24
	v_cmp_gt_i32_e64 s0, s68, v44
	v_dual_mov_b32 v13, v33 :: v_dual_add_nc_u32 v114, 0, v114
	v_dual_mov_b32 v14, v33 :: v_dual_add_nc_u32 v115, 0, v115
	v_dual_mov_b32 v15, v33 :: v_dual_add_nc_u32 v118, 0, v37
	v_dual_mov_b32 v16, v33 :: v_dual_add_nc_u32 v117, s26, v98
	v_dual_mov_b32 v4, v33 :: v_dual_add_nc_u32 v119, 0, v38
	.loc	1 771 51                        ; attention.py:771:51
	v_or_b32_e32 v95, 2, v83
	v_or_b32_e32 v96, 4, v83
	v_or_b32_e32 v97, 6, v83
	.loc	1 707 13                        ; attention.py:707:13
	v_lshl_add_u32 v101, s68, 1, v45
	v_lshl_add_u32 v102, s68, 2, v45
	v_subrev_nc_u32_e32 v116, s25, v98
	v_subrev_nc_u32_e32 v125, s25, v103
	v_subrev_nc_u32_e32 v126, s25, v104
	v_subrev_nc_u32_e32 v127, s25, v105
	v_subrev_nc_u32_e32 v128, s25, v106
	v_subrev_nc_u32_e32 v129, s25, v107
	v_subrev_nc_u32_e32 v130, s25, v108
	v_subrev_nc_u32_e32 v131, s25, v109
	v_add_nc_u32_e32 v134, s26, v105
	v_add_nc_u32_e32 v136, s26, v107
	v_add_nc_u32_e32 v137, s26, v108
	v_add_nc_u32_e32 v138, s26, v109
	v_and_b32_e32 v139, 0x5040504, v139
	v_add_nc_u32_e32 v140, 0, v41
	v_add_nc_u32_e32 v143, 0, v143
	v_add_nc_u32_e32 v144, 0, v144
	v_add_nc_u32_e32 v145, 0, v145
	v_add_nc_u32_e32 v146, 0, v146
	v_add_nc_u32_e32 v147, 0, v147
	v_add_nc_u32_e32 v148, 0, v148
	v_and_b32_e32 v149, 0x7060706, v36
	v_lshl_add_u32 v150, s15, 3, v55
	v_lshl_add_u32 v151, s15, 4, v55
	v_lshl_add_u32 v152, s15, 5, v55
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	.loc	1 772 39                        ; attention.py:772:39
	s_lshl_b32 s76, s17, 3
	.loc	1 710 33                        ; attention.py:710:33
	s_add_i32 s80, s3, s21
	s_mov_b32 s72, 0x76543210
	s_mov_b32 s60, s50
	s_mov_b32 s48, s58
	s_mov_b32 s64, s46
	s_mov_b32 s46, s62
	.loc	1 742 17                        ; attention.py:742:17
	s_mov_b32 s73, s42
	s_mov_b32 s74, s42
	s_mov_b32 s75, s42
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s61, s51, 0xffff
	s_and_b32 s49, s59, 0xffff
	s_and_b32 s65, s47, 0xffff
	s_and_b32 s57, s57, 0xffff
	s_mov_b32 s47, s63
	.loc	1 710 32                        ; attention.py:710:32
	s_mul_i32 s78, s80, s43
	.loc	1 773 30                        ; attention.py:773:30
	s_mul_i32 s79, s80, s76
	.loc	1 794 21                        ; attention.py:794:21
	s_mul_i32 s80, s80, s17
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v84.h, v34.l
	v_add_nc_u32_e32 v132, s26, v103
	v_add_nc_u32_e32 v133, s26, v104
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mov_b32 v154, v84 :: v_dual_add_nc_u32 v135, s26, v106
	v_mov_b32_e32 v60, v84
	v_mov_b32_e32 v153, v84
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 752 25                        ; attention.py:752:25
	s_mul_i32 s3, s69, s71
	.loc	1 761 36                        ; attention.py:761:36
	s_mov_b32 s50, s62
	.loc	1 752 25                        ; attention.py:752:25
	s_add_i32 s3, s77, s3
	.loc	1 761 36                        ; attention.py:761:36
	s_mov_b32 s51, s63
	v_add_lshl_u32 v173, s3, v55, 2
	v_add_lshl_u32 v174, s3, v150, 2
	v_add_lshl_u32 v175, s3, v151, 2
	v_add_lshl_u32 v176, s3, v56, 2
	v_add_lshl_u32 v177, s3, v152, 2
	v_add_lshl_u32 v178, s3, v57, 2
	v_add_lshl_u32 v179, s3, v58, 2
	v_add_lshl_u32 v180, s3, v59, 2
	v_cndmask_b32_e64 v173, 0x80000000, v173, s39
	v_cndmask_b32_e64 v174, 0x80000000, v174, s37
	v_cndmask_b32_e64 v175, 0x80000000, v175, s41
	v_cndmask_b32_e64 v176, 0x80000000, v176, s36
	v_cndmask_b32_e64 v181, 0x80000000, v177, s40
	v_cndmask_b32_e64 v182, 0x80000000, v178, s35
	v_cndmask_b32_e64 v183, 0x80000000, v179, s81
	v_cndmask_b32_e64 v184, 0x80000000, v180, s38
	s_clause 0x7
	buffer_load_b32 v177, v173, s[48:51], 0 offen
	buffer_load_b32 v178, v174, s[48:51], 0 offen
	buffer_load_b32 v179, v175, s[48:51], 0 offen
	buffer_load_b32 v180, v176, s[48:51], 0 offen
	buffer_load_b32 v181, v181, s[48:51], 0 offen
	buffer_load_b32 v183, v183, s[48:51], 0 offen
	buffer_load_b32 v182, v182, s[48:51], 0 offen
	buffer_load_b32 v184, v184, s[48:51], 0 offen
	.loc	1 785 30                        ; attention.py:785:30
	v_mov_b16_e64 v185.l, 0
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v199, v37
	v_cvt_f32_i32_e32 v205, v34
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v37, v188, v188 :: v_dual_add_nc_u32 v34, 0, v110
	.loc	1 727 37                        ; attention.py:727:37
	s_waitcnt vmcnt(15)
	v_mov_b16_e64 v185.h, v169.l
	s_waitcnt vmcnt(12)
	v_mov_b16_e64 v196.h, v172.l
	v_mov_b16_e64 v196.l, v185.l
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v205, v84, v205 :: v_dual_mul_f32 v212, v154, v199
	.loc	1 762 35                        ; attention.py:762:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 771 36                        ; attention.py:771:36
	s_lshr_b32 s3, s69, 1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v205, v205, v185 :: v_dual_mul_f32 v196, v212, v196
	.loc	1 727 37                        ; attention.py:727:37
	s_waitcnt vmcnt(11)
	v_mov_b16_e64 v185.h, v164.l
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v201, v36
	v_cvt_f32_i32_e32 v203, v35
	v_cvt_f32_i32_e32 v200, v41
	v_cvt_f32_i32_e32 v202, v40
	v_cvt_f32_i32_e32 v204, v39
	v_cvt_f32_i32_e32 v206, v38
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v35, v186, v186 :: v_dual_add_nc_u32 v174, 0, v99
	.loc	1 771 36                        ; attention.py:771:36
	v_or_b32_e32 v186, s3, v83
	v_or_b32_e32 v207, s3, v95
	v_or_b32_e32 v208, s3, v96
	v_or_b32_e32 v209, s3, v97
	.loc	1 774 30                        ; attention.py:774:30
	s_add_i32 s3, s3, s79
	.loc	1 798 53                        ; attention.py:798:53
	s_lshr_b32 s21, s69, 4
	.loc	1 774 30                        ; attention.py:774:30
	s_mul_i32 s3, s3, s68
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e64 v193.h, v170.l
	v_mov_b16_e64 v194.h, v171.l
	s_waitcnt vmcnt(10)
	v_mov_b16_e64 v195.h, v166.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e64 v197.h, v167.l
	v_mov_b16_e64 v193.l, v185.l
	v_mov_b16_e64 v194.l, v185.l
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v210, v60, v203 :: v_dual_mul_f32 v211, v153, v201
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e64 v195.l, v185.l
	v_mov_b16_e64 v197.l, v185.l
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v206, v84, v206 :: v_dual_add_nc_u32 v215, s3, v45
	v_dual_mul_f32 v204, v60, v204 :: v_dual_mul_f32 v213, v153, v202
	v_dual_mul_f32 v214, v154, v200 :: v_dual_add_nc_u32 v217, s3, v102
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v195, v204, v195 :: v_dual_add_nc_u32 v216, s3, v101
	v_dual_mul_f32 v193, v210, v193 :: v_dual_add_nc_u32 v218, s3, v46
	.loc	1 777 27                        ; attention.py:777:27
	v_cmp_gt_i32_e64 s3, s76, v186
	.loc	1 782 31                        ; attention.py:782:31
	v_lshl_or_b32 v207, v207, 1, 1
	v_lshl_or_b32 v208, v208, 1, 1
	v_lshl_or_b32 v209, v209, 1, 1
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v38, v189, v189 :: v_dual_add_nc_u32 v175, 0, v111
	v_dual_max_f32 v39, v190, v190 :: v_dual_add_nc_u32 v176, 0, v112
	.loc	1 798 25                        ; attention.py:798:25
	s_add_i32 s21, s21, s80
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v36, v187, v187 :: v_dual_max_f32 v41, v192, v192
	.loc	1 798 25                        ; attention.py:798:25
	s_mul_i32 s21, s21, s68
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v40, v191, v191 :: v_dual_max_f32 v165, v165, v165
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e64 v198.l, v185.l
	.loc	1 785 30                        ; attention.py:785:30
	v_mov_b16_e64 v201.h, v185.l
	v_mov_b16_e64 v200.h, v185.l
	v_mov_b16_e64 v199.h, v185.l
	v_mov_b16_e64 v164.h, v185.l
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e64 v187.h, v185.l
	v_mov_b16_e64 v188.h, v185.l
	v_mov_b16_e64 v189.h, v185.l
	v_mov_b16_e64 v190.h, v185.l
	v_mov_b16_e64 v191.h, v185.l
	v_mov_b16_e64 v192.h, v185.l
	v_mov_b16_e64 v203.h, v185.l
	v_mov_b16_e64 v202.h, v185.l
	.loc	1 797 41                        ; attention.py:797:41
	v_add_lshl_u32 v219, s21, v44, 1
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v194, v211, v194 :: v_dual_mul_f32 v197, v213, v197
	.loc	1 777 26                        ; attention.py:777:26
	s_and_b32 s33, s0, s3
	.loc	1 782 30                        ; attention.py:782:30
	v_cmp_gt_i32_e64 s22, s43, v207
	v_cmp_gt_i32_e64 s21, s43, v208
	v_cmp_gt_i32_e64 s3, s43, v209
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v185, v206, v185
	.loc	1 727 37                        ; attention.py:727:37
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v198.h, v168.l
	.loc	1 797 41                        ; attention.py:797:41
	v_cndmask_b32_e64 v204, 0x80000000, v219, s0
	.loc	1 775 32                        ; attention.py:775:32
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	.loc	1 797 41                        ; attention.py:797:41
	s_mov_b32 s58, s62
	s_mov_b32 s59, s63
	.loc	1 782 31                        ; attention.py:782:31
	v_lshl_or_b32 v186, v186, 1, 1
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s19, 0xff800000, v163
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v166, v155, v155 :: v_dual_max_f32 v167, v156, v156
	v_dual_max_f32 v172, v161, v161 :: v_dual_max_f32 v173, v162, v162
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 782 30                        ; attention.py:782:30
	v_cmp_gt_i32_e64 s23, s43, v186
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v186, 0x80000000, v215, s33
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v170, v159, v159 :: v_dual_max_f32 v171, v160, v160
	v_dual_max_f32 v168, v157, v157 :: v_dual_max_f32 v169, v158, v158
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s14, 0xff800000, v159
	v_cmp_neq_f32_e64 s15, 0xff800000, v158
	v_cmp_neq_f32_e64 s17, 0xff800000, v156
	v_cmp_neq_f32_e64 s16, 0xff800000, v157
	v_cmp_neq_f32_e64 s18, 0xff800000, v155
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v162
	v_cmp_neq_f32_e64 s12, 0xff800000, v161
	v_cmp_neq_f32_e64 s13, 0xff800000, v160
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s69, s69, 16
	.loc	1 763 25                        ; attention.py:763:25
	.loc	1 761 36                        ; attention.py:761:36
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v177, 0xff800000, v177, s39
	s_waitcnt vmcnt(6)
	v_cndmask_b32_e64 v178, 0xff800000, v178, s37
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v179, 0xff800000, v179, s41
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v180, 0xff800000, v180, s36
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v181, 0xff800000, v181, s40
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v183, 0xff800000, v183, s81
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v182, 0xff800000, v182, s35
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v184, 0xff800000, v184, s38
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s24, 0xff800000, v177
	v_cmp_neq_f32_e64 s29, 0xff800000, v181
	v_cmp_neq_f32_e64 s31, 0xff800000, v183
	v_cmp_neq_f32_e64 s30, 0xff800000, v182
	v_cmp_neq_f32_e64 s34, 0xff800000, v184
	v_cmp_neq_f32_e64 s27, 0xff800000, v179
	.loc	1 763 25 is_stmt 0              ; attention.py:763:25
	s_and_b32 s25, s39, s24
	s_and_b32 s24, s81, s31
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s28, 0xff800000, v180
	.loc	1 763 25                        ; attention.py:763:25
	s_and_b32 s29, s40, s29
	s_and_b32 s31, s35, s30
	s_and_b32 s30, s38, s34
	.loc	1 762 35 is_stmt 1              ; attention.py:762:35
	ds_store_2addr_b32 v34, v177, v179 offset1:32
	ds_store_2addr_b32 v34, v181, v183 offset0:64 offset1:96
	ds_store_2addr_b32 v140, v178, v180 offset1:32
	ds_store_2addr_b32 v140, v182, v184 offset0:64 offset1:96
	.loc	1 763 25                        ; attention.py:763:25
	v_cndmask_b32_e64 v177, 0, 1, s24
	v_cndmask_b32_e64 v180, 0, 1, s29
	v_cndmask_b32_e64 v184, 0, 1, s30
	s_and_b32 s27, s41, s27
	.loc	1 763 34 is_stmt 0              ; attention.py:763:34
	v_cmp_neq_f32_e64 s26, 0xff800000, v178
	.loc	1 763 25                        ; attention.py:763:25
	s_and_b32 s28, s36, s28
	v_cndmask_b32_e64 v178, 0, 1, s27
	v_mov_b16_e64 v164.l, v177.l
	v_cndmask_b32_e64 v182, 0, 1, s28
	v_mov_b16_e64 v177.l, v180.l
	v_mov_b16_e64 v180.l, v184.l
	s_and_b32 s26, s37, s26
	v_cndmask_b32_e64 v179, 0, 1, s25
	v_lshlrev_b16 v164.l, 8, v164.l
	v_lshlrev_b16 v177.h, 8, v178.l
	v_cndmask_b32_e64 v183, 0, 1, s26
	v_cndmask_b32_e64 v181, 0, 1, s31
	v_lshlrev_b16 v178.l, 8, v180.l
	v_lshlrev_b16 v178.h, 8, v182.l
	v_or_b16 v179.h, v177.l, v164.l
	v_or_b16 v179.l, v179.l, v177.h
	.loc	1 762 35 is_stmt 1              ; attention.py:762:35
	s_waitcnt lgkmcnt(0)
	.loc	1 763 25                        ; attention.py:763:25
	v_or_b16 v177.h, v181.l, v178.l
	v_or_b16 v177.l, v183.l, v178.h
	.loc	1 762 35                        ; attention.py:762:35
	s_barrier
	ds_load_b32 v206, v174
	ds_load_b32 v207, v118
	ds_load_b32 v208, v119
	ds_load_b32 v209, v120
	ds_load_b32 v210, v121
	ds_load_b32 v211, v122
	ds_load_b32 v212, v123
	ds_load_b32 v213, v124
	.loc	1 763 25                        ; attention.py:763:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v175, v179
	ds_store_b32 v141, v177
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v164, v176
	ds_load_u8_d16 v175, v142
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v175, v145
	ds_load_u8_d16 v176, v144
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v176, v143
	ds_load_u8_d16 v177, v146
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v177, v147
	ds_load_u8_d16 v178, v148
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v198, v214, v198
	.loc	1 764 26                        ; attention.py:764:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_lt_i32 s69, s70
	.loc	1 762 35                        ; attention.py:762:35
	v_dual_mul_f32 v181, 0x3fb8aa3b, v206 :: v_dual_mul_f32 v184, 0x3fb8aa3b, v207
	v_mul_f32_e32 v182, 0x3fb8aa3b, v208
	v_dual_mul_f32 v180, 0x3fb8aa3b, v209 :: v_dual_mul_f32 v207, 0x3fb8aa3b, v210
	v_dual_mul_f32 v179, 0x3fb8aa3b, v211 :: v_dual_mul_f32 v206, 0x3fb8aa3b, v212
	.loc	1 763 25                        ; attention.py:763:25
	v_and_b16 v164.l, 1, v164.l
	v_and_b16 v175.l, 1, v175.l
	v_and_b16 v176.l, 1, v176.l
	v_and_b16 v176.h, 1, v176.h
	v_and_b16 v175.h, 1, v175.h
	.loc	1 762 35                        ; attention.py:762:35
	v_mul_f32_e32 v183, 0x3fb8aa3b, v213
	.loc	1 762 25 is_stmt 0              ; attention.py:762:25
	v_dual_fmac_f32 v181, s42, v205 :: v_dual_fmac_f32 v182, s74, v194
	.loc	1 763 25 is_stmt 1              ; attention.py:763:25
	v_and_b16 v177.l, 1, v177.l
	v_and_b16 v177.h, 1, v177.h
	v_and_b16 v178.l, 1, v178.l
	v_cmp_eq_u16_e64 s37, 1, v164.l
	.loc	1 762 25                        ; attention.py:762:25
	v_dual_fmac_f32 v184, s73, v193 :: v_dual_fmac_f32 v179, s73, v195
	.loc	1 763 25                        ; attention.py:763:25
	v_cmp_eq_u16_e64 s36, 1, v175.l
	v_cmp_eq_u16_e64 s35, 1, v176.h
	.loc	1 762 25                        ; attention.py:762:25
	v_dual_fmac_f32 v180, s75, v196 :: v_dual_fmac_f32 v207, s42, v185
	.loc	1 763 25                        ; attention.py:763:25
	v_cmp_eq_u16_e64 s34, 1, v176.l
	v_cmp_eq_u16_e64 s41, 1, v175.h
	.loc	1 762 25                        ; attention.py:762:25
	v_dual_fmac_f32 v206, s74, v197 :: v_dual_fmac_f32 v183, s75, v198
	.loc	1 763 25                        ; attention.py:763:25
	v_cmp_eq_u16_e64 s38, 1, v178.l
	v_cmp_eq_u16_e64 s39, 1, v177.h
	v_cmp_eq_u16_e64 s40, 1, v177.l
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v194, 0xff800000, v181, s37
	v_cndmask_b32_e64 v184, 0xff800000, v184, s36
	v_cndmask_b32_e64 v193, 0xff800000, v182, s35
	v_cndmask_b32_e64 v185, 0xff800000, v180, s34
	v_cndmask_b32_e64 v197, 0xff800000, v207, s41
	v_cndmask_b32_e64 v183, 0xff800000, v183, s38
	v_cndmask_b32_e64 v195, 0xff800000, v206, s39
	v_cndmask_b32_e64 v196, 0xff800000, v179, s40
	ds_store_b32 v174, v194
	ds_store_b32 v118, v184
	ds_store_b32 v119, v193
	ds_store_b32 v120, v185
	ds_store_b32 v121, v197
	ds_store_b32 v122, v196
	ds_store_b32 v123, v195
	ds_store_b32 v124, v183
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[177:178], v140 offset1:32
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v206, 0x80000000, v218, s33
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v174, v194, v184, v193
	v_max3_f32 v181, v185, v197, v196
	v_max_f32_e32 v182, v195, v183
.Ltmp2:
	.loc	1 775 32                        ; attention.py:775:32
	buffer_load_u8 v206, v206, s[64:67], 0 offen
	.loc	1 797 41                        ; attention.py:797:41
	buffer_load_u16 v204, v204, s[56:59], 0 offen
	.loc	1 764 26                        ; attention.py:764:26
	ds_load_2addr_b32 v[175:176], v34 offset1:32
	ds_load_2addr_b32 v[179:180], v34 offset0:64 offset1:96
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v198, 0x80000000, v216, s33
	v_cndmask_b32_e64 v205, 0x80000000, v217, s33
	s_clause 0x2
	buffer_load_u8 v207, v186, s[64:67], 0 offen
	buffer_load_u8 v198, v198, s[64:67], 0 offen
	buffer_load_u8 v205, v205, s[64:67], 0 offen
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	s_waitcnt lgkmcnt(2)
	v_max_f32_e32 v209, v177, v177
	v_max3_f32 v34, v174, v181, v182
.Ltmp4:
	.loc	1 764 26                        ; attention.py:764:26
	ds_load_2addr_b32 v[181:182], v140 offset0:64 offset1:96
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v208, v177
	v_mov_b32_e32 v212, v178
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v213, v178, v178
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_permlanex16_b32 v174, v34, s72, 0xfedcba98 op_sel:[1,0]
	s_waitcnt lgkmcnt(2)
	v_mov_b32_e32 v210, v176
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v211, v176, v176
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v215, v179, v179
	v_max_f32_e32 v219, v180, v180
.Ltmp9:
	.loc	1 766 24                        ; attention.py:766:24
	v_max3_f32 v174, v163, v34, v174
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v34, v175
	v_mov_b32_dpp v208, v208 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v212, v212 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v186, v175, v175
.Ltmp12:
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v163, v163, v174
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v34, v34 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v214, v179
	v_dual_mov_b32 v218, v180 :: v_dual_sub_f32 v193, v193, v174
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp14:
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v163, v163
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v216, v181
	v_dual_mov_b32 v220, v182 :: v_dual_sub_f32 v185, v185, v174
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v217, v181, v181
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v210, v210 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v216, v216 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp18:
	.loc	1 768 62                        ; attention.py:768:62
	v_dual_sub_f32 v197, v197, v174 :: v_dual_max_f32 v208, v208, v208
	v_dual_sub_f32 v195, v195, v174 :: v_dual_max_f32 v212, v212, v212
	v_sub_f32_e32 v194, v194, v174
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v220, v220 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v34, v34, v34
.Ltmp21:
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v163, 0, v163, s19
	.loc	1 768 62                        ; attention.py:768:62
	v_dual_sub_f32 v183, v183, v174 :: v_dual_max_f32 v216, v216, v216
	v_sub_f32_e32 v184, v184, v174
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v210, v210, v210
	v_max_f32_e32 v221, v182, v182
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v214, v214 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v218, v218 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v34, v186, v34 :: v_dual_mul_f32 v27, v27, v163
	v_dual_max_f32 v186, v209, v208 :: v_dual_mul_f32 v31, v31, v163
	v_max_f32_e32 v220, v220, v220
	v_max_f32_e32 v209, v213, v212
.Ltmp25:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v194, v194
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v208, v211, v210 :: v_dual_mul_f32 v29, v29, v163
	v_max_f32_e32 v211, v217, v216
.Ltmp27:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v184, v184
	.loc	1 768 62 is_stmt 0              ; attention.py:768:62
	v_dual_sub_f32 v196, v196, v174 :: v_dual_max_f32 v213, v221, v220
.Ltmp28:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v214, v214, v214
	v_dual_max_f32 v218, v218, v218 :: v_dual_mul_f32 v25, v25, v163
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp29:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v194, 0, v194, s37
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_dual_mov_b32 v221, v213 :: v_dual_max_f32 v210, v215, v214
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
.Ltmp31:
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v17, v17, v163 :: v_dual_max_f32 v212, v219, v218
	v_mul_f32_e32 v21, v21, v163
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v215, v186
.Ltmp33:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v184, 0, v184, s36
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v193, v193
	v_exp_f32_e32 v185, v185
	v_exp_f32_e32 v197, v197
	v_exp_f32_e32 v196, v196
	v_exp_f32_e32 v195, v195
.Ltmp34:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:765:29 ]
	v_dual_mov_b32 v220, v212 :: v_dual_mul_f32 v11, v11, v163
.Ltmp35:
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e64 v188.l, v194.h
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v215, v215 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v214, v34 :: v_dual_mul_f32 v19, v19, v163
.Ltmp37:
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e64 v187.l, v184.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v13, v13, v163 :: v_dual_and_b32 v188, 1, v188
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v220, v220 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v215, v215, v215
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v214, v214 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v187, 1, v187
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v185, 0, v185, s34
	v_cndmask_b32_e64 v193, 0, v193, s35
	v_cndmask_b32_e64 v196, 0, v196, s40
	v_cndmask_b32_e64 v197, 0, v197, s41
	v_cndmask_b32_e64 v195, 0, v195, s39
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v217, v209
	v_mov_b32_e32 v219, v211
.Ltmp43:
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s35, v194, v194
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v220, v220, v220
.Ltmp45:
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v188, v194, v188, 0x7fff
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v186, v186, v215
.Ltmp47:
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s34, v184, v184
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v214, v214, v214
.Ltmp49:
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v184, v184, v187, 0x7fff
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v183, v183
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_dual_mov_b32 v216, v208 :: v_dual_mul_f32 v23, v23, v163
	v_dual_mov_b32 v218, v210 :: v_dual_mul_f32 v9, v9, v163
.Ltmp51:
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e64 v189.l, v185.h
	v_mov_b16_e64 v190.l, v193.h
	v_mov_b16_e64 v191.l, v196.h
	v_mov_b16_e64 v192.l, v197.h
	v_mov_b16_e64 v203.l, v195.h
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v217, v217 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v219, v219 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v184.l, 0x7fff, v188.h, s35
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v188, v186
.Ltmp55:
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v26, v26, v163 :: v_dual_and_b32 v189, 1, v189
	v_dual_mul_f32 v28, v28, v163 :: v_dual_max_f32 v217, v217, v217
	v_dual_mul_f32 v15, v15, v163 :: v_dual_and_b32 v190, 1, v190
	v_dual_mul_f32 v1, v1, v163 :: v_dual_and_b32 v192, 1, v192
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v216, v216 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v218, v218 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v221, v221 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v191, 1, v191
	v_and_b32_e32 v203, 1, v203
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v219, v219, v219 :: v_dual_max_f32 v34, v34, v214
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v188, v188 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v183, 0, v183, s38
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v30, v30, v163 :: v_dual_max_f32 v221, v221, v221
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s36, v185, v185
	v_cmp_o_f32_e64 s37, v193, v193
	v_cmp_o_f32_e64 s38, v196, v196
	v_cmp_o_f32_e64 s19, v195, v195
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v216, v216, v216
	v_max_f32_e32 v218, v218, v218
.Ltmp62:
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v187, v193, v190, 0x7fff
	v_add3_u32 v185, v185, v189, 0x7fff
	v_add3_u32 v189, v197, v192, 0x7fff
	v_add3_u32 v190, v196, v191, 0x7fff
	v_add3_u32 v193, v195, v203, 0x7fff
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v192, v209, v217 :: v_dual_max_f32 v195, v211, v219
	v_max_f32_e32 v188, v188, v188
.Ltmp64:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v32, v32, v163
	v_mul_f32_e32 v24, v24, v163
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s39, v197, v197
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v197, v213, v221
.Ltmp66:
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v214.h, 0x7fff, v190.h, s38
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_dual_mov_b32 v203, v195 :: v_dual_max_f32 v186, v186, v188
	v_mov_b32_e32 v190, v192
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp68:
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v10, v10, v163 :: v_dual_mov_b32 v209, v197
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v203, v203 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp70:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v20, v20, v163
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v190, v190 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp72:
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e64 v202.l, v183.h
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v196, v212, v220 :: v_dual_max_f32 v203, v203, v203
.Ltmp74:
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v185.l, 0x7fff, v187.h, s37
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v187, v34
	v_mov_b32_dpp v209, v209 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v190, v190, v190
.Ltmp77:
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v18, v18, v163 :: v_dual_max_f32 v191, v208, v216
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v14, v14, v163 :: v_dual_max_f32 v209, v209, v209
	v_dual_mul_f32 v3, v3, v163 :: v_dual_and_b32 v202, 1, v202
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v187, v187 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v194, v210, v218
	v_max_f32_e32 v188, v192, v190
	v_dual_max_f32 v190, v195, v203 :: v_dual_mov_b32 v195, v186
.Ltmp80:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v22, v22, v163
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s33, v183, v183
	v_add3_u32 v183, v183, v202, 0x7fff
	v_cndmask_b16 v214.l, 0x7fff, v189.h, s39
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v189, v191
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v187, v187, v187 :: v_dual_max_f32 v192, v197, v209
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v195, v195 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v202, v194
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v189, v189 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp84:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v12, v12, v163
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v209, v192
.Ltmp86:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v195, v195, v195
.Ltmp87:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v202, v202 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp88:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v189, v189, v189 :: v_dual_max_f32 v34, v34, v187
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp89:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v209, v209 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp90:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v16, v16, v163
.Ltmp91:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v202, v202, v202 :: v_dual_max_f32 v187, v191, v189
.Ltmp92:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_dual_mov_b32 v208, v196 :: v_dual_mov_b32 v203, v190
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp93:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v209, v209, v209 :: v_dual_mul_f32 v4, v4, v163
	v_max_f32_e32 v189, v194, v202
.Ltmp94:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v194, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v208, v208 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v197, v188
	v_mov_b32_dpp v203, v203 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp95:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v8, v8, v163
.Ltmp96:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v194, v194 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp97:
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
.Ltmp98:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v197, v197 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp99:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v203, v203, v203
.Ltmp100:
	.loc	1 814 30                        ; attention.py:814:30
	s_barrier
.Ltmp101:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v194, v194, v194
.Ltmp102:
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v184.h, 0x7fff, v184.h, s34
.Ltmp103:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v197, v197, v197
.Ltmp104:
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v185.h, 0x7fff, v185.h, s36
	v_permlanex16_b32 v215, v214, s72, 0xfedcba98 op_sel:[1,0]
.Ltmp105:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v34, v34, v194
	v_max_f32_e32 v194, v186, v195
.Ltmp106:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v202, v189
.Ltmp107:
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v212, v185, s72, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v213, v215, v214, v139
	v_perm_b32 v214, v215, v214, v149
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v167, v167, v194
.Ltmp108:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v202, v202 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp109:
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v211, v212, v185, v139
	v_perm_b32 v212, v212, v185, v149
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v7, v7, v163
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v5, v5, v163 :: v_dual_max_f32 v202, v202, v202
.Ltmp110:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v208, v208, v208
.Ltmp111:
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v2, v2, v163 :: v_dual_max_f32 v191, v196, v208
.Ltmp112:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v196, v187
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v196, v196 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp113:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v196, v196, v196
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v195, v187, v196 :: v_dual_max_f32 v196, v188, v197
	v_max_f32_e32 v197, v189, v202
.Ltmp114:
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v187, v36, v194 :: v_dual_max_f32 v188, v37, v195
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v189, v38, v196
.Ltmp115:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v202, v190, v203
.Ltmp116:
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v190, v39, v197
	v_max_f32_e32 v170, v170, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v38, v159, v170
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v159, v179, v190
.Ltmp117:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_dual_mov_b32 v208, v191 :: v_dual_max_f32 v169, v169, v196
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp118:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v159, v159
.Ltmp119:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v208, v208 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp120:
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v37, v158, v169
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v158, v178, v189
.Ltmp121:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v208, v208, v208
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp122:
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v37, v37
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v158, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
.Ltmp123:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v203, v191, v208
.Ltmp124:
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v191, v40, v202
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v220, 0, v37, s15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v37, 0, v158, s28
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v158, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v158, v158 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp126:
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v168, v168, v195 :: v_dual_add_f32 v37, v37, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v36, v157, v168
	.loc	1 768 62                        ; attention.py:768:62
	v_dual_sub_f32 v157, v176, v188 :: v_dual_max_f32 v186, v35, v34
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v35, v156, v167
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v156, v177, v187
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v157, v157
	.loc	1 784 29                        ; attention.py:784:29
	s_waitcnt vmcnt(4)
	v_and_b32_e32 v177, 15, v206
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v35, v35
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v156, v156
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v164.l, 4, v206.l
	s_waitcnt vmcnt(2)
	v_lshrrev_b16 v201.l, 4, v207.l
	s_waitcnt vmcnt(1)
	v_lshrrev_b16 v200.l, 4, v198.l
	s_waitcnt vmcnt(0)
	v_lshrrev_b16 v199.l, 4, v205.l
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v219, 0, v36, s16
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v36, 0, v157, s27
	.loc	1 783 32                        ; attention.py:783:32
	v_cndmask_b32_e64 v164, 0, v164, s3
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v218, 0, v35, s17
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v35, 0, v156, s26
	.loc	1 783 32                        ; attention.py:783:32
	v_cndmask_b32_e64 v194, 0, v199, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp127:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_dual_mov_b32 v157, v36 :: v_dual_mov_b32 v156, v35
	v_mov_b32_dpp v157, v157 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v156, v156 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp128:
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v166, v166, v34
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v36, v36, v157 :: v_dual_add_f32 v35, v35, v156
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp130:
	.loc	1 767 74                        ; attention.py:767:74
	v_dual_sub_f32 v34, v155, v166 :: v_dual_mov_b32 v157, v36
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v155, v175, v186
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v156, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp132:
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v34, v34
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v157, v157 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp134:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v155, v155
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v156, v156 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp136:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v35, v35, v156
.Ltmp137:
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v217, 0, v34, s18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v34, 0, v155, s25
.Ltmp138:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v208, v192, v209
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v156, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp140:
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v192, v41, v203 :: v_dual_mov_b32 v155, v34
	v_max_f32_e32 v165, v165, v208
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp141:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v156, v156 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp142:
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v173, v173, v208
.Ltmp143:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v155, v155 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp144:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v175, v35, v156 :: v_dual_mov_b32 v158, v37
.Ltmp145:
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v41, v162, v173
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp146:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v34, v34, v155
.Ltmp147:
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v35.l, v205.l, 15
	v_and_b16 v35.h, v206.l, 15
.Ltmp148:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v158, v158 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp149:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v162, v182, v165
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v41, v41
.Ltmp150:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v155, v34
.Ltmp151:
	.loc	1 783 32                        ; attention.py:783:32
	v_cndmask_b32_e64 v182, 0, v200, s22
.Ltmp152:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v37, v37, v158
.Ltmp153:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v162, v162
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp154:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v155, v155 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp155:
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e32 v224, 0, v41, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp156:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v34, v34, v155
.Ltmp157:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v41, 0, v162, s30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp158:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v162, v41
	v_mov_b32_dpp v162, v162 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp159:
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v172, v172, v203 :: v_dual_add_f32 v41, v41, v162
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v40, v161, v172
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v161, v180, v192
	.loc	1 797 41                        ; attention.py:797:41
	v_lshlrev_b32_e32 v180, 16, v204
.Ltmp160:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v158, v37
	v_mov_b32_e32 v162, v41
.Ltmp161:
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v40, v40
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v161, v161
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v171, v171, v202
.Ltmp162:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v158, v158 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp163:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v6, v6, v163
	v_mov_b32_e32 v163, v174
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 767 74                        ; attention.py:767:74
	v_dual_sub_f32 v39, v160, v171 :: v_dual_add_f32 v158, v37, v158
	.loc	1 784 29                        ; attention.py:784:29
	v_and_b32_e32 v37, 15, v198
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v223, 0, v40, s12
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v40, 0, v161, s24
.Ltmp164:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v162, v162 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp165:
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v39, v39
	.loc	1 786 54                        ; attention.py:786:54
	v_or_b32_e32 v196, -16, v37
	.loc	1 786 38 is_stmt 0              ; attention.py:786:38
	v_cmp_lt_u16_e64 s12, 7, v35.l
.Ltmp166:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v161, v40
.Ltmp167:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v41, v41, v162
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp168:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v161, v161 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v162, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp169:
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v222, 0, v39, s13
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s13, 7, v35.h
.Ltmp170:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v162, v162 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp171:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v40, v40, v161 :: v_dual_add_f32 v41, v41, v162
.Ltmp172:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v161, v40
.Ltmp173:
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp174:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v225, v41
.Ltmp175:
	.loc	1 768 62                        ; attention.py:768:62
	v_dual_sub_f32 v160, v181, v191 :: v_dual_mov_b32 v155, v34
.Ltmp176:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v161, v161 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp177:
	.loc	1 783 32                        ; attention.py:783:32
	v_cndmask_b32_e64 v181, 0, v201, s23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp178:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v225, v225 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v162, v158
.Ltmp179:
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v221, 0, v38, s14
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v38, 0, v159, s29
.Ltmp180:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v155, v155 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp181:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v41, v41, v225
.Ltmp182:
	.loc	1 784 29                        ; attention.py:784:29
	v_and_b32_e32 v156, 15, v205
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v160, v160
.Ltmp183:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v159, v38
.Ltmp184:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v155, v34, v155
.Ltmp185:
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v34.l, v207.l, 15
	v_and_b16 v34.h, v198.l, 15
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v41, v94, v224
.Ltmp186:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v159, v159 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp187:
	.loc	1 786 54                        ; attention.py:786:54
	v_or_b32_e32 v197, -16, v156
	.loc	1 786 38 is_stmt 0              ; attention.py:786:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v34.l
	v_cmp_lt_u16_e64 s3, 7, v34.h
	.loc	1 768 33 is_stmt 1              ; attention.py:768:33
	v_cndmask_b32_e64 v39, 0, v160, s31
.Ltmp188:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v38, v38, v159
.Ltmp189:
	.loc	1 786 54                        ; attention.py:786:54
	v_or_b32_e32 v34, -16, v177
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_lt_u32_e64 s14, 7, v164
.Ltmp190:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v162, v162 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v94, v41 :: v_dual_mov_b32 v159, v38
.Ltmp191:
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b32_e64 v34, v177, v34, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp192:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v159, v159 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp193:
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp194:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v38, v38, v159
.Ltmp195:
	.loc	1 814 31                        ; attention.py:814:31
	v_dual_mul_f32 v34, v180, v34 :: v_dual_mov_b32 v159, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_cmp_o_f32_e64 s13, v34, v34
.Ltmp196:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v159, v159 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp197:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v159, v38, v159 :: v_dual_add_f32 v36, v36, v157
.Ltmp198:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v157, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v157, v157 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp199:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v157, v36, v157 :: v_dual_and_b32 v36, 15, v207
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp200:
	.loc	1 786 54                        ; attention.py:786:54
	v_or_b32_e32 v195, -16, v36
	.loc	1 786 29 is_stmt 0              ; attention.py:786:29
	v_cndmask_b32_e32 v35, v36, v195, vcc_lo
	v_cndmask_b32_e64 v36, v37, v196, s3
	v_cndmask_b32_e64 v37, v156, v197, s12
	.loc	1 787 56 is_stmt 1              ; attention.py:787:56
	v_or_b32_e32 v156, -16, v181
	v_or_b32_e32 v195, -16, v182
	v_or_b32_e32 v196, -16, v194
	v_or_b32_e32 v197, -16, v164
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v37, v37
.Ltmp201:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v40, v40, v161
.Ltmp202:
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v181
	v_cmp_lt_u32_e64 s3, 7, v182
	v_cmp_lt_u32_e64 s12, 7, v194
	.loc	1 814 31                        ; attention.py:814:31
	v_dual_mul_f32 v37, v37, v180 :: v_dual_mov_b32 v160, v39
.Ltmp203:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_dual_mov_b32 v161, v40 :: v_dual_cndmask_b32 v156, v181, v156
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp204:
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b32_e64 v177, v182, v195, s3
	v_cndmask_b32_e64 v181, v194, v196, s12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp205:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v160, v160 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v161, v161 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp206:
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b32_e64 v164, v164, v197, s14
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp207:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v39, v39, v160 :: v_dual_add_f32 v40, v40, v161
.Ltmp208:
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v177, v177
	v_cvt_f32_i32_e32 v181, v181
.Ltmp209:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_dual_mov_b32 v160, v39 :: v_dual_mov_b32 v179, v40
.Ltmp210:
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v164, v164
	v_mul_f32_e32 v35, v35, v180
	v_mul_f32_e32 v36, v36, v180
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp211:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v160, v160 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp212:
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v156, v156, v180
	v_mul_f32_e32 v177, v177, v180
	v_mul_f32_e32 v181, v180, v181
	v_mul_f32_e32 v164, v180, v164
.Ltmp213:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v39, v39, v160
.Ltmp214:
	.loc	1 814 30                        ; attention.py:814:30
	v_bfe_u32 v180, v35, 16, 1
	v_bfe_u32 v182, v36, 16, 1
	v_bfe_u32 v194, v37, 16, 1
	v_bfe_u32 v195, v34, 16, 1
.Ltmp215:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v160, v39
.Ltmp216:
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	v_add3_u32 v35, v35, v180, 0x7fff
	v_bfe_u32 v180, v156, 16, 1
	v_cmp_o_f32_e64 s3, v36, v36
.Ltmp217:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v160, v160 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp218:
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s12, v37, v37
	v_add3_u32 v36, v36, v182, 0x7fff
	v_bfe_u32 v182, v177, 16, 1
	v_add3_u32 v37, v37, v194, 0x7fff
.Ltmp219:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v160, v39, v160
.Ltmp220:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v39, v175
.Ltmp221:
	.loc	1 814 30                        ; attention.py:814:30
	v_bfe_u32 v194, v181, 16, 1
	v_bfe_u32 v196, v164, 16, 1
	v_add3_u32 v195, v34, v195, 0x7fff
	v_cmp_o_f32_e64 s14, v156, v156
	v_add3_u32 v156, v156, v180, 0x7fff
.Ltmp222:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v39, v39 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp223:
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s15, v177, v177
	v_cmp_o_f32_e64 s16, v181, v181
	v_cmp_o_f32_e64 s17, v164, v164
	v_cndmask_b16 v34.l, 0x7fff, v35.h, vcc_lo
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s3
	v_add3_u32 v36, v177, v182, 0x7fff
	v_cndmask_b16 v35.l, 0x7fff, v37.h, s12
	v_add3_u32 v37, v181, v194, 0x7fff
	v_add3_u32 v164, v164, v196, 0x7fff
	v_cndmask_b16 v35.h, 0x7fff, v195.h, s13
	v_cndmask_b16 v36.l, 0x7fff, v156.h, s14
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s15
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s16
	v_cndmask_b16 v37.h, 0x7fff, v164.h, s17
	ds_store_b16 v100, v34
	ds_store_b16_d16_hi v100, v34 offset:512
	ds_store_b16 v100, v35 offset:1024
	ds_store_b16_d16_hi v100, v35 offset:1536
	ds_store_b16 v100, v36 offset:128
	ds_store_b16_d16_hi v100, v36 offset:640
	ds_store_b16 v100, v37 offset:1152
	ds_store_b16_d16_hi v100, v37 offset:1664
.Ltmp224:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v35, v175, v39
.Ltmp225:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_dual_mov_b32 v176, v159 :: v_dual_add_f32 v39, v158, v162
	v_mov_b32_e32 v178, v160
.Ltmp226:
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v156, v85 offset:352
	ds_load_u16_d16 v177, v85 offset:576
.Ltmp227:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v161, v157
	v_mov_b32_dpp v179, v179 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp228:
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v35, v88, v218
.Ltmp229:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v176, v176 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp230:
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v39, v90, v220
.Ltmp231:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v178, v178 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v38, v155
	v_mov_b32_dpp v161, v161 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp232:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v36, v159, v176
	v_add_f32_e32 v40, v40, v179
	v_add_f32_e32 v37, v160, v178
.Ltmp233:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v38, v38 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp234:
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_u16_d16 v179, v85 offset:1088
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v36, v91, v221
	v_fmac_f32_e32 v40, v93, v223
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v164.l, 0x7fff, v193.h, s19
.Ltmp235:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v34, v155, v38
	v_add_f32_e32 v38, v157, v161
.Ltmp236:
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_u16_d16 v193, v85
	ds_load_u16_d16 v201, v85 offset:32
	ds_load_u16_d16 v175, v85 offset:64
	ds_load_u16_d16 v155, v85 offset:96
	ds_load_u16_d16 v157, v85 offset:608
	ds_load_u16_d16 v194, v85 offset:256
	ds_load_u16_d16 v178, v85 offset:832
	ds_load_u16_d16 v176, v85 offset:320
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v156, v85 offset:480
	ds_load_u16_d16 v180, v85 offset:1344
	ds_load_u16_d16 v196, v85 offset:768
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v177, v85 offset:704
	ds_load_u16_d16 v203, v85 offset:544
	ds_load_u16_d16 v181, v85 offset:1600
	ds_load_u16_d16 v182, v85 offset:1856
	ds_load_u16_d16 v195, v85 offset:512
	ds_load_u16_d16 v202, v85 offset:288
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v193, v85 offset:128
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v201, v85 offset:160
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v175, v85 offset:192
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v155, v85 offset:224
	ds_load_u16_d16 v197, v85 offset:1024
	ds_load_u16_d16 v204, v85 offset:800
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v178, v85 offset:960
	ds_load_u16_d16 v158, v85 offset:864
	ds_load_u16_d16 v198, v85 offset:1280
	ds_load_u16_d16 v205, v85 offset:1056
	ds_load_u16_d16_hi v179, v85 offset:1216
	ds_load_u16_d16 v159, v85 offset:1120
	ds_load_u16_d16 v199, v85 offset:1536
	ds_load_u16_d16 v206, v85 offset:1312
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v180, v85 offset:1472
	ds_load_u16_d16 v160, v85 offset:1376
	ds_load_u16_d16 v200, v85 offset:1792
	ds_load_u16_d16 v207, v85 offset:1568
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v181, v85 offset:1728
	ds_load_u16_d16 v161, v85 offset:1632
	ds_load_u16_d16 v208, v85 offset:1824
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v182, v85 offset:1984
	ds_load_u16_d16 v162, v85 offset:1888
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v195, v85 offset:640
	ds_load_u16_d16_hi v194, v85 offset:384
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v202, v85 offset:416
	ds_load_u16_d16_hi v176, v85 offset:448
	ds_load_u16_d16_hi v196, v85 offset:896
	ds_load_u16_d16_hi v203, v85 offset:672
	ds_load_u16_d16_hi v157, v85 offset:736
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v197, v85 offset:1152
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v204, v85 offset:928
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v158, v85 offset:992
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v198, v85 offset:1408
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v205, v85 offset:1184
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v159, v85 offset:1248
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v199, v85 offset:1664
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v206, v85 offset:1440
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v160, v85 offset:1504
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v200, v85 offset:1920
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v207, v85 offset:1696
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v161, v85 offset:1760
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v208, v85 offset:1952
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v164.h, 0x7fff, v183.h, s33
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v162, v85 offset:2016
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v183, v184, s72, 0xfedcba98 op_sel:[1,0]
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v37, v92, v222
	v_mov_b32_e32 v91, v36
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v216, v164, s72, 0xfedcba98 op_sel:[1,0]
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v34, v87, v217
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v209, v183, v184, v139
	v_perm_b32 v210, v183, v184, v149
	v_mov_b32_e32 v93, v40
	v_perm_b32 v215, v216, v164, v139
	v_perm_b32 v216, v216, v164, v149
	.loc	1 817 23                        ; attention.py:817:23
	v_dual_fmac_f32 v38, v89, v219 :: v_dual_mov_b32 v87, v34
	v_mov_b32_e32 v88, v35
	v_mov_b32_e32 v90, v39
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[193:200], v[209:216], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[175:182], v[209:216], v[9:16]
	v_mov_b32_e32 v89, v38
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[201:208], v[209:216], v[17:24]
	v_mov_b32_e32 v92, v37
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[155:162], v[209:216], v[1:8]
	v_dual_mov_b32 v155, v166 :: v_dual_mov_b32 v156, v167
	v_dual_mov_b32 v157, v168 :: v_dual_mov_b32 v158, v169
	v_dual_mov_b32 v159, v170 :: v_dual_mov_b32 v160, v171
	v_dual_mov_b32 v161, v172 :: v_dual_mov_b32 v162, v173
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc0 .LBB0_11
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v34, s69, v70
	v_or_b32_e32 v35, s69, v71
	.loc	1 711 32                        ; attention.py:711:32
	s_add_i32 s18, s69, s78
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v36, s69, v72
	.loc	1 711 32                        ; attention.py:711:32
	s_mul_i32 s3, s18, s54
	.loc	1 714 73                        ; attention.py:714:73
	v_cmp_gt_i32_e32 vcc_lo, s43, v34
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v37, s69, v73
	.loc	1 711 32                        ; attention.py:711:32
	v_add_nc_u32_e32 v38, s3, v42
	v_add_nc_u32_e32 v39, s3, v74
	v_add_nc_u32_e32 v40, s3, v75
	v_add_nc_u32_e32 v34, s3, v43
	.loc	1 714 73                        ; attention.py:714:73
	v_cmp_gt_i32_e64 s3, s43, v35
	v_cmp_gt_i32_e64 s12, s43, v36
	.loc	1 714 30 is_stmt 0              ; attention.py:714:30
	s_and_b32 vcc_lo, s20, vcc_lo
	.loc	1 714 73                        ; attention.py:714:73
	v_cmp_gt_i32_e64 s13, s43, v37
	.loc	1 712 32 is_stmt 1              ; attention.py:712:32
	v_cndmask_b32_e32 v35, 0x80000000, v38, vcc_lo
	.loc	1 714 30                        ; attention.py:714:30
	s_and_b32 vcc_lo, s20, s3
	.loc	1 712 32                        ; attention.py:712:32
	v_add_nc_u32_e32 v38, 0, v86
	v_cndmask_b32_e32 v36, 0x80000000, v39, vcc_lo
	.loc	1 714 30                        ; attention.py:714:30
	s_and_b32 vcc_lo, s20, s12
	.loc	1 717 33                        ; attention.py:717:33
	v_mov_b32_e32 v39, v33
	.loc	1 712 32                        ; attention.py:712:32
	v_cndmask_b32_e32 v37, 0x80000000, v40, vcc_lo
	.loc	1 714 30                        ; attention.py:714:30
	s_and_b32 vcc_lo, s20, s13
	.loc	1 717 33                        ; attention.py:717:33
	v_mov_b32_e32 v40, v33
	.loc	1 712 32                        ; attention.py:712:32
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	s_clause 0x3
	buffer_load_u8 v35, v35, s[44:47], 0 offen
	buffer_load_u8 v36, v36, s[44:47], 0 offen
	buffer_load_u8 v37, v37, s[44:47], 0 offen
	buffer_load_u8 v34, v34, s[44:47], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v173, s69, v76
	.loc	1 745 17                        ; attention.py:745:17
	s_and_b32 vcc_lo, exec_lo, s4
	.loc	1 712 32                        ; attention.py:712:32
	s_waitcnt vmcnt(3)
	ds_store_b8 v77, v35
	s_waitcnt vmcnt(2)
	ds_store_b8 v80, v36
	s_waitcnt vmcnt(1)
	ds_store_b8 v81, v37
	s_waitcnt vmcnt(0)
	ds_store_b8 v82, v34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[166:167], v38
	ds_load_b64 v[168:169], v113
	ds_load_b64 v[170:171], v114
	ds_load_b64 v[174:175], v115
	.loc	1 717 33                        ; attention.py:717:33
	v_mov_b32_e32 v34, v33
	v_mov_b32_e32 v35, v33
	v_mov_b32_e32 v36, v33
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v41, v40
	v_mov_b32_e32 v40, v39
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v39, v38
	v_mov_b32_e32 v38, v37
	v_mov_b32_e32 v37, v36
	v_mov_b32_e32 v36, v35
	v_mov_b32_e32 v35, v34
	v_mov_b32_e32 v34, v33
	.loc	1 714 73                        ; attention.py:714:73
	v_cmp_gt_i32_e64 s3, s43, v173
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[166:167], v[47:48], v[34:41] neg_lo:[1,1,0]
	.loc	1 743 25                        ; attention.py:743:25
	s_and_b32 s39, s1, s3
	s_and_b32 s37, s5, s3
	s_and_b32 s41, s6, s3
	s_and_b32 s36, s7, s3
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[168:169], v[49:50], v[34:41] neg_lo:[1,1,0]
	.loc	1 743 25                        ; attention.py:743:25
	s_and_b32 s40, s8, s3
	s_and_b32 s35, s9, s3
	s_and_b32 s81, s10, s3
	s_and_b32 s38, s11, s3
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[170:171], v[51:52], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[174:175], v[53:54], v[34:41] neg_lo:[1,1,0]
	.loc	1 745 17                        ; attention.py:745:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 746 30                        ; attention.py:746:30
	v_cmp_le_i32_e32 vcc_lo, v173, v98
	v_cmp_le_i32_e64 s3, v173, v103
	v_cmp_le_i32_e64 s12, v173, v104
	v_cmp_le_i32_e64 s13, v173, v105
	v_cmp_le_i32_e64 s14, v173, v106
	v_cmp_le_i32_e64 s15, v173, v107
	.loc	1 746 21 is_stmt 0              ; attention.py:746:21
	s_and_b32 s19, vcc_lo, s39
	s_and_b32 s3, s3, s37
	.loc	1 746 30                        ; attention.py:746:30
	v_cmp_le_i32_e64 s16, v173, v108
	v_cmp_le_i32_e64 s17, v173, v109
	.loc	1 746 21                        ; attention.py:746:21
	s_and_b32 s12, s12, s41
	s_and_b32 s13, s13, s36
	s_and_not1_b32 s21, s39, exec_lo
	s_and_b32 s19, s19, exec_lo
	s_and_not1_b32 s22, s37, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s14, s14, s40
	s_and_b32 s15, s15, s35
	s_or_b32 s39, s21, s19
	s_or_b32 s37, s22, s3
	s_and_not1_b32 s3, s41, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s19, s36, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s81
	s_and_b32 s17, s17, s38
	s_or_b32 s41, s3, s12
	s_or_b32 s36, s19, s13
	s_and_not1_b32 s3, s40, exec_lo
	s_and_b32 s12, s14, exec_lo
	s_and_not1_b32 s13, s35, exec_lo
	s_and_b32 s14, s15, exec_lo
	s_or_b32 s40, s3, s12
	s_or_b32 s35, s13, s14
	s_and_not1_b32 s3, s81, exec_lo
	s_and_b32 s12, s16, exec_lo
	s_and_not1_b32 s13, s38, exec_lo
	s_and_b32 s14, s17, exec_lo
	s_or_b32 s81, s3, s12
	s_or_b32 s38, s13, s14
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           ; attention.py:0
	v_or_b32_e32 v164, s69, v67
	v_or_b32_e32 v166, s69, v68
	v_add_lshl_u32 v169, s18, v67, 1
	v_or_b32_e32 v167, s69, v66
	v_or_b32_e32 v168, s69, v65
	v_cmp_gt_i32_e32 vcc_lo, s43, v164
	v_or_b32_e32 v170, s69, v63
	v_add_nc_u32_e32 v175, 4, v169
	v_add_nc_u32_e32 v176, 8, v169
	v_or_b32_e32 v171, s69, v64
	v_cndmask_b32_e32 v164, 0x80000000, v169, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s43, v166
	v_or_b32_e32 v172, s69, v62
	v_or_b32_e32 v174, s69, v61
	v_dual_cndmask_b32 v166, 0x80000000, v175 :: v_dual_add_nc_u32 v175, 12, v169
	v_cmp_gt_i32_e32 vcc_lo, s43, v167
	v_cndmask_b32_e32 v167, 0x80000000, v176, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s43, v168
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v168, 0x80000000, v175 :: v_dual_add_nc_u32 v175, 20, v169
	v_cmp_gt_i32_e32 vcc_lo, s43, v170
	v_add_nc_u32_e32 v170, 24, v169
	v_add_nc_u32_e32 v176, 16, v169
	v_dual_cndmask_b32 v176, 0x80000000, v176 :: v_dual_add_nc_u32 v169, 28, v169
	v_cmp_gt_i32_e32 vcc_lo, s43, v171
	v_cndmask_b32_e32 v175, 0x80000000, v175, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s43, v172
	v_cndmask_b32_e32 v177, 0x80000000, v170, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s43, v174
	v_cndmask_b32_e32 v174, 0x80000000, v169, vcc_lo
	s_clause 0x7
	buffer_load_u16 v169, v164, s[60:63], 0 offen
	buffer_load_u16 v170, v166, s[60:63], 0 offen
	buffer_load_u16 v171, v167, s[60:63], 0 offen
	buffer_load_u16 v172, v168, s[60:63], 0 offen
	buffer_load_u16 v164, v176, s[60:63], 0 offen
	buffer_load_u16 v166, v175, s[60:63], 0 offen
	buffer_load_u16 v167, v177, s[60:63], 0 offen
	buffer_load_u16 v168, v174, s[60:63], 0 offen
	.loc	1 747 17 is_stmt 1              ; attention.py:747:17
	s_and_not1_b32 vcc_lo, exec_lo, s55
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e32 vcc_lo, v173, v116
	v_cmp_ge_i32_e64 s3, v173, v125
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s18, v173, v117
	v_cmp_le_i32_e64 s19, v173, v132
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s12, v173, v126
	v_cmp_ge_i32_e64 s13, v173, v127
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s21, v173, v133
	v_cmp_le_i32_e64 s22, v173, v134
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s14, v173, v128
	v_cmp_ge_i32_e64 s15, v173, v129
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s23, v173, v135
	v_cmp_le_i32_e64 s24, v173, v136
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s18, vcc_lo, s18
	s_and_b32 s3, s3, s19
	.loc	1 748 30 is_stmt 1              ; attention.py:748:30
	v_cmp_ge_i32_e64 s16, v173, v130
	v_cmp_ge_i32_e64 s17, v173, v131
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s25, v173, v137
	v_cmp_le_i32_e64 s26, v173, v138
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s18, s18, s39
	s_and_b32 s3, s3, s37
	s_and_b32 s12, s12, s21
	s_and_b32 s13, s13, s22
	s_and_b32 s12, s12, s41
	s_and_b32 s13, s13, s36
	s_and_b32 s14, s14, s23
	s_and_b32 s15, s15, s24
	s_and_not1_b32 s19, s39, exec_lo
	s_and_b32 s18, s18, exec_lo
	s_and_not1_b32 s21, s37, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s14, s14, s40
	s_and_b32 s15, s15, s35
	s_and_b32 s16, s16, s25
	s_and_b32 s17, s17, s26
	s_or_b32 s39, s19, s18
	s_or_b32 s37, s21, s3
	s_and_not1_b32 s3, s41, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s18, s36, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s81
	s_and_b32 s17, s17, s38
	s_or_b32 s41, s3, s12
	s_or_b32 s36, s18, s13
	s_and_not1_b32 s3, s40, exec_lo
	s_and_b32 s12, s14, exec_lo
	s_and_not1_b32 s13, s35, exec_lo
	s_and_b32 s14, s15, exec_lo
	s_or_b32 s40, s3, s12
	s_or_b32 s35, s13, s14
	s_and_not1_b32 s3, s81, exec_lo
	s_and_b32 s12, s16, exec_lo
	s_and_not1_b32 s13, s38, exec_lo
	s_and_b32 s14, s17, exec_lo
	s_or_b32 s81, s3, s12
	s_or_b32 s38, s13, s14
	s_branch .LBB0_6
.LBB0_11:                               ; %._crit_edge
	.loc	1 707 13 is_stmt 1              ; attention.py:707:13
	v_lshlrev_b32_e32 v33, 4, v0
	v_lshrrev_b32_e32 v42, 1, v0
	v_lshlrev_b32_e32 v0, 2, v0
	v_lshrrev_b32_e32 v43, 3, v79
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v33, 0x70, v33
	v_and_b32_e32 v42, 4, v42
	v_and_b32_e32 v0, 0x80, v0
	s_barrier
	.loc	1 848 17                        ; attention.py:848:17
	s_and_b32 s53, s53, 0xffff
	s_mov_b32 s55, 0x31027000
	.loc	1 707 13                        ; attention.py:707:13
	v_add3_u32 v33, 0, v33, v42
	v_add_nc_u32_e32 v42, 0, v78
	s_mov_b32 s54, 0x7ffffffe
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s6, s68, v63
	.loc	1 707 13                        ; attention.py:707:13
	ds_store_b128 v42, v[34:37]
	ds_store_b128 v42, v[38:41] offset:128
	v_add3_u32 v0, v33, v0, v43
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s7, s68, v64
	v_cmp_gt_i32_e64 s8, s68, v62
	.loc	1 707 13                        ; attention.py:707:13
	ds_load_b32 v0, v0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s9, s68, v61
	.loc	1 841 48                        ; attention.py:841:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v0, v0, v25
	v_div_scale_f32 v35, null, v0, v0, v26
	v_div_scale_f32 v37, null, v0, v0, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v45, v33
	v_rcp_f32_e32 v46, v35
	v_div_scale_f32 v39, null, v0, v0, v28
	v_div_scale_f32 v41, null, v0, v0, v29
	v_div_scale_f32 v43, null, v0, v0, v30
	v_rcp_f32_e32 v47, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v48, v39
	v_rcp_f32_e32 v49, v41
	s_delay_alu instid0(VALU_DEP_1)
	v_rcp_f32_e32 v50, v43
	v_fma_f32 v54, -v33, v45, 1.0
	v_fma_f32 v55, -v35, v46, 1.0
	v_div_scale_f32 v34, vcc_lo, v25, v0, v25
	v_div_scale_f32 v36, s0, v26, v0, v26
	v_fma_f32 v56, -v37, v47, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_dual_fmac_f32 v45, v54, v45 :: v_dual_fmac_f32 v46, v55, v46
	v_fma_f32 v57, -v39, v48, 1.0
	v_div_scale_f32 v38, s1, v27, v0, v27
	v_fma_f32 v58, -v41, v49, 1.0
	v_fma_f32 v59, -v43, v50, 1.0
	v_dual_fmac_f32 v47, v56, v47 :: v_dual_mul_f32 v54, v34, v45
	v_mul_f32_e32 v55, v36, v46
	v_div_scale_f32 v40, s3, v28, v0, v28
	v_fmac_f32_e32 v48, v57, v48
	v_div_scale_f32 v42, s4, v29, v0, v29
	v_dual_fmac_f32 v49, v58, v49 :: v_dual_fmac_f32 v50, v59, v50
	v_fma_f32 v58, -v33, v54, v34
	v_fma_f32 v59, -v35, v55, v36
	v_dual_mul_f32 v56, v38, v47 :: v_dual_mul_f32 v57, v40, v48
	v_div_scale_f32 v44, null, v0, v0, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v54, v58, v45 :: v_dual_fmac_f32 v55, v59, v46
	v_fma_f32 v60, -v37, v56, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v39, v57, v40
	v_rcp_f32_e32 v53, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v33, v54, v34
	v_fma_f32 v34, -v35, v55, v36
	v_dual_fmac_f32 v56, v60, v47 :: v_dual_fmac_f32 v57, v70, v48
	v_div_scale_f32 v51, s5, v30, v0, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v45, v54
	v_fma_f32 v35, -v37, v56, v38
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v71, v42, v49
	v_fma_f32 v36, -v39, v57, v40
	v_div_fmas_f32 v34, v34, v46, v55
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v52, null, v0, v0, v32
	v_div_fmas_f32 v35, v35, v47, v56
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v58, -v41, v71, v42
	v_div_fixup_f32 v25, v33, v0, v25
	v_div_fmas_f32 v33, v36, v48, v57
	v_div_fixup_f32 v26, v34, v0, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v34, v51, v50 :: v_dual_fmac_f32 v71, v58, v49
	v_fma_f32 v36, -v44, v53, 1.0
	v_rcp_f32_e32 v37, v52
	v_div_fixup_f32 v28, v33, v0, v28
	v_fma_f32 v33, -v43, v34, v51
	v_div_fixup_f32 v27, v35, v0, v27
	v_fmac_f32_e32 v53, v36, v53
	v_div_scale_f32 v36, null, v0, v0, v17
	v_div_scale_f32 v35, s1, v31, v0, v31
	v_fmac_f32_e32 v34, v33, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v40, v36
	v_fma_f32 v38, -v52, v37, 1.0
	v_fma_f32 v39, -v41, v71, v42
	v_div_scale_f32 v46, null, v0, v0, v18
	v_fma_f32 v41, -v43, v34, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v37, v38, v37
	v_div_scale_f32 v38, s3, v32, v0, v32
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v45, -v36, v40, 1.0
	v_mul_f32_e32 v33, v35, v53
	v_div_fmas_f32 v39, v39, v49, v71
	s_mov_b32 vcc_lo, s5
	v_mul_f32_e32 v43, v38, v37
	v_div_fmas_f32 v34, v41, v50, v34
	v_rcp_f32_e32 v41, v46
	v_fmac_f32_e32 v40, v45, v40
	v_fma_f32 v42, -v44, v33, v35
	v_div_scale_f32 v45, s4, v17, v0, v17
	v_div_fixup_f32 v29, v39, v0, v29
	v_div_fixup_f32 v30, v34, v0, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v33, v42, v53
	v_fma_f32 v42, -v52, v43, v38
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v39, -v46, v41, 1.0
	v_div_scale_f32 v47, null, v0, v0, v20
	v_fma_f32 v34, -v44, v33, v35
	v_fmac_f32_e32 v43, v42, v37
	v_div_scale_f32 v42, null, v0, v0, v19
	v_mul_f32_e32 v35, v45, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v33, v34, v53, v33
	v_fma_f32 v34, -v52, v43, v38
	v_fmac_f32_e32 v41, v39, v41
	v_rcp_f32_e32 v39, v42
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v38, -v36, v35, v45
	v_div_scale_f32 v44, s1, v18, v0, v18
	v_div_fmas_f32 v34, v34, v37, v43
	v_rcp_f32_e32 v37, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_dual_fmac_f32 v35, v38, v40 :: v_dual_mul_f32 v38, v44, v41
	v_div_fixup_f32 v31, v33, v0, v31
	v_fma_f32 v43, -v42, v39, 1.0
	v_div_fixup_f32 v32, v34, v0, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fma_f32 v33, -v36, v35, v45
	v_fma_f32 v34, -v46, v38, v44
	v_div_scale_f32 v45, null, v0, v0, v21
	v_fmac_f32_e32 v39, v43, v39
	v_fma_f32 v43, -v47, v37, 1.0
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v36, s3, v19, v0, v19
	v_div_fmas_f32 v33, v33, v40, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v37, v43, v37
	v_rcp_f32_e32 v35, v45
	v_div_scale_f32 v43, null, v0, v0, v22
	v_fmac_f32_e32 v38, v34, v41
	v_mul_f32_e32 v34, v36, v39
	v_div_scale_f32 v40, s4, v20, v0, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v48, v43
	v_div_fixup_f32 v17, v33, v0, v17
	v_fma_f32 v33, -v46, v38, v44
	v_fma_f32 v44, -v42, v34, v36
	v_fma_f32 v49, -v45, v35, 1.0
	v_mul_f32_e32 v46, v40, v37
	s_mov_b32 vcc_lo, s1
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v56, v69, s68
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v33, v33, v41, v38
	v_fmac_f32_e32 v34, v44, v39
	v_fmac_f32_e32 v35, v49, v35
	v_fma_f32 v38, -v47, v46, v40
	v_div_scale_f32 v41, s1, v21, v0, v21
	v_fma_f32 v44, -v43, v48, 1.0
	v_div_fixup_f32 v18, v33, v0, v18
	v_fma_f32 v33, -v42, v34, v36
	v_fmac_f32_e32 v46, v38, v37
	v_mul_f32_e32 v36, v41, v35
	v_fmac_f32_e32 v48, v44, v48
	v_div_scale_f32 v38, s5, v22, v0, v22
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v42, null, v0, v0, v23
	v_div_fmas_f32 v33, v33, v39, v34
	v_fma_f32 v39, -v45, v36, v41
	v_mul_f32_e32 v44, v38, v48
	v_fma_f32 v34, -v47, v46, v40
	v_rcp_f32_e32 v40, v42
	v_div_fixup_f32 v19, v33, v0, v19
	v_fmac_f32_e32 v36, v39, v35
	v_fma_f32 v39, -v43, v44, v38
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v47, null, v0, v0, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v45, v36, v41
	v_fmac_f32_e32 v44, v39, v48
	v_div_fmas_f32 v34, v34, v37, v46
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v37, v47
	v_div_fmas_f32 v33, v33, v35, v36
	v_fma_f32 v35, -v43, v44, v38
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v46, -v42, v40, 1.0
	v_div_scale_f32 v45, null, v0, v0, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v35, v35, v48, v44
	v_div_fixup_f32 v20, v34, v0, v20
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v34, s3, v23, v0, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v22, v35, v0, v22
	v_rcp_f32_e32 v35, v45
	v_fma_f32 v39, -v47, v37, 1.0
	v_mul_f32_e32 v36, v34, v40
	v_div_scale_f32 v38, null, v0, v0, v9
	v_div_fixup_f32 v21, v33, v0, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v39, v37
	v_fma_f32 v43, -v42, v36, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v41, v38
	v_div_scale_f32 v39, s1, v24, v0, v24
	v_fma_f32 v46, -v45, v35, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v48, null, v0, v0, v12
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v57, v56, v67, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_fmac_f32 v35, v46, v35 :: v_dual_fmac_f32 v36, v43, v40
	v_fma_f32 v43, -v38, v41, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v50, v48
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s0, 0, v0
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	v_add_lshl_u32 v58, v56, v68, 2
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v34, -v42, v36, v34
	v_div_scale_f32 v42, null, v0, v0, v11
	v_fmac_f32_e32 v41, v43, v41
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v59, v56, v66, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v34, v34, v40, v36
	v_rcp_f32_e32 v43, v42
	v_div_scale_f32 v40, s3, v10, v0, v10
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v23, v34, v0, v23
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v49, v40, v35
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	v_cndmask_b32_e64 v19, 0, v19, s0
	v_cndmask_b32_e64 v20, 0, v20, s0
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v46, -v42, v43, 1.0
	v_mul_f32_e32 v44, v39, v37
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	v_cndmask_b32_e64 v22, 0, v22, s0
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v43, v46, v43
	v_fma_f32 v33, -v47, v44, v39
	v_div_scale_f32 v46, s5, v11, v0, v11
	.loc	1 843 74 is_stmt 1              ; attention.py:843:74
	v_or_b32_e32 v54, 60, v67
	v_or_b32_e32 v55, 62, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v44, v33, v37
	v_div_scale_f32 v33, s4, v9, v0, v9
	v_fma_f32 v36, -v47, v44, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v36, v37, v44
	v_dual_mul_f32 v44, v46, v43 :: v_dual_mul_f32 v39, v33, v41
	v_fma_f32 v37, -v45, v49, v40
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v24, v36, v0, v24
	v_fma_f32 v34, -v42, v44, v46
	v_fma_f32 v47, -v38, v39, v33
	v_fmac_f32_e32 v49, v37, v35
	v_div_scale_f32 v37, null, v0, v0, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v44, v34, v43 :: v_dual_fmac_f32 v39, v47, v41
	v_fma_f32 v36, -v48, v50, 1.0
	v_rcp_f32_e32 v34, v37
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v33, -v38, v39, v33
	v_fma_f32 v38, -v45, v49, v40
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s1, v12, v0, v12
	v_div_fmas_f32 v33, v33, v41, v39
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v41, -v37, v34, 1.0
	v_div_fmas_f32 v35, v38, v35, v49
	v_fma_f32 v38, -v42, v44, v46
	s_mov_b32 vcc_lo, s5
	v_mul_f32_e32 v39, v36, v50
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s3, v13, v0, v13
	v_div_fmas_f32 v38, v38, v43, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v48, v39, v36
	v_div_fixup_f32 v9, v33, v0, v9
	v_mul_f32_e32 v33, v41, v34
	v_div_scale_f32 v40, null, v0, v0, v14
	v_div_fixup_f32 v11, v38, v0, v11
	v_div_scale_f32 v38, null, v0, v0, v15
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v10, v35, v0, v10
	v_rcp_f32_e32 v44, v38
	v_fmac_f32_e32 v39, v43, v50
	v_fma_f32 v43, -v37, v33, v41
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	v_cndmask_b32_e64 v10, 0, v10, s0
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v36, -v48, v39, v36
	v_fmac_f32_e32 v33, v43, v34
	v_div_scale_f32 v43, null, v0, v0, v16
	v_fma_f32 v35, -v40, v42, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v36, v50, v39
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v45, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v42, v35, v42
	v_div_fixup_f32 v12, v36, v0, v12
	v_fma_f32 v36, -v37, v33, v41
	v_fma_f32 v41, -v38, v44, 1.0
	v_div_scale_f32 v35, s4, v14, v0, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v33, v36, v34, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v0, v0, v2
	v_div_scale_f32 v34, null, v0, v0, v1
	v_div_fixup_f32 v13, v33, v0, v13
	v_fma_f32 v33, -v43, v45, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v47, v41
	v_div_scale_f32 v36, s1, v15, v0, v15
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v33, v45
	v_div_scale_f32 v33, s3, v16, v0, v16
	v_mul_f32_e32 v39, v35, v42
	v_div_scale_f32 v48, s4, v1, v0, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v41, v47, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v37, -v40, v39, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v2, v0, v2
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v35, -v40, v39, v35
	v_mul_f32_e32 v40, v36, v44
	v_fma_f32 v46, -v34, v37, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v0, v0, v3
	v_mul_f32_e32 v51, v48, v37
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v33, v45
	v_rcp_f32_e32 v50, v46
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v14, v35, v0, v14
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v35, -v38, v40, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v50, 1.0
	v_fma_f32 v33, -v43, v42, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v51, v36, v37
	v_fma_f32 v36, -v41, v38, v49
	v_div_fmas_f32 v35, v35, v44, v40
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v50, v39, v50
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_div_fmas_f32 v33, v33, v45, v42
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v39, s1, v3, v0, v3
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v36, v39, v50
	v_div_scale_f32 v40, null, v0, v0, v4
	v_div_fmas_f32 v37, v37, v47, v38
	v_div_fixup_f32 v15, v35, v0, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v46, v36, v39
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v16, v33, v0, v16
	v_div_fixup_f32 v2, v37, v0, v2
	v_div_scale_f32 v37, null, v0, v0, v7
	v_fmac_f32_e32 v36, v41, v50
	v_div_fixup_f32 v1, v34, v0, v1
	v_div_scale_f32 v34, null, v0, v0, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v41, v37
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v44, null, v0, v0, v8
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v0, v0, v6
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v48, -v37, v41, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v1, 0, v1, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v41, v48, v41
	v_fma_f32 v33, -v46, v36, v39
	v_rcp_f32_e32 v39, v35
	v_rcp_f32_e32 v46, v44
	v_div_scale_f32 v48, s4, v7, v0, v7
	v_div_fmas_f32 v33, v33, v50, v36
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v38, vcc_lo, v4, v0, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v52, v48, v41
	v_div_fixup_f32 v3, v33, v0, v3
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v45, -v35, v39, 1.0
	v_fma_f32 v50, -v44, v46, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v33, -v34, v36, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v6, v0, v6
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s1, v5, v0, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v51, v45, v39
	v_mul_f32_e32 v43, v38, v42
	v_mul_f32_e32 v49, v33, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v40, v43, v38
	v_fmac_f32_e32 v43, v47, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v34, v49, v33
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s5, v8, v0, v8
	v_fma_f32 v38, -v40, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v49, v47, v36
	v_fma_f32 v47, -v37, v52, v48
	v_mul_f32_e32 v53, v50, v46
	v_fma_f32 v40, -v35, v51, v45
	v_div_fmas_f32 v38, v38, v42, v43
	v_fma_f32 v33, -v34, v49, v33
	v_fmac_f32_e32 v52, v47, v41
	v_fma_f32 v34, -v44, v53, v50
	v_fmac_f32_e32 v51, v40, v39
	s_mov_b32 vcc_lo, s1
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s68, v67
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v33, v33, v36, v49
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v35, -v35, v51, v45
	v_fma_f32 v34, -v37, v52, v48
	s_mov_b32 vcc_lo, s3
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s3, s68, v68
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v36, -v44, v53, v50
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s4
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s4, s68, v66
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s1, s2, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v57, 0x80000000, v57, s1
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s1, s2, s3
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v4, v38, v0, v4
	v_div_fixup_f32 v5, v33, v0, v5
	v_div_fixup_f32 v6, v35, v0, v6
	v_div_fixup_f32 v7, v34, v0, v7
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v8, 0, v25, s0
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	v_cndmask_b32_e64 v58, 0x80000000, v58, s1
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s1, s2, s4
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v25, 0, v26, s0
	v_cndmask_b32_e64 v26, 0, v27, s0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s5, s68, v65
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v59, 0x80000000, v59, s1
	buffer_store_b32 v8, v57, s[52:55], 0 offen
	v_add_lshl_u32 v8, v56, v65, 2
	s_clause 0x1
	buffer_store_b32 v25, v58, s[52:55], 0 offen
	buffer_store_b32 v26, v59, s[52:55], 0 offen
	v_add_lshl_u32 v25, v56, v63, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s5
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v26, v56, v64, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s6
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v27, 0, v28, s0
	v_cndmask_b32_e64 v28, 0, v29, s0
	v_cndmask_b32_e64 v29, 0, v30, s0
	v_cndmask_b32_e64 v30, 0, v31, s0
	v_cndmask_b32_e64 v31, 0, v32, s0
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v32, 16, v67
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v57, v56, v62, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s7
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v33, 18, v67
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s8
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v34, 20, v67
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s10, s68, v32
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v57, 0x80000000, v57, s3
	s_clause 0x1
	buffer_store_b32 v27, v8, s[52:55], 0 offen
	buffer_store_b32 v28, v25, s[52:55], 0 offen
	v_add_lshl_u32 v8, v56, v61, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s11, s68, v33
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v25, v56, v32, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s9
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v35, 22, v67
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s12, s68, v34
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v29, v26, s[52:55], 0 offen
	buffer_store_b32 v30, v57, s[52:55], 0 offen
	v_add_lshl_u32 v26, v56, v33, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s10
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v36, 24, v67
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v27, v56, v34, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s11
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v37, 26, v67
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s13, s68, v35
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s12
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v38, 28, v67
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s14, s68, v36
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	s_clause 0x1
	buffer_store_b32 v31, v8, s[52:55], 0 offen
	buffer_store_b32 v17, v25, s[52:55], 0 offen
	v_add_lshl_u32 v8, v56, v35, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s15, s68, v37
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v17, v56, v36, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s13
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v39, 30, v67
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s16, s68, v38
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v18, v26, s[52:55], 0 offen
	buffer_store_b32 v19, v27, s[52:55], 0 offen
	v_add_lshl_u32 v18, v56, v37, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s14
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v40, 32, v67
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v19, v56, v38, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s15
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v41, 34, v67
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s17, s68, v39
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s16
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v42, 36, v67
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s18, s68, v40
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	s_clause 0x1
	buffer_store_b32 v20, v8, s[52:55], 0 offen
	buffer_store_b32 v21, v17, s[52:55], 0 offen
	v_add_lshl_u32 v8, v56, v39, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s19, s68, v41
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v17, v56, v40, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s17
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v43, 38, v67
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s20, s68, v42
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v22, v18, s[52:55], 0 offen
	buffer_store_b32 v23, v19, s[52:55], 0 offen
	v_add_lshl_u32 v18, v56, v41, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s18
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v44, 40, v67
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v19, v56, v42, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s19
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v45, 42, v67
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s21, s68, v43
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s20
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v46, 44, v67
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s22, s68, v44
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	s_clause 0x1
	buffer_store_b32 v24, v8, s[52:55], 0 offen
	buffer_store_b32 v9, v17, s[52:55], 0 offen
	v_add_lshl_u32 v8, v56, v43, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s23, s68, v45
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v9, v56, v44, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s21
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v47, 46, v67
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s24, s68, v46
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v10, v18, s[52:55], 0 offen
	buffer_store_b32 v11, v19, s[52:55], 0 offen
	v_add_lshl_u32 v10, v56, v45, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s22
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v48, 48, v67
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v11, v56, v46, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s23
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v49, 50, v67
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s25, s68, v47
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s24
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v50, 52, v67
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s26, s68, v48
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	s_clause 0x1
	buffer_store_b32 v12, v8, s[52:55], 0 offen
	buffer_store_b32 v13, v9, s[52:55], 0 offen
	v_add_lshl_u32 v8, v56, v47, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s27, s68, v49
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v9, v56, v48, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s25
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s28, s68, v50
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v14, v10, s[52:55], 0 offen
	buffer_store_b32 v15, v11, s[52:55], 0 offen
	v_add_lshl_u32 v10, v56, v49, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s26
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v51, 54, v67
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v11, v56, v50, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s27
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v52, 56, v67
	v_or_b32_e32 v53, 58, v67
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s28
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s29, s68, v51
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s30, s68, v52
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v16, v8, s[52:55], 0 offen
	buffer_store_b32 v1, v9, s[52:55], 0 offen
	v_add_lshl_u32 v1, v56, v51, 2
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s0, s68, v53
	v_cmp_gt_i32_e32 vcc_lo, s68, v54
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x1
	buffer_store_b32 v2, v10, s[52:55], 0 offen
	buffer_store_b32 v3, v11, s[52:55], 0 offen
	v_add_lshl_u32 v2, v56, v52, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s68, v55
	.loc	1 844 24 is_stmt 0              ; attention.py:844:24
	s_and_b32 s3, s2, s29
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	v_add_lshl_u32 v3, v56, v53, 2
	v_add_lshl_u32 v8, v56, v54, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s30
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v9, v56, v55, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s0, s2, s0
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[52:55], 0 offen
	buffer_store_b32 v5, v2, s[52:55], 0 offen
	buffer_store_b32 v6, v3, s[52:55], 0 offen
	buffer_store_b32 v7, v8, s[52:55], 0 offen
	buffer_store_b32 v0, v9, s[52:55], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp237:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 226
		.amdhsa_next_free_sgpr 82
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_vgpr, 226
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.numbered_sgpr, 82
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14972
; TotalNumSgprs: 84
; NumVgprs: 226
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 28
; NumSGPRsForWavesPerEU: 84
; NumVGPRsForWavesPerEU: 226
; Occupancy: 6
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
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
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
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
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
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     84
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     226
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
