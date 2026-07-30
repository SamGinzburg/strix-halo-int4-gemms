	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[20:23], s[0:1], 0x80
	s_load_b128 s[48:51], s[0:1], 0x4c
	s_load_b32 s29, s[0:1], 0x60
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v102, 5, v0
	s_load_b64 s[24:25], s[0:1], 0x0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	v_and_b32_e32 v40, 0x60, v0
	v_or_b32_e32 v103, 4, v102
	v_or_b32_e32 v104, 8, v102
	v_or_b32_e32 v105, 12, v102
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v18, 0x110, v0
	v_xor_b32_e32 v19, 0x198, v0
	v_add_nc_u32_e32 v109, 0, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v34, 1, v40
	v_and_b32_e32 v108, 15, v0
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v113, 0, v18
	v_add_nc_u32_e32 v114, 0, v19
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s20
	s_bitcmp1_b32 s20, 8
	.loc	1 583 26                        ; attention.py:583:26
	s_mul_i32 s28, s3, s50
	s_cselect_b32 s30, -1, 0
	s_cmp_eq_u32 s4, 1
	s_cselect_b32 s19, -1, 0
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s15, s48
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s56, s2, 6
	.loc	1 566 23                        ; attention.py:566:23
	s_cvt_f32_u32 s4, s15
	s_sub_i32 s6, 0, s15
	s_abs_i32 s2, s3
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v3, s56, v104
	.loc	1 566 23                        ; attention.py:566:23
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v4, s56, v105
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 566 23                        ; attention.py:566:23
	v_readfirstlane_b32 s4, v1
	.loc	1 584 86                        ; attention.py:584:86
	v_and_b32_e32 v1, 31, v0
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[82:83], null, s29, v102, v[1:2]
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v2, s56, v103
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 566 23                        ; attention.py:566:23
	s_cvt_u32_f32 s5, s4
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e64 s4, s29, v1
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v1, s56, v102
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_i32 s6, s6, s5
	.loc	1 584 26                        ; attention.py:584:26
	v_lshl_add_u32 v106, s29, 2, v82
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
	s_cselect_b32 s47, s6, s5
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s16, s49
	s_xor_b32 s18, s48, s49
	s_cvt_f32_u32 s2, s16
	s_sub_i32 s12, 0, s16
	s_ashr_i32 s33, s18, 31
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
	v_cmp_gt_i32_e32 vcc_lo, s50, v1
	v_cmp_gt_i32_e64 s2, s50, v2
	v_cmp_gt_i32_e64 s5, s50, v3
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[83:84], null, s29, 12, v[82:83]
	.loc	1 568 22                        ; attention.py:568:22
	v_readfirstlane_b32 s7, v8
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s6, s50, v4
	.loc	1 584 26                        ; attention.py:584:26
	v_lshl_add_u32 v107, s29, 3, v82
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s8, s50, v6
	v_cmp_gt_i32_e64 s9, s50, v7
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_f32 s10, s7, 0x4f7ffffe
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s7, s50, v5
	v_cmp_gt_i32_e64 s11, s50, v10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 568 22                        ; attention.py:568:22
	s_cvt_u32_f32 s14, s10
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s10, s50, v9
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_i32 s13, s12, s14
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s12, s50, v11
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_hi_u32 s17, s14, s13
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s13, s50, v12
	.loc	1 568 22                        ; attention.py:568:22
	s_add_i32 s17, s14, s17
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s14, s50, v13
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_hi_u32 s17, s15, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s31, s17, s16
	s_sub_i32 s18, s15, s31
	s_add_i32 s31, s17, 1
	s_sub_i32 s34, s18, s16
	s_cmp_ge_u32 s18, s16
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s15, s50, v14
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s17, s31, s17
	s_cselect_b32 s18, s34, s18
	s_add_i32 s31, s17, 1
	s_cmp_ge_u32 s18, s16
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s16, s50, v15
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s34, s31, s17
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s28, s28, s56
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 584 26                        ; attention.py:584:26
	s_mul_i32 s31, s28, s29
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s17, s50, v16
	.loc	1 584 26                        ; attention.py:584:26
	v_add_nc_u32_e32 v1, s31, v82
	v_add_nc_u32_e32 v13, s31, v106
	v_add_nc_u32_e32 v14, s31, v107
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s18, s50, v17
	.loc	1 584 26                        ; attention.py:584:26
	v_add_nc_u32_e32 v15, s31, v83
	v_mad_u64_u32 v[2:3], null, s29, 20, v[1:2]
	v_lshl_add_u32 v16, s29, 4, v1
	v_lshl_add_u32 v17, s29, 5, v1
	.loc	1 585 26                        ; attention.py:585:26
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s31, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[3:4], null, s29, 24, v[1:2]
	v_mad_u64_u32 v[4:5], null, s29, 28, v[1:2]
	v_mad_u64_u32 v[5:6], null, s29, 36, v[1:2]
	v_mad_u64_u32 v[6:7], null, s29, 40, v[1:2]
	v_mad_u64_u32 v[7:8], null, s29, 44, v[1:2]
	v_mad_u64_u32 v[8:9], null, s29, 48, v[1:2]
	v_mad_u64_u32 v[9:10], null, s29, 52, v[1:2]
	v_mad_u64_u32 v[10:11], null, s29, 56, v[1:2]
	v_mad_u64_u32 v[11:12], null, s29, 60, v[1:2]
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s2, s4
	.loc	1 568 22                        ; attention.py:568:22
	s_xor_b32 s2, s34, s33
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v12, 0x80000000, v13, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s5, s4
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v13, 0x80000000, v14, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s6, s4
	.loc	1 568 22                        ; attention.py:568:22
	s_sub_i32 s6, s2, s33
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
	s_add_i32 s10, s51, 15
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
	.loc	1 569 19                        ; attention.py:569:19
	s_abs_i32 s13, s6
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s15, s4
	.loc	1 569 19                        ; attention.py:569:19
	s_cvt_f32_u32 s2, s13
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s14, s4
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v17, 0x88, v0
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
	v_rcp_iflag_f32_e32 v20, s2
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
	.loc	1 606 15                        ; attention.py:606:15
	s_ashr_i32 s2, s10, 31
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v112, 0, v17
	.loc	1 606 15                        ; attention.py:606:15
	s_lshr_b32 s2, s2, 28
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(15)
	ds_store_b8 v109, v1
	s_waitcnt vmcnt(12)
	ds_store_b8 v109, v15 offset:512
	s_waitcnt vmcnt(9)
	ds_store_b8 v109, v16 offset:1024
	s_waitcnt vmcnt(8)
	ds_store_b8 v109, v8 offset:1536
	ds_store_b8 v112, v12
	ds_store_b8 v112, v2 offset:512
	s_waitcnt vmcnt(7)
	ds_store_b8 v112, v5 offset:1024
	s_waitcnt vmcnt(6)
	ds_store_b8 v112, v9 offset:1536
	ds_store_b8 v113, v13
	ds_store_b8 v113, v3 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v113, v6 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v113, v10 offset:1536
	s_waitcnt vmcnt(3)
	ds_store_b8 v114, v14
	s_waitcnt vmcnt(2)
	ds_store_b8 v114, v4 offset:512
	s_waitcnt vmcnt(1)
	ds_store_b8 v114, v7 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v114, v11 offset:1536
	.loc	1 569 19                        ; attention.py:569:19
	v_readfirstlane_b32 s7, v20
	.loc	1 606 15                        ; attention.py:606:15
	s_add_i32 s10, s10, s2
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt lgkmcnt(0)
	.loc	1 606 14                        ; attention.py:606:14
	s_and_b32 s33, s10, -16
	.loc	1 612 9                         ; attention.py:612:9
	s_bfe_u32 s2, s20, 0x10008
	.loc	1 585 26                        ; attention.py:585:26
	s_barrier
	.loc	1 612 9                         ; attention.py:612:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s56, s22
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s8, s56, s21
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s2, s23
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s8, s8, s23
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s2, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s2, s51, s2
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
	s_and_b32 s31, s5, 0x7ffffff0
	.loc	1 619 18                        ; attention.py:619:18
	s_min_i32 s33, s33, s2
.LBB0_2:
	.loc	1 620 9                         ; attention.py:620:9
	v_cndmask_b32_e64 v1, 0, 1, s19
	s_and_not1_b32 vcc_lo, exec_lo, s19
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s5, 1, v1
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_or_b32_e32 v1, v34, v108
	.loc	1 620 9                         ; attention.py:620:9
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention.py:0:9
	s_add_i32 s2, s56, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 64
	s_min_i32 s2, s51, s2
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
	s_min_i32 s33, s33, s2
.LBB0_4:
	.loc	1 571 21 is_stmt 1              ; attention.py:571:21
	v_and_b32_e32 v38, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b32_e32 v2, s56, v1
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_lt_i32 s31, s33
	v_lshrrev_b32_e32 v115, 1, v38
	s_cbranch_scc1 .LBB0_6
