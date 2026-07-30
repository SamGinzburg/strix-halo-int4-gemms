	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
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
	v_lshrrev_b32_e32 v78, 5, v0
	s_load_b64 s[28:29], s[0:1], 0x0
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v19, 0x198, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v79, 4, v78
	v_or_b32_e32 v80, 8, v78
	v_or_b32_e32 v81, 12, v78
	v_and_b32_e32 v33, 0x60, v0
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v18, 0x110, v0
	v_add_nc_u32_e32 v85, 0, v0
	s_mov_b32 s69, 0
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v84, 15, v0
	v_lshrrev_b32_e32 v34, 1, v33
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v89, 0, v18
	v_add_nc_u32_e32 v90, 0, v19
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
	v_or_b32_e32 v3, s18, v80
	.loc	1 566 23                        ; attention.py:566:23
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v4, s18, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 566 23                        ; attention.py:566:23
	v_readfirstlane_b32 s4, v1
	.loc	1 584 86                        ; attention.py:584:86
	v_and_b32_e32 v1, 31, v0
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[50:51], null, s54, v78, v[1:2]
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e64 s20, s54, v1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 566 23                        ; attention.py:566:23
	s_cvt_u32_f32 s4, s4
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v1, s18, v78
	.loc	1 570 21 is_stmt 0              ; attention.py:570:21
	v_or_b32_e32 v2, s18, v79
	.loc	1 566 23 is_stmt 1              ; attention.py:566:23
	s_mul_i32 s5, s5, s4
	.loc	1 584 26                        ; attention.py:584:26
	v_lshl_add_u32 v82, s54, 2, v50
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
	v_mad_u64_u32 v[51:52], null, s54, 12, v[50:51]
	.loc	1 568 22                        ; attention.py:568:22
	v_readfirstlane_b32 s6, v8
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s42, v4
	.loc	1 584 26                        ; attention.py:584:26
	v_lshl_add_u32 v83, s54, 3, v50
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
	v_add_nc_u32_e32 v1, s34, v50
	v_add_nc_u32_e32 v13, s34, v82
	v_add_nc_u32_e32 v14, s34, v83
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s17, s42, v17
	.loc	1 584 26                        ; attention.py:584:26
	v_add_nc_u32_e32 v15, s34, v51
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
	v_add_nc_u32_e32 v88, 0, v1
	.loc	1 606 15                        ; attention.py:606:15
	s_lshr_b32 s2, s2, 28
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v1, v34, v84
	.loc	1 606 15                        ; attention.py:606:15
	s_add_i32 s9, s9, s2
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(15)
	ds_store_b8 v85, v16
	s_waitcnt vmcnt(12)
	ds_store_b8 v85, v15 offset:512
	s_waitcnt vmcnt(9)
	ds_store_b8 v85, v4 offset:1024
	s_waitcnt vmcnt(8)
	ds_store_b8 v85, v8 offset:1536
	ds_store_b8 v88, v12
	ds_store_b8 v88, v2 offset:512
	s_waitcnt vmcnt(7)
	ds_store_b8 v88, v5 offset:1024
	s_waitcnt vmcnt(6)
	ds_store_b8 v88, v9 offset:1536
	ds_store_b8 v89, v13
	ds_store_b8 v89, v3 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v89, v6 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v89, v10 offset:1536
	s_waitcnt vmcnt(3)
	ds_store_b8 v90, v14
	s_waitcnt vmcnt(2)
	ds_store_b8 v90, v17 offset:512
	s_waitcnt vmcnt(1)
	ds_store_b8 v90, v7 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v90, v11 offset:1536
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
	v_dual_mov_b32 v8, 0 :: v_dual_add_nc_u32 v77, s22, v1
	.loc	1 571 21 is_stmt 1              ; attention.py:571:21
	v_bfe_u32 v75, v0, 4, 1
	v_cmp_gt_i32_e64 s2, s42, v2
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v86, 0x70, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v6, v8 :: v_dual_and_b32 v87, 64, v0
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v76, 2, v75
	v_or_b32_e32 v74, 4, v75
	v_or_b32_e32 v73, 6, v75
	v_or_b32_e32 v71, 8, v75
	v_or_b32_e32 v72, 10, v75
	v_or_b32_e32 v70, 12, v75
	v_or_b32_e32 v69, 14, v75
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
	v_mov_b32_e32 v45, v8
	v_mov_b32_e32 v44, v8
	v_mov_b32_e32 v49, v8
	v_mov_b32_e32 v48, v8
	v_mov_b32_e32 v43, v8
	v_mov_b32_e32 v42, v8
	v_mov_b32_e32 v47, v8
	v_mov_b32_e32 v46, v8
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_ge_i32 s69, s70
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[44:51], s[0:1], 0x8
	v_dual_mov_b32 v12, 0x5410 :: v_dual_lshlrev_b32 v1, 1, v77
	s_clause 0x2
	s_load_b32 s71, s[0:1], 0x7c
	s_load_b128 s[56:59], s[0:1], 0x28
	s_load_b128 s[12:15], s[0:1], 0x6c
	v_dual_mov_b32 v184, 0xff800000 :: v_dual_and_b32 v3, 16, v0
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v182, 0xff800000 :: v_dual_lshlrev_b32 v5, 3, v0
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v6, 14, v0
	v_and_b32_e32 v38, 1, v0
	v_dual_mov_b32 v183, 0xff800000 :: v_dual_lshlrev_b32 v10, 2, v33
	v_dual_mov_b32 v180, 0xff800000 :: v_dual_lshlrev_b32 v11, 2, v86
	v_lshrrev_b32_e32 v7, 4, v0
	v_dual_mov_b32 v193, 0xff800000 :: v_dual_lshlrev_b32 v8, 1, v87
	v_lshlrev_b32_e32 v4, 5, v84
	s_waitcnt lgkmcnt(0)
	s_and_b32 s29, s49, 0xffff
	s_mov_b32 s28, s48
	v_dual_mov_b32 v40, 0x7632 :: v_dual_lshlrev_b32 v37, 4, v33
	buffer_load_u16 v35, v1, s[28:31], 0 offen
	v_lshrrev_b32_e32 v39, 3, v33
	v_mov_b32_e32 v33, 0
	v_mov_b32_e32 v1, 0
	v_and_b32_e32 v43, 0x378, v5
	v_lshl_or_b32 v55, v84, 3, v10
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v32, v33 :: v_dual_lshlrev_b32 v57, 1, v6
	v_lshl_or_b32 v59, v6, 8, v11
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	v_lshlrev_b32_e32 v58, 5, v38
	.loc	1 570 31 is_stmt 1              ; attention.py:570:31
	v_lshrrev_b32_e32 v36, 4, v86
	v_dual_mov_b32 v28, v33 :: v_dual_lshlrev_b32 v45, 7, v6
	v_lshrrev_b32_e32 v48, 1, v3
	v_and_or_b32 v49, v7, 2, v8
	v_lshrrev_b32_e32 v44, 2, v3
	v_dual_cndmask_b32 v61, 0x1054, v12 :: v_dual_mov_b32 v26, v33
	v_xor_b32_e32 v43, v43, v34
	v_xor_b32_e32 v34, v55, v34
	v_or3_b32 v107, v59, v58, v57
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v2, 1, v0
	v_dual_mov_b32 v189, 0xff800000 :: v_dual_lshlrev_b32 v46, 3, v6
	v_or_b32_e32 v42, s18, v36
	v_dual_mov_b32 v30, v33 :: v_dual_lshlrev_b32 v47, 2, v38
	v_or3_b32 v45, v49, v45, v48
	v_or_b32_e32 v120, v34, v44
	v_xor_b32_e32 v34, 4, v107
	s_xor_b32 s8, s3, s40
	s_mul_f32 s7, s6, 0x4f7ffffe
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v52, 63, v0
	v_and_or_b32 v94, v2, 24, v4
	.loc	1 771 51                        ; attention.py:771:51
	v_lshrrev_b32_e32 v92, 6, v87
	s_ashr_i32 s1, s8, 31
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v63, 48, v42
	v_or_b32_e32 v64, 32, v42
	v_or3_b32 v119, v45, v47, v46
	s_xor_b32 s8, s19, s1
	s_cvt_u32_f32 s7, s7
	v_dual_mov_b32 v15, v33 :: v_dual_add_nc_u32 v128, 0, v34
	v_mul_lo_u32 v34, s15, v36
	s_sub_i32 s6, 0, s16
	v_lshl_add_u32 v41, v87, 2, 0
	v_dual_mov_b32 v191, 0xff800000 :: v_dual_lshlrev_b32 v56, 6, v6
	v_and_or_b32 v60, v2, 60, v37
	v_dual_mov_b32 v27, v33 :: v_dual_lshlrev_b32 v62, 1, v52
	s_sub_i32 s19, s8, s1
	v_or_b32_e32 v37, v94, v37
	v_dual_mov_b32 v21, v33 :: v_dual_add_nc_u32 v114, s27, v64
	v_dual_mov_b32 v23, v33 :: v_dual_add_nc_u32 v116, s27, v63
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[53:54], null, s68, v92, v[52:53]
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s8, s42, v64
	v_cmp_gt_i32_e64 s10, s42, v63
	v_xor_b32_e32 v63, 48, v119
	v_xor_b32_e32 v64, 64, v119
	s_mul_i32 s1, s19, s40
	s_mul_i32 s6, s6, s7
	s_sub_i32 s3, s3, s1
	s_mul_hi_u32 s6, s7, s6
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v65, 16, v42
	v_mov_b16_e32 v91.l, 0
	v_mov_b32_e32 v18, v33
	v_or_b32_e32 v66, 56, v42
	v_or_b32_e32 v67, 40, v42
	v_or_b32_e32 v68, 24, v42
	v_or_b32_e32 v118, 8, v42
	v_or3_b32 v49, v47, v56, v78
	v_xor_b32_e32 v39, v60, v39
	v_lshl_or_b32 v56, v61, 8, v61
	s_abs_i32 s22, s3
	s_add_i32 s7, s7, s6
	v_xad_u32 v57, v37, 8, 0
	v_add_nc_u32_e32 v153, 0, v63
	v_add_nc_u32_e32 v154, 0, v64
	s_ashr_i32 s5, s5, 31
	v_dual_mov_b32 v31, v33 :: v_dual_cndmask_b32 v40, 0x3276, v40
	s_ashr_i32 s6, s3, 31
	v_xad_u32 v59, v37, 16, 0
	s_mul_hi_u32 s23, s22, s7
	v_dual_mov_b32 v19, v33 :: v_dual_add_nc_u32 v112, s27, v65
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[54:55], null, s68, 6, v[53:54]
	.loc	1 569 19                        ; attention.py:569:19
	s_xor_b32 s24, s6, s5
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s6, s42, v65
	v_xor_b32_e32 v65, 0x50, v119
	v_dual_mov_b32 v29, v33 :: v_dual_add_nc_u32 v106, s27, v42
	v_dual_mov_b32 v20, v33 :: v_dual_add_nc_u32 v111, s27, v118
	v_dual_mov_b32 v22, v33 :: v_dual_add_nc_u32 v113, s27, v68
	v_dual_mov_b32 v24, v33 :: v_dual_add_nc_u32 v115, s27, v67
	v_dual_mov_b32 v10, v33 :: v_dual_add_nc_u32 v117, s27, v66
	v_mov_b32_e32 v11, v33
	v_lshl_or_b32 v122, v38, 6, v39
	v_and_b32_e32 v38, 0x540054, v56
	.loc	1 569 19                        ; attention.py:569:19
	s_mul_i32 s27, s23, s16
	v_lshl_or_b32 v39, v40, 8, v40
	s_sub_i32 s22, s22, s27
	s_ashr_i32 s17, s9, 4
	s_add_i32 s27, s23, 1
	s_sub_i32 s28, s22, s16
	v_add_nc_u32_e32 v155, 0, v65
	s_cmp_ge_u32 s22, s16
	v_dual_mov_b32 v2, v33 :: v_dual_and_b32 v39, 0x760076, v39
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s1, s42, v42
	v_xor_b32_e32 v42, 8, v94
	v_cmp_gt_i32_e64 s5, s42, v118
	v_cmp_gt_i32_e64 s11, s42, v66
	v_or_b32_e32 v118, v43, v44
	v_or3_b32 v121, v49, v46, v48
	v_xor_b32_e32 v43, 8, v107
	v_xor_b32_e32 v44, 12, v107
	v_xor_b32_e32 v45, 16, v107
	v_xor_b32_e32 v46, 20, v107
	v_xor_b32_e32 v47, 24, v107
	v_xor_b32_e32 v48, 28, v107
	.loc	1 754 27                        ; attention.py:754:27
	s_mul_i32 s3, s3, s14
	v_xor_b32_e32 v66, 0x60, v119
	.loc	1 569 19                        ; attention.py:569:19
	s_cselect_b32 s14, s27, s23
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s7, s42, v68
	v_cmp_gt_i32_e64 s9, s42, v67
	.loc	1 742 27                        ; attention.py:742:27
	s_mul_f32 s42, s12, 0x3fb8aa3b
	.loc	1 752 25                        ; attention.py:752:25
	s_mul_i32 s12, s15, s18
	v_xor_b32_e32 v67, 0x70, v119
	.loc	1 569 19                        ; attention.py:569:19
	s_cselect_b32 s18, s28, s22
	.loc	1 710 33                        ; attention.py:710:33
	s_mul_i32 s21, s19, s41
	.loc	1 753 27                        ; attention.py:753:27
	s_mul_i32 s13, s19, s13
	v_xor_b32_e32 v68, 0x240, v120
	.loc	1 569 19                        ; attention.py:569:19
	s_add_i32 s19, s14, 1
	s_cmp_ge_u32 s18, s16
	v_dual_mov_b32 v12, v33 :: v_dual_add_nc_u32 v123, 0, v42
	v_dual_mov_b32 v3, v33 :: v_dual_add_nc_u32 v130, 0, v44
	v_dual_mov_b32 v4, v33 :: v_dual_add_nc_u32 v129, 0, v43
	v_dual_mov_b32 v5, v33 :: v_dual_add_nc_u32 v132, 0, v46
	v_dual_mov_b32 v6, v33 :: v_dual_add_nc_u32 v131, 0, v45
	v_dual_mov_b32 v7, v33 :: v_dual_add_nc_u32 v134, 0, v48
	v_dual_mov_b32 v8, v33 :: v_dual_add_nc_u32 v133, 0, v47
	v_xor_b32_e32 v124, 16, v94
	v_xor_b32_e32 v125, 24, v94
	v_xor_b32_e32 v40, 0x440, v118
	v_xor_b32_e32 v42, 16, v119
	v_xor_b32_e32 v49, 32, v119
	v_xor_b32_e32 v159, 16, v121
	v_lshl_or_b32 v38, v38, 4, v38
	v_xor_b32_e32 v43, 32, v121
	v_xor_b32_e32 v44, 48, v121
	v_xor_b32_e32 v45, 64, v121
	v_xor_b32_e32 v46, 0x50, v121
	v_xor_b32_e32 v47, 0x60, v121
	v_xor_b32_e32 v48, 0x70, v121
	v_xor_b32_e32 v166, 0x810, v122
	v_lshl_or_b32 v36, v39, 4, v39
	v_add_nc_u32_e32 v156, 0, v66
	s_cselect_b32 s14, s19, s14
	v_add_nc_u32_e32 v157, 0, v67
	v_add_nc_u32_e32 v158, 0, v68
	s_add_i32 s81, s13, s12
	s_xor_b32 s12, s14, s24
	s_add_i32 s81, s81, s3
	s_sub_i32 s3, s12, s24
	v_lshl_add_u32 v93, v84, 1, 0
	v_dual_mov_b32 v181, 0xff800000 :: v_dual_mov_b32 v178, 0xff800000
	v_dual_mov_b32 v179, 0xff800000 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v177, 0xff800000 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v186, 0xff800000
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v188, 0xff800000
	v_dual_mov_b32 v185, 0xff800000 :: v_dual_mov_b32 v190, 0xff800000
	v_dual_mov_b32 v187, 0xff800000 :: v_dual_mov_b32 v192, 0xff800000
	.loc	1 778 24                        ; attention.py:778:24
	v_cmp_gt_i32_e64 s0, s68, v52
	v_dual_mov_b32 v13, v33 :: v_dual_add_nc_u32 v124, 0, v124
	v_dual_mov_b32 v14, v33 :: v_dual_add_nc_u32 v125, 0, v125
	v_dual_mov_b32 v16, v33 :: v_dual_add_nc_u32 v127, s26, v106
	.loc	1 771 51                        ; attention.py:771:51
	v_or_b32_e32 v103, 2, v92
	v_or_b32_e32 v104, 4, v92
	v_or_b32_e32 v105, 6, v92
	.loc	1 707 13                        ; attention.py:707:13
	v_lshl_add_u32 v109, s68, 1, v53
	v_lshl_add_u32 v110, s68, 2, v53
	v_subrev_nc_u32_e32 v126, s25, v106
	v_subrev_nc_u32_e32 v135, s25, v111
	v_subrev_nc_u32_e32 v136, s25, v112
	v_subrev_nc_u32_e32 v137, s25, v113
	v_subrev_nc_u32_e32 v138, s25, v114
	v_subrev_nc_u32_e32 v139, s25, v115
	v_subrev_nc_u32_e32 v140, s25, v116
	v_subrev_nc_u32_e32 v141, s25, v117
	v_add_nc_u32_e32 v146, s26, v115
	v_add_nc_u32_e32 v148, s26, v117
	v_add_nc_u32_e32 v150, 0, v40
	v_add_nc_u32_e32 v151, 0, v42
	v_add_nc_u32_e32 v152, 0, v49
	v_add_nc_u32_e32 v159, 0, v159
	v_add_nc_u32_e32 v160, 0, v43
	v_add_nc_u32_e32 v161, 0, v44
	v_add_nc_u32_e32 v162, 0, v45
	v_add_nc_u32_e32 v163, 0, v46
	v_add_nc_u32_e32 v164, 0, v47
	v_add_nc_u32_e32 v165, 0, v48
	v_add_nc_u32_e32 v166, 0, v166
	v_and_b32_e32 v167, 0x7060706, v36
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	.loc	1 772 39                        ; attention.py:772:39
	s_lshl_b32 s80, s17, 3
	.loc	1 710 33                        ; attention.py:710:33
	s_add_i32 s84, s3, s21
	s_mov_b32 s72, 0x76543210
	s_mov_b32 s60, s50
	s_mov_b32 s48, s58
	s_mov_b32 s64, s46
	s_mov_b32 s46, s62
	.loc	1 742 17                        ; attention.py:742:17
	s_mov_b32 s73, s42
	s_mov_b32 s74, s42
	s_mov_b32 s75, s42
	s_mov_b32 s76, s42
	s_mov_b32 s77, s42
	s_mov_b32 s78, s42
	s_mov_b32 s79, s42
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s61, s51, 0xffff
	s_and_b32 s49, s59, 0xffff
	s_and_b32 s65, s47, 0xffff
	s_and_b32 s57, s57, 0xffff
	s_mov_b32 s47, s63
	.loc	1 710 32                        ; attention.py:710:32
	s_mul_i32 s82, s84, s43
	.loc	1 773 30                        ; attention.py:773:30
	s_mul_i32 s83, s84, s80
	.loc	1 794 21                        ; attention.py:794:21
	s_mul_i32 s84, s84, s17
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v91.h, v35.l
	v_add_nc_u32_e32 v108, v41, v62
	v_add_nc_u32_e32 v41, 0, v37
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[63:64], null, s71, v84, v[34:35]
	v_xad_u32 v37, v37, 24, 0
	ds_load_b64 v[55:56], v41
	ds_load_b64 v[57:58], v57
	ds_load_b64 v[59:60], v59
	ds_load_b64 v[61:62], v37
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mov_b32 v173, v91 :: v_dual_add_nc_u32 v142, s26, v111
	v_add_nc_u32_e32 v143, s26, v112
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[64:65], null, s15, 24, v[63:64]
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mov_b32 v175, v91 :: v_dual_add_nc_u32 v144, s26, v113
	v_dual_mov_b32 v172, v91 :: v_dual_add_nc_u32 v145, s26, v114
	v_dual_mov_b32 v174, v91 :: v_dual_add_nc_u32 v147, s26, v116
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[65:66], null, s15, 40, v[63:64]
	v_mad_u64_u32 v[66:67], null, s15, 48, v[63:64]
	v_mad_u64_u32 v[67:68], null, s15, 56, v[63:64]
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mov_b32 v176, v91 :: v_dual_and_b32 v149, 0x5040504, v38
	.loc	1 707 13                        ; attention.py:707:13
	v_lshl_add_u32 v168, s15, 3, v63
	v_lshl_add_u32 v169, s15, 4, v63
	v_lshl_add_u32 v170, s15, 5, v63
	.loc	1 732 30                        ; attention.py:732:30
	v_mov_b32_e32 v68, v91
	v_mov_b32_e32 v171, v91
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 752 25                        ; attention.py:752:25
	s_mul_i32 s3, s69, s71
	.loc	1 761 36                        ; attention.py:761:36
	s_mov_b32 s50, s62
	.loc	1 752 25                        ; attention.py:752:25
	s_add_i32 s3, s81, s3
	.loc	1 761 36                        ; attention.py:761:36
	s_mov_b32 s51, s63
	v_add_lshl_u32 v43, s3, v168, 1
	v_add_lshl_u32 v44, s3, v169, 1
	v_add_lshl_u32 v45, s3, v170, 1
	v_add_lshl_u32 v42, s3, v63, 1
	v_add_lshl_u32 v48, s3, v65, 1
	v_cndmask_b32_e64 v47, 0x80000000, v43, s31
	v_cndmask_b32_e64 v43, 0x80000000, v44, s30
	v_add_lshl_u32 v44, s3, v66, 1
	v_add_lshl_u32 v49, s3, v67, 1
	v_add_lshl_u32 v46, s3, v64, 1
	v_cndmask_b32_e64 v45, 0x80000000, v45, s37
	v_cndmask_b32_e64 v42, 0x80000000, v42, s29
	v_cndmask_b32_e64 v44, 0x80000000, v44, s38
	v_cndmask_b32_e64 v48, 0x80000000, v48, s35
	v_cndmask_b32_e64 v49, 0x80000000, v49, s36
	v_cndmask_b32_e64 v203, 0x80000000, v46, s34
	s_clause 0x7
	buffer_load_u16 v46, v44, s[48:51], 0 offen
	buffer_load_u16 v45, v45, s[48:51], 0 offen
	buffer_load_u16 v44, v43, s[48:51], 0 offen
	buffer_load_u16 v43, v42, s[48:51], 0 offen
	buffer_load_u16 v194, v49, s[48:51], 0 offen
	buffer_load_u16 v49, v48, s[48:51], 0 offen
	buffer_load_u16 v48, v203, s[48:51], 0 offen
	buffer_load_u16 v47, v47, s[48:51], 0 offen
	.loc	1 785 30                        ; attention.py:785:30
	v_mov_b16_e32 v42.l, 0
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v203, v41
	v_cvt_f32_i32_e32 v215, v36
	v_cvt_f32_i32_e32 v216, v35
	v_cvt_f32_i32_e32 v217, v34
	.loc	1 771 36                        ; attention.py:771:36
	s_lshr_b32 s3, s69, 1
	.loc	1 727 37                        ; attention.py:727:37
	s_waitcnt vmcnt(15)
	v_mov_b16_e64 v42.h, v195.l
	.loc	1 771 36                        ; attention.py:771:36
	v_or_b32_e32 v218, s3, v92
	v_or_b32_e32 v219, s3, v103
	v_or_b32_e32 v220, s3, v104
	v_or_b32_e32 v221, s3, v105
	.loc	1 774 30                        ; attention.py:774:30
	s_add_i32 s3, s3, s83
	.loc	1 727 37                        ; attention.py:727:37
	s_waitcnt vmcnt(14)
	v_mov_b16_e64 v195.h, v196.l
	s_waitcnt vmcnt(13)
	v_mov_b16_e64 v196.h, v197.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e64 v200.h, v201.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v201.h, v202.l
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v211, v40
	v_cvt_f32_i32_e32 v214, v37
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v208, v190, v190 :: v_dual_mul_f32 v217, v91, v217
	.loc	1 774 30                        ; attention.py:774:30
	s_mul_i32 s3, s3, s68
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e64 v195.l, v42.l
	v_mov_b16_e64 v196.l, v42.l
	v_mov_b16_e64 v201.l, v42.l
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v216, v68, v216 :: v_dual_add_nc_u32 v231, s3, v54
	v_dual_mul_f32 v222, v171, v215 :: v_dual_mul_f32 v223, v172, v214
	v_mul_f32_e32 v203, v176, v203
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v40, v184, v184 :: v_dual_add_nc_u32 v37, 0, v119
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v226, v175, v211
	v_add_nc_u32_e32 v184, s3, v53
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v201, v203, v201 :: v_dual_add_nc_u32 v230, s3, v110
	v_dual_mul_f32 v196, v222, v196 :: v_dual_mul_f32 v195, v216, v195
	v_mul_f32_e32 v203, v217, v42
	.loc	1 798 53                        ; attention.py:798:53
	s_lshr_b32 s21, s69, 4
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v212, v39
	v_cvt_f32_i32_e32 v213, v38
	.loc	1 798 25                        ; attention.py:798:25
	s_add_i32 s21, s21, s84
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v41, v183, v183 :: v_dual_add_nc_u32 v34, 0, v118
	.loc	1 762 35                        ; attention.py:762:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 798 25                        ; attention.py:798:25
	s_mul_i32 s21, s21, s68
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e64 v197.h, v198.l
	v_mov_b16_e64 v198.h, v199.l
	v_mov_b16_e64 v199.h, v200.l
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v210, v192, v192 :: v_dual_add_nc_u32 v229, s3, v109
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e64 v197.l, v42.l
	v_mov_b16_e64 v198.l, v42.l
	v_mov_b16_e64 v199.l, v42.l
	v_mov_b16_e64 v200.l, v42.l
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v224, v173, v213 :: v_dual_mul_f32 v225, v174, v212
	.loc	1 797 41                        ; attention.py:797:41
	v_add_lshl_u32 v232, s21, v52, 1
	.loc	1 777 27                        ; attention.py:777:27
	v_cmp_gt_i32_e64 s3, s80, v218
	.loc	1 782 31                        ; attention.py:782:31
	v_lshl_or_b32 v218, v218, 1, 1
	v_lshl_or_b32 v219, v219, 1, 1
	v_lshl_or_b32 v220, v220, 1, 1
	.loc	1 761 36                        ; attention.py:761:36
	v_mov_b16_e64 v228.l, v42.l
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v200, v226, v200 :: v_dual_mul_f32 v199, v225, v199
	v_dual_mul_f32 v198, v224, v198 :: v_dual_mul_f32 v197, v223, v197
	.loc	1 797 41                        ; attention.py:797:41
	v_cndmask_b32_e64 v222, 0x80000000, v232, s0
	.loc	1 777 26                        ; attention.py:777:26
	s_and_b32 s33, s0, s3
	.loc	1 782 30                        ; attention.py:782:30
	v_cmp_gt_i32_e64 s22, s43, v218
	v_cmp_gt_i32_e64 s21, s43, v219
	v_cmp_gt_i32_e64 s3, s43, v220
	.loc	1 761 36                        ; attention.py:761:36
	v_mov_b16_e64 v227.l, v42.l
	.loc	1 785 30                        ; attention.py:785:30
	v_mov_b16_e64 v215.h, v42.l
	v_mov_b16_e64 v214.h, v42.l
	v_mov_b16_e64 v213.h, v42.l
	v_mov_b16_e64 v212.h, v42.l
	.loc	1 816 30                        ; attention.py:816:30
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v43.h, v42.l
	v_mov_b16_e32 v44.h, v42.l
	v_mov_b16_e32 v46.h, v42.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v47.h, v42.l
	v_mov_b16_e32 v48.h, v42.l
	v_mov_b16_e32 v49.h, v42.l
	v_mov_b16_e64 v211.h, v42.l
	v_mov_b16_e64 v183.h, v42.l
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v182, v182, v182 :: v_dual_add_nc_u32 v35, 0, v120
	v_dual_max_f32 v179, v179, v179 :: v_dual_add_nc_u32 v36, 0, v121
	v_dual_max_f32 v180, v180, v180 :: v_dual_add_nc_u32 v39, 0, v107
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v184, 0x80000000, v184, s33
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v181, v181, v181 :: v_dual_add_nc_u32 v38, 0, v122
	.loc	1 775 32                        ; attention.py:775:32
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	.loc	1 797 41                        ; attention.py:797:41
	s_mov_b32 s58, s62
	s_mov_b32 s59, s63
	.loc	1 782 31                        ; attention.py:782:31
	v_lshl_or_b32 v221, v221, 1, 1
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s19, 0xff800000, v193
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v202, v185, v185 :: v_dual_max_f32 v205, v187, v187
	v_dual_max_f32 v178, v178, v178 :: v_dual_max_f32 v177, v177, v177
	v_dual_max_f32 v204, v186, v186 :: v_dual_max_f32 v207, v189, v189
	v_dual_max_f32 v206, v188, v188 :: v_dual_max_f32 v209, v191, v191
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s18, 0xff800000, v185
	v_cmp_neq_f32_e64 s17, 0xff800000, v186
	v_cmp_neq_f32_e64 s16, 0xff800000, v187
	v_cmp_neq_f32_e64 s15, 0xff800000, v188
	v_cmp_neq_f32_e64 s14, 0xff800000, v189
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v192
	v_cmp_neq_f32_e64 s12, 0xff800000, v191
	v_cmp_neq_f32_e64 s13, 0xff800000, v190
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s69, s69, 16
	.loc	1 763 25                        ; attention.py:763:25
	.loc	1 761 36                        ; attention.py:761:36
	v_cndmask_b16 v45.h, 0xff80, v46.l, s38
	v_cndmask_b16 v45.l, 0xff80, v45.l, s37
	v_cndmask_b16 v216.h, 0xff80, v44.l, s30
	v_cndmask_b16 v216.l, 0xff80, v43.l, s29
	v_cndmask_b16 v194.h, 0xff80, v194.l, s36
	v_cndmask_b16 v194.l, 0xff80, v49.l, s35
	v_cndmask_b16 v217.h, 0xff80, v48.l, s34
	v_cndmask_b16 v217.l, 0xff80, v47.l, s31
	v_mov_b16_e64 v42.h, v216.l
	.loc	1 762 35                        ; attention.py:762:35
	ds_store_2addr_b32 v34, v216, v45 offset1:32
	.loc	1 761 36                        ; attention.py:761:36
	v_mov_b16_e64 v228.h, v194.l
	v_mov_b16_e64 v216.l, v42.l
	.loc	1 762 35                        ; attention.py:762:35
	ds_store_2addr_b32 v150, v217, v194 offset1:32
	.loc	1 761 36                        ; attention.py:761:36
	v_mov_b16_e64 v194.l, v42.l
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s26, 0xff800000, v42
	.loc	1 761 36                        ; attention.py:761:36
	v_mov_b16_e64 v42.h, v217.l
	v_mov_b16_e64 v217.l, v42.l
	.loc	1 762 35                        ; attention.py:762:35
	s_waitcnt lgkmcnt(0)
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s27, 0xff800000, v194
	.loc	1 762 35                        ; attention.py:762:35
	s_barrier
	ds_load_u16 v218, v37
	ds_load_u16 v219, v151
	ds_load_u16 v220, v152
	ds_load_u16 v223, v153
	.loc	1 761 36                        ; attention.py:761:36
	ds_load_u16 v224, v157
	ds_load_u16 v225, v156
	ds_load_u16 v226, v155
	ds_load_u16 v232, v154
	v_mov_b16_e64 v227.h, v45.l
	v_mov_b16_e32 v45.l, v42.l
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s25, 0xff800000, v216
	v_cmp_neq_f32_e64 s28, 0xff800000, v228
	.loc	1 763 25 is_stmt 0              ; attention.py:763:25
	s_and_b32 s26, s29, s26
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s29, 0xff800000, v217
	.loc	1 763 25                        ; attention.py:763:25
	s_and_b32 s27, s36, s27
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s23, 0xff800000, v45
	.loc	1 763 25                        ; attention.py:763:25
	v_cndmask_b32_e64 v194, 0, 1, s27
	s_and_b32 s25, s30, s25
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s30, 0xff800000, v42
	.loc	1 763 25                        ; attention.py:763:25
	s_and_b32 s28, s35, s28
	s_and_b32 s29, s34, s29
	v_cndmask_b32_e64 v42, 0, 1, s25
	v_cndmask_b32_e64 v45, 0, 1, s26
	v_cndmask_b32_e64 v216, 0, 1, s28
	v_mov_b16_e64 v44.l, v194.l
	v_cndmask_b32_e64 v194, 0, 1, s29
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s24, 0xff800000, v227
	.loc	1 763 25                        ; attention.py:763:25
	s_and_b32 s23, s38, s23
	s_and_b32 s30, s31, s30
	v_cndmask_b32_e64 v34, 0, 1, s23
	v_mov_b16_e32 v43.l, v45.l
	v_mov_b16_e64 v45.l, v216.l
	v_cndmask_b32_e64 v216, 0, 1, s30
	v_lshlrev_b16 v34.h, 8, v42.l
	v_mov_b16_e64 v42.l, v194.l
	s_and_b32 s24, s37, s24
	.loc	1 761 36 is_stmt 1              ; attention.py:761:36
	s_waitcnt lgkmcnt(2)
	v_lshlrev_b32_e32 v225, 16, v225
	.loc	1 763 25                        ; attention.py:763:25
	v_cndmask_b32_e64 v37, 0, 1, s24
	.loc	1 761 36                        ; attention.py:761:36
	v_lshlrev_b32_e32 v224, 16, v224
	.loc	1 763 25                        ; attention.py:763:25
	v_lshlrev_b16 v34.l, 8, v34.l
	v_lshlrev_b16 v37.h, 8, v44.l
	v_mov_b16_e64 v44.l, v216.l
	v_lshlrev_b16 v42.l, 8, v42.l
	.loc	1 762 35                        ; attention.py:762:35
	v_dual_mul_f32 v194, 0x3fb8aa3b, v224 :: v_dual_lshlrev_b32 v217, 16, v218
	.loc	1 761 36                        ; attention.py:761:36
	v_lshlrev_b32_e32 v218, 16, v219
	.loc	1 762 35                        ; attention.py:762:35
	v_dual_mul_f32 v216, 0x3fb8aa3b, v225 :: v_dual_lshlrev_b32 v219, 16, v220
	.loc	1 763 25                        ; attention.py:763:25
	v_or_b16 v225.h, v37.l, v34.l
	v_or_b16 v225.l, v43.l, v34.h
	v_or_b16 v34.h, v45.l, v37.h
	v_or_b16 v34.l, v44.l, v42.l
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v35, v225
	ds_store_b32 v158, v34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v34, v36
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v34, v159
	ds_load_u8_d16 v35, v160
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v35, v161
	ds_load_u8_d16 v36, v162
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v36, v163
	ds_load_u8_d16 v37, v165
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v37, v164
	.loc	1 762 35                        ; attention.py:762:35
	v_dual_mul_f32 v217, 0x3fb8aa3b, v217 :: v_dual_lshlrev_b32 v226, 16, v226
	v_dual_mul_f32 v45, 0x3fb8aa3b, v218 :: v_dual_lshlrev_b32 v220, 16, v223
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v224, 0x3fb8aa3b, v226 :: v_dual_lshlrev_b32 v223, 16, v232
	v_mul_f32_e32 v42, 0x3fb8aa3b, v219
	v_dual_mul_f32 v218, 0x3fb8aa3b, v220 :: v_dual_fmac_f32 v45, s73, v195
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v219, 0x3fb8aa3b, v223 :: v_dual_fmac_f32 v216, s78, v200
	.loc	1 762 25 is_stmt 0              ; attention.py:762:25
	v_fmac_f32_e32 v194, s79, v201
	.loc	1 763 25 is_stmt 1              ; attention.py:763:25
	v_and_b16 v34.l, 1, v34.l
	v_and_b16 v34.h, 1, v34.h
	v_and_b16 v35.l, 1, v35.l
	v_and_b16 v35.h, 1, v35.h
	v_and_b16 v36.l, 1, v36.l
	v_and_b16 v36.h, 1, v36.h
	s_waitcnt lgkmcnt(0)
	v_and_b16 v37.l, 1, v37.l
	v_and_b16 v37.h, 1, v37.h
	.loc	1 762 25                        ; attention.py:762:25
	v_dual_fmac_f32 v217, s42, v203 :: v_dual_fmac_f32 v42, s74, v196
	v_fmac_f32_e32 v219, s76, v198
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 763 25                        ; attention.py:763:25
	v_cmp_eq_u16_e64 s37, 1, v37.l
	v_cmp_eq_u16_e64 s38, 1, v37.h
	.loc	1 762 25                        ; attention.py:762:25
	v_fmac_f32_e32 v224, s77, v199
	.loc	1 763 25                        ; attention.py:763:25
	v_cmp_eq_u16_e64 s34, 1, v34.l
	v_cmp_eq_u16_e64 s35, 1, v34.h
	v_cmp_eq_u16_e64 s36, 1, v35.l
	v_cmp_eq_u16_e64 s39, 1, v36.h
	v_cmp_eq_u16_e64 s40, 1, v35.h
	v_cmp_eq_u16_e64 s41, 1, v36.l
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v34, 0xff800000, v194, s37
	v_cndmask_b32_e64 v35, 0xff800000, v216, s38
	.loc	1 762 25                        ; attention.py:762:25
	v_fmac_f32_e32 v218, s75, v197
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v195, 0xff800000, v224, s39
	v_cndmask_b32_e64 v196, 0xff800000, v217, s34
	v_cndmask_b32_e64 v45, 0xff800000, v45, s35
	v_cndmask_b32_e64 v42, 0xff800000, v42, s36
	v_cndmask_b32_e64 v198, 0xff800000, v219, s41
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v199, v35, v34
.Ltmp2:
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v197, 0xff800000, v218, s40
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v39, v196
	ds_store_b32 v128, v45
	ds_store_b32 v129, v42
	ds_store_b32 v130, v197
	ds_store_b32 v131, v198
	ds_store_b32 v132, v195
	ds_store_b32 v133, v35
	ds_store_b32 v134, v34
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v39, v196, v45, v42
	v_max3_f32 v194, v197, v198, v195
