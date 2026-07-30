	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[20:23], s[0:1], 0x80
	s_load_b128 s[28:31], s[0:1], 0x4c
	s_load_b32 s33, s[0:1], 0x60
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v62, 5, v0
	s_load_b64 s[24:25], s[0:1], 0x0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	v_and_b32_e32 v45, 0x60, v0
	v_or_b32_e32 v63, 4, v62
	v_or_b32_e32 v64, 8, v62
	v_or_b32_e32 v65, 12, v62
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v18, 0x110, v0
	v_xor_b32_e32 v19, 0x198, v0
	v_add_nc_u32_e32 v69, 0, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v47, 1, v45
	s_mov_b32 s46, 0
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v73, 0, v18
	v_add_nc_u32_e32 v74, 0, v19
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v68, 15, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s20
	s_bitcmp1_b32 s20, 8
	.loc	1 583 26                        ; attention.py:583:26
	s_mul_i32 s34, s3, s30
	s_cselect_b32 s35, -1, 0
	s_cmp_eq_u32 s4, 1
	s_cselect_b32 s19, -1, 0
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s15, s28
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s52, s2, 6
	.loc	1 566 23                        ; attention.py:566:23
	s_cvt_f32_u32 s4, s15
	s_sub_i32 s6, 0, s15
	s_abs_i32 s2, s3
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v3, s52, v64
	.loc	1 566 23                        ; attention.py:566:23
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v4, s52, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 566 23                        ; attention.py:566:23
	v_readfirstlane_b32 s4, v1
	.loc	1 584 86                        ; attention.py:584:86
	v_and_b32_e32 v1, 31, v0
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[42:43], null, s33, v62, v[1:2]
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v2, s52, v63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 566 23                        ; attention.py:566:23
	s_cvt_u32_f32 s5, s4
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e64 s4, s33, v1
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v1, s52, v62
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_i32 s6, s6, s5
	.loc	1 584 26                        ; attention.py:584:26
	v_lshl_add_u32 v66, s33, 2, v42
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_hi_u32 s6, s5, s6
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v5, 16, v1
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s5, s5, s6
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v6, 20, v1
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_hi_u32 s5, s2, s5
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v7, 24, v1
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_i32 s6, s5, s15
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v9, 28, v1
	.loc	1 566 23                        ; attention.py:566:23
	s_sub_i32 s2, s2, s6
	s_add_i32 s6, s5, 1
	s_sub_i32 s7, s2, s15
	s_cmp_ge_u32 s2, s15
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v10, 32, v1
	.loc	1 566 23                        ; attention.py:566:23
	s_cselect_b32 s5, s6, s5
	s_cselect_b32 s2, s7, s2
	s_add_i32 s6, s5, 1
	s_cmp_ge_u32 s2, s15
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v11, 36, v1
	.loc	1 566 23                        ; attention.py:566:23
	s_cselect_b32 s53, s6, s5
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s16, s29
	s_xor_b32 s18, s28, s29
	s_cvt_f32_u32 s2, s16
	s_sub_i32 s12, 0, s16
	s_ashr_i32 s37, s18, 31
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
	v_cmp_gt_i32_e64 s5, s30, v3
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[43:44], null, s33, 12, v[42:43]
	.loc	1 568 22                        ; attention.py:568:22
	v_readfirstlane_b32 s7, v8
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s6, s30, v4
	.loc	1 584 26                        ; attention.py:584:26
	v_lshl_add_u32 v67, s33, 3, v42
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
	s_mul_i32 s36, s17, s16
	s_sub_i32 s18, s15, s36
	s_add_i32 s36, s17, 1
	s_sub_i32 s38, s18, s16
	s_cmp_ge_u32 s18, s16
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s15, s30, v14
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s17, s36, s17
	s_cselect_b32 s18, s38, s18
	s_add_i32 s36, s17, 1
	s_cmp_ge_u32 s18, s16
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s16, s30, v15
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s36, s36, s17
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s34, s34, s52
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 584 26                        ; attention.py:584:26
	s_mul_i32 s38, s34, s33
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s17, s30, v16
	.loc	1 584 26                        ; attention.py:584:26
	v_add_nc_u32_e32 v1, s38, v42
	v_add_nc_u32_e32 v13, s38, v66
	v_add_nc_u32_e32 v14, s38, v67
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s18, s30, v17
	.loc	1 584 26                        ; attention.py:584:26
	v_add_nc_u32_e32 v15, s38, v43
	v_mad_u64_u32 v[2:3], null, s33, 20, v[1:2]
	v_lshl_add_u32 v16, s33, 4, v1
	v_lshl_add_u32 v17, s33, 5, v1
	.loc	1 585 26                        ; attention.py:585:26
	s_and_b32 s25, s25, 0xffff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[3:4], null, s33, 24, v[1:2]
	v_mad_u64_u32 v[4:5], null, s33, 28, v[1:2]
	v_mad_u64_u32 v[5:6], null, s33, 36, v[1:2]
	v_mad_u64_u32 v[6:7], null, s33, 40, v[1:2]
	v_mad_u64_u32 v[7:8], null, s33, 44, v[1:2]
	v_mad_u64_u32 v[8:9], null, s33, 48, v[1:2]
	v_mad_u64_u32 v[9:10], null, s33, 52, v[1:2]
	v_mad_u64_u32 v[10:11], null, s33, 56, v[1:2]
	v_mad_u64_u32 v[11:12], null, s33, 60, v[1:2]
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s2, s4
	.loc	1 568 22                        ; attention.py:568:22
	s_xor_b32 s2, s36, s37
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v12, 0x80000000, v13, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s5, s4
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v13, 0x80000000, v14, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s6, s4
	.loc	1 568 22                        ; attention.py:568:22
	s_sub_i32 s6, s2, s37
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v14, 0x80000000, v15, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s7, s4
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v15, 0x80000000, v16, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s8, s4
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s9, s4
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s10, s4
	.loc	1 606 16                        ; attention.py:606:16
	s_add_i32 s10, s31, 15
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s11, s4
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v16, 0x80000000, v17, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s12, s4
	.loc	1 585 26                        ; attention.py:585:26
	s_clause 0x5
	buffer_load_u8 v1, v1, s[24:27], 0 offen
	buffer_load_u8 v12, v12, s[24:27], 0 offen
	buffer_load_u8 v13, v13, s[24:27], 0 offen
	buffer_load_u8 v15, v15, s[24:27], 0 offen
	buffer_load_u8 v2, v2, s[24:27], 0 offen
	buffer_load_u8 v3, v3, s[24:27], 0 offen
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s13, s4
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v17, 0x88, v0
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s15, s4
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s14, s4
	.loc	1 569 19                        ; attention.py:569:19
	s_abs_i32 s14, s6
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s16, s4
	.loc	1 585 26                        ; attention.py:585:26
	s_clause 0x1
	buffer_load_u8 v16, v16, s[24:27], 0 offen
	buffer_load_u8 v8, v8, s[24:27], 0 offen
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s17, s4
	.loc	1 569 19                        ; attention.py:569:19
	s_cvt_f32_u32 s2, s14
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s18, s4
	.loc	1 585 26                        ; attention.py:585:26
	s_clause 0x1
	buffer_load_u8 v5, v5, s[24:27], 0 offen
	buffer_load_u8 v9, v9, s[24:27], 0 offen
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	s_clause 0x5
	buffer_load_u8 v6, v6, s[24:27], 0 offen
	buffer_load_u8 v10, v10, s[24:27], 0 offen
	buffer_load_u8 v14, v14, s[24:27], 0 offen
	buffer_load_u8 v4, v4, s[24:27], 0 offen
	buffer_load_u8 v7, v7, s[24:27], 0 offen
	buffer_load_u8 v11, v11, s[24:27], 0 offen
	.loc	1 569 19                        ; attention.py:569:19
	v_rcp_iflag_f32_e32 v20, s2
	.loc	1 606 15                        ; attention.py:606:15
	s_ashr_i32 s2, s10, 31
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v72, 0, v17
	.loc	1 606 15                        ; attention.py:606:15
	s_lshr_b32 s2, s2, 28
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(15)
	ds_store_b8 v69, v1
	s_waitcnt vmcnt(12)
	ds_store_b8 v69, v15 offset:512
	s_waitcnt vmcnt(9)
	ds_store_b8 v69, v16 offset:1024
	s_waitcnt vmcnt(8)
	ds_store_b8 v69, v8 offset:1536
	ds_store_b8 v72, v12
	ds_store_b8 v72, v2 offset:512
	s_waitcnt vmcnt(7)
	ds_store_b8 v72, v5 offset:1024
	s_waitcnt vmcnt(6)
	ds_store_b8 v72, v9 offset:1536
	ds_store_b8 v73, v13
	ds_store_b8 v73, v3 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v73, v6 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v73, v10 offset:1536
	s_waitcnt vmcnt(3)
	ds_store_b8 v74, v14
	s_waitcnt vmcnt(2)
	ds_store_b8 v74, v4 offset:512
	s_waitcnt vmcnt(1)
	ds_store_b8 v74, v7 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v74, v11 offset:1536
	.loc	1 569 19                        ; attention.py:569:19
	v_readfirstlane_b32 s7, v20
	.loc	1 606 15                        ; attention.py:606:15
	s_add_i32 s10, s10, s2
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt lgkmcnt(0)
	.loc	1 606 14                        ; attention.py:606:14
	s_and_b32 s47, s10, -16
	.loc	1 612 9                         ; attention.py:612:9
	s_bfe_u32 s2, s20, 0x10008
	.loc	1 585 26                        ; attention.py:585:26
	s_barrier
	.loc	1 612 9                         ; attention.py:612:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s52, s22
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s8, s52, s21
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s2, s23
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s8, s8, s23
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s2, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s2, s31, s2
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s2, s2, 15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 619 34 is_stmt 0              ; attention.py:619:34
	s_ashr_i32 s5, s2, 31
	s_lshr_b32 s5, s5, 28
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s2, s2, s5
	.loc	1 613 25 is_stmt 1              ; attention.py:613:25
	s_max_i32 s5, s8, 0
	.loc	1 619 33                        ; attention.py:619:33
	s_and_b32 s2, s2, -16
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s46, s5, 0x7ffffff0
	.loc	1 619 18                        ; attention.py:619:18
	s_min_i32 s47, s47, s2
.LBB0_2:
	.loc	1 620 9                         ; attention.py:620:9
	v_cndmask_b32_e64 v1, 0, 1, s19
	s_and_not1_b32 vcc_lo, exec_lo, s19
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s5, 1, v1
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_or_b32_e32 v1, v47, v68
	.loc	1 620 9                         ; attention.py:620:9
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention.py:0:9
	s_add_i32 s2, s52, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 64
	s_min_i32 s2, s31, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 15
	.loc	1 622 34 is_stmt 1              ; attention.py:622:34
	s_ashr_i32 s8, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s8, s8, 28
	s_add_i32 s2, s2, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 622 33 is_stmt 0              ; attention.py:622:33
	s_and_b32 s2, s2, -16
	.loc	1 622 18                        ; attention.py:622:18
	s_min_i32 s47, s47, s2
.LBB0_4:
	.loc	1 571 21 is_stmt 1              ; attention.py:571:21
	v_and_b32_e32 v46, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b32_e32 v2, s52, v1
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_lt_i32 s46, s47
	v_lshrrev_b32_e32 v75, 1, v46
	s_cbranch_scc1 .LBB0_6
