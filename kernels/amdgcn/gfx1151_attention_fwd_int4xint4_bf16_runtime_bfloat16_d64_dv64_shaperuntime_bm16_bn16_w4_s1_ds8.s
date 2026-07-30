	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b128 s[8:11], s[0:1], 0x80
	s_load_b32 s34, s[0:1], 0x68
	s_load_b128 s[20:23], s[0:1], 0x4c
	s_load_b32 s48, s[0:1], 0x60
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_and_b32_e32 v25, 31, v0
	v_lshrrev_b32_e32 v40, 5, v0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v5, 0x88, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v45, 15, v0
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v6, 0x110, v0
	v_xor_b32_e32 v7, 0x198, v0
	v_lshlrev_b32_e32 v41, 1, v0
	v_add_nc_u32_e32 v49, 0, v5
	v_add_nc_u32_e32 v48, 0, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v51, 0, v7
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s8
	s_bitcmp1_b32 s8, 8
	s_cselect_b32 s35, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[27:28], null, s48, v40, v[25:26]
	s_cselect_b32 s7, -1, 0
	.loc	1 609 32                        ; attention.py:609:32
	s_abs_i32 s25, s34
	.loc	1 559 27                        ; attention.py:559:27
	s_abs_i32 s5, s2
	.loc	1 609 32                        ; attention.py:609:32
	s_cvt_f32_u32 s4, s25
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s6, s2, s34
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s6, s6, 31
	.loc	1 609 32                        ; attention.py:609:32
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 584 26                        ; attention.py:584:26
	v_lshl_add_u32 v46, s48, 2, v27
	v_mad_u64_u32 v[28:29], null, s48, 12, v[27:28]
	v_lshl_add_u32 v47, s48, 3, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 609 32                        ; attention.py:609:32
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_cvt_u32_f32 s26, s4
	s_sub_i32 s4, 0, s25
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s4, s4, s26
	s_mul_hi_u32 s4, s26, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s26, s26, s4
	.loc	1 559 27                        ; attention.py:559:27
	s_mul_hi_u32 s4, s5, s26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s12, s4, s25
	s_sub_i32 s5, s5, s12
	s_add_i32 s12, s4, 1
	s_sub_i32 s13, s5, s25
	s_cmp_ge_u32 s5, s25
	s_cselect_b32 s4, s12, s4
	s_cselect_b32 s5, s13, s5
	s_add_i32 s12, s4, 1
	s_cmp_ge_u32 s5, s25
	s_cselect_b32 s4, s12, s4
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s5, s20
	.loc	1 566 23                        ; attention.py:566:23
	s_abs_i32 s14, s3
	s_cvt_f32_u32 s12, s5
	s_sub_i32 s13, 0, s5
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 566 23                        ; attention.py:566:23
	v_rcp_iflag_f32_e32 v1, s12
	.loc	1 559 27                        ; attention.py:559:27
	s_sub_i32 s4, s4, s6
	.loc	1 560 27                        ; attention.py:560:27
	s_mul_i32 s6, s4, s34
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s30, s4, 4
	.loc	1 560 27                        ; attention.py:560:27
	s_sub_i32 s33, s2, s6
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v5, s30, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 566 23                        ; attention.py:566:23
	v_readfirstlane_b32 s12, v1
	s_mul_f32 s12, s12, 0x4f7ffffe
	s_cvt_u32_f32 s12, s12
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s13, s13, s12
	s_mul_hi_u32 s13, s12, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s12, s12, s13
	s_mul_hi_u32 s12, s14, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s4, s12, s5
	s_sub_i32 s2, s14, s4
	s_add_i32 s4, s12, 1
	s_sub_i32 s6, s2, s5
	s_cmp_ge_u32 s2, s5
	.loc	1 583 26                        ; attention.py:583:26
	s_mul_i32 s14, s3, s22
	.loc	1 566 23                        ; attention.py:566:23
	s_cselect_b32 s4, s4, s12
	s_cselect_b32 s2, s6, s2
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s2, s5
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x0
	s_load_b64 s[12:13], s[0:1], 0x18
	s_cselect_b32 s24, s6, s4
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s6, s21
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e64 s4, s48, v25
	.loc	1 568 22                        ; attention.py:568:22
	s_cvt_f32_u32 s2, s6
	s_sub_i32 s15, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s2
	v_readfirstlane_b32 s2, v1
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v1, s30, v40
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_f32 s2, s2, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_2)
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v2, 4, v1
	v_or_b32_e32 v3, 8, v1
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e32 vcc_lo, s22, v1
	.loc	1 568 22                        ; attention.py:568:22
	s_cvt_u32_f32 s2, s2
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v4, 12, v1
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_i32 s15, s15, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s15, s2, s15
	s_add_i32 s2, s2, s15
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s15, s5, s2
	s_xor_b32 s2, s20, s21
	s_mul_i32 s27, s15, s6
	s_ashr_i32 s28, s2, 31
	s_sub_i32 s5, s5, s27
	s_add_i32 s27, s15, 1
	s_sub_i32 s29, s5, s6
	s_cmp_ge_u32 s5, s6
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, s22, v2
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s15, s27, s15
	s_cselect_b32 s5, s29, s5
	s_add_i32 s27, s15, 1
	s_cmp_ge_u32 s5, s6
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s22, v3
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s27, s27, s15
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s29, s14, s30
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 584 26                        ; attention.py:584:26
	s_mul_i32 s14, s29, s48
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s6, s22, v4
	.loc	1 584 26                        ; attention.py:584:26
	v_add_nc_u32_e32 v1, s14, v27
	v_add_nc_u32_e32 v2, s14, v46
	v_add_nc_u32_e32 v3, s14, v47
	v_add_nc_u32_e32 v4, s14, v28
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt lgkmcnt(0)
	s_and_b32 s17, s17, 0xffff
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s4, s2
	.loc	1 590 31                        ; attention.py:590:31
	v_add_lshl_u32 v8, s29, v45, 1
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s4, s5
	.loc	1 590 31                        ; attention.py:590:31
	s_mov_b32 s14, s18
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s4, s6
	.loc	1 590 31                        ; attention.py:590:31
	s_mov_b32 s15, s19
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x3
	buffer_load_u8 v1, v1, s[16:19], 0 offen
	buffer_load_u8 v2, v2, s[16:19], 0 offen
	buffer_load_u8 v3, v3, s[16:19], 0 offen
	buffer_load_u8 v4, v4, s[16:19], 0 offen
	.loc	1 592 22                        ; attention.py:592:22
	v_cmp_gt_i32_e32 vcc_lo, s22, v5
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v50, 0, v6
	.loc	1 590 31                        ; attention.py:590:31
	s_and_b32 s13, s13, 0xffff
	.loc	1 606 16                        ; attention.py:606:16
	s_add_i32 s5, s23, 15
	.loc	1 568 22                        ; attention.py:568:22
	s_xor_b32 s2, s27, s28
	.loc	1 590 31                        ; attention.py:590:31
	v_cndmask_b32_e32 v5, 0x80000000, v8, vcc_lo
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(3)
	ds_store_b8 v48, v1
	s_waitcnt vmcnt(2)
	ds_store_b8 v49, v2
	s_waitcnt vmcnt(1)
	ds_store_b8 v50, v3
	s_waitcnt vmcnt(0)
	ds_store_b8 v51, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 590 31                        ; attention.py:590:31
	buffer_load_u16 v2, v5, s[12:15], 0 offen
	.loc	1 606 15                        ; attention.py:606:15
	s_ashr_i32 s13, s5, 31
	.loc	1 585 26                        ; attention.py:585:26
	v_and_b32_e32 v1, 24, v41
	.loc	1 606 15                        ; attention.py:606:15
	s_lshr_b32 s13, s13, 28
	.loc	1 568 22                        ; attention.py:568:22
	s_sub_i32 s12, s2, s28
	.loc	1 606 15                        ; attention.py:606:15
	s_add_i32 s13, s5, s13
	.loc	1 569 19                        ; attention.py:569:19
	s_abs_i32 s6, s12
	.loc	1 585 26                        ; attention.py:585:26
	v_lshl_or_b32 v1, v45, 5, v1
	.loc	1 606 15                        ; attention.py:606:15
	s_ashr_i32 s5, s13, 4
	.loc	1 606 14 is_stmt 0              ; attention.py:606:14
	s_and_b32 s16, s13, -16
	.loc	1 609 33 is_stmt 1              ; attention.py:609:33
	s_add_i32 s14, s5, s34
	.loc	1 569 19                        ; attention.py:569:19
	s_cvt_f32_u32 s2, s6
	.loc	1 609 33                        ; attention.py:609:33
	s_add_i32 s14, s14, -1
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v3, 8, v1
	v_xor_b32_e32 v4, 16, v1
	.loc	1 609 32                        ; attention.py:609:32
	s_abs_i32 s15, s14
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v52, 0, v1
	v_xor_b32_e32 v1, 24, v1
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_hi_u32 s13, s15, s26
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v53, 0, v3
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_i32 s17, s13, s25
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v54, 0, v4
	v_add_nc_u32_e32 v55, 0, v1
	.loc	1 609 32                        ; attention.py:609:32
	s_xor_b32 s14, s14, s34
	s_sub_i32 s15, s15, s17
	s_ashr_i32 s14, s14, 31
	s_add_i32 s17, s13, 1
	s_sub_i32 s18, s15, s25
	.loc	1 585 26                        ; attention.py:585:26
	ds_load_b64 v[29:30], v52
	ds_load_b64 v[31:32], v53
	ds_load_b64 v[33:34], v54
	ds_load_b64 v[35:36], v55
	.loc	1 609 32                        ; attention.py:609:32
	s_cmp_ge_u32 s15, s25
	.loc	1 569 19                        ; attention.py:569:19
	v_rcp_iflag_f32_e32 v1, s2
	.loc	1 609 32                        ; attention.py:609:32
	s_cselect_b32 s13, s17, s13
	s_cselect_b32 s15, s18, s15
	s_add_i32 s17, s13, 1
	s_cmp_ge_u32 s15, s25
	s_cselect_b32 s2, s17, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s14
	s_sub_i32 s2, s2, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 610 18                        ; attention.py:610:18
	s_mul_i32 s13, s33, s2
	s_lshl_b32 s19, s13, 4
	.loc	1 569 19                        ; attention.py:569:19
	v_readfirstlane_b32 s13, v1
	.loc	1 611 33                        ; attention.py:611:33
	s_lshl4_add_u32 s2, s2, s19
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 611 18 is_stmt 0              ; attention.py:611:18
	s_min_i32 s49, s16, s2
	.loc	1 612 9 is_stmt 1               ; attention.py:612:9
	s_bfe_u32 s2, s8, 0x10008
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s10, s11
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s8, s11, s9
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s2, s30
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s8, s8, s30
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s2, 16
	.loc	1 613 25                        ; attention.py:613:25
	s_max_i32 s8, s8, 0
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s2, s23, s2
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s8, s8, 0x7ffffff0
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s2, s2, 15
	.loc	1 618 18                        ; attention.py:618:18
	s_max_i32 s19, s19, s8
	.loc	1 619 34                        ; attention.py:619:34
	s_ashr_i32 s14, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s14, s14, 28
	s_add_i32 s2, s2, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 619 33 is_stmt 0              ; attention.py:619:33
	s_and_b32 s2, s2, -16
	.loc	1 619 18                        ; attention.py:619:18
	s_min_i32 s49, s49, s2