.Ltmp4:
	.loc	1 764 26                        ; attention.py:764:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v200, 0x80000000, v229, s33
	buffer_load_u8 v223, v184, s[64:67], 0 offen
	.loc	1 764 26                        ; attention.py:764:26
	ds_load_2addr_b32 v[36:37], v38 offset1:32
	ds_load_2addr_b32 v[216:217], v166 offset1:32
	ds_load_2addr_b32 v[218:219], v38 offset0:64 offset1:96
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v38, v39, v194, v199
.Ltmp6:
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v39, 0x80000000, v230, s33
	v_cndmask_b32_e64 v194, 0x80000000, v231, s33
	s_clause 0x2
	buffer_load_u8 v224, v200, s[64:67], 0 offen
	buffer_load_u8 v225, v39, s[64:67], 0 offen
	buffer_load_u8 v226, v194, s[64:67], 0 offen
	.loc	1 797 41                        ; attention.py:797:41
	buffer_load_u16 v222, v222, s[56:59], 0 offen
	.loc	1 782 30                        ; attention.py:782:30
	v_cmp_gt_i32_e64 s31, s43, v221
	.loc	1 764 26                        ; attention.py:764:26
	ds_load_2addr_b32 v[220:221], v166 offset0:64 offset1:96
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_permlanex16_b32 v184, v38, s72, 0xfedcba98 op_sel:[1,0]
.Ltmp8:
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_lt_i32 s69, s70
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 766 24                        ; attention.py:766:24
	v_max3_f32 v194, v193, v38, v184
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_dual_mov_b32 v38, v36 :: v_dual_mov_b32 v203, v217
	v_dual_mov_b32 v184, v216 :: v_dual_max_f32 v227, v217, v217
	v_dual_mov_b32 v200, v37 :: v_dual_max_f32 v229, v218, v218
	v_mov_b32_e32 v228, v218
	v_mov_b32_e32 v232, v219
