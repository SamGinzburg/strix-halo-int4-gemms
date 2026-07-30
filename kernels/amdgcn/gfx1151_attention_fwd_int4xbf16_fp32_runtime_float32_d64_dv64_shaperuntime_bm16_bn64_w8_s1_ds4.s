	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[8:11], s[0:1], 0x80
	s_load_b32 s26, s[0:1], 0x68
	s_mov_b32 s25, s3
	s_clause 0x1
	s_load_b128 s[52:55], s[0:1], 0x4c
	s_load_b32 s85, s[0:1], 0x60
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_and_b32_e32 v49, 31, v0
	v_lshrrev_b32_e32 v64, 5, v0
	s_mov_b32 s15, 0x31027000
	.loc	1 585 26                        ; attention.py:585:26
	v_bfe_i32 v3, v0, 7, 1
	v_and_b32_e32 v4, 0x7f, v0
	v_lshlrev_b32_e32 v65, 1, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v66, 15, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 585 26                        ; attention.py:585:26
	v_and_b32_e32 v3, 0x88, v3
	v_xor_b32_e32 v3, v3, v4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s3, 1, s8
	s_bitcmp1_b32 s8, 8
	s_cselect_b32 s84, -1, 0
	s_cmp_eq_u32 s3, 1
	.loc	1 583 26                        ; attention.py:583:26
	s_mul_i32 s17, s25, s54
	s_cselect_b32 s5, -1, 0
	.loc	1 609 32                        ; attention.py:609:32
	s_abs_i32 s7, s26
	.loc	1 559 27                        ; attention.py:559:27
	s_abs_i32 s4, s2
	.loc	1 609 32                        ; attention.py:609:32
	s_cvt_f32_u32 s3, s7
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s6, s2, s26
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v4, 0x110, v3
	.loc	1 559 27                        ; attention.py:559:27
	s_ashr_i32 s6, s6, 31
	.loc	1 609 32                        ; attention.py:609:32
	v_rcp_iflag_f32_e32 v1, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v69, 0, v4
	.loc	1 609 32                        ; attention.py:609:32
	v_readfirstlane_b32 s3, v1
	s_mul_f32 s3, s3, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_u32_f32 s20, s3
	s_sub_i32 s3, 0, s7
	s_mul_i32 s3, s3, s20
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s3, s20, s3
	s_add_i32 s20, s20, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 559 27                        ; attention.py:559:27
	s_mul_hi_u32 s3, s4, s20
	s_mul_i32 s12, s3, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s12
	s_add_i32 s12, s3, 1
	s_sub_i32 s13, s4, s7
	s_cmp_ge_u32 s4, s7
	s_cselect_b32 s3, s12, s3
	s_cselect_b32 s4, s13, s4
	s_add_i32 s12, s3, 1
	s_cmp_ge_u32 s4, s7
	s_cselect_b32 s3, s12, s3
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s14, s52
	.loc	1 566 23                        ; attention.py:566:23
	s_abs_i32 s13, s25
	s_cvt_f32_u32 s4, s14
	s_sub_i32 s12, 0, s14
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s3, s3, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 566 23                        ; attention.py:566:23
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 559 27                        ; attention.py:559:27
	s_sub_i32 s3, s3, s6
	.loc	1 560 27                        ; attention.py:560:27
	s_mul_i32 s6, s3, s26
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s3, s3, 4
	.loc	1 560 27                        ; attention.py:560:27
	s_sub_i32 s24, s2, s6
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v5, s3, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 566 23                        ; attention.py:566:23
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_cvt_u32_f32 s4, s4
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s12, s12, s4
	s_mul_hi_u32 s12, s4, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, s12
	s_mul_hi_u32 s4, s13, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_i32 s12, s4, s14
	s_add_i32 s6, s4, 1
	s_sub_i32 s2, s13, s12
	s_sub_i32 s12, s2, s14
	s_cmp_ge_u32 s2, s14
	s_cselect_b32 s4, s6, s4
	s_cselect_b32 s2, s12, s2
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s2, s14
	s_load_b64 s[12:13], s[0:1], 0x0
	s_cselect_b32 s6, s6, s4
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s2, s53
	s_xor_b32 s18, s52, s53
	s_cvt_f32_u32 s4, s2
	s_sub_i32 s16, 0, s2
	s_ashr_i32 s21, s18, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v1, s3, v64
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v2, 8, v1
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e32 vcc_lo, s54, v1
	.loc	1 568 22                        ; attention.py:568:22
	s_cvt_u32_f32 s4, s4
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s16, s16, s4
	s_mul_hi_u32 s16, s4, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s16, s4, s16
	s_mul_hi_u32 s16, s14, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_i32 s19, s16, s2
	s_add_i32 s18, s16, 1
	s_sub_i32 s14, s14, s19
	s_sub_i32 s19, s14, s2
	s_cmp_ge_u32 s14, s2
	s_cselect_b32 s16, s18, s16
	s_cselect_b32 s14, s19, s14
	s_add_i32 s18, s16, 1
	s_cmp_ge_u32 s14, s2
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, s54, v2
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s22, s18, s16
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s23, s17, s3
	s_load_b64 s[16:17], s[0:1], 0x18
	v_mad_u64_u32 v[51:52], null, s85, v64, v[49:50]
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e64 s4, s85, v49
	.loc	1 584 26                        ; attention.py:584:26
	s_mul_i32 s14, s23, s85
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	.loc	1 590 31                        ; attention.py:590:31
	v_add_lshl_u32 v6, s23, v66, 1
	s_mov_b32 s19, s15
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 584 26                        ; attention.py:584:26
	v_lshl_add_u32 v67, s85, 3, v51
	v_add_nc_u32_e32 v1, s14, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v2, s14, v67
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s4, s2
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 568 22                        ; attention.py:568:22
	s_xor_b32 s2, s22, s21
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_u8 v1, v1, s[12:15], 0 offen
	buffer_load_u8 v2, v2, s[12:15], 0 offen
	.loc	1 592 22                        ; attention.py:592:22
	v_cmp_gt_i32_e32 vcc_lo, s54, v5
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v68, 0, v3
	.loc	1 590 31                        ; attention.py:590:31
	s_mov_b32 s18, s14
	s_and_b32 s17, s17, 0xffff
	v_cndmask_b32_e32 v3, 0x80000000, v6, vcc_lo
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(1)
	ds_store_b8 v68, v1
	s_waitcnt vmcnt(0)
	ds_store_b8 v69, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 590 31                        ; attention.py:590:31
	buffer_load_u16 v1, v3, s[16:19], 0 offen
	.loc	1 568 22                        ; attention.py:568:22
	s_sub_i32 s17, s2, s21
	.loc	1 585 26                        ; attention.py:585:26
	v_and_b32_e32 v2, 24, v65
	.loc	1 569 19                        ; attention.py:569:19
	s_abs_i32 s16, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_cvt_f32_u32 s2, s16
	.loc	1 585 26                        ; attention.py:585:26
	v_lshl_or_b32 v2, v66, 5, v2
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 569 19                        ; attention.py:569:19
	v_rcp_iflag_f32_e32 v3, s2
	.loc	1 606 16                        ; attention.py:606:16
	s_add_i32 s2, s55, 63
	.loc	1 606 15 is_stmt 0              ; attention.py:606:15
	s_ashr_i32 s12, s2, 31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 585 26 is_stmt 1              ; attention.py:585:26
	v_xor_b32_e32 v4, 8, v2
	.loc	1 606 15                        ; attention.py:606:15
	s_lshr_b32 s12, s12, 26
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v5, 16, v2
	.loc	1 606 15                        ; attention.py:606:15
	s_add_i32 s2, s2, s12
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v70, 0, v2
	.loc	1 606 15                        ; attention.py:606:15
	s_ashr_i32 s12, s2, 6
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v2, 24, v2
	.loc	1 609 33                        ; attention.py:609:33
	s_add_i32 s12, s12, s26
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v71, 0, v4
	.loc	1 609 33                        ; attention.py:609:33
	s_add_i32 s12, s12, -1
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v72, 0, v5
	.loc	1 609 32                        ; attention.py:609:32
	s_abs_i32 s13, s12
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v73, 0, v2
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_hi_u32 s14, s13, s20
	s_xor_b32 s12, s12, s26
	s_mul_i32 s15, s14, s7
	.loc	1 606 14                        ; attention.py:606:14
	s_and_not1_b32 s2, s2, 63
	.loc	1 609 32                        ; attention.py:609:32
	s_sub_i32 s13, s13, s15
	s_ashr_i32 s12, s12, 31
	s_add_i32 s15, s14, 1
	s_sub_i32 s18, s13, s7
	.loc	1 585 26                        ; attention.py:585:26
	ds_load_b64 v[52:53], v70
	ds_load_b64 v[54:55], v71
	ds_load_b64 v[56:57], v72
	ds_load_b64 v[58:59], v73
	.loc	1 609 32                        ; attention.py:609:32
	s_cmp_ge_u32 s13, s7
	.loc	1 585 26                        ; attention.py:585:26
	v_and_b32_e32 v2, 0x80, v0
	.loc	1 609 32                        ; attention.py:609:32
	s_cselect_b32 s14, s15, s14
	s_cselect_b32 s13, s18, s13
	s_add_i32 s15, s14, 1
	s_cmp_ge_u32 s13, s7
	s_cselect_b32 s7, s15, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s7, s7, s12
	s_sub_i32 s7, s7, s12
	.loc	1 569 19                        ; attention.py:569:19
	v_readfirstlane_b32 s12, v3
	.loc	1 610 18                        ; attention.py:610:18
	s_mul_i32 s13, s24, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_lshl_b32 s87, s13, 6
	.loc	1 611 33                        ; attention.py:611:33
	s_lshl_b32 s13, s7, 6
	.loc	1 585 26                        ; attention.py:585:26
	v_cmp_eq_u32_e64 s7, 0, v2
	.loc	1 611 33                        ; attention.py:611:33
	s_add_i32 s13, s87, s13
	.loc	1 611 18 is_stmt 0              ; attention.py:611:18
	s_min_i32 s88, s2, s13
	.loc	1 612 9 is_stmt 1               ; attention.py:612:9
	s_bfe_u32 s2, s8, 0x10008
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s10, s11
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s8, s11, s9
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s2, s3
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s8, s8, s3
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s2, 16
	.loc	1 613 25                        ; attention.py:613:25
	s_max_i32 s8, s8, 0
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s2, s55, s2
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s8, s8, 0x7fffffc0
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s2, s2, 63
	.loc	1 618 18                        ; attention.py:618:18
	s_max_i32 s87, s87, s8
	.loc	1 619 34                        ; attention.py:619:34
	s_ashr_i32 s13, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s13, s13, 26
	s_add_i32 s2, s2, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 619 33 is_stmt 0              ; attention.py:619:33
	s_and_not1_b32 s2, s2, 63
	.loc	1 619 18                        ; attention.py:619:18
	s_min_i32 s88, s88, s2
.LBB0_2:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b32 s86, s[0:1], 0x64
	.loc	1 620 9 is_stmt 1               ; attention.py:620:9
	v_cndmask_b32_e64 v75, 0, 1, s5
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s2, s11, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 16
	s_min_i32 s2, s55, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 63
	.loc	1 622 34 is_stmt 1              ; attention.py:622:34
	s_ashr_i32 s5, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s5, s5, 26
	s_add_i32 s2, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 622 33 is_stmt 0              ; attention.py:622:33
	s_and_not1_b32 s2, s2, 63
	.loc	1 622 18                        ; attention.py:622:18
	s_min_i32 s88, s88, s2
.LBB0_4:
	.loc	1 571 21 is_stmt 1              ; attention.py:571:21
	v_and_b32_e32 v50, 63, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v74, 0xc0, v0
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s87, s88
	.loc	1 696 65                        ; attention.py:696:65
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_i32_e64 s2, s86, v50
	v_lshrrev_b32_e32 v76, 4, v74
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_7
; %bb.5:                                ; %.._crit_edge_crit_edge
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_lshrrev_b32_e32 v11, 4, v74
	s_load_b64 s[64:65], s[0:1], 0x40
	s_cbranch_execz .LBB0_8
.Ltmp2:
; %bb.6:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v12, 0xff800000 :: v_dual_mov_b32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v10, v8
	s_branch .LBB0_15
.LBB0_7:
                                        ; implicit-def: $vgpr11
	s_load_b64 s[64:65], s[0:1], 0x40