.LBB0_2:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b32 s18, s[0:1], 0x64
	.loc	1 620 9 is_stmt 1               ; attention.py:620:9
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s2, s11, s30
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 16
	s_min_i32 s2, s23, s2
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
	s_min_i32 s49, s49, s2
.LBB0_4:
	.loc	1 572 22 is_stmt 1              ; attention.py:572:22
	v_and_b32_e32 v26, 63, v0
	v_and_b32_e32 v1, 0x60, v0
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_lt_i32 s19, s49
	.loc	1 778 24                        ; attention.py:778:24
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_i32_e64 s2, s18, v26
	v_lshrrev_b32_e32 v56, 3, v1
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc1 .LBB0_6
; %bb.5:                                ; %.._crit_edge_crit_edge
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_lshrrev_b32_e32 v9, 3, v1
	s_mov_b32 s8, 0
	s_branch .LBB0_7
.Ltmp2:
.LBB0_6:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr9
.LBB0_7:                                ; %Flow
	s_load_b64 s[16:17], s[0:1], 0x40
	v_and_b32_e32 v43, 0x70, v0
	v_and_b32_e32 v42, 64, v0
	v_lshlrev_b32_e32 v44, 5, v0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_12
; %bb.8:                                ; %.lr.ph
	s_xor_b32 s8, s3, s20
	s_mul_f32 s13, s13, 0x4f7ffffe
	s_ashr_i32 s8, s8, 31
	s_ashr_i32 s12, s12, 31
	s_xor_b32 s14, s24, s8
	s_cvt_u32_f32 s13, s13
	s_sub_i32 s8, s14, s8
	s_sub_i32 s14, 0, s6
	s_mul_i32 s15, s8, s20
	s_mul_i32 s14, s14, s13
	s_sub_i32 s31, s3, s15
	s_mul_hi_u32 s14, s13, s14
	s_abs_i32 s15, s31
	s_add_i32 s13, s13, s14
	s_ashr_i32 s14, s31, 31
	s_mul_hi_u32 s13, s15, s13
	.loc	1 569 19 is_stmt 1              ; attention.py:569:19
	s_xor_b32 s36, s14, s12
	s_mul_i32 s20, s13, s6
	s_add_i32 s14, s13, 1
	s_sub_i32 s12, s15, s20
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v3, 4, v43
	.loc	1 569 19                        ; attention.py:569:19
	s_sub_i32 s15, s12, s6
	s_cmp_ge_u32 s12, s6
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v61.h, v2.l
	.loc	1 569 19                        ; attention.py:569:19
	s_cselect_b32 s20, s14, s13
	s_cselect_b32 s12, s15, s12
	s_add_i32 s28, s20, 1
	s_cmp_ge_u32 s12, s6
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v4, s30, v3
	.loc	1 569 19                        ; attention.py:569:19
	s_cselect_b32 s6, s28, s20
	s_clause 0x4
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b128 s[40:43], s[0:1], 0x6c
	s_load_b32 s20, s[0:1], 0x7c
	s_load_b128 s[12:15], s[0:1], 0x8
	s_load_b128 s[24:27], s[0:1], 0x20
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v5, 8, v4
	.loc	1 570 31 is_stmt 0              ; attention.py:570:31
	v_and_b32_e32 v6, 16, v0
	v_mov_b16_e32 v61.l, 0
	v_bfe_i32 v8, v0, 3, 1
	v_dual_mov_b32 v96, 0xff800000 :: v_dual_and_b32 v9, 14, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 30 is_stmt 1              ; attention.py:732:30
	v_dual_mov_b32 v73, v61 :: v_dual_add_nc_u32 v60, s11, v5
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s1, s22, v5
	v_lshrrev_b32_e32 v5, 4, v1
	v_lshlrev_b32_e32 v10, 2, v6
	v_lshrrev_b32_e32 v11, 1, v0
	v_and_b32_e32 v8, 0x84, v8
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v59, s11, v4
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s0, s22, v4
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mov_b32 v75, v61 :: v_dual_add_nc_u32 v4, 0, v1
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v2, s43, v3
	.loc	1 771 51                        ; attention.py:771:51
	v_lshrrev_b32_e32 v57, 6, v42
	.loc	1 569 19                        ; attention.py:569:19
	s_xor_b32 s6, s6, s36
	.loc	1 710 33                        ; attention.py:710:33
	s_mul_i32 s21, s8, s21
	.loc	1 569 19                        ; attention.py:569:19
	s_sub_i32 s6, s6, s36
	v_lshl_add_u32 v94, v42, 2, 0
	.loc	1 732 30                        ; attention.py:732:30
	v_mov_b32_e32 v79, v61
	.loc	1 710 33                        ; attention.py:710:33
	s_add_i32 s52, s6, s21
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[37:38], null, s20, v45, v[2:3]
	v_and_b32_e32 v2, 0xbc, v41
	.loc	1 732 30                        ; attention.py:732:30
	v_mov_b32_e32 v78, v61
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[38:39], null, s18, v57, v[26:27]
	.loc	1 772 39                        ; attention.py:772:39
	s_lshl_b32 s50, s5, 3
	v_xor_b32_e32 v2, v2, v5
	v_and_b32_e32 v5, 0x1a0, v44
	.loc	1 710 32                        ; attention.py:710:32
	s_mul_i32 s21, s52, s23
	.loc	1 773 30                        ; attention.py:773:30
	s_mul_i32 s51, s52, s50
	.loc	1 794 21                        ; attention.py:794:21
	s_mul_i32 s52, s52, s5
	.loc	1 742 27                        ; attention.py:742:27
	s_mul_f32 s22, s40, 0x3fb8aa3b
	v_or3_b32 v68, v9, v5, v10
	v_and_or_b32 v5, v11, 3, v8
	v_mul_u32_u24_e32 v8, 0x42, v9
	v_mov_b32_e32 v9, 0x5410
	v_cmp_eq_u32_e32 vcc_lo, 0, v6
	v_dual_mov_b32 v6, 0x7632 :: v_dual_and_b32 v3, 1, v0
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mov_b32 v76, v61 :: v_dual_mov_b32 v99, 0xff800000
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x1054, v9, vcc_lo
	v_dual_cndmask_b32 v6, 0x3276, v6 :: v_dual_lshlrev_b32 v7, 6, v3
	v_xor_b32_e32 v18, 4, v68
	.loc	1 752 25                        ; attention.py:752:25
	s_mul_i32 s30, s30, s43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v9, v9, 8, v9
	v_lshl_or_b32 v6, v6, 8, v6
	v_or_b32_e32 v67, v2, v7
	v_and_b32_e32 v2, 60, v41
	.loc	1 753 27                        ; attention.py:753:27
	s_mul_i32 s5, s8, s41
	.loc	1 570 31                        ; attention.py:570:31
	v_bfe_u32 v58, v0, 4, 1
	v_and_b32_e32 v6, 0x760076, v6
	v_xor_b32_e32 v17, 0x108, v67
	v_lshl_or_b32 v1, v1, 2, v2
	v_or3_b32 v69, v40, v7, v2
	v_subrev_nc_u32_e32 v62, s9, v59
	v_subrev_nc_u32_e32 v63, s9, v60
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mov_b32 v77, v61 :: v_dual_add_nc_u32 v64, s10, v59
	v_xor_b32_e32 v1, v1, v56
	v_dual_mov_b32 v74, v61 :: v_dual_add_nc_u32 v65, s10, v60
	.loc	1 707 13                        ; attention.py:707:13
	v_lshl_add_u32 v66, s43, 3, v37
	v_add_nc_u32_e32 v80, 0, v17
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b32_e32 v7, v1, v7
	v_and_b32_e32 v1, 0x540054, v9
	v_mov_b32_e32 v9, 0
	v_lshlrev_b32_e32 v3, 5, v3
	v_lshl_or_b32 v6, v6, 4, v6
	v_lshlrev_b32_e32 v95, 1, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v12, v9 :: v_dual_add_nc_u32 v93, 0, v7
	v_or3_b32 v70, v5, v3, v10
	v_add3_u32 v71, v8, v3, v10
	v_lshl_or_b32 v1, v1, 4, v1
	v_xor_b32_e32 v3, 8, v68
	v_xor_b32_e32 v5, 12, v68
	v_xor_b32_e32 v8, 0x84, v69
	v_xor_b32_e32 v19, 4, v70
	v_xor_b32_e32 v20, 4, v71
	v_xor_b32_e32 v21, 8, v71
	v_xor_b32_e32 v22, 12, v71
	v_xor_b32_e32 v2, 16, v71
	v_xor_b32_e32 v23, 20, v71
	v_xor_b32_e32 v24, 24, v71
	v_xor_b32_e32 v92, 28, v71
	v_dual_mov_b32 v14, v9 :: v_dual_and_b32 v39, 0x5040504, v1
	v_dual_mov_b32 v11, v9 :: v_dual_and_b32 v72, 0x7060706, v6
	v_dual_mov_b32 v13, v9 :: v_dual_lshlrev_b32 v6, 1, v26
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v10, v9
	v_mov_b32_e32 v15, v9
	v_dual_mov_b32 v16, v9 :: v_dual_add_nc_u32 v81, 0, v18
	v_add_nc_u32_e32 v82, 0, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v3, v1
	v_add_nc_u32_e32 v83, 0, v5
	v_dual_mov_b32 v5, v1 :: v_dual_add_nc_u32 v84, 0, v8
	v_add_nc_u32_e32 v85, 0, v19
	v_dual_mov_b32 v7, v1 :: v_dual_add_nc_u32 v86, 0, v20
	v_dual_mov_b32 v8, v1 :: v_dual_add_nc_u32 v87, 0, v21
	v_dual_mov_b32 v97, v1 :: v_dual_add_nc_u32 v88, 0, v22
	v_dual_mov_b32 v100, 0xff800000 :: v_dual_add_nc_u32 v89, 0, v2
	v_add_nc_u32_e32 v90, 0, v23
	v_add_nc_u32_e32 v91, 0, v24
	v_add_nc_u32_e32 v92, 0, v92
	v_add_nc_u32_e32 v94, v94, v6
	v_dual_mov_b32 v2, v1 :: v_dual_add_nc_u32 v95, v4, v95
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v6, v1
	.loc	1 754 27                        ; attention.py:754:27
	s_mul_i32 s31, s31, s42
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_add_i32 s54, s5, s30
	s_and_b32 s25, s25, 0xffff
	s_xor_b32 s53, s7, -1
	s_add_i32 s54, s54, s31
	s_and_b32 s29, s29, 0xffff
	s_lshl_b32 s55, s18, 1
	s_lshl_b32 s56, s18, 2
	s_mul_i32 s57, s18, 6
	s_and_b32 s45, s15, 0xffff
	s_and_b32 s37, s27, 0xffff
	s_mov_b32 s36, s26
	.loc	1 742 17                        ; attention.py:742:17
	s_mov_b32 s58, s22
	s_mov_b32 s59, s22
	s_mov_b32 s60, s22
	s_mov_b32 s61, s22
	s_mov_b32 s62, s22
	s_mov_b32 s63, s22
	s_mov_b32 s64, s22
	s_mov_b32 s40, s12
	s_mov_b32 s41, s13
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b32 s65, 0x76543210
	s_mov_b32 s26, s38
	s_mov_b32 s27, s39
	s_mov_b32 s30, s38
	s_mov_b32 s31, s39
	s_mov_b32 s44, s14
	s_mov_b32 s46, s38
	s_mov_b32 s47, s39
                                        ; implicit-def: $sgpr66
                                        ; implicit-def: $sgpr67
	s_branch .LBB0_10
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 785 30                        ; attention.py:785:30
	v_mov_b16_e32 v98.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v17, v17
	.loc	1 727 37                        ; attention.py:727:37
	s_waitcnt vmcnt(7)
	v_mov_b16_e32 v98.h, v108.l
	v_mov_b16_e32 v108.l, v98.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v108.h, v107.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v103.h, v102.l
	v_mov_b16_e32 v102.l, v98.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v102.h, v101.l
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v19, v19
	v_mul_f32_e32 v17, v61, v17
	v_dual_mul_f32 v18, v73, v18 :: v_dual_mul_f32 v23, v78, v23
	v_mul_f32_e32 v24, v79, v24
	.loc	1 752 25                        ; attention.py:752:25
	s_mul_i32 s5, s19, s20
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e32 v104.h, v103.l
	.loc	1 752 25                        ; attention.py:752:25
	s_add_i32 s5, s54, s5
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e32 v103.l, v98.l
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v19, v74, v19 :: v_dual_mul_f32 v20, v75, v20
	v_dual_mul_f32 v24, v24, v102 :: v_dual_mul_f32 v101, v18, v108
	v_mul_f32_e32 v102, v17, v98
	.loc	1 761 36                        ; attention.py:761:36
	v_add_lshl_u32 v17, s5, v37, 1
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v21, v21
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e32 v107.l, v98.l
	v_mov_b16_e32 v107.h, v106.l
	.loc	1 761 36                        ; attention.py:761:36
	v_cndmask_b32_e64 v17, 0x80000000, v17, s67
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e32 v106.l, v98.l
	v_mov_b16_e32 v106.h, v105.l
	v_mov_b16_e32 v105.l, v98.l
	v_mov_b16_e32 v105.h, v104.l
	.loc	1 761 36                        ; attention.py:761:36
	buffer_load_u16 v17, v17, s[28:31], 0 offen
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e32 v104.l, v98.l
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v21, v76, v21 :: v_dual_mul_f32 v22, v77, v22
	.loc	1 762 35                        ; attention.py:762:35
	v_add_nc_u32_e32 v18, 0, v67
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v23, v23, v103 :: v_dual_mul_f32 v20, v20, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v19, v19, v107 :: v_dual_mul_f32 v22, v22, v104
	v_mul_f32_e32 v21, v21, v105
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s13, 0xff800000, v99
	.loc	1 763 25                        ; attention.py:763:25
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v96, v96, v96
	.loc	1 761 36                        ; attention.py:761:36
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v98.h, 0xff80, v17.l, s67
	v_add_lshl_u32 v17, s5, v66, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v98
	.loc	1 761 36                        ; attention.py:761:36
	v_cndmask_b32_e64 v17, 0x80000000, v17, s66
	.loc	1 763 25                        ; attention.py:763:25
	s_and_b32 s12, s67, vcc_lo
	.loc	1 761 36                        ; attention.py:761:36
	buffer_load_u16 v17, v17, s[28:31], 0 offen
	.loc	1 762 35                        ; attention.py:762:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 761 36                        ; attention.py:761:36
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v17.h, 0xff80, v17.l, s66
	.loc	1 762 35                        ; attention.py:762:35
	ds_store_b16_d16_hi v18, v98
	ds_store_b16_d16_hi v80, v17
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v18, 0, v68
	ds_load_u16 v103, v83
	.loc	1 761 36                        ; attention.py:761:36
	ds_load_u16 v104, v83 offset:16
	.loc	1 762 35                        ; attention.py:762:35
	ds_load_u16 v105, v82
	.loc	1 761 36                        ; attention.py:761:36
	ds_load_u16 v106, v82 offset:16
	.loc	1 762 35                        ; attention.py:762:35
	ds_load_u16 v107, v81
	.loc	1 761 36                        ; attention.py:761:36
	ds_load_u16 v108, v81 offset:16
	.loc	1 762 35                        ; attention.py:762:35
	ds_load_u16 v109, v18
	.loc	1 761 36                        ; attention.py:761:36
	ds_load_u16 v110, v18 offset:16
	v_mov_b16_e32 v17.l, v98.l
	.loc	1 763 25                        ; attention.py:763:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 763 34 is_stmt 0              ; attention.py:763:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v17
	.loc	1 763 25                        ; attention.py:763:25
	v_cndmask_b32_e64 v17, 0, 1, s12
	s_and_b32 s5, s66, s5
	v_cndmask_b32_e64 v18, 0, 1, s5
	.loc	1 761 36 is_stmt 1              ; attention.py:761:36
	v_lshlrev_b32_e32 v104, 16, v104
	.loc	1 763 25                        ; attention.py:763:25
	v_add_nc_u32_e32 v111, 0, v69
	.loc	1 761 36                        ; attention.py:761:36
	v_lshlrev_b32_e32 v106, 16, v106
	v_lshlrev_b32_e32 v108, 16, v108
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 762 35                        ; attention.py:762:35
	v_mul_f32_e32 v104, 0x3fb8aa3b, v104
	.loc	1 763 25                        ; attention.py:763:25
	ds_store_b8 v111, v17
	v_mov_b16_e32 v17.l, v18.l
	.loc	1 762 35                        ; attention.py:762:35
	v_dual_mul_f32 v108, 0x3fb8aa3b, v108 :: v_dual_add_nc_u32 v111, 0, v70
	v_mul_f32_e32 v106, 0x3fb8aa3b, v106
	.loc	1 762 25 is_stmt 0              ; attention.py:762:25
	v_fmac_f32_e32 v104, s64, v24
	.loc	1 763 25 is_stmt 1              ; attention.py:763:25
	ds_store_b8 v84, v17
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v17, v111
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v17, v111 offset:8
	ds_load_u8_d16 v18, v111 offset:16
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v18, v111 offset:24
	.loc	1 762 25                        ; attention.py:762:25
	v_fmac_f32_e32 v106, s63, v23
	v_fmac_f32_e32 v108, s62, v22
	.loc	1 763 25                        ; attention.py:763:25
	v_and_b16 v17.l, 1, v17.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s10, 1, v17.l
	v_and_b16 v17.l, 1, v17.h
	v_cmp_eq_u16_e64 s8, 1, v17.l
	s_waitcnt lgkmcnt(0)
	v_and_b16 v17.l, 1, v18.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s6, 1, v17.l
	v_and_b16 v17.l, 1, v18.h
	v_cmp_eq_u16_e32 vcc_lo, 1, v17.l
	ds_load_u8_d16 v17, v85
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v17, v85 offset:8
	ds_load_u8_d16 v18, v85 offset:16
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v18, v85 offset:24
	.loc	1 764 26                        ; attention.py:764:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 763 25                        ; attention.py:763:25
	v_and_b16 v17.l, 1, v17.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s11, 1, v17.l
	v_and_b16 v17.l, 1, v17.h
	v_cmp_eq_u16_e64 s9, 1, v17.l
	v_and_b16 v17.l, 1, v18.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s7, 1, v17.l
	v_and_b16 v17.l, 1, v18.h
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v22, 0xff800000, v108, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 763 25                        ; attention.py:763:25
	v_cmp_eq_u16_e64 s5, 1, v17.l
	.loc	1 761 36                        ; attention.py:761:36
	v_lshlrev_b32_e32 v17, 16, v109
	v_lshlrev_b32_e32 v18, 16, v107
	v_lshlrev_b32_e32 v107, 16, v110
	.loc	1 762 35                        ; attention.py:762:35
	v_mul_f32_e32 v17, 0x3fb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v18, 0x3fb8aa3b, v18 :: v_dual_lshlrev_b32 v105, 16, v105
	.loc	1 761 36                        ; attention.py:761:36
	v_lshlrev_b32_e32 v103, 16, v103
	.loc	1 762 35                        ; attention.py:762:35
	v_mul_f32_e32 v107, 0x3fb8aa3b, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 762 25 is_stmt 0              ; attention.py:762:25
	v_fmac_f32_e32 v17, s22, v102
	.loc	1 762 35                        ; attention.py:762:35
	v_mul_f32_e32 v105, 0x3fb8aa3b, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 762 25                        ; attention.py:762:25
	v_dual_fmac_f32 v18, s58, v101 :: v_dual_mul_f32 v103, 0x3fb8aa3b, v103
	v_fmac_f32_e32 v107, s61, v21
	.loc	1 764 26 is_stmt 1              ; attention.py:764:26
	v_cndmask_b32_e32 v21, 0xff800000, v106, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 762 25                        ; attention.py:762:25
	v_fmac_f32_e32 v105, s59, v19
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v102, 0xff800000, v18, s11
	.loc	1 762 25                        ; attention.py:762:25
	v_fmac_f32_e32 v103, s60, v20
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v23, 0xff800000, v107, s6
	v_cndmask_b32_e64 v20, 0xff800000, v104, s5
	v_cndmask_b32_e64 v101, 0xff800000, v105, s8
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v24, 0xff800000, v103, s9
	v_cndmask_b32_e64 v103, 0xff800000, v17, s10
	v_add_nc_u32_e32 v17, 0, v71
	ds_store_b32 v17, v103
	ds_store_b32 v86, v102
	ds_store_b32 v87, v101
	ds_store_b32 v88, v24
	ds_store_b32 v89, v23
	ds_store_b32 v90, v22
	ds_store_b32 v91, v21
	ds_store_b32 v92, v20
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v104, v93
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v19, v24, v23, v22
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v17, v104
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v18, v104, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v17, v17, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v17, v18, v17
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v18, v18, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v17, v17, v18
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v18, v18, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v17, v17, v18
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v18, v18, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v17, v17, v18
	v_max3_f32 v18, v103, v102, v101
	v_dual_max_f32 v105, v21, v20 :: v_dual_max_f32 v96, v96, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v18, v18, v19, v105
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_permlanex16_b32 v19, v18, s65, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp15:
	.loc	1 766 24                        ; attention.py:766:24
	v_max3_f32 v18, v99, v18, v19
	v_max_f32_e32 v19, v100, v100
	.loc	1 768 62                        ; attention.py:768:62
	v_dual_sub_f32 v24, v24, v18 :: v_dual_max_f32 v17, v19, v17
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v19, v99, v18
	.loc	1 768 62                        ; attention.py:768:62
	v_dual_sub_f32 v99, v104, v96 :: v_dual_sub_f32 v22, v22, v18
	v_sub_f32_e32 v20, v20, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v105, v100, v17
	.loc	1 767 61 is_stmt 0              ; attention.py:767:61
	v_exp_f32_e32 v19, v19
	.loc	1 768 62 is_stmt 1              ; attention.py:768:62
	v_sub_f32_e32 v101, v101, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v105, v105
	.loc	1 767 25 is_stmt 0              ; attention.py:767:25
	v_cndmask_b32_e64 v110, 0, v19, s13
	v_cmp_neq_f32_e64 s13, 0xff800000, v100
	.loc	1 768 62 is_stmt 1              ; attention.py:768:62
	v_sub_f32_e32 v100, v103, v18
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v103, v99
	v_exp_f32_e32 v99, v101
	.loc	1 815 23 is_stmt 1              ; attention.py:815:23
	v_mul_f32_e32 v1, v1, v110
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v19, 0, v105, s13
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v104, v100
	v_exp_f32_e32 v100, v24
	v_exp_f32_e32 v24, v22
	v_exp_f32_e32 v22, v20
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v3, v3, v110
	v_mul_f32_e32 v5, v5, v110
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v20, 0, v103, s12
	.loc	1 768 62 is_stmt 0              ; attention.py:768:62
	v_sub_f32_e32 v102, v102, v18
	.loc	1 771 36 is_stmt 1              ; attention.py:771:36
	s_lshr_b32 s12, s19, 31
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v7, v7, v110
	.loc	1 771 36                        ; attention.py:771:36
	s_add_i32 s12, s19, s12