.Ltmp10:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v195, v195, v194
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v184, v184 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v230, v220 :: v_dual_max_f32 v233, v219, v219
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v231, v220, v220 :: v_dual_mov_b32 v234, v221
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v200, v200 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp14:
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v193, v193, v194
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v203, v203 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp16:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v45, v45, v194
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v228, v228 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v199, v216, v216
	v_max_f32_e32 v201, v37, v37
	v_dual_max_f32 v235, v221, v221 :: v_dual_sub_f32 v42, v42, v194
.Ltmp19:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v198, v198, v194
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v38, v38 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v230, v230 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v232, v232 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp21:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v197, v197, v194
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v234, v234 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v236, v45
	v_exp_f32_e32 v195, v195
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v45, v184, v184
.Ltmp25:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v196, v196, v194
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v184, v200, v200
.Ltmp27:
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v193, v193
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v200, v203, v203 :: v_dual_max_f32 v203, v228, v228
.Ltmp29:
	.loc	1 768 62                        ; attention.py:768:62
	v_dual_sub_f32 v34, v34, v194 :: v_dual_max_f32 v39, v36, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_sub_f32 v35, v35, v194 :: v_dual_max_f32 v184, v201, v184
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v198, v198
.Ltmp30:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v199, v199, v45
.Ltmp31:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v196, v196
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v228, v230, v230
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v230, v232, v232
.Ltmp33:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v197, v197
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v232, v234, v234 :: v_dual_max_f32 v201, v229, v203
.Ltmp35:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v35, v35
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v200, v227, v200 :: v_dual_max_f32 v227, v233, v230
	v_max_f32_e32 v203, v231, v228
	v_dual_max_f32 v234, v39, v38 :: v_dual_mov_b32 v231, v201