; %bb.5:                                ; %.._crit_edge_crit_edge
	.loc	1 843 74                        ; attention.py:843:74
	v_lshrrev_b32_e32 v33, 1, v46
	s_mov_b32 s8, 0
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 74 is_stmt 0                ; attention.py:0:74
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr33
.LBB0_7:                                ; %Flow157
	v_dual_mov_b32 v8, 0 :: v_dual_add_nc_u32 v61, s34, v1
	s_clause 0x1
	s_load_b64 s[44:45], s[0:1], 0x38
	s_load_b32 s34, s[0:1], 0x64
	v_cmp_gt_i32_e64 s2, s30, v2
	v_and_b32_e32 v70, 0x70, v0
	v_dual_mov_b32 v6, v8 :: v_dual_and_b32 v71, 64, v0
	v_cmp_eq_u32_e64 s13, 0, v46
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
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_15
; %bb.8:                                ; %.lr.ph
	s_load_b256 s[36:43], s[0:1], 0x8
	v_dual_mov_b32 v8, 0x7632 :: v_dual_lshlrev_b32 v1, 1, v61
	s_clause 0x2
	s_load_b32 s60, s[0:1], 0x7c
	s_load_b128 s[48:51], s[0:1], 0x28
	s_load_b128 s[16:19], s[0:1], 0x6c
	v_dual_mov_b32 v7, 0x5410 :: v_dual_lshlrev_b32 v2, 5, v68
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v168, 0xff800000 :: v_dual_lshlrev_b32 v3, 1, v0
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v38, 1, v0
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v4, 14, v0
	v_dual_mov_b32 v170, 0xff800000 :: v_dual_lshlrev_b32 v5, 2, v70
	v_dual_mov_b32 v33, 0 :: v_dual_lshlrev_b32 v36, 4, v45
	.loc	1 570 31 is_stmt 1              ; attention.py:570:31
	v_lshrrev_b32_e32 v35, 4, v70
	v_lshlrev_b32_e32 v6, 2, v45
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v44, 63, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s41, 0xffff
	s_mov_b32 s24, s40
	.loc	1 771 51                        ; attention.py:771:51
	v_lshrrev_b32_e32 v78, 6, v71
	buffer_load_u16 v34, v1, s[24:27], 0 offen
	v_dual_mov_b32 v87, 0 :: v_dual_lshlrev_b32 v50, 5, v38
	v_and_or_b32 v80, v3, 24, v2
	v_dual_mov_b32 v32, v33 :: v_dual_lshlrev_b32 v49, 1, v4
	v_lshl_or_b32 v51, v4, 8, v5
	s_xor_b32 s9, s3, s28
	s_mul_f32 s8, s7, 0x4f7ffffe
	v_lshrrev_b32_e32 v37, 3, v45
	v_mov_b32_e32 v1, 0
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v41, s52, v35
	v_and_or_b32 v48, v3, 60, v36
	v_lshl_or_b32 v52, v68, 3, v6
	v_cndmask_b32_e64 v55, 0x3276, v8, s13
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v76, 4, v46
	v_lshrrev_b32_e32 v39, 2, v46
	v_lshl_add_u32 v40, v71, 2, 0
	v_dual_mov_b32 v147, 0xff800000 :: v_dual_lshlrev_b32 v56, 1, v44
	s_ashr_i32 s1, s9, 31
	v_mul_u32_u24_e32 v53, 0x48, v4
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[45:46], null, s34, v78, v[44:45]
	v_or_b32_e32 v36, v80, v36
	v_or3_b32 v91, v51, v50, v49
	s_xor_b32 s9, s53, s1
	s_cvt_u32_f32 s8, s8
	v_mul_lo_u32 v35, s19, v35
	s_sub_i32 s7, 0, s14
	v_cndmask_b32_e64 v54, 0x1054, v7, s13
	s_sub_i32 s20, s9, s1
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v103, 48, v41
	v_xor_b32_e32 v37, v48, v37
	v_xor_b32_e32 v48, v52, v47
	v_lshl_or_b32 v51, v55, 8, v55
	v_dual_mov_b32 v29, v33 :: v_dual_add_nc_u32 v92, v40, v56
	v_dual_mov_b32 v31, v33 :: v_dual_add_nc_u32 v40, 0, v36
	v_lshl_or_b32 v49, v38, 2, v53
	v_xad_u32 v52, v36, 8, 0
	v_xad_u32 v53, v36, 16, 0
	v_xad_u32 v36, v36, 24, 0
	v_xor_b32_e32 v55, 20, v91
	v_xor_b32_e32 v56, 24, v91
	s_mul_i32 s1, s20, s28
	s_mul_i32 s7, s7, s8
	s_sub_i32 s3, s3, s1
	s_mul_hi_u32 s7, s8, s7
	v_or_b32_e32 v57, 8, v41
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[46:47], null, s34, 6, v[45:46]
	v_dual_mov_b32 v23, v33 :: v_dual_add_nc_u32 v100, s23, v103
	v_mov_b32_e32 v11, v33
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v58, 16, v41
	v_or_b32_e32 v59, 24, v41
	v_or_b32_e32 v60, 32, v41
	v_or_b32_e32 v102, 40, v41
	v_or_b32_e32 v104, 56, v41
	v_lshl_or_b32 v50, v54, 8, v54
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s11, s30, v103
	v_xor_b32_e32 v47, 12, v91
	v_xor_b32_e32 v54, 16, v91
	v_or_b32_e32 v103, v48, v39
	v_dual_mov_b32 v5, v33 :: v_dual_and_b32 v48, 0x760076, v51
	v_add_nc_u32_e32 v114, 0, v55
	v_dual_mov_b32 v6, v33 :: v_dual_add_nc_u32 v115, 0, v56
	s_abs_i32 s25, s3
	s_add_i32 s8, s8, s7
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[55:56], null, s60, v68, v[35:36]
	s_ashr_i32 s6, s6, 31
	s_ashr_i32 s7, s3, 31
	s_mul_hi_u32 s26, s25, s8
	v_dual_mov_b32 v18, v33 :: v_dual_add_nc_u32 v95, s23, v57
	.loc	1 569 19                        ; attention.py:569:19
	s_xor_b32 s27, s7, s6
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s6, s30, v57
	v_xor_b32_e32 v57, 28, v91
	v_dual_mov_b32 v27, v33 :: v_dual_add_nc_u32 v90, s23, v41
	v_dual_mov_b32 v19, v33 :: v_dual_add_nc_u32 v96, s23, v58
	v_dual_mov_b32 v20, v33 :: v_dual_add_nc_u32 v97, s23, v59
	v_dual_mov_b32 v21, v33 :: v_dual_add_nc_u32 v98, s23, v60
	v_dual_mov_b32 v22, v33 :: v_dual_add_nc_u32 v99, s23, v102
	v_dual_mov_b32 v24, v33 :: v_dual_add_nc_u32 v101, s23, v104
	v_dual_mov_b32 v10, v33 :: v_dual_and_b32 v39, 0x540054, v50
	v_dual_mov_b32 v3, v33 :: v_dual_add_nc_u32 v112, 0, v47
	v_dual_mov_b32 v4, v33 :: v_dual_add_nc_u32 v113, 0, v54
	v_cmp_gt_i32_e64 s12, s30, v104
	v_or3_b32 v104, v49, v75, v62
	.loc	1 569 19                        ; attention.py:569:19
	s_mul_i32 s23, s26, s14
	v_lshl_or_b32 v132, v48, 4, v48
	ds_load_b64 v[47:48], v40
	ds_load_b64 v[49:50], v52
	ds_load_b64 v[51:52], v53
	ds_load_b64 v[53:54], v36
	s_sub_i32 s23, s25, s23
	s_ashr_i32 s15, s10, 4
	v_dual_mov_b32 v7, v33 :: v_dual_add_nc_u32 v116, 0, v57
	s_add_i32 s25, s26, 1
	s_sub_i32 s28, s23, s14
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[56:57], null, s19, 24, v[55:56]
	.loc	1 569 19                        ; attention.py:569:19
	s_cmp_ge_u32 s23, s14
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s1, s30, v41
	v_xor_b32_e32 v41, 8, v80
	v_cmp_gt_i32_e64 s7, s30, v58
	v_cmp_gt_i32_e64 s10, s30, v102
	v_lshl_or_b32 v102, v38, 6, v37
	.loc	1 754 27                        ; attention.py:754:27
	s_mul_i32 s3, s3, s18
	v_xor_b32_e32 v58, 0x240, v103
	.loc	1 569 19                        ; attention.py:569:19
	s_cselect_b32 s18, s25, s26
	.loc	1 710 33                        ; attention.py:710:33
	s_mul_i32 s24, s20, s29
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s8, s30, v59
	.loc	1 753 27                        ; attention.py:753:27
	s_mul_i32 s17, s20, s17
	v_xor_b32_e32 v59, 16, v104
	.loc	1 569 19                        ; attention.py:569:19
	s_cselect_b32 s20, s28, s23
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s9, s30, v60
	v_subrev_nc_u32_e32 v108, s21, v90
	v_xor_b32_e32 v60, 32, v104
	v_subrev_nc_u32_e32 v117, s21, v95
	v_subrev_nc_u32_e32 v118, s21, v96
	v_subrev_nc_u32_e32 v119, s21, v97
	v_subrev_nc_u32_e32 v120, s21, v98
	v_subrev_nc_u32_e32 v121, s21, v99
	v_subrev_nc_u32_e32 v122, s21, v100
	v_subrev_nc_u32_e32 v123, s21, v101
	.loc	1 569 19                        ; attention.py:569:19
	s_add_i32 s21, s18, 1
	s_cmp_ge_u32 s20, s14
	v_mov_b16_e32 v77.l, 0
	v_dual_mov_b32 v12, v33 :: v_dual_add_nc_u32 v105, 0, v41
	v_xor_b32_e32 v106, 16, v80
	v_xor_b32_e32 v107, 24, v80
	v_xor_b32_e32 v37, 4, v91
	v_xor_b32_e32 v38, 8, v91
	v_xor_b32_e32 v41, 0x810, v102
	v_xor_b32_e32 v137, 48, v104
	v_xor_b32_e32 v138, 64, v104
	v_xor_b32_e32 v139, 0x50, v104
	v_xor_b32_e32 v140, 0x60, v104
	v_xor_b32_e32 v141, 0x70, v104
	v_lshl_or_b32 v39, v39, 4, v39
	v_add_nc_u32_e32 v134, 0, v58
	s_cselect_b32 s14, s21, s18
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[57:58], null, s19, 40, v[55:56]
	v_add_nc_u32_e32 v135, 0, v59
	v_mad_u64_u32 v[58:59], null, s19, 48, v[55:56]
	v_add_nc_u32_e32 v136, 0, v60
	.loc	1 569 19                        ; attention.py:569:19
	s_xor_b32 s14, s14, s27
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[59:60], null, s19, 56, v[55:56]
	.loc	1 742 27                        ; attention.py:742:27
	s_mul_f32 s29, s16, 0x3fb8aa3b
	.loc	1 752 25                        ; attention.py:752:25
	s_mul_i32 s16, s19, s52
	.loc	1 569 19                        ; attention.py:569:19
	s_sub_i32 s14, s14, s27
	v_lshl_add_u32 v79, v68, 1, 0
	v_dual_mov_b32 v155, 0xff800000 :: v_dual_mov_b32 v172, 0xff800000
	v_dual_mov_b32 v167, 0xff800000 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v169, 0xff800000 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v171, 0xff800000 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v173, 0xff800000 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v157, 0xff800000 :: v_dual_mov_b32 v148, 0xff800000
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v150, 0xff800000
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v152, 0xff800000
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v154, 0xff800000
	v_dual_mov_b32 v149, 0xff800000 :: v_dual_mov_b32 v26, v33
	v_dual_mov_b32 v151, 0xff800000 :: v_dual_mov_b32 v28, v33
	v_dual_mov_b32 v153, 0xff800000 :: v_dual_mov_b32 v30, v33
	.loc	1 778 24                        ; attention.py:778:24
	v_cmp_gt_i32_e64 s0, s34, v44
	v_dual_mov_b32 v13, v33 :: v_dual_add_nc_u32 v106, 0, v106
	v_dual_mov_b32 v14, v33 :: v_dual_add_nc_u32 v107, 0, v107
	v_dual_mov_b32 v15, v33 :: v_dual_add_nc_u32 v110, 0, v37
	v_dual_mov_b32 v16, v33 :: v_dual_add_nc_u32 v109, s22, v90
	v_dual_mov_b32 v2, v33 :: v_dual_add_nc_u32 v111, 0, v38
	v_dual_mov_b32 v8, v33 :: v_dual_add_nc_u32 v125, s22, v96
	.loc	1 771 51                        ; attention.py:771:51
	v_or_b32_e32 v89, 6, v78
	.loc	1 707 13                        ; attention.py:707:13
	v_lshl_add_u32 v93, s34, 1, v45
	v_lshl_add_u32 v94, s34, 2, v45
	v_add_nc_u32_e32 v126, s22, v97
	v_add_nc_u32_e32 v128, s22, v99
	v_add_nc_u32_e32 v130, s22, v101
	v_and_b32_e32 v131, 0x5040504, v39
	v_and_b32_e32 v132, 0x7060706, v132
	v_add_nc_u32_e32 v133, 0, v41
	v_add_nc_u32_e32 v137, 0, v137
	v_add_nc_u32_e32 v138, 0, v138
	v_add_nc_u32_e32 v139, 0, v139
	v_add_nc_u32_e32 v140, 0, v140
	v_add_nc_u32_e32 v141, 0, v141
	v_lshl_add_u32 v142, s19, 3, v55
	v_lshl_add_u32 v143, s19, 4, v55
	v_lshl_add_u32 v144, s19, 5, v55
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	.loc	1 772 39                        ; attention.py:772:39
	s_lshl_b32 s64, s15, 3
	s_add_i32 s65, s17, s16
	.loc	1 710 33                        ; attention.py:710:33
	s_add_i32 s68, s14, s24
	s_mov_b32 s61, 0x76543210
	s_mov_b32 s52, s42
	s_mov_b32 s40, s50
	s_mov_b32 s56, s38
	s_mov_b32 s38, s54
	.loc	1 742 17                        ; attention.py:742:17
	s_mov_b32 s30, s29
	s_mov_b32 s62, s29
	s_mov_b32 s63, s29
	s_and_b32 s37, s37, 0xffff
	s_and_b32 s53, s43, 0xffff
	s_and_b32 s41, s51, 0xffff
	s_and_b32 s57, s39, 0xffff
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s39, s55
	s_add_i32 s65, s65, s3
	.loc	1 710 32                        ; attention.py:710:32
	s_mul_i32 s66, s68, s31
	.loc	1 773 30                        ; attention.py:773:30
	s_mul_i32 s67, s68, s64
	.loc	1 794 21                        ; attention.py:794:21
	s_mul_i32 s68, s68, s15
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v77.h, v34.l
	v_add_nc_u32_e32 v124, s22, v95
	v_add_nc_u32_e32 v127, s22, v98
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mov_b32 v146, v77 :: v_dual_add_nc_u32 v129, s22, v100
	v_mov_b32_e32 v60, v77
	v_mov_b32_e32 v145, v77
	s_branch .LBB0_10
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 752 25                        ; attention.py:752:25
	s_mul_i32 s3, s46, s60
	.loc	1 761 36                        ; attention.py:761:36
	s_mov_b32 s42, s54
	.loc	1 752 25                        ; attention.py:752:25
	s_add_i32 s3, s65, s3
	.loc	1 761 36                        ; attention.py:761:36
	s_mov_b32 s43, s55
	v_add_lshl_u32 v165, s3, v55, 2
	v_add_lshl_u32 v166, s3, v142, 2
	v_add_lshl_u32 v174, s3, v143, 2
	v_add_lshl_u32 v175, s3, v56, 2
	v_add_lshl_u32 v176, s3, v144, 2
	v_add_lshl_u32 v178, s3, v58, 2
	v_cndmask_b32_e64 v165, 0x80000000, v165, s75
	v_add_lshl_u32 v177, s3, v57, 2
	v_add_lshl_u32 v179, s3, v59, 2
	v_cndmask_b32_e64 v166, 0x80000000, v166, s71
	v_cndmask_b32_e64 v174, 0x80000000, v174, s73
	v_cndmask_b32_e64 v180, 0x80000000, v175, s28
	v_cndmask_b32_e64 v181, 0x80000000, v176, s72
	v_cndmask_b32_e64 v183, 0x80000000, v178, s74
	v_cndmask_b32_e64 v182, 0x80000000, v177, s69
	v_cndmask_b32_e64 v184, 0x80000000, v179, s70
	s_clause 0x7
	buffer_load_b32 v175, v165, s[40:43], 0 offen
	buffer_load_b32 v176, v166, s[40:43], 0 offen
	buffer_load_b32 v177, v174, s[40:43], 0 offen
	buffer_load_b32 v178, v180, s[40:43], 0 offen
	buffer_load_b32 v179, v181, s[40:43], 0 offen
	buffer_load_b32 v180, v183, s[40:43], 0 offen
	buffer_load_b32 v181, v184, s[40:43], 0 offen
	buffer_load_b32 v183, v182, s[40:43], 0 offen
	.loc	1 771 36                        ; attention.py:771:36
	s_lshr_b32 s3, s46, 1
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v195, v35
	v_cvt_f32_i32_e32 v192, v41
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v41, v173, v173 :: v_dual_add_nc_u32 v174, 0, v103
	.loc	1 771 36                        ; attention.py:771:36
	v_or_b32_e32 v173, s3, v78
	.loc	1 798 53                        ; attention.py:798:53
	s_lshr_b32 s14, s46, 4
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v193, v36
	v_cvt_f32_i32_e32 v197, v34
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v35, v167, v167 :: v_dual_add_nc_u32 v34, 0, v102
	v_dual_max_f32 v36, v168, v168 :: v_dual_max_f32 v157, v157, v157
	v_dual_max_f32 v166, v154, v154 :: v_dual_mul_f32 v203, v60, v195
	.loc	1 771 51                        ; attention.py:771:51
	v_or_b32_e32 v167, 2, v78
	v_or_b32_e32 v168, 4, v78
	.loc	1 777 27                        ; attention.py:777:27
	v_cmp_gt_i32_e64 s20, s64, v173
	.loc	1 782 31                        ; attention.py:782:31
	v_lshl_or_b32 v195, v173, 1, 1
	.loc	1 774 30                        ; attention.py:774:30
	s_add_i32 s15, s3, s67
	.loc	1 798 25                        ; attention.py:798:25
	s_add_i32 s16, s14, s68
	.loc	1 774 30                        ; attention.py:774:30
	s_mul_i32 s14, s15, s34
	.loc	1 798 25                        ; attention.py:798:25
	s_mul_i32 s15, s16, s34
	.loc	1 785 30                        ; attention.py:785:30
	v_mov_b16_e64 v182.l, 0
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v194, v40
	v_cvt_f32_i32_e32 v196, v39
	v_cvt_f32_i32_e32 v198, v38
	.loc	1 771 36                        ; attention.py:771:36
	v_or_b32_e32 v199, s3, v89
	v_or_b32_e32 v200, s3, v167
	v_or_b32_e32 v201, s3, v168
	.loc	1 797 41                        ; attention.py:797:41
	v_add_lshl_u32 v215, s15, v44, 1
	.loc	1 727 37                        ; attention.py:727:37
	s_waitcnt vmcnt(10)
	v_mov_b16_e64 v187.h, v158.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e64 v189.h, v159.l
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v202, v77, v197 :: v_dual_add_nc_u32 v213, s14, v94
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e64 v187.l, v182.l
	v_mov_b16_e64 v189.l, v182.l
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v198, v77, v198 :: v_dual_add_nc_u32 v211, s14, v45
	v_dual_mul_f32 v206, v60, v196 :: v_dual_mul_f32 v207, v145, v194
	v_add_nc_u32_e32 v212, s14, v93
	v_add_nc_u32_e32 v214, s14, v46
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e64 v182.h, v161.l
	.loc	1 762 35                        ; attention.py:762:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v204, v145, v193
	.loc	1 782 31                        ; attention.py:782:31
	v_lshl_or_b32 v194, v199, 1, 1
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v199, v202, v182
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e64 v182.h, v156.l
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v38, v170, v170 :: v_dual_max_f32 v159, v148, v148
	v_dual_max_f32 v40, v172, v172 :: v_dual_max_f32 v161, v149, v149
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v191, v37
	.loc	1 727 37                        ; attention.py:727:37
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v190.h, v160.l
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v37, v169, v169 :: v_dual_add_nc_u32 v160, 0, v91
	v_dual_max_f32 v39, v171, v171 :: v_dual_add_nc_u32 v184, 0, v104
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e64 v185.h, v162.l
	v_mov_b16_e64 v186.h, v163.l
	v_mov_b16_e64 v188.h, v164.l
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v164, v152, v152 :: v_dual_mul_f32 v205, v146, v191
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e64 v185.l, v182.l
	v_mov_b16_e64 v186.l, v182.l
	v_mov_b16_e64 v188.l, v182.l
	v_mov_b16_e64 v190.l, v182.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v208, v146, v192 :: v_dual_mul_f32 v185, v203, v185
	.loc	1 785 30                        ; attention.py:785:30
	v_mov_b16_e64 v193.h, v182.l
	v_mov_b16_e64 v192.h, v182.l
	v_mov_b16_e64 v191.h, v182.l
	v_mov_b16_e64 v156.h, v182.l
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e64 v167.h, v182.l
	v_mov_b16_e64 v168.h, v182.l
	v_mov_b16_e64 v169.h, v182.l
	v_mov_b16_e64 v170.h, v182.l
	v_mov_b16_e64 v171.h, v182.l
	v_mov_b16_e64 v172.h, v182.l
	v_mov_b16_e64 v209.h, v182.l
	v_mov_b16_e64 v210.h, v182.l
	.loc	1 782 31                        ; attention.py:782:31
	v_lshl_or_b32 v196, v201, 1, 1
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v188, v205, v188
	v_dual_mul_f32 v186, v204, v186 :: v_dual_mul_f32 v189, v207, v189
	v_mul_f32_e32 v187, v206, v187
	v_mul_f32_e32 v182, v198, v182
	.loc	1 777 26                        ; attention.py:777:26
	s_and_b32 s20, s0, s20
	.loc	1 775 32                        ; attention.py:775:32
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	.loc	1 782 31                        ; attention.py:782:31
	v_lshl_or_b32 v197, v200, 1, 1
	.loc	1 797 41                        ; attention.py:797:41
	v_cndmask_b32_e64 v200, 0x80000000, v215, s0
	s_mov_b32 s50, s54
	s_mov_b32 s51, s55
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v158, v147, v147 :: v_dual_max_f32 v165, v153, v153
	v_dual_max_f32 v162, v150, v150 :: v_dual_max_f32 v163, v151, v151
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s46, s46, 16
	.loc	1 761 36                        ; attention.py:761:36
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v173, 0xff800000, v175, s75
	s_waitcnt vmcnt(6)
	v_cndmask_b32_e64 v175, 0xff800000, v176, s71
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v176, 0xff800000, v177, s73
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v177, 0xff800000, v178, s28
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v178, 0xff800000, v179, s72
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v179, 0xff800000, v180, s74
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v181, 0xff800000, v181, s70
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v175
	v_cmp_neq_f32_e64 s15, 0xff800000, v176
	.loc	1 761 36                        ; attention.py:761:36
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v180, 0xff800000, v183, s69
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s19, 0xff800000, v179
	v_cmp_neq_f32_e64 s17, 0xff800000, v177
	v_cmp_neq_f32_e64 s21, 0xff800000, v181
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v173
	v_cmp_neq_f32_e64 s16, 0xff800000, v178
	.loc	1 763 25 is_stmt 0              ; attention.py:763:25
	s_and_b32 s14, s71, s3
	s_and_b32 s15, s73, s15
	s_and_b32 s3, s74, s19
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s18, 0xff800000, v180
	.loc	1 763 25                        ; attention.py:763:25
	s_and_b32 s17, s28, s17
	s_and_b32 s19, s70, s21
	.loc	1 762 35 is_stmt 1              ; attention.py:762:35
	ds_store_2addr_b32 v34, v173, v176 offset1:32
	ds_store_2addr_b32 v34, v178, v179 offset0:64 offset1:96
	ds_store_2addr_b32 v133, v175, v177 offset1:32
	ds_store_2addr_b32 v133, v180, v181 offset0:64 offset1:96
	.loc	1 763 25                        ; attention.py:763:25
	v_cndmask_b32_e64 v176, 0, 1, s15
	v_cndmask_b32_e64 v177, 0, 1, s3
	v_cndmask_b32_e64 v179, 0, 1, s17
	v_cndmask_b32_e64 v181, 0, 1, s19
	s_and_b32 vcc_lo, s75, vcc_lo
	s_and_b32 s16, s72, s16
	s_and_b32 s18, s69, s18
	v_cndmask_b32_e64 v173, 0, 1, vcc_lo
	v_cndmask_b32_e64 v178, 0, 1, s16
	v_mov_b16_e64 v156.l, v177.l
	v_mov_b16_e64 v168.l, v176.l
	v_cndmask_b32_e64 v175, 0, 1, s14
	v_cndmask_b32_e64 v180, 0, 1, s18
	v_mov_b16_e64 v170.l, v181.l
	v_mov_b16_e64 v172.l, v179.l
	v_mov_b16_e64 v167.l, v178.l
	v_mov_b16_e64 v169.l, v173.l
	v_lshlrev_b16 v156.l, 8, v156.l
	v_lshlrev_b16 v168.l, 8, v168.l
	v_mov_b16_e64 v171.l, v180.l
	v_mov_b16_e64 v173.l, v175.l
	v_lshlrev_b16 v170.l, 8, v170.l
	v_lshlrev_b16 v172.l, 8, v172.l
	v_or_b16 v175.h, v167.l, v156.l
	v_or_b16 v175.l, v169.l, v168.l
	.loc	1 762 35                        ; attention.py:762:35
	s_waitcnt lgkmcnt(0)
	.loc	1 763 25                        ; attention.py:763:25
	v_or_b16 v173.h, v171.l, v170.l
	v_or_b16 v173.l, v173.l, v172.l
	.loc	1 762 35                        ; attention.py:762:35
	s_barrier
	ds_load_b32 v183, v160
	ds_load_b32 v198, v110
	ds_load_b32 v201, v111
	ds_load_b32 v202, v112
	ds_load_b32 v203, v113
	ds_load_b32 v204, v114
	ds_load_b32 v205, v115
	ds_load_b32 v206, v116
	.loc	1 763 25                        ; attention.py:763:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v174, v175
	ds_store_b32 v134, v173
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v156, v184
	ds_load_u8_d16 v167, v135
	ds_load_u8_d16 v168, v138
	ds_load_u8_d16 v169, v139
	ds_load_u8_d16 v170, v140
	ds_load_u8_d16 v171, v141
	ds_load_u8_d16 v172, v137
	ds_load_u8_d16 v173, v136
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v190, v208, v190
	.loc	1 764 26                        ; attention.py:764:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_lt_i32 s46, s47
	.loc	1 762 35                        ; attention.py:762:35
	v_mul_f32_e32 v174, 0x3fb8aa3b, v183
	v_dual_mul_f32 v178, 0x3fb8aa3b, v198 :: v_dual_mul_f32 v177, 0x3fb8aa3b, v201
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v198, 0x80000000, v213, s20
	.loc	1 762 35                        ; attention.py:762:35
	v_mul_f32_e32 v181, 0x3fb8aa3b, v203
	v_mul_f32_e32 v179, 0x3fb8aa3b, v205
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v175, 0x3fb8aa3b, v206 :: v_dual_fmac_f32 v178, s30, v185
	v_dual_mul_f32 v180, 0x3fb8aa3b, v204 :: v_dual_fmac_f32 v177, s62, v186
	.loc	1 763 25                        ; attention.py:763:25
	v_and_b16 v170.l, 1, v170.l
	v_and_b16 v171.l, 1, v171.l
	.loc	1 762 25                        ; attention.py:762:25
	v_fmac_f32_e32 v179, s62, v189
	v_fmac_f32_e32 v175, s63, v190
	.loc	1 763 25                        ; attention.py:763:25
	v_and_b16 v156.l, 1, v156.l
	v_cmp_eq_u16_e64 s26, 1, v170.l
	v_cmp_eq_u16_e64 s25, 1, v171.l
	v_and_b16 v167.l, 1, v167.l
	v_and_b16 v168.l, 1, v168.l
	v_and_b16 v172.l, 1, v172.l
	v_and_b16 v173.l, 1, v173.l
	v_and_b16 v169.l, 1, v169.l
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v185, 0xff800000, v175, s25
	v_cndmask_b32_e64 v186, 0xff800000, v179, s26
	.loc	1 762 35                        ; attention.py:762:35
	v_mul_f32_e32 v176, 0x3fb8aa3b, v202
	.loc	1 762 25 is_stmt 0              ; attention.py:762:25
	v_dual_fmac_f32 v174, s29, v199 :: v_dual_fmac_f32 v181, s29, v182
	v_fmac_f32_e32 v180, s30, v187
	.loc	1 763 25 is_stmt 1              ; attention.py:763:25
	v_cmp_eq_u16_e64 s21, 1, v172.l
	v_cmp_eq_u16_e64 s22, 1, v173.l
	v_cmp_eq_u16_e64 s23, 1, v167.l
	v_cmp_eq_u16_e64 s24, 1, v156.l
	v_cmp_eq_u16_e64 s27, 1, v169.l
	v_cmp_eq_u16_e64 s28, 1, v168.l
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v179, v186, v185 :: v_dual_fmac_f32 v176, s63, v188
.Ltmp2:
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v173, 0xff800000, v177, s22
	v_cndmask_b32_e64 v183, 0xff800000, v178, s23
	v_cndmask_b32_e64 v184, 0xff800000, v174, s24
	v_cndmask_b32_e64 v187, 0xff800000, v180, s27
	v_cndmask_b32_e64 v182, 0xff800000, v176, s21
	v_cndmask_b32_e64 v188, 0xff800000, v181, s28
	ds_store_b32 v160, v184
	ds_store_b32 v110, v183
	ds_store_b32 v111, v173
	ds_store_b32 v112, v182
	ds_store_b32 v113, v188
	ds_store_b32 v114, v187
	ds_store_b32 v115, v186
	ds_store_b32 v116, v185
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[174:175], v34 offset1:32
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v160, v184, v183, v173
	v_max3_f32 v178, v182, v188, v187