.Ltmp16:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v101, v20
.Ltmp17:
	.loc	1 771 36                        ; attention.py:771:36
	s_ashr_i32 s12, s12, 1
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v105, v102
	.loc	1 771 36                        ; attention.py:771:36
	v_add_nc_u32_e32 v103, s12, v57
	.loc	1 774 30                        ; attention.py:774:30
	s_add_i32 s12, s12, s51
.Ltmp18:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v101, v101 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp19:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v100, 0, v100, s9
	v_cndmask_b32_e64 v99, 0, v99, s8
	v_cndmask_b32_e64 v24, 0, v24, s7
	v_cndmask_b32_e64 v22, 0, v22, s5
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v20, v20, v101
.Ltmp21:
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s8, v100, v100
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v2, v2, v110
	v_mul_f32_e32 v4, v4, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v6, v6, v110 :: v_dual_mov_b32 v101, v20
	v_mul_f32_e32 v8, v8, v110
.Ltmp22:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v101, v101 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v20, v20, v101
.Ltmp24:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v101, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v101, v101 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v20, v20, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v101, v20
	v_mov_b32_dpp v101, v101 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v20, v20, v101
	v_mad_u64_u32 v[101:102], null, s12, s18, v[38:39]
.Ltmp28:
	.loc	1 777 27                        ; attention.py:777:27
	v_cmp_gt_i32_e64 s12, s50, v103
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v23, v23, v18
	v_sub_f32_e32 v21, v21, v18
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v20, v97, v19
	.loc	1 777 26                        ; attention.py:777:26
	s_and_b32 s12, s2, s12
	v_add_nc_u32_e32 v102, s55, v101
	v_add_nc_u32_e32 v106, s56, v101
	v_add_nc_u32_e32 v107, s57, v101
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v101, 0x80000000, v101, s12
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v23, v23
	v_exp_f32_e32 v21, v21
	v_mov_b32_e32 v97, v20
	.loc	1 775 32                        ; attention.py:775:32
	buffer_load_u8 v108, v101, s[44:47], 0 offen
	v_cndmask_b32_e64 v101, 0x80000000, v102, s12
	buffer_load_u8 v109, v101, s[44:47], 0 offen
	v_cndmask_b32_e64 v101, 0x80000000, v106, s12
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v23, 0, v23, s6
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s6, v24, v24
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e32 v21, 0, v21, vcc_lo
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	.loc	1 775 32                        ; attention.py:775:32
	buffer_load_u8 v106, v101, s[44:47], 0 offen
	v_cndmask_b32_e64 v101, 0x80000000, v107, s12
	buffer_load_u8 v107, v101, s[44:47], 0 offen
	.loc	1 771 36                        ; attention.py:771:36
	v_lshlrev_b32_e32 v101, 1, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 782 31                        ; attention.py:782:31
	v_or_b32_e32 v102, 1, v101
	v_add_nc_u32_e32 v103, 5, v101
	v_add_nc_u32_e32 v111, 9, v101
	v_add_nc_u32_e32 v101, 13, v101
	.loc	1 782 30 is_stmt 0              ; attention.py:782:30
	v_cmp_gt_i32_e64 s12, s23, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s13, s23, v103
	v_cmp_gt_i32_e64 s14, s23, v111
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_i32_e64 s15, s23, v101
	.loc	1 783 76 is_stmt 1              ; attention.py:783:76
	s_waitcnt vmcnt(3)
	v_and_b16 v98.h, v108.l, 15
	.loc	1 784 29                        ; attention.py:784:29
	v_and_b32_e32 v103, 15, v108
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v108.l, 4, v108.l
	.loc	1 785 30 is_stmt 0              ; attention.py:785:30
	v_mov_b16_e32 v108.h, v98.l
	.loc	1 783 76 is_stmt 1              ; attention.py:783:76
	s_waitcnt vmcnt(2)
	v_and_b16 v101.l, v109.l, 15
	.loc	1 784 29                        ; attention.py:784:29
	v_and_b32_e32 v111, 15, v109
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v109.l, 4, v109.l
	.loc	1 785 30 is_stmt 0              ; attention.py:785:30
	v_mov_b16_e32 v109.h, v98.l
	.loc	1 783 32 is_stmt 1              ; attention.py:783:32
	v_cndmask_b32_e64 v108, 0, v108, s12
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s12, 7, v98.h
	.loc	1 783 76                        ; attention.py:783:76
	s_waitcnt vmcnt(1)
	v_and_b16 v101.h, v106.l, 15
	.loc	1 784 29                        ; attention.py:784:29
	v_and_b32_e32 v112, 15, v106
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v106.l, 4, v106.l
	.loc	1 785 30 is_stmt 0              ; attention.py:785:30
	v_mov_b16_e32 v106.h, v98.l
	.loc	1 783 32 is_stmt 1              ; attention.py:783:32
	v_cndmask_b32_e64 v109, 0, v109, s13
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s13, 7, v101.l
	.loc	1 786 54 is_stmt 0              ; attention.py:786:54
	v_or_b32_e32 v114, -16, v112
	.loc	1 783 76 is_stmt 1              ; attention.py:783:76
	s_waitcnt vmcnt(0)
	v_and_b16 v102.l, v107.l, 15
	.loc	1 783 32 is_stmt 0              ; attention.py:783:32
	v_cndmask_b32_e64 v106, 0, v106, s14
	.loc	1 786 38 is_stmt 1              ; attention.py:786:38
	v_cmp_lt_u16_e64 s14, 7, v101.h
	.loc	1 786 54 is_stmt 0              ; attention.py:786:54
	v_or_b32_e32 v101, -16, v103
	.loc	1 784 29 is_stmt 1              ; attention.py:784:29
	v_and_b32_e32 v113, 15, v107
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v107.l, 4, v107.l
	.loc	1 785 30 is_stmt 0              ; attention.py:785:30
	v_mov_b16_e32 v107.h, v98.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 786 29 is_stmt 1              ; attention.py:786:29
	v_cndmask_b32_e64 v101, v103, v101, s12
	v_cndmask_b32_e64 v103, v112, v114, s14
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_lt_u32_e64 s12, 7, v108
	.loc	1 787 56 is_stmt 0              ; attention.py:787:56
	v_or_b32_e32 v112, -16, v108
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_lt_u32_e64 s14, 7, v106
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b32_e32 v114, -16, v106
	.loc	1 783 32 is_stmt 1              ; attention.py:783:32
	v_cndmask_b32_e64 v107, 0, v107, s15
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s15, 7, v102.l
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b32_e64 v108, v108, v112, s12
	.loc	1 771 36                        ; attention.py:771:36
	s_ashr_i32 s12, s19, 31
	.loc	1 786 54                        ; attention.py:786:54
	v_or_b32_e32 v102, -16, v111
	.loc	1 798 53                        ; attention.py:798:53
	s_lshr_b32 s12, s12, 28
	.loc	1 786 54                        ; attention.py:786:54
	v_or_b32_e32 v115, -16, v113
	.loc	1 798 53                        ; attention.py:798:53
	s_add_i32 s12, s19, s12
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b32_e64 v106, v106, v114, s14
	.loc	1 798 53                        ; attention.py:798:53
	s_ashr_i32 s12, s12, 4
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v101, v101
	.loc	1 798 25                        ; attention.py:798:25
	s_add_i32 s12, s12, s52
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b32_e64 v102, v111, v102, s13
	.loc	1 798 25                        ; attention.py:798:25
	s_mul_i32 s12, s12, s18
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b32_e64 v111, v113, v115, s15
	.loc	1 797 41                        ; attention.py:797:41
	v_add_lshl_u32 v112, s12, v26, 1
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_lt_u32_e64 s13, 7, v109
	.loc	1 787 56 is_stmt 0              ; attention.py:787:56
	v_or_b32_e32 v113, -16, v109
	.loc	1 814 31 is_stmt 1              ; attention.py:814:31
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v106, v106
	.loc	1 797 41                        ; attention.py:797:41
	v_cndmask_b32_e64 v112, 0x80000000, v112, s2
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v102, v102
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b32_e64 v109, v109, v113, s13
	.loc	1 787 39 is_stmt 0              ; attention.py:787:39
	v_cmp_lt_u32_e64 s15, 7, v107
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b32_e32 v115, -16, v107
	.loc	1 797 41 is_stmt 1              ; attention.py:797:41
	buffer_load_u16 v112, v112, s[36:39], 0 offen
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v111, v111
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b32_e64 v107, v107, v115, s15
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s19, s19, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v107, v107
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_lt_i32 s19, s49
	.loc	1 797 41                        ; attention.py:797:41
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v112, 16, v112
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v101, v101, v112
	v_mul_f32_e32 v108, v108, v112
	v_dual_mul_f32 v113, v112, v106 :: v_dual_mul_f32 v102, v102, v112
	v_mul_f32_e32 v109, v109, v112
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_bfe_u32 v106, v101, 16, 1
	v_cmp_o_f32_e64 s12, v101, v101
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v103, v103, v112
	v_mul_f32_e32 v111, v112, v111
	v_mul_f32_e32 v112, v112, v107
	.loc	1 814 30                        ; attention.py:814:30
	v_add3_u32 v106, v101, v106, 0x7fff
	v_bfe_u32 v101, v108, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v106.l, 0x7fff, v106.h, s12
	v_add3_u32 v101, v108, v101, 0x7fff
	v_cmp_o_f32_e64 s12, v108, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v106.h, 0x7fff, v101.h, s12
	v_bfe_u32 v101, v102, 16, 1
	v_cmp_o_f32_e64 s12, v102, v102
	v_add3_u32 v101, v102, v101, 0x7fff
	.loc	1 768 33 is_stmt 1              ; attention.py:768:33
	v_cndmask_b32_e64 v102, 0, v105, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v107.l, 0x7fff, v101.h, s12
	v_bfe_u32 v101, v109, 16, 1
	v_cmp_o_f32_e64 s12, v109, v109
	v_add3_u32 v101, v109, v101, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v107.h, 0x7fff, v101.h, s12
	v_bfe_u32 v101, v103, 16, 1
	v_cmp_o_f32_e64 s12, v103, v103
	v_add3_u32 v101, v103, v101, 0x7fff
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v103.l, v102.h
	v_mov_b16_e32 v103.h, v98.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v108.l, 0x7fff, v101.h, s12
	v_bfe_u32 v101, v113, 16, 1
	v_cmp_o_f32_e64 s12, v113, v113
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v103, 1, v103
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 814 30                        ; attention.py:814:30
	v_add3_u32 v101, v113, v101, 0x7fff
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v103, v102, v103, 0x7fff
	v_mov_b16_e32 v103.l, v99.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v108.h, 0x7fff, v101.h, s12
	v_bfe_u32 v101, v111, 16, 1
	v_cmp_o_f32_e64 s12, v111, v111
	v_add3_u32 v101, v111, v101, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v109.l, 0x7fff, v101.h, s12
	v_bfe_u32 v101, v112, 16, 1
	v_cmp_o_f32_e64 s12, v112, v112
	v_add3_u32 v101, v112, v101, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v109.h, 0x7fff, v101.h, s12
	ds_store_b16 v94, v106
	ds_store_b16_d16_hi v94, v106 offset:128
	ds_store_b16 v94, v107 offset:512
	ds_store_b16_d16_hi v94, v107 offset:640
	ds_store_b16 v94, v108 offset:1024
	ds_store_b16_d16_hi v94, v108 offset:1152
	ds_store_b16 v94, v109 offset:1536
	ds_store_b16_d16_hi v94, v109 offset:1664
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v106, v95
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v106, v95 offset:128
	ds_load_u16_d16 v107, v95 offset:256
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v107, v95 offset:384
	ds_load_u16_d16 v108, v95 offset:512
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v108, v95 offset:640
	ds_load_u16_d16 v109, v95 offset:768
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v109, v95 offset:896
	ds_load_u16_d16 v110, v95 offset:1024
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v101, 0, v104, s10
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v104.h, v98.l
	v_cmp_o_f32_e64 s10, v102, v102
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v110, v95 offset:1152
	ds_load_u16_d16 v111, v95 offset:1280
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v104.l, v101.h
	v_cndmask_b16 v102.h, 0x7fff, v103.h, s10
	v_cmp_o_f32_e64 s10, v101, v101
	v_mov_b16_e32 v103.h, v98.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v104, 1, v104
	v_and_b32_e32 v103, 1, v103
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v104, v101, v104, 0x7fff
	v_mov_b16_e32 v101.l, v100.h
	v_mov_b16_e32 v101.h, v98.l
	v_add3_u32 v103, v99, v103, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v102.l, 0x7fff, v104.h, s10
	v_and_b32_e32 v101, 1, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v101, v100, v101, 0x7fff
	v_mov_b16_e32 v100.l, v23.h
	v_mov_b16_e32 v100.h, v98.l
	v_cndmask_b16 v101.h, 0x7fff, v101.h, s8
	v_cmp_o_f32_e64 s8, v99, v99
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v100, 1, v100
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v111, v95 offset:1408
	ds_load_u16_d16 v112, v95 offset:1536
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v99.l, v24.h
	v_mov_b16_e32 v99.h, v98.l
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v112, v95 offset:1664
	ds_load_u16_d16 v113, v95 offset:1792
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v99, 1, v99
	v_add3_u32 v100, v23, v100, 0x7fff
	v_cndmask_b16 v101.l, 0x7fff, v103.h, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v99, v24, v99, 0x7fff
	v_mov_b16_e32 v99.l, v21.h
	v_cndmask_b16 v24.h, 0x7fff, v99.h, s6
	v_cmp_o_f32_e64 s6, v23, v23
	v_mov_b16_e32 v23.l, v22.h
	v_mov_b16_e32 v23.h, v98.l
	v_mov_b16_e32 v99.h, v98.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v24.l, 0x7fff, v100.h, s6
	v_and_b32_e32 v23, 1, v23
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v98, 1, v99
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v113, v95 offset:1920
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v103, v24, s65, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v23, v22, v23, 0x7fff
	v_add3_u32 v98, v21, v98, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cndmask_b16 v22.h, 0x7fff, v23.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_permlanex16_b32 v21, v102, s65, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v101, s65, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v22.l, 0x7fff, v98.h, vcc_lo
	v_perm_b32 v98, v21, v102, v39
	v_perm_b32 v99, v21, v102, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_perm_b32 v100, v23, v101, v39
	v_perm_b32 v101, v23, v101, v72
	v_permlanex16_b32 v105, v22, s65, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v102, v103, v24, v39
	v_perm_b32 v103, v103, v24, v72
	v_perm_b32 v104, v105, v22, v39
	v_perm_b32 v105, v105, v22, v72
	.loc	1 816 23 is_stmt 0              ; attention.py:816:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[106:113], v[98:105], v[1:8]
	v_dual_mov_b32 v99, v18 :: v_dual_mov_b32 v100, v17
	.loc	1 707 13 is_stmt 1              ; attention.py:707:13
	s_cbranch_scc0 .LBB0_13
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 708 31                        ; attention.py:708:31
	v_add_nc_u32_e32 v17, s19, v40
	.loc	1 711 32                        ; attention.py:711:32
	s_add_i32 s8, s19, s21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s8, s48
	v_add_nc_u32_e32 v22, s5, v46
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 708 31                        ; attention.py:708:31
	v_add_nc_u32_e32 v18, 4, v17
	.loc	1 711 32                        ; attention.py:711:32
	v_add_nc_u32_e32 v23, s5, v47
	.loc	1 708 31                        ; attention.py:708:31
	v_add_nc_u32_e32 v19, 8, v17
	.loc	1 714 73                        ; attention.py:714:73
	v_cmp_gt_i32_e32 vcc_lo, s23, v17
	.loc	1 708 31                        ; attention.py:708:31
	v_add_nc_u32_e32 v20, 12, v17
	.loc	1 711 32                        ; attention.py:711:32
	v_add_nc_u32_e32 v21, s5, v27
	v_add_nc_u32_e32 v17, s5, v28
	.loc	1 714 73                        ; attention.py:714:73
	v_cmp_gt_i32_e64 s5, s23, v18
	v_cmp_gt_i32_e64 s6, s23, v19
	.loc	1 714 30 is_stmt 0              ; attention.py:714:30
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 714 73                        ; attention.py:714:73
	v_cmp_gt_i32_e64 s7, s23, v20
	.loc	1 712 32 is_stmt 1              ; attention.py:712:32
	v_cndmask_b32_e32 v18, 0x80000000, v21, vcc_lo
	.loc	1 714 30                        ; attention.py:714:30
	s_and_b32 vcc_lo, s4, s5
	.loc	1 708 31                        ; attention.py:708:31
	v_add_nc_u32_e32 v21, s19, v58
	.loc	1 712 32                        ; attention.py:712:32
	v_cndmask_b32_e32 v19, 0x80000000, v22, vcc_lo
	.loc	1 714 30                        ; attention.py:714:30
	s_and_b32 vcc_lo, s4, s6
	.loc	1 728 25                        ; attention.py:728:25
	v_add_lshl_u32 v22, s8, v58, 1
	.loc	1 712 32                        ; attention.py:712:32
	v_cndmask_b32_e32 v20, 0x80000000, v23, vcc_lo
	.loc	1 714 30                        ; attention.py:714:30
	s_and_b32 vcc_lo, s4, s7
	.loc	1 708 31                        ; attention.py:708:31
	v_add_nc_u32_e32 v102, 10, v21
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 712 32                        ; attention.py:712:32
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_add_nc_u32 v106, 8, v22
	.loc	1 727 37                        ; attention.py:727:37
	v_add_nc_u32_e32 v105, 4, v22
	.loc	1 712 32                        ; attention.py:712:32
	s_clause 0x3
	buffer_load_u8 v18, v18, s[40:43], 0 offen
	buffer_load_u8 v19, v19, s[40:43], 0 offen
	buffer_load_u8 v20, v20, s[40:43], 0 offen
	buffer_load_u8 v17, v17, s[40:43], 0 offen
	.loc	1 708 31                        ; attention.py:708:31
	v_add_nc_u32_e32 v23, 2, v21
	.loc	1 729 30                        ; attention.py:729:30
	v_cmp_gt_i32_e32 vcc_lo, s23, v21
	.loc	1 708 31                        ; attention.py:708:31
	v_add_nc_u32_e32 v103, 12, v21
	v_add_nc_u32_e32 v104, 14, v21
	.loc	1 727 37                        ; attention.py:727:37
	v_add_nc_u32_e32 v108, 16, v22
	.loc	1 708 31                        ; attention.py:708:31
	v_add_nc_u32_e32 v24, 4, v21
	.loc	1 727 37                        ; attention.py:727:37
	v_add_nc_u32_e32 v109, 20, v22
	v_add_nc_u32_e32 v107, 12, v22
	.loc	1 708 31                        ; attention.py:708:31
	v_add_nc_u32_e32 v101, 8, v21
	.loc	1 727 37                        ; attention.py:727:37
	v_add_nc_u32_e32 v110, 24, v22
	.loc	1 708 31                        ; attention.py:708:31
	v_add_nc_u32_e32 v98, 6, v21
	.loc	1 727 37                        ; attention.py:727:37
	v_cndmask_b32_e32 v21, 0x80000000, v22, vcc_lo
	.loc	1 729 30                        ; attention.py:729:30
	v_cmp_gt_i32_e32 vcc_lo, s23, v23
	.loc	1 727 37                        ; attention.py:727:37
	v_add_nc_u32_e32 v22, 28, v22
	.loc	1 712 32                        ; attention.py:712:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	ds_store_b8 v48, v18
	s_waitcnt vmcnt(2)
	ds_store_b8 v49, v19
	s_waitcnt vmcnt(1)
	ds_store_b8 v50, v20
	s_waitcnt vmcnt(0)
	ds_store_b8 v51, v17
	.loc	1 727 37                        ; attention.py:727:37
	v_cndmask_b32_e32 v23, 0x80000000, v105, vcc_lo
	.loc	1 729 30                        ; attention.py:729:30
	v_cmp_gt_i32_e32 vcc_lo, s23, v24
	.loc	1 712 32                        ; attention.py:712:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 727 37                        ; attention.py:727:37
	v_cndmask_b32_e32 v24, 0x80000000, v106, vcc_lo
	.loc	1 729 30                        ; attention.py:729:30
	v_cmp_gt_i32_e32 vcc_lo, s23, v98
	.loc	1 727 37                        ; attention.py:727:37
	v_cndmask_b32_e32 v98, 0x80000000, v107, vcc_lo
	.loc	1 729 30                        ; attention.py:729:30
	v_cmp_gt_i32_e32 vcc_lo, s23, v101
	.loc	1 727 37                        ; attention.py:727:37
	v_cndmask_b32_e32 v101, 0x80000000, v108, vcc_lo
	.loc	1 729 30                        ; attention.py:729:30
	v_cmp_gt_i32_e32 vcc_lo, s23, v102
	.loc	1 727 37                        ; attention.py:727:37
	v_cndmask_b32_e32 v102, 0x80000000, v109, vcc_lo
	.loc	1 729 30                        ; attention.py:729:30
	v_cmp_gt_i32_e32 vcc_lo, s23, v103
	.loc	1 727 37                        ; attention.py:727:37
	v_cndmask_b32_e32 v109, 0x80000000, v110, vcc_lo
	.loc	1 729 30                        ; attention.py:729:30
	v_cmp_gt_i32_e32 vcc_lo, s23, v104
	.loc	1 727 37                        ; attention.py:727:37
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	s_clause 0x7
	buffer_load_u16 v108, v21, s[24:27], 0 offen
	buffer_load_u16 v107, v23, s[24:27], 0 offen
	buffer_load_u16 v106, v24, s[24:27], 0 offen
	buffer_load_u16 v105, v98, s[24:27], 0 offen
	buffer_load_u16 v104, v101, s[24:27], 0 offen
	buffer_load_u16 v103, v102, s[24:27], 0 offen
	buffer_load_u16 v102, v109, s[24:27], 0 offen
	buffer_load_u16 v101, v22, s[24:27], 0 offen
	.loc	1 712 32                        ; attention.py:712:32
	ds_load_b64 v[109:110], v52
	ds_load_b64 v[111:112], v53
	ds_load_b64 v[113:114], v54
	ds_load_b64 v[115:116], v55
	.loc	1 708 31                        ; attention.py:708:31
	v_add_nc_u32_e32 v98, s19, v45
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 745 17                        ; attention.py:745:17
	v_cmp_le_i32_e32 vcc_lo, v98, v59
	v_cmp_le_i32_e64 s5, v98, v60
	.loc	1 714 73                        ; attention.py:714:73
	v_cmp_gt_i32_e64 s6, s23, v98
	.loc	1 745 17                        ; attention.py:745:17
	s_or_b32 s7, s53, vcc_lo
	s_or_b32 s5, s53, s5
	s_and_b32 s7, s0, s7
	s_and_b32 s5, s1, s5
	s_and_b32 s8, s6, s7
	s_and_b32 s9, s6, s5
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[109:110], v[29:30], v[9:16] neg_lo:[1,1,0]
	s_and_not1_b32 s5, s67, exec_lo
	s_and_b32 s6, s8, exec_lo
	s_and_not1_b32 s7, s66, exec_lo
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[111:112], v[31:32], v[17:24] neg_lo:[1,1,0]
	s_and_b32 s10, s9, exec_lo
	.loc	1 747 17                        ; attention.py:747:17
	s_and_not1_b32 vcc_lo, exec_lo, s35
	s_or_b32 s67, s5, s6
	s_or_b32 s66, s7, s10
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[113:114], v[33:34], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[115:116], v[35:36], v[17:24] neg_lo:[1,1,0]
	.loc	1 747 17                        ; attention.py:747:17
	s_cbranch_vccnz .LBB0_9
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e32 vcc_lo, v98, v62
	v_cmp_ge_i32_e64 s5, v98, v63
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s6, v98, v64
	v_cmp_le_i32_e64 s7, v98, v65
	s_and_not1_b32 s10, s67, exec_lo
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s6, vcc_lo, s6
	s_and_b32 s5, s5, s7
	s_and_b32 s6, s6, s8
	s_and_b32 s5, s5, s9
	s_and_b32 s6, s6, exec_lo
	s_and_not1_b32 s7, s66, exec_lo
	s_and_b32 s5, s5, exec_lo
	s_or_b32 s67, s10, s6
	s_or_b32 s66, s7, s5
	s_branch .LBB0_9