; %bb.5:                                ; %.._crit_edge_crit_edge
	.loc	1 843 74                        ; attention.py:843:74
	v_lshrrev_b32_e32 v33, 1, v38
	s_mov_b32 s8, 0
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 74 is_stmt 0                ; attention.py:0:74
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr33
.LBB0_7:                                ; %Flow171
	s_clause 0x1
	s_load_b64 s[44:45], s[0:1], 0x38
	s_load_b32 s34, s[0:1], 0x64
	v_dual_mov_b32 v8, 0 :: v_dual_add_nc_u32 v101, s28, v1
	v_cmp_gt_i32_e64 s2, s50, v2
	v_and_b32_e32 v110, 0x70, v0
	v_and_b32_e32 v111, 64, v0
	v_cmp_eq_u32_e64 s28, 0, v38
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
	v_mov_b32_e32 v81, v8
	v_mov_b32_e32 v80, v8
	v_mov_b32_e32 v77, v8
	v_mov_b32_e32 v76, v8
	v_mov_b32_e32 v79, v8
	v_mov_b32_e32 v78, v8
	v_mov_b32_e32 v75, v8
	v_mov_b32_e32 v74, v8
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_15
; %bb.8:                                ; %.lr.ph
	s_load_b256 s[36:43], s[0:1], 0x8
	v_dual_mov_b32 v12, 0x7632 :: v_dual_lshlrev_b32 v1, 1, v101
	s_clause 0x2
	s_load_b32 s35, s[0:1], 0x7c
	s_load_b128 s[52:55], s[0:1], 0x28
	s_load_b128 s[16:19], s[0:1], 0x6c
	.loc	1 571 21 is_stmt 1              ; attention.py:571:21
	v_lshrrev_b32_e32 v116, 4, v38
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v4, 3, v0
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_lshrrev_b32_e32 v39, 2, v38
	v_dual_mov_b32 v122, 0xff800000 :: v_dual_and_b32 v5, 14, v0
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v38, 1, v0
	v_dual_mov_b32 v9, 0 :: v_dual_lshlrev_b32 v8, 2, v40
	v_lshlrev_b32_e32 v10, 2, v110
	v_dual_mov_b32 v33, 0 :: v_dual_and_b32 v84, 63, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v47, 0xff800000 :: v_dual_lshlrev_b32 v60, 5, v38
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s41, 0xffff
	s_mov_b32 s24, s40
	v_dual_mov_b32 v27, v33 :: v_dual_and_b32 v52, 0x378, v4
	buffer_load_u16 v35, v1, s[24:27], 0 offen
	v_mov_b32_e32 v1, 0
	v_lshl_or_b32 v57, v108, 3, v8
	v_dual_mov_b32 v18, v33 :: v_dual_lshlrev_b32 v59, 1, v5
	v_lshl_or_b32 v61, v5, 8, v10
	v_xor_b32_e32 v52, v52, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v34, v57, v34
	v_dual_mov_b32 v42, 0xff800000 :: v_dual_lshlrev_b32 v3, 5, v108
	v_or3_b32 v148, v61, v60, v59
	v_dual_mov_b32 v11, 0x5410 :: v_dual_lshlrev_b32 v2, 1, v0
	v_dual_mov_b32 v120, 0xff800000 :: v_dual_lshlrev_b32 v37, 4, v40
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v36, 4, v110
	v_or_b32_e32 v161, v34, v39
	v_xor_b32_e32 v34, 4, v148
	s_xor_b32 s9, s3, s48
	s_mul_f32 s8, s7, 0x4f7ffffe
	v_and_or_b32 v128, v2, 24, v3
	.loc	1 771 51                        ; attention.py:771:51
	v_lshrrev_b32_e32 v118, 6, v111
	s_ashr_i32 s1, s9, 31
	s_cvt_u32_f32 s8, s8
	s_xor_b32 s9, s47, s1
	v_and_or_b32 v62, v2, 60, v37
	v_dual_mov_b32 v2, v33 :: v_dual_add_nc_u32 v169, 0, v34
	v_mul_lo_u32 v34, s19, v36
	s_sub_i32 s7, 0, s13
	v_lshl_add_u32 v41, v111, 2, 0
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v46, s56, v36
	v_dual_mov_b32 v20, v33 :: v_dual_lshlrev_b32 v65, 1, v84
	s_sub_i32 s15, s9, s1
	v_or_b32_e32 v37, v128, v37
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[85:86], null, s34, v118, v[84:85]
	v_lshrrev_b32_e32 v6, 4, v0
	v_dual_mov_b32 v124, 0xff800000 :: v_dual_lshlrev_b32 v7, 1, v111
	s_mul_i32 s1, s15, s48
	s_mul_i32 s7, s7, s8
	s_sub_i32 s3, s3, s1
	s_mul_hi_u32 s7, s8, s7
	v_mov_b32_e32 v24, v33
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v66, 48, v46
	v_or_b32_e32 v67, 32, v46
	v_or_b32_e32 v68, 16, v46
	v_or_b32_e32 v69, 56, v46
	v_or_b32_e32 v70, 40, v46
	v_or_b32_e32 v71, 24, v46
	v_or_b32_e32 v72, 8, v46
	v_add_nc_u32_e32 v149, v41, v65
	v_add_nc_u32_e32 v41, 0, v37
	s_abs_i32 s24, s3
	s_add_i32 s8, s8, s7
	v_xad_u32 v59, v37, 8, 0
	v_lshrrev_b32_e32 v40, 3, v40
	v_dual_mov_b32 v45, 0xff800000 :: v_dual_lshlrev_b32 v58, 6, v5
	v_dual_mov_b32 v30, v33 :: v_dual_lshlrev_b32 v53, 7, v5
	v_dual_mov_b32 v32, v33 :: v_dual_lshlrev_b32 v55, 2, v38
	v_and_or_b32 v56, v6, 2, v7
	v_cndmask_b32_e64 v63, 0x1054, v11, s28
	v_cndmask_b32_e64 v64, 0x3276, v12, s28
	v_xad_u32 v60, v37, 16, 0
	s_mul_hi_u32 s25, s24, s8
	v_xad_u32 v37, v37, 24, 0
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[86:87], null, s34, 6, v[85:86]
	v_dual_mov_b32 v29, v33 :: v_dual_add_nc_u32 v152, s23, v72
	v_dual_mov_b32 v31, v33 :: v_dual_add_nc_u32 v154, s23, v71
	v_dual_mov_b32 v19, v33 :: v_dual_add_nc_u32 v156, s23, v70
	v_dual_mov_b32 v21, v33 :: v_dual_add_nc_u32 v158, s23, v69
	v_dual_mov_b32 v22, v33 :: v_dual_add_nc_u32 v147, s23, v46
	v_dual_mov_b32 v10, v33 :: v_dual_add_nc_u32 v153, s23, v68
	v_dual_mov_b32 v12, v33 :: v_dual_add_nc_u32 v155, s23, v67
	v_dual_mov_b32 v14, v33 :: v_dual_add_nc_u32 v157, s23, v66
	.loc	1 569 19                        ; attention.py:569:19
	s_mul_i32 s23, s25, s13
	ds_load_b64 v[87:88], v41
	ds_load_b64 v[89:90], v59
	ds_load_b64 v[91:92], v60
	ds_load_b64 v[93:94], v37
	s_ashr_i32 s6, s6, 31
	v_dual_mov_b32 v43, 0xff800000 :: v_dual_lshlrev_b32 v54, 3, v5
	v_or3_b32 v53, v56, v53, v115
	v_or3_b32 v56, v55, v58, v102
	v_xor_b32_e32 v40, v62, v40
	v_lshl_or_b32 v57, v63, 8, v63
	v_lshl_or_b32 v58, v64, 8, v64
	s_ashr_i32 s7, s3, 31
	s_sub_i32 s23, s24, s23
	s_ashr_i32 s14, s10, 4
	s_xor_b32 s26, s7, s6
	s_add_i32 s24, s25, 1
	s_sub_i32 s27, s23, s13
	s_cmp_ge_u32 s23, s13
	v_mov_b32_e32 v23, v33
	v_mov_b32_e32 v11, v33
	.loc	1 710 33                        ; attention.py:710:33
	s_mul_i32 s20, s15, s49
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s1, s50, v46
	v_xor_b32_e32 v46, 8, v128
	v_or_b32_e32 v159, v52, v39
	v_or3_b32 v160, v53, v55, v54
	v_or3_b32 v162, v56, v54, v115
	v_xor_b32_e32 v39, 8, v148
	v_xor_b32_e32 v52, 12, v148
	v_xor_b32_e32 v53, 16, v148
	v_xor_b32_e32 v54, 20, v148
	v_xor_b32_e32 v55, 24, v148
	v_xor_b32_e32 v56, 28, v148
	v_lshl_or_b32 v163, v38, 6, v40
	v_and_b32_e32 v38, 0x540054, v57
	v_and_b32_e32 v40, 0x760076, v58
	.loc	1 753 27                        ; attention.py:753:27
	s_mul_i32 s15, s15, s17
	.loc	1 569 19                        ; attention.py:569:19
	s_cselect_b32 s17, s24, s25
	.loc	1 754 27                        ; attention.py:754:27
	s_mul_i32 s3, s3, s18
	.loc	1 569 19                        ; attention.py:569:19
	s_cselect_b32 s18, s27, s23
	v_subrev_nc_u32_e32 v167, s21, v147
	v_subrev_nc_u32_e32 v176, s21, v152
	v_subrev_nc_u32_e32 v177, s21, v153
	v_subrev_nc_u32_e32 v178, s21, v154
	v_subrev_nc_u32_e32 v179, s21, v155
	v_subrev_nc_u32_e32 v180, s21, v156
	v_subrev_nc_u32_e32 v181, s21, v157
	v_subrev_nc_u32_e32 v182, s21, v158
	s_add_i32 s21, s17, 1
	s_cmp_ge_u32 s18, s13
	v_mov_b16_e32 v117.l, 0
	v_dual_mov_b32 v13, v33 :: v_dual_add_nc_u32 v164, 0, v46
	v_dual_mov_b32 v4, v33 :: v_dual_add_nc_u32 v171, 0, v52
	v_dual_mov_b32 v5, v33 :: v_dual_add_nc_u32 v170, 0, v39
	v_dual_mov_b32 v6, v33 :: v_dual_add_nc_u32 v173, 0, v54
	v_dual_mov_b32 v7, v33 :: v_dual_add_nc_u32 v172, 0, v53
	v_dual_mov_b32 v8, v33 :: v_dual_add_nc_u32 v175, 0, v56
	v_xor_b32_e32 v73, 16, v128
	v_xor_b32_e32 v74, 24, v128
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s7, s50, v68
	v_cmp_gt_i32_e64 s9, s50, v67
	v_cmp_gt_i32_e64 s11, s50, v66
	v_xor_b32_e32 v46, 0x440, v159
	v_xor_b32_e32 v57, 16, v160
	v_xor_b32_e32 v58, 32, v160
	v_xor_b32_e32 v61, 48, v160
	v_xor_b32_e32 v62, 64, v160
	v_xor_b32_e32 v63, 0x50, v160
	v_xor_b32_e32 v64, 0x60, v160
	v_xor_b32_e32 v65, 0x70, v160
	v_lshl_or_b32 v38, v38, 4, v38
	v_lshl_or_b32 v40, v40, 4, v40
	v_xor_b32_e32 v39, 0x240, v161
	v_xor_b32_e32 v52, 16, v162
	v_xor_b32_e32 v53, 32, v162
	v_xor_b32_e32 v54, 48, v162
	v_xor_b32_e32 v56, 0x50, v162
	v_xor_b32_e32 v66, 0x60, v162
	v_xor_b32_e32 v67, 0x70, v162
	v_xor_b32_e32 v68, 0x810, v163
	.loc	1 569 19                        ; attention.py:569:19
	s_cselect_b32 s13, s21, s17
	.loc	1 742 27                        ; attention.py:742:27
	s_mul_f32 s47, s16, 0x3fb8aa3b
	.loc	1 569 19                        ; attention.py:569:19
	s_xor_b32 s13, s13, s26
	.loc	1 752 25                        ; attention.py:752:25
	s_mul_i32 s16, s19, s56
	.loc	1 569 19                        ; attention.py:569:19
	s_sub_i32 s13, s13, s26
	v_lshl_add_u32 v119, v108, 1, 0
	v_dual_mov_b32 v121, 0xff800000 :: v_dual_mov_b32 v126, 0xff800000
	v_dual_mov_b32 v123, 0xff800000 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v125, 0xff800000 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v127, 0xff800000 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v44, 0xff800000
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v48, 0xff800000
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v50, 0xff800000
	v_dual_mov_b32 v49, 0xff800000 :: v_dual_mov_b32 v26, v33
	v_dual_mov_b32 v51, 0xff800000 :: v_dual_mov_b32 v28, v33
	.loc	1 778 24                        ; attention.py:778:24
	v_cmp_gt_i32_e64 s0, s34, v84
	v_dual_mov_b32 v15, v33 :: v_dual_add_nc_u32 v166, 0, v74
	v_dual_mov_b32 v16, v33 :: v_dual_add_nc_u32 v165, 0, v73
	v_dual_mov_b32 v3, v33 :: v_dual_add_nc_u32 v168, s22, v147
	.loc	1 771 51                        ; attention.py:771:51
	v_or_b32_e32 v137, 2, v118
	v_or_b32_e32 v138, 4, v118
	v_or_b32_e32 v139, 6, v118
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v140, 2, v116
	v_or_b32_e32 v141, 4, v116
	v_or_b32_e32 v142, 6, v116
	v_or_b32_e32 v143, 8, v116
	v_or_b32_e32 v144, 10, v116
	v_or_b32_e32 v145, 12, v116
	v_or_b32_e32 v146, 14, v116
	.loc	1 707 13                        ; attention.py:707:13
	v_lshl_add_u32 v150, s34, 1, v85
	v_lshl_add_u32 v151, s34, 2, v85
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s6, s50, v72
	v_cmp_gt_i32_e64 s8, s50, v71
	v_cmp_gt_i32_e64 s10, s50, v70
	v_cmp_gt_i32_e64 s12, s50, v69
	v_add_nc_u32_e32 v188, s22, v157
	v_and_b32_e32 v190, 0x5040504, v38
	v_and_b32_e32 v191, 0x7060706, v40
	v_add_nc_u32_e32 v192, 0, v46
	v_add_nc_u32_e32 v193, 0, v57
	v_add_nc_u32_e32 v194, 0, v58
	v_add_nc_u32_e32 v195, 0, v61
	v_add_nc_u32_e32 v196, 0, v62
	v_add_nc_u32_e32 v197, 0, v63
	v_add_nc_u32_e32 v198, 0, v64
	v_add_nc_u32_e32 v199, 0, v65
	v_add_nc_u32_e32 v200, 0, v39
	v_add_nc_u32_e32 v201, 0, v52
	v_add_nc_u32_e32 v202, 0, v53
	v_add_nc_u32_e32 v203, 0, v54
	v_add_nc_u32_e32 v205, 0, v56
	v_add_nc_u32_e32 v206, 0, v66
	v_add_nc_u32_e32 v207, 0, v67
	v_add_nc_u32_e32 v208, 0, v68
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	.loc	1 772 39                        ; attention.py:772:39
	s_lshl_b32 s68, s14, 3
	s_add_i32 s69, s15, s16
	.loc	1 710 33                        ; attention.py:710:33
	s_add_i32 s72, s13, s20
	s_mov_b32 s46, 0x76543210
	s_mov_b32 s56, s42
	s_mov_b32 s40, s54
	s_mov_b32 s60, s38
	s_mov_b32 s38, s58
	.loc	1 742 17                        ; attention.py:742:17
	s_mov_b32 s48, s47
	s_mov_b32 s49, s47
	s_mov_b32 s50, s47
	s_mov_b32 s64, s47
	s_mov_b32 s65, s47
	s_mov_b32 s66, s47
	s_mov_b32 s67, s47
	s_and_b32 s37, s37, 0xffff
	s_and_b32 s57, s43, 0xffff
	s_and_b32 s41, s55, 0xffff
	s_and_b32 s61, s39, 0xffff
	s_and_b32 s53, s53, 0xffff
	s_mov_b32 s39, s59
	s_add_i32 s69, s69, s3
	.loc	1 710 32                        ; attention.py:710:32
	s_mul_i32 s70, s72, s51
	.loc	1 773 30                        ; attention.py:773:30
	s_mul_i32 s71, s72, s68
	.loc	1 794 21                        ; attention.py:794:21
	s_mul_i32 s72, s72, s14
	.loc	1 707 13                        ; attention.py:707:13
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[95:96], null, s35, v108, v[34:35]
	.loc	1 590 31                        ; attention.py:590:31
	v_mov_b16_e32 v117.h, v35.l
	v_add_nc_u32_e32 v174, 0, v55
	v_xor_b32_e32 v55, 64, v162
	v_add_nc_u32_e32 v183, s22, v152
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mov_b32 v215, v117 :: v_dual_add_nc_u32 v184, s22, v153
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[96:97], null, s19, 24, v[95:96]
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mov_b32 v212, v117 :: v_dual_add_nc_u32 v185, s22, v154
	v_dual_mov_b32 v217, v117 :: v_dual_add_nc_u32 v186, s22, v155
	v_dual_mov_b32 v214, v117 :: v_dual_add_nc_u32 v187, s22, v156
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[97:98], null, s19, 40, v[95:96]
	v_mad_u64_u32 v[98:99], null, s19, 48, v[95:96]
	v_mad_u64_u32 v[99:100], null, s19, 56, v[95:96]
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mov_b32 v216, v117 :: v_dual_add_nc_u32 v189, s22, v158
	v_add_nc_u32_e32 v204, 0, v55
	.loc	1 707 13                        ; attention.py:707:13
	v_lshl_add_u32 v209, s19, 3, v95
	v_lshl_add_u32 v210, s19, 4, v95
	v_lshl_add_u32 v211, s19, 5, v95
	.loc	1 732 30                        ; attention.py:732:30
	v_mov_b32_e32 v100, v117
	v_mov_b32_e32 v213, v117
	s_branch .LBB0_10
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 785 30                        ; attention.py:785:30
	v_mov_b16_e32 v46.l, 0
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v34, v34
	.loc	1 727 37                        ; attention.py:727:37
	s_waitcnt vmcnt(7)
	v_mov_b16_e32 v46.h, v59.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v59.h, v58.l
	v_mov_b16_e32 v58.l, v46.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v58.h, v57.l
	v_mov_b16_e32 v57.l, v46.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v57.h, v56.l
	v_mov_b16_e32 v56.l, v46.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v56.h, v55.l
	v_mov_b16_e32 v55.l, v46.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v55.h, v54.l
	v_mov_b16_e32 v54.l, v46.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v54.h, v53.l
	v_mov_b16_e32 v53.l, v46.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v53.h, v52.l
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v52, v117, v34 :: v_dual_mul_f32 v61, v212, v36
	v_mul_f32_e32 v60, v100, v35
	v_dual_mul_f32 v62, v213, v37 :: v_dual_mul_f32 v35, v216, v40
	v_dual_mul_f32 v37, v214, v38 :: v_dual_mul_f32 v36, v215, v39
	v_mul_f32_e32 v34, v217, v41
	.loc	1 752 25                        ; attention.py:752:25
	s_mul_i32 s3, s31, s35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v35, v35, v54
	.loc	1 752 25                        ; attention.py:752:25
	s_add_i32 s3, s69, s3
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v37, v37, v56 :: v_dual_mul_f32 v34, v34, v53
	v_dual_mul_f32 v39, v61, v58 :: v_dual_mul_f32 v36, v36, v55
	v_dual_mul_f32 v38, v62, v57 :: v_dual_mul_f32 v41, v52, v46
	.loc	1 761 36                        ; attention.py:761:36
	v_add_lshl_u32 v52, s3, v95, 1
	v_add_lshl_u32 v53, s3, v209, 1
	v_add_lshl_u32 v54, s3, v210, 1
	v_add_lshl_u32 v55, s3, v96, 1
	v_add_lshl_u32 v56, s3, v211, 1
	v_add_lshl_u32 v57, s3, v97, 1
	v_add_lshl_u32 v58, s3, v98, 1
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e32 v59.l, v46.l
	.loc	1 761 36                        ; attention.py:761:36
	v_cndmask_b32_e64 v52, 0x80000000, v52, s63
	v_cndmask_b32_e64 v53, 0x80000000, v53, s27
	v_cndmask_b32_e64 v54, 0x80000000, v54, s73
	v_cndmask_b32_e64 v55, 0x80000000, v55, s54
	v_cndmask_b32_e64 v56, 0x80000000, v56, s74
	v_cndmask_b32_e64 v57, 0x80000000, v57, s55
	v_cndmask_b32_e64 v58, 0x80000000, v58, s75
	s_mov_b32 s42, s58
	s_mov_b32 s43, s59
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v40, v60, v59
	.loc	1 761 36                        ; attention.py:761:36
	s_clause 0x6
	buffer_load_u16 v52, v52, s[40:43], 0 offen
	buffer_load_u16 v53, v53, s[40:43], 0 offen
	buffer_load_u16 v54, v54, s[40:43], 0 offen
	buffer_load_u16 v55, v55, s[40:43], 0 offen
	buffer_load_u16 v56, v56, s[40:43], 0 offen
	buffer_load_u16 v57, v57, s[40:43], 0 offen
	buffer_load_u16 v58, v58, s[40:43], 0 offen
	v_add_lshl_u32 v59, s3, v99, 1
	.loc	1 763 25                        ; attention.py:763:25
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 761 36                        ; attention.py:761:36
	v_cndmask_b32_e64 v59, 0x80000000, v59, s62
	buffer_load_u16 v59, v59, s[40:43], 0 offen
	.loc	1 762 35                        ; attention.py:762:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 761 36                        ; attention.py:761:36
	s_waitcnt vmcnt(7)
	v_cndmask_b16 v52.l, 0xff80, v52.l, s63
	s_waitcnt vmcnt(6)
	v_cndmask_b16 v53.l, 0xff80, v53.l, s27
	s_waitcnt vmcnt(5)
	v_cndmask_b16 v52.h, 0xff80, v54.l, s73
	.loc	1 762 35                        ; attention.py:762:35
	v_add_nc_u32_e32 v54, 0, v159
	.loc	1 761 36                        ; attention.py:761:36
	s_waitcnt vmcnt(3)
	v_cndmask_b16 v56.l, 0xff80, v56.l, s74
	v_mov_b16_e32 v46.h, v52.l
	s_waitcnt vmcnt(1)
	v_cndmask_b16 v56.h, 0xff80, v58.l, s75
	v_cndmask_b16 v53.h, 0xff80, v55.l, s54
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s14, 0xff800000, v46
	.loc	1 762 35                        ; attention.py:762:35
	ds_store_2addr_b32 v54, v52, v56 offset1:32
	.loc	1 761 36                        ; attention.py:761:36
	v_mov_b16_e32 v52.l, v46.l
	v_mov_b16_e32 v54.l, v46.l
	v_mov_b16_e32 v54.h, v56.l
	v_mov_b16_e32 v56.l, v46.l
	v_mov_b16_e32 v46.h, v53.l
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s13, 0xff800000, v52
	.loc	1 761 36                        ; attention.py:761:36
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v52.h, 0xff80, v59.l, s62
	v_cndmask_b16 v52.l, 0xff80, v57.l, s55
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v56
	v_cmp_neq_f32_e64 s3, 0xff800000, v54
	.loc	1 763 25 is_stmt 0              ; attention.py:763:25
	s_and_b32 s22, s73, s13
	s_and_b32 s23, s63, s14
	.loc	1 762 35 is_stmt 1              ; attention.py:762:35
	ds_store_2addr_b32 v192, v53, v52 offset1:32
	.loc	1 761 36                        ; attention.py:761:36
	v_mov_b16_e32 v54.h, v52.l
	v_mov_b16_e32 v52.l, v46.l
	.loc	1 763 25                        ; attention.py:763:25
	s_and_b32 s20, s75, vcc_lo
	.loc	1 761 36                        ; attention.py:761:36
	v_mov_b16_e32 v53.l, v46.l
	.loc	1 763 25                        ; attention.py:763:25
	s_and_b32 s21, s74, s3
	.loc	1 763 34 is_stmt 0              ; attention.py:763:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v54
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v52
	.loc	1 762 35 is_stmt 1              ; attention.py:762:35
	v_add_nc_u32_e32 v52, 0, v160
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s13, 0xff800000, v53
	.loc	1 762 35                        ; attention.py:762:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v53, v52
	ds_load_u16 v54, v193
	ds_load_u16 v55, v194
	ds_load_u16 v56, v195
	.loc	1 761 36                        ; attention.py:761:36
	ds_load_u16 v57, v199
	ds_load_u16 v58, v198
	ds_load_u16 v59, v197
	ds_load_u16 v60, v196
	.loc	1 763 25                        ; attention.py:763:25
	v_cndmask_b32_e64 v52, 0, 1, s20
	.loc	1 763 34 is_stmt 0              ; attention.py:763:34
	v_cmp_neq_f32_e64 s14, 0xff800000, v46
	.loc	1 763 25                        ; attention.py:763:25
	v_cndmask_b32_e64 v61, 0, 1, s22
	s_and_b32 s24, s62, vcc_lo
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b16 v46.h, 8, v52.l
	v_cndmask_b32_e64 v52, 0, 1, s21
	s_barrier
	s_and_b32 s26, s54, s13
	s_and_b32 s25, s55, s3
	s_and_b32 s27, s27, s14
	v_or_b16 v52.h, v52.l, v46.h
	v_mov_b16_e32 v52.l, v61.l
	v_cndmask_b32_e64 v61, 0, 1, s23
	.loc	1 767 25 is_stmt 1              ; attention.py:767:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v42
	.loc	1 775 32                        ; attention.py:775:32
	s_mov_b32 s62, s58
	s_mov_b32 s63, s59
	.loc	1 763 25                        ; attention.py:763:25
	v_lshlrev_b16 v46.h, 8, v52.l
	v_mov_b16_e32 v52.l, v61.l
	v_add_nc_u32_e32 v61, 0, v161
	.loc	1 761 36                        ; attention.py:761:36
	v_lshlrev_b32_e32 v59, 16, v59
	v_lshlrev_b32_e32 v58, 16, v58
	.loc	1 797 41                        ; attention.py:797:41
	s_mov_b32 s54, s58
	.loc	1 763 25                        ; attention.py:763:25
	v_or_b16 v52.l, v52.l, v46.h
	.loc	1 797 41                        ; attention.py:797:41
	s_mov_b32 s55, s59
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 762 35                        ; attention.py:762:35
	v_dual_mul_f32 v59, 0x3fb8aa3b, v59 :: v_dual_mul_f32 v58, 0x3fb8aa3b, v58
	.loc	1 763 25                        ; attention.py:763:25
	ds_store_b32 v61, v52
	v_cndmask_b32_e64 v52, 0, 1, s24
	v_cndmask_b32_e64 v61, 0, 1, s26
	.loc	1 762 25                        ; attention.py:762:25
	v_dual_fmac_f32 v59, s65, v36 :: v_dual_fmac_f32 v58, s66, v35
	.loc	1 763 25                        ; attention.py:763:25
	v_lshlrev_b16 v46.h, 8, v52.l
	v_cndmask_b32_e64 v52, 0, 1, s25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v52.h, v52.l, v46.h
	v_mov_b16_e32 v52.l, v61.l
	v_cndmask_b32_e64 v61, 0, 1, s27
	v_lshlrev_b16 v46.h, 8, v52.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v52.l, v61.l
	v_or_b16 v52.l, v52.l, v46.h
	ds_store_b32 v200, v52
	v_add_nc_u32_e32 v52, 0, v162
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16_hi v46, v52
	.loc	1 761 36                        ; attention.py:761:36
	v_lshlrev_b32_e32 v52, 16, v53
	v_lshlrev_b32_e32 v53, 16, v54
	v_lshlrev_b32_e32 v54, 16, v55
	v_lshlrev_b32_e32 v55, 16, v56
	v_lshlrev_b32_e32 v57, 16, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 762 35                        ; attention.py:762:35
	v_dual_mul_f32 v62, 0x3fb8aa3b, v53 :: v_dual_mul_f32 v61, 0x3fb8aa3b, v54
	v_dual_mul_f32 v52, 0x3fb8aa3b, v52 :: v_dual_mul_f32 v57, 0x3fb8aa3b, v57
	.loc	1 761 36                        ; attention.py:761:36
	v_lshlrev_b32_e32 v56, 16, v60
	.loc	1 762 35                        ; attention.py:762:35
	v_mul_f32_e32 v60, 0x3fb8aa3b, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 762 25 is_stmt 0              ; attention.py:762:25
	v_fmac_f32_e32 v62, s48, v40
	v_dual_fmac_f32 v52, s47, v41 :: v_dual_fmac_f32 v57, s67, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 762 35                        ; attention.py:762:35
	v_mul_f32_e32 v56, 0x3fb8aa3b, v56
	.loc	1 762 25                        ; attention.py:762:25
	v_dual_fmac_f32 v60, s50, v38 :: v_dual_fmac_f32 v61, s49, v39
	.loc	1 764 26 is_stmt 1              ; attention.py:764:26
	v_add_nc_u32_e32 v34, 0, v148
	.loc	1 763 25                        ; attention.py:763:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v46.h, 1, v46.h
	.loc	1 762 25                        ; attention.py:762:25
	v_fmac_f32_e32 v56, s64, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 763 25                        ; attention.py:763:25
	v_cmp_eq_u16_e64 s18, 1, v46.h
	ds_load_u8_d16_hi v46, v201
	s_waitcnt lgkmcnt(0)
	v_and_b16 v46.h, 1, v46.h
	v_cmp_eq_u16_e64 s19, 1, v46.h
	ds_load_u8_d16_hi v46, v202
	s_waitcnt lgkmcnt(0)
	v_and_b16 v46.h, 1, v46.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s16, 1, v46.h
	ds_load_u8_d16_hi v46, v203
	s_waitcnt lgkmcnt(0)
	v_and_b16 v46.h, 1, v46.h
	v_cmp_eq_u16_e64 s17, 1, v46.h
	ds_load_u8_d16_hi v46, v204
	s_waitcnt lgkmcnt(0)
	v_and_b16 v46.h, 1, v46.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s14, 1, v46.h
	ds_load_u8_d16_hi v46, v205
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v56, 0xff800000, v56, s14
	.loc	1 763 25                        ; attention.py:763:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v46.h, 1, v46.h
	v_cmp_eq_u16_e64 s15, 1, v46.h
	ds_load_u8_d16_hi v46, v206
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v55, 0xff800000, v59, s15
	v_cndmask_b32_e64 v59, 0xff800000, v62, s19
	.loc	1 763 25                        ; attention.py:763:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v46.h, 1, v46.h
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v46.h
	ds_load_u8_d16_hi v46, v207
	.loc	1 764 26                        ; attention.py:764:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e32 v54, 0xff800000, v58, vcc_lo
	v_cndmask_b32_e64 v58, 0xff800000, v61, s16
	.loc	1 763 25                        ; attention.py:763:25
	v_and_b16 v46.h, 1, v46.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s13, 1, v46.h
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v53, 0xff800000, v57, s13
	v_cndmask_b32_e64 v57, 0xff800000, v60, s17
	v_cndmask_b32_e64 v60, 0xff800000, v52, s18
	ds_store_b32 v34, v60
	ds_store_b32 v169, v59
	ds_store_b32 v170, v58
	ds_store_b32 v171, v57
	ds_store_b32 v172, v56
	ds_store_b32 v173, v55
	ds_store_b32 v174, v54
	ds_store_b32 v175, v53
	v_add_nc_u32_e32 v34, 0, v163
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[38:39], v34 offset1:32
	ds_load_2addr_b32 v[34:35], v34 offset0:64 offset1:96
	ds_load_2addr_b32 v[40:41], v208 offset1:32
	ds_load_2addr_b32 v[36:37], v208 offset0:64 offset1:96
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v69, v57, v56, v55
.Ltmp2:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	s_waitcnt lgkmcnt(3)
	v_mov_b32_e32 v52, v38
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v61, v38, v38
	s_waitcnt lgkmcnt(1)
	v_dual_max_f32 v63, v39, v39 :: v_dual_max_f32 v62, v40, v40
	v_max_f32_e32 v64, v41, v41
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v52, v52 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v66, v36, v36
	v_dual_max_f32 v68, v37, v37 :: v_dual_max_f32 v65, v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v67, v35, v35 :: v_dual_max_f32 v52, v52, v52
	v_max_f32_e32 v52, v61, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v61, v52
	v_mov_b32_dpp v61, v61 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v61, v61, v61
	v_max_f32_e32 v52, v52, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v61, v52
	v_mov_b32_dpp v61, v61 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v61, v61, v61
	v_max_f32_e32 v52, v52, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v61, v52
	v_mov_b32_dpp v61, v61 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v61, v61, v61
	v_max_f32_e32 v52, v52, v61
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v61, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v61, v61 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v61, v61, v61
	v_max_f32_e32 v70, v54, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v61, v62, v61
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v62, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v62, v62 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v62, v62, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v61, v61, v62
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v62, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v62, v62 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v62, v62, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v61, v61, v62
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v62, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v62, v62 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v62, v62, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v61, v61, v62 :: v_dual_mov_b32 v62, v39
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v62, v62 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v62, v62, v62
	v_max_f32_e32 v62, v63, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v63, v62
	v_mov_b32_dpp v63, v63 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v63, v63, v63
	v_max_f32_e32 v62, v62, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v63, v62
	v_mov_b32_dpp v63, v63 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v63, v63, v63
	v_max_f32_e32 v62, v62, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v63, v62
	v_mov_b32_dpp v63, v63 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v63, v63, v63
	v_dual_max_f32 v62, v62, v63 :: v_dual_mov_b32 v63, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v63, v63 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v63, v63, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v63, v64, v63
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v64, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v64, v64 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v64, v64, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v63, v63, v64
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v64, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v64, v64 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v64, v64, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v63, v63, v64
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v64, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v64, v64 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v64, v64, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v63, v63, v64 :: v_dual_mov_b32 v64, v34
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v64, v64 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v64, v64, v64
	v_max_f32_e32 v64, v65, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v65, v64
	v_mov_b32_dpp v65, v65 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v65, v65, v65
	v_max_f32_e32 v64, v64, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v65, v64
	v_mov_b32_dpp v65, v65 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v65, v65, v65
	v_max_f32_e32 v64, v64, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v65, v64
	v_mov_b32_dpp v65, v65 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v65, v65, v65
	v_max_f32_e32 v64, v64, v65
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v65, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v65, v65 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v65, v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v65, v66, v65
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v66, v66 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v65, v65, v66
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v66, v66 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v65, v65, v66
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v66, v66 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v65, v65, v66 :: v_dual_mov_b32 v66, v35
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v66, v66 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_max_f32_e32 v66, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v67, v66
	v_mov_b32_dpp v67, v67 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v67, v67, v67
	v_max_f32_e32 v66, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v67, v66
	v_mov_b32_dpp v67, v67 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v67, v67, v67
	v_max_f32_e32 v66, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v67, v66
	v_mov_b32_dpp v67, v67 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v67, v67, v67
	v_dual_max_f32 v66, v66, v67 :: v_dual_mov_b32 v67, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v67, v67 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v67, v67, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v67, v68, v67
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v68, v68 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v68, v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v67, v67, v68
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v68, v68 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v68, v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v67, v67, v68
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v68, v68 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v68, v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v67, v67, v68
	v_max3_f32 v68, v60, v59, v58
	v_max3_f32 v68, v68, v69, v70