.LBB0_8:                                ; %.lr.ph
	s_xor_b32 s5, s25, s52
	s_mul_f32 s8, s12, 0x4f7ffffe
	s_ashr_i32 s5, s5, 31
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x6c
	s_load_b64 s[68:69], s[0:1], 0x30
	s_xor_b32 s6, s6, s5
	s_cvt_u32_f32 s8, s8
	s_sub_i32 s18, s6, s5
	s_sub_i32 s5, 0, s16
	s_mul_i32 s6, s18, s52
	s_mul_i32 s5, s5, s8
	s_sub_i32 s19, s25, s6
	s_mul_hi_u32 s5, s8, s5
	s_abs_i32 s6, s19
	s_add_i32 s8, s8, s5
	s_ashr_i32 s17, s17, 31
	s_mul_hi_u32 s5, s6, s8
	s_ashr_i32 s8, s19, 31
	.loc	1 569 19 is_stmt 1              ; attention.py:569:19
	s_mul_i32 s20, s5, s16
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v77, 6, v74
	.loc	1 569 19                        ; attention.py:569:19
	s_sub_i32 s6, s6, s20
	s_load_b32 s89, s[0:1], 0x7c
	s_xor_b32 s8, s8, s17
	s_add_i32 s17, s5, 1
	s_sub_i32 s20, s6, s16
	s_cmp_ge_u32 s6, s16
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v2, s3, v77
	.loc	1 569 19                        ; attention.py:569:19
	s_cselect_b32 s5, s17, s5
	s_cselect_b32 s6, s20, s6
	s_add_i32 s17, s5, 1
	s_cmp_ge_u32 s6, s16
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v6, 12, v2
	.loc	1 569 19                        ; attention.py:569:19
	s_cselect_b32 s5, s17, s5
	v_mov_b16_e32 v83.l, 0
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v83.h, v1.l
	.loc	1 571 21                        ; attention.py:571:21
	v_and_b32_e32 v7, 16, v0
	.loc	1 569 19                        ; attention.py:569:19
	s_xor_b32 s5, s5, s8
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s15, v77
	s_clause 0x1
	s_load_b128 s[72:75], s[0:1], 0x8
	s_load_b64 s[76:77], s[0:1], 0x20
	s_sub_i32 s0, s5, s8
	.loc	1 632 33                        ; attention.py:632:33
	s_mul_i32 s1, s18, s53
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mov_b32 v100, v83 :: v_dual_and_b32 v3, 0xe0, v0
	.loc	1 632 33                        ; attention.py:632:33
	s_add_i32 s90, s0, s1
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v4, 4, v2
	v_or_b32_e32 v5, 8, v2
	v_dual_mov_b32 v138, 0xff800000 :: v_dual_add_nc_u32 v79, s11, v2
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v82, s11, v6
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s0, s54, v2
	.loc	1 654 30                        ; attention.py:654:30
	v_mov_b32_e32 v102, v83
	v_cmp_eq_u32_e32 vcc_lo, 0, v7
	v_lshlrev_b32_e32 v22, 2, v7
	v_dual_mov_b32 v7, 0x7632 :: v_dual_and_b32 v2, 60, v65
	v_cndmask_b32_e64 v17, 0x84, 0, s7
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v80, s11, v4
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s1, s54, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v7, 0x3276, v7, vcc_lo
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[60:61], null, s89, v50, v[1:2]
	v_dual_mov_b32 v42, 0xff800000 :: v_dual_lshlrev_b32 v1, 6, v0
	v_lshl_or_b32 v3, v3, 2, v2
	v_and_or_b32 v2, v64, 3, v2
	v_dual_mov_b32 v140, 0xff800000 :: v_dual_add_nc_u32 v81, s11, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v41, 0xff800000 :: v_dual_and_b32 v4, 64, v1
	v_xor_b32_e32 v2, v2, v17
	v_and_b32_e32 v1, 0x380, v1
	v_lshlrev_b32_e32 v17, 1, v66
	v_xor_b32_e32 v3, v3, v76
	v_lshl_or_b32 v7, v7, 8, v7
	v_mad_u64_u32 v[61:62], null, s15, 12, v[60:61]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_or3_b32 v97, v1, v22, v17
	v_and_b32_e32 v1, 64, v65
	v_or_b32_e32 v94, v3, v4
	v_mad_u64_u32 v[62:63], null, s86, v77, v[50:51]
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s54, v5
	v_add_nc_u32_e32 v35, 0, v1
	v_mov_b32_e32 v1, 0x5410
	v_cmp_gt_i32_e64 s6, s54, v6
	v_add_nc_u32_e32 v90, s10, v81
	v_xor_b32_e32 v6, 0xc30, v94
	v_and_b32_e32 v7, 0x760076, v7
	v_cndmask_b32_e32 v1, 0x1054, v1, vcc_lo
	v_or_b32_e32 v96, v2, v4
                                        ; implicit-def: $vgpr201 : SGPR spill to VGPR lane
	v_xor_b32_e32 v3, 0x410, v94
	v_add_nc_u32_e32 v105, 0, v6
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v1, v1, 8, v1
	v_writelane_b32 v201, s26, 0
	v_xor_b32_e32 v22, 0x108, v96
	v_xor_b32_e32 v25, 0x210, v96
	v_xor_b32_e32 v26, 0x318, v96
	v_and_b32_e32 v1, 0x540054, v1
	v_xor_b32_e32 v27, 4, v97
	v_xor_b32_e32 v28, 8, v97
	v_xor_b32_e32 v29, 12, v97
	v_xor_b32_e32 v30, 16, v97
	v_lshl_or_b32 v1, v1, 4, v1
	v_xor_b32_e32 v31, 20, v97
	v_xor_b32_e32 v32, 24, v97
	v_xor_b32_e32 v33, 28, v97
	v_lshrrev_b32_e32 v34, 2, v74
	v_and_b32_e32 v63, 0x5040504, v1
	v_mov_b32_e32 v1, 0
	v_lshlrev_b32_e32 v5, 2, v49
	v_and_b32_e32 v24, 0x60, v0
	v_dual_mov_b32 v141, 0xff800000 :: v_dual_add_nc_u32 v4, 0, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v6, v1
	v_lshl_or_b32 v95, v66, 8, v5
	v_xor_b32_e32 v5, 0x820, v94
	v_and_b32_e32 v98, 0x7060706, v7
	v_and_b32_e32 v7, 0x1fe, v65
	v_or_b32_e32 v36, 0x600, v65
	v_xor_b32_e32 v8, 4, v95
	v_xor_b32_e32 v9, 8, v95
	v_xor_b32_e32 v10, 12, v95
	v_xor_b32_e32 v11, 16, v95
	v_xor_b32_e32 v12, 20, v95
	v_xor_b32_e32 v13, 24, v95
	v_xor_b32_e32 v14, 28, v95
	v_xor_b32_e32 v15, 32, v95
	v_xor_b32_e32 v16, 36, v95
	v_xor_b32_e32 v18, 40, v95
	v_xor_b32_e32 v19, 44, v95
	v_xor_b32_e32 v20, 48, v95
	v_xor_b32_e32 v21, 52, v95
	v_xor_b32_e32 v23, 56, v95
	v_xor_b32_e32 v2, 60, v95
	v_or_b32_e32 v37, 0xe00, v65
	v_or_b32_e32 v38, 0x1600, v65
	v_or_b32_e32 v39, 0x1e00, v65
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s91, s12, 0x3fb8aa3b
	.loc	1 674 25                        ; attention.py:674:25
	s_mul_i32 s3, s3, s15
	.loc	1 675 27                        ; attention.py:675:27
	s_mul_i32 s8, s18, s13
	v_writelane_b32 v201, s24, 1
	.loc	1 571 21                        ; attention.py:571:21
	v_bfe_u32 v78, v0, 4, 1
	v_subrev_nc_u32_e32 v84, s9, v79
	v_subrev_nc_u32_e32 v85, s9, v80
	v_subrev_nc_u32_e32 v86, s9, v81
	v_subrev_nc_u32_e32 v87, s9, v82
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mov_b32 v101, v83 :: v_dual_add_nc_u32 v88, s10, v79
	v_add_nc_u32_e32 v89, s10, v80
	v_add_nc_u32_e32 v91, s10, v82
	.loc	1 629 13                        ; attention.py:629:13
	v_lshl_add_u32 v92, s15, 2, v60
	v_lshl_add_u32 v93, s15, 3, v60
	v_add_nc_u32_e32 v103, 0, v3
	v_dual_mov_b32 v139, 0xff800000 :: v_dual_add_nc_u32 v104, 0, v5
	v_add_nc_u32_e32 v106, 0, v8
	v_add_nc_u32_e32 v107, 0, v9
	v_add_nc_u32_e32 v108, 0, v10
	v_add_nc_u32_e32 v109, 0, v11
	v_add_nc_u32_e32 v110, 0, v12
	v_add_nc_u32_e32 v111, 0, v13
	v_add_nc_u32_e32 v112, 0, v14
	v_add_nc_u32_e32 v113, 0, v15
	v_add_nc_u32_e32 v114, 0, v16
	v_add_nc_u32_e32 v115, 0, v18
	v_add_nc_u32_e32 v116, 0, v19
	v_add_nc_u32_e32 v117, 0, v20
	v_add_nc_u32_e32 v118, 0, v21
	v_add_nc_u32_e32 v119, 0, v23
	v_add_nc_u32_e32 v120, 0, v2
	v_add_nc_u32_e32 v121, 0, v22
	v_add_nc_u32_e32 v122, 0, v25
	v_add_nc_u32_e32 v123, 0, v26
	v_add_nc_u32_e32 v124, 0, v27
	v_add_nc_u32_e32 v125, 0, v28
	v_add_nc_u32_e32 v126, 0, v29
	v_add_nc_u32_e32 v127, 0, v30
	v_add_nc_u32_e32 v128, 0, v31
	v_add_nc_u32_e32 v129, 0, v32
	v_add_nc_u32_e32 v130, 0, v33
	v_add_nc_u32_e32 v132, v4, v34
	v_add_nc_u32_e32 v133, 0, v7
	v_add_nc_u32_e32 v134, 0, v36
	v_add_nc_u32_e32 v135, 0, v37
	v_add_nc_u32_e32 v136, 0, v38
	v_dual_mov_b32 v2, v1 :: v_dual_add_nc_u32 v137, 0, v39
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_add3_u32 v99, 0, v17, v24
	v_dual_mov_b32 v142, v1 :: v_dual_add_nc_u32 v131, v35, v34
	.loc	1 676 27                        ; attention.py:676:27
	s_mul_i32 s19, s19, s14
	s_mov_b32 s71, 0x31027000
	s_mov_b32 s70, 0x7ffffffe
	s_add_i32 s98, s8, s3
	s_mov_b32 s56, 0
	.loc	1 632 32                        ; attention.py:632:32
	s_mul_i32 s90, s90, s55
	s_lshl_b32 s92, s85, 4
	s_lshl_b32 s94, s85, 5
	s_waitcnt lgkmcnt(0)
	s_and_b32 s73, s73, 0xffff
	s_and_b32 s77, s77, 0xffff
	s_add_i32 s98, s98, s19
	s_and_b32 s69, s69, 0xffff
	s_lshl_b32 s99, s86, 2
	s_lshl_b32 s100, s86, 3
	s_lshl_b32 s102, s86, 4
	s_lshl_b32 s66, s86, 5
	s_mul_i32 s3, s86, 40
	s_mul_i32 s93, s86, 44
	s_mul_i32 s95, s86, 48
	s_mul_i32 s96, s86, 52
	s_mul_i32 s97, s86, 56
	s_mul_i32 s101, s86, 60
	s_and_b32 s81, s75, 0xffff
	s_mov_b32 s80, s74
	.loc	1 664 17                        ; attention.py:664:17
	s_mov_b32 s103, s91
	s_mov_b32 s104, s91
	s_mov_b32 s67, s91
	s_mov_b32 s57, s56
	s_mov_b32 s58, s56
	s_mov_b32 s59, s56
	s_mov_b32 s60, s56
	s_mov_b32 s61, s56
	s_mov_b32 s62, s56
	s_mov_b32 s63, s56
	s_mov_b32 vcc_hi, 0x76543210
	s_mov_b32 s74, s70
	s_mov_b32 s75, s71
	s_mov_b32 s78, s70
	s_mov_b32 s79, s71
	v_writelane_b32 v201, s25, 2
	s_branch .LBB0_10
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 674 25                        ; attention.py:674:25
	s_mul_i32 s7, s87, s89
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v34, v34
	.loc	1 674 25                        ; attention.py:674:25
	s_add_i32 s7, s98, s7
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v31, v31
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v43, s7, v60, 2
	v_add_lshl_u32 v170, s7, v92, 2
	v_add_lshl_u32 v171, s7, v93, 2
	v_add_lshl_u32 v172, s7, v61, 2
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v17, v17
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v43, 0x80000000, v43, s17
	v_cndmask_b32_e64 v170, 0x80000000, v170, s15
	v_cndmask_b32_e64 v171, 0x80000000, v171, s16
	v_cndmask_b32_e64 v175, 0x80000000, v172, s14
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 683 36                        ; attention.py:683:36
	s_clause 0x3
	buffer_load_b32 v172, v43, s[68:71], 0 offen
	buffer_load_b32 v173, v170, s[68:71], 0 offen
	buffer_load_b32 v174, v171, s[68:71], 0 offen
	buffer_load_b32 v175, v175, s[68:71], 0 offen
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v43.l, 0
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(14)
	v_mov_b16_e64 v147.h, v146.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e64 v151.h, v147.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v21, v21
	v_dual_mul_f32 v34, v83, v34 :: v_dual_mul_f32 v31, v101, v31
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v147.l, v43.l
	v_mov_b16_e64 v43.h, v154.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v39, v39
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v48.h, v44.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v30, v30
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v178.h, v151.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v18, v18
	v_dual_mul_f32 v17, v83, v17 :: v_dual_add_nc_u32 v44, 0, v94
	v_dual_mul_f32 v38, v83, v38 :: v_dual_mul_f32 v21, v102, v21
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v178.l, v43.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v147, v31, v147
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v156.h, v155.l
	v_mov_b16_e64 v157.h, v156.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v169.h, v168.l
	v_mov_b16_e64 v170.h, v169.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v143.h, v45.l
	v_mov_b16_e64 v145.h, v48.l
	v_mov_b16_e64 v144.h, v144.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v25, v25
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v148.h, v143.l
	v_mov_b16_e64 v150.h, v145.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v29, v29
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v176.h, v149.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v19, v19
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v179.h, v150.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v9, v9
	v_dual_mul_f32 v10, v83, v10 :: v_dual_add_nc_u32 v45, 0, v95
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v156.l, v43.l
	v_mov_b16_e64 v169.l, v43.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v11, v83, v11 :: v_dual_mul_f32 v26, v100, v26
	v_dual_mul_f32 v13, v83, v13 :: v_dual_mul_f32 v28, v102, v28
	v_dual_mul_f32 v15, v83, v15 :: v_dual_mul_f32 v30, v100, v30
	v_dual_mul_f32 v16, v83, v16 :: v_dual_mul_f32 v27, v101, v27
	v_dual_mul_f32 v33, v83, v33 :: v_dual_mul_f32 v32, v102, v32
	v_dual_mul_f32 v35, v83, v35 :: v_dual_mul_f32 v20, v101, v20
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v143.l, v43.l
	v_mov_b16_e64 v145.l, v43.l
	v_mov_b16_e64 v144.l, v43.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v39, v83, v39
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v150.l, v43.l
	v_mov_b16_e64 v151.l, v43.l
	v_mov_b16_e64 v176.l, v43.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v18, v83, v18 :: v_dual_mul_f32 v23, v100, v23
	v_dual_mul_f32 v155, v17, v43 :: v_dual_mul_f32 v156, v10, v156
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v43.h, v47.l
	v_mov_b16_e64 v158.h, v157.l
	v_mov_b16_e64 v159.h, v158.l
	v_mov_b16_e64 v160.h, v159.l
	v_mov_b16_e64 v161.h, v160.l
	v_mov_b16_e64 v162.h, v161.l
	v_mov_b16_e64 v163.h, v162.l
	v_mov_b16_e64 v164.h, v163.l
	v_mov_b16_e64 v165.h, v164.l
	v_mov_b16_e64 v166.h, v165.l
	v_mov_b16_e64 v167.h, v166.l
	v_mov_b16_e64 v168.h, v167.l
	v_mov_b16_e64 v154.h, v148.l
	v_mov_b16_e64 v180.h, v152.l
	v_mov_b16_e64 v181.h, v153.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v14, v83, v14 :: v_dual_add_nc_u32 v177, 0, v96
	v_dual_mul_f32 v12, v83, v12 :: v_dual_add_nc_u32 v171, 0, v97
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v157.l, v43.l
	v_mov_b16_e64 v158.l, v43.l
	v_mov_b16_e64 v159.l, v43.l
	v_mov_b16_e64 v160.l, v43.l
	v_mov_b16_e64 v161.l, v43.l
	v_mov_b16_e64 v162.l, v43.l
	v_mov_b16_e64 v163.l, v43.l
	v_mov_b16_e64 v164.l, v43.l
	v_mov_b16_e64 v165.l, v43.l
	v_mov_b16_e64 v166.l, v43.l
	v_mov_b16_e64 v167.l, v43.l
	v_mov_b16_e64 v168.l, v43.l
	v_mov_b16_e64 v170.l, v43.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v36, v83, v36 :: v_dual_mul_f32 v19, v100, v19
	v_dual_mul_f32 v37, v83, v37 :: v_dual_mul_f32 v24, v101, v24
	v_dual_mul_f32 v40, v83, v40 :: v_dual_mul_f32 v9, v102, v9
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v48.l, v43.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v25, v83, v25 :: v_dual_mul_f32 v150, v30, v150
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v148.l, v43.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v29, v83, v29
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v154.l, v43.l
	v_mov_b16_e64 v179.l, v43.l
	v_mov_b16_e64 v180.l, v43.l
	v_mov_b16_e64 v181.l, v43.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v22, v83, v22 :: v_dual_mul_f32 v149, v26, v143
	v_mul_f32_e32 v144, v28, v144
	v_dual_mul_f32 v146, v27, v145 :: v_dual_mul_f32 v145, v32, v151
	v_mul_f32_e32 v151, v20, v176
	v_dual_mul_f32 v169, v39, v169 :: v_dual_mul_f32 v176, v18, v43
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v43.h, v46.l
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v152, v25, v48
	v_dual_mul_f32 v153, v29, v148 :: v_dual_mul_f32 v154, v19, v154
	v_dual_mul_f32 v148, v21, v178 :: v_dual_mul_f32 v143, v24, v181
	v_mul_f32_e32 v160, v14, v160
	v_dual_mul_f32 v47, v23, v180 :: v_dual_mul_f32 v158, v12, v158
	v_dual_mul_f32 v48, v22, v179 :: v_dual_mul_f32 v157, v11, v157
	v_dual_mul_f32 v162, v16, v162 :: v_dual_mul_f32 v159, v13, v159
	v_dual_mul_f32 v164, v34, v164 :: v_dual_mul_f32 v161, v15, v161
	v_dual_mul_f32 v166, v36, v166 :: v_dual_mul_f32 v163, v33, v163
	v_dual_mul_f32 v168, v38, v168 :: v_dual_mul_f32 v165, v35, v165
	v_dual_mul_f32 v170, v40, v170 :: v_dual_mul_f32 v167, v37, v167
	v_mul_f32_e32 v46, v9, v43
	.loc	1 694 30                        ; attention.py:694:30
	s_mov_b32 s82, s70
	s_mov_b32 s83, s71
	.loc	1 685 25                        ; attention.py:685:25
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v141, v141, v141
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v31, 0xff800000, v172, s17
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v172, 0xff800000, v173, s15
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v173, 0xff800000, v174, s16
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v174, 0xff800000, v175, s14
	.loc	1 684 35                        ; attention.py:684:35
	ds_store_b32 v44, v31
	ds_store_b32 v103, v172
	ds_store_b32 v104, v173
	ds_store_b32 v105, v174
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v31
	v_cmp_neq_f32_e64 s7, 0xff800000, v172
	v_cmp_neq_f32_e64 s8, 0xff800000, v173
	v_cmp_neq_f32_e64 s9, 0xff800000, v174
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s22, s17, vcc_lo
	s_and_b32 s17, s15, s7
	v_cndmask_b32_e64 v172, 0, 1, s22
	s_and_b32 s18, s16, s8
	v_cndmask_b32_e64 v173, 0, 1, s17
	s_and_b32 s19, s14, s9
	v_cndmask_b32_e64 v174, 0, 1, s18
	.loc	1 684 35                        ; attention.py:684:35
	s_barrier
	ds_load_2addr_b32 v[9:10], v45 offset1:32
	ds_load_2addr_b32 v[33:34], v106 offset1:32
	ds_load_2addr_b32 v[35:36], v107 offset1:32
	ds_load_2addr_b32 v[37:38], v108 offset1:32
	ds_load_2addr_b32 v[23:24], v109 offset1:32
	ds_load_2addr_b32 v[25:26], v110 offset1:32
	ds_load_2addr_b32 v[27:28], v111 offset1:32
	ds_load_2addr_b32 v[29:30], v112 offset1:32
	ds_load_2addr_b32 v[39:40], v113 offset1:32
	ds_load_2addr_b32 v[15:16], v114 offset1:32
	ds_load_2addr_b32 v[17:18], v115 offset1:32
	ds_load_2addr_b32 v[19:20], v116 offset1:32
	ds_load_2addr_b32 v[21:22], v117 offset1:32
	ds_load_2addr_b32 v[11:12], v118 offset1:32
	ds_load_2addr_b32 v[13:14], v119 offset1:32
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v175, 0, 1, s19
	.loc	1 684 35                        ; attention.py:684:35
	ds_load_2addr_b32 v[31:32], v120 offset1:32
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v177, v172
	ds_store_b8 v121, v173
	ds_store_b8 v122, v174
	ds_store_b8 v123, v175
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16_hi v43, v171
	ds_load_u16_d16 v181, v171 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v181, v124
	ds_load_u16_d16 v182, v124 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v182, v125
	ds_load_u16_d16 v183, v125 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v183, v126
	ds_load_u16_d16 v184, v126 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v184, v127
	ds_load_u16_d16 v185, v127 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v185, v128
	ds_load_u16_d16 v186, v128 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v186, v129
	ds_load_u16_d16 v187, v129 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v187, v130
	ds_load_u16_d16 v188, v130 offset:32
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v178, 0x3fb8aa3b, v38
	v_dual_mul_f32 v38, 0x3fb8aa3b, v9 :: v_dual_mul_f32 v177, 0x3fb8aa3b, v24
	v_mul_f32_e32 v24, 0x3fb8aa3b, v26
	.loc	1 685 25                        ; attention.py:685:25
	v_lshrrev_b16 v9.l, 8, v43.h
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v39, 0x3fb8aa3b, v39 :: v_dual_mul_f32 v200, 0x3fb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_fmac_f32_e32 v177, s91, v159
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	v_lshrrev_b16 v10.h, 8, v181.h
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v172, 0x3fb8aa3b, v22 :: v_dual_mul_f32 v171, 0x3fb8aa3b, v12
	.loc	1 685 25                        ; attention.py:685:25
	v_lshrrev_b16 v12.h, 8, v182.h
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v26, 0x3fb8aa3b, v30 :: v_dual_mul_f32 v175, 0x3fb8aa3b, v40
	v_dual_mul_f32 v40, 0x3fb8aa3b, v14 :: v_dual_mul_f32 v189, 0x3fb8aa3b, v29
	.loc	1 685 25                        ; attention.py:685:25
	v_lshrrev_b16 v14.h, 8, v183.h
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v174, 0x3fb8aa3b, v28 :: v_dual_mul_f32 v173, 0x3fb8aa3b, v18
	v_dual_mul_f32 v28, 0x3fb8aa3b, v16 :: v_dual_mul_f32 v35, 0x3fb8aa3b, v35
	.loc	1 685 25                        ; attention.py:685:25
	v_lshrrev_b16 v16.h, 8, v184.h
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v180, 0x3fb8aa3b, v34 :: v_dual_mul_f32 v179, 0x3fb8aa3b, v36
	v_dual_mul_f32 v34, 0x3fb8aa3b, v32 :: v_dual_mul_f32 v191, 0x3fb8aa3b, v25
	v_dual_mul_f32 v36, 0x3fb8aa3b, v37 :: v_dual_mul_f32 v197, 0x3fb8aa3b, v31
	v_dual_mul_f32 v190, 0x3fb8aa3b, v27 :: v_dual_mul_f32 v193, 0x3fb8aa3b, v21
	v_dual_mul_f32 v192, 0x3fb8aa3b, v23 :: v_dual_mul_f32 v195, 0x3fb8aa3b, v17
	v_dual_mul_f32 v194, 0x3fb8aa3b, v19 :: v_dual_fmac_f32 v179, s91, v157
	v_dual_mul_f32 v198, 0x3fb8aa3b, v13 :: v_dual_fmac_f32 v39, s91, v155
	v_mul_f32_e32 v199, 0x3fb8aa3b, v11
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v9.h, 1, v43.h
	v_lshrrev_b16 v10.l, 8, v181.l
	v_lshrrev_b16 v11.h, 8, v182.l
	v_lshrrev_b16 v13.h, 8, v183.l
	v_lshrrev_b16 v16.l, 8, v184.l
	v_lshrrev_b16 v17.l, 8, v185.l
	v_lshrrev_b16 v17.h, 8, v185.h
	v_lshrrev_b16 v18.l, 8, v186.l
	v_lshrrev_b16 v18.h, 8, v186.h
	s_waitcnt lgkmcnt(1)
	v_lshrrev_b16 v19.l, 8, v187.l
	v_lshrrev_b16 v19.h, 8, v187.h
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b16 v25.l, 8, v188.l
	v_and_b16 v27.l, 1, v9.l
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v30, 0x3fb8aa3b, v20 :: v_dual_mul_f32 v37, 0x3fb8aa3b, v33
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v11.l, 1, v181.h
	v_and_b16 v29.l, 1, v10.h
	v_and_b16 v13.l, 1, v182.h
	v_and_b16 v31.l, 1, v12.h
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v196, 0x3fb8aa3b, v15 :: v_dual_fmac_f32 v173, s91, v165
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v15.h, 1, v183.h
	v_and_b16 v32.l, 1, v14.h
	v_and_b16 v21.l, 1, v184.h
	v_and_b16 v33.l, 1, v16.h
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v26, s91, v162 :: v_dual_fmac_f32 v189, s67, v145
	v_dual_fmac_f32 v40, s91, v169 :: v_dual_fmac_f32 v197, s104, v143
	v_fmac_f32_e32 v38, s91, v152
	v_fmac_f32_e32 v36, s67, v144
	v_fmac_f32_e32 v200, s67, v46
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v12.l, 1, v181.l
	v_and_b16 v15.l, 1, v182.l
	v_and_b16 v14.l, 1, v183.l
	v_and_b16 v22.l, 1, v184.l
	v_and_b16 v22.h, 1, v185.l
	v_and_b16 v20.l, 1, v185.h
	v_and_b16 v23.l, 1, v186.l
	v_and_b16 v20.h, 1, v186.h
	v_and_b16 v23.h, 1, v187.l
	v_and_b16 v21.h, 1, v187.h
	v_and_b16 v25.h, 1, v188.l
	v_and_b16 v27.h, 1, v10.l
	v_and_b16 v29.h, 1, v11.h
	v_and_b16 v31.h, 1, v13.h
	v_and_b16 v32.h, 1, v16.l
	v_and_b16 v33.h, 1, v17.l
	v_and_b16 v43.h, 1, v17.h
	v_and_b16 v143.l, 1, v18.l
	v_and_b16 v143.h, 1, v18.h
	v_and_b16 v144.l, 1, v19.l
	v_and_b16 v144.h, 1, v19.h
	v_and_b16 v145.l, 1, v25.l
	v_cmp_eq_u16_e64 s20, 1, v9.h
	v_cmp_eq_u16_e64 s25, 1, v27.l
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v180, s91, v156 :: v_dual_fmac_f32 v175, s91, v163
	v_dual_fmac_f32 v24, s91, v160 :: v_dual_fmac_f32 v37, s103, v149
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s21, 1, v11.l
	v_cmp_eq_u16_e64 s30, 1, v29.l
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v174, s91, v161 :: v_dual_fmac_f32 v35, s104, v146
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s15, 1, v13.l
	v_cmp_eq_u16_e64 s27, 1, v31.l
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v178, s91, v158 :: v_dual_fmac_f32 v171, s91, v168
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s16, 1, v15.h
	v_cmp_eq_u16_e64 s34, 1, v32.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v192, s91, v153
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s14, 1, v21.l
	v_cmp_eq_u16_e64 s26, 1, v33.l
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v28, s91, v164 :: v_dual_fmac_f32 v191, s103, v150
	v_dual_fmac_f32 v30, s91, v166 :: v_dual_fmac_f32 v193, s67, v148
	v_dual_fmac_f32 v172, s91, v167 :: v_dual_fmac_f32 v195, s103, v154
	v_dual_fmac_f32 v34, s91, v170 :: v_dual_fmac_f32 v199, s91, v48
	v_fmac_f32_e32 v190, s104, v147
	v_fmac_f32_e32 v196, s91, v176
	v_fmac_f32_e32 v194, s104, v151
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v19, 0xff800000, v38, s20
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s11, 1, v21.h
	v_cmp_eq_u16_e64 s10, 1, v20.h
	v_cmp_eq_u16_e64 s13, 1, v20.l
	v_cmp_eq_u16_e64 s9, 1, v12.l
	v_cmp_eq_u16_e32 vcc_lo, 1, v22.h
	v_cmp_eq_u16_e64 s7, 1, v22.l
	v_cmp_eq_u16_e64 s8, 1, v14.l
	v_cmp_eq_u16_e64 s12, 1, v15.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v198, s103, v47
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s23, 1, v25.h
	v_cmp_eq_u16_e64 s24, 1, v23.h
	v_cmp_eq_u16_e64 s40, 1, v23.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v38, 0xff800000, v200, s25
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s36, 1, v43.h
	v_cmp_eq_u16_e64 s28, 1, v143.h
	v_cmp_eq_u16_e64 s38, 1, v144.h
	v_cmp_eq_u16_e64 s29, 1, v27.h
	v_cmp_eq_u16_e64 s31, 1, v29.h
	v_cmp_eq_u16_e64 s33, 1, v31.h
	v_cmp_eq_u16_e64 s41, 1, v32.h
	v_cmp_eq_u16_e64 s35, 1, v33.h
	v_cmp_eq_u16_e64 s37, 1, v143.l
	v_cmp_eq_u16_e64 s39, 1, v144.l
	v_cmp_eq_u16_e64 s42, 1, v145.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v18, 0xff800000, v37, s21
	v_cndmask_b32_e64 v37, 0xff800000, v180, s30
	v_cndmask_b32_e64 v17, 0xff800000, v35, s15
	v_cndmask_b32_e64 v35, 0xff800000, v179, s27
	v_cndmask_b32_e64 v16, 0xff800000, v36, s16
	v_cndmask_b32_e64 v23, 0xff800000, v178, s34
	v_cndmask_b32_e64 v21, 0xff800000, v192, s14
	v_cndmask_b32_e64 v22, 0xff800000, v177, s26
	v_cndmask_b32_e64 v10, 0xff800000, v189, s11
	v_cndmask_b32_e64 v11, 0xff800000, v190, s10
	v_cndmask_b32_e64 v20, 0xff800000, v191, s13
	v_cndmask_b32_e64 v12, 0xff800000, v39, s9
	v_cndmask_b32_e32 v9, 0xff800000, v193, vcc_lo
	v_cndmask_b32_e64 v13, 0xff800000, v194, s7
	v_cndmask_b32_e64 v14, 0xff800000, v195, s8
	v_cndmask_b32_e64 v15, 0xff800000, v196, s12
	v_cndmask_b32_e64 v36, 0xff800000, v197, s23
	v_cndmask_b32_e64 v39, 0xff800000, v198, s24
	v_cndmask_b32_e64 v46, 0xff800000, v199, s40
	v_cndmask_b32_e64 v24, 0xff800000, v24, s36
	v_cndmask_b32_e64 v25, 0xff800000, v174, s28
	v_cndmask_b32_e64 v26, 0xff800000, v26, s38
	v_cndmask_b32_e64 v27, 0xff800000, v175, s29
	v_cndmask_b32_e64 v28, 0xff800000, v28, s31
	v_cndmask_b32_e64 v29, 0xff800000, v173, s33
	v_cndmask_b32_e64 v30, 0xff800000, v30, s41
	v_cndmask_b32_e64 v31, 0xff800000, v172, s35
	v_cndmask_b32_e64 v32, 0xff800000, v171, s37
	v_cndmask_b32_e64 v33, 0xff800000, v40, s39
	v_cndmask_b32_e64 v34, 0xff800000, v34, s42
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b32 v45, v19, v38 offset1:32
	ds_store_2addr_b32 v106, v18, v37 offset1:32
	ds_store_2addr_b32 v107, v17, v35 offset1:32
	ds_store_2addr_b32 v108, v16, v23 offset1:32
	ds_store_2addr_b32 v109, v21, v22 offset1:32
	ds_store_2addr_b32 v110, v20, v24 offset1:32
	ds_store_2addr_b32 v111, v11, v25 offset1:32
	ds_store_2addr_b32 v112, v10, v26 offset1:32
	ds_store_2addr_b32 v113, v12, v27 offset1:32
	ds_store_2addr_b32 v114, v15, v28 offset1:32
	ds_store_2addr_b32 v115, v14, v29 offset1:32
	ds_store_2addr_b32 v116, v13, v30 offset1:32
	ds_store_2addr_b32 v117, v9, v31 offset1:32
	ds_store_2addr_b32 v118, v46, v32 offset1:32
	ds_store_2addr_b32 v119, v39, v33 offset1:32
	ds_store_2addr_b32 v120, v36, v34 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v44, v44
	ds_load_b32 v45, v103
	ds_load_b32 v47, v104
	ds_load_b32 v48, v105
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v161, v30, v31 :: v_dual_add_nc_u32 v152, s87, v77
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v151, v36, v38, v37
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp6:
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v153, 4, v152
	v_add_nc_u32_e32 v155, 12, v152
	v_add_nc_u32_e32 v157, 20, v152
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v158, v35, v23, v22
	v_max3_f32 v159, v24, v25, v26
	v_max3_f32 v160, v27, v28, v29