.Ltmp4:
	.loc	1 764 26                        ; attention.py:764:26
	ds_load_2addr_b32 v[176:177], v133 offset1:32
	ds_load_2addr_b32 v[180:181], v133 offset0:64 offset1:96
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v189, 0x80000000, v211, s20
	v_cndmask_b32_e64 v190, 0x80000000, v212, s20
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v160, v160, v178, v179
.Ltmp6:
	.loc	1 764 26                        ; attention.py:764:26
	ds_load_2addr_b32 v[178:179], v34 offset0:64 offset1:96
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v34, 0x80000000, v214, s20
	s_clause 0x3
	buffer_load_u8 v189, v189, s[56:59], 0 offen
	buffer_load_u8 v190, v190, s[56:59], 0 offen
	buffer_load_u8 v198, v198, s[56:59], 0 offen
	buffer_load_u8 v201, v34, s[56:59], 0 offen
	.loc	1 797 41                        ; attention.py:797:41
	buffer_load_u16 v200, v200, s[48:51], 0 offen
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_permlanex16_b32 v199, v160, s61, 0xfedcba98 op_sel:[1,0]
.Ltmp8:
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s20, 0xff800000, v155
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 766 24                        ; attention.py:766:24
	v_max3_f32 v160, v155, v160, v199
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_dual_mov_b32 v34, v174 :: v_dual_max_f32 v205, v175, v175
	v_mov_b32_e32 v204, v175
	v_mov_b32_e32 v202, v176
	v_mov_b32_e32 v206, v177
	v_dual_mov_b32 v212, v180 :: v_dual_sub_f32 v183, v183, v160
	v_dual_mov_b32 v216, v181 :: v_dual_sub_f32 v187, v187, v160
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v211, v178, v178
	v_max_f32_e32 v215, v179, v179
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v34, v34 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v202, v202 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v206, v206 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v212, v212 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v216, v216 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v199, v174, v174
	v_max_f32_e32 v203, v176, v176
	v_dual_max_f32 v207, v177, v177 :: v_dual_mov_b32 v208, v178
	v_max_f32_e32 v217, v181, v181
	v_dual_max_f32 v213, v180, v180 :: v_dual_mov_b32 v214, v179
.Ltmp13:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v173, v173, v160
	v_dual_sub_f32 v185, v185, v160 :: v_dual_max_f32 v34, v34, v34
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v204, v204 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v212, v212, v212
	v_max_f32_e32 v202, v202, v202
	v_max_f32_e32 v216, v216, v216
	v_max_f32_e32 v206, v206, v206
.Ltmp16:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v184, v184, v160
	v_sub_f32_e32 v182, v182, v160
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v214, v214 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v34, v199, v34
	v_max_f32_e32 v199, v203, v202
	v_max_f32_e32 v203, v207, v206
	v_max_f32_e32 v207, v217, v216
	v_max_f32_e32 v204, v204, v204
	v_max_f32_e32 v214, v214, v214
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v208, v208 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp20:
	.loc	1 768 62                        ; attention.py:768:62
	v_dual_sub_f32 v188, v188, v160 :: v_dual_mov_b32 v217, v207
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v202, v205, v204
	v_max_f32_e32 v205, v213, v212