.LBB0_12:
	.loc	1 0 21                          ; attention.py:0:21
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v11, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v10, v8
	s_branch .LBB0_14
.LBB0_13:                               ; %._crit_edge.loopexit
.Ltmp29:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v9, v17, v17 :: v_dual_add_f32 v10, 0, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v11, 0xff800000, v9
	v_mov_b32_e32 v9, v56
.Ltmp30:
.LBB0_14:                               ; %._crit_edge
	.loc	1 825 26                        ; attention.py:825:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v43
	s_mov_b32 s0, 0x76543210
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp32:
	.loc	1 822 31                        ; attention.py:822:31
	s_mul_i32 s34, s34, s3
	.loc	1 825 17                        ; attention.py:825:17
	v_dual_cndmask_b32 v11, 0xff800000, v11 :: v_dual_lshlrev_b32 v0, 2, v0
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s18, s18, 2
	.loc	1 833 13                        ; attention.py:833:13
	s_mov_b32 s3, exec_lo
	.loc	1 828 36                        ; attention.py:828:36
	v_cndmask_b32_e32 v10, 0, v10, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_permlanex16_b32 v12, v11, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v11, v11, v11
.Ltmp35:
	.loc	1 830 26                        ; attention.py:830:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v45
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_add_nc_u32_e32 v9, 0, v9
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_permlanex16_b32 v14, v10, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v12, v12, v12
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_and_b32_e32 v13, 12, v0
.Ltmp40:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v2, 0, v2
	.loc	1 822 31                        ; attention.py:822:31
	s_add_i32 s0, s33, s34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_dual_add_f32 v10, v10, v14 :: v_dual_max_f32 v11, v11, v12
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_add_nc_u32_e32 v12, 0, v13
.Ltmp43:
	.loc	1 822 30                        ; attention.py:822:30
	s_mul_i32 s0, s0, s18
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v16, 0, v4, vcc_lo
	v_cndmask_b32_e32 v8, 0, v8, vcc_lo
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	ds_store_b32 v9, v11
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v11, v12
.Ltmp45:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v9, v10
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v10, v12
.Ltmp46:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v9, v1 :: v_dual_mov_b32 v12, v2
.Ltmp47:
	.loc	1 830 17 is_stmt 1              ; attention.py:830:17
	v_dual_cndmask_b32 v3, 0, v3 :: v_dual_mov_b32 v20, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp48:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v12, v12 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v7, 0, v7, vcc_lo
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v1, v1, v9 :: v_dual_add_f32 v2, v2, v12
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v14, v11
.Ltmp52:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v13, v3
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v11, v11, v11 :: v_dual_add_f32 v8, v8, v20
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v12, v10 :: v_dual_mov_b32 v9, v1
.Ltmp56:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v8
.Ltmp57:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v14, v14, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp59:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp60:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v1, v1, v9
.Ltmp61:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_dual_add_f32 v9, v10, v12 :: v_dual_max_f32 v10, v11, v14
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v3, v3, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp63:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v13, v2 :: v_dual_add_f32 v8, v8, v20
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v12, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v15, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v21, v8
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v2, v2, v13
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v14, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v3, v3, v15 :: v_dual_add_f32 v2, v2, v14
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v13, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v15, v3 :: v_dual_mov_b32 v14, v16
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v14, v14 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v1, v1, v13
.Ltmp72:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v13, 0, v6, vcc_lo
	v_cndmask_b32_e32 v17, 0, v5, vcc_lo
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v5, v3, v15 :: v_dual_add_f32 v14, v16, v14
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v3, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v6, v5
.Ltmp75:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_dual_mov_b32 v11, v9 :: v_dual_mov_b32 v16, v14
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v18, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v15, v17
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v14, v14, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v13, v13, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v19, v7 :: v_dual_mov_b32 v16, v14
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v15, v17, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp85:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v7, v7, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v15, v15, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_f32_e32 v17, v13, v18
	v_add_f32_e32 v13, v14, v16
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v19, v7 :: v_dual_mov_b32 v14, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v18, v7, v19 :: v_dual_mov_b32 v19, v17
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v20, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp91:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v16, v18, v20 :: v_dual_mov_b32 v7, v15
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v7, v15, v7
	v_add_f32_e32 v15, v17, v19
	v_add_f32_e32 v17, v8, v21
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v19, v16
.Ltmp95:
	.loc	1 833 13                        ; attention.py:833:13
	v_or_b32_e32 v21, v40, v25
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v8, v7
	v_mov_b32_e32 v18, v15
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp97:
	.loc	1 833 13                        ; attention.py:833:13
	v_cmpx_eq_u32_e32 0, v21
	s_cbranch_execz .LBB0_16