.Ltmp8:
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s87, s87, 64
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v40, v44 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v144, v45 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v145, v47 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v147, v48 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v143, v44, v44
	v_max_f32_e32 v40, v40, v40
	v_max_f32_e32 v146, v45, v45
	v_max_f32_e32 v144, v144, v144
	v_dual_max_f32 v148, v47, v47 :: v_dual_max_f32 v145, v145, v145
	v_max_f32_e32 v149, v48, v48
	v_max_f32_e32 v147, v147, v147
	v_max_f32_e32 v40, v143, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v143, v146, v144 :: v_dual_max_f32 v144, v148, v145
	v_max3_f32 v150, v9, v46, v39
	v_max_f32_e32 v145, v149, v147
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v147, v143 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v149, v145 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v147, v147, v147
	v_max_f32_e32 v149, v149, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v143, v143, v147
	v_max_f32_e32 v145, v145, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v147, v143 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v149, v145 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v147, v147, v147
	v_max_f32_e32 v149, v149, v149
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v148, v144 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v143, v143, v147
	v_max_f32_e32 v145, v145, v149
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v146, v40 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v147, v143 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v148, v148, v148
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v149, v145 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v146, v146, v146 :: v_dual_max_f32 v147, v147, v147
	v_dual_max_f32 v144, v144, v148 :: v_dual_max_f32 v149, v149, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v40, v40, v146 :: v_dual_max_f32 v143, v143, v147
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v148, v144 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v145, v145, v149
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v146, v40 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v147, v143, -1, -1 op_sel:[1,0]
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v148, v148, v148
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v149, v145, -1, -1 op_sel:[1,0]
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v146, v146, v146 :: v_dual_max_f32 v147, v147, v147
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v144, v144, v148 :: v_dual_max_f32 v149, v149, v149
	v_dual_max_f32 v40, v40, v146 :: v_dual_max_f32 v143, v143, v147
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v148, v144 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v145, v145, v149
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v146, v40 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s45, v143, 31
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v149, v15, v14, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s47, v145, 31
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v146, v146, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v40, v40, v146
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v146, v40, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v146, v146, v146
	v_max_f32_e32 v40, v40, v146
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v146, s47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_readlane_b32 s43, v40, 31
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v148, v148, v148
	v_dual_max_f32 v40, v19, v18 :: v_dual_mov_b32 v143, s43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v144, v144, v148