.Ltmp37:
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v45, 0, v193, s19
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v230, 0, v195, s39
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_dual_mov_b32 v195, v184 :: v_dual_max_f32 v228, v235, v232
.Ltmp39:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v193, 0, v196, s34
	v_cndmask_b32_e64 v196, 0, v236, s35
	v_cndmask_b32_e64 v42, 0, v42, s36
	v_cndmask_b32_e64 v197, 0, v197, s40
	v_cndmask_b32_e64 v229, 0, v198, s41
	v_cndmask_b32_e64 v39, 0, v34, s37
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_dual_mov_b32 v34, v234 :: v_dual_mov_b32 v233, v227
.Ltmp41:
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v25, v25, v45 :: v_dual_mov_b32 v232, v203
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v235, v228
.Ltmp43:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v38, 0, v35, s38
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_dual_mov_b32 v35, v199 :: v_dual_mov_b32 v198, v200
.Ltmp45:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v27, v27, v45
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e64 v43.l, v196.h
	v_mov_b16_e64 v44.l, v193.h
	v_mov_b16_e64 v46.l, v197.h
	v_mov_b16_e32 v47.l, v42.h
	v_mov_b16_e64 v48.l, v230.h
	v_mov_b16_e64 v49.l, v229.h
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v34, v34 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v195, v195 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v235, v235 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v26, v26, v45 :: v_dual_and_b32 v43, 1, v43
	v_dual_mul_f32 v28, v28, v45 :: v_dual_and_b32 v47, 1, v47
	v_dual_mul_f32 v29, v29, v45 :: v_dual_and_b32 v44, 1, v44
	v_dual_mul_f32 v31, v31, v45 :: v_dual_and_b32 v46, 1, v46
	v_mul_f32_e32 v32, v32, v45
	v_dual_mul_f32 v17, v17, v45 :: v_dual_and_b32 v236, 1, v48
	v_dual_mul_f32 v20, v20, v45 :: v_dual_max_f32 v195, v195, v195
	v_dual_mul_f32 v24, v24, v45 :: v_dual_max_f32 v235, v235, v235
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e64 v183.l, v38.h
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v198, v198 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v231, v231 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v232, v232 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v48, 1, v49
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v49, v34, v34
.Ltmp51:
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v30, v30, v45 :: v_dual_and_b32 v237, 1, v183
	v_dual_mul_f32 v18, v18, v45 :: v_dual_max_f32 v183, v35, v35
	v_dual_mul_f32 v19, v19, v45 :: v_dual_max_f32 v198, v198, v198
	v_dual_mul_f32 v21, v21, v45 :: v_dual_max_f32 v232, v232, v232
	v_dual_mul_f32 v22, v22, v45 :: v_dual_max_f32 v231, v231, v231
	v_mul_f32_e32 v23, v23, v45
	v_mul_f32_e32 v11, v11, v45
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s33, v196, v196
	v_cmp_o_f32_e64 s34, v193, v193
	v_cmp_o_f32_e64 s35, v197, v197
	v_cmp_o_f32_e64 s19, v42, v42
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v233, v233 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v44, v193, v44, 0x7fff
	v_add3_u32 v43, v196, v43, 0x7fff
	v_add3_u32 v34, v42, v47, 0x7fff
	v_add3_u32 v42, v197, v46, 0x7fff
	v_add3_u32 v35, v229, v48, 0x7fff
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v48, v184, v195
	v_max_f32_e32 v196, v228, v235
	v_max_f32_e32 v46, v234, v49
.Ltmp55:
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v9, v9, v45 :: v_dual_max_f32 v184, v203, v232
	v_dual_mul_f32 v10, v10, v45 :: v_dual_max_f32 v47, v199, v183
	v_dual_mul_f32 v12, v12, v45 :: v_dual_max_f32 v183, v201, v231
	v_dual_mul_f32 v14, v14, v45 :: v_dual_max_f32 v49, v200, v198
	v_mul_f32_e32 v15, v15, v45
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v233, v233, v233
.Ltmp57:
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v193.l, 0x7fff, v44.h, s34
	v_cndmask_b16 v203.h, 0x7fff, v42.h, s35
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v44, v48
	v_mov_b32_e32 v201, v196
.Ltmp59:
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v13, v13, v45 :: v_dual_mov_b32 v42, v46
	v_mul_f32_e32 v16, v16, v45
	v_dual_mul_f32 v1, v1, v45 :: v_dual_mov_b32 v198, v183
	v_dual_mul_f32 v2, v2, v45 :: v_dual_mov_b32 v197, v49
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v193.h, 0x7fff, v43.h, s33
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v43, v47
	v_mov_b32_e32 v199, v184
	v_mov_b32_dpp v42, v42 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v44, v44 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v195, v227, v233