.Ltmp22:
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v218, v155, v160
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v206, v215, v214
.Ltmp24:
	.loc	1 768 62                        ; attention.py:768:62
	v_dual_sub_f32 v186, v186, v160 :: v_dual_mov_b32 v213, v203
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v215, v205
.Ltmp26:
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v218, v218
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v173, v173
	v_exp_f32_e32 v182, v182
	v_exp_f32_e32 v187, v187
	v_exp_f32_e32 v186, v186
	v_exp_f32_e32 v185, v185
	v_exp_f32_e32 v184, v184
	v_exp_f32_e32 v183, v183
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v215, v215 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v213, v213 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp28:
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v155, 0, v218, s20
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v208, v208, v208
.Ltmp30:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v182, 0, v182, s21
	v_cndmask_b32_e64 v173, 0, v173, s22
	v_cndmask_b32_e64 v187, 0, v187, s27
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v25, v25, v155 :: v_dual_max_f32 v204, v211, v208
	v_mul_f32_e32 v21, v21, v155
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v211, v199
.Ltmp32:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v188, v188
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v185, 0, v185, s25
	v_cndmask_b32_e64 v186, 0, v186, s26
.Ltmp33:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:765:29 ]
	v_dual_mov_b32 v214, v204 :: v_dual_mul_f32 v13, v13, v155
.Ltmp34:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v183, 0, v183, s23
	v_cndmask_b32_e64 v184, 0, v184, s24
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v17, v17, v155 :: v_dual_mov_b32 v208, v34
	v_mul_f32_e32 v23, v23, v155
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v188, 0, v188, s28
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v19, v19, v155 :: v_dual_mov_b32 v212, v202
	v_mul_f32_e32 v11, v11, v155
	v_dual_mul_f32 v9, v9, v155 :: v_dual_mov_b32 v216, v206
	v_mul_f32_e32 v15, v15, v155
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e64 v169.l, v182.h
	v_mov_b16_e64 v170.l, v173.h
	v_mov_b16_e64 v171.l, v187.h
	v_mov_b16_e64 v172.l, v188.h
	v_mov_b16_e64 v210.l, v185.h
	v_mov_b16_e64 v209.l, v186.h
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v211, v211 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v214, v214 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v26, v26, v155 :: v_dual_and_b32 v169, 1, v169
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v28, v28, v155 :: v_dual_and_b32 v209, 1, v209
	v_dual_mul_f32 v3, v3, v155 :: v_dual_and_b32 v170, 1, v170
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e64 v167.l, v183.h
	v_mov_b16_e64 v168.l, v184.h
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v208, v208 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v212, v212 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v216, v216 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v171, 1, v171
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v211, v211, v211 :: v_dual_and_b32 v172, 1, v172
	v_dual_max_f32 v215, v215, v215 :: v_dual_and_b32 v210, 1, v210
	v_dual_max_f32 v214, v214, v214 :: v_dual_mul_f32 v1, v1, v155
.Ltmp40:
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v168, 1, v168
	v_cmp_o_f32_e64 s24, v182, v182
	v_cmp_o_f32_e64 s25, v173, v173
	v_cmp_o_f32_e64 s26, v187, v187
	v_cmp_o_f32_e64 s21, v186, v186
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v208, v208, v208 :: v_dual_and_b32 v167, 1, v167
	v_max_f32_e32 v212, v212, v212
	v_max_f32_e32 v216, v216, v216
.Ltmp42:
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v170, v173, v170, 0x7fff
	v_add3_u32 v169, v182, v169, 0x7fff
	v_add3_u32 v171, v187, v171, 0x7fff
	v_add3_u32 v182, v186, v209, 0x7fff
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v173, v199, v211
	v_dual_max_f32 v187, v205, v215 :: v_dual_max_f32 v186, v204, v214
.Ltmp44:
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v30, v30, v155 :: v_dual_max_f32 v213, v213, v213
	v_mul_f32_e32 v12, v12, v155
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s22, v183, v183
	v_cmp_o_f32_e64 s23, v184, v184
	v_add3_u32 v168, v184, v168, 0x7fff
	v_add3_u32 v167, v183, v167, 0x7fff
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v34, v34, v208
.Ltmp46:
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v204.h, 0x7fff, v171.h, s26
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v171, v186
.Ltmp48:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v18, v18, v155
	v_mul_f32_e32 v24, v24, v155
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s20, v185, v185
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v217, v217 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v183, v185, v210, 0x7fff
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v185, v203, v213
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v171, v171 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v184, v202, v212
.Ltmp54:
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v202.h, 0x7fff, v167.h, s22
	v_cndmask_b16 v202.l, 0x7fff, v168.h, s23
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_dual_mov_b32 v167, v34 :: v_dual_mov_b32 v168, v173
.Ltmp56:
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v32, v32, v155 :: v_dual_max_f32 v217, v217, v217
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v203.h, 0x7fff, v169.h, s24
	v_cndmask_b16 v203.l, 0x7fff, v170.h, s25
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v170, v185
	v_mov_b32_dpp v167, v167 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v168, v168 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v171, v171, v171
.Ltmp59:
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v22, v22, v155 :: v_dual_mov_b32 v169, v184
	v_dual_mul_f32 v20, v20, v155 :: v_dual_max_f32 v199, v207, v217
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v170, v170 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v167, v167, v167
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v169, v169 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v168, v168, v168
.Ltmp64:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v14, v14, v155
	v_mul_f32_e32 v2, v2, v155
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s27, v188, v188
	v_add3_u32 v172, v188, v172, 0x7fff
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v188, v206, v216
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_dual_mov_b32 v206, v199 :: v_dual_max_f32 v169, v169, v169
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v170, v170, v170
	v_dual_max_f32 v34, v34, v167 :: v_dual_max_f32 v167, v173, v168
.Ltmp68:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v4, v4, v155
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v206, v206 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v168, v184, v169 :: v_dual_max_f32 v169, v185, v170
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_dual_mov_b32 v184, v34 :: v_dual_mov_b32 v185, v167
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v206, v206, v206
.Ltmp73:
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v204.l, 0x7fff, v172.h, s27
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v172, v187
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v184, v184 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v185, v185 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp75:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v173, v199, v206 :: v_dual_mul_f32 v10, v10, v155
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v205, v188
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v184, v184, v184 :: v_dual_max_f32 v185, v185, v185
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v172, v172 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v170, v186, v171
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp80:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v205, v205 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v34, v34, v184
	v_max_f32_e32 v184, v167, v185
.Ltmp82:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v206, v173
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp83:
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v16, v16, v155 :: v_dual_max_f32 v205, v205, v205
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v172, v172, v172
.Ltmp85:
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v159, v159, v184
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp86:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v206, v206 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v186, v168
.Ltmp87:
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s22, 0xff800000, v147
.Ltmp88:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v171, v187, v172
.Ltmp89:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_dual_mov_b32 v187, v169 :: v_dual_max_f32 v206, v206, v206
.Ltmp90:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v172, v188, v205
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_dual_mov_b32 v188, v170 :: v_dual_mov_b32 v199, v171
	v_mov_b32_dpp v186, v186 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v187, v187 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v205, v172
	v_mov_b32_dpp v188, v188 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v199, v199 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp92:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v186, v186, v186 :: v_dual_max_f32 v187, v187, v187
.Ltmp93:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v205, v205 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp94:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v27, v27, v155
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp95:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v199, v199, v199
	v_max_f32_e32 v185, v168, v186
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_max_f32 v188, v188, v188 :: v_dual_max_f32 v205, v205, v205
	v_max_f32_e32 v186, v169, v187
.Ltmp96:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v29, v29, v155
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v161, v161, v185
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp97:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v187, v170, v188 :: v_dual_max_f32 v188, v171, v199
	v_max_f32_e32 v199, v172, v205
.Ltmp98:
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v169, v37, v185
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v31, v31, v155
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v163, v163, v187
.Ltmp99:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v205, v173, v206
.Ltmp100:
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v173, v41, v199
	v_dual_max_f32 v165, v165, v199 :: v_dual_max_f32 v158, v158, v34
	v_max_f32_e32 v167, v35, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v157, v157, v205
	.loc	1 768 62                        ; attention.py:768:62
	v_dual_sub_f32 v179, v179, v173 :: v_dual_max_f32 v162, v162, v186
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 767 74                        ; attention.py:767:74
	v_dual_sub_f32 v34, v147, v158 :: v_dual_sub_f32 v35, v148, v159
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v166, v166, v205
	v_max_f32_e32 v168, v36, v184
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v36, v149, v161
	.loc	1 767 61 is_stmt 0              ; attention.py:767:61
	v_exp_f32_e32 v34, v34
	.loc	1 768 62 is_stmt 1              ; attention.py:768:62
	v_sub_f32_e32 v175, v175, v169
	v_sub_f32_e32 v181, v181, v157
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v37, v150, v162
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v170, v38, v186
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v36, v36
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v175, v175
	.loc	1 768 62 is_stmt 0              ; attention.py:768:62
	v_sub_f32_e32 v174, v174, v167
	.loc	1 766 24 is_stmt 1              ; attention.py:766:24
	v_max_f32_e32 v171, v39, v187
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v206, 0, v34, s22
	v_cmp_neq_f32_e64 s22, 0xff800000, v148
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v177, v177, v170
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v174, v174
	.loc	1 767 61 is_stmt 1              ; attention.py:767:61
	v_exp_f32_e32 v37, v37
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v181, v181
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v207, 0, v35, s22
	v_cmp_neq_f32_e64 s22, 0xff800000, v149
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v177, v177
	v_exp_f32_e32 v179, v179
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v6, v6, v155
	v_mul_f32_e32 v8, v8, v155
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v208, 0, v36, s22
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v36, 0, v175, s15
	v_cndmask_b32_e32 v34, 0, v174, vcc_lo
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v164, v164, v188
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s22, 0xff800000, v150
	.loc	1 782 30                        ; attention.py:782:30
	v_cmp_gt_i32_e32 vcc_lo, s31, v195
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v149, v36
.Ltmp102:
	.loc	1 767 74                        ; attention.py:767:74
	v_dual_sub_f32 v41, v154, v166 :: v_dual_sub_f32 v176, v176, v168
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v147, v34
.Ltmp104:
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v39, v152, v164
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v172, v40, v188
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v209, 0, v37, s22
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v176, v176
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v37, 0, v177, s17
.Ltmp105:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v149, v149 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp106:
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s22, 0xff800000, v151
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v147, v147 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp108:
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v41, v41
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v36, v36, v149
.Ltmp110:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v178, v178, v171
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v199, v202, s61, 0xfedcba98 op_sel:[1,0]
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v35, 0, v176, s14
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v205, v204, s61, 0xfedcba98 op_sel:[1,0]
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v149, v36
.Ltmp112:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v178, v178
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v7, v7, v155
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_dual_mov_b32 v148, v35 :: v_dual_mul_f32 v5, v5, v155
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v149, v149 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v155, v160
	v_mov_b32_dpp v148, v148 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp114:
	.loc	1 767 74                        ; attention.py:767:74
	v_dual_sub_f32 v40, v153, v165 :: v_dual_add_f32 v35, v35, v148
	.loc	1 767 61 is_stmt 0              ; attention.py:767:61
	v_exp_f32_e32 v40, v40
	.loc	1 785 32 is_stmt 1              ; attention.py:785:32
	s_waitcnt vmcnt(4)
	v_lshrrev_b16 v193.l, 4, v189.l
	s_waitcnt vmcnt(3)
	v_lshrrev_b16 v192.l, 4, v190.l
	s_waitcnt vmcnt(2)
	v_lshrrev_b16 v191.l, 4, v198.l
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v148, v35
.Ltmp116:
	.loc	1 785 32                        ; attention.py:785:32
	s_waitcnt vmcnt(1)
	v_lshrrev_b16 v156.l, 4, v201.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v148, v148 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v150, v37 :: v_dual_add_f32 v35, v35, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v150, v150 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp118:
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v38, v151, v163
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_dual_mov_b32 v148, v35 :: v_dual_add_f32 v37, v37, v150
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp120:
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v38, v38
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v148, v148 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v150, v37
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v174, v35, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v150, v150 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp124:
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v210, 0, v38, s22
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v38, 0, v178, s16
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s22, 0xff800000, v152
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v35.l, v198.l, 15
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v37, v37, v150
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_dual_mov_b32 v151, v38 :: v_dual_and_b32 v148, 15, v198
.Ltmp127:
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v211, 0, v39, s22
	v_cmp_neq_f32_e64 s22, 0xff800000, v153
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v150, v37
.Ltmp129:
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v35.h, v201.l, 15
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v151, v151 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp131:
	.loc	1 786 54                        ; attention.py:786:54
	v_or_b32_e32 v187, -16, v148
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v212, 0, v40, s22
	v_cmp_neq_f32_e64 s22, 0xff800000, v154
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v40, 0, v179, s3
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v38, v38, v151 :: v_dual_lshlrev_b32 v179, 16, v200
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v150, v150 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp134:
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v213, 0, v41, s22
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v41, 0, v181, s19
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v151, v38
.Ltmp136:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v34, v34, v147
.Ltmp137:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v180, v180, v172
.Ltmp138:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v153, v40
.Ltmp139:
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v198, v199, v202, v131
.Ltmp140:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v151, v151 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v147, v34
.Ltmp141:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v180, v180
.Ltmp142:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v153, v153 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp143:
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v199, v199, v202, v132
	v_perm_b32 v202, v205, v204, v131
.Ltmp144:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v147, v147 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp145:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v39, 0, v180, s18
	.loc	1 783 32                        ; attention.py:783:32
	v_cndmask_b32_e32 v180, 0, v193, vcc_lo
	.loc	1 782 30                        ; attention.py:782:30
	v_cmp_gt_i32_e32 vcc_lo, s31, v197
.Ltmp146:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_dual_mov_b32 v152, v39 :: v_dual_cndmask_b32 v181, 0, v192
.Ltmp147:
	.loc	1 782 30                        ; attention.py:782:30
	v_cmp_gt_i32_e32 vcc_lo, s31, v196
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp148:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v152, v152 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp149:
	.loc	1 783 32                        ; attention.py:783:32
	v_cndmask_b32_e32 v184, 0, v191, vcc_lo
	.loc	1 782 30                        ; attention.py:782:30
	v_cmp_gt_i32_e32 vcc_lo, s31, v194
.Ltmp150:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v39, v39, v152
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp151:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v152, v39
	v_mov_b32_dpp v152, v152 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v154, v41 :: v_dual_add_f32 v39, v39, v152
	v_mov_b32_dpp v154, v154 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v152, v39 :: v_dual_add_f32 v41, v41, v154
	v_mov_b32_dpp v152, v152 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v154, v41
.Ltmp152:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v152, v39, v152
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp153:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v154, v154 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v39, v174
.Ltmp154:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v41, v41, v154
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp155:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v39, v39 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v154, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v154, v154 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp156:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v34, v34, v147 :: v_dual_add_f32 v41, v41, v154
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp157:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_dual_mov_b32 v147, v34 :: v_dual_add_f32 v36, v36, v149
	v_mov_b32_e32 v214, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v147, v147 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v149, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v214, v214 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp158:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v147, v34, v147
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp159:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v149, v149 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp160:
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v34.l, v189.l, 15
.Ltmp161:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v41, v41, v214 :: v_dual_and_b32 v178, 15, v201
.Ltmp162:
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v34.h, v190.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp163:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v149, v36, v149
.Ltmp164:
	.loc	1 784 29                        ; attention.py:784:29
	v_and_b32_e32 v36, 15, v189
.Ltmp165:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v38, v38, v151
	v_add_f32_e32 v40, v40, v153