.Ltmp37:
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s43, 0xff800000, v41
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v148, v144, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v148, v148, v148
	v_max_f32_e32 v144, v144, v148
	v_max3_f32 v148, v11, v10, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s46, v144, 31
	v_dual_mov_b32 v144, s45 :: v_dual_mov_b32 v145, s46
	ds_store_b128 v131, v[143:146]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[144:147], v132
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v143, v16, v21, v20
.Ltmp42:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v40, v40, v17, v143
	v_max3_f32 v143, v149, v150, v151
	v_max3_f32 v150, v158, v159, v160
	v_max3_f32 v40, v40, v148, v143
	v_dual_max_f32 v143, v144, v144 :: v_dual_max_f32 v162, v33, v34
.Ltmp44:
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v159, 32, v152
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_dual_mov_b32 v149, v144 :: v_dual_add_nc_u32 v156, 16, v152
	v_mov_b32_e32 v167, v147
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v151, v161, v32, v162
.Ltmp47:
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v161, 40, v152
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v149, v149 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v165, 52, v152
	v_add_nc_u32_e32 v158, 28, v152
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v40, v40, v150, v151
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v150, v145
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v144, v149, v149
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v167, v167 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v163, 24, v152
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v148, v40, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_mov_b32_dpp v150, v150 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v149, v143, v144
.Ltmp57:
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v143, v42, v42 :: v_dual_add_nc_u32 v160, 36, v152
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v144, v41, v40, v148
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_dual_mov_b32 v148, v146 :: v_dual_max_f32 v141, v141, v149
.Ltmp59:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v138, v138, v145, v150
	v_max3_f32 v140, v140, v147, v167
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v40, v41, v144
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v148, v148 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp61:
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v147, v45, v138 :: v_dual_add_nc_u32 v162, 44, v152
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v143, v143, v149
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v139, v139, v146, v148
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v146, v44, v141 :: v_dual_sub_f32 v167, v19, v144
	v_sub_f32_e32 v48, v48, v140
	.loc	1 689 74                        ; attention.py:689:74
	v_dual_sub_f32 v151, v42, v143 :: v_dual_add_nc_u32 v154, 8, v152
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v148, v47, v139 :: v_dual_sub_f32 v45, v16, v144
	v_sub_f32_e32 v44, v17, v144
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v40, 0, v40, s43
	v_cmp_neq_f32_e64 s43, 0xff800000, v42
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v42, v18, v144
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v16, v146
	v_exp_f32_e32 v17, v147
	v_exp_f32_e32 v18, v148
	v_exp_f32_e32 v19, v48
	.loc	1 689 61 is_stmt 1              ; attention.py:689:61
	v_exp_f32_e32 v151, v151
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v48, v11, v144
	v_sub_f32_e32 v146, v10, v144
	v_sub_f32_e32 v147, v12, v144
	v_sub_f32_e32 v150, v13, v144
	v_sub_f32_e32 v148, v15, v144
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v10, 0, v16, s22
	v_cndmask_b32_e64 v11, 0, v17, s17
	v_cndmask_b32_e64 v12, 0, v18, s18
	v_cndmask_b32_e64 v13, 0, v19, s19
	.loc	1 689 25 is_stmt 1              ; attention.py:689:25
	v_cndmask_b32_e64 v145, 0, v151, s43
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v151, v9, v144
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v9, v10, v10 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v10, v11, v11 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v11, v12, v12 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v12, v13, v13 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp63:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v149, v14, v144
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v9, v9, v9 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v10, v10, v10 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v11, v11, v11 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v12, v12, v12 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp65:
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s43, s55, v156
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v9, v9, v9 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v10, v10, v10 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v11, v11, v11 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v12, v12, v12 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp67:
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s45, s55, v163
.Ltmp68:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v9, v9, v9 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v10, v10, v10 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v11, v11, v11 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v12, v12, v12 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp69:
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s46, s55, v158
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v13, v9, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v14, v10, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v15, v11, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v16, v12, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v9, v9, v13 :: v_dual_add_nc_u32 v164, 48, v152
	v_dual_add_f32 v11, v11, v15 :: v_dual_add_nc_u32 v166, 56, v152