.Ltmp68:
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v70, v120, v120
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_permlanex16_b32 v69, v68, s46, 0xfedcba98 op_sel:[1,0]
.Ltmp70:
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v120, v70, v52
	v_max_f32_e32 v70, v121, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max3_f32 v226, v42, v68, v69
	v_dual_max_f32 v68, v43, v43 :: v_dual_max_f32 v121, v70, v61
	v_max_f32_e32 v70, v122, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v218, v68, v52
	v_max_f32_e32 v52, v44, v44
	v_max_f32_e32 v122, v70, v62
	v_max_f32_e32 v70, v123, v123
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v40, v40, v121
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v219, v52, v61
	v_dual_max_f32 v52, v45, v45 :: v_dual_sub_f32 v61, v43, v218
	v_dual_max_f32 v123, v70, v63 :: v_dual_max_f32 v70, v124, v124
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v39, v39, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v220, v52, v62
	v_max_f32_e32 v52, v47, v47
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v62, v44, v219
	.loc	1 767 61 is_stmt 0              ; attention.py:767:61
	v_exp_f32_e32 v61, v61
	.loc	1 768 62 is_stmt 1              ; attention.py:768:62
	v_sub_f32_e32 v41, v41, v123
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v221, v52, v63
	v_max_f32_e32 v52, v48, v48
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v63, v45, v220
	.loc	1 767 61 is_stmt 0              ; attention.py:767:61
	v_exp_f32_e32 v62, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 766 24 is_stmt 1              ; attention.py:766:24
	v_max_f32_e32 v222, v52, v64
	v_max_f32_e32 v52, v49, v49
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v63, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v223, v52, v65 :: v_dual_max_f32 v52, v50, v50
	v_max_f32_e32 v224, v52, v66
	v_max_f32_e32 v52, v51, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v225, v52, v67 :: v_dual_sub_f32 v52, v42, v226
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v42, v60, v226
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v68, v51, v225
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 767 61 is_stmt 0              ; attention.py:767:61
	v_exp_f32_e32 v52, v52
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v52, 0, v52, s3
	v_cmp_neq_f32_e64 s3, 0xff800000, v43
	.loc	1 768 62 is_stmt 1              ; attention.py:768:62
	v_dual_sub_f32 v43, v59, v226 :: v_dual_max_f32 v124, v70, v64
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v70, v125, v125
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v64, v47, v221
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 767 25 is_stmt 0              ; attention.py:767:25
	v_cndmask_b32_e64 v227, 0, v61, s3
	v_cmp_neq_f32_e64 s3, 0xff800000, v44
	.loc	1 815 23 is_stmt 1              ; attention.py:815:23
	v_mul_f32_e32 v25, v25, v52
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v125, v70, v65
	v_max_f32_e32 v70, v126, v126
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v65, v48, v222
	.loc	1 767 61 is_stmt 0              ; attention.py:767:61
	v_exp_f32_e32 v64, v64
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v228, 0, v62, s3
	v_cmp_neq_f32_e64 s3, 0xff800000, v45
	.loc	1 766 24 is_stmt 1              ; attention.py:766:24
	v_max_f32_e32 v126, v70, v66
	v_max_f32_e32 v70, v127, v127
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v66, v49, v223
	.loc	1 767 61 is_stmt 0              ; attention.py:767:61
	v_exp_f32_e32 v65, v65
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v229, 0, v63, s3
	v_cmp_neq_f32_e64 s3, 0xff800000, v47
	.loc	1 766 24 is_stmt 1              ; attention.py:766:24
	v_max_f32_e32 v127, v70, v67
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v67, v50, v224
	.loc	1 767 61 is_stmt 0              ; attention.py:767:61
	v_exp_f32_e32 v66, v66
	.loc	1 768 62 is_stmt 1              ; attention.py:768:62
	v_sub_f32_e32 v38, v38, v120
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v230, 0, v64, s3
	v_cmp_neq_f32_e64 s3, 0xff800000, v48
	.loc	1 767 61 is_stmt 0              ; attention.py:767:61
	v_exp_f32_e32 v67, v67
	.loc	1 815 23 is_stmt 1              ; attention.py:815:23
	v_mul_f32_e32 v27, v27, v52
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v48, v55, v226
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v55, v41
	.loc	1 767 25 is_stmt 1              ; attention.py:767:25
	v_cndmask_b32_e64 v231, 0, v65, s3
	v_cmp_neq_f32_e64 s3, 0xff800000, v49
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v41, v43
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v17, v17, v52
	v_mul_f32_e32 v21, v21, v52
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v49, v54, v226
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v232, 0, v66, s3
	v_cmp_neq_f32_e64 s3, 0xff800000, v50
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v50, v53, v226
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v53, v40
	v_exp_f32_e32 v40, v42
	v_exp_f32_e32 v54, v39
	.loc	1 767 25 is_stmt 1              ; attention.py:767:25
	v_cndmask_b32_e64 v233, 0, v67, s3
	v_cmp_neq_f32_e64 s3, 0xff800000, v51
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v51, v38
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v31, v31, v52 :: v_dual_sub_f32 v44, v58, v226
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v45, v57, v226
	v_sub_f32_e32 v47, v56, v226
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v43, 0, v53, s27
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v34, v34, v124
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v38, v44
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v44, 0, v54, s22
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v39, v45
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v42, 0, v51, s23
	v_cndmask_b32_e64 v45, 0, v55, s26
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v56, v34
	.loc	1 768 62                        ; attention.py:768:62
	v_dual_sub_f32 v36, v36, v125 :: v_dual_mul_f32 v19, v19, v52