.Ltmp166:
	.loc	1 783 32                        ; attention.py:783:32
	v_dual_cndmask_b32 v156, 0, v156 :: v_dual_fmac_f32 v41, v88, v213
	.loc	1 786 54                        ; attention.py:786:54
	v_or_b32_e32 v185, -16, v36
	v_or_b32_e32 v188, -16, v178
.Ltmp167:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v150, v37, v150
.Ltmp168:
	.loc	1 784 29                        ; attention.py:784:29
	v_and_b32_e32 v37, 15, v190
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v34.l
.Ltmp169:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v151, v38
	v_mov_b32_e32 v153, v40
.Ltmp170:
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v201, v203, s61, 0xfedcba98 op_sel:[1,0]
	.loc	1 786 54                        ; attention.py:786:54
	v_or_b32_e32 v186, -16, v37
	.loc	1 786 29 is_stmt 0              ; attention.py:786:29
	v_cndmask_b32_e32 v36, v36, v185, vcc_lo
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v34.h
.Ltmp171:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v153, v153 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp172:
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b32_e32 v185, -16, v181
.Ltmp173:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v151, v151 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp174:
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v36, v36
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b32_e32 v34, v37, v186, vcc_lo
	.loc	1 786 38 is_stmt 0              ; attention.py:786:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v35.l
.Ltmp175:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v40, v40, v153
.Ltmp176:
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b32_e32 v186, -16, v184
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v36, v36, v179
	v_cvt_f32_i32_e32 v34, v34
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b32_e32 v37, v148, v187, vcc_lo
	.loc	1 786 38 is_stmt 0              ; attention.py:786:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v35.h
.Ltmp177:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v153, v40
.Ltmp178:
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b32_e32 v148, -16, v180
	v_or_b32_e32 v187, -16, v156
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b32_e32 v35, v178, v188, vcc_lo
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v180
.Ltmp179:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v153, v153 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp180:
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v200, v201, v203, v131
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v37, v37, v179
	v_cvt_f32_i32_e32 v35, v35
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b32_e32 v148, v180, v148, vcc_lo
	.loc	1 787 39 is_stmt 0              ; attention.py:787:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v181
.Ltmp181:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v40, v40, v153
.Ltmp182:
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s14, v37, v37
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_mul_f32_e32 v35, v179, v35
	v_cvt_f32_i32_e32 v148, v148
	.loc	1 787 30 is_stmt 1              ; attention.py:787:30
	v_cndmask_b32_e32 v178, v181, v185, vcc_lo
	.loc	1 787 39 is_stmt 0              ; attention.py:787:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v184
.Ltmp183:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v177, v40
.Ltmp184:
	.loc	1 814 30                        ; attention.py:814:30
	v_bfe_u32 v185, v35, 16, 1
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_mul_f32_e32 v148, v148, v179
	v_cvt_f32_i32_e32 v178, v178
	.loc	1 787 30 is_stmt 1              ; attention.py:787:30
	v_cndmask_b32_e32 v180, v184, v186, vcc_lo
	.loc	1 787 39 is_stmt 0              ; attention.py:787:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v156
.Ltmp185:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v177, v177 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp186:
	.loc	1 814 30                        ; attention.py:814:30
	v_bfe_u32 v184, v37, 16, 1
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_mul_f32_e32 v178, v178, v179
	v_cvt_f32_i32_e32 v180, v180
	.loc	1 787 30 is_stmt 1              ; attention.py:787:30
	v_cndmask_b32_e32 v156, v156, v187, vcc_lo
.Ltmp187:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v40, v40, v177
.Ltmp188:
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	v_cmp_o_f32_e64 s15, v35, v35
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_mul_f32_e32 v180, v179, v180
	v_cvt_f32_i32_e32 v156, v156
	.loc	1 817 23 is_stmt 1              ; attention.py:817:23
	v_fmac_f32_e32 v40, v87, v212
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v34, v34, v179
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_add3_u32 v37, v37, v184, 0x7fff
	v_bfe_u32 v184, v180, 16, 1
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v156, v179, v156
	.loc	1 814 30                        ; attention.py:814:30
	v_bfe_u32 v179, v36, 16, 1
	v_mov_b32_e32 v87, v40
	v_bfe_u32 v181, v34, 16, 1
	v_cmp_o_f32_e64 s3, v34, v34
	v_add3_u32 v35, v35, v185, 0x7fff
	v_add3_u32 v36, v36, v179, 0x7fff
	v_bfe_u32 v179, v148, 16, 1
	v_add3_u32 v34, v34, v181, 0x7fff
	v_bfe_u32 v181, v178, 16, 1
	v_bfe_u32 v185, v156, 16, 1
	v_cmp_o_f32_e64 s16, v148, v148
	v_cndmask_b16 v34.l, 0x7fff, v36.h, vcc_lo
	v_add3_u32 v36, v148, v179, 0x7fff
	v_cmp_o_f32_e64 s17, v178, v178
	v_cmp_o_f32_e64 s18, v180, v180
	v_cmp_o_f32_e64 s19, v156, v156
	v_add3_u32 v148, v178, v181, 0x7fff
	v_cndmask_b16 v35.l, 0x7fff, v37.h, s14
	v_add3_u32 v37, v180, v184, 0x7fff
	v_add3_u32 v156, v156, v185, 0x7fff
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s15
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s16
.Ltmp189:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v153, v149
.Ltmp190:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v151, v38, v151
.Ltmp191:
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v36.h, 0x7fff, v148.h, s17
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s18
	v_cndmask_b16 v37.h, 0x7fff, v156.h, s19
	ds_store_b16 v92, v34
	ds_store_b16_d16_hi v92, v34 offset:512
	ds_store_b16 v92, v35 offset:1024
	ds_store_b16_d16_hi v92, v35 offset:1536
	ds_store_b16 v92, v36 offset:128
	ds_store_b16_d16_hi v92, v36 offset:640
	ds_store_b16 v92, v37 offset:1152
	ds_store_b16_d16_hi v92, v37 offset:1664
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v148, v79 offset:352
.Ltmp192:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_dual_mov_b32 v38, v147 :: v_dual_add_f32 v35, v174, v39
	v_dual_mov_b32 v175, v151 :: v_dual_mov_b32 v176, v152
	v_mov_b32_dpp v153, v153 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v38, v38 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp193:
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v156.h, 0x7fff, v183.h, s20
.Ltmp194:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v175, v175 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v176, v176 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v154, v150
.Ltmp195:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v34, v147, v38
.Ltmp196:
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_u16_d16 v174, v79
	ds_load_u16_d16 v182, v79 offset:32
	ds_load_u16_d16 v190, v79 offset:64
	ds_load_u16_d16 v147, v79 offset:96
.Ltmp197:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v36, v151, v175 :: v_dual_add_f32 v37, v152, v176
.Ltmp198:
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_u16_d16 v176, v79 offset:512
	ds_load_u16_d16 v183, v79 offset:288
	ds_load_u16_d16 v192, v79 offset:576
	ds_load_u16_d16 v175, v79 offset:256
	ds_load_u16_d16 v191, v79 offset:320
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v148, v79 offset:480
.Ltmp199:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v154, v154 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp200:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v38, v149, v153
.Ltmp201:
	.loc	1 816 30                        ; attention.py:816:30
	s_waitcnt lgkmcnt(8)
	v_cndmask_b16 v156.l, 0x7fff, v182.h, s21
	v_perm_b32 v201, v201, v203, v132
	v_perm_b32 v203, v205, v204, v132
.Ltmp202:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v39, v150, v154
.Ltmp203:
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_u16_d16 v193, v79 offset:832
	ds_load_u16_d16 v177, v79 offset:768
	ds_load_u16_d16 v184, v79 offset:544
	ds_load_u16_d16 v149, v79 offset:608
	ds_load_u16_d16_hi v174, v79 offset:128
	ds_load_u16_d16_hi v182, v79 offset:160
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v190, v79 offset:192
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v147, v79 offset:224
	ds_load_u16_d16 v194, v79 offset:1088
	ds_load_u16_d16 v178, v79 offset:1024
	ds_load_u16_d16 v185, v79 offset:800
	ds_load_u16_d16 v150, v79 offset:864
	ds_load_u16_d16 v195, v79 offset:1344
	ds_load_u16_d16 v179, v79 offset:1280
	ds_load_u16_d16 v186, v79 offset:1056
	ds_load_u16_d16 v151, v79 offset:1120
	ds_load_u16_d16 v196, v79 offset:1600
	ds_load_u16_d16 v180, v79 offset:1536
	ds_load_u16_d16 v187, v79 offset:1312
	ds_load_u16_d16 v152, v79 offset:1376
	ds_load_u16_d16 v197, v79 offset:1856
	ds_load_u16_d16 v181, v79 offset:1792
	ds_load_u16_d16 v188, v79 offset:1568
	ds_load_u16_d16 v153, v79 offset:1632
	ds_load_u16_d16 v189, v79 offset:1824
	ds_load_u16_d16 v154, v79 offset:1888
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v192, v79 offset:704
	ds_load_u16_d16_hi v176, v79 offset:640
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v175, v79 offset:384
	ds_load_u16_d16_hi v183, v79 offset:416
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v191, v79 offset:448
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v193, v79 offset:960
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v177, v79 offset:896
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v184, v79 offset:672
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v149, v79 offset:736
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v194, v79 offset:1216
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v178, v79 offset:1152
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v185, v79 offset:928
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v150, v79 offset:992
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v195, v79 offset:1472
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v179, v79 offset:1408
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v186, v79 offset:1184
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v151, v79 offset:1248
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v196, v79 offset:1728
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v180, v79 offset:1664
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v187, v79 offset:1440
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v152, v79 offset:1504
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v197, v79 offset:1984
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v181, v79 offset:1920
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v188, v79 offset:1696
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v153, v79 offset:1760
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v189, v79 offset:1952
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v154, v79 offset:2016
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v215, v156, s61, 0xfedcba98 op_sel:[1,0]
	.loc	1 817 23                        ; attention.py:817:23
	v_dual_fmac_f32 v34, v81, v206 :: v_dual_fmac_f32 v35, v82, v207
	v_dual_fmac_f32 v38, v83, v208 :: v_dual_fmac_f32 v39, v84, v209
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v204, v215, v156, v131
	v_perm_b32 v205, v215, v156, v132
	.loc	1 817 23                        ; attention.py:817:23
	v_dual_fmac_f32 v36, v85, v210 :: v_dual_fmac_f32 v37, v86, v211
	v_dual_mov_b32 v81, v34 :: v_dual_mov_b32 v82, v35
	v_dual_mov_b32 v83, v38 :: v_dual_mov_b32 v84, v39
	v_mov_b32_e32 v85, v36
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[190:197], v[198:205], v[9:16]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[174:181], v[198:205], v[25:32]
	v_mov_b32_e32 v86, v37
	v_mov_b32_e32 v88, v41
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[182:189], v[198:205], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[147:154], v[198:205], v[1:8]
	v_dual_mov_b32 v147, v158 :: v_dual_mov_b32 v148, v159
	v_dual_mov_b32 v149, v161 :: v_dual_mov_b32 v150, v162
	v_dual_mov_b32 v151, v163 :: v_dual_mov_b32 v152, v164
	v_dual_mov_b32 v153, v165 :: v_dual_mov_b32 v154, v166
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc0 .LBB0_14
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v34, s46, v62
	v_or_b32_e32 v35, s46, v63
	.loc	1 711 32                        ; attention.py:711:32
	s_add_i32 s20, s46, s66
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v36, s46, v64
	.loc	1 711 32                        ; attention.py:711:32
	s_mul_i32 s3, s20, s33
	.loc	1 714 73                        ; attention.py:714:73
	v_cmp_gt_i32_e32 vcc_lo, s31, v34
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v37, s46, v65
	.loc	1 711 32                        ; attention.py:711:32
	v_add_nc_u32_e32 v38, s3, v42
	v_add_nc_u32_e32 v39, s3, v66
	v_add_nc_u32_e32 v40, s3, v67
	v_add_nc_u32_e32 v34, s3, v43
	.loc	1 714 73                        ; attention.py:714:73
	v_cmp_gt_i32_e64 s3, s31, v35
	v_cmp_gt_i32_e64 s14, s31, v36
	.loc	1 714 30 is_stmt 0              ; attention.py:714:30
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 714 73                        ; attention.py:714:73
	v_cmp_gt_i32_e64 s15, s31, v37
	.loc	1 712 32 is_stmt 1              ; attention.py:712:32
	v_cndmask_b32_e32 v35, 0x80000000, v38, vcc_lo
	.loc	1 714 30                        ; attention.py:714:30
	s_and_b32 vcc_lo, s4, s3
	.loc	1 712 32                        ; attention.py:712:32
	v_add_nc_u32_e32 v38, 0, v80
	v_cndmask_b32_e32 v36, 0x80000000, v39, vcc_lo
	.loc	1 714 30                        ; attention.py:714:30
	s_and_b32 vcc_lo, s4, s14
	.loc	1 717 33                        ; attention.py:717:33
	v_mov_b32_e32 v39, v33
	.loc	1 712 32                        ; attention.py:712:32
	v_cndmask_b32_e32 v37, 0x80000000, v40, vcc_lo
	.loc	1 714 30                        ; attention.py:714:30
	s_and_b32 vcc_lo, s4, s15
	.loc	1 717 33                        ; attention.py:717:33
	v_mov_b32_e32 v40, v33
	.loc	1 712 32                        ; attention.py:712:32
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	s_clause 0x3
	buffer_load_u8 v35, v35, s[36:39], 0 offen
	buffer_load_u8 v36, v36, s[36:39], 0 offen
	buffer_load_u8 v37, v37, s[36:39], 0 offen
	buffer_load_u8 v34, v34, s[36:39], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v165, s46, v68
	.loc	1 745 17                        ; attention.py:745:17
	s_and_b32 vcc_lo, exec_lo, s5
	.loc	1 712 32                        ; attention.py:712:32
	s_waitcnt vmcnt(3)
	ds_store_b8 v69, v35
	s_waitcnt vmcnt(2)
	ds_store_b8 v72, v36
	s_waitcnt vmcnt(1)
	ds_store_b8 v73, v37
	s_waitcnt vmcnt(0)
	ds_store_b8 v74, v34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[158:159], v38
	ds_load_b64 v[160:161], v105
	ds_load_b64 v[162:163], v106
	ds_load_b64 v[174:175], v107
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
	v_cmp_gt_i32_e64 s3, s31, v165
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[158:159], v[47:48], v[34:41] neg_lo:[1,1,0]
	.loc	1 743 25                        ; attention.py:743:25
	s_and_b32 s75, s1, s3
	s_and_b32 s71, s6, s3
	s_and_b32 s73, s7, s3
	s_and_b32 s28, s8, s3
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[160:161], v[49:50], v[34:41] neg_lo:[1,1,0]
	.loc	1 743 25                        ; attention.py:743:25
	s_and_b32 s72, s9, s3
	s_and_b32 s69, s10, s3
	s_and_b32 s74, s11, s3
	s_and_b32 s70, s12, s3
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[162:163], v[51:52], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[174:175], v[53:54], v[34:41] neg_lo:[1,1,0]
	.loc	1 745 17                        ; attention.py:745:17
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 746 30                        ; attention.py:746:30
	v_cmp_le_i32_e32 vcc_lo, v165, v90
	v_cmp_le_i32_e64 s3, v165, v95
	v_cmp_le_i32_e64 s14, v165, v96
	v_cmp_le_i32_e64 s15, v165, v97
	v_cmp_le_i32_e64 s16, v165, v98
	v_cmp_le_i32_e64 s17, v165, v99
	.loc	1 746 21 is_stmt 0              ; attention.py:746:21
	s_and_b32 s21, vcc_lo, s75
	s_and_b32 s3, s3, s71
	.loc	1 746 30                        ; attention.py:746:30
	v_cmp_le_i32_e64 s18, v165, v100
	v_cmp_le_i32_e64 s19, v165, v101
	.loc	1 746 21                        ; attention.py:746:21
	s_and_b32 s14, s14, s73
	s_and_b32 s15, s15, s28
	s_and_not1_b32 s22, s75, exec_lo
	s_and_b32 s21, s21, exec_lo
	s_and_not1_b32 s23, s71, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s16, s16, s72
	s_and_b32 s17, s17, s69
	s_or_b32 s75, s22, s21
	s_or_b32 s71, s23, s3
	s_and_not1_b32 s3, s73, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_not1_b32 s21, s28, exec_lo
	s_and_b32 s15, s15, exec_lo
	s_and_b32 s18, s18, s74
	s_and_b32 s19, s19, s70
	s_or_b32 s73, s3, s14
	s_or_b32 s28, s21, s15
	s_and_not1_b32 s3, s72, exec_lo
	s_and_b32 s14, s16, exec_lo
	s_and_not1_b32 s15, s69, exec_lo
	s_and_b32 s16, s17, exec_lo
	s_or_b32 s72, s3, s14
	s_or_b32 s69, s15, s16
	s_and_not1_b32 s3, s74, exec_lo
	s_and_b32 s14, s18, exec_lo
	s_and_not1_b32 s15, s70, exec_lo
	s_and_b32 s16, s19, exec_lo
	s_or_b32 s74, s3, s14
	s_or_b32 s70, s15, s16