.Ltmp72:
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v47, v21, v144 :: v_dual_add_f32 v10, v10, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v12, v12, v16
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s17, v9, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_readlane_b32 s19, v11, 31
	v_mad_u64_u32 v[15:16], null, s44, s86, v[62:63]
	v_readlane_b32 s18, v10, 31
	v_readlane_b32 s22, v12, 31
	v_dual_mov_b32 v11, s19 :: v_dual_add_nc_u32 v168, 60, v152
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp75:
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v41, v20, v144 :: v_dual_mov_b32 v10, s18
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_dual_mov_b32 v9, s17 :: v_dual_mov_b32 v12, s22
.Ltmp77:
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s17, s55, v152
	v_cmp_gt_i32_e64 s18, s55, v153
	v_cmp_gt_i32_e64 s19, s55, v154
	v_cmp_gt_i32_e64 s22, s55, v155
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	ds_store_b128 v131, v[9:12]
.Ltmp79:
	.loc	1 694 30                        ; attention.py:694:30
	v_lshlrev_b32_e32 v9, 1, v15
	v_add_lshl_u32 v10, v15, s99, 1
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s17, s2, s17
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v11, v15, s100, 1
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s44, s55, v157
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v9, 0x80000000, v9, s17
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s17, s2, s18
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v13, v15, s102, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s17
	s_mul_i32 s17, s86, 12
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s47, s55, v159
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v12, v15, s17, 1
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s17, s2, s19
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	s_waitcnt lgkmcnt(0)
.Ltmp81:
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v11, 0x80000000, v11, s17
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s17, s2, s22
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	s_barrier
.Ltmp83:
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v20, 0x80000000, v12, s17
	s_mul_i32 s17, s86, 20
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s48, s55, v160
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v12, v15, s17, 1
	s_mul_i32 s17, s86, 24
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s49, s55, v161
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v14, v15, s17, 1
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s17, s2, s43
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s50, s55, v162
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e64 v16, 0x80000000, v13, s17
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s17, s2, s44
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s51, s55, v164
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e64 v17, 0x80000000, v12, s17
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s17, s2, s45
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v170, v22, v144
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v18, 0x80000000, v14, s17
	s_mul_i32 s17, s86, 28
	s_clause 0x5
	buffer_load_u16 v12, v9, s[80:83], 0 offen
	buffer_load_u16 v13, v10, s[80:83], 0 offen
	buffer_load_u16 v14, v11, s[80:83], 0 offen
	buffer_load_u16 v9, v16, s[80:83], 0 offen
	buffer_load_u16 v10, v17, s[80:83], 0 offen
	buffer_load_u16 v11, v18, s[80:83], 0 offen
	v_add_lshl_u32 v19, v15, s17, 1
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s17, s2, s46
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v16, v15, s66, 1
	v_add_lshl_u32 v18, v15, s3, 1
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s52, s55, v165
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v21, 0x80000000, v19, s17
	s_mul_i32 s17, s86, 36
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v169, v23, v144
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v17, v15, s17, 1
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s17, s2, s47
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s53, s55, v166
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e64 v16, 0x80000000, v16, s17
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s17, s2, s48
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v23, v15, s96, 1
	v_cndmask_b32_e64 v19, 0x80000000, v17, s17
	v_add_lshl_u32 v17, v15, s93, 1
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s17, s2, s49
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v171, v24, v144
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v22, 0x80000000, v18, s17
	v_add_lshl_u32 v18, v15, s95, 1
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s17, s2, s50
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s54, s55, v168
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e64 v24, 0x80000000, v17, s17
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s17, s2, s51
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v153, v15, s97, 1
	v_cndmask_b32_e64 v152, 0x80000000, v18, s17
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s17, s2, s52
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v154, v15, s101, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s17
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s17, s2, s53
	.loc	1 694 30                        ; attention.py:694:30
	s_clause 0x4
	buffer_load_u16 v17, v16, s[80:83], 0 offen
	buffer_load_u16 v18, v19, s[80:83], 0 offen
	buffer_load_u16 v19, v22, s[80:83], 0 offen
	buffer_load_u16 v15, v152, s[80:83], 0 offen
	buffer_load_u16 v16, v23, s[80:83], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v153, s17
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s17, s2, s54
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v153, v26, v144
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v152, 0x80000000, v154, s17
	s_clause 0x4
	buffer_load_u16 v20, v20, s[80:83], 0 offen
	buffer_load_u16 v21, v21, s[80:83], 0 offen
	buffer_load_u16 v22, v24, s[80:83], 0 offen
	buffer_load_u16 v23, v23, s[80:83], 0 offen
	buffer_load_u16 v24, v152, s[80:83], 0 offen
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v152, v25, v144
	v_sub_f32_e32 v154, v27, v144
	v_sub_f32_e32 v155, v28, v144
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	ds_load_b128 v[25:28], v132
.Ltmp85:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v156, v167
	v_exp_f32_e32 v45, v45
	s_waitcnt lgkmcnt(0)
	v_exp_f32_e32 v27, v41
	v_exp_f32_e32 v41, v48
	v_exp_f32_e32 v48, v146
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v32, v32, v144
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v44, v44
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v30, v30, v144
	v_sub_f32_e32 v34, v34, v144
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v162, v32
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v28, 0, v156, s20
	v_cndmask_b32_e64 v32, 0, v45, s16
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v161, v30
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v30.h, v43.l
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v164, v34
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v30.l, v28.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v37, v37, v144
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v26, v25
.Ltmp87:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v34.h, v43.l
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v27, 0, v27, s13
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v30, 1, v30
	v_cmp_o_f32_e64 s13, v32, v32
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v26, v26 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp89:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v39, v39, v144
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v147, v147
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v30, v28, v30, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v148, v148
.Ltmp90:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v146, v25, v26
.Ltmp91:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v25, 0, v42, s21
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v26.h, v43.l
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v31, v31, v144
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v149, v149
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fmac_f32_e32 v146, v142, v145
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v26.l, v25.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v33, v33, v144
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v1, v1, v40
	v_mul_f32_e32 v2, v2, v40
	v_mov_b32_e32 v142, v146
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v26, 1, v26
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v163, v33
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v33, 0, v44, s15
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s15, v25, v25
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v3, v3, v40
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v26, v25, v26, 0x7fff
	v_mov_b16_e32 v25.l, v32.h
	v_mov_b16_e32 v25.h, v43.l
	v_mov_b16_e32 v34.l, v33.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v35, v35, v144
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v26.h, 0x7fff, v26.h, s15
	v_cmp_o_f32_e64 s15, v28, v28
	v_and_b32_e32 v25, 1, v25
	v_and_b32_e32 v28, 1, v34
	v_mov_b16_e32 v34.l, v27.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v157, v35
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v35, 0, v47, s14
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v25, v32, v25, 0x7fff
	v_cndmask_b16 v26.l, 0x7fff, v30.h, s15
	v_add3_u32 v30, v33, v28, 0x7fff
	v_mov_b16_e32 v32.h, v43.l
	v_mov_b16_e32 v32.l, v35.h
	v_cndmask_b16 v28.h, 0x7fff, v25.h, s13
	v_and_b32_e32 v25, 1, v34
	v_cmp_o_f32_e64 s13, v33, v33
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v33, 0, v48, s11
	v_cndmask_b32_e64 v34, 0, v41, s10
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s10, v27, v27
	v_add3_u32 v25, v27, v25, 0x7fff
	v_mov_b16_e32 v27.h, v43.l
	v_mov_b16_e32 v27.l, v33.h
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v4, v4, v40
	v_mul_f32_e32 v5, v5, v40
	v_mul_f32_e32 v6, v6, v40
	v_mul_f32_e32 v7, v7, v40
	v_mul_f32_e32 v8, v8, v40
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v32, 1, v32
	v_mov_b16_e32 v40.l, v34.h
	v_mov_b16_e32 v40.h, v43.l
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v38, v38, v144 :: v_dual_and_b32 v27, 1, v27
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v32, v35, v32, 0x7fff
	v_cmp_o_f32_e64 s11, v35, v35
	v_cndmask_b16 v28.l, 0x7fff, v30.h, s13
	v_cndmask_b16 v30.h, 0x7fff, v25.h, s10
	v_and_b32_e32 v25, 1, v40
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v35, 0, v148, s12
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v27, v33, v27, 0x7fff
	v_cmp_o_f32_e64 s10, v33, v33
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v33, 0, v147, s9
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v150, v150
	v_exp_f32_e32 v38, v38
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cndmask_b16 v30.l, 0x7fff, v32.h, s11
	v_add3_u32 v25, v34, v25, 0x7fff
	v_mov_b16_e32 v40.l, v35.h
	v_cndmask_b16 v32.h, 0x7fff, v27.h, s10
	v_cmp_o_f32_e64 s9, v34, v34
	v_mov_b16_e32 v27.l, v33.h
	v_mov_b16_e32 v27.h, v43.l
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v41, 0, v149, s8
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v46, v46, v144
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v34, 1, v40
	v_cndmask_b16 v32.l, 0x7fff, v25.h, s9
	v_and_b32_e32 v25, 1, v27
	v_mov_b16_e32 v42.l, v41.h
	v_mov_b16_e32 v42.h, v43.l
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v46, v46
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v40, 0, v150, s7
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v27, v35, v34, 0x7fff
	v_cmp_o_f32_e64 s7, v35, v35
	v_add3_u32 v25, v33, v25, 0x7fff
	v_cmp_o_f32_e64 s8, v33, v33
	v_and_b32_e32 v35, 1, v42
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v38, 0, v38, s25
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v33.h, 0x7fff, v27.h, s7
	v_cmp_o_f32_e64 s7, v41, v41
	v_cndmask_b16 v33.l, 0x7fff, v25.h, s8
	v_add3_u32 v25, v41, v35, 0x7fff
	v_mov_b16_e32 v41.l, v38.h
	v_mov_b16_e32 v41.h, v43.l
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v36, v36, v144
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v34.l, v40.h
	v_mov_b16_e32 v34.h, v43.l
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v151, v151
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v27, 0, v46, s40
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v39, v39
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v34, 1, v34
	v_mov_b16_e32 v35.h, v43.l
	v_mov_b16_e32 v35.l, v27.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v158, v169
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v34, v40, v34, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e32 v42, 0, v151, vcc_lo
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	v_and_b32_e32 v35, 1, v35
	v_cndmask_b16 v34.l, 0x7fff, v25.h, s7
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v25, 0, v36, s23
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v40.l, v42.h
	v_mov_b16_e32 v40.h, v43.l
	v_cndmask_b16 v34.h, 0x7fff, v34.h, vcc_lo
	v_add3_u32 v35, v27, v35, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v27, 0, v39, s24
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v39.l, v25.h
	v_mov_b16_e32 v39.h, v43.l
	v_and_b32_e32 v36, 1, v40
	v_cndmask_b16 v35.h, 0x7fff, v35.h, vcc_lo
	v_mov_b16_e32 v40.l, v27.h
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v36, v42, v36, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v37, 0, v37, s30
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v40, 1, v40
	v_cmp_o_f32_e64 s7, v25, v25
	v_add3_u32 v39, v25, v39, 0x7fff
	v_mov_b16_e32 v25.h, v43.l
	v_mov_b16_e32 v25.l, v37.h
	v_cndmask_b16 v35.l, 0x7fff, v36.h, vcc_lo
	v_add3_u32 v40, v27, v40, 0x7fff
	v_cndmask_b16 v36.h, 0x7fff, v39.h, s7
	v_and_b32_e32 v39, 1, v41
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v41, 0, v157, s27
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v27, 0, v158, s34
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v159, v170
	v_exp_f32_e32 v160, v171
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v25, 1, v25
	v_mov_b16_e32 v42.l, v41.h
	v_mov_b16_e32 v42.h, v43.l
	v_mov_b16_e32 v44.l, v27.h
	v_mov_b16_e32 v44.h, v43.l
	v_add3_u32 v39, v38, v39, 0x7fff
	v_add3_u32 v25, v37, v25, 0x7fff
	v_cmp_o_f32_e64 s7, v37, v37
	v_cmp_o_f32_e64 s8, v38, v38
	v_and_b32_e32 v38, 1, v42
	v_cndmask_b16 v36.l, 0x7fff, v40.h, vcc_lo
	v_and_b32_e32 v40, 1, v44
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v152, v152
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v37.h, 0x7fff, v25.h, s7
	v_cndmask_b16 v37.l, 0x7fff, v39.h, s8
	v_add3_u32 v25, v41, v38, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v39, 0, v160, s36
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v38, v27, v40, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v40, 0, v159, s26
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_cmp_o_f32_e64 s7, v41, v41
	v_mov_b16_e32 v27.l, v39.h
	v_mov_b16_e32 v27.h, v43.l
	v_mov_b16_e32 v41.l, v40.h
	v_mov_b16_e32 v41.h, v43.l
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v153, v153
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v38.l, 0x7fff, v25.h, s7
	v_and_b32_e32 v25, 1, v27
	v_cndmask_b16 v38.h, 0x7fff, v38.h, vcc_lo
	v_and_b32_e32 v27, 1, v41
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v41, 0, v152, s28
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e32 vcc_lo, v39, v39
	v_add3_u32 v25, v39, v25, 0x7fff
	v_mov_b16_e32 v39.h, v43.l
	v_add3_u32 v27, v40, v27, 0x7fff
	v_mov_b16_e32 v39.l, v41.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v42, 0, v153, s38
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s7, v40, v40
	v_cndmask_b16 v151.h, 0x7fff, v25.h, vcc_lo
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v31, v31
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v25, 1, v39
	v_mov_b16_e32 v44.l, v42.h
	v_cndmask_b16 v151.l, 0x7fff, v27.h, s7
	v_cmp_o_f32_e64 s7, v41, v41
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_add3_u32 v25, v41, v25, 0x7fff
	v_and_b32_e32 v44, 1, v44
	v_mov_b16_e32 v41.h, v43.l
	v_mov_b16_e32 v40.h, v43.l
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v152.l, 0x7fff, v25.h, s7
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v25, 0, v161, s41
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v39, v42, v44, 0x7fff
	v_mov_b16_e32 v42.h, v43.l
	v_mov_b16_e32 v44.h, v43.l
	.loc	1 694 30                        ; attention.py:694:30
	s_barrier
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v42.l, v25.h
	v_cndmask_b16 v152.h, 0x7fff, v39.h, vcc_lo
	v_cmp_o_f32_e64 s8, v25, v25
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(15)
	ds_store_b16 v133, v12
	s_waitcnt vmcnt(14)
	ds_store_b16 v133, v13 offset:512
	s_waitcnt vmcnt(13)
	ds_store_b16 v133, v14 offset:1024
	s_waitcnt vmcnt(12)
	ds_store_b16 v133, v9 offset:2048
	s_waitcnt vmcnt(11)
	ds_store_b16 v133, v10 offset:2560
	s_waitcnt vmcnt(10)
	ds_store_b16 v133, v11 offset:3072
	s_waitcnt vmcnt(9)
	ds_store_b16 v133, v17 offset:4096
	s_waitcnt vmcnt(8)
	ds_store_b16 v133, v18 offset:4608
	s_waitcnt vmcnt(7)
	ds_store_b16 v133, v19 offset:5120
	s_waitcnt vmcnt(6)
	ds_store_b16 v133, v15 offset:6144
	s_waitcnt vmcnt(5)
	ds_store_b16 v133, v16 offset:6656
	s_waitcnt vmcnt(4)
	ds_store_b16 v134, v20
	s_waitcnt vmcnt(3)
	ds_store_b16 v135, v21
	s_waitcnt vmcnt(2)
	ds_store_b16 v136, v22
	s_waitcnt vmcnt(1)
	ds_store_b16 v133, v23 offset:7168
	s_waitcnt vmcnt(0)
	ds_store_b16 v137, v24
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v42, 1, v42
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v155, v155
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v45.h, v43.l
	v_permlanex16_b32 v46, v35, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v48, v36, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v167, v37, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v168, v38, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v158, v151, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v157, v152, vcc_hi, 0xfedcba98 op_sel:[1,0]
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v39, 0, v155, s31
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v47, v48, v36, v63
	v_perm_b32 v48, v48, v36, v98
	v_perm_b32 v17, v167, v37, v63
	v_perm_b32 v18, v167, v37, v98
	v_mov_b16_e32 v41.l, v39.h
	v_cmp_o_f32_e32 vcc_lo, v39, v39
	v_perm_b32 v19, v168, v38, v63
	v_perm_b32 v20, v168, v38, v98
	v_perm_b32 v21, v158, v151, v63
	v_and_b32_e32 v41, 1, v41
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v154, v154
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v22, v158, v151, v98
	v_perm_b32 v23, v157, v152, v63
	v_perm_b32 v24, v157, v152, v98
	v_add3_u32 v41, v39, v41, 0x7fff
	v_add3_u32 v39, v25, v42, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v25, 0, v31, s35
	v_cndmask_b32_e64 v31, 0, v162, s37
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v42.h, v43.l
	v_cndmask_b16 v149.h, 0x7fff, v41.h, vcc_lo
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v27, 0, v154, s29
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v150.h, 0x7fff, v39.h, s8
	v_mov_b16_e32 v42.l, v31.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v29, v29, v144
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v39.l, v25.h
	v_mov_b16_e32 v40.l, v27.h
	v_cmp_o_f32_e64 s7, v27, v27
	v_and_b32_e32 v42, 1, v42
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v29, v29
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v39.h, v43.l
	v_and_b32_e32 v40, 1, v40
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v41, 0, v163, s39
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v42, v31, v42, 0x7fff
	v_cmp_o_f32_e64 s8, v25, v25
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v40, v27, v40, 0x7fff
	v_mov_b16_e32 v45.l, v41.h
	v_cmp_o_f32_e64 s10, v41, v41
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v29, 0, v29, s33
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s87, s88
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v149.l, 0x7fff, v40.h, s7
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v40, 0, v164, s42
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v159, v99
	ds_load_u16_d16 v160, v99 offset:256
	ds_load_u16_d16 v161, v99 offset:512
	ds_load_u16_d16 v162, v99 offset:768
	ds_load_u16_d16 v163, v99 offset:1024
	ds_load_u16_d16 v164, v99 offset:1280
	ds_load_u16_d16 v165, v99 offset:1536
	ds_load_u16_d16 v166, v99 offset:1792
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v44.l, v29.h
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	v_cmp_o_f32_e64 s7, v31, v31
	v_cmp_o_f32_e64 s9, v40, v40
	v_permlanex16_b32 v156, v149, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v27, 1, v44
	v_mov_b16_e32 v44.l, v40.h
	v_cndmask_b16 v147.h, 0x7fff, v42.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v27, v29, v27, 0x7fff
	v_and_b32_e32 v43, 1, v44
	v_add3_u32 v29, v25, v39, 0x7fff
	v_and_b32_e32 v39, 1, v45
	v_permlanex16_b32 v44, v34, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v150.l, 0x7fff, v27.h, vcc_lo
	v_add3_u32 v31, v40, v43, 0x7fff
	v_cndmask_b16 v147.l, 0x7fff, v29.h, s8
	v_add3_u32 v25, v41, v39, 0x7fff
	v_permlanex16_b32 v27, v26, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v28, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v148.h, 0x7fff, v31.h, s9
	v_permlanex16_b32 v31, v30, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v32, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v33, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v148.l, 0x7fff, v25.h, s10
	v_perm_b32 v25, v27, v26, v63
	v_perm_b32 v26, v27, v26, v98
	v_perm_b32 v27, v29, v28, v63
	v_perm_b32 v28, v29, v28, v98
	v_perm_b32 v29, v31, v30, v63
	v_perm_b32 v30, v31, v30, v98
	v_perm_b32 v31, v39, v32, v63
	v_perm_b32 v32, v39, v32, v98
	v_perm_b32 v41, v40, v33, v63
	v_perm_b32 v42, v40, v33, v98
	v_perm_b32 v43, v44, v34, v63
	v_perm_b32 v44, v44, v34, v98
	v_perm_b32 v45, v46, v35, v63
	v_perm_b32 v46, v46, v35, v98
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v159, v99 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v160, v99 offset:384
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v161, v99 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v162, v99 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v163, v99 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v164, v99 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v165, v99 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v166, v99 offset:1920
	ds_load_u16_d16 v167, v99 offset:2048
	ds_load_u16_d16 v168, v99 offset:2304
	ds_load_u16_d16 v169, v99 offset:2560
	ds_load_u16_d16 v170, v99 offset:2816
	ds_load_u16_d16 v171, v99 offset:3072
	ds_load_u16_d16 v172, v99 offset:3328
	ds_load_u16_d16 v173, v99 offset:3584
	ds_load_u16_d16 v174, v99 offset:3840
	ds_load_u16_d16 v33, v99 offset:4096
	ds_load_u16_d16 v34, v99 offset:4352
	ds_load_u16_d16 v35, v99 offset:4608
	ds_load_u16_d16 v36, v99 offset:4864
	ds_load_u16_d16 v37, v99 offset:5120
	ds_load_u16_d16 v38, v99 offset:5376
	ds_load_u16_d16 v39, v99 offset:5632
	ds_load_u16_d16 v40, v99 offset:5888
	ds_load_u16_d16 v9, v99 offset:6144
	ds_load_u16_d16 v10, v99 offset:6400
	ds_load_u16_d16 v11, v99 offset:6656
	ds_load_u16_d16 v12, v99 offset:6912
	ds_load_u16_d16 v13, v99 offset:7168
	ds_load_u16_d16 v14, v99 offset:7424
	ds_load_u16_d16 v15, v99 offset:7680
	ds_load_u16_d16 v16, v99 offset:7936
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v167, v99 offset:2176
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v168, v99 offset:2432
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v169, v99 offset:2688
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v170, v99 offset:2944
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v171, v99 offset:3200
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v172, v99 offset:3456
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v173, v99 offset:3712
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v174, v99 offset:3968
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v33, v99 offset:4224
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v34, v99 offset:4480
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v35, v99 offset:4736
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v36, v99 offset:4992
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v37, v99 offset:5248
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v38, v99 offset:5504
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v39, v99 offset:5760
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v40, v99 offset:6016
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v9, v99 offset:6272
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v10, v99 offset:6528
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v11, v99 offset:6784
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v12, v99 offset:7040
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v13, v99 offset:7296
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v14, v99 offset:7552
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v15, v99 offset:7808
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v16, v99 offset:8064
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[159:166], v[25:32], v[1:8]
	.loc	1 700 30 is_stmt 0              ; attention.py:700:30
	v_permlanex16_b32 v155, v150, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v154, v147, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v153, v148, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v25, v156, v149, v63
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[167:174], v[41:48], v[1:8]
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v26, v156, v149, v98
	v_perm_b32 v27, v155, v150, v63
	v_perm_b32 v28, v155, v150, v98
	v_perm_b32 v29, v154, v147, v63
	v_perm_b32 v30, v154, v147, v98
	v_perm_b32 v31, v153, v148, v63
	v_perm_b32 v32, v153, v148, v98
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[33:40], v[17:24], v[1:8]
	v_dual_mov_b32 v41, v144 :: v_dual_mov_b32 v42, v143
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[25:32], v[1:8]
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	s_cbranch_scc0 .LBB0_14
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 633 32                        ; attention.py:633:32
	s_add_i32 s44, s87, s90
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v150, s63 :: v_dual_add_nc_u32 v9, s87, v64
	.loc	1 633 32                        ; attention.py:633:32
	s_mul_i32 s7, s44, s85
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v48, s87, v78
	.loc	1 633 32                        ; attention.py:633:32
	v_add_nc_u32_e32 v17, s7, v51
	v_add_nc_u32_e32 v18, s7, v67
	s_mul_i32 s7, s85, 24
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v149, s62 :: v_dual_add_nc_u32 v10, 8, v9
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v20, s7, v17
	s_mul_i32 s7, s85, 40
	v_dual_mov_b32 v148, s61 :: v_dual_add_nc_u32 v11, 16, v9
	v_add_nc_u32_e32 v22, s7, v17
	s_mul_i32 s7, s85, 48
	v_dual_mov_b32 v147, s60 :: v_dual_add_nc_u32 v12, 24, v9
	v_dual_mov_b32 v146, s59 :: v_dual_add_nc_u32 v13, 32, v9
	v_dual_mov_b32 v145, s58 :: v_dual_add_nc_u32 v14, 40, v9
	v_dual_mov_b32 v144, s57 :: v_dual_add_nc_u32 v15, 48, v9
	v_add_nc_u32_e32 v23, s7, v17
	s_mul_i32 s7, s85, 56
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s8, s55, v10
	v_add_nc_u32_e32 v24, s7, v17
	v_cmp_gt_i32_e64 s7, s55, v9
	v_cmp_gt_i32_e64 s9, s55, v11
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v143, s56 :: v_dual_add_nc_u32 v16, 56, v9
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s10, s55, v12
	v_cmp_gt_i32_e64 s11, s55, v13
	v_add_nc_u32_e32 v19, s92, v17
	v_cmp_gt_i32_e64 s12, s55, v14
	v_cmp_gt_i32_e64 s13, s55, v15
	v_add_nc_u32_e32 v21, s94, v17
	.loc	1 636 30 is_stmt 0              ; attention.py:636:30
	s_and_b32 s7, s4, s7
	s_and_b32 s8, s4, s8
	s_and_b32 s9, s4, s9
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s14, s55, v16
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 s10, s4, s10
	s_and_b32 s11, s4, s11
	.loc	1 634 32 is_stmt 1              ; attention.py:634:32
	v_cndmask_b32_e64 v9, 0x80000000, v17, s7
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 s12, s4, s12
	s_and_b32 s13, s4, s13
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e64 v10, 0x80000000, v18, s8
	v_cndmask_b32_e64 v11, 0x80000000, v19, s9
	v_cndmask_b32_e64 v12, 0x80000000, v20, s10
	v_cndmask_b32_e64 v13, 0x80000000, v21, s11
	v_cndmask_b32_e64 v14, 0x80000000, v22, s12
	v_cndmask_b32_e64 v15, 0x80000000, v23, s13
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 s14, s4, s14
	.loc	1 634 32                        ; attention.py:634:32
	s_clause 0x6
	buffer_load_u8 v9, v9, s[72:75], 0 offen
	buffer_load_u8 v10, v10, s[72:75], 0 offen
	buffer_load_u8 v11, v11, s[72:75], 0 offen
	buffer_load_u8 v12, v12, s[72:75], 0 offen
	buffer_load_u8 v13, v13, s[72:75], 0 offen
	buffer_load_u8 v14, v14, s[72:75], 0 offen
	buffer_load_u8 v15, v15, s[72:75], 0 offen
	v_cndmask_b32_e64 v16, 0x80000000, v24, s14
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v169, 14, v48
	v_add_nc_u32_e32 v163, 2, v48
	v_add_nc_u32_e32 v164, 4, v48
	v_add_nc_u32_e32 v179, 34, v48
	.loc	1 634 32                        ; attention.py:634:32
	buffer_load_u8 v16, v16, s[72:75], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s31, s55, v169
	.loc	1 650 25                        ; attention.py:650:25
	v_add_lshl_u32 v169, s44, v78, 1
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s39, s55, v48
	v_cmp_gt_i32_e64 s38, s55, v163
	v_cmp_gt_i32_e64 s37, s55, v164
	v_cmp_gt_i32_e64 s21, s55, v179
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v165, 6, v48
	v_add_nc_u32_e32 v180, 36, v48
	v_add_nc_u32_e32 v166, 8, v48
	v_add_nc_u32_e32 v167, 10, v48
	v_add_nc_u32_e32 v168, 12, v48
	v_add_nc_u32_e32 v170, 16, v48
	v_add_nc_u32_e32 v171, 18, v48
	v_add_nc_u32_e32 v172, 20, v48
	v_add_nc_u32_e32 v173, 22, v48
	v_add_nc_u32_e32 v174, 24, v48
	v_add_nc_u32_e32 v175, 26, v48
	v_add_nc_u32_e32 v176, 28, v48
	v_add_nc_u32_e32 v177, 30, v48
	v_add_nc_u32_e32 v178, 32, v48
	v_add_nc_u32_e32 v181, 38, v48
	v_add_nc_u32_e32 v182, 40, v48
	v_add_nc_u32_e32 v183, 42, v48
	v_add_nc_u32_e32 v184, 44, v48
	v_add_nc_u32_e32 v185, 46, v48
	v_add_nc_u32_e32 v186, 48, v48
	v_add_nc_u32_e32 v187, 50, v48
	v_add_nc_u32_e32 v188, 52, v48
	v_add_nc_u32_e32 v189, 54, v48
	v_add_nc_u32_e32 v190, 56, v48
	v_add_nc_u32_e32 v191, 58, v48
	v_add_nc_u32_e32 v192, 60, v48
	v_add_nc_u32_e32 v193, 62, v48
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s36, s55, v165
	v_cmp_gt_i32_e64 s20, s55, v180
	v_cmp_gt_i32_e64 s35, s55, v166
	v_cmp_gt_i32_e64 s19, s55, v181
	v_cmp_gt_i32_e64 s34, s55, v167
	v_cmp_gt_i32_e64 s18, s55, v182
	v_cmp_gt_i32_e64 s33, s55, v168
	v_cmp_gt_i32_e64 s17, s55, v183
	v_cmp_gt_i32_e64 s16, s55, v184
	v_cmp_gt_i32_e64 s30, s55, v170
	v_cmp_gt_i32_e64 s15, s55, v185
	v_cmp_gt_i32_e64 s29, s55, v171
	v_cmp_gt_i32_e64 s14, s55, v186
	v_cmp_gt_i32_e64 s28, s55, v172
	v_cmp_gt_i32_e64 s13, s55, v187
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v163, 0x64, v169
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s27, s55, v173
	v_cmp_gt_i32_e64 s12, s55, v188
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v164, 0x68, v169
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s26, s55, v174
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v163, 0x80000000, v163, s13
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s11, s55, v189
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v165, 0x6c, v169
	v_cndmask_b32_e64 v164, 0x80000000, v164, s12
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s25, s55, v175
	v_cmp_gt_i32_e64 s10, s55, v190
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v166, 0x70, v169
	v_cndmask_b32_e64 v165, 0x80000000, v165, s11
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s24, s55, v176
	v_cmp_gt_i32_e64 s9, s55, v191
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v167, 0x74, v169
	v_cndmask_b32_e64 v166, 0x80000000, v166, s10
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s23, s55, v177
	v_cmp_gt_i32_e64 s8, s55, v192
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v168, 0x78, v169
	v_cndmask_b32_e64 v167, 0x80000000, v167, s9
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s22, s55, v178
	v_cmp_gt_i32_e64 s7, s55, v193
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v43, s87, v50
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v168, 0x80000000, v168, s8
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt vmcnt(7)
	ds_store_b8 v68, v9
	s_waitcnt vmcnt(5)
	ds_store_b8 v68, v11 offset:512
	s_waitcnt vmcnt(3)
	ds_store_b8 v68, v13 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b8 v68, v15 offset:1536
	ds_store_b8 v69, v10
	ds_store_b8 v69, v12 offset:512
	ds_store_b8 v69, v14 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v69, v16 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[9:12], v70 offset1:1
	ds_load_2addr_stride64_b64 v[44:47], v70 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[13:16], v71 offset1:1
	ds_load_2addr_stride64_b64 v[151:154], v71 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[33:36], v72 offset1:1
	ds_load_2addr_stride64_b64 v[155:158], v72 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[37:40], v73 offset1:1
	ds_load_2addr_stride64_b64 v[159:162], v73 offset0:2 offset1:3
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e32 vcc_lo, s55, v43
	.loc	1 649 37                        ; attention.py:649:37
	s_clause 0x5
	buffer_load_u16 v163, v163, s[76:79], 0 offen
	buffer_load_u16 v164, v164, s[76:79], 0 offen
	buffer_load_u16 v165, v165, s[76:79], 0 offen
	buffer_load_u16 v166, v166, s[76:79], 0 offen
	buffer_load_u16 v167, v167, s[76:79], 0 offen
	buffer_load_u16 v168, v168, s[76:79], 0 offen
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[9:10], v[52:53], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[11:12], v[52:53], v[143:150] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[13:14], v[54:55], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[15:16], v[54:55], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[44:45], v[52:53], v[143:150] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[33:34], v[56:57], v[25:32] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v45, 4, v169
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[17:24], v[35:36], v[56:57], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[151:152], v[54:55], v[9:16] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v44, 0x80000000, v169, s39
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[37:38], v[58:59], v[25:32] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v45, 0x80000000, v45, s38
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[17:24], v[39:40], v[58:59], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[155:156], v[56:57], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[46:47], v[52:53], v[143:150] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v46, 8, v169
	v_add_nc_u32_e32 v155, 0x44, v169
	s_clause 0x1
	buffer_load_u16 v44, v44, s[76:79], 0 offen
	buffer_load_u16 v45, v45, s[76:79], 0 offen
	v_add_nc_u32_e32 v156, 0x48, v169
	v_cndmask_b32_e64 v46, 0x80000000, v46, s37
	v_cndmask_b32_e64 v155, 0x80000000, v155, s21
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[153:154], v[54:55], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[159:160], v[58:59], v[9:16] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v156, 0x80000000, v156, s20
	s_clause 0x1
	buffer_load_u16 v48, v46, s[76:79], 0 offen
	buffer_load_u16 v155, v155, s[76:79], 0 offen
	v_add_nc_u32_e32 v46, 12, v169
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[157:158], v[56:57], v[33:40] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	buffer_load_u16 v156, v156, s[76:79], 0 offen
	v_add_nc_u32_e32 v157, 0x4c, v169
	v_add_nc_u32_e32 v158, 0x50, v169
	v_cndmask_b32_e64 v46, 0x80000000, v46, s36
	v_add_nc_u32_e32 v159, 0x54, v169
	v_add_nc_u32_e32 v160, 0x58, v169
	v_cndmask_b32_e64 v157, 0x80000000, v157, s19
	v_cndmask_b32_e64 v158, 0x80000000, v158, s18
	buffer_load_u16 v144, v46, s[76:79], 0 offen
	v_add_nc_u32_e32 v46, 16, v169
	v_cndmask_b32_e64 v159, 0x80000000, v159, s17
	s_clause 0x1
	buffer_load_u16 v157, v157, s[76:79], 0 offen
	buffer_load_u16 v158, v158, s[76:79], 0 offen
	v_cndmask_b32_e64 v160, 0x80000000, v160, s16
	v_cndmask_b32_e64 v46, 0x80000000, v46, s35
	buffer_load_u16 v159, v159, s[76:79], 0 offen
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[161:162], v[58:59], v[33:40] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v161, 0x5c, v169
	s_clause 0x1
	buffer_load_u16 v160, v160, s[76:79], 0 offen
	buffer_load_u16 v143, v46, s[76:79], 0 offen
	v_add_nc_u32_e32 v46, 20, v169
	v_add_nc_u32_e32 v162, 0x60, v169
	v_cndmask_b32_e64 v161, 0x80000000, v161, s15
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s17, s0, vcc_lo
	s_and_b32 s15, s1, vcc_lo
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v46, 0x80000000, v46, s34
	v_cndmask_b32_e64 v162, 0x80000000, v162, s14
	buffer_load_u16 v161, v161, s[76:79], 0 offen
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s16, s5, vcc_lo
	s_and_b32 s14, s6, vcc_lo
	.loc	1 649 37                        ; attention.py:649:37
	buffer_load_u16 v145, v46, s[76:79], 0 offen
	v_add_nc_u32_e32 v46, 24, v169
	buffer_load_u16 v162, v162, s[76:79], 0 offen
	.loc	1 667 17                        ; attention.py:667:17
	v_cmp_ne_u32_e32 vcc_lo, 1, v75
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v46, 0x80000000, v46, s33
	.loc	1 667 17                        ; attention.py:667:17
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 649 37                        ; attention.py:649:37
	buffer_load_u16 v146, v46, s[76:79], 0 offen
	v_add_nc_u32_e32 v46, 28, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v46, 0x80000000, v46, s31
	buffer_load_u16 v147, v46, s[76:79], 0 offen
	v_add_nc_u32_e32 v46, 32, v169
	v_cndmask_b32_e64 v46, 0x80000000, v46, s30
	buffer_load_u16 v154, v46, s[76:79], 0 offen
	v_add_nc_u32_e32 v46, 36, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v46, 0x80000000, v46, s29
	buffer_load_u16 v47, v46, s[76:79], 0 offen
	v_add_nc_u32_e32 v46, 40, v169
	v_cndmask_b32_e64 v46, 0x80000000, v46, s28
	buffer_load_u16 v148, v46, s[76:79], 0 offen
	v_add_nc_u32_e32 v46, 44, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v46, 0x80000000, v46, s27
	buffer_load_u16 v149, v46, s[76:79], 0 offen
	v_add_nc_u32_e32 v46, 48, v169
	v_cndmask_b32_e64 v46, 0x80000000, v46, s26
	buffer_load_u16 v151, v46, s[76:79], 0 offen
	v_add_nc_u32_e32 v46, 52, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v46, 0x80000000, v46, s25
	buffer_load_u16 v150, v46, s[76:79], 0 offen
	v_add_nc_u32_e32 v46, 56, v169
	v_cndmask_b32_e64 v46, 0x80000000, v46, s24
	buffer_load_u16 v152, v46, s[76:79], 0 offen
	v_add_nc_u32_e32 v46, 60, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v46, 0x80000000, v46, s23
	buffer_load_u16 v153, v46, s[76:79], 0 offen
	v_add_nc_u32_e32 v46, 64, v169
	v_add_nc_u32_e32 v169, 0x7c, v169
	v_cndmask_b32_e64 v46, 0x80000000, v46, s22
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v169, 0x80000000, v169, s7
	s_clause 0x1
	buffer_load_u16 v46, v46, s[76:79], 0 offen
	buffer_load_u16 v169, v169, s[76:79], 0 offen
	.loc	1 667 17                        ; attention.py:667:17
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e32 vcc_lo, v43, v79
	v_cmp_le_i32_e64 s7, v43, v80
	v_cmp_le_i32_e64 s8, v43, v81
	v_cmp_le_i32_e64 s9, v43, v82
	s_and_not1_b32 s11, s17, exec_lo
	.loc	1 668 21 is_stmt 0              ; attention.py:668:21
	s_and_b32 s10, vcc_lo, s17
	s_and_b32 s7, s7, s15
	s_and_b32 s8, s8, s16
	s_and_b32 s9, s9, s14
	s_and_b32 s10, s10, exec_lo
	s_and_not1_b32 s12, s15, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_or_b32 s17, s11, s10
	s_or_b32 s15, s12, s7
	s_and_not1_b32 s7, s16, exec_lo
	s_and_b32 s8, s8, exec_lo
	s_and_not1_b32 s10, s14, exec_lo
	s_and_b32 s9, s9, exec_lo
	s_or_b32 s16, s7, s8
	s_or_b32 s14, s10, s9