.Ltmp71:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v51, v42
.Ltmp72:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v37, v37, v127
	v_sub_f32_e32 v35, v35, v126
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v57, v36
	v_exp_f32_e32 v36, v47
.Ltmp73:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v51, v51 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp74:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v59, v37
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v47, 0, v56, s21
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v37, v48
	v_exp_f32_e32 v58, v35
.Ltmp75:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v42, v42, v51
.Ltmp76:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v34, v49
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v26, v26, v52
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v48, 0, v57, s25
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v23, v23, v52
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v51, v42
.Ltmp78:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v29, v29, v52
	v_mul_f32_e32 v30, v30, v52
	v_mul_f32_e32 v18, v18, v52
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v49, 0, v58, s20
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v51, v51 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp80:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v22, v22, v52
	v_mul_f32_e32 v10, v10, v52
	v_mul_f32_e32 v12, v12, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v9, v9, v52 :: v_dual_add_f32 v42, v42, v51
	v_mul_f32_e32 v14, v14, v52
	v_mul_f32_e32 v16, v16, v52
	v_mul_f32_e32 v2, v2, v52
	v_dual_mul_f32 v4, v4, v52 :: v_dual_mov_b32 v51, v42
	v_mul_f32_e32 v24, v24, v52
	v_mul_f32_e32 v6, v6, v52
	v_mul_f32_e32 v8, v8, v52
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v37, 0, v37, s15
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v51, v51 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp82:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v36, 0, v36, s14
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v11, v11, v52
	v_mul_f32_e32 v13, v13, v52
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v3, v3, v52 :: v_dual_add_f32 v42, v42, v51
	v_mul_f32_e32 v15, v15, v52
	v_mul_f32_e32 v7, v7, v52
	v_mul_f32_e32 v1, v1, v52
	v_mul_f32_e32 v5, v5, v52
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_dual_mov_b32 v51, v42 :: v_dual_mul_f32 v28, v28, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v51, v51 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp84:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v74, v42, v51
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v42, v42 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v42, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v43, v42
	v_mov_b32_dpp v43, v43 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v42, v42, v43
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp90:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v42, v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v43, v42
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v75, v42, v43 :: v_dual_mov_b32 v42, v44
.Ltmp93:
	.loc	1 768 33                        ; attention.py:768:33
	v_dual_cndmask_b32 v34, 0, v34 :: v_dual_fmac_f32 v75, v130, v228
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v42, v42 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v130, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v42, v44, v42
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v43, v43 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v42, v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v43, v42
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v42, v42, v43
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v78, v42, v43
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v42, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp103:
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v78, v131, v229
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v42, v42 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp105:
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v20, v20, v52 :: v_dual_mov_b32 v131, v78
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v42, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v43, v42
	v_mov_b32_dpp v43, v43 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v42, v42, v43
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v42, v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v43, v42
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v79, v42, v43 :: v_dual_mov_b32 v42, v47
.Ltmp113:
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v68, v68
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v79, v132, v230
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v42, v42 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v132, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v42, v47, v42
.Ltmp116:
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v234, 0, v68, s3
	.loc	1 771 36                        ; attention.py:771:36
	s_lshr_b32 s3, s31, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b32_e32 v44, s3, v138
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v43, v42
.Ltmp118:
	.loc	1 771 36                        ; attention.py:771:36
	v_or_b32_e32 v45, s3, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 782 31                        ; attention.py:782:31
	v_lshl_or_b32 v44, v44, 1, 1
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v43, v43 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp120:
	.loc	1 782 31                        ; attention.py:782:31
	v_lshl_or_b32 v45, v45, 1, 1
	.loc	1 782 30 is_stmt 0              ; attention.py:782:30
	v_cmp_gt_i32_e64 s21, s51, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp121:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v42, v42, v43