.LBB0_12:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 571 21 is_stmt 1              ; attention.py:571:21
	v_or_b32_e32 v156, 2, v76
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_or_b32_e32 v160, s46, v76
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v158, 4, v76
	.loc	1 0 0                           ; attention.py:0
	v_add_lshl_u32 v166, s20, v76, 1
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v159, 6, v76
	.loc	1 0 0                           ; attention.py:0
	v_or_b32_e32 v156, s46, v156
	v_cmp_gt_i32_e32 vcc_lo, s31, v160
	v_or_b32_e32 v158, s46, v158
	v_add_nc_u32_e32 v174, 4, v166
	v_or_b32_e32 v159, s46, v159
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v161, 8, v76
	.loc	1 0 0                           ; attention.py:0
	v_cndmask_b32_e32 v160, 0x80000000, v166, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v156
	v_add_nc_u32_e32 v175, 8, v166
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v162, 10, v76
	.loc	1 0 0                           ; attention.py:0
	v_or_b32_e32 v161, s46, v161
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v163, 12, v76
	.loc	1 0 0                           ; attention.py:0
	v_cndmask_b32_e32 v156, 0x80000000, v174, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v158
	v_add_nc_u32_e32 v174, 12, v166
	v_or_b32_e32 v162, s46, v162
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v164, 14, v76
	.loc	1 0 0                           ; attention.py:0
	v_or_b32_e32 v163, s46, v163
	v_dual_cndmask_b32 v158, 0x80000000, v175 :: v_dual_add_nc_u32 v175, 16, v166
	v_cmp_gt_i32_e32 vcc_lo, s31, v159
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b32_e32 v164, s46, v164
	v_cndmask_b32_e32 v159, 0x80000000, v174, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v161
	v_add_nc_u32_e32 v174, 20, v166
	v_add_nc_u32_e32 v161, 24, v166
	v_dual_cndmask_b32 v175, 0x80000000, v175 :: v_dual_add_nc_u32 v166, 28, v166
	v_cmp_gt_i32_e32 vcc_lo, s31, v162
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v174, 0x80000000, v174, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v163
	v_cndmask_b32_e32 v176, 0x80000000, v161, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v164
	v_cndmask_b32_e32 v166, 0x80000000, v166, vcc_lo
	s_clause 0x7
	buffer_load_u16 v161, v160, s[52:55], 0 offen
	buffer_load_u16 v162, v156, s[52:55], 0 offen
	buffer_load_u16 v163, v158, s[52:55], 0 offen
	buffer_load_u16 v164, v159, s[52:55], 0 offen
	buffer_load_u16 v156, v175, s[52:55], 0 offen
	buffer_load_u16 v158, v174, s[52:55], 0 offen
	buffer_load_u16 v159, v176, s[52:55], 0 offen
	buffer_load_u16 v160, v166, s[52:55], 0 offen
	.loc	1 747 17 is_stmt 1              ; attention.py:747:17
	s_and_not1_b32 vcc_lo, exec_lo, s35
	s_cbranch_vccnz .LBB0_9
; %bb.13:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e32 vcc_lo, v165, v108
	v_cmp_ge_i32_e64 s3, v165, v117
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s20, v165, v109
	v_cmp_le_i32_e64 s21, v165, v124
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s14, v165, v118
	v_cmp_ge_i32_e64 s15, v165, v119
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s22, v165, v125
	v_cmp_le_i32_e64 s23, v165, v126
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s16, v165, v120
	v_cmp_ge_i32_e64 s17, v165, v121
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s24, v165, v127
	v_cmp_le_i32_e64 s25, v165, v128
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s20, vcc_lo, s20
	s_and_b32 s3, s3, s21
	.loc	1 748 30 is_stmt 1              ; attention.py:748:30
	v_cmp_ge_i32_e64 s18, v165, v122
	v_cmp_ge_i32_e64 s19, v165, v123
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s26, v165, v129
	v_cmp_le_i32_e64 s27, v165, v130
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s20, s20, s75
	s_and_b32 s3, s3, s71
	s_and_b32 s14, s14, s22
	s_and_b32 s15, s15, s23
	s_and_b32 s14, s14, s73
	s_and_b32 s15, s15, s28
	s_and_b32 s16, s16, s24
	s_and_b32 s17, s17, s25
	s_and_not1_b32 s21, s75, exec_lo
	s_and_b32 s20, s20, exec_lo
	s_and_not1_b32 s22, s71, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s16, s16, s72
	s_and_b32 s17, s17, s69
	s_and_b32 s18, s18, s26
	s_and_b32 s19, s19, s27
	s_or_b32 s75, s21, s20
	s_or_b32 s71, s22, s3
	s_and_not1_b32 s3, s73, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_not1_b32 s20, s28, exec_lo
	s_and_b32 s15, s15, exec_lo
	s_and_b32 s18, s18, s74
	s_and_b32 s19, s19, s70
	s_or_b32 s73, s3, s14
	s_or_b32 s28, s20, s15
	s_and_not1_b32 s3, s72, exec_lo
	s_and_b32 s14, s16, exec_lo
	s_and_not1_b32 s15, s69, exec_lo
	s_and_b32 s16, s17, exec_lo
	s_or_b32 s72, s3, s14
	s_or_b32 s69, s15, s16
	s_and_not1_b32 s3, s74, exec_lo
	s_and_b32 s14, s18, exec_lo
	s_and_not1_b32 s15, s70, exec_lo
	s_and_b32 s16, s19, exec_lo
	s_or_b32 s74, s3, s14
	s_or_b32 s70, s15, s16
	s_branch .LBB0_9
.LBB0_14:                               ; %Flow
	.loc	1 0 21                          ; attention.py:0:21
	v_mov_b32_e32 v33, v75