.LBB0_12:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 669 17 is_stmt 1              ; attention.py:669:17
	s_and_not1_b32 vcc_lo, exec_lo, s84
	s_cbranch_vccnz .LBB0_9
; %bb.13:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e32 vcc_lo, v43, v84
	v_cmp_ge_i32_e64 s7, v43, v85
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s9, v43, v88
	v_cmp_le_i32_e64 s10, v43, v89
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s8, v43, v86
	v_cmp_ge_i32_e64 s11, v43, v87
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s12, v43, v90
	v_cmp_le_i32_e64 s13, v43, v91
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s9, vcc_lo, s9
	s_and_b32 s7, s7, s10
	s_and_b32 s9, s9, s17
	s_and_b32 s7, s7, s15
	s_and_b32 s8, s8, s12
	s_and_b32 s10, s11, s13
	s_and_b32 s8, s8, s16
	s_and_b32 s10, s10, s14
	s_and_not1_b32 s11, s17, exec_lo
	s_and_b32 s9, s9, exec_lo
	s_and_not1_b32 s12, s15, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_or_b32 s17, s11, s9
	s_or_b32 s15, s12, s7
	s_and_not1_b32 s7, s16, exec_lo
	s_and_b32 s8, s8, exec_lo
	s_and_not1_b32 s9, s14, exec_lo
	s_and_b32 s10, s10, exec_lo
	s_or_b32 s16, s7, s8
	s_or_b32 s14, s9, s10
	s_branch .LBB0_9