.Ltmp62:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v3, v3, v45
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v197, v197 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v198, v198 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v199, v199 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v201, v201 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v42, v42, v42
	v_max_f32_e32 v44, v44, v44
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v200, v195
.Ltmp66:
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v4, v4, v45 :: v_dual_max_f32 v43, v43, v43
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v197, v197, v197 :: v_dual_max_f32 v198, v198, v198
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v200, v200 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v199, v199, v199
	v_dual_max_f32 v201, v201, v201 :: v_dual_max_f32 v42, v46, v42
	v_dual_max_f32 v43, v47, v43 :: v_dual_max_f32 v44, v48, v44
	v_max_f32_e32 v200, v200, v200
	v_dual_max_f32 v46, v49, v197 :: v_dual_max_f32 v47, v183, v198
	v_max_f32_e32 v48, v184, v199
	v_dual_max_f32 v183, v196, v201 :: v_dual_mov_b32 v184, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_max_f32_e32 v49, v195, v200
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_dual_mov_b32 v195, v43 :: v_dual_mov_b32 v196, v44
	v_dual_mov_b32 v197, v46 :: v_dual_mov_b32 v198, v47
	v_mov_b32_dpp v184, v184 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v201, v183
	v_dual_mov_b32 v199, v48 :: v_dual_mov_b32 v200, v49
	v_mov_b32_dpp v195, v195 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v196, v196 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v184, v184, v184
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v201, v201 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v197, v197 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v198, v198 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v199, v199 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v200, v200 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v195, v195, v195 :: v_dual_max_f32 v196, v196, v196
	v_dual_max_f32 v201, v201, v201 :: v_dual_max_f32 v42, v42, v184
	v_dual_max_f32 v197, v197, v197 :: v_dual_max_f32 v198, v198, v198
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v199, v199, v199 :: v_dual_max_f32 v200, v200, v200
	v_dual_max_f32 v43, v43, v195 :: v_dual_max_f32 v44, v44, v196
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v227, v183, v201 :: v_dual_max_f32 v184, v40, v42
	v_dual_max_f32 v46, v46, v197 :: v_dual_max_f32 v47, v47, v198
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v48, v48, v199 :: v_dual_max_f32 v49, v49, v200
.Ltmp74:
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v183, v41, v43 :: v_dual_max_f32 v182, v182, v44
	v_dual_max_f32 v195, v202, v42 :: v_dual_max_f32 v196, v204, v43
	v_dual_max_f32 v197, v205, v44 :: v_dual_max_f32 v202, v210, v227
	v_dual_max_f32 v181, v181, v46 :: v_dual_max_f32 v180, v180, v47
	v_dual_max_f32 v179, v179, v48 :: v_dual_max_f32 v178, v178, v49
	v_dual_max_f32 v177, v177, v227 :: v_dual_max_f32 v198, v206, v46
	v_dual_max_f32 v199, v207, v47 :: v_dual_max_f32 v200, v208, v48
	v_max_f32_e32 v201, v209, v49
	.loc	1 767 74                        ; attention.py:767:74
	v_dual_sub_f32 v40, v185, v195 :: v_dual_sub_f32 v41, v186, v196
	v_dual_sub_f32 v48, v192, v202 :: v_dual_sub_f32 v185, v217, v181
	.loc	1 768 62                        ; attention.py:768:62
	v_dual_sub_f32 v36, v36, v184 :: v_dual_sub_f32 v37, v37, v182
	v_dual_sub_f32 v49, v216, v183 :: v_dual_sub_f32 v186, v218, v180
	.loc	1 767 74                        ; attention.py:767:74
	v_dual_sub_f32 v42, v187, v197 :: v_dual_sub_f32 v43, v188, v198
	v_sub_f32_e32 v46, v190, v200
	v_dual_sub_f32 v44, v189, v199 :: v_dual_sub_f32 v47, v191, v201
	.loc	1 768 62                        ; attention.py:768:62
	v_dual_sub_f32 v187, v220, v179 :: v_dual_sub_f32 v188, v219, v178
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v48, v48
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v49, v49
	v_exp_f32_e32 v37, v37
	.loc	1 768 62 is_stmt 0              ; attention.py:768:62
	v_sub_f32_e32 v189, v221, v177
	.loc	1 767 61 is_stmt 1              ; attention.py:767:61
	v_exp_f32_e32 v41, v41
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v43, v43
	v_exp_f32_e32 v44, v44
	v_exp_f32_e32 v47, v47
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v204, v185
	v_exp_f32_e32 v205, v186
	v_exp_f32_e32 v206, v187
	v_exp_f32_e32 v207, v188
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v46, v46
	.loc	1 767 25 is_stmt 0              ; attention.py:767:25
	v_cndmask_b32_e64 v185, 0, v40, s18
	v_cndmask_b32_e32 v192, 0, v48, vcc_lo
	.loc	1 768 49 is_stmt 1              ; attention.py:768:49
	v_exp_f32_e32 v208, v189
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v36, 0, v36, s26
	v_cndmask_b32_e64 v40, 0, v49, s30
	v_cndmask_b32_e64 v37, 0, v37, s25
	.loc	1 767 25 is_stmt 1              ; attention.py:767:25
	v_cndmask_b32_e64 v186, 0, v41, s17
	v_cndmask_b32_e64 v187, 0, v42, s16
	v_cndmask_b32_e64 v188, 0, v43, s15
	v_cndmask_b32_e64 v189, 0, v44, s14
	v_cndmask_b32_e64 v191, 0, v47, s12
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v41, 0, v204, s29
	v_cndmask_b32_e64 v42, 0, v205, s24
	v_cndmask_b32_e64 v43, 0, v206, s28
	v_cndmask_b32_e64 v44, 0, v207, s23
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_dual_mov_b32 v47, v36 :: v_dual_mov_b32 v204, v41
	v_dual_mov_b32 v48, v40 :: v_dual_mov_b32 v49, v37