.Ltmp122:
	.loc	1 782 30                        ; attention.py:782:30
	v_cmp_gt_i32_e64 s22, s51, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v43, v42
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v42, v42, v43
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp126:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v76, v42, v43
.Ltmp127:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v42, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp128:
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v76, v133, v231
.Ltmp129:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v42, v42 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v133, v76
.Ltmp130:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v42, v48, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v43, v42
	v_mov_b32_dpp v43, v43 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v42, v42, v43
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v43, v42
.Ltmp134:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v35, v50
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v50, 0, v59, s24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp135:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp136:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v42, v42, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp137:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v35, 0, v35, s13
.Ltmp138:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp139:
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e32 vcc_lo, v35, v35
.Ltmp140:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp141:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v77, v42, v43 :: v_dual_mov_b32 v42, v49
.Ltmp142:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v42, v42 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v42, v49, v42
.Ltmp144:
	.loc	1 817 23                        ; attention.py:817:23
	v_dual_fmac_f32 v74, v129, v227 :: v_dual_fmac_f32 v77, v134, v232
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v32, v32, v52 :: v_dual_mov_b32 v43, v42
	v_dual_mov_b32 v129, v74 :: v_dual_mov_b32 v134, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp145:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v43, v43 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp146:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v42, v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp147:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v43, v42
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp148:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v42, v42, v43
.Ltmp149:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp150:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v80, v42, v43
.Ltmp151:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v42, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v42, v42 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp152:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v42, v50, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp153:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v43, v42
	v_mov_b32_dpp v43, v43 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp154:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v42, v42, v43