.LBB0_14:                               ; %._crit_edge.loopexit
.Ltmp92:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v9, v143, v143 :: v_dual_add_f32 v10, 0, v146
	v_readlane_b32 s24, v201, 1
	v_readlane_b32 s25, v201, 2
	v_readlane_b32 s26, v201, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v12, 0xff800000, v9 :: v_dual_mov_b32 v11, v76
.Ltmp93:
.LBB0_15:                               ; %._crit_edge
	.loc	1 825 26                        ; attention.py:825:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v74
.Ltmp94:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_lshlrev_b32_e32 v9, 2, v0
.Ltmp95:
	.loc	1 830 26                        ; attention.py:830:26
	v_cmp_eq_u32_e64 s0, 0, v66
.Ltmp96:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp97:
	.loc	1 828 36                        ; attention.py:828:36
	v_cndmask_b32_e32 v10, 0, v10, vcc_lo
	.loc	1 825 17                        ; attention.py:825:17
	v_dual_cndmask_b32 v12, 0xff800000, v12 :: v_dual_and_b32 v13, 12, v9
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e64 v1, 0, v1, s0
.Ltmp98:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_add_nc_u32_e32 v11, 0, v11
.Ltmp99:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e64 v3, 0, v3, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
.Ltmp100:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_add_nc_u32_e32 v13, 0, v13
.Ltmp101:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e64 v17, 0, v4, s0
.Ltmp102:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	ds_store_b32 v11, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v14, v3
.Ltmp104:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	ds_load_b32 v12, v13
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v11, v10
.Ltmp106:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v10, v1
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v11, v13
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp109:
	.loc	1 830 17 is_stmt 1              ; attention.py:830:17
	v_cndmask_b32_e64 v18, 0, v5, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	.loc	1 822 31                        ; attention.py:822:31
	s_mul_i32 s1, s26, s25
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v1, v1, v10
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v13, v2
.Ltmp112:
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s86, s86, 2
	.loc	1 822 31                        ; attention.py:822:31
	s_add_i32 s1, s24, s1
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v20, v7
	v_mov_b32_e32 v10, v1
	v_mov_b32_dpp v13, v13 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp114:
	.loc	1 822 30                        ; attention.py:822:30
	s_mul_i32 s4, s1, s86
	.loc	1 833 13                        ; attention.py:833:13
	s_mov_b32 s1, exec_lo
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v2, v2, v13 :: v_dual_add_f32 v3, v3, v14
.Ltmp117:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v13, v12 :: v_dual_mov_b32 v16, v11
.Ltmp118:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v14, v2 :: v_dual_mov_b32 v15, v3
.Ltmp120:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp122:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v15, v15 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp123:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v13, v13, v13
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v1, v1, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v2, v2, v14
	v_add_f32_e32 v14, v3, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp125:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_dual_add_f32 v10, v11, v16 :: v_dual_max_f32 v11, v12, v13