.Ltmp76:
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v190, 0, v46, s13
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v46, 0, v208, s27
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_dual_mov_b32 v205, v42 :: v_dual_mov_b32 v206, v43
	v_mov_b32_e32 v207, v44
	v_mov_b32_dpp v47, v47 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v49, v49 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v208, v46
	v_mov_b32_dpp v48, v48 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v206, v206 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v207, v207 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v36, v36, v47 :: v_dual_add_f32 v37, v37, v49
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v204, v204 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v205, v205 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v208, v208 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp80:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v40, v40, v48 :: v_dual_add_f32 v43, v43, v206
	v_dual_add_f32 v44, v44, v207 :: v_dual_mov_b32 v49, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v41, v41, v204 :: v_dual_add_f32 v42, v42, v205
	v_dual_add_f32 v46, v46, v208 :: v_dual_mov_b32 v47, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v48, v40
	v_mov_b32_dpp v49, v49 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v206, v43
	v_dual_mov_b32 v204, v41 :: v_dual_mov_b32 v207, v44
	v_mov_b32_e32 v205, v42
	v_mov_b32_dpp v47, v47 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v48, v48 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v37, v37, v49
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v206, v206 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v204, v204 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp84:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v36, v36, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v40, v40, v48 :: v_dual_mov_b32 v49, v37
	v_dual_add_f32 v43, v43, v206 :: v_dual_mov_b32 v208, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_f32_e32 v41, v41, v204
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v205, v205 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v207, v207 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v206, v43
	v_mov_b32_dpp v49, v49 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v48, v40
	v_mov_b32_dpp v208, v208 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v42, v42, v205 :: v_dual_mov_b32 v47, v36
	v_add_f32_e32 v44, v44, v207
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v206, v206 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v204, v41
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v37, v37, v49
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v48, v48 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v205, v42
.Ltmp90:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v46, v46, v208 :: v_dual_mov_b32 v207, v44
	v_add_f32_e32 v49, v43, v206
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v204, v204 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v40, v40, v48
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v47, v47 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v207, v207 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v209, v49 :: v_dual_mov_b32 v208, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v43, v40
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v41, v41, v204
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v205, v205 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v36, v36, v47
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v208, v208 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v209, v209 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp98:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v44, v44, v207 :: v_dual_mov_b32 v207, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_add_f32 v204, v46, v208 :: v_dual_add_f32 v47, v40, v43
	v_add_f32_e32 v48, v42, v205
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v206, v37
	v_mov_b32_dpp v207, v207 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v42, v36 :: v_dual_add_f32 v49, v49, v209
	v_mov_b32_e32 v210, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v206, v206 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v43, v41, v207
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v42, v42 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp102:
	.loc	1 783 76                        ; attention.py:783:76
	s_waitcnt vmcnt(4)
	v_and_b16 v34.l, v223.l, 15
	.loc	1 785 32                        ; attention.py:785:32
	s_waitcnt vmcnt(2)
	v_lshrrev_b16 v213.l, 4, v225.l
	.loc	1 797 41                        ; attention.py:797:41
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v207, 16, v222
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v210, v210 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v205, v204
.Ltmp104:
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v34.l
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v46, v36, v42
	v_dual_add_f32 v42, v37, v206 :: v_dual_and_b32 v37, 15, v223
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_dual_mov_b32 v208, v48 :: v_dual_and_b32 v41, 15, v225
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v44, v44, v210
.Ltmp108:
	.loc	1 783 32                        ; attention.py:783:32
	v_cndmask_b32_e64 v210, 0, v213, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 786 54                        ; attention.py:786:54
	v_or_b32_e32 v213, -16, v37
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v208, v208 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp110:
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v35.l, v224.l, 15
	v_and_b16 v36.l, v225.l, 15
	.loc	1 784 29                        ; attention.py:784:29
	v_and_b32_e32 v40, 15, v224
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v215.l, 4, v223.l
	v_lshrrev_b16 v214.l, 4, v224.l
	v_lshrrev_b16 v212.l, 4, v226.l
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b32_e32 v37, v37, v213, vcc_lo
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v36.h, v226.l, 15
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v5, v5, v45 :: v_dual_and_b32 v206, 15, v226
	.loc	1 783 32                        ; attention.py:783:32
	v_cndmask_b32_e64 v209, 0, v214, s21
	v_cndmask_b32_e64 v212, 0, v212, s31
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s3, 7, v35.l
	v_cmp_lt_u16_e64 s12, 7, v36.l
	.loc	1 786 54 is_stmt 0              ; attention.py:786:54
	v_or_b32_e32 v214, -16, v40
	.loc	1 814 31 is_stmt 1              ; attention.py:814:31
	v_cvt_f32_i32_e32 v37, v37
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v48, v48, v208
.Ltmp112:
	.loc	1 783 32                        ; attention.py:783:32
	v_cndmask_b32_e64 v208, 0, v215, s22
	.loc	1 786 54                        ; attention.py:786:54
	v_or_b32_e32 v215, -16, v41
	.loc	1 786 38 is_stmt 0              ; attention.py:786:38
	v_cmp_lt_u16_e64 s13, 7, v36.h
	.loc	1 786 54                        ; attention.py:786:54
	v_or_b32_e32 v36, -16, v206
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b32_e64 v40, v40, v214, s3
	.loc	1 787 39 is_stmt 1              ; attention.py:787:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v208
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b32_e64 v41, v41, v215, s12
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_lt_u32_e64 s3, 7, v209
	v_cmp_lt_u32_e64 s12, 7, v210
	v_cmp_lt_u32_e64 s14, 7, v212
	.loc	1 787 56 is_stmt 0              ; attention.py:787:56
	v_or_b32_e32 v213, -16, v208
	v_or_b32_e32 v214, -16, v209
	v_or_b32_e32 v215, -16, v210
	v_or_b32_e32 v216, -16, v212
	.loc	1 786 29 is_stmt 1              ; attention.py:786:29
	v_cndmask_b32_e64 v36, v206, v36, s13
	.loc	1 787 30                        ; attention.py:787:30
	v_dual_cndmask_b32 v206, v208, v213 :: v_dual_fmac_f32 v43, v98, v188
	v_cndmask_b32_e64 v208, v209, v214, s3
	v_cndmask_b32_e64 v209, v210, v215, s12
	v_cndmask_b32_e64 v210, v212, v216, s14
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v36, v36
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v205, v205 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp114:
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v206, v206
	v_cvt_f32_i32_e32 v208, v208
	v_cvt_f32_i32_e32 v209, v209
	v_cvt_f32_i32_e32 v210, v210
	v_mul_f32_e32 v37, v37, v207
	v_mul_f32_e32 v41, v41, v207
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v44, v101, v191
	.loc	1 814 31                        ; attention.py:814:31
	v_dual_mul_f32 v40, v40, v207 :: v_dual_mul_f32 v7, v7, v45
	v_mul_f32_e32 v36, v207, v36
	v_dual_mul_f32 v206, v206, v207 :: v_dual_fmac_f32 v47, v96, v186
	v_mul_f32_e32 v209, v207, v209
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v8, v8, v45
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v42, v97, v187
	v_fmac_f32_e32 v46, v95, v185
	v_mov_b32_e32 v185, v195
	v_dual_fmac_f32 v48, v99, v189 :: v_dual_mov_b32 v101, v44
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v6, v6, v45
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v45, v204, v205
.Ltmp116:
	.loc	1 814 31                        ; attention.py:814:31
	v_dual_mul_f32 v208, v208, v207 :: v_dual_mul_f32 v207, v207, v210
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_bfe_u32 v210, v37, 16, 1
	v_bfe_u32 v212, v40, 16, 1
	v_bfe_u32 v214, v36, 16, 1
	v_bfe_u32 v213, v41, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	v_add3_u32 v37, v37, v210, 0x7fff
	v_bfe_u32 v210, v206, 16, 1
	v_cmp_o_f32_e64 s3, v40, v40
	v_add3_u32 v40, v40, v212, 0x7fff
	.loc	1 817 23 is_stmt 1              ; attention.py:817:23
	v_fmac_f32_e32 v45, v102, v192
	.loc	1 814 30                        ; attention.py:814:30
	v_bfe_u32 v212, v208, 16, 1
	v_cmp_o_f32_e64 s13, v36, v36
	v_add3_u32 v36, v36, v214, 0x7fff
	v_bfe_u32 v214, v207, 16, 1
	v_cmp_o_f32_e64 s12, v41, v41
	v_add3_u32 v41, v41, v213, 0x7fff
	v_bfe_u32 v213, v209, 16, 1
	v_cmp_o_f32_e64 s14, v206, v206
	v_cndmask_b16 v34.l, 0x7fff, v37.h, vcc_lo
	v_add3_u32 v37, v206, v210, 0x7fff
	v_cmp_o_f32_e64 s15, v208, v208
	v_cndmask_b16 v35.l, 0x7fff, v40.h, s3
	v_add3_u32 v40, v208, v212, 0x7fff
	v_cmp_o_f32_e64 s17, v207, v207
	v_add3_u32 v207, v207, v214, 0x7fff
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e64 v211.l, v39.h
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s16, v209, v209
	v_add3_u32 v206, v209, v213, 0x7fff
	v_cndmask_b16 v203.l, 0x7fff, v37.h, s14
	v_cndmask_b16 v206.l, 0x7fff, v40.h, s15
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s12
	v_cndmask_b16 v41.h, 0x7fff, v36.h, s13
	v_cndmask_b16 v207.l, 0x7fff, v207.h, s17
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v36, v230, v236, 0x7fff
	v_add3_u32 v37, v38, v237, 0x7fff
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v206.h, 0x7fff, v206.h, s16
	.loc	1 817 23                        ; attention.py:817:23
	v_dual_fmac_f32 v49, v100, v190 :: v_dual_and_b32 v40, 1, v211
	.loc	1 814 30                        ; attention.py:814:30
	ds_store_b16 v108, v34
	ds_store_b16 v108, v203 offset:128
	ds_store_b16 v108, v35 offset:512
	ds_store_b16 v108, v206 offset:640
	ds_store_b16 v108, v41 offset:1024
	ds_store_b16_d16_hi v108, v206 offset:1152
	ds_store_b16_d16_hi v108, v41 offset:1536
	ds_store_b16 v108, v207 offset:1664
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v206, v93
	ds_load_u16_d16 v207, v93 offset:256
	ds_load_u16_d16 v208, v93 offset:512
	ds_load_u16_d16 v209, v93 offset:768
	ds_load_u16_d16 v210, v93 offset:1024
	ds_load_u16_d16 v211, v93 offset:1280
	ds_load_u16_d16 v212, v93 offset:1536
	ds_load_u16_d16 v213, v93 offset:1792
	ds_load_u16_d16 v34, v93 offset:32
	ds_load_u16_d16 v35, v93 offset:288
	ds_load_u16_d16 v36, v93 offset:544
	ds_load_u16_d16 v37, v93 offset:800
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e32 vcc_lo, v230, v230
	v_cmp_o_f32_e64 s3, v229, v229
	v_cmp_o_f32_e64 s13, v38, v38
	v_add3_u32 v40, v39, v40, 0x7fff
	v_cmp_o_f32_e64 s12, v39, v39
	s_waitcnt lgkmcnt(3)
	v_cndmask_b16 v203.l, 0x7fff, v34.h, s19
	s_waitcnt lgkmcnt(1)
	v_cndmask_b16 v235.h, 0x7fff, v36.h, vcc_lo
	v_cndmask_b16 v235.l, 0x7fff, v35.h, s3
	s_waitcnt lgkmcnt(0)
	v_cndmask_b16 v237.l, 0x7fff, v37.h, s13
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_u16_d16_hi v206, v93 offset:128
	ds_load_u16_d16_hi v207, v93 offset:384
	ds_load_u16_d16_hi v208, v93 offset:640
	ds_load_u16_d16_hi v209, v93 offset:896
	ds_load_u16_d16_hi v210, v93 offset:1152
	ds_load_u16_d16_hi v211, v93 offset:1408
	ds_load_u16_d16_hi v212, v93 offset:1664
	ds_load_u16_d16_hi v213, v93 offset:1920
	ds_load_u16_d16_hi v34, v93 offset:160
	ds_load_u16_d16_hi v35, v93 offset:416
	ds_load_u16_d16_hi v36, v93 offset:672
	ds_load_u16_d16_hi v37, v93 offset:928
	ds_load_u16_d16 v38, v93 offset:1056
	ds_load_u16_d16 v39, v93 offset:1312
	ds_load_u16_d16 v40, v93 offset:1568
	ds_load_u16_d16 v41, v93 offset:1824
	ds_load_u16_d16 v214, v93 offset:64
	ds_load_u16_d16 v215, v93 offset:320
	ds_load_u16_d16 v216, v93 offset:576
	ds_load_u16_d16 v217, v93 offset:832
	ds_load_u16_d16 v218, v93 offset:1088
	ds_load_u16_d16 v219, v93 offset:1344
	ds_load_u16_d16 v220, v93 offset:1600
	ds_load_u16_d16 v221, v93 offset:1856
	ds_load_u16_d16 v222, v93 offset:96
	ds_load_u16_d16 v223, v93 offset:352
	ds_load_u16_d16 v224, v93 offset:608
	ds_load_u16_d16 v225, v93 offset:864
	ds_load_u16_d16 v226, v93 offset:1120
	ds_load_u16_d16 v227, v93 offset:1376
	ds_load_u16_d16 v228, v93 offset:1632
	ds_load_u16_d16 v229, v93 offset:1888
	.loc	1 816 30                        ; attention.py:816:30
	s_waitcnt lgkmcnt(17)
	v_cndmask_b16 v237.h, 0x7fff, v40.h, s12
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_u16_d16_hi v38, v93 offset:1184
	ds_load_u16_d16_hi v39, v93 offset:1440
	ds_load_u16_d16_hi v40, v93 offset:1696
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v41, v93 offset:1952
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v214, v93 offset:192
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v215, v93 offset:448
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v216, v93 offset:704
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v217, v93 offset:960
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v218, v93 offset:1216
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v219, v93 offset:1472
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v220, v93 offset:1728
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v221, v93 offset:1984
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v222, v93 offset:224
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v223, v93 offset:480
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v224, v93 offset:736
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v225, v93 offset:992
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v226, v93 offset:1248
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v227, v93 offset:1504
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v228, v93 offset:1760
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v229, v93 offset:2016
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v231, v193, s72, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v233, v203, s72, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v236, v235, s72, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v238, v237, s72, 0xfedcba98 op_sel:[1,0]
	v_dual_mov_b32 v96, v47 :: v_dual_mov_b32 v187, v197
	v_perm_b32 v230, v231, v193, v149
	v_perm_b32 v231, v231, v193, v167
	v_perm_b32 v232, v233, v203, v149
	v_perm_b32 v233, v233, v203, v167
	v_perm_b32 v234, v236, v235, v149
	v_perm_b32 v235, v236, v235, v167
	v_perm_b32 v236, v238, v237, v149
	v_perm_b32 v237, v238, v237, v167
	v_mov_b32_e32 v193, v194
	v_mov_b32_e32 v97, v42
	v_dual_mov_b32 v95, v46 :: v_dual_mov_b32 v98, v43
	v_mov_b32_e32 v191, v201
	.loc	1 816 23 is_stmt 0              ; attention.py:816:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[206:213], v[230:237], v[25:32]
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[34:41], v[230:237], v[17:24]
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[214:221], v[230:237], v[9:16]
	v_mov_b32_e32 v99, v48
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[222:229], v[230:237], v[1:8]
	v_dual_mov_b32 v100, v49 :: v_dual_mov_b32 v189, v199
	v_mov_b32_e32 v102, v45
	v_mov_b32_e32 v186, v196
	v_mov_b32_e32 v188, v198
	v_mov_b32_e32 v190, v200
	v_mov_b32_e32 v192, v202
	.loc	1 707 13 is_stmt 1              ; attention.py:707:13
	s_cbranch_scc0 .LBB0_11
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v34, s69, v78
	v_or_b32_e32 v35, s69, v79
	.loc	1 711 32                        ; attention.py:711:32
	s_add_i32 s18, s69, s82
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v36, s69, v80
	.loc	1 711 32                        ; attention.py:711:32
	s_mul_i32 s3, s18, s54
	.loc	1 714 73                        ; attention.py:714:73
	v_cmp_gt_i32_e32 vcc_lo, s43, v34
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v37, s69, v81
	.loc	1 711 32                        ; attention.py:711:32
	v_add_nc_u32_e32 v38, s3, v50
	v_add_nc_u32_e32 v39, s3, v82
	v_add_nc_u32_e32 v40, s3, v83
	v_add_nc_u32_e32 v34, s3, v51
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
	v_add_nc_u32_e32 v38, 0, v94
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
	v_or_b32_e32 v42, s69, v84
	.loc	1 745 17                        ; attention.py:745:17
	s_and_b32 vcc_lo, exec_lo, s4
	.loc	1 712 32                        ; attention.py:712:32
	s_waitcnt vmcnt(3)
	ds_store_b8 v85, v35
	s_waitcnt vmcnt(2)
	ds_store_b8 v88, v36
	s_waitcnt vmcnt(1)
	ds_store_b8 v89, v37
	s_waitcnt vmcnt(0)
	ds_store_b8 v90, v34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[43:44], v38
	ds_load_b64 v[45:46], v123
	ds_load_b64 v[47:48], v124
	ds_load_b64 v[194:195], v125
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
	v_cmp_gt_i32_e64 s3, s43, v42
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[43:44], v[55:56], v[34:41] neg_lo:[1,1,0]
	.loc	1 743 25                        ; attention.py:743:25
	s_and_b32 s29, s1, s3
	s_and_b32 s31, s5, s3
	s_and_b32 s30, s6, s3
	s_and_b32 s34, s7, s3
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[45:46], v[57:58], v[34:41] neg_lo:[1,1,0]
	.loc	1 743 25                        ; attention.py:743:25
	s_and_b32 s37, s8, s3
	s_and_b32 s35, s9, s3
	s_and_b32 s38, s10, s3
	s_and_b32 s36, s11, s3
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[47:48], v[59:60], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[194:195], v[61:62], v[34:41] neg_lo:[1,1,0]
	.loc	1 745 17                        ; attention.py:745:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 746 30                        ; attention.py:746:30
	v_cmp_le_i32_e32 vcc_lo, v42, v106
	v_cmp_le_i32_e64 s3, v42, v111
	v_cmp_le_i32_e64 s12, v42, v112
	v_cmp_le_i32_e64 s13, v42, v113
	v_cmp_le_i32_e64 s14, v42, v114
	v_cmp_le_i32_e64 s15, v42, v115
	.loc	1 746 21 is_stmt 0              ; attention.py:746:21
	s_and_b32 s19, vcc_lo, s29
	s_and_b32 s3, s3, s31
	.loc	1 746 30                        ; attention.py:746:30
	v_cmp_le_i32_e64 s16, v42, v116
	v_cmp_le_i32_e64 s17, v42, v117
	.loc	1 746 21                        ; attention.py:746:21
	s_and_b32 s12, s12, s30
	s_and_b32 s13, s13, s34
	s_and_not1_b32 s21, s29, exec_lo
	s_and_b32 s19, s19, exec_lo
	s_and_not1_b32 s22, s31, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s14, s14, s37
	s_and_b32 s15, s15, s35
	s_or_b32 s29, s21, s19
	s_or_b32 s31, s22, s3
	s_and_not1_b32 s3, s30, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s19, s34, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s38
	s_and_b32 s17, s17, s36
	s_or_b32 s30, s3, s12
	s_or_b32 s34, s19, s13
	s_and_not1_b32 s3, s37, exec_lo
	s_and_b32 s12, s14, exec_lo
	s_and_not1_b32 s13, s35, exec_lo
	s_and_b32 s14, s15, exec_lo
	s_or_b32 s37, s3, s12
	s_or_b32 s35, s13, s14
	s_and_not1_b32 s3, s38, exec_lo
	s_and_b32 s12, s16, exec_lo
	s_and_not1_b32 s13, s36, exec_lo
	s_and_b32 s14, s17, exec_lo
	s_or_b32 s38, s3, s12
	s_or_b32 s36, s13, s14
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           ; attention.py:0
	v_or_b32_e32 v43, s69, v75
	v_or_b32_e32 v44, s69, v76
	v_add_lshl_u32 v47, s18, v75, 1
	v_or_b32_e32 v45, s69, v74
	v_or_b32_e32 v46, s69, v73
	v_cmp_gt_i32_e32 vcc_lo, s43, v43
	v_or_b32_e32 v48, s69, v71
	v_add_nc_u32_e32 v197, 8, v47
	v_add_nc_u32_e32 v196, 4, v47
	v_or_b32_e32 v49, s69, v72
	v_cndmask_b32_e32 v43, 0x80000000, v47, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s43, v44
	v_or_b32_e32 v194, s69, v70
	v_or_b32_e32 v195, s69, v69
	v_cndmask_b32_e32 v44, 0x80000000, v196, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s43, v45
	v_dual_cndmask_b32 v45, 0x80000000, v197 :: v_dual_add_nc_u32 v196, 12, v47
	v_cmp_gt_i32_e32 vcc_lo, s43, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v46, 0x80000000, v196 :: v_dual_add_nc_u32 v197, 16, v47
	v_cmp_gt_i32_e32 vcc_lo, s43, v48
	v_add_nc_u32_e32 v196, 20, v47
	v_dual_cndmask_b32 v48, 0x80000000, v197 :: v_dual_add_nc_u32 v197, 24, v47
	v_cmp_gt_i32_e32 vcc_lo, s43, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v49, 0x80000000, v196, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s43, v194
	v_dual_cndmask_b32 v194, 0x80000000, v197 :: v_dual_add_nc_u32 v47, 28, v47
	v_cmp_gt_i32_e32 vcc_lo, s43, v195
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	s_clause 0x7
	buffer_load_u16 v195, v43, s[60:63], 0 offen
	buffer_load_u16 v196, v44, s[60:63], 0 offen
	buffer_load_u16 v197, v45, s[60:63], 0 offen
	buffer_load_u16 v198, v46, s[60:63], 0 offen
	buffer_load_u16 v199, v48, s[60:63], 0 offen
	buffer_load_u16 v200, v49, s[60:63], 0 offen
	buffer_load_u16 v201, v194, s[60:63], 0 offen
	buffer_load_u16 v202, v47, s[60:63], 0 offen
	.loc	1 747 17 is_stmt 1              ; attention.py:747:17
	s_and_not1_b32 vcc_lo, exec_lo, s55
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e32 vcc_lo, v42, v126
	v_cmp_ge_i32_e64 s3, v42, v135
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s18, v42, v127
	v_cmp_le_i32_e64 s19, v42, v142
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s12, v42, v136
	v_cmp_ge_i32_e64 s13, v42, v137
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s21, v42, v143
	v_cmp_le_i32_e64 s24, v42, v144
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s14, v42, v138
	v_cmp_ge_i32_e64 s15, v42, v139
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s23, v42, v145
	v_cmp_le_i32_e64 s25, v42, v146
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s18, vcc_lo, s18
	s_and_b32 s3, s3, s19
	.loc	1 748 30 is_stmt 1              ; attention.py:748:30
	v_cmp_ge_i32_e64 s16, v42, v140
	v_cmp_ge_i32_e64 s17, v42, v141
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s22, v42, v147
	v_cmp_le_i32_e64 s26, v42, v148
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s12, s12, s21
	s_and_b32 s18, s18, s29
	s_and_b32 s13, s13, s24
	s_and_b32 s3, s3, s31
	s_and_b32 s14, s14, s23
	s_and_b32 s12, s12, s30
	s_and_b32 s15, s15, s25
	s_and_b32 s13, s13, s34
	s_and_not1_b32 s19, s29, exec_lo
	s_and_b32 s18, s18, exec_lo
	s_and_not1_b32 s21, s31, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s16, s16, s22
	s_and_b32 s14, s14, s37
	s_and_b32 s17, s17, s26
	s_and_b32 s15, s15, s35
	s_or_b32 s29, s19, s18
	s_or_b32 s31, s21, s3
	s_and_not1_b32 s3, s30, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s18, s34, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s38
	s_and_b32 s17, s17, s36
	s_or_b32 s30, s3, s12
	s_or_b32 s34, s18, s13
	s_and_not1_b32 s3, s37, exec_lo
	s_and_b32 s12, s14, exec_lo
	s_and_not1_b32 s13, s35, exec_lo
	s_and_b32 s14, s15, exec_lo
	s_or_b32 s37, s3, s12
	s_or_b32 s35, s13, s14
	s_and_not1_b32 s3, s38, exec_lo
	s_and_b32 s12, s16, exec_lo
	s_and_not1_b32 s13, s36, exec_lo
	s_and_b32 s14, s17, exec_lo
	s_or_b32 s38, s3, s12
	s_or_b32 s36, s13, s14
	s_branch .LBB0_6