.Ltmp155:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp156:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v42, v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp157:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v43, v42
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
.Ltmp158:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v81, v42, v43
.Ltmp159:
	.loc	1 771 36                        ; attention.py:771:36
	v_or_b32_e32 v42, s3, v118
	v_or_b32_e32 v43, s3, v137
	.loc	1 774 30                        ; attention.py:774:30
	s_add_i32 s3, s3, s71
	s_mul_i32 s3, s3, s34
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v81, v136, v234
	v_add_nc_u32_e32 v47, s3, v85
	v_add_nc_u32_e32 v48, s3, v150
	v_add_nc_u32_e32 v49, s3, v151
	v_add_nc_u32_e32 v50, s3, v86
	.loc	1 777 27                        ; attention.py:777:27
	v_cmp_gt_i32_e64 s3, s68, v42
	.loc	1 782 31                        ; attention.py:782:31
	v_lshl_or_b32 v42, v42, 1, 1
	v_lshl_or_b32 v43, v43, 1, 1
	v_mov_b32_e32 v136, v81
	.loc	1 777 26                        ; attention.py:777:26
	s_and_b32 s3, s0, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v47, 0x80000000, v47, s3
	v_cndmask_b32_e64 v48, 0x80000000, v48, s3
	v_cndmask_b32_e64 v49, 0x80000000, v49, s3
	v_cndmask_b32_e64 v50, 0x80000000, v50, s3
	.loc	1 782 30                        ; attention.py:782:30
	v_cmp_gt_i32_e64 s3, s51, v42
	.loc	1 775 32                        ; attention.py:775:32
	s_clause 0x3
	buffer_load_u8 v47, v47, s[60:63], 0 offen
	buffer_load_u8 v48, v48, s[60:63], 0 offen
	buffer_load_u8 v49, v49, s[60:63], 0 offen
	buffer_load_u8 v50, v50, s[60:63], 0 offen
	.loc	1 782 30                        ; attention.py:782:30
	v_cmp_gt_i32_e64 s20, s51, v43
	.loc	1 783 76                        ; attention.py:783:76
	s_waitcnt vmcnt(3)
	v_and_b16 v42.l, v47.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v42.h, v48.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v43.l, v49.l, 15
	.loc	1 784 29                        ; attention.py:784:29
	v_and_b32_e32 v44, 15, v47
	v_and_b32_e32 v45, 15, v48
	v_and_b32_e32 v51, 15, v49
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v47.l, 4, v47.l
	v_lshrrev_b16 v48.l, 4, v48.l
	v_lshrrev_b16 v49.l, 4, v49.l
	.loc	1 785 30 is_stmt 0              ; attention.py:785:30
	v_mov_b16_e32 v47.h, v46.l
	v_mov_b16_e32 v48.h, v46.l
	v_mov_b16_e32 v49.h, v46.l
	.loc	1 786 54 is_stmt 1              ; attention.py:786:54
	v_or_b32_e32 v54, -16, v51
	.loc	1 783 76                        ; attention.py:783:76
	s_waitcnt vmcnt(0)
	v_and_b16 v43.h, v50.l, 15
	.loc	1 783 32 is_stmt 0              ; attention.py:783:32
	v_cndmask_b32_e64 v47, 0, v47, s3
	v_cndmask_b32_e64 v48, 0, v48, s20
	v_cndmask_b32_e64 v49, 0, v49, s21
	.loc	1 786 38 is_stmt 1              ; attention.py:786:38
	v_cmp_lt_u16_e64 s3, 7, v42.l
	v_cmp_lt_u16_e64 s20, 7, v42.h
	v_cmp_lt_u16_e64 s21, 7, v43.l
	.loc	1 786 54 is_stmt 0              ; attention.py:786:54
	v_or_b32_e32 v42, -16, v44
	.loc	1 784 29 is_stmt 1              ; attention.py:784:29
	v_and_b32_e32 v53, 15, v50
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v50.l, 4, v50.l
	.loc	1 785 30 is_stmt 0              ; attention.py:785:30
	v_mov_b16_e32 v50.h, v46.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 786 29 is_stmt 1              ; attention.py:786:29
	v_cndmask_b32_e64 v42, v44, v42, s3
	v_cndmask_b32_e64 v44, v51, v54, s21
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_lt_u32_e64 s3, 7, v47
	.loc	1 787 56 is_stmt 0              ; attention.py:787:56
	v_or_b32_e32 v51, -16, v47
	.loc	1 783 32 is_stmt 1              ; attention.py:783:32
	v_cndmask_b32_e64 v50, 0, v50, s22
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s22, 7, v43.h
	.loc	1 786 54 is_stmt 0              ; attention.py:786:54
	v_or_b32_e32 v43, -16, v45
	v_or_b32_e32 v55, -16, v53
	.loc	1 787 30 is_stmt 1              ; attention.py:787:30
	v_cndmask_b32_e64 v47, v47, v51, s3
	.loc	1 798 53                        ; attention.py:798:53
	s_lshr_b32 s3, s31, 4
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_lt_u32_e64 s21, 7, v49
	.loc	1 798 25                        ; attention.py:798:25
	s_add_i32 s3, s3, s72
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b32_e64 v43, v45, v43, s20
	.loc	1 798 25                        ; attention.py:798:25
	s_mul_i32 s3, s3, s34
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b32_e64 v45, v53, v55, s22
	.loc	1 797 41                        ; attention.py:797:41
	v_add_lshl_u32 v51, s3, v84, 1
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_lt_u32_e64 s20, 7, v48
	v_cmp_lt_u32_e64 s22, 7, v50
	.loc	1 787 56 is_stmt 0              ; attention.py:787:56
	v_or_b32_e32 v53, -16, v48
	v_or_b32_e32 v54, -16, v49
	.loc	1 797 41 is_stmt 1              ; attention.py:797:41
	v_cndmask_b32_e64 v51, 0x80000000, v51, s0
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b32_e32 v55, -16, v50
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v42, v42
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b32_e64 v48, v48, v53, s20
	v_cndmask_b32_e64 v49, v49, v54, s21
	.loc	1 797 41                        ; attention.py:797:41
	buffer_load_u16 v51, v51, s[52:55], 0 offen
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b32_e64 v50, v50, v55, s22
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v50, v50
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 707 13 is_stmt 1              ; attention.py:707:13
	s_add_i32 s31, s31, 16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	s_cmp_lt_i32 s31, s33
	.loc	1 797 41                        ; attention.py:797:41
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v51, 16, v51
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v42, v42, v51
	v_mul_f32_e32 v47, v47, v51
	v_mul_f32_e32 v43, v43, v51
	v_mul_f32_e32 v48, v48, v51
	v_dual_mul_f32 v44, v44, v51 :: v_dual_mul_f32 v49, v51, v49
	v_mul_f32_e32 v45, v51, v45
	v_mul_f32_e32 v50, v51, v50
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_bfe_u32 v51, v42, 16, 1
	v_cmp_o_f32_e64 s3, v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v51, v42, v51, 0x7fff
	v_cndmask_b16 v42.l, 0x7fff, v51.h, s3
	v_bfe_u32 v51, v47, 16, 1
	v_cmp_o_f32_e64 s3, v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v51, v47, v51, 0x7fff
	v_bfe_u32 v47, v43, 16, 1
	v_cndmask_b16 v42.h, 0x7fff, v51.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v47, v43, v47, 0x7fff
	v_cmp_o_f32_e64 s3, v43, v43
	v_cndmask_b16 v43.l, 0x7fff, v47.h, s3
	v_bfe_u32 v47, v48, 16, 1
	v_cmp_o_f32_e64 s3, v48, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v47, v48, v47, 0x7fff
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_mov_b16_e32 v48.h, v46.l
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v43.h, 0x7fff, v47.h, s3
	v_bfe_u32 v47, v44, 16, 1
	v_cmp_o_f32_e64 s3, v44, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v47, v44, v47, 0x7fff
	v_cndmask_b16 v44.l, 0x7fff, v47.h, s3
	v_bfe_u32 v47, v49, 16, 1
	v_cmp_o_f32_e64 s3, v49, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v47, v49, v47, 0x7fff
	v_cndmask_b16 v44.h, 0x7fff, v47.h, s3
	v_bfe_u32 v47, v45, 16, 1
	v_cmp_o_f32_e64 s3, v45, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v47, v45, v47, 0x7fff
	v_cndmask_b16 v45.l, 0x7fff, v47.h, s3
	v_bfe_u32 v47, v50, 16, 1
	v_cmp_o_f32_e64 s3, v50, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v47, v50, v47, 0x7fff
	v_cndmask_b16 v45.h, 0x7fff, v47.h, s3
	ds_store_b16 v149, v42
	ds_store_b16_d16_hi v149, v42 offset:128
	ds_store_b16 v149, v43 offset:512
	ds_store_b16_d16_hi v149, v43 offset:640
	ds_store_b16 v149, v44 offset:1024
	ds_store_b16_d16_hi v149, v44 offset:1152
	ds_store_b16 v149, v45 offset:1536
	ds_store_b16_d16_hi v149, v45 offset:1664
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v66, v119
	ds_load_u16_d16 v50, v119 offset:32
	s_waitcnt lgkmcnt(1)
	ds_load_u16_d16_hi v66, v119 offset:128
	ds_load_u16_d16 v67, v119 offset:256
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v67, v119 offset:384
	ds_load_u16_d16 v68, v119 offset:512
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v68, v119 offset:640
	ds_load_u16_d16 v69, v119 offset:768
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v69, v119 offset:896
	ds_load_u16_d16 v70, v119 offset:1024
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v70, v119 offset:1152
	ds_load_u16_d16 v71, v119 offset:1280
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v71, v119 offset:1408
	ds_load_u16_d16 v72, v119 offset:1536
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v72, v119 offset:1664
	ds_load_u16_d16 v73, v119 offset:1792
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v73, v119 offset:1920
	ds_load_u16_d16_hi v50, v119 offset:160
	ds_load_u16_d16 v51, v119 offset:288
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v51, v119 offset:416
	ds_load_u16_d16 v52, v119 offset:544
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v52, v119 offset:672
	ds_load_u16_d16 v53, v119 offset:800
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v53, v119 offset:928
	ds_load_u16_d16 v54, v119 offset:1056
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v54, v119 offset:1184
	ds_load_u16_d16 v55, v119 offset:1312
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v55, v119 offset:1440
	ds_load_u16_d16 v56, v119 offset:1568
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v56, v119 offset:1696
	ds_load_u16_d16 v57, v119 offset:1824
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v57, v119 offset:1952
	ds_load_u16_d16 v58, v119 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v58, v119 offset:192
	ds_load_u16_d16 v59, v119 offset:320
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v59, v119 offset:448
	ds_load_u16_d16 v60, v119 offset:576
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v60, v119 offset:704
	ds_load_u16_d16 v61, v119 offset:832
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v61, v119 offset:960
	ds_load_u16_d16 v62, v119 offset:1088
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v62, v119 offset:1216
	ds_load_u16_d16 v63, v119 offset:1344
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v63, v119 offset:1472
	ds_load_u16_d16 v64, v119 offset:1600
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v64, v119 offset:1728
	ds_load_u16_d16 v65, v119 offset:1856
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v47, 0, v40, s18
	v_cndmask_b32_e64 v40, 0, v41, s19
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v65, v119 offset:1984
	ds_load_u16_d16 v42, v119 offset:96
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v41.l, v40.h
	v_mov_b16_e32 v41.h, v46.l
	v_cmp_o_f32_e64 s3, v40, v40
	v_mov_b16_e32 v48.l, v47.h
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v42, v119 offset:224
	ds_load_u16_d16 v43, v119 offset:352
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v41, 1, v41
	v_and_b32_e32 v48, 1, v48
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v43, v119 offset:480
	ds_load_u16_d16 v44, v119 offset:608
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v41, v40, v41, 0x7fff
	v_add3_u32 v48, v47, v48, 0x7fff
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v44, v119 offset:736
	ds_load_u16_d16 v45, v119 offset:864
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v40.h, 0x7fff, v41.h, s3
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v41, 0, v38, s16
	v_cndmask_b32_e64 v38, 0, v39, s17
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v39.h, v46.l
	v_cmp_o_f32_e64 s3, v47, v47
	v_mov_b16_e32 v47.h, v46.l
	v_mov_b16_e32 v47.l, v41.h
	v_mov_b16_e32 v39.l, v38.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v40.l, 0x7fff, v48.h, s3
	v_cmp_o_f32_e64 s3, v38, v38
	v_and_b32_e32 v47, 1, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v47, v41, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v39, v38, v39, 0x7fff
	v_mov_b16_e32 v39.l, v37.h
	v_cndmask_b16 v38.h, 0x7fff, v39.h, s3
	v_mov_b16_e32 v39.h, v46.l
	v_cmp_o_f32_e64 s3, v41, v41
	v_mov_b16_e32 v41.l, v36.h
	v_mov_b16_e32 v41.h, v46.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v39, 1, v39
	v_cndmask_b16 v38.l, 0x7fff, v47.h, s3
	v_cmp_o_f32_e64 s3, v37, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v39, v37, v39, 0x7fff
	v_mov_b16_e32 v37.l, v34.h
	v_mov_b16_e32 v37.h, v46.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v41, v36, v41, 0x7fff
	v_cndmask_b16 v39.h, 0x7fff, v39.h, s3
	v_cmp_o_f32_e64 s3, v36, v36
	v_mov_b16_e32 v36.l, v35.h
	v_mov_b16_e32 v36.h, v46.l
	v_and_b32_e32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v39.l, 0x7fff, v41.h, s3
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v37, v34, v37, 0x7fff
	v_permlanex16_b32 v46, v39, s46, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v36, v35, v36, 0x7fff
	v_permlanex16_b32 v35, v40, s46, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v41.h, 0x7fff, v36.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v34, v35, v40, v190
	v_perm_b32 v35, v35, v40, v191
	v_cndmask_b16 v41.l, 0x7fff, v37.h, vcc_lo
	v_permlanex16_b32 v37, v38, s46, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v47, v41, s46, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_perm_b32 v36, v37, v38, v190
	v_perm_b32 v37, v37, v38, v191
	v_perm_b32 v38, v46, v39, v190
	v_perm_b32 v39, v46, v39, v191
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v45, v119 offset:992
	ds_load_u16_d16 v46, v119 offset:1120
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v40, v47, v41, v190
	v_perm_b32 v41, v47, v41, v191
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v46, v119 offset:1248
	ds_load_u16_d16 v47, v119 offset:1376
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v47, v119 offset:1504
	ds_load_u16_d16 v48, v119 offset:1632
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v48, v119 offset:1760
	ds_load_u16_d16 v49, v119 offset:1888
	.loc	1 816 23                        ; attention.py:816:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[66:73], v[34:41], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[58:65], v[34:41], v[9:16]
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v49, v119 offset:2016
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[42:49], v[34:41], v[1:8]
	v_dual_mov_b32 v47, v221 :: v_dual_fmac_f32 v80, v135, v233
	v_mov_b32_e32 v42, v226
	v_mov_b32_e32 v43, v218
	v_wmma_f32_16x16x16_bf16 v[17:24], v[50:57], v[34:41], v[17:24]
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v44, v219 :: v_dual_mov_b32 v135, v80
	v_dual_mov_b32 v45, v220 :: v_dual_mov_b32 v48, v222
	v_dual_mov_b32 v49, v223 :: v_dual_mov_b32 v50, v224
	v_mov_b32_e32 v51, v225
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc0 .LBB0_14
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v34, s31, v102
	v_or_b32_e32 v35, s31, v103
	.loc	1 711 32                        ; attention.py:711:32
	s_add_i32 s19, s31, s70
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v36, s31, v104
	.loc	1 711 32                        ; attention.py:711:32
	s_mul_i32 s3, s19, s29
	.loc	1 714 73                        ; attention.py:714:73
	v_cmp_gt_i32_e32 vcc_lo, s51, v34
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v37, s31, v105
	.loc	1 711 32                        ; attention.py:711:32
	v_add_nc_u32_e32 v38, s3, v82
	v_add_nc_u32_e32 v39, s3, v106
	v_add_nc_u32_e32 v40, s3, v107
	v_add_nc_u32_e32 v34, s3, v83
	.loc	1 714 73                        ; attention.py:714:73
	v_cmp_gt_i32_e64 s3, s51, v35
	v_cmp_gt_i32_e64 s13, s51, v36
	.loc	1 714 30 is_stmt 0              ; attention.py:714:30
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 714 73                        ; attention.py:714:73
	v_cmp_gt_i32_e64 s14, s51, v37
	.loc	1 712 32 is_stmt 1              ; attention.py:712:32
	v_cndmask_b32_e32 v35, 0x80000000, v38, vcc_lo
	.loc	1 714 30                        ; attention.py:714:30
	s_and_b32 vcc_lo, s4, s3
	.loc	1 712 32                        ; attention.py:712:32
	v_add_nc_u32_e32 v38, 0, v128
	v_cndmask_b32_e32 v36, 0x80000000, v39, vcc_lo
	.loc	1 714 30                        ; attention.py:714:30
	s_and_b32 vcc_lo, s4, s13
	.loc	1 717 33                        ; attention.py:717:33
	v_mov_b32_e32 v39, v33
	.loc	1 712 32                        ; attention.py:712:32
	v_cndmask_b32_e32 v37, 0x80000000, v40, vcc_lo
	.loc	1 714 30                        ; attention.py:714:30
	s_and_b32 vcc_lo, s4, s14
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
	v_or_b32_e32 v46, s31, v108
	.loc	1 745 17                        ; attention.py:745:17
	s_and_b32 vcc_lo, exec_lo, s5
	.loc	1 712 32                        ; attention.py:712:32
	s_waitcnt vmcnt(3)
	ds_store_b8 v109, v35
	s_waitcnt vmcnt(2)
	ds_store_b8 v112, v36
	s_waitcnt vmcnt(1)
	ds_store_b8 v113, v37
	s_waitcnt vmcnt(0)
	ds_store_b8 v114, v34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[52:53], v38
	ds_load_b64 v[54:55], v164
	ds_load_b64 v[56:57], v165
	ds_load_b64 v[58:59], v166
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
	v_cmp_gt_i32_e64 s3, s51, v46
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[52:53], v[87:88], v[34:41] neg_lo:[1,1,0]
	.loc	1 743 25                        ; attention.py:743:25
	s_and_b32 s63, s1, s3
	s_and_b32 s27, s6, s3
	s_and_b32 s73, s7, s3
	s_and_b32 s54, s8, s3
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[54:55], v[89:90], v[34:41] neg_lo:[1,1,0]
	.loc	1 743 25                        ; attention.py:743:25
	s_and_b32 s74, s9, s3
	s_and_b32 s55, s10, s3
	s_and_b32 s75, s11, s3
	s_and_b32 s62, s12, s3
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[56:57], v[91:92], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[58:59], v[93:94], v[34:41] neg_lo:[1,1,0]
	.loc	1 745 17                        ; attention.py:745:17
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 746 30                        ; attention.py:746:30
	v_cmp_le_i32_e32 vcc_lo, v46, v147
	v_cmp_le_i32_e64 s3, v46, v152
	v_cmp_le_i32_e64 s13, v46, v153
	v_cmp_le_i32_e64 s14, v46, v154
	v_cmp_le_i32_e64 s15, v46, v155
	v_cmp_le_i32_e64 s16, v46, v156
	.loc	1 746 21 is_stmt 0              ; attention.py:746:21
	s_and_b32 s20, vcc_lo, s63
	s_and_b32 s3, s3, s27
	.loc	1 746 30                        ; attention.py:746:30
	v_cmp_le_i32_e64 s17, v46, v157
	v_cmp_le_i32_e64 s18, v46, v158
	.loc	1 746 21                        ; attention.py:746:21
	s_and_b32 s13, s13, s73
	s_and_b32 s14, s14, s54
	s_and_not1_b32 s21, s63, exec_lo
	s_and_b32 s20, s20, exec_lo
	s_and_not1_b32 s22, s27, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s15, s15, s74
	s_and_b32 s16, s16, s55
	s_or_b32 s63, s21, s20
	s_or_b32 s27, s22, s3
	s_and_not1_b32 s3, s73, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_not1_b32 s20, s54, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_b32 s17, s17, s75
	s_and_b32 s18, s18, s62
	s_or_b32 s73, s3, s13
	s_or_b32 s54, s20, s14
	s_and_not1_b32 s3, s74, exec_lo
	s_and_b32 s13, s15, exec_lo
	s_and_not1_b32 s14, s55, exec_lo
	s_and_b32 s15, s16, exec_lo
	s_or_b32 s74, s3, s13
	s_or_b32 s55, s14, s15
	s_and_not1_b32 s3, s75, exec_lo
	s_and_b32 s13, s17, exec_lo
	s_and_not1_b32 s14, s62, exec_lo
	s_and_b32 s15, s18, exec_lo
	s_or_b32 s75, s3, s13
	s_or_b32 s62, s14, s15