; %bb.15:
.Ltmp98:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v21, v10, v10
.Ltmp99:
	.loc	1 833 13                        ; attention.py:833:13
	s_ashr_i32 s1, s0, 31
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_dual_add_f32 v10, v9, v11 :: v_dual_mov_b32 v11, 0
.Ltmp101:
	.loc	1 833 13                        ; attention.py:833:13
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp102:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v9, v21, v12
.Ltmp103:
	.loc	1 833 13                        ; attention.py:833:13
	s_add_u32 s4, s16, s4
	s_addc_u32 s5, s17, s5
	.loc	1 834 13                        ; attention.py:834:13
	global_store_b64 v11, v[9:10], s[4:5]
.LBB0_16:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s3
.Ltmp104:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v9, v15, v18 :: v_dual_and_b32 v0, 0xc0, v0
.Ltmp105:
	.loc	1 835 13                        ; attention.py:835:13
	v_cmp_eq_u32_e32 vcc_lo, 0, v42
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v15, v13, v14
	v_dual_add_f32 v14, v5, v6 :: v_dual_add_f32 v13, v2, v4
	v_dual_add_f32 v12, v1, v3 :: v_dual_and_b32 v1, 28, v41
.Ltmp107:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v2, 32, v44
	s_and_b32 vcc_lo, vcc_lo, s2
	v_add_nc_u32_e32 v0, 0, v0
	v_lshl_add_u32 v3, v43, 1, 0
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v11, v17, v20 :: v_dual_add_f32 v10, v16, v19
	v_add_f32_e32 v8, v7, v8
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp109:
	.loc	1 835 13                        ; attention.py:835:13
	v_add3_u32 v0, v0, v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 836 17                        ; attention.py:836:17
	v_add_nc_u32_e32 v1, s0, v26
	.loc	1 835 13                        ; attention.py:835:13
	ds_store_b128 v3, v[12:15]
	ds_store_b128 v3, v[8:11] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v0
	v_lshl_add_u32 v1, v1, 2, 8
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v0, v1, s[16:19], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp110:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
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
		.amdhsa_next_free_vgpr 117
		.amdhsa_next_free_sgpr 68
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
		.amdhsa_inst_pref_size 60
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.num_vgpr, 117
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.numbered_sgpr, 68
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7564
; TotalNumSgprs: 70
; NumVgprs: 117
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 70
; NumVGPRsForWavesPerEU: 117
; Occupancy: 12
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
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	7                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0xc5 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x9f DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	824                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x5b:0x22 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp3                          ; DW_AT_low_pc
	.long	.Ltmp15-.Ltmp3                  ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	765                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x70:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x7d:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	769                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x8a:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x98:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	828                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0xa5:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xb3:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	829                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0xc0:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
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
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
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
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     70
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     117
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