.Ltmp126:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v3, v1 :: v_dual_mov_b32 v16, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp127:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_dual_mov_b32 v12, v10 :: v_dual_mov_b32 v13, v11
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp129:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp130:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v1, v1, v3 :: v_dual_add_f32 v4, v14, v16
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v15, v2
.Ltmp133:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e64 v14, 0, v6, s0
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v16, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v6, v4
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v21, v8
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v3, v2, v15
.Ltmp136:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v15, v17
	v_mov_b32_e32 v2, v1
.Ltmp137:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v16, v18, v16
.Ltmp138:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v21, v21 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v14
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp139:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v8, v8, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp140:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v18, v16 :: v_dual_add_f32 v15, v17, v15
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v17, v15 :: v_dual_add_f32 v14, v14, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp141:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v7, v7, v20 :: v_dual_add_f32 v16, v16, v18
.Ltmp142:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v20, v7
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v21, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v18, v14, v19 :: v_dual_add_f32 v15, v15, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp144:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v21, v21 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp145:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v19, v7, v20 :: v_dual_mov_b32 v20, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp146:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v17, v15 :: v_dual_add_f32 v8, v8, v21
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v7, v16
	v_dual_mov_b32 v22, v8 :: v_dual_mov_b32 v21, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp147:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v14, v15, v17
.Ltmp148:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v15, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp149:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v7, v16, v7 :: v_dual_add_f32 v16, v18, v20
.Ltmp150:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp151:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v18, v8, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp152:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp153:
	.loc	1 833 13                        ; attention.py:833:13
	v_or_b32_e32 v22, v64, v49
.Ltmp154:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v17, v19, v21
.Ltmp155:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v19, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v21, v18 :: v_dual_mov_b32 v20, v17
	v_mov_b32_e32 v8, v7
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v21, v21 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp156:
	.loc	1 833 13                        ; attention.py:833:13
	v_cmpx_eq_u32_e32 0, v22
	s_cbranch_execz .LBB0_17
; %bb.16:
.Ltmp157:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v22, v11, v11
.Ltmp158:
	.loc	1 833 13                        ; attention.py:833:13
	s_ashr_i32 s5, s4, 31
.Ltmp159:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_dual_add_f32 v11, v10, v12 :: v_dual_mov_b32 v12, 0
.Ltmp160:
	.loc	1 833 13                        ; attention.py:833:13
	s_lshl_b64 s[6:7], s[4:5], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp161:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v10, v22, v13
.Ltmp162:
	.loc	1 833 13                        ; attention.py:833:13
	s_add_u32 s6, s64, s6
	s_addc_u32 s7, s65, s7
	.loc	1 834 13                        ; attention.py:834:13
	global_store_b64 v12, v[10:11], s[6:7]
.LBB0_17:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s1
.Ltmp163:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v10, v16, v19
	v_dual_add_f32 v16, v14, v15 :: v_dual_add_f32 v15, v4, v6
	v_dual_add_f32 v14, v3, v5 :: v_dual_add_f32 v13, v1, v2
.Ltmp164:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v3, 0xc0, v9
	s_and_b32 vcc_lo, vcc_lo, s2
	v_lshlrev_b32_e32 v0, 5, v0
.Ltmp165:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v9, v7, v8 :: v_dual_and_b32 v4, 0xe0, v65
.Ltmp166:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v1, 28, v65
	v_add_nc_u32_e32 v2, 0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v0, 32, v0
.Ltmp167:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v12, v18, v21 :: v_dual_add_nc_u32 v3, 0, v4
	v_add_f32_e32 v11, v17, v20
.Ltmp168:
	.loc	1 835 13                        ; attention.py:835:13
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v0, v2, v0, v1
	s_barrier
	ds_store_b128 v3, v[13:16]
	ds_store_b128 v3, v[9:12] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v0
	.loc	1 836 17                        ; attention.py:836:17
	v_add_nc_u32_e32 v1, s4, v50
	.loc	1 835 13                        ; attention.py:835:13
	s_and_b32 s65, s65, 0xffff
	s_mov_b32 s67, 0x31027000
	s_mov_b32 s66, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_add_u32 v1, v1, 2, 8
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v0, v1, s[64:67], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp169:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
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
		.amdhsa_next_free_vgpr 202
		.amdhsa_next_free_sgpr 105
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.num_vgpr, 202
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14208
; TotalNumSgprs: 107
; NumVgprs: 202
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 25
; NumSGPRsForWavesPerEU: 107
; NumVGPRsForWavesPerEU: 202
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
	.byte	1                               ; Abbrev [1] 0xb:0xbd DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x97 DW_TAG_subprogram
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
	.byte	4                               ; Abbrev [4] 0x5b:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	687                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x68:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x75:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	691                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x82:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x90:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	829                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x9d:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xab:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	828                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xb8:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
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
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
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
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
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
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
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
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
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
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     107
    .sgpr_spill_count: 3
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     202
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