.LBB0_12:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 0                           ; attention.py:0
	v_or_b32_e32 v52, s31, v116
	v_or_b32_e32 v53, s31, v140
	v_add_lshl_u32 v56, s19, v116, 1
	v_or_b32_e32 v54, s31, v141
	v_or_b32_e32 v55, s31, v142
	v_cmp_gt_i32_e32 vcc_lo, s51, v52
	v_or_b32_e32 v57, s31, v143
	v_add_nc_u32_e32 v62, 8, v56
	v_add_nc_u32_e32 v61, 4, v56
	v_or_b32_e32 v58, s31, v144
	v_cndmask_b32_e32 v52, 0x80000000, v56, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s51, v53
	v_or_b32_e32 v59, s31, v145
	v_or_b32_e32 v60, s31, v146
	v_cndmask_b32_e32 v53, 0x80000000, v61, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s51, v54
	v_cndmask_b32_e32 v54, 0x80000000, v62, vcc_lo
	v_add_nc_u32_e32 v62, 16, v56
	v_add_nc_u32_e32 v61, 12, v56
	v_cmp_gt_i32_e32 vcc_lo, s51, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v55, 0x80000000, v61, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s51, v57
	v_add_nc_u32_e32 v61, 20, v56
	v_dual_cndmask_b32 v62, 0x80000000, v62 :: v_dual_add_nc_u32 v57, 24, v56
	v_cmp_gt_i32_e32 vcc_lo, s51, v58
	v_cndmask_b32_e32 v61, 0x80000000, v61, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s51, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v63, 0x80000000, v57 :: v_dual_add_nc_u32 v56, 28, v56
	v_cmp_gt_i32_e32 vcc_lo, s51, v60
	v_cndmask_b32_e32 v60, 0x80000000, v56, vcc_lo
	s_clause 0x7
	buffer_load_u16 v59, v52, s[56:59], 0 offen
	buffer_load_u16 v58, v53, s[56:59], 0 offen
	buffer_load_u16 v57, v54, s[56:59], 0 offen
	buffer_load_u16 v56, v55, s[56:59], 0 offen
	buffer_load_u16 v55, v62, s[56:59], 0 offen
	buffer_load_u16 v54, v61, s[56:59], 0 offen
	buffer_load_u16 v53, v63, s[56:59], 0 offen
	buffer_load_u16 v52, v60, s[56:59], 0 offen
	.loc	1 747 17 is_stmt 1              ; attention.py:747:17
	s_and_not1_b32 vcc_lo, exec_lo, s30
	s_cbranch_vccnz .LBB0_9
; %bb.13:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e32 vcc_lo, v46, v167
	v_cmp_ge_i32_e64 s3, v46, v176
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s19, v46, v168
	v_cmp_le_i32_e64 s20, v46, v183
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s13, v46, v177
	v_cmp_ge_i32_e64 s14, v46, v178
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s21, v46, v184
	v_cmp_le_i32_e64 s24, v46, v185
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s15, v46, v179
	v_cmp_ge_i32_e64 s16, v46, v180
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s23, v46, v186
	v_cmp_le_i32_e64 s25, v46, v187
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s19, vcc_lo, s19
	s_and_b32 s3, s3, s20
	.loc	1 748 30 is_stmt 1              ; attention.py:748:30
	v_cmp_ge_i32_e64 s17, v46, v181
	v_cmp_ge_i32_e64 s18, v46, v182
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s22, v46, v188
	v_cmp_le_i32_e64 s26, v46, v189
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s13, s13, s21
	s_and_b32 s19, s19, s63
	s_and_b32 s14, s14, s24
	s_and_b32 s3, s3, s27
	s_and_b32 s15, s15, s23
	s_and_b32 s13, s13, s73
	s_and_b32 s16, s16, s25
	s_and_b32 s14, s14, s54
	s_and_not1_b32 s20, s63, exec_lo
	s_and_b32 s19, s19, exec_lo
	s_and_not1_b32 s21, s27, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s17, s17, s22
	s_and_b32 s15, s15, s74
	s_and_b32 s18, s18, s26
	s_and_b32 s16, s16, s55
	s_or_b32 s63, s20, s19
	s_or_b32 s27, s21, s3
	s_and_not1_b32 s3, s73, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_not1_b32 s19, s54, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_b32 s17, s17, s75
	s_and_b32 s18, s18, s62
	s_or_b32 s73, s3, s13
	s_or_b32 s54, s19, s14
	s_and_not1_b32 s3, s74, exec_lo
	s_and_b32 s13, s15, exec_lo
	s_and_not1_b32 s14, s55, exec_lo
	s_and_b32 s15, s16, exec_lo
	s_or_b32 s74, s3, s13
	s_or_b32 s55, s14, s15
	s_and_not1_b32 s3, s75, exec_lo
	s_and_b32 s13, s17, exec_lo
	s_and_not1_b32 s14, s62, exec_lo
	s_and_b32 s15, s18, exec_lo
	s_or_b32 s75, s3, s13
	s_or_b32 s62, s14, s15
	s_branch .LBB0_9
.LBB0_14:                               ; %Flow
	.loc	1 0 21                          ; attention.py:0:21
	v_mov_b32_e32 v33, v115