.LBB0_15:                               ; %._crit_edge
	.loc	1 707 13 is_stmt 1              ; attention.py:707:13
	v_lshlrev_b32_e32 v42, 4, v0
	v_lshrrev_b32_e32 v43, 1, v0
	v_lshlrev_b32_e32 v0, 2, v0
	v_lshrrev_b32_e32 v44, 3, v71
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v42, 0x70, v42
	v_and_b32_e32 v43, 4, v43
	v_and_b32_e32 v0, 0x80, v0
	s_barrier
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v65, 18, v33
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s33, s34, v33
	.loc	1 707 13                        ; attention.py:707:13
	v_add3_u32 v42, 0, v42, v43
	v_add_nc_u32_e32 v43, 0, v70
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v68.h, 0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s22, s34, v65
	.loc	1 707 13                        ; attention.py:707:13
	ds_store_b128 v43, v[34:37]
	ds_store_b128 v43, v[38:41] offset:128
	v_add3_u32 v0, v42, v0, v44
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 846 17                        ; attention.py:846:17
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s47, 0x31027000
	.loc	1 707 13                        ; attention.py:707:13
	ds_load_b32 v0, v0
	s_mov_b32 s46, 0x7ffffffe
	.loc	1 841 48                        ; attention.py:841:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v34, null, v0, v0, v25
	v_div_scale_f32 v36, null, v0, v0, v26
	v_div_scale_f32 v42, null, v0, v0, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v46, v34
	v_rcp_f32_e32 v47, v36
	v_div_scale_f32 v38, null, v0, v0, v27
	v_div_scale_f32 v44, null, v0, v0, v30
	v_rcp_f32_e32 v50, v42
	v_div_scale_f32 v35, vcc_lo, v25, v0, v25
	v_div_scale_f32 v40, null, v0, v0, v28
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v55, -v34, v46, 1.0
	v_rcp_f32_e32 v48, v38
	v_rcp_f32_e32 v51, v44
	v_fma_f32 v56, -v36, v47, 1.0
	v_div_scale_f32 v37, s0, v26, v0, v26
	v_fmac_f32_e32 v46, v55, v46
	v_rcp_f32_e32 v49, v40
	v_fma_f32 v59, -v42, v50, 1.0
	v_fmac_f32_e32 v47, v56, v47
	v_div_scale_f32 v39, s1, v27, v0, v27
	v_mul_f32_e32 v55, v35, v46
	v_fma_f32 v57, -v38, v48, 1.0
	v_fma_f32 v60, -v44, v51, 1.0
	v_fmac_f32_e32 v50, v59, v50
	v_div_scale_f32 v41, s3, v28, v0, v28
	v_fma_f32 v59, -v34, v55, v35
	v_mul_f32_e32 v56, v37, v47
	v_fma_f32 v58, -v40, v49, 1.0
	v_dual_fmac_f32 v48, v57, v48 :: v_dual_fmac_f32 v51, v60, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v55, v59, v46
	v_fma_f32 v60, -v36, v56, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v49, v58, v49
	v_mul_f32_e32 v57, v39, v48
	v_div_scale_f32 v43, s4, v29, v0, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v56, v60, v47
	v_fma_f32 v34, -v34, v55, v35
	v_fma_f32 v62, -v38, v57, v39
	v_mul_f32_e32 v58, v41, v49
	v_div_scale_f32 v52, s5, v30, v0, v30
	v_fma_f32 v35, -v36, v56, v37
	v_div_fmas_f32 v34, v34, v46, v55
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v57, v62, v48
	v_fma_f32 v63, -v40, v58, v41
	v_div_fmas_f32 v35, v35, v47, v56
	v_div_scale_f32 v45, null, v0, v0, v31
	v_mul_f32_e32 v64, v43, v50
	v_fma_f32 v36, -v38, v57, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v26, v35, v0, v26
	v_dual_mul_f32 v35, v52, v51 :: v_dual_fmac_f32 v58, v63, v49
	v_div_scale_f32 v53, null, v0, v0, v32
	v_rcp_f32_e32 v54, v45
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v37, -v40, v58, v41
	v_div_fmas_f32 v36, v36, v48, v57
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v25, v34, v0, v25
	v_rcp_f32_e32 v38, v53
	v_div_fmas_f32 v34, v37, v49, v58
	v_fma_f32 v59, -v42, v64, v43
	v_div_fixup_f32 v27, v36, v0, v27
	v_fma_f32 v37, -v45, v54, 1.0
	v_div_scale_f32 v36, s1, v31, v0, v31
	v_div_fixup_f32 v28, v34, v0, v28
	v_fma_f32 v34, -v44, v35, v52
	v_fmac_f32_e32 v64, v59, v50
	v_fmac_f32_e32 v54, v37, v54
	v_fma_f32 v39, -v53, v38, 1.0
	v_div_scale_f32 v47, null, v0, v0, v18
	v_fmac_f32_e32 v35, v34, v51
	v_fma_f32 v40, -v42, v64, v43
	v_mul_f32_e32 v34, v36, v54
	v_fmac_f32_e32 v38, v39, v38
	v_div_scale_f32 v39, s3, v32, v0, v32
	v_fma_f32 v42, -v44, v35, v52
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v37, null, v0, v0, v17
	v_div_fmas_f32 v40, v40, v50, v64
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v43, -v45, v34, v36
	v_mul_f32_e32 v44, v39, v38
	v_div_fmas_f32 v35, v42, v51, v35
	v_rcp_f32_e32 v42, v47
	v_rcp_f32_e32 v41, v37
	v_fmac_f32_e32 v34, v43, v54
	v_fma_f32 v43, -v53, v44, v39
	v_div_fixup_f32 v29, v40, v0, v29
	v_div_fixup_f32 v30, v35, v0, v30
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v35, -v45, v34, v36
	v_fmac_f32_e32 v44, v43, v38
	v_div_scale_f32 v43, null, v0, v0, v19
	v_fma_f32 v40, -v47, v42, 1.0
	v_fma_f32 v46, -v37, v41, 1.0
	v_div_fmas_f32 v34, v35, v54, v34
	v_fma_f32 v35, -v53, v44, v39
	v_div_scale_f32 v48, null, v0, v0, v20
	v_fmac_f32_e32 v42, v40, v42
	v_rcp_f32_e32 v40, v43
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v41, v46, v41
	v_div_scale_f32 v46, s4, v17, v0, v17
	v_div_fmas_f32 v35, v35, v38, v44
	v_rcp_f32_e32 v38, v48
	v_div_scale_f32 v45, s1, v18, v0, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v36, v46, v41
	v_fma_f32 v44, -v43, v40, 1.0
	v_div_fixup_f32 v31, v34, v0, v31
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v32, v35, v0, v32
	v_fma_f32 v39, -v37, v36, v46
	v_fmac_f32_e32 v40, v44, v40
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v44, -v48, v38, 1.0
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s0, 0, v0
	.loc	1 843 74 is_stmt 1              ; attention.py:843:74
	v_or_b32_e32 v55, 1, v33
	v_or_b32_e32 v56, 2, v33
	v_or_b32_e32 v57, 3, v33
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v38, v44, v38
	v_dual_fmac_f32 v36, v39, v41 :: v_dual_mul_f32 v39, v45, v42
	v_div_scale_f32 v44, null, v0, v0, v22
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v34, -v37, v36, v46
	v_div_scale_f32 v46, null, v0, v0, v21
	v_fma_f32 v35, -v47, v39, v45
	v_div_scale_f32 v37, s3, v19, v0, v19
	v_div_fmas_f32 v34, v34, v41, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v36, v46
	v_fmac_f32_e32 v39, v35, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v35, v37, v40
	v_div_scale_f32 v41, s4, v20, v0, v20
	v_rcp_f32_e32 v49, v44
	v_div_fixup_f32 v17, v34, v0, v17
	v_fma_f32 v34, -v47, v39, v45
	v_fma_f32 v45, -v43, v35, v37
	v_mul_f32_e32 v47, v41, v38
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v50, -v46, v36, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v34, v34, v42, v39
	v_fmac_f32_e32 v35, v45, v40
	v_fma_f32 v39, -v48, v47, v41
	v_fmac_f32_e32 v36, v50, v36
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
	v_div_scale_f32 v48, null, v0, v0, v24
	v_fmac_f32_e32 v37, v40, v36
	v_fma_f32 v40, -v44, v45, v39
	v_div_fixup_f32 v19, v34, v0, v19
	s_mov_b32 vcc_lo, s4
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	.loc	1 841 48                        ; attention.py:841:48
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
	v_fma_f32 v40, -v48, v38, 1.0
	v_div_fixup_f32 v22, v36, v0, v22
	v_rcp_f32_e32 v36, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v37, v35, v41
	v_div_scale_f32 v39, null, v0, v0, v9
	v_fmac_f32_e32 v38, v40, v38
	v_div_scale_f32 v40, s1, v24, v0, v24
	v_rcp_f32_e32 v42, v39
	v_fma_f32 v44, -v43, v37, v35
	v_div_fixup_f32 v21, v34, v0, v21
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v46, v36, 1.0
	v_mul_f32_e32 v45, v40, v38
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v49, null, v0, v0, v12
	v_fmac_f32_e32 v36, v47, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v48, v45, v40
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v51, v49
	.loc	1 843 74 is_stmt 1              ; attention.py:843:74
	v_or_b32_e32 v58, 4, v33
	v_or_b32_e32 v59, 5, v33
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v45, v34, v38
	v_div_scale_f32 v34, s4, v9, v0, v9
	v_fmac_f32_e32 v37, v44, v41
	v_fma_f32 v44, -v39, v42, 1.0
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v60, 6, v33
	v_or_b32_e32 v62, 7, v33
	v_or_b32_e32 v63, 16, v33
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v35, -v43, v37, v35
	v_div_scale_f32 v43, null, v0, v0, v11
	v_fmac_f32_e32 v42, v44, v42
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v64, 17, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v35, v35, v41, v37
	v_rcp_f32_e32 v44, v43
	v_div_scale_f32 v41, s3, v10, v0, v10
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v23, v35, v0, v23
	.loc	1 846 36                        ; attention.py:846:36
	v_bfe_u32 v66, v26, 16, 1
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v50, v41, v36
	v_fma_f32 v37, -v48, v45, v40
	.loc	1 846 36                        ; attention.py:846:36
	v_bfe_u32 v67, v27, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 841 48 is_stmt 0              ; attention.py:841:48
	v_fma_f32 v47, -v43, v44, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v30, 0, v30, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v37, v37, v38, v45
	v_fma_f32 v38, -v46, v50, v41
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v44, v47, v44
	v_div_scale_f32 v47, s5, v11, v0, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v50, v38, v36
	v_div_scale_f32 v38, null, v0, v0, v13
	v_dual_mul_f32 v45, v47, v44 :: v_dual_mul_f32 v40, v34, v42
	v_div_fixup_f32 v24, v37, v0, v24
	v_fma_f32 v37, -v49, v51, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v35, -v43, v45, v47
	v_fma_f32 v48, -v39, v40, v34
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v32, 0, v32, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v51, v37, v51
	v_div_scale_f32 v37, s1, v12, v0, v12
	v_dual_fmac_f32 v40, v48, v42 :: v_dual_fmac_f32 v45, v35, v44
	v_rcp_f32_e32 v35, v38
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	v_cndmask_b32_e64 v23, 0, v23, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v34, -v39, v40, v34
	v_fma_f32 v39, -v46, v50, v41
	v_div_scale_f32 v41, null, v0, v0, v14
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v34, v34, v42, v40
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v42, -v38, v35, 1.0
	v_div_fmas_f32 v36, v39, v36, v50
	v_fma_f32 v39, -v43, v45, v47
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v9, v34, v0, v9
	v_fmac_f32_e32 v35, v42, v35
	v_div_scale_f32 v42, s3, v13, v0, v13
	v_div_fmas_f32 v39, v39, v44, v45
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v43, v41
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v34, v42, v35
	v_div_fixup_f32 v10, v36, v0, v10
	v_div_fixup_f32 v11, v39, v0, v11
	v_div_scale_f32 v39, null, v0, v0, v15
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s31, s34, v55
	v_cmp_gt_i32_e64 s30, s34, v56
	v_cmp_gt_i32_e64 s29, s34, v57
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v45, v39
	v_mul_f32_e32 v40, v37, v51
	v_fma_f32 v36, -v41, v43, 1.0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s28, s34, v58
	v_cmp_gt_i32_e64 s27, s34, v59
	v_cmp_gt_i32_e64 s26, s34, v60
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v44, -v49, v40, v37
	v_fmac_f32_e32 v43, v36, v43
	v_div_scale_f32 v36, s4, v14, v0, v14
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s25, s34, v62
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v40, v44, v51
	v_fma_f32 v44, -v38, v34, v42
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s24, s34, v63
	v_cmp_gt_i32_e64 s23, s34, v64
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s35, v26, v26
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v37, -v49, v40, v37
	v_fmac_f32_e32 v34, v44, v35
	v_div_scale_f32 v44, null, v0, v0, v16
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s36, v27, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v37, v37, v51, v40
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v46, v44
	v_div_fixup_f32 v12, v37, v0, v12
	v_fma_f32 v37, -v38, v34, v42
	v_fma_f32 v42, -v39, v45, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v34, v37, v35, v34
	v_fmac_f32_e32 v45, v42, v45
	v_div_scale_f32 v42, null, v0, v0, v2
	v_div_scale_f32 v35, null, v0, v0, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v13, v34, v0, v13
	v_fma_f32 v34, -v44, v46, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v48, v42
	v_div_scale_f32 v37, s1, v15, v0, v15
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v46, v34, v46
	v_div_scale_f32 v34, s3, v16, v0, v16
	v_mul_f32_e32 v40, v36, v43
	v_div_scale_f32 v49, s4, v1, v0, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v50, -v42, v48, 1.0
	v_fma_f32 v38, -v41, v40, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v48, v50, v48
	v_div_scale_f32 v50, s5, v2, v0, v2
	v_fmac_f32_e32 v40, v38, v43
	v_rcp_f32_e32 v38, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v41, v40, v36
	v_mul_f32_e32 v41, v37, v45
	v_div_fmas_f32 v36, v36, v43, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v35, v38, 1.0
	v_fma_f32 v40, -v39, v41, v37
	v_mul_f32_e32 v43, v34, v46
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v14, v36, v0, v14
	v_fmac_f32_e32 v38, v47, v38
	v_div_scale_f32 v47, null, v0, v0, v3
	v_fmac_f32_e32 v41, v40, v45
	v_fma_f32 v40, -v44, v43, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v51, v47
	v_fma_f32 v36, -v39, v41, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v43, v40, v46
	v_mul_f32_e32 v39, v50, v48
	v_div_fmas_f32 v36, v36, v45, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v34, -v44, v43, v34
	v_div_scale_f32 v41, null, v0, v0, v4
	v_fma_f32 v40, -v47, v51, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v15, v36, v0, v15
	v_div_scale_f32 v45, null, v0, v0, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v51, v40, v51 :: v_dual_mul_f32 v52, v49, v38
	v_div_fmas_f32 v34, v34, v46, v43
	v_rcp_f32_e32 v43, v41
	v_div_scale_f32 v40, s1, v3, v0, v3
	v_fma_f32 v37, -v35, v52, v49
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v16, v34, v0, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v41, v43, 1.0
	v_fmac_f32_e32 v52, v37, v38
	v_fma_f32 v37, -v42, v39, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v43, v36, v43
	v_fma_f32 v35, -v35, v52, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v37, v48
	v_mul_f32_e32 v37, v40, v51
	v_div_scale_f32 v36, null, v0, v0, v6
	v_div_fmas_f32 v35, v35, v38, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v42, v39, v50
	v_fma_f32 v42, -v47, v37, v40
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v1, v35, v0, v1
	v_div_fmas_f32 v38, v38, v48, v39
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v37, v42, v51
	v_div_scale_f32 v35, null, v0, v0, v5
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v2, v38, v0, v2
	v_fma_f32 v34, -v47, v37, v40
	v_div_scale_f32 v38, null, v0, v0, v7
	v_rcp_f32_e32 v40, v36
	v_rcp_f32_e32 v47, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v34, v34, v51, v37
	v_rcp_f32_e32 v37, v35
	v_rcp_f32_e32 v42, v38
	v_div_scale_f32 v39, vcc_lo, v4, v0, v4
	v_div_fixup_f32 v3, v34, v0, v3
	v_fma_f32 v46, -v36, v40, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v51, -v45, v47, 1.0
	v_fma_f32 v34, -v35, v37, 1.0
	v_mul_f32_e32 v44, v39, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v38, v42, 1.0
	v_dual_fmac_f32 v40, v46, v40 :: v_dual_fmac_f32 v47, v51, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v34, v37
	v_div_scale_f32 v34, s1, v5, v0, v5
	v_fma_f32 v48, -v41, v44, v39
	v_fmac_f32_e32 v42, v49, v42
	v_div_scale_f32 v49, s4, v7, v0, v7
	v_mul_f32_e32 v50, v34, v37
	v_div_scale_f32 v46, s3, v6, v0, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v44, v48, v43 :: v_dual_mul_f32 v53, v49, v42
	v_fma_f32 v48, -v35, v50, v34
	v_div_scale_f32 v51, s5, v8, v0, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v41, v44, v39
	v_fmac_f32_e32 v50, v48, v37
	v_fma_f32 v48, -v38, v53, v49
	v_mul_f32_e32 v52, v46, v40
	v_mul_f32_e32 v54, v51, v47
	v_div_fmas_f32 v39, v39, v43, v44
	v_fma_f32 v34, -v35, v50, v34
	v_fmac_f32_e32 v53, v48, v42
	v_fma_f32 v41, -v36, v52, v46
	v_fma_f32 v35, -v45, v54, v51
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v4, v39, v0, v4
	v_div_fmas_f32 v34, v34, v37, v50
	v_fmac_f32_e32 v52, v41, v40
	v_fmac_f32_e32 v54, v35, v47
	v_fma_f32 v35, -v38, v53, v49
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v5, v34, v0, v5
	v_fma_f32 v36, -v36, v52, v46
	v_fma_f32 v37, -v45, v54, v51
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v34, 0, v17, s0
	v_cndmask_b32_e64 v38, 0, v21, s0
	v_cndmask_b32_e64 v39, 0, v9, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v36, v36, v40, v52
	s_mov_b32 vcc_lo, s4
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v40, 0, v10, s0
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
	v_cndmask_b32_e64 v41, 0, v11, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v0, v37, v0, v8
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v37, 0, v20, s0
	v_cndmask_b32_e64 v42, 0, v12, s0
	v_cndmask_b32_e64 v43, 0, v13, s0
	v_cndmask_b32_e64 v44, 0, v14, s0
	v_cndmask_b32_e64 v45, 0, v15, s0
	v_cndmask_b32_e64 v46, 0, v16, s0
	v_cndmask_b32_e64 v47, 0, v1, s0
	v_cndmask_b32_e64 v48, 0, v2, s0
	v_cndmask_b32_e64 v49, 0, v3, s0
	v_cndmask_b32_e64 v50, 0, v4, s0
	v_cndmask_b32_e64 v51, 0, v5, s0
	v_cndmask_b32_e64 v52, 0, v6, s0
	v_cndmask_b32_e64 v53, 0, v7, s0
	v_cndmask_b32_e64 v54, 0, v0, s0
	.loc	1 843 74 is_stmt 1              ; attention.py:843:74
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
	.loc	1 843 24 is_stmt 0              ; attention.py:843:24
	v_mul_lo_u32 v1, v61, s34
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_bfe_u32 v61, v25, 16, 1
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s21, s34, v21
	v_cmp_gt_i32_e64 s20, s34, v20
	v_cmp_gt_i32_e64 s19, s34, v19
	v_cmp_gt_i32_e64 s18, s34, v18
	v_cmp_gt_i32_e64 s17, s34, v17
	v_cmp_gt_i32_e64 s16, s34, v16
	v_cmp_gt_i32_e64 s15, s34, v15
	v_cmp_gt_i32_e64 s14, s34, v14
	v_cmp_gt_i32_e64 s12, s34, v13
	v_cmp_gt_i32_e64 s11, s34, v12
	v_cmp_gt_i32_e64 s10, s34, v11
	v_cmp_gt_i32_e64 s9, s34, v10
	v_cmp_gt_i32_e64 s5, s34, v9
	v_cmp_gt_i32_e64 s4, s34, v8
	v_cmp_gt_i32_e64 s3, s34, v7
	v_cmp_gt_i32_e64 s1, s34, v6
	v_cmp_gt_i32_e64 s0, s34, v5
	v_cmp_gt_i32_e32 vcc_lo, s34, v4
	v_cmp_gt_i32_e64 s8, s34, v3
	v_cmp_gt_i32_e64 s7, s34, v2
	v_cmp_gt_i32_e64 s6, s34, v0
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v61, v25, v61, 0x7fff
	v_cmp_o_f32_e64 s34, v25, v25
	v_add3_u32 v25, v26, v66, 0x7fff
	v_add3_u32 v26, v27, v67, 0x7fff
	v_bfe_u32 v27, v28, 16, 1
	v_bfe_u32 v66, v30, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v61.h, s34
	v_bfe_u32 v61, v29, 16, 1
	v_cmp_o_f32_e64 s34, v28, v28
	v_add3_u32 v27, v28, v27, 0x7fff
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s35
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s36
	v_add3_u32 v28, v29, v61, 0x7fff
	v_cmp_o_f32_e64 s35, v29, v29
	v_add3_u32 v29, v30, v66, 0x7fff
	v_cmp_o_f32_e64 s36, v30, v30
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s34
	v_bfe_u32 v27, v31, 16, 1
	v_bfe_u32 v30, v32, 16, 1
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s35
	v_cndmask_b16 v28.h, 0x7fff, v29.h, s36
	v_bfe_u32 v29, v34, 16, 1
	v_add3_u32 v27, v31, v27, 0x7fff
	v_cmp_o_f32_e64 s34, v31, v31
	v_add3_u32 v30, v32, v30, 0x7fff
	v_cmp_o_f32_e64 s35, v32, v32
	v_bfe_u32 v31, v35, 16, 1
	v_add3_u32 v29, v34, v29, 0x7fff
	v_cmp_o_f32_e64 s36, v34, v34
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s34
	v_cndmask_b16 v27.h, 0x7fff, v30.h, s35
	v_bfe_u32 v30, v36, 16, 1
	v_bfe_u32 v32, v37, 16, 1
	v_add3_u32 v31, v35, v31, 0x7fff
	v_cmp_o_f32_e64 s34, v35, v35
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s36
	v_add3_u32 v30, v36, v30, 0x7fff
	v_cmp_o_f32_e64 s35, v36, v36
	v_add3_u32 v32, v37, v32, 0x7fff
	v_cmp_o_f32_e64 s36, v37, v37
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s34
	v_bfe_u32 v31, v38, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s35
	v_bfe_u32 v34, v22, 16, 1
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s36
	v_bfe_u32 v32, v23, 16, 1
	v_add3_u32 v31, v38, v31, 0x7fff
	v_cmp_o_f32_e64 s34, v38, v38
	v_add3_u32 v34, v22, v34, 0x7fff
	v_cmp_o_f32_e64 s35, v22, v22
	v_add3_u32 v22, v23, v32, 0x7fff
	v_cmp_o_f32_e64 s36, v23, v23
	v_cndmask_b16 v23.l, 0x7fff, v31.h, s34
	v_bfe_u32 v31, v24, 16, 1
	v_cndmask_b16 v23.h, 0x7fff, v34.h, s35
	v_bfe_u32 v32, v39, 16, 1
	v_bfe_u32 v34, v40, 16, 1
	v_cmp_o_f32_e64 s34, v24, v24
	v_add3_u32 v31, v24, v31, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s36
	v_add3_u32 v24, v39, v32, 0x7fff
	v_cmp_o_f32_e64 s35, v39, v39
	v_add3_u32 v32, v40, v34, 0x7fff
	v_cmp_o_f32_e64 s36, v40, v40
	v_cndmask_b16 v22.h, 0x7fff, v31.h, s34
	v_bfe_u32 v31, v41, 16, 1
	v_bfe_u32 v34, v42, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s35
	v_cndmask_b16 v24.h, 0x7fff, v32.h, s36
	v_bfe_u32 v32, v43, 16, 1
	v_add3_u32 v31, v41, v31, 0x7fff
	v_cmp_o_f32_e64 s34, v41, v41
	v_add3_u32 v34, v42, v34, 0x7fff
	v_cmp_o_f32_e64 s35, v42, v42
	v_bfe_u32 v35, v44, 16, 1
	v_add3_u32 v32, v43, v32, 0x7fff
	v_cmp_o_f32_e64 s36, v43, v43
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s34
	v_cndmask_b16 v31.h, 0x7fff, v34.h, s35
	v_bfe_u32 v34, v45, 16, 1
	v_bfe_u32 v36, v46, 16, 1
	v_add3_u32 v35, v44, v35, 0x7fff
	v_cmp_o_f32_e64 s34, v44, v44
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s36
	v_add3_u32 v34, v45, v34, 0x7fff
	v_cmp_o_f32_e64 s35, v45, v45
	v_add3_u32 v36, v46, v36, 0x7fff
	v_cmp_o_f32_e64 s36, v46, v46
	v_cndmask_b16 v32.h, 0x7fff, v35.h, s34
	v_bfe_u32 v35, v47, 16, 1
	v_bfe_u32 v37, v48, 16, 1
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s35
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s36
	v_bfe_u32 v36, v49, 16, 1
	v_add3_u32 v35, v47, v35, 0x7fff
	v_cmp_o_f32_e64 s34, v47, v47
	v_add3_u32 v37, v48, v37, 0x7fff
	v_cmp_o_f32_e64 s35, v48, v48
	v_bfe_u32 v40, v53, 16, 1
	v_bfe_u32 v38, v50, 16, 1
	v_add3_u32 v36, v49, v36, 0x7fff
	v_cmp_o_f32_e64 s36, v49, v49
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s34
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s35
	v_bfe_u32 v37, v51, 16, 1
	v_bfe_u32 v39, v52, 16, 1
	v_bfe_u32 v41, v54, 16, 1
	v_add3_u32 v40, v53, v40, 0x7fff
	v_cmp_o_f32_e64 s37, v53, v53
	v_add3_u32 v38, v50, v38, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s36
	v_cmp_o_f32_e64 s34, v50, v50
	v_add3_u32 v37, v51, v37, 0x7fff
	v_cmp_o_f32_e64 s35, v51, v51
	v_add3_u32 v39, v52, v39, 0x7fff
	v_cmp_o_f32_e64 s36, v52, v52
	v_add3_u32 v41, v54, v41, 0x7fff
	v_cmp_o_f32_e64 s38, v54, v54
	v_cndmask_b16 v38.l, 0x7fff, v40.h, s37
	v_mov_b32_e32 v40, 0x5410
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s34
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s35
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s36
	v_cndmask_b16 v38.h, 0x7fff, v41.h, s38
	v_cndmask_b32_e64 v39, v28, v25, s13
	v_cndmask_b32_e64 v25, v25, v28, s13
	v_cndmask_b32_e64 v28, v27, v26, s13
	v_cndmask_b32_e64 v26, v26, v27, s13
	v_cndmask_b32_e64 v27, v23, v29, s13
	v_cndmask_b32_e64 v23, v29, v23, s13
	v_cndmask_b32_e64 v29, v22, v30, s13
	v_mov_b32_e32 v41, 0x7632
	v_cndmask_b32_e64 v22, v30, v22, s13
	v_cndmask_b32_e64 v30, v32, v24, s13
	v_cndmask_b32_e64 v24, v24, v32, s13
	v_cndmask_b32_e64 v32, 0x1054, v40, s13
	v_cndmask_b32_e64 v40, 0x3276, v41, s13
	s_mov_b32 s34, 0x76543210
	v_cndmask_b32_e64 v41, v34, v31, s13
	v_cndmask_b32_e64 v31, v31, v34, s13
	v_lshl_or_b32 v32, v32, 8, v32
	v_lshl_or_b32 v40, v40, 8, v40
	v_cndmask_b32_e64 v34, v37, v35, s13
	v_cndmask_b32_e64 v35, v35, v37, s13
	v_cndmask_b32_e64 v37, v38, v36, s13
	v_and_b32_e32 v32, 0x540054, v32
	v_and_b32_e32 v40, 0x760076, v40
	v_cndmask_b32_e64 v36, v36, v38, s13
	v_permlanex16_b32 v25, v25, s34, 0xfedcba98 op_sel:[1,0]
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v33, v1, v33, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_lshl_or_b32 v32, v32, 4, v32
	v_lshl_or_b32 v38, v40, 4, v40
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v54, v1, v55, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_permlanex16_b32 v26, v26, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v23, s34, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v32, 0x5040504, v32
	v_permlanex16_b32 v22, v22, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v24, s34, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v38, 0x7060706, v38
	v_permlanex16_b32 v31, v31, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v35, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v36, s34, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v40, v25, v39, v32
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s13, s2, s33
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v55, v1, v56, 1
	v_cndmask_b32_e64 v33, 0x80000000, v33, s13
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s13, s2, s31
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v25, v25, v39, v38
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e64 v54, 0x80000000, v54, s13
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s13, s2, s30
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v39, v26, v28, v32
	v_perm_b32 v26, v26, v28, v38
	v_perm_b32 v28, v23, v27, v32
	v_perm_b32 v23, v23, v27, v38
	v_perm_b32 v27, v22, v29, v32
	v_perm_b32 v22, v22, v29, v38
	v_perm_b32 v29, v24, v30, v32
	v_perm_b32 v24, v24, v30, v38
	v_perm_b32 v30, v31, v41, v32
	v_perm_b32 v31, v31, v41, v38
	v_perm_b32 v41, v35, v34, v32
	v_perm_b32 v34, v35, v34, v38
	v_perm_b32 v32, v36, v37, v32
	v_perm_b32 v35, v36, v37, v38
	v_mov_b16_e32 v36.l, v40.h
	v_mov_b16_e32 v36.h, v68.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e64 v55, 0x80000000, v55, s13
	buffer_store_b16 v40, v33, s[44:47], 0 offen
	v_add_lshl_u32 v33, v1, v57, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v68.l, v25.h
	.loc	1 846 17                        ; attention.py:846:17
	s_clause 0x1
	buffer_store_b16 v36, v54, s[44:47], 0 offen
	buffer_store_b16 v25, v55, s[44:47], 0 offen
	v_add_lshl_u32 v25, v1, v58, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s13, s2, s29
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v36, v1, v59, 1
	v_cndmask_b32_e64 v33, 0x80000000, v33, s13
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s13, s2, s28
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v40, v1, v60, 1
	v_cndmask_b32_e64 v25, 0x80000000, v25, s13
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s13, s2, s27
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v38.l, v39.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e64 v36, 0x80000000, v36, s13
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s13, s2, s26
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v38.h, v68.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e64 v40, 0x80000000, v40, s13
	s_clause 0x1
	buffer_store_b16 v68, v33, s[44:47], 0 offen
	buffer_store_b16 v39, v25, s[44:47], 0 offen
	v_add_lshl_u32 v25, v1, v62, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v37.l, v26.h
	.loc	1 846 17                        ; attention.py:846:17
	s_clause 0x1
	buffer_store_b16 v38, v36, s[44:47], 0 offen
	buffer_store_b16 v26, v40, s[44:47], 0 offen
	v_add_lshl_u32 v26, v1, v63, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s13, s2, s25
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v33, v1, v64, 1
	v_cndmask_b32_e64 v25, 0x80000000, v25, s13
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s13, s2, s24
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v36, v1, v65, 1
	v_cndmask_b32_e64 v26, 0x80000000, v26, s13
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s13, s2, s23
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v21, v1, v21, 1
	v_cndmask_b32_e64 v33, 0x80000000, v33, s13
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s13, s2, s22
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v20, v1, v20, 1
	v_cndmask_b32_e64 v36, 0x80000000, v36, s13
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s13, s2, s21
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v19, v1, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s13
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s13, s2, s20
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v18, v1, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s13
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s13, s2, s19
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v17, v1, v17, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s13
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s13, s2, s18
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v16, v1, v16, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s13
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s13, s2, s17
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v4, v1, v4, 1
	v_add_lshl_u32 v15, v1, v15, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s13
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s13, s2, s16
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v13, v1, v13, 1
	v_add_lshl_u32 v11, v1, v11, 1
	v_add_lshl_u32 v9, v1, v9, 1
	v_add_lshl_u32 v7, v1, v7, 1
	v_add_lshl_u32 v5, v1, v5, 1
	v_add_lshl_u32 v3, v1, v3, 1
	v_add_lshl_u32 v14, v1, v14, 1
	v_add_lshl_u32 v12, v1, v12, 1
	v_add_lshl_u32 v10, v1, v10, 1
	v_add_lshl_u32 v8, v1, v8, 1
	v_add_lshl_u32 v6, v1, v6, 1
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s13
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s13, s2, s15
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v2, v1, v2, 1
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s12, s2, s12
	s_and_b32 s10, s2, s10
	s_and_b32 s5, s2, s5
	s_and_b32 s3, s2, s3
	s_and_b32 s0, s2, s0
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s8
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v15, 0x80000000, v15, s13
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s13, s2, s14
	s_and_b32 s11, s2, s11
	s_and_b32 s9, s2, s9
	s_and_b32 s4, s2, s4
	s_and_b32 s1, s2, s1
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v0, v1, v0, 1
	.loc	1 846 36 is_stmt 0              ; attention.py:846:36
	v_mov_b16_e32 v37.h, v68.h
	v_mov_b16_e32 v42.l, v23.h
	v_mov_b16_e32 v42.h, v68.h
	v_mov_b16_e32 v43.l, v28.h
	v_mov_b16_e32 v43.h, v68.h
	v_mov_b16_e32 v44.l, v22.h
	v_mov_b16_e32 v44.h, v68.h
	v_mov_b16_e32 v45.l, v27.h
	v_mov_b16_e32 v45.h, v68.h
	v_mov_b16_e32 v46.l, v24.h
	v_mov_b16_e32 v46.h, v68.h
	v_mov_b16_e32 v47.l, v29.h
	v_mov_b16_e32 v47.h, v68.h
	v_mov_b16_e32 v48.l, v31.h
	v_mov_b16_e32 v48.h, v68.h
	v_mov_b16_e32 v49.l, v30.h
	v_mov_b16_e32 v49.h, v68.h
	v_mov_b16_e32 v50.l, v34.h
	v_mov_b16_e32 v50.h, v68.h
	v_mov_b16_e32 v51.l, v41.h
	v_mov_b16_e32 v51.h, v68.h
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v13, 0x80000000, v13, s12
	v_cndmask_b32_e64 v11, 0x80000000, v11, s10
	v_cndmask_b32_e64 v9, 0x80000000, v9, s5
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	v_cndmask_b32_e32 v1, 0x80000000, v3, vcc_lo
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s7
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v14, 0x80000000, v14, s13
	v_cndmask_b32_e64 v12, 0x80000000, v12, s11
	v_cndmask_b32_e64 v10, 0x80000000, v10, s9
	v_cndmask_b32_e64 v8, 0x80000000, v8, s4
	v_cndmask_b32_e64 v6, 0x80000000, v6, s1
	.loc	1 846 36 is_stmt 0              ; attention.py:846:36
	v_mov_b16_e32 v53.l, v32.h
	v_mov_b16_e32 v53.h, v68.h
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s6
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v52.l, v35.h
	v_mov_b16_e32 v52.h, v68.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x18
	buffer_store_b16 v37, v25, s[44:47], 0 offen
	buffer_store_b16 v28, v26, s[44:47], 0 offen
	buffer_store_b16 v43, v33, s[44:47], 0 offen
	buffer_store_b16 v23, v36, s[44:47], 0 offen
	buffer_store_b16 v42, v21, s[44:47], 0 offen
	buffer_store_b16 v27, v20, s[44:47], 0 offen
	buffer_store_b16 v45, v19, s[44:47], 0 offen
	buffer_store_b16 v22, v18, s[44:47], 0 offen
	buffer_store_b16 v44, v17, s[44:47], 0 offen
	buffer_store_b16 v29, v16, s[44:47], 0 offen
	buffer_store_b16 v47, v15, s[44:47], 0 offen
	buffer_store_b16 v24, v14, s[44:47], 0 offen
	buffer_store_b16 v46, v13, s[44:47], 0 offen
	buffer_store_b16 v30, v12, s[44:47], 0 offen
	buffer_store_b16 v49, v11, s[44:47], 0 offen
	buffer_store_b16 v31, v10, s[44:47], 0 offen
	buffer_store_b16 v48, v9, s[44:47], 0 offen
	buffer_store_b16 v41, v8, s[44:47], 0 offen
	buffer_store_b16 v51, v7, s[44:47], 0 offen
	buffer_store_b16 v34, v6, s[44:47], 0 offen
	buffer_store_b16 v50, v5, s[44:47], 0 offen
	buffer_store_b16 v32, v4, s[44:47], 0 offen
	buffer_store_b16 v53, v1, s[44:47], 0 offen
	buffer_store_b16 v35, v2, s[44:47], 0 offen
	buffer_store_b16 v52, v0, s[44:47], 0 offen
	.loc	1 502 5 is_stmt 1               ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp204:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 219
		.amdhsa_next_free_sgpr 76
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_vgpr, 219
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.numbered_sgpr, 76
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16724
; TotalNumSgprs: 78
; NumVgprs: 219
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 78
; NumVGPRsForWavesPerEU: 219
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
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
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
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
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
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
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
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     78
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     219
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