.LBB0_11:                               ; %._crit_edge
	.loc	1 707 13 is_stmt 1              ; attention.py:707:13
	v_lshlrev_b32_e32 v33, 4, v0
	v_lshrrev_b32_e32 v34, 1, v0
	v_lshlrev_b32_e32 v0, 2, v0
	v_lshrrev_b32_e32 v35, 3, v87
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v33, 0x70, v33
	v_and_b32_e32 v34, 4, v34
	v_and_b32_e32 v0, 0x80, v0
	s_barrier
	.loc	1 848 17                        ; attention.py:848:17
	s_and_b32 s53, s53, 0xffff
	s_mov_b32 s55, 0x31027000
	.loc	1 707 13                        ; attention.py:707:13
	v_add3_u32 v33, 0, v33, v34
	v_add_nc_u32_e32 v34, 0, v86
	s_mov_b32 s54, 0x7ffffffe
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s6, s68, v71
	.loc	1 707 13                        ; attention.py:707:13
	ds_store_b128 v34, v[46:49]
	ds_store_b128 v34, v[42:45] offset:128
	v_add3_u32 v0, v33, v0, v35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s7, s68, v72
	v_cmp_gt_i32_e64 s8, s68, v70
	.loc	1 707 13                        ; attention.py:707:13
	ds_load_b32 v0, v0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s9, s68, v69
	.loc	1 841 48                        ; attention.py:841:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v0, v0, v25
	v_div_scale_f32 v35, null, v0, v0, v26
	v_div_scale_f32 v39, null, v0, v0, v28
	v_div_scale_f32 v37, null, v0, v0, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v45, v33
	v_rcp_f32_e32 v46, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v48, v39
	v_div_scale_f32 v43, null, v0, v0, v30
	v_rcp_f32_e32 v47, v37
	v_div_scale_f32 v41, null, v0, v0, v29
	v_rcp_f32_e32 v50, v43
	v_div_scale_f32 v34, vcc_lo, v25, v0, v25
	v_fma_f32 v54, -v33, v45, 1.0
	v_fma_f32 v55, -v35, v46, 1.0
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v57, -v39, v48, 1.0
	v_rcp_f32_e32 v49, v41
	v_div_scale_f32 v36, s0, v26, v0, v26
	v_div_scale_f32 v40, s3, v28, v0, v28
	v_fma_f32 v56, -v37, v47, 1.0
	v_dual_fmac_f32 v45, v54, v45 :: v_dual_fmac_f32 v46, v55, v46
	v_fmac_f32_e32 v48, v57, v48
	v_div_scale_f32 v38, s1, v27, v0, v27
	v_fma_f32 v59, -v43, v50, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v47, v56, v47 :: v_dual_mul_f32 v54, v34, v45
	v_mul_f32_e32 v55, v36, v46
	v_mul_f32_e32 v57, v40, v48
	v_fma_f32 v58, -v41, v49, 1.0
	v_div_scale_f32 v44, null, v0, v0, v31
	v_div_scale_f32 v51, s5, v30, v0, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v61, -v39, v57, v40
	v_fmac_f32_e32 v50, v59, v50
	v_fma_f32 v59, -v35, v55, v36
	v_mul_f32_e32 v56, v38, v47
	v_fmac_f32_e32 v49, v58, v49
	v_fma_f32 v58, -v33, v54, v34
	v_rcp_f32_e32 v53, v44
	v_fmac_f32_e32 v55, v59, v46
	v_fma_f32 v60, -v37, v56, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v57, v61, v48 :: v_dual_fmac_f32 v54, v58, v45
	v_div_scale_f32 v52, null, v0, v0, v32
	v_fmac_f32_e32 v56, v60, v47
	v_div_scale_f32 v42, s4, v29, v0, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v33, v54, v34
	v_fma_f32 v34, -v35, v55, v36
	v_fma_f32 v35, -v37, v56, v38
	v_fma_f32 v36, -v39, v57, v40
	v_rcp_f32_e32 v37, v52
	v_div_fmas_f32 v33, v33, v45, v54
	s_mov_b32 vcc_lo, s0
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s0, 0, v0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v34, v34, v46, v55
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v25, v33, v0, v25
	v_div_fmas_f32 v35, v35, v47, v56
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v26, v34, v0, v26
	v_div_fmas_f32 v33, v36, v48, v57
	v_fma_f32 v36, -v44, v53, 1.0
	v_mul_f32_e32 v34, v51, v50
	v_fma_f32 v38, -v52, v37, 1.0
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v28, v33, v0, v28
	v_fmac_f32_e32 v53, v36, v53
	v_div_scale_f32 v36, null, v0, v0, v17
	v_fma_f32 v33, -v43, v34, v51
	v_fmac_f32_e32 v37, v38, v37
	v_div_fixup_f32 v27, v35, v0, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v36
	v_div_scale_f32 v35, s1, v31, v0, v31
	v_fmac_f32_e32 v34, v33, v50
	v_div_scale_f32 v38, s3, v32, v0, v32
	v_mul_f32_e32 v33, v35, v53
	v_div_scale_f32 v46, null, v0, v0, v18
	v_div_scale_f32 v47, null, v0, v0, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v36, v40, 1.0
	.loc	1 843 24 is_stmt 1              ; attention.py:843:24
	v_mul_lo_u32 v56, v77, s68
	.loc	1 843 74 is_stmt 0              ; attention.py:843:74
	v_or_b32_e32 v54, 60, v75
	v_or_b32_e32 v55, 62, v75
	.loc	1 841 48 is_stmt 1              ; attention.py:841:48
	v_fmac_f32_e32 v40, v45, v40
	v_div_scale_f32 v45, s4, v17, v0, v17
	v_mul_f32_e32 v62, v42, v49
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v57, v56, v75, 2
	v_add_lshl_u32 v59, v56, v74, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v58, -v41, v62, v42
	v_fmac_f32_e32 v62, v58, v49
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v58, v56, v76, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v39, -v41, v62, v42
	v_fma_f32 v41, -v43, v34, v51
	v_fma_f32 v42, -v44, v33, v35
	v_mul_f32_e32 v43, v38, v37
	v_div_fmas_f32 v39, v39, v49, v62
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v33, v42, v53
	v_div_fmas_f32 v34, v41, v50, v34
	v_rcp_f32_e32 v41, v46
	v_fma_f32 v42, -v52, v43, v38
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v29, v39, v0, v29
	v_div_fixup_f32 v30, v34, v0, v30
	v_fma_f32 v34, -v44, v33, v35
	v_fmac_f32_e32 v43, v42, v37
	v_mul_f32_e32 v35, v45, v40
	v_div_scale_f32 v42, null, v0, v0, v19
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v39, -v46, v41, 1.0
	v_div_fmas_f32 v33, v34, v53, v33
	v_fma_f32 v34, -v52, v43, v38
	v_fma_f32 v38, -v36, v35, v45
	v_div_scale_f32 v44, s1, v18, v0, v18
	v_fmac_f32_e32 v41, v39, v41
	v_rcp_f32_e32 v39, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v35, v38, v40
	v_div_fixup_f32 v31, v33, v0, v31
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v38, v44, v41
	v_div_fmas_f32 v34, v34, v37, v43
	v_fma_f32 v33, -v36, v35, v45
	v_div_scale_f32 v45, null, v0, v0, v21
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v37, v47
	v_div_fmas_f32 v33, v33, v40, v35
	v_rcp_f32_e32 v35, v45
	v_fma_f32 v43, -v42, v39, 1.0
	v_div_fixup_f32 v32, v34, v0, v32
	v_fma_f32 v34, -v46, v38, v44
	v_div_scale_f32 v36, s3, v19, v0, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v39, v43, v39
	v_div_fixup_f32 v17, v33, v0, v17
	v_fma_f32 v43, -v47, v37, 1.0
	v_fmac_f32_e32 v38, v34, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v45, v35, 1.0
	v_mul_f32_e32 v34, v36, v39
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v40, s4, v20, v0, v20
	v_fmac_f32_e32 v35, v49, v35
	v_fmac_f32_e32 v37, v43, v37
	v_div_scale_f32 v43, null, v0, v0, v22
	v_fma_f32 v33, -v46, v38, v44
	v_fma_f32 v44, -v42, v34, v36
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v48, v43
	v_fmac_f32_e32 v34, v44, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v43, v48, 1.0
	v_fmac_f32_e32 v48, v44, v48
	v_div_fmas_f32 v33, v33, v41, v38
	v_div_scale_f32 v41, s1, v21, v0, v21
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v18, v33, v0, v18
	v_fma_f32 v33, -v42, v34, v36
	v_mul_f32_e32 v36, v41, v35
	v_mul_f32_e32 v46, v40, v37
	v_div_scale_f32 v42, null, v0, v0, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v39, v34
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v38, -v47, v46, v40
	v_fma_f32 v39, -v45, v36, v41
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v19, v33, v0, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v46, v38, v37
	v_div_scale_f32 v38, s5, v22, v0, v22
	v_fmac_f32_e32 v36, v39, v35
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v34, -v47, v46, v40
	v_div_scale_f32 v47, null, v0, v0, v24
	v_rcp_f32_e32 v40, v42
	v_fma_f32 v33, -v45, v36, v41
	v_div_fmas_f32 v34, v34, v37, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v37, v47
	v_mul_f32_e32 v44, v38, v48
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v45, null, v0, v0, v10
	v_div_fmas_f32 v33, v33, v35, v36
	v_fma_f32 v39, -v43, v44, v38
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v42, v40, 1.0
	v_div_fixup_f32 v20, v34, v0, v20
	v_div_scale_f32 v34, s3, v23, v0, v23
	v_fmac_f32_e32 v44, v39, v48
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v39, -v47, v37, 1.0
	v_div_fixup_f32 v21, v33, v0, v21
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v35, -v43, v44, v38
	v_div_scale_f32 v38, null, v0, v0, v9
	v_fmac_f32_e32 v37, v39, v37
	v_div_scale_f32 v39, s1, v24, v0, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v41, v38
	v_fmac_f32_e32 v40, v46, v40
	v_div_fmas_f32 v35, v35, v48, v44
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v48, null, v0, v0, v12
	v_mul_f32_e32 v36, v34, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v22, v35, v0, v22
	v_rcp_f32_e32 v35, v45
	v_rcp_f32_e32 v50, v48
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v43, -v42, v36, v34
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v36, v43, v40
	v_fma_f32 v43, -v38, v41, 1.0
	v_fma_f32 v46, -v45, v35, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v42, v36, v34
	v_div_scale_f32 v42, null, v0, v0, v11
	v_fmac_f32_e32 v41, v43, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v46, v35
	v_div_fmas_f32 v34, v34, v40, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v43, v42
	v_div_scale_f32 v40, s3, v10, v0, v10
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v23, v34, v0, v23
	v_mul_f32_e32 v49, v40, v35
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v46, -v42, v43, 1.0
	v_dual_mul_f32 v44, v39, v37 :: v_dual_fmac_f32 v43, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v47, v44, v39
	v_div_scale_f32 v46, s5, v11, v0, v11
	v_fmac_f32_e32 v44, v33, v37
	v_div_scale_f32 v33, s4, v9, v0, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v47, v44, v39
	v_mul_f32_e32 v39, v33, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v36, v36, v37, v44
	v_fma_f32 v37, -v45, v49, v40
	v_mul_f32_e32 v44, v46, v43
	v_fma_f32 v47, -v38, v39, v33
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v24, v36, v0, v24
	v_fmac_f32_e32 v49, v37, v35
	v_fma_f32 v34, -v42, v44, v46
	v_div_scale_f32 v37, null, v0, v0, v13
	v_fmac_f32_e32 v39, v47, v41
	v_fma_f32 v36, -v48, v50, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v33, -v38, v39, v33
	v_fma_f32 v38, -v45, v49, v40
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s1, v12, v0, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v33, v33, v41, v39
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v40, null, v0, v0, v14
	v_div_fmas_f32 v35, v38, v35, v49
	v_fma_f32 v38, -v42, v44, v46
	v_mul_f32_e32 v39, v36, v50
	v_fma_f32 v41, -v37, v34, 1.0
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v42, v40
	v_div_fmas_f32 v38, v38, v43, v44
	v_fma_f32 v43, -v48, v39, v36
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s3, v13, v0, v13
	v_div_fixup_f32 v9, v33, v0, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v43, v50
	v_div_fixup_f32 v10, v35, v0, v10
	v_mul_f32_e32 v33, v41, v34
	v_div_fixup_f32 v11, v38, v0, v11
	v_fma_f32 v35, -v40, v42, 1.0
	v_fma_f32 v36, -v48, v39, v36
	v_div_scale_f32 v38, null, v0, v0, v15
	v_fma_f32 v43, -v37, v33, v41
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, s4, v14, v0, v14
	v_rcp_f32_e32 v44, v38
	v_div_fmas_f32 v36, v36, v50, v39
	v_fmac_f32_e32 v33, v43, v34
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v39, v35, v42
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v43, null, v0, v0, v16
	v_div_fixup_f32 v12, v36, v0, v12
	v_fma_f32 v36, -v37, v33, v41
	v_fma_f32 v37, -v40, v39, v35
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v33, v36, v34, v33
	v_div_scale_f32 v34, null, v0, v0, v1
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v36, s1, v15, v0, v15
	v_fmac_f32_e32 v39, v37, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v37, v34
	v_div_fixup_f32 v13, v33, v0, v13
	v_fma_f32 v33, -v43, v45, 1.0
	v_div_scale_f32 v41, null, v0, v0, v2
	v_fma_f32 v35, -v40, v39, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_mul_f32 v40, v36, v44 :: v_dual_fmac_f32 v45, v33, v45
	v_div_scale_f32 v33, s3, v16, v0, v16
	v_fma_f32 v46, -v34, v37, 1.0
	v_rcp_f32_e32 v47, v41
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v48, s4, v1, v0, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v0, v0, v3
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v51, v48, v37
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v33, v45
	v_fma_f32 v49, -v41, v47, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v14, v35, v0, v14
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	v_fmac_f32_e32 v47, v49, v47
	v_rcp_f32_e32 v50, v46
	v_div_scale_f32 v49, s5, v2, v0, v2
	v_fma_f32 v35, -v38, v40, v36
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v38, v49, v47
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v33, -v43, v42, v33
	v_fmac_f32_e32 v51, v36, v37
	v_div_fmas_f32 v35, v35, v44, v40
	v_div_scale_f32 v40, null, v0, v0, v4
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v39, -v46, v50, 1.0
	v_div_fmas_f32 v33, v33, v45, v42
	v_rcp_f32_e32 v42, v40
	v_fma_f32 v36, -v41, v38, v49
	v_div_fixup_f32 v15, v35, v0, v15
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s1, v3, v0, v3
	v_fma_f32 v34, -v34, v51, v48
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v16, v33, v0, v16
	v_div_scale_f32 v44, null, v0, v0, v8
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v35, -v40, v42, 1.0
	v_div_fmas_f32 v34, v34, v37, v51
	s_mov_b32 vcc_lo, s5
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	v_cndmask_b32_e64 v15, 0, v15, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v42, v35, v42
	v_fmac_f32_e32 v38, v36, v47
	v_mul_f32_e32 v36, v39, v50
	v_div_scale_f32 v35, null, v0, v0, v6
	v_div_fixup_f32 v1, v34, v0, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	v_div_scale_f32 v34, null, v0, v0, v5
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v37, v37, v47, v38
	v_fmac_f32_e32 v36, v41, v50
	s_mov_b32 vcc_lo, s1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v1, 0, v1, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v2, v37, v0, v2
	v_fma_f32 v33, -v46, v36, v39
	v_rcp_f32_e32 v39, v35
	v_div_scale_f32 v37, null, v0, v0, v7
	v_rcp_f32_e32 v46, v44
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v41, v37
	v_fma_f32 v45, -v35, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v39, v45, v39
	v_div_fmas_f32 v33, v33, v50, v36
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v38, vcc_lo, v4, v0, v4
	v_fma_f32 v48, -v37, v41, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v3, v33, v0, v3
	v_fma_f32 v50, -v44, v46, 1.0
	v_div_scale_f32 v45, s3, v6, v0, v6
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v7, v0, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v34, v36, 1.0
	v_mul_f32_e32 v43, v38, v42
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s5, v8, v0, v8
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s1, v5, v0, v5
	v_fma_f32 v47, -v40, v43, v38
	v_dual_mul_f32 v51, v45, v39 :: v_dual_mul_f32 v52, v48, v41
	v_mul_f32_e32 v53, v50, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v49, v33, v36
	v_fmac_f32_e32 v43, v47, v42
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v47, -v34, v49, v33
	v_fma_f32 v38, -v40, v43, v38
	v_fma_f32 v40, -v35, v51, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v49, v47, v36
	v_fma_f32 v47, -v37, v52, v48
	v_fmac_f32_e32 v51, v40, v39
	v_div_fmas_f32 v38, v38, v42, v43
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v33, -v34, v49, v33
	v_fma_f32 v34, -v44, v53, v50
	v_fmac_f32_e32 v52, v47, v41
	v_fma_f32 v35, -v35, v51, v45
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s68, v75
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v33, v33, v36, v49
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v34, -v37, v52, v48
	s_mov_b32 vcc_lo, s3
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s3, s68, v76
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v35, v35, v39, v51
	v_fma_f32 v36, -v44, v53, v50
	s_mov_b32 vcc_lo, s4
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s4, s68, v74
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
	v_cmp_gt_i32_e64 s5, s68, v73
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v59, 0x80000000, v59, s1
	buffer_store_b32 v8, v57, s[52:55], 0 offen
	v_add_lshl_u32 v8, v56, v73, 2
	s_clause 0x1
	buffer_store_b32 v25, v58, s[52:55], 0 offen
	buffer_store_b32 v26, v59, s[52:55], 0 offen
	v_add_lshl_u32 v25, v56, v71, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s5
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v26, v56, v72, 2
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
	v_or_b32_e32 v32, 16, v75
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v57, v56, v70, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s7
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v33, 18, v75
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s8
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v34, 20, v75
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s10, s68, v32
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v57, 0x80000000, v57, s3
	s_clause 0x1
	buffer_store_b32 v27, v8, s[52:55], 0 offen
	buffer_store_b32 v28, v25, s[52:55], 0 offen
	v_add_lshl_u32 v8, v56, v69, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s11, s68, v33
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v25, v56, v32, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s9
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v35, 22, v75
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
	v_or_b32_e32 v36, 24, v75
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v27, v56, v34, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s11
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v37, 26, v75
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s13, s68, v35
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s12
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v38, 28, v75
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
	v_or_b32_e32 v39, 30, v75
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
	v_or_b32_e32 v40, 32, v75
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v19, v56, v38, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s15
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v41, 34, v75
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s17, s68, v39
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s16
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v42, 36, v75
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
	v_or_b32_e32 v43, 38, v75
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
	v_or_b32_e32 v44, 40, v75
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v19, v56, v42, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s19
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v45, 42, v75
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s21, s68, v43
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s20
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v46, 44, v75
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
	v_or_b32_e32 v47, 46, v75
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
	v_or_b32_e32 v48, 48, v75
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v11, v56, v46, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s23
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v49, 50, v75
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s25, s68, v47
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s24
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v50, 52, v75
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
	v_or_b32_e32 v51, 54, v75
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v11, v56, v50, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s3, s2, s27
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v52, 56, v75
	v_or_b32_e32 v53, 58, v75
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
.Ltmp117:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 239
		.amdhsa_next_free_sgpr 85
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_vgpr, 239
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.numbered_sgpr, 85
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15008
; TotalNumSgprs: 87
; NumVgprs: 239
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 29
; NumSGPRsForWavesPerEU: 87
; NumVGPRsForWavesPerEU: 239
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
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
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
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
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
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
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
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     87
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     239
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