.LBB0_15:                               ; %._crit_edge
	.loc	1 707 13 is_stmt 1              ; attention.py:707:13
	v_lshlrev_b32_e32 v34, 4, v0
	v_lshrrev_b32_e32 v35, 1, v0
	v_lshlrev_b32_e32 v0, 2, v0
	v_lshrrev_b32_e32 v36, 3, v111
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v34, 0x70, v34
	v_and_b32_e32 v35, 4, v35
	v_and_b32_e32 v0, 0x80, v0
	s_barrier
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v64, 18, v33
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s33, s34, v33
	.loc	1 707 13                        ; attention.py:707:13
	v_add3_u32 v34, 0, v34, v35
	v_add_nc_u32_e32 v35, 0, v110
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v68.h, 0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s21, s34, v64
	.loc	1 707 13                        ; attention.py:707:13
	ds_store_b128 v35, v[74:77]
	ds_store_b128 v35, v[78:81] offset:128
	v_add3_u32 v0, v34, v0, v36
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 846 17                        ; attention.py:846:17
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s47, 0x31027000
	.loc	1 707 13                        ; attention.py:707:13
	ds_load_b32 v0, v0
	s_mov_b32 s46, 0x7ffffffe
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s21, s2, s21
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
	v_fma_f32 v57, -v38, v48, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
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
	v_or_b32_e32 v55, 1, v33
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v46, -v37, v41, 1.0
	v_mul_f32_e32 v34, v36, v54
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v56, 2, v33
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
	v_or_b32_e32 v57, 3, v33
	v_or_b32_e32 v58, 4, v33
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v40, -v42, v63, v43
	v_fma_f32 v42, -v44, v35, v52
	v_fma_f32 v43, -v45, v34, v36
	v_mul_f32_e32 v44, v39, v38
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v59, 5, v33
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
	v_or_b32_e32 v60, 6, v33
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
	v_or_b32_e32 v61, 7, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_fmac_f32 v36, v47, v36 :: v_dual_fmac_f32 v37, v44, v41
	v_fma_f32 v44, -v39, v42, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v51, v49
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v62, 16, v33
	v_or_b32_e32 v63, 17, v33
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v35, -v43, v37, v35
	v_div_scale_f32 v43, null, v0, v0, v11
	v_fmac_f32_e32 v42, v44, v42
	.loc	1 846 36                        ; attention.py:846:36
	v_bfe_u32 v65, v25, 16, 1
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
	.loc	1 846 36                        ; attention.py:846:36
	v_bfe_u32 v67, v27, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	v_cndmask_b32_e64 v30, 0, v30, s0
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 841 48 is_stmt 0              ; attention.py:841:48
	v_fma_f32 v47, -v43, v44, 1.0
	v_mul_f32_e32 v45, v40, v38
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	v_cndmask_b32_e64 v32, 0, v32, s0
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v44, v47, v44
	v_fma_f32 v34, -v48, v45, v40
	v_div_scale_f32 v47, s5, v11, v0, v11
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s31, s34, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v45, v34, v38
	v_div_scale_f32 v34, s4, v9, v0, v9
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s30, s34, v56
	v_cmp_gt_i32_e64 s29, s34, v57
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v37, -v48, v45, v40
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s27, s34, v58
	v_cmp_gt_i32_e64 s26, s34, v59
	v_cmp_gt_i32_e64 s25, s34, v60
	v_cmp_gt_i32_e64 s24, s34, v61
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
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s23, s34, v62
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
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s22, s34, v63
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v65, v25, v65, 0x7fff
	v_cmp_o_f32_e64 s35, v26, v26
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v37, -v49, v40, v37
	v_fmac_f32_e32 v34, v44, v35
	v_div_scale_f32 v44, null, v0, v0, v16
	v_fma_f32 v36, -v41, v43, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v37, v37, v51, v40
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v46, v44
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s36, v27, v27
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v43, v36, v43
	v_div_fixup_f32 v12, v37, v0, v12
	v_fma_f32 v37, -v38, v34, v42
	v_fma_f32 v42, -v39, v45, 1.0
	v_div_scale_f32 v36, s4, v14, v0, v14
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s27, s2, s27
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
	s_and_b32 s26, s2, s26
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v38, -v41, v40, v36
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s25, s2, s25
	s_and_b32 s24, s2, s24
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v48, v50, v48
	v_div_scale_f32 v50, s5, v2, v0, v2
	v_fmac_f32_e32 v40, v38, v43
	v_rcp_f32_e32 v38, v35
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s22, s2, s22
	s_and_b32 s23, s2, s23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
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
	v_cndmask_b32_e64 v39, 0, v9, s0
	v_cndmask_b32_e64 v40, 0, v10, s0
	v_cndmask_b32_e64 v41, 0, v11, s0
	v_cndmask_b32_e64 v42, 0, v12, s0
	v_cndmask_b32_e64 v43, 0, v13, s0
	v_cndmask_b32_e64 v44, 0, v14, s0
	v_cndmask_b32_e64 v45, 0, v15, s0
	v_cndmask_b32_e64 v46, 0, v16, s0
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
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v47, 0, v1, s0
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v1, v101, s34
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s20, s34, v21
	v_cmp_gt_i32_e64 s19, s34, v20
	v_cmp_gt_i32_e64 s18, s34, v19
	v_cmp_gt_i32_e64 s17, s34, v18
	v_cmp_gt_i32_e64 s16, s34, v17
	v_cmp_gt_i32_e64 s15, s34, v16
	v_cmp_gt_i32_e64 s14, s34, v15
	v_cmp_gt_i32_e64 s13, s34, v14
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
	v_cmp_o_f32_e64 s34, v25, v25
	v_add3_u32 v25, v26, v66, 0x7fff
	v_add3_u32 v26, v27, v67, 0x7fff
	v_bfe_u32 v27, v28, 16, 1
	v_bfe_u32 v66, v30, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v65.h, s34
	v_bfe_u32 v65, v29, 16, 1
	v_cmp_o_f32_e64 s34, v28, v28
	v_add3_u32 v27, v28, v27, 0x7fff
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s35
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s36
	v_add3_u32 v28, v29, v65, 0x7fff
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
	v_cndmask_b32_e64 v39, v28, v25, s28
	v_cndmask_b32_e64 v25, v25, v28, s28
	v_cndmask_b32_e64 v28, v27, v26, s28
	v_cndmask_b32_e64 v26, v26, v27, s28
	v_cndmask_b32_e64 v27, v23, v29, s28
	v_cndmask_b32_e64 v23, v29, v23, s28
	v_cndmask_b32_e64 v29, v22, v30, s28
	v_mov_b32_e32 v41, 0x7632
	v_cndmask_b32_e64 v22, v30, v22, s28
	v_cndmask_b32_e64 v30, v32, v24, s28
	v_cndmask_b32_e64 v24, v24, v32, s28
	v_cndmask_b32_e64 v32, 0x1054, v40, s28
	v_cndmask_b32_e64 v40, 0x3276, v41, s28
	s_mov_b32 s34, 0x76543210
	v_cndmask_b32_e64 v41, v34, v31, s28
	v_cndmask_b32_e64 v31, v31, v34, s28
	v_lshl_or_b32 v32, v32, 8, v32
	v_lshl_or_b32 v40, v40, 8, v40
	v_cndmask_b32_e64 v34, v37, v35, s28
	v_cndmask_b32_e64 v35, v35, v37, s28
	v_cndmask_b32_e64 v37, v38, v36, s28
	v_and_b32_e32 v32, 0x540054, v32
	v_and_b32_e32 v40, 0x760076, v40
	v_cndmask_b32_e64 v36, v36, v38, s28
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
	s_and_b32 s28, s2, s33
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v55, v1, v56, 1
	v_cndmask_b32_e64 v33, 0x80000000, v33, s28
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s28, s2, s31
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v25, v25, v39, v38
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e64 v54, 0x80000000, v54, s28
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s28, s2, s30
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
	v_cndmask_b32_e64 v55, 0x80000000, v55, s28
	buffer_store_b16 v40, v33, s[44:47], 0 offen
	v_add_lshl_u32 v33, v1, v57, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v68.l, v25.h
	.loc	1 846 17                        ; attention.py:846:17
	s_clause 0x1
	buffer_store_b16 v36, v54, s[44:47], 0 offen
	buffer_store_b16 v25, v55, s[44:47], 0 offen
	v_add_lshl_u32 v25, v1, v58, 1
	v_add_lshl_u32 v36, v1, v59, 1
	v_add_lshl_u32 v40, v1, v60, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 s28, s2, s29
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v38.l, v39.h
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_cndmask_b32_e64 v33, 0x80000000, v33, s28
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v38.h, v68.h
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v25, 0x80000000, v25, s27
	v_cndmask_b32_e64 v36, 0x80000000, v36, s26
	v_cndmask_b32_e64 v40, 0x80000000, v40, s25
	v_add_lshl_u32 v4, v1, v4, 1
	s_clause 0x1
	buffer_store_b16 v68, v33, s[44:47], 0 offen
	buffer_store_b16 v39, v25, s[44:47], 0 offen
	v_add_lshl_u32 v25, v1, v61, 1
	v_add_lshl_u32 v33, v1, v63, 1
	v_add_lshl_u32 v21, v1, v21, 1
	v_add_lshl_u32 v19, v1, v19, 1
	v_add_lshl_u32 v17, v1, v17, 1
	v_add_lshl_u32 v15, v1, v15, 1
	v_add_lshl_u32 v13, v1, v13, 1
	v_add_lshl_u32 v11, v1, v11, 1
	v_add_lshl_u32 v9, v1, v9, 1
	v_add_lshl_u32 v7, v1, v7, 1
	v_add_lshl_u32 v5, v1, v5, 1
	v_add_lshl_u32 v3, v1, v3, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b16_e32 v37.l, v26.h
	.loc	1 846 17                        ; attention.py:846:17
	s_clause 0x1
	buffer_store_b16 v38, v36, s[44:47], 0 offen
	buffer_store_b16 v26, v40, s[44:47], 0 offen
	v_add_lshl_u32 v26, v1, v62, 1
	v_add_lshl_u32 v36, v1, v64, 1
	v_add_lshl_u32 v20, v1, v20, 1
	v_add_lshl_u32 v18, v1, v18, 1
	v_add_lshl_u32 v16, v1, v16, 1
	v_add_lshl_u32 v14, v1, v14, 1
	v_add_lshl_u32 v12, v1, v12, 1
	v_add_lshl_u32 v10, v1, v10, 1
	v_add_lshl_u32 v8, v1, v8, 1
	v_add_lshl_u32 v6, v1, v6, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v2, v1, v2, 1
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 s20, s2, s20
	s_and_b32 s18, s2, s18
	s_and_b32 s16, s2, s16
	s_and_b32 s14, s2, s14
	s_and_b32 s12, s2, s12
	s_and_b32 s10, s2, s10
	s_and_b32 s5, s2, s5
	s_and_b32 s3, s2, s3
	s_and_b32 s0, s2, s0
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s8
	s_and_b32 s19, s2, s19
	s_and_b32 s17, s2, s17
	s_and_b32 s15, s2, s15
	s_and_b32 s13, s2, s13
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
	v_cndmask_b32_e64 v25, 0x80000000, v25, s24
	v_cndmask_b32_e64 v33, 0x80000000, v33, s22
	v_cndmask_b32_e64 v21, 0x80000000, v21, s20
	v_cndmask_b32_e64 v19, 0x80000000, v19, s18
	v_cndmask_b32_e64 v17, 0x80000000, v17, s16
	v_cndmask_b32_e64 v15, 0x80000000, v15, s14
	v_cndmask_b32_e64 v13, 0x80000000, v13, s12
	v_cndmask_b32_e64 v11, 0x80000000, v11, s10
	v_cndmask_b32_e64 v9, 0x80000000, v9, s5
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	v_cndmask_b32_e32 v1, 0x80000000, v3, vcc_lo
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s7
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v26, 0x80000000, v26, s23
	v_cndmask_b32_e64 v36, 0x80000000, v36, s21
	v_cndmask_b32_e64 v20, 0x80000000, v20, s19
	v_cndmask_b32_e64 v18, 0x80000000, v18, s17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s15
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
.Ltmp160:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 235
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_vgpr, 235
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.numbered_sgpr, 76
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17336
; TotalNumSgprs: 78
; NumVgprs: 235
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 29
; NumSGPRsForWavesPerEU: 78
; NumVGPRsForWavesPerEU: 235
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
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
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
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
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
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     78
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     235
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
