	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
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
	s_load_b128 s[60:63], s[0:1], 0x4c
	s_load_b32 s81, s[0:1], 0x60
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_and_b32_e32 v41, 31, v0
	v_lshrrev_b32_e32 v56, 5, v0
	s_mov_b32 s15, 0x31027000
	.loc	1 585 26                        ; attention.py:585:26
	v_bfe_i32 v3, v0, 7, 1
	v_and_b32_e32 v4, 0x7f, v0
	v_lshlrev_b32_e32 v57, 1, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v58, 15, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 585 26                        ; attention.py:585:26
	v_and_b32_e32 v3, 0x88, v3
	v_xor_b32_e32 v3, v3, v4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s3, 1, s8
	s_bitcmp1_b32 s8, 8
	s_cselect_b32 s80, -1, 0
	s_cmp_eq_u32 s3, 1
	.loc	1 583 26                        ; attention.py:583:26
	s_mul_i32 s17, s25, s62
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
	v_add_nc_u32_e32 v61, 0, v4
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
	s_abs_i32 s14, s60
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
	v_or_b32_e32 v5, s3, v58
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
	s_abs_i32 s2, s61
	s_xor_b32 s18, s60, s61
	s_cvt_f32_u32 s4, s2
	s_sub_i32 s16, 0, s2
	s_ashr_i32 s21, s18, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v1, s3, v56
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v2, 8, v1
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e32 vcc_lo, s62, v1
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
	v_cmp_gt_i32_e64 s2, s62, v2
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s22, s18, s16
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s23, s17, s3
	s_load_b64 s[16:17], s[0:1], 0x18
	v_mad_u64_u32 v[43:44], null, s81, v56, v[41:42]
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e64 s4, s81, v41
	.loc	1 584 26                        ; attention.py:584:26
	s_mul_i32 s14, s23, s81
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	.loc	1 590 31                        ; attention.py:590:31
	v_add_lshl_u32 v6, s23, v58, 1
	s_mov_b32 s19, s15
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 584 26                        ; attention.py:584:26
	v_lshl_add_u32 v59, s81, 3, v43
	v_add_nc_u32_e32 v1, s14, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v2, s14, v59
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
	v_cmp_gt_i32_e32 vcc_lo, s62, v5
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v60, 0, v3
	.loc	1 590 31                        ; attention.py:590:31
	s_mov_b32 s18, s14
	s_and_b32 s17, s17, 0xffff
	v_cndmask_b32_e32 v3, 0x80000000, v6, vcc_lo
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(1)
	ds_store_b8 v60, v1
	s_waitcnt vmcnt(0)
	ds_store_b8 v61, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 590 31                        ; attention.py:590:31
	buffer_load_u16 v1, v3, s[16:19], 0 offen
	.loc	1 568 22                        ; attention.py:568:22
	s_sub_i32 s17, s2, s21
	.loc	1 585 26                        ; attention.py:585:26
	v_and_b32_e32 v2, 24, v57
	.loc	1 569 19                        ; attention.py:569:19
	s_abs_i32 s16, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_cvt_f32_u32 s2, s16
	.loc	1 585 26                        ; attention.py:585:26
	v_lshl_or_b32 v2, v58, 5, v2
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 569 19                        ; attention.py:569:19
	v_rcp_iflag_f32_e32 v3, s2
	.loc	1 606 16                        ; attention.py:606:16
	s_add_i32 s2, s63, 63
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
	v_add_nc_u32_e32 v62, 0, v2
	.loc	1 606 15                        ; attention.py:606:15
	s_ashr_i32 s12, s2, 6
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v2, 24, v2
	.loc	1 609 33                        ; attention.py:609:33
	s_add_i32 s12, s12, s26
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v63, 0, v4
	.loc	1 609 33                        ; attention.py:609:33
	s_add_i32 s12, s12, -1
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v64, 0, v5
	.loc	1 609 32                        ; attention.py:609:32
	s_abs_i32 s13, s12
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v65, 0, v2
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
	ds_load_b64 v[44:45], v62
	ds_load_b64 v[46:47], v63
	ds_load_b64 v[48:49], v64
	ds_load_b64 v[50:51], v65
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
	s_lshl_b32 s83, s13, 6
	.loc	1 611 33                        ; attention.py:611:33
	s_lshl_b32 s13, s7, 6
	.loc	1 585 26                        ; attention.py:585:26
	v_cmp_eq_u32_e64 s7, 0, v2
	.loc	1 611 33                        ; attention.py:611:33
	s_add_i32 s13, s83, s13
	.loc	1 611 18 is_stmt 0              ; attention.py:611:18
	s_min_i32 s84, s2, s13
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
	s_min_i32 s2, s63, s2
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s8, s8, 0x7fffffc0
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s2, s2, 63
	.loc	1 618 18                        ; attention.py:618:18
	s_max_i32 s83, s83, s8
	.loc	1 619 34                        ; attention.py:619:34
	s_ashr_i32 s13, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s13, s13, 26
	s_add_i32 s2, s2, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 619 33 is_stmt 0              ; attention.py:619:33
	s_and_not1_b32 s2, s2, 63
	.loc	1 619 18                        ; attention.py:619:18
	s_min_i32 s84, s84, s2
.LBB0_2:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b32 s82, s[0:1], 0x64
	.loc	1 620 9 is_stmt 1               ; attention.py:620:9
	v_cndmask_b32_e64 v67, 0, 1, s5
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s2, s11, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 16
	s_min_i32 s2, s63, s2
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
	s_min_i32 s84, s84, s2
.LBB0_4:
	.loc	1 571 21 is_stmt 1              ; attention.py:571:21
	v_and_b32_e32 v42, 63, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v66, 0xc0, v0
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s83, s84
	.loc	1 696 65                        ; attention.py:696:65
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_i32_e64 s2, s82, v42
	v_lshrrev_b32_e32 v68, 4, v66
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_7
; %bb.5:                                ; %.._crit_edge_crit_edge
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_lshrrev_b32_e32 v11, 4, v66
	s_load_b64 s[20:21], s[0:1], 0x40
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
	s_load_b64 s[20:21], s[0:1], 0x40
.LBB0_8:                                ; %.lr.ph
                                        ; implicit-def: $vgpr218 : SGPR spill to VGPR lane
	s_xor_b32 s5, s25, s60
	s_mul_f32 s8, s12, 0x4f7ffffe
	s_waitcnt lgkmcnt(0)
	v_writelane_b32 v218, s20, 0
	s_ashr_i32 s5, s5, 31
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x6c
	s_load_b64 s[64:65], s[0:1], 0x30
	s_xor_b32 s6, s6, s5
	s_cvt_u32_f32 s8, s8
	v_writelane_b32 v218, s21, 1
	s_sub_i32 s18, s6, s5
	s_sub_i32 s5, 0, s16
	s_mul_i32 s6, s18, s60
	s_mul_i32 s5, s5, s8
	s_sub_i32 s19, s25, s6
	s_mul_hi_u32 s5, s8, s5
	v_writelane_b32 v218, s22, 2
	s_abs_i32 s6, s19
	s_add_i32 s8, s8, s5
	s_ashr_i32 s17, s17, 31
	s_mul_hi_u32 s5, s6, s8
	v_writelane_b32 v218, s23, 3
	.loc	1 569 19 is_stmt 1              ; attention.py:569:19
	s_mul_i32 s20, s5, s16
	s_ashr_i32 s8, s19, 31
	s_sub_i32 s6, s6, s20
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v69, 6, v66
	.loc	1 569 19                        ; attention.py:569:19
	s_xor_b32 s8, s8, s17
	s_add_i32 s17, s5, 1
	s_sub_i32 s20, s6, s16
	s_cmp_ge_u32 s6, s16
	s_load_b32 s60, s[0:1], 0x7c
	s_cselect_b32 s5, s17, s5
	s_cselect_b32 s6, s20, s6
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v2, s3, v69
	.loc	1 569 19                        ; attention.py:569:19
	s_add_i32 s17, s5, 1
	s_cmp_ge_u32 s6, s16
	v_and_b32_e32 v3, 0xe0, v0
	s_cselect_b32 s5, s17, s5
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v5, 8, v2
	.loc	1 569 19                        ; attention.py:569:19
	s_xor_b32 s5, s5, s8
	s_clause 0x1
	s_load_b128 s[68:71], s[0:1], 0x8
	s_load_b64 s[72:73], s[0:1], 0x20
	s_sub_i32 s0, s5, s8
	.loc	1 632 33                        ; attention.py:632:33
	s_mul_i32 s1, s18, s61
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v4, 4, v2
	.loc	1 632 33                        ; attention.py:632:33
	s_add_i32 s61, s0, s1
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v6, 12, v2
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v71, s11, v2
	v_add_nc_u32_e32 v73, s11, v5
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s0, s62, v2
	v_cmp_gt_i32_e64 s5, s62, v5
	v_and_b32_e32 v2, 0x1bc, v57
	v_lshrrev_b32_e32 v5, 4, v3
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v75.h, v1.l
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s15, v69
	v_mov_b16_e32 v75.l, 0
	v_dual_mov_b32 v85, 0x5410 :: v_dual_add_nc_u32 v72, s11, v4
	v_xor_b32_e32 v2, v2, v5
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s1, s62, v4
	v_lshlrev_b32_e32 v4, 6, v0
	.loc	1 654 30                        ; attention.py:654:30
	v_mov_b32_e32 v150, v75
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v74, s11, v6
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[52:53], null, s60, v42, v[1:2]
	v_and_b32_e32 v1, 60, v57
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s6, s62, v6
	v_and_b32_e32 v6, 64, v4
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mov_b32 v148, v75 :: v_dual_lshlrev_b32 v5, 2, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_and_or_b32 v20, v56, 3, v1
	v_lshl_or_b32 v1, v3, 2, v1
	v_cndmask_b32_e64 v19, 0x84, 0, s7
	v_lshrrev_b32_e32 v89, 2, v66
	v_mov_b32_e32 v160, 0xff800000
	v_lshl_or_b32 v83, v58, 8, v5
	v_xor_b32_e32 v1, v1, v68
	v_xor_b32_e32 v19, v20, v19
	v_mov_b32_e32 v156, 0xff800000
	v_mov_b32_e32 v152, v75
	v_xor_b32_e32 v3, 20, v83
	v_or_b32_e32 v84, v1, v6
	v_and_b32_e32 v1, 64, v57
	v_or_b32_e32 v81, v19, v6
	v_lshl_or_b32 v80, v58, 7, v5
	v_add_nc_u32_e32 v122, 0, v3
	v_xor_b32_e32 v53, 32, v83
	v_add_nc_u32_e32 v1, 0, v1
	v_xor_b32_e32 v54, 36, v83
	v_xor_b32_e32 v55, 40, v83
	v_writelane_b32 v218, s26, 4
	v_xor_b32_e32 v10, 4, v80
	v_dual_mov_b32 v151, v75 :: v_dual_add_nc_u32 v88, v1, v89
	v_mov_b32_e32 v1, 0
	.loc	1 571 21                        ; attention.py:571:21
	v_and_b32_e32 v7, 16, v0
	v_and_b32_e32 v4, 0x380, v4
	v_lshlrev_b32_e32 v20, 1, v58
	v_xor_b32_e32 v11, 8, v80
	v_mov_b32_e32 v3, v1
	v_lshlrev_b32_e32 v25, 2, v7
	v_xor_b32_e32 v12, 12, v80
	v_xor_b32_e32 v13, 16, v80
	v_xor_b32_e32 v14, 20, v80
	v_xor_b32_e32 v15, 24, v80
	v_or3_b32 v82, v4, v25, v20
	v_xor_b32_e32 v4, 0x108, v81
	v_xor_b32_e32 v16, 28, v80
	v_xor_b32_e32 v17, 32, v80
	v_xor_b32_e32 v18, 36, v80
	v_xor_b32_e32 v21, 40, v80
	v_add_nc_u32_e32 v108, 0, v4
	v_mov_b32_e32 v4, v1
	v_cmp_eq_u32_e32 vcc_lo, 0, v7
	v_mov_b32_e32 v7, 0x7632
	v_xor_b32_e32 v22, 44, v80
	v_xor_b32_e32 v23, 48, v80
	v_xor_b32_e32 v24, 52, v80
	v_cndmask_b32_e32 v85, 0x1054, v85, vcc_lo
	v_cndmask_b32_e32 v7, 0x3276, v7, vcc_lo
	v_or_b32_e32 v79, v2, v6
	v_xor_b32_e32 v26, 56, v80
	v_xor_b32_e32 v19, 60, v80
	v_lshl_or_b32 v85, v85, 8, v85
	v_lshl_or_b32 v7, v7, 8, v7
	v_xor_b32_e32 v2, 0x210, v79
	v_xor_b32_e32 v8, 0x420, v79
	v_xor_b32_e32 v9, 0x630, v79
	v_dual_mov_b32 v158, v1 :: v_dual_and_b32 v85, 0x540054, v85
	v_and_b32_e32 v7, 0x760076, v7
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mov_b32 v154, v75 :: v_dual_and_b32 v27, 0x60, v0
	v_xor_b32_e32 v25, 0x210, v81
	v_xor_b32_e32 v28, 0x318, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v7, v7, 4, v7
	v_xor_b32_e32 v29, 4, v82
	v_xor_b32_e32 v30, 8, v82
	v_xor_b32_e32 v31, 12, v82
	v_xor_b32_e32 v5, 16, v82
	v_xor_b32_e32 v32, 20, v82
	v_xor_b32_e32 v33, 24, v82
	v_xor_b32_e32 v34, 28, v82
	v_xor_b32_e32 v35, 4, v83
	v_xor_b32_e32 v36, 8, v83
	v_xor_b32_e32 v37, 12, v83
	v_xor_b32_e32 v38, 16, v83
	v_xor_b32_e32 v39, 24, v83
	v_xor_b32_e32 v40, 28, v83
	v_xor_b32_e32 v128, 44, v83
	v_xor_b32_e32 v129, 48, v83
	v_xor_b32_e32 v130, 52, v83
	v_xor_b32_e32 v131, 56, v83
	v_xor_b32_e32 v132, 60, v83
	v_xor_b32_e32 v133, 0x410, v84
	v_xor_b32_e32 v134, 0x820, v84
	v_xor_b32_e32 v135, 0xc30, v84
	v_add_nc_u32_e32 v6, 0, v6
	v_lshl_or_b32 v85, v85, 4, v85
	v_dual_mov_b32 v149, v75 :: v_dual_and_b32 v86, 0x7060706, v7
	v_and_b32_e32 v7, 0x1fe, v57
	v_or_b32_e32 v137, 0x600, v57
	v_or_b32_e32 v138, 0xe00, v57
	v_or_b32_e32 v139, 0x1600, v57
	v_or_b32_e32 v140, 0x1e00, v57
	v_add_nc_u32_e32 v125, 0, v53
	v_add_nc_u32_e32 v126, 0, v54
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[53:54], null, s15, 12, v[52:53]
	v_add_nc_u32_e32 v127, 0, v55
	v_mad_u64_u32 v[54:55], null, s82, v69, v[42:43]
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s85, s12, 0x3fb8aa3b
	.loc	1 674 25                        ; attention.py:674:25
	s_mul_i32 s3, s3, s15
	.loc	1 675 27                        ; attention.py:675:27
	s_mul_i32 s8, s18, s13
	v_writelane_b32 v218, s24, 5
	.loc	1 571 21                        ; attention.py:571:21
	v_bfe_u32 v70, v0, 4, 1
	v_subrev_nc_u32_e32 v77, s9, v72
	v_and_b32_e32 v85, 0x5040504, v85
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mov_b32 v153, v75 :: v_dual_add_nc_u32 v90, 0, v2
	v_add_nc_u32_e32 v91, 0, v8
	v_dual_mov_b32 v155, 0xff800000 :: v_dual_add_nc_u32 v92, 0, v9
	v_add_nc_u32_e32 v93, 0, v10
	v_dual_mov_b32 v157, 0xff800000 :: v_dual_add_nc_u32 v94, 0, v11
	v_add_nc_u32_e32 v95, 0, v12
	v_dual_mov_b32 v55, 0xff800000 :: v_dual_add_nc_u32 v96, 0, v13
	v_add_nc_u32_e32 v97, 0, v14
	v_dual_mov_b32 v159, 0xff800000 :: v_dual_add_nc_u32 v98, 0, v15
	v_add_nc_u32_e32 v99, 0, v16
	v_add_nc_u32_e32 v100, 0, v17
	v_add_nc_u32_e32 v101, 0, v18
	v_add_nc_u32_e32 v102, 0, v21
	v_add_nc_u32_e32 v103, 0, v22
	v_add_nc_u32_e32 v104, 0, v23
	v_add_nc_u32_e32 v105, 0, v24
	v_add_nc_u32_e32 v106, 0, v26
	v_add_nc_u32_e32 v107, 0, v19
	v_add_nc_u32_e32 v109, 0, v25
	v_add_nc_u32_e32 v110, 0, v28
	v_add_nc_u32_e32 v111, 0, v29
	v_add_nc_u32_e32 v112, 0, v30
	v_add_nc_u32_e32 v113, 0, v31
	v_add_nc_u32_e32 v114, 0, v5
	v_add_nc_u32_e32 v115, 0, v32
	v_add_nc_u32_e32 v116, 0, v33
	v_add_nc_u32_e32 v117, 0, v34
	v_add_nc_u32_e32 v118, 0, v35
	v_add_nc_u32_e32 v119, 0, v36
	v_add_nc_u32_e32 v120, 0, v37
	v_add_nc_u32_e32 v121, 0, v38
	v_add_nc_u32_e32 v123, 0, v39
	v_add_nc_u32_e32 v124, 0, v40
	v_add_nc_u32_e32 v128, 0, v128
	v_add_nc_u32_e32 v129, 0, v129
	v_add_nc_u32_e32 v130, 0, v130
	v_add_nc_u32_e32 v131, 0, v131
	v_add_nc_u32_e32 v132, 0, v132
	v_add_nc_u32_e32 v133, 0, v133
	v_add_nc_u32_e32 v134, 0, v134
	v_add_nc_u32_e32 v135, 0, v135
	v_add_nc_u32_e32 v136, 0, v7
	v_add_nc_u32_e32 v137, 0, v137
	v_add_nc_u32_e32 v138, 0, v138
	v_add_nc_u32_e32 v139, 0, v139
	v_add_nc_u32_e32 v140, 0, v140
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v5, v1
	v_add3_u32 v87, 0, v20, v27
	v_mov_b32_e32 v7, v1
	v_add_nc_u32_e32 v89, v6, v89
	v_mov_b32_e32 v6, v1
	v_subrev_nc_u32_e32 v76, s9, v71
	v_mov_b32_e32 v8, v1
	v_subrev_nc_u32_e32 v78, s9, v73
	v_subrev_nc_u32_e32 v141, s9, v74
	v_add_nc_u32_e32 v142, s10, v71
	v_add_nc_u32_e32 v143, s10, v72
	v_add_nc_u32_e32 v144, s10, v73
	v_add_nc_u32_e32 v145, s10, v74
	.loc	1 629 13                        ; attention.py:629:13
	v_lshl_add_u32 v146, s15, 2, v52
	v_lshl_add_u32 v147, s15, 3, v52
	.loc	1 676 27                        ; attention.py:676:27
	s_mul_i32 s19, s19, s14
	s_mov_b32 s75, 0x31027000
	s_mov_b32 s74, 0x7ffffffe
	s_add_i32 s91, s8, s3
	s_mov_b32 s48, 0
	.loc	1 632 32                        ; attention.py:632:32
	s_mul_i32 s61, s61, s63
	s_lshl_b32 s62, s81, 4
	s_lshl_b32 s87, s81, 5
	s_and_b32 s69, s69, 0xffff
	s_and_b32 s73, s73, 0xffff
	s_add_i32 s91, s91, s19
	s_and_b32 s65, s65, 0xffff
	s_lshl_b32 s92, s82, 2
	s_lshl_b32 s93, s82, 3
	s_mul_i32 s94, s82, 12
	s_lshl_b32 s95, s82, 4
	s_mul_i32 s96, s82, 20
	s_mul_i32 s97, s82, 24
	s_mul_i32 s98, s82, 28
	s_lshl_b32 s99, s82, 5
	s_mul_i32 s100, s82, 36
	s_mul_i32 s101, s82, 40
	s_mul_i32 s102, s82, 44
	s_mul_i32 s103, s82, 48
	s_mul_i32 s104, s82, 52
	s_mul_i32 vcc_hi, s82, 56
	s_mul_i32 s58, s82, 60
	s_and_b32 s77, s71, 0xffff
	s_mov_b32 s76, s70
	.loc	1 664 17                        ; attention.py:664:17
	s_mov_b32 s59, s85
	s_mov_b32 s3, s85
	s_mov_b32 s86, s85
	s_mov_b32 s88, s85
	s_mov_b32 s89, s85
	s_mov_b32 s90, s85
	s_mov_b32 s56, s85
	s_mov_b32 s49, s48
	s_mov_b32 s50, s48
	s_mov_b32 s51, s48
	s_mov_b32 s52, s48
	s_mov_b32 s53, s48
	s_mov_b32 s54, s48
	s_mov_b32 s55, s48
	s_mov_b32 s57, 0x76543210
	s_mov_b32 s70, s74
	s_mov_b32 s71, s75
	v_writelane_b32 v218, s25, 6
	s_branch .LBB0_10
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 674 25                        ; attention.py:674:25
	s_mul_i32 s7, s83, s60
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v194, v35
	.loc	1 674 25                        ; attention.py:674:25
	s_add_i32 s7, s91, s7
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v35, v38
	v_cvt_f32_i32_e32 v38, v30
	v_cvt_f32_i32_e32 v30, v26
	v_cvt_f32_i32_e32 v26, v17
	v_cvt_f32_i32_e32 v17, v13
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v13, s7, v52, 1
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v192, v36
	v_cvt_f32_i32_e32 v36, v37
	v_cvt_f32_i32_e32 v37, v29
	v_cvt_f32_i32_e32 v29, v24
	v_cvt_f32_i32_e32 v24, v21
	v_cvt_f32_i32_e32 v21, v18
	v_cvt_f32_i32_e32 v18, v12
	v_cvt_f32_i32_e32 v12, v14
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v14, s7, v146, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s17
	s_mov_b32 s66, s74
	s_mov_b32 s67, s75
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v195, v34
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v14, 0x80000000, v14, s16
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v34, v39
	v_cvt_f32_i32_e32 v39, v31
	v_cvt_f32_i32_e32 v31, v27
	v_cvt_f32_i32_e32 v27, v23
	v_cvt_f32_i32_e32 v23, v20
	v_cvt_f32_i32_e32 v20, v10
	v_cvt_f32_i32_e32 v10, v16
	.loc	1 683 36                        ; attention.py:683:36
	s_clause 0x1
	buffer_load_u16 v13, v13, s[64:67], 0 offen
	buffer_load_u16 v16, v14, s[64:67], 0 offen
	v_add_lshl_u32 v14, s7, v147, 1
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v196, v33
	v_cvt_f32_i32_e32 v33, v40
	v_cvt_f32_i32_e32 v40, v32
	v_cvt_f32_i32_e32 v32, v28
	v_cvt_f32_i32_e32 v28, v25
	v_cvt_f32_i32_e32 v25, v22
	v_cvt_f32_i32_e32 v22, v19
	v_cvt_f32_i32_e32 v19, v11
	v_cvt_f32_i32_e32 v11, v15
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v15, s7, v53, 1
	v_cndmask_b32_e64 v14, 0x80000000, v14, s15
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(13)
	v_mov_b16_e64 v170.h, v170.l
	v_mov_b16_e64 v168.h, v168.l
	v_mov_b16_e64 v166.h, v166.l
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v197, 0x80000000, v15, s14
	s_clause 0x1
	buffer_load_u16 v15, v14, s[64:67], 0 offen
	buffer_load_u16 v14, v197, s[64:67], 0 offen
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v164.h, v164.l
	v_mov_b16_e64 v161.h, v161.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v26, v75, v26 :: v_dual_mul_f32 v29, v153, v29
	v_cvt_f32_i32_e32 v9, v9
	v_mul_f32_e32 v10, v75, v10
	v_mul_f32_e32 v21, v75, v21
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v163.h, v163.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v31, v149, v31 :: v_dual_mul_f32 v30, v148, v30
	v_mul_f32_e32 v9, v154, v9
	v_mul_f32_e32 v25, v151, v25
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v162.h, v162.l
	s_waitcnt vmcnt(12)
	v_mov_b16_e64 v172.h, v172.l
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v155, v155, v155
	.loc	1 694 30                        ; attention.py:694:30
	s_mov_b32 s78, s74
	s_mov_b32 s79, s75
	.loc	1 685 25                        ; attention.py:685:25
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v40, v154, v40
	v_mul_f32_e32 v38, v152, v38
	v_dual_mul_f32 v27, v152, v27 :: v_dual_mul_f32 v32, v150, v32
	v_dual_mul_f32 v28, v75, v28 :: v_dual_mul_f32 v23, v149, v23
	v_mul_f32_e32 v24, v150, v24
	v_mul_f32_e32 v22, v148, v22
	v_mul_f32_e32 v20, v75, v20
	v_mul_f32_e32 v19, v75, v19
	v_mul_f32_e32 v11, v75, v11
	v_mul_f32_e32 v18, v75, v18
	v_mul_f32_e32 v12, v75, v12
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(2)
	v_cndmask_b16 v16.h, 0xff80, v13.l, s17
	.loc	1 684 35                        ; attention.py:684:35
	v_add_nc_u32_e32 v13, 0, v79
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b16 v197.h, 0xff80, v16.l, s16
	.loc	1 684 35                        ; attention.py:684:35
	ds_store_b16_d16_hi v13, v16
	ds_store_b16_d16_hi v90, v197
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v13.l, 0
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v13.h, v173.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v170.l, v13.l
	v_mov_b16_e64 v168.l, v13.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v39, v153, v39
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v166.l, v13.l
	v_mov_b16_e64 v164.l, v13.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v37, v151, v37 :: v_dual_mul_f32 v38, v38, v168
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v14.h, 0xff80, v15.l, s15
	.loc	1 684 35                        ; attention.py:684:35
	v_add_nc_u32_e32 v15, 0, v80
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v39, v39, v170 :: v_dual_mul_f32 v32, v32, v164
	v_mul_f32_e32 v37, v37, v166
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v161.l, v13.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v26, v26, v13
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v16.l, v13.l
	v_mov_b16_e64 v197.l, v13.l
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v163.l, v13.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v28, v28, v161
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v161.h, v178.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v16
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b16 v16.h, 0xff80, v14.l, s14
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v197
	.loc	1 684 35                        ; attention.py:684:35
	ds_store_b16_d16_hi v91, v14
	ds_store_b16_d16_hi v92, v16
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v29, v29, v161
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v161.h, v175.l
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v197, v15
	ds_load_b32 v198, v93
	ds_load_b32 v199, v94
	ds_load_b32 v200, v95
	ds_load_b32 v201, v96
	ds_load_b32 v202, v97
	ds_load_b32 v203, v98
	ds_load_b32 v204, v99
	ds_load_b32 v205, v100
	ds_load_b32 v206, v101
	ds_load_b32 v207, v102
	ds_load_b32 v208, v103
	ds_load_b32 v209, v104
	ds_load_b32 v210, v105
	ds_load_b32 v211, v106
	ds_load_b32 v212, v107
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v17, v75, v17
	v_mul_f32_e32 v27, v27, v161
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v161.h, v174.l
	v_mov_b16_e64 v162.l, v13.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v31, v31, v163
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v13.h, v181.l
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s38, s17, vcc_lo
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v25, v25, v161
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v161.h, v171.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v30, v30, v162
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v15, 0, 1, s38
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v172.l, v13.l
	.loc	1 685 25                        ; attention.py:685:25
	v_add_nc_u32_e32 v213, 0, v81
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v24, v24, v161
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v161.h, v169.l
	.loc	1 685 25                        ; attention.py:685:25
	v_mov_b16_e32 v14.l, v15.l
	s_and_b32 s37, s16, s7
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v23, v23, v161
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v161.h, v167.l
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v15, 0, 1, s37
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v40, v40, v172
	.loc	1 685 25                        ; attention.py:685:25
	ds_store_b8 v213, v14
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v14.l, v13.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v22, v22, v161
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v161.h, v165.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v16
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	ds_store_b8 v108, v15
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v14
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_mul_f32_e32 v9, v9, v13
	v_mul_f32_e32 v21, v21, v161
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v161.h, v176.l
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v13.h, v205.l
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s40, s15, vcc_lo
	s_and_b32 s39, s14, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v20, v20, v161
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v161.h, v177.l
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v167, 0x3fb8aa3b, v13
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v13.h, v197.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v19, v19, v161
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v161.h, v179.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v167, s85, v26 :: v_dual_mul_f32 v26, 0x3fb8aa3b, v13
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v13.h, v206.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v18, v18, v161
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v161.h, v180.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v17, v17, v161
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v161.h, v182.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v12, v12, v161
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v161.h, v183.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v161, v11, v161
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v11.h, v184.l
	v_mov_b16_e32 v11.l, v13.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v162, v10, v11
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v10.h, v185.l
	v_mov_b16_e32 v10.l, v13.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v11, v75, v196
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v163, v11, v10
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v10.h, v186.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v11, v75, v195
	v_mul_f32_e32 v164, v11, v10
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v10.h, v187.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v11, v75, v194
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v165, v11, v10
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v10.h, v188.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v11, v75, v192
	v_mul_f32_e32 v166, v11, v10
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v10.h, v189.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v11, v75, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v36, v11, v10
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v10.h, v190.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v11, v75, v35
	v_mul_f32_e32 v35, v11, v10
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v10.h, v191.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v11, v75, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v34, v11, v10
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v10.h, v193.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v11, v75, v33
	v_mul_f32_e32 v33, v11, v10
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v10, 0, 1, s40
	v_cndmask_b32_e64 v11, 0, 1, s39
	ds_store_b8 v109, v10
	ds_store_b8 v110, v11
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v10, 0xffff0000, v198
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v168, 0x3fb8aa3b, v10
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v10, 0xffff0000, v199
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v168, s85, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v20, 0x3fb8aa3b, v10
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_and_b32_e32 v10, 0xffff0000, v200
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v20, s85, v19 :: v_dual_mul_f32 v19, 0x3fb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v19, s85, v18 :: v_dual_and_b32 v10, 0xffff0000, v201
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v18, 0x3fb8aa3b, v10
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_and_b32_e32 v10, 0xffff0000, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v18, s85, v17 :: v_dual_mul_f32 v169, 0x3fb8aa3b, v10
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v10, 0xffff0000, v203
	.loc	1 685 25                        ; attention.py:685:25
	v_add_nc_u32_e32 v17, 0, v82
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v170, 0x3fb8aa3b, v10
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v10, 0xffff0000, v204
	.loc	1 685 25                        ; attention.py:685:25
	ds_load_u16_d16 v16, v17 offset:32
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v171, 0x3fb8aa3b, v10
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v10, 0xffff0000, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v172, 0x3fb8aa3b, v10
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v10, 0xffff0000, v206
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v173, 0x3fb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_dual_fmac_f32 v173, s85, v164 :: v_dual_and_b32 v10, 0xffff0000, v207
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v164, 0x3fb8aa3b, v10
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_and_b32_e32 v10, 0xffff0000, v208
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v164, s85, v165 :: v_dual_mul_f32 v165, 0x3fb8aa3b, v10
	v_dual_fmac_f32 v169, s85, v12 :: v_dual_and_b32 v10, 0xffff0000, v209
	v_fmac_f32_e32 v165, s85, v166
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v166, 0x3fb8aa3b, v10
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_and_b32_e32 v10, 0xffff0000, v210
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v166, s85, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v174, 0x3fb8aa3b, v10
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v171, s85, v162 :: v_dual_and_b32 v10, 0xffff0000, v211
	v_dual_fmac_f32 v174, s85, v35 :: v_dual_mul_f32 v175, 0x3fb8aa3b, v10
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_and_b32_e32 v10, 0xffff0000, v212
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v176, 0x3fb8aa3b, v10
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v10.h, v198.l
	v_mov_b16_e32 v10.l, v13.l
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v176, s85, v33 :: v_dual_mul_f32 v33, 0x3fb8aa3b, v10
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v10.h, v199.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v33, s59, v30
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v30, 0x3fb8aa3b, v10
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_mov_b16_e64 v10.h, v200.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v30, s3, v31 :: v_dual_mul_f32 v31, 0x3fb8aa3b, v10
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v10.h, v201.l
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v31, s86, v32 :: v_dual_mul_f32 v32, 0x3fb8aa3b, v10
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v10.h, v202.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v170, s85, v161
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v32, s88, v37 :: v_dual_fmac_f32 v175, s85, v34
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v34, 0x3fb8aa3b, v10
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_mov_b16_e64 v10.h, v203.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v34, s89, v38
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v35, 0x3fb8aa3b, v10
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_mov_b16_e64 v10.h, v204.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v36, 0x3fb8aa3b, v10
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v10, 0xffff0000, v197
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v36, s56, v40 :: v_dual_mul_f32 v37, 0x3fb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v26, s85, v28 :: v_dual_fmac_f32 v37, s56, v9
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v9.h, v207.l
	v_mov_b16_e32 v9.l, v13.l
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v38, 0x3fb8aa3b, v9
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v9.h, v208.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v38, s59, v22
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v22, 0x3fb8aa3b, v9
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_mov_b16_e64 v9.h, v212.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v35, s90, v39
	v_fmac_f32_e32 v172, s85, v163
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v22, s3, v23 :: v_dual_mul_f32 v23, 0x3fb8aa3b, v9
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v9.h, v209.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v23, s90, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v29, 0x3fb8aa3b, v9
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_mov_b16_e64 v9.h, v211.l
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v29, s86, v24 :: v_dual_mul_f32 v24, 0x3fb8aa3b, v9
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v9.h, v210.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v24, s89, v27 :: v_dual_mul_f32 v27, 0x3fb8aa3b, v9
	.loc	1 685 25                        ; attention.py:685:25
	ds_load_u16_d16 v9, v116
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v9, v117 offset:32
	ds_load_u16_d16 v10, v116 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v10, v115 offset:32
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v27, s88, v25
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v25, 0x3fb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v25, s85, v21
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	v_and_b16 v11.l, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v9.l
	v_cmp_eq_u16_e64 s30, 1, v11.l
	ds_load_u16_d16 v11, v115
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v11, v114 offset:32
	v_and_b16 v9.l, 1, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s14, 1, v9.l
	ds_load_u16_d16 v9, v117
	s_waitcnt lgkmcnt(1)
	v_and_b16 v12.l, 1, v11.l
	v_lshrrev_b16 v11.l, 8, v11.l
	v_cmp_eq_u16_e64 s33, 1, v12.l
	ds_load_u16_d16 v12, v114
	v_and_b16 v11.l, 1, v11.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s17, 1, v11.l
	s_waitcnt lgkmcnt(1)
	v_lshrrev_b16 v11.l, 8, v9.l
	v_and_b16 v9.l, 1, v9.l
	v_and_b16 v11.l, 1, v11.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s36, 1, v9.l
	v_cmp_eq_u16_e64 s16, 1, v11.l
	v_lshrrev_b16 v11.l, 8, v16.l
	s_waitcnt lgkmcnt(0)
	v_and_b16 v12.h, 1, v12.l
	v_lshrrev_b16 v12.l, 8, v12.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b16 v11.l, 1, v11.l
	v_cmp_eq_u16_e64 s31, 1, v12.h
	ds_load_u16_d16_hi v12, v113
	ds_load_u16_d16_hi v13, v113 offset:32
	ds_load_u16_d16 v14, v112 offset:32
	s_waitcnt lgkmcnt(2)
	v_and_b16 v12.l, 1, v12.l
	v_cmp_eq_u16_e64 s12, 1, v11.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s15, 1, v12.l
	s_waitcnt lgkmcnt(0)
	v_and_b16 v14.h, 1, v12.h
	v_lshrrev_b16 v12.h, 8, v12.h
	v_cmp_eq_u16_e64 s35, 1, v14.h
	ds_load_u16_d16_hi v14, v112
	ds_load_u16_d16 v15, v111 offset:32
	v_and_b16 v12.h, 1, v12.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v161, 0xff800000, v31, s35
	v_add_nc_u32_e32 v31, 0, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s19, 1, v12.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v12, 0xff800000, v34, s33
	v_cndmask_b32_e64 v28, 0xff800000, v19, s19
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v15.h, 1, v14.h
	v_lshrrev_b16 v11.l, 8, v15.l
	v_lshrrev_b16 v14.h, 8, v14.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s34, 1, v15.h
	ds_load_u16_d16_hi v15, v111
	v_and_b16 v14.h, 1, v14.h
	v_and_b16 v11.l, 1, v11.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v40, 0xff800000, v30, s34
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s18, 1, v14.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s13, 1, v11.l
	v_lshrrev_b16 v11.l, 8, v14.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v21, 0xff800000, v173, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v11.l, 1, v11.l
	v_cmp_eq_u16_e64 s10, 1, v11.l
	v_lshrrev_b16 v11.l, 8, v13.h
	s_waitcnt lgkmcnt(0)
	v_and_b16 v16.h, 1, v15.h
	v_lshrrev_b16 v15.h, 8, v15.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b16 v11.l, 1, v11.l
	v_cmp_eq_u16_e64 s41, 1, v16.h
	v_and_b16 v16.h, 1, v16.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b16 v15.h, 1, v15.h
	v_cmp_eq_u16_e64 s11, 1, v11.l
	v_lshrrev_b16 v11.l, 8, v11.h
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_eq_u16_e64 s28, 1, v16.h
	v_and_b16 v16.h, 1, v9.h
	v_lshrrev_b16 v9.h, 8, v9.h
	v_cmp_eq_u16_e64 s21, 1, v15.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v163, 0xff800000, v33, s41
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v11.l, 1, v11.l
	v_cmp_eq_u16_e64 s23, 1, v16.h
	v_and_b16 v16.h, 1, v10.l
	v_and_b16 v9.h, 1, v9.h
	v_lshrrev_b16 v10.l, 8, v10.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v19, 0xff800000, v165, s11
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s7, 1, v11.l
	v_cmp_eq_u16_e64 s22, 1, v16.h
	v_and_b16 v16.h, 1, v10.h
	v_lshrrev_b16 v10.h, 8, v10.h
	v_cmp_eq_u16_e64 s8, 1, v9.h
	v_and_b16 v10.l, 1, v10.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v30, 0xff800000, v24, s22
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s25, 1, v16.h
	v_and_b16 v16.h, 1, v11.h
	v_and_b16 v10.h, 1, v10.h
	v_cmp_eq_u16_e32 vcc_lo, 1, v10.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v11, 0xff800000, v32, s31
	v_cndmask_b32_e64 v34, 0xff800000, v27, s25
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s24, 1, v16.h
	v_and_b16 v16.h, 1, v13.h
	v_cmp_eq_u16_e64 s9, 1, v10.h
	.loc	1 686 26                        ; attention.py:686:26
	v_add_nc_u32_e32 v10, 0, v83
	v_cndmask_b32_e64 v27, 0xff800000, v20, s18
	v_cndmask_b32_e64 v33, 0xff800000, v29, s24
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s27, 1, v16.h
	v_and_b16 v16.h, 1, v14.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v29, 0xff800000, v168, s21
	v_cndmask_b32_e64 v24, 0xff800000, v18, s15
	v_cndmask_b32_e64 v32, 0xff800000, v23, s23
	v_cndmask_b32_e64 v23, 0xff800000, v171, s16
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s26, 1, v16.h
	v_and_b16 v16.h, 1, v15.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v20, 0xff800000, v172, s12
	v_cndmask_b32_e64 v18, 0xff800000, v164, s10
	v_cndmask_b32_e32 v14, 0xff800000, v175, vcc_lo
	v_cndmask_b32_e64 v15, 0xff800000, v176, s8
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s29, 1, v16.h
	ds_load_u16_d16_hi v16, v17
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 685 25                        ; attention.py:685:25
	v_lshrrev_b16 v17.l, 8, v16.h
	v_and_b16 v9.h, 1, v16.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v16, 0xff800000, v166, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v17.l, 1, v17.l
	v_cmp_eq_u16_e64 s42, 1, v9.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v9, 0xff800000, v35, s30
	v_cndmask_b32_e64 v35, 0xff800000, v38, s26
	v_cndmask_b32_e64 v38, 0xff800000, v25, s29
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s20, 1, v17.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v162, 0xff800000, v26, s42
	v_cndmask_b32_e64 v25, 0xff800000, v169, s17
	v_cndmask_b32_e64 v17, 0xff800000, v174, s9
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v26, 0xff800000, v37, s20
	v_cndmask_b32_e64 v37, 0xff800000, v167, s28
	ds_store_2addr_b32 v10, v162, v26 offset1:32
	v_cndmask_b32_e64 v10, 0xff800000, v36, s36
	v_cndmask_b32_e64 v36, 0xff800000, v22, s27
	v_cndmask_b32_e64 v22, 0xff800000, v170, s14
	ds_store_2addr_b32 v118, v163, v29 offset1:32
	ds_store_2addr_b32 v119, v40, v27 offset1:32
	ds_store_2addr_b32 v120, v161, v28 offset1:32
	ds_store_2addr_b32 v121, v11, v24 offset1:32
	ds_store_2addr_b32 v122, v12, v25 offset1:32
	ds_store_2addr_b32 v123, v9, v22 offset1:32
	ds_store_2addr_b32 v124, v10, v23 offset1:32
	ds_store_2addr_b32 v125, v37, v20 offset1:32
	ds_store_2addr_b32 v126, v38, v21 offset1:32
	ds_store_2addr_b32 v127, v35, v18 offset1:32
	ds_store_2addr_b32 v128, v36, v19 offset1:32
	ds_store_2addr_b32 v129, v33, v16 offset1:32
	ds_store_2addr_b32 v130, v34, v17 offset1:32
	ds_store_2addr_b32 v131, v30, v14 offset1:32
	ds_store_2addr_b32 v132, v32, v15 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v39, v31
	ds_load_b32 v168, v133
	ds_load_b32 v169, v134
	ds_load_b32 v170, v135
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_dpp v31, v39 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp4:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v164, v39, v39 :: v_dual_max_f32 v165, v168, v168
	v_dual_max_f32 v166, v169, v169 :: v_dual_max_f32 v167, v170, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v31, v31, v31
	v_max_f32_e32 v31, v164, v31
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v164, v168 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v164, v164, v164
	v_max_f32_e32 v164, v165, v164
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v165, v169 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v165, v165, v165
	v_max_f32_e32 v165, v166, v165
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v166, v170 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v166, v166, v166
	v_max_f32_e32 v166, v167, v166
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v167, v31 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v167, v167, v167
	v_max_f32_e32 v31, v31, v167
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v167, v164 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v167, v167, v167
	v_max_f32_e32 v164, v164, v167
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v167, v165 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v167, v167, v167
	v_max_f32_e32 v165, v165, v167
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v167, v166 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v167, v167, v167
	v_max_f32_e32 v166, v166, v167
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v167, v31 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v167, v167, v167
	v_max_f32_e32 v31, v31, v167
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v167, v164 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v167, v167, v167
	v_max_f32_e32 v164, v164, v167
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v167, v165 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v167, v167, v167
	v_max_f32_e32 v165, v165, v167
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v167, v166 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v167, v167, v167
	v_max_f32_e32 v166, v166, v167
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v167, v31 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v167, v167, v167
	v_max_f32_e32 v31, v31, v167
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v167, v164 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v167, v167, v167
	v_max_f32_e32 v164, v164, v167
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v167, v165 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v167, v167, v167
	v_max_f32_e32 v165, v165, v167
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v167, v166 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v167, v167, v167
	v_max_f32_e32 v166, v166, v167
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v167, v31, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v167, v167, v167
	v_max_f32_e32 v31, v31, v167
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v167, v164, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s43, v31, 31
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v167, v167, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v164, v164, v167
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v167, v165, -1, -1 op_sel:[1,0]
	v_readlane_b32 s44, v164, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v167, v167, v167 :: v_dual_mov_b32 v164, s43
	v_max_f32_e32 v165, v165, v167
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v167, v166, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s45, v165, 31
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v167, v167, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_dual_mov_b32 v165, s44 :: v_dual_max_f32 v166, v166, v167
	v_readlane_b32 s46, v166, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v166, s45 :: v_dual_mov_b32 v167, s46
	ds_store_b128 v88, v[164:167]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[164:167], v89
.Ltmp44:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v31, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v31, v31 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v156, v156, v165, v31
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v31, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v31, v31 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v157, v157, v166, v31
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v31, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v31, v31 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v55, v55, v167, v31
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v31, v164
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v164, v164, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v31, v31 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v31, v31, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v31, v164, v31
.Ltmp55:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v155, v155, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v39, v39, v155
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v39, 0, v39, s38
.Ltmp56:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v39, v39, v39 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v39, v39, v39 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v39, v39, v39 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v39, v39, v39 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp57:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v164, v39, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v39, v39, v164
.Ltmp59:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v164, v168, v156
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v164, v164
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v164, 0, v164, s37
.Ltmp60:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s37, v39, 31
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v39, v38, v35, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v164, v164, v164 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v164, v164, v164 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v164, v164, v164 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v164, v164, v164 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v165, v164, -1, -1 op_sel:[1,0]
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v164, v164, v165
.Ltmp65:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v165, v169, v157
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s38, v164, 31
.Ltmp67:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v165, v165
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v164, s37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp69:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v165, 0, v165, s40
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v165, v165, v165 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v165, v165, v165 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v165, v165, v165 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v165, v165, v165 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v166, v165, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v165, v165, v166 :: v_dual_sub_f32 v166, v170, v55
.Ltmp73:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v166, v166
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v166, 0, v166, s39
.Ltmp74:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s39, v165, 31
	v_mov_b32_e32 v165, s38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v166, v166, v166 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v166, v166, v166 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v166, v166, v166 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v166, v166, v166 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v167, v166, -1, -1 op_sel:[1,0]
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v166, v166, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s40, v166, 31
	v_dual_mov_b32 v166, s39 :: v_dual_mov_b32 v167, s40
	ds_store_b128 v88, v[164:167]
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v164, v33, v34, v30
	v_max3_f32 v165, v32, v26, v29
	v_max3_f32 v166, v20, v21, v18
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v39, v39, v164, v165
	v_max3_f32 v164, v27, v28, v24
	v_max3_f32 v165, v25, v22, v23
	v_max3_f32 v164, v164, v165, v166
	v_max_f32_e32 v165, v162, v163
	v_max3_f32 v166, v161, v11, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v165, v165, v40, v166
	v_max3_f32 v166, v9, v10, v37
	v_max3_f32 v39, v165, v166, v39
	v_dual_max_f32 v165, v19, v16 :: v_dual_max_f32 v166, v14, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v165, v165, v17, v166
	v_max3_f32 v39, v39, v164, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp82:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v164, v39, s57, 0xfedcba98 op_sel:[1,0]
.Ltmp83:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v39, v160, v39, v164
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v164.h, v13.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v163, v163, v39
	v_sub_f32_e32 v162, v162, v39
	v_sub_f32_e32 v161, v161, v39
	v_sub_f32_e32 v40, v40, v39
	v_sub_f32_e32 v12, v12, v39
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v163, v163
	v_exp_f32_e32 v162, v162
	v_exp_f32_e32 v161, v161
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v12, v12
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v11, v11, v39
	v_sub_f32_e32 v10, v10, v39
	v_sub_f32_e32 v9, v9, v39
	.loc	1 689 74 is_stmt 1              ; attention.py:689:74
	v_sub_f32_e32 v180, v160, v39
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v163, 0, v163, s41
	v_cndmask_b32_e64 v162, 0, v162, s42
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v161, 0, v161, s35
	v_cndmask_b32_e64 v40, 0, v40, s34
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v12, 0, v12, s33
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v164.l, v163.h
	v_cmp_o_f32_e64 s37, v163, v163
	v_cmp_o_f32_e64 s38, v162, v162
	v_cmp_o_f32_e64 s35, v161, v161
	v_cmp_o_f32_e64 s34, v40, v40
	v_and_b32_e32 v164, 1, v164
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v11, v11
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s33, v12, v12
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v10, v10
	v_exp_f32_e32 v9, v9
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v164, v163, v164, 0x7fff
	v_mov_b16_e64 v163.l, v162.h
	v_mov_b16_e64 v163.h, v13.l
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v180, v180
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v164.h, 0x7fff, v164.h, s37
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v11, 0, v11, s31
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v163, 1, v163
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v10, 0, v10, s36
	v_cndmask_b32_e64 v9, 0, v9, s30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s31, v11, v11
	v_add3_u32 v163, v162, v163, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s30, v9, v9
	v_cndmask_b16 v164.l, 0x7fff, v163.h, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v163, v164, s57, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v162, v163, v164, v85
	v_perm_b32 v163, v163, v164, v86
	v_mov_b16_e64 v164.l, v161.h
	v_mov_b16_e64 v164.h, v13.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v164, 1, v164
	v_add3_u32 v164, v161, v164, 0x7fff
	v_mov_b16_e64 v161.l, v40.h
	v_mov_b16_e64 v161.h, v13.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v161, 1, v161
	v_add3_u32 v161, v40, v161, 0x7fff
	v_cndmask_b16 v40.h, 0x7fff, v164.h, s35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v40.l, 0x7fff, v161.h, s34
	v_permlanex16_b32 v161, v40, s57, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v164, v161, v40, v85
	v_perm_b32 v165, v161, v40, v86
	v_mov_b16_e32 v40.l, v12.h
	v_mov_b16_e32 v40.h, v13.l
	v_and_b32_e32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v40, v12, v40, 0x7fff
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e32 v12.h, v13.l
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v11, v12, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v40.h, s33
	v_cndmask_b16 v11.l, 0x7fff, v12.h, s31
	v_cmp_o_f32_e64 s31, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v12, v11, s57, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v166, v12, v11, v85
	v_perm_b32 v167, v12, v11, v86
	v_mov_b16_e32 v11.l, v10.h
	v_mov_b16_e32 v11.h, v13.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v11, v10, v11, 0x7fff
	v_mov_b16_e32 v10.l, v9.h
	v_mov_b16_e32 v10.h, v13.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v10, 1, v10
	v_add3_u32 v10, v9, v10, 0x7fff
	v_cndmask_b16 v9.h, 0x7fff, v11.h, s31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v9.l, 0x7fff, v10.h, s30
	v_permlanex16_b32 v10, v9, s57, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v168, v10, v9, v85
	v_perm_b32 v169, v10, v9, v86
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v9, s83, v69
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s83, s83, 64
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v10, 4, v9
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s45, s63, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cmp_gt_i32_e64 s30, s63, v10
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v10, 8, v9
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s45, s2, s45
	s_and_b32 s30, s2, s30
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s31, s63, v10
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_add_nc_u32_e32 v10, 12, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s33, s63, v10
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v10, 16, v9
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s34, s63, v10
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v10, 20, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s35, s63, v10
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v10, 24, v9
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s36, s63, v10
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v10, 28, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s37, s63, v10
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v10, 32, v9
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s38, s63, v10
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v10, 36, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s39, s63, v10
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v10, 40, v9
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s40, s63, v10
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v10, 44, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s41, s63, v10
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v10, 48, v9
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s42, s63, v10
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v10, 52, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s43, s63, v10
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v10, 56, v9
	v_add_nc_u32_e32 v9, 60, v9
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s44, s63, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_gt_i32_e64 s46, s63, v9
	v_mad_u64_u32 v[9:10], null, s47, s82, v[54:55]
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s47, 0xff800000, v160
	v_cndmask_b32_e64 v160, 0, v180, s47
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v11, v9, s92, 1
	v_add_lshl_u32 v12, v9, s93, 1
	v_add_lshl_u32 v40, v9, s94, 1
	v_add_lshl_u32 v161, v9, s95, 1
	v_add_lshl_u32 v170, v9, s96, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s30
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s30, s2, s31
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v171, v9, s97, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s30
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s30, s2, s33
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v1, v1, v160
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v40, 0x80000000, v40, s30
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s30, s2, s34
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v2, v2, v160
	v_mul_f32_e32 v3, v3, v160
	v_mul_f32_e32 v4, v4, v160
	v_mul_f32_e32 v5, v5, v160
	v_mul_f32_e32 v6, v6, v160
	v_mul_f32_e32 v7, v7, v160
	v_mul_f32_e32 v8, v8, v160
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v160, 0x80000000, v161, s30
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s30, s2, s35
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v172, v9, s98, 1
	v_cndmask_b32_e64 v161, 0x80000000, v170, s30
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s30, s2, s36
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v173, v9, s99, 1
	v_cndmask_b32_e64 v170, 0x80000000, v171, s30
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s30, s2, s37
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v174, v9, s100, 1
	v_cndmask_b32_e64 v171, 0x80000000, v172, s30
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s30, s2, s38
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v175, v9, s101, 1
	v_cndmask_b32_e64 v172, 0x80000000, v173, s30
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s30, s2, s39
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v176, v9, s102, 1
	v_cndmask_b32_e64 v173, 0x80000000, v174, s30
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s30, s2, s40
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v177, v9, s103, 1
	v_lshlrev_b32_e32 v10, 1, v9
	v_cndmask_b32_e64 v174, 0x80000000, v175, s30
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s30, s2, s41
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v178, v9, s104, 1
	v_cndmask_b32_e64 v175, 0x80000000, v176, s30
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s30, s2, s42
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v179, v9, vcc_hi, 1
	v_cndmask_b32_e64 v176, 0x80000000, v177, s30
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s30, s2, s43
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v9, v9, s58, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s45
	v_cndmask_b32_e64 v177, 0x80000000, v178, s30
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s30, s2, s44
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v178, 0x80000000, v179, s30
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s30, s2, s46
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s83, s84
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v9, 0x80000000, v9, s30
	s_clause 0xf
	buffer_load_u16 v179, v10, s[76:79], 0 offen
	buffer_load_u16 v180, v11, s[76:79], 0 offen
	buffer_load_u16 v181, v12, s[76:79], 0 offen
	buffer_load_u16 v160, v160, s[76:79], 0 offen
	buffer_load_u16 v161, v161, s[76:79], 0 offen
	buffer_load_u16 v170, v170, s[76:79], 0 offen
	buffer_load_u16 v171, v171, s[76:79], 0 offen
	buffer_load_u16 v40, v40, s[76:79], 0 offen
	buffer_load_u16 v172, v172, s[76:79], 0 offen
	buffer_load_u16 v173, v173, s[76:79], 0 offen
	buffer_load_u16 v174, v174, s[76:79], 0 offen
	buffer_load_u16 v176, v176, s[76:79], 0 offen
	buffer_load_u16 v177, v177, s[76:79], 0 offen
	buffer_load_u16 v178, v178, s[76:79], 0 offen
	buffer_load_u16 v182, v9, s[76:79], 0 offen
	buffer_load_u16 v175, v175, s[76:79], 0 offen
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	ds_load_b128 v[9:12], v89
.Ltmp85:
	.loc	1 690 62                        ; attention.py:690:62
	s_waitcnt lgkmcnt(0)
	v_sub_f32_e32 v10, v38, v39
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v11.h, v13.l
	v_mov_b16_e32 v12.h, v13.l
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v10, v10
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(15)
	ds_store_b16 v136, v179
	s_waitcnt vmcnt(14)
	ds_store_b16 v136, v180 offset:512
	s_waitcnt vmcnt(13)
	ds_store_b16 v136, v181 offset:1024
	s_waitcnt vmcnt(12)
	ds_store_b16 v136, v160 offset:2048
	s_waitcnt vmcnt(11)
	ds_store_b16 v136, v161 offset:2560
	s_waitcnt vmcnt(10)
	ds_store_b16 v136, v170 offset:3072
	s_waitcnt vmcnt(7)
	ds_store_b16 v136, v172 offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b16 v136, v173 offset:4608
	s_waitcnt vmcnt(5)
	ds_store_b16 v136, v174 offset:5120
	s_waitcnt vmcnt(4)
	ds_store_b16 v136, v176 offset:6144
	s_waitcnt vmcnt(3)
	ds_store_b16 v136, v177 offset:6656
	ds_store_b16 v137, v40
	ds_store_b16 v138, v171
	s_waitcnt vmcnt(0)
	ds_store_b16 v139, v175
	ds_store_b16 v136, v178 offset:7168
	ds_store_b16 v140, v182
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v10, 0, v10, s29
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v170, v87
	ds_load_u16_d16 v171, v87 offset:256
	ds_load_u16_d16 v172, v87 offset:512
	ds_load_u16_d16 v173, v87 offset:768
	ds_load_u16_d16 v174, v87 offset:1024
	ds_load_u16_d16 v175, v87 offset:1280
	ds_load_u16_d16 v176, v87 offset:1536
	ds_load_u16_d16 v177, v87 offset:1792
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v170, v87 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v171, v87 offset:384
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v172, v87 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v173, v87 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v174, v87 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v175, v87 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v176, v87 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v177, v87 offset:1920
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v11.l, v10.h
	v_cmp_o_f32_e64 s29, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v10, v10, v11, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v11, v37, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s29
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v11, v11
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[170:177], v[162:169], v[1:8]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v168, v87 offset:2048
	ds_load_u16_d16 v169, v87 offset:2304
	ds_load_u16_d16 v170, v87 offset:2560
	ds_load_u16_d16 v171, v87 offset:2816
	ds_load_u16_d16 v172, v87 offset:3072
	ds_load_u16_d16 v173, v87 offset:3328
	ds_load_u16_d16 v174, v87 offset:3584
	ds_load_u16_d16 v175, v87 offset:3840
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v168, v87 offset:2176
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v169, v87 offset:2432
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v170, v87 offset:2688
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v171, v87 offset:2944
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v172, v87 offset:3200
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v173, v87 offset:3456
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v174, v87 offset:3712
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v175, v87 offset:3968
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v11, 0, v11, s28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v12.l, v11.h
	v_cmp_o_f32_e64 s28, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v11, v11, v12, 0x7fff
	v_mov_b16_e32 v12.h, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v10.l, 0x7fff, v11.h, s28
	v_permlanex16_b32 v11, v10, s57, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v160, v11, v10, v85
	v_perm_b32 v161, v11, v10, v86
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v10, v36, v39
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v11.h, v13.l
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v10, 0, v10, s27
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v11.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s27, v10, v10
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v10, v10, v11, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v11, v35, v39
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v11, v11
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v11, 0, v11, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v12.l, v11.h
	v_cmp_o_f32_e64 s26, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v11, v11, v12, 0x7fff
	v_mov_b16_e32 v12.h, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v10.l, 0x7fff, v11.h, s26
	v_permlanex16_b32 v11, v10, s57, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v162, v11, v10, v85
	v_perm_b32 v163, v11, v10, v86
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v10, v34, v39
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v11.h, v13.l
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v10, 0, v10, s25
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v11.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s25, v10, v10
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v10, v10, v11, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v11, v33, v39
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v11, v11
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v11, 0, v11, s24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v12.l, v11.h
	v_cmp_o_f32_e64 s24, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v11, v11, v12, 0x7fff
	v_mov_b16_e32 v12.h, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v10.l, 0x7fff, v11.h, s24
	v_permlanex16_b32 v11, v10, s57, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v164, v11, v10, v85
	v_perm_b32 v165, v11, v10, v86
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v10, v32, v39
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v11.h, v13.l
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v10, 0, v10, s23
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v11.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s23, v10, v10
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v10, v10, v11, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v11, v30, v39
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v11, v11
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v11, 0, v11, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v12.l, v11.h
	v_cmp_o_f32_e64 s22, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v12, v11, v12, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v10.l, 0x7fff, v12.h, s22
	v_mov_b16_e32 v12.h, v13.l
	v_permlanex16_b32 v11, v10, s57, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_perm_b32 v166, v11, v10, v85
	v_perm_b32 v167, v11, v10, v86
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v10, v29, v39
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v11.h, v13.l
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[168:175], v[160:167], v[1:8]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 1              ; attention.py:690:49
	v_exp_f32_e32 v10, v10
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v10, 0, v10, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v11.l, v10.h
	v_cmp_o_f32_e64 s21, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v11, v10, v11, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v10, v26, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v10, v10
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v10, 0, v10, s20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v12.l, v10.h
	v_cmp_o_f32_e64 s20, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v12, v10, v12, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v10.l, 0x7fff, v12.h, s20
	v_mov_b16_e32 v12.h, v13.l
	v_permlanex16_b32 v11, v10, s57, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v160, v11, v10, v85
	v_perm_b32 v161, v11, v10, v86
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v10, v28, v39
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v11.h, v13.l
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v10, 0, v10, s19
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v11.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s19, v10, v10
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v11, v10, v11, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v10, v27, v39
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v10, 0, v10, s18
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v12.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s18, v10, v10
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v10, v12, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s19
	v_cndmask_b16 v10.l, 0x7fff, v12.h, s18
	v_mov_b16_e32 v12.h, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v11, v10, s57, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v162, v11, v10, v85
	v_perm_b32 v163, v11, v10, v86
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v10, v25, v39
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v11.h, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v10, v10
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v10, 0, v10, s17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v11.l, v10.h
	v_cmp_o_f32_e64 s17, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v11, v10, v11, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v10, v24, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v10, v10
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v10, 0, v10, s15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v12.l, v10.h
	v_cmp_o_f32_e64 s15, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v12, v10, v12, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v10.l, 0x7fff, v12.h, s15
	v_mov_b16_e32 v12.h, v13.l
	v_permlanex16_b32 v11, v10, s57, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v164, v11, v10, v85
	v_perm_b32 v165, v11, v10, v86
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v10, v23, v39
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v11.h, v13.l
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v10, 0, v10, s16
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v11.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s15, v10, v10
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v11, v10, v11, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v10, v22, v39
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v22, v87 offset:4096
	ds_load_u16_d16 v23, v87 offset:4352
	ds_load_u16_d16 v24, v87 offset:4608
	ds_load_u16_d16 v25, v87 offset:4864
	ds_load_u16_d16 v26, v87 offset:5120
	ds_load_u16_d16 v27, v87 offset:5376
	ds_load_u16_d16 v28, v87 offset:5632
	ds_load_u16_d16 v29, v87 offset:5888
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v22, v87 offset:4224
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v23, v87 offset:4480
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v24, v87 offset:4736
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v25, v87 offset:4992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v26, v87 offset:5248
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v27, v87 offset:5504
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v28, v87 offset:5760
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v29, v87 offset:6016
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v10, 0, v10, s14
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v12.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s14, v10, v10
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v10, v12, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s15
	v_cndmask_b16 v10.l, 0x7fff, v12.h, s14
	v_mov_b16_e32 v12.h, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v11, v10, s57, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v166, v11, v10, v85
	v_perm_b32 v167, v11, v10, v86
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v10, v21, v39
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v11.h, v13.l
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[22:29], v[160:167], v[1:8]
	.loc	1 690 49 is_stmt 1              ; attention.py:690:49
	v_exp_f32_e32 v10, v10
	v_mov_b32_e32 v160, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v10, 0, v10, s13
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v11.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s13, v10, v10
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v11, v10, v11, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v10, v20, v39
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v10, 0, v10, s12
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v12.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s12, v10, v10
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v10, v12, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s13
	v_cndmask_b16 v10.l, 0x7fff, v12.h, s12
	v_mov_b16_e32 v12.h, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v11, v10, s57, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v20, v11, v10, v85
	v_perm_b32 v21, v11, v10, v86
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v10, v19, v39
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v11.h, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v10, v10
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v10, 0, v10, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v11.l, v10.h
	v_cmp_o_f32_e64 s11, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v11, v10, v11, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v10, v18, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v10, v10
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v10, 0, v10, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v12.l, v10.h
	v_cmp_o_f32_e64 s10, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v12, v10, v12, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v10.l, 0x7fff, v12.h, s10
	v_mov_b16_e32 v12.h, v13.l
	v_permlanex16_b32 v11, v10, s57, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v22, v11, v10, v85
	v_perm_b32 v23, v11, v10, v86
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v10, v17, v39
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v11.h, v13.l
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v10, 0, v10, s9
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v11.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s9, v10, v10
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v11, v10, v11, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v10, v16, v39
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v10, 0, v10, s7
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v12.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s7, v10, v10
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v10, v12, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s9
	v_cndmask_b16 v10.l, 0x7fff, v12.h, s7
	v_mov_b16_e32 v12.h, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v11, v10, s57, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v24, v11, v10, v85
	v_perm_b32 v25, v11, v10, v86
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v10, v15, v39
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v11.h, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v10, v10
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v10, 0, v10, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v11.l, v10.h
	v_cmp_o_f32_e64 s7, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v11, v10, v11, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v10, v14, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v10, v10
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e32 v10, 0, v10, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v12.l, v10.h
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v12, v10, v12, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v10.l, 0x7fff, v12.h, vcc_lo
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v159
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v11, v10, s57, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v26, v11, v10, v85
	v_perm_b32 v27, v11, v10, v86
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v10, v87 offset:6144
	ds_load_u16_d16 v11, v87 offset:6400
	ds_load_u16_d16 v12, v87 offset:6656
	ds_load_u16_d16 v13, v87 offset:6912
	ds_load_u16_d16 v14, v87 offset:7168
	ds_load_u16_d16 v15, v87 offset:7424
	ds_load_u16_d16 v16, v87 offset:7680
	ds_load_u16_d16 v17, v87 offset:7936
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v10, v87 offset:6272
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v11, v87 offset:6528
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v12, v87 offset:6784
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v13, v87 offset:7040
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v14, v87 offset:7296
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v15, v87 offset:7552
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v16, v87 offset:7808
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v17, v87 offset:8064
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[10:17], v[20:27], v[1:8]
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v10, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v9, v9, v10 :: v_dual_max_f32 v10, v159, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp88:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v10, v10, v31
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v11, v159, v10
	v_mov_b32_e32 v159, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v11, v11
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v11, 0, v11, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fmac_f32_e32 v9, v158, v11
	v_mov_b32_e32 v158, v9
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc0 .LBB0_14
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 633 32                        ; attention.py:633:32
	s_add_i32 s47, s83, s61
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v168, s55 :: v_dual_add_nc_u32 v9, s83, v56
	.loc	1 633 32                        ; attention.py:633:32
	s_mul_i32 s7, s47, s81
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v185, s83, v70
	.loc	1 633 32                        ; attention.py:633:32
	v_add_nc_u32_e32 v17, s7, v43
	v_add_nc_u32_e32 v18, s7, v59
	s_mul_i32 s7, s81, 24
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v167, s54 :: v_dual_add_nc_u32 v10, 8, v9
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v20, s7, v17
	s_mul_i32 s7, s81, 40
	v_dual_mov_b32 v166, s53 :: v_dual_add_nc_u32 v11, 16, v9
	v_add_nc_u32_e32 v22, s7, v17
	s_mul_i32 s7, s81, 48
	v_dual_mov_b32 v165, s52 :: v_dual_add_nc_u32 v12, 24, v9
	v_dual_mov_b32 v164, s51 :: v_dual_add_nc_u32 v13, 32, v9
	v_dual_mov_b32 v163, s50 :: v_dual_add_nc_u32 v14, 40, v9
	v_dual_mov_b32 v162, s49 :: v_dual_add_nc_u32 v15, 48, v9
	v_add_nc_u32_e32 v23, s7, v17
	s_mul_i32 s7, s81, 56
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s8, s63, v10
	v_add_nc_u32_e32 v24, s7, v17
	v_cmp_gt_i32_e64 s7, s63, v9
	v_cmp_gt_i32_e64 s9, s63, v11
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v161, s48 :: v_dual_add_nc_u32 v16, 56, v9
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s10, s63, v12
	v_cmp_gt_i32_e64 s11, s63, v13
	v_add_nc_u32_e32 v19, s62, v17
	v_cmp_gt_i32_e64 s12, s63, v14
	v_cmp_gt_i32_e64 s13, s63, v15
	v_add_nc_u32_e32 v21, s87, v17
	.loc	1 636 30 is_stmt 0              ; attention.py:636:30
	s_and_b32 s7, s4, s7
	s_and_b32 s8, s4, s8
	s_and_b32 s9, s4, s9
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s14, s63, v16
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
	buffer_load_u8 v9, v9, s[68:71], 0 offen
	buffer_load_u8 v10, v10, s[68:71], 0 offen
	buffer_load_u8 v11, v11, s[68:71], 0 offen
	buffer_load_u8 v12, v12, s[68:71], 0 offen
	buffer_load_u8 v13, v13, s[68:71], 0 offen
	buffer_load_u8 v14, v14, s[68:71], 0 offen
	buffer_load_u8 v15, v15, s[68:71], 0 offen
	v_cndmask_b32_e64 v16, 0x80000000, v24, s14
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v193, 14, v185
	v_add_nc_u32_e32 v186, 2, v185
	v_add_nc_u32_e32 v187, 4, v185
	v_add_nc_u32_e32 v188, 6, v185
	.loc	1 634 32                        ; attention.py:634:32
	buffer_load_u8 v16, v16, s[68:71], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v189, 8, v185
	v_add_nc_u32_e32 v196, 20, v185
	v_add_nc_u32_e32 v204, 36, v185
	v_add_nc_u32_e32 v212, 52, v185
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s31, s63, v193
	.loc	1 650 25                        ; attention.py:650:25
	v_add_lshl_u32 v193, s47, v70, 1
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s39, s63, v185
	v_cmp_gt_i32_e64 s38, s63, v186
	v_cmp_gt_i32_e64 s37, s63, v187
	v_cmp_gt_i32_e64 s36, s63, v188
	v_cmp_gt_i32_e64 s35, s63, v189
	v_cmp_gt_i32_e64 s28, s63, v196
	v_cmp_gt_i32_e64 s20, s63, v204
	v_cmp_gt_i32_e64 s12, s63, v212
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v187, 0x68, v193
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v190, 10, v185
	v_add_nc_u32_e32 v197, 22, v185
	v_add_nc_u32_e32 v205, 38, v185
	v_add_nc_u32_e32 v213, 54, v185
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v187, 0x80000000, v187, s12
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s34, s63, v190
	v_cmp_gt_i32_e64 s27, s63, v197
	v_cmp_gt_i32_e64 s19, s63, v205
	v_cmp_gt_i32_e64 s11, s63, v213
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v188, 0x6c, v193
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v191, 12, v185
	v_add_nc_u32_e32 v198, 24, v185
	v_add_nc_u32_e32 v206, 40, v185
	v_add_nc_u32_e32 v214, 56, v185
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v188, 0x80000000, v188, s11
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s33, s63, v191
	v_cmp_gt_i32_e64 s26, s63, v198
	v_cmp_gt_i32_e64 s18, s63, v206
	v_cmp_gt_i32_e64 s10, s63, v214
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v189, 0x70, v193
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v199, 26, v185
	v_add_nc_u32_e32 v207, 42, v185
	v_add_nc_u32_e32 v215, 58, v185
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v190, 0x74, v193
	v_cndmask_b32_e64 v189, 0x80000000, v189, s10
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s25, s63, v199
	v_cmp_gt_i32_e64 s17, s63, v207
	v_cmp_gt_i32_e64 s9, s63, v215
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v194, 16, v185
	v_add_nc_u32_e32 v200, 28, v185
	v_add_nc_u32_e32 v208, 44, v185
	v_add_nc_u32_e32 v216, 60, v185
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v190, 0x80000000, v190, s9
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s30, s63, v194
	v_cmp_gt_i32_e64 s24, s63, v200
	v_cmp_gt_i32_e64 s16, s63, v208
	v_cmp_gt_i32_e64 s8, s63, v216
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v191, 0x78, v193
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v195, 18, v185
	v_add_nc_u32_e32 v201, 30, v185
	v_add_nc_u32_e32 v209, 46, v185
	v_add_nc_u32_e32 v202, 32, v185
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v191, 0x80000000, v191, s8
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s29, s63, v195
	v_cmp_gt_i32_e64 s23, s63, v201
	v_cmp_gt_i32_e64 s15, s63, v209
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v210, 48, v185
	v_add_nc_u32_e32 v203, 34, v185
	v_add_nc_u32_e32 v211, 50, v185
	v_add_nc_u32_e32 v217, 62, v185
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s22, s63, v202
	v_cmp_gt_i32_e64 s14, s63, v210
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v185, 0x60, v193
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s21, s63, v203
	v_cmp_gt_i32_e64 s13, s63, v211
	v_cmp_gt_i32_e64 s7, s63, v217
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v186, 0x64, v193
	v_cndmask_b32_e64 v185, 0x80000000, v185, s14
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v192, s83, v42
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt vmcnt(7)
	ds_store_b8 v60, v9
	s_waitcnt vmcnt(5)
	ds_store_b8 v60, v11 offset:512
	s_waitcnt vmcnt(3)
	ds_store_b8 v60, v13 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b8 v60, v15 offset:1536
	ds_store_b8 v61, v10
	ds_store_b8 v61, v12 offset:512
	ds_store_b8 v61, v14 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v61, v16 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[9:12], v62 offset1:1
	ds_load_2addr_stride64_b64 v[169:172], v62 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[13:16], v63 offset1:1
	ds_load_2addr_stride64_b64 v[173:176], v63 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[33:36], v64 offset1:1
	ds_load_2addr_stride64_b64 v[177:180], v64 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[37:40], v65 offset1:1
	ds_load_2addr_stride64_b64 v[181:184], v65 offset0:2 offset1:3
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v186, 0x80000000, v186, s13
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e32 vcc_lo, s63, v192
	.loc	1 649 37                        ; attention.py:649:37
	s_clause 0x3
	buffer_load_u16 v187, v187, s[72:75], 0 offen
	buffer_load_u16 v188, v188, s[72:75], 0 offen
	buffer_load_u16 v189, v189, s[72:75], 0 offen
	buffer_load_u16 v190, v190, s[72:75], 0 offen
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s14, s6, vcc_lo
	.loc	1 649 37                        ; attention.py:649:37
	s_clause 0x2
	buffer_load_u16 v191, v191, s[72:75], 0 offen
	buffer_load_u16 v185, v185, s[72:75], 0 offen
	buffer_load_u16 v186, v186, s[72:75], 0 offen
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[9:10], v[44:45], v[161:168] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[11:12], v[44:45], v[161:168] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[13:14], v[46:47], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[15:16], v[46:47], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[169:170], v[44:45], v[161:168] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[33:34], v[48:49], v[25:32] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v169, 44, v193
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[17:24], v[35:36], v[48:49], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[173:174], v[46:47], v[9:16] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v174, 52, v193
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[37:38], v[50:51], v[25:32] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v169, 0x80000000, v169, s27
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[17:24], v[39:40], v[50:51], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[177:178], v[48:49], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[171:172], v[44:45], v[161:168] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v162, 4, v193
	v_add_nc_u32_e32 v163, 8, v193
	v_add_nc_u32_e32 v164, 12, v193
	v_add_nc_u32_e32 v165, 16, v193
	v_add_nc_u32_e32 v167, 40, v193
	v_add_nc_u32_e32 v177, 0x48, v193
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[175:176], v[46:47], v[33:40] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v161, 0x80000000, v193, s39
	v_cndmask_b32_e64 v162, 0x80000000, v162, s38
	v_cndmask_b32_e64 v163, 0x80000000, v163, s37
	v_cndmask_b32_e64 v164, 0x80000000, v164, s36
	v_cndmask_b32_e64 v165, 0x80000000, v165, s35
	v_cndmask_b32_e64 v167, 0x80000000, v167, s28
	v_cndmask_b32_e64 v177, 0x80000000, v177, s20
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[179:180], v[48:49], v[33:40] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	s_clause 0x6
	buffer_load_u16 v161, v161, s[72:75], 0 offen
	buffer_load_u16 v162, v162, s[72:75], 0 offen
	buffer_load_u16 v163, v163, s[72:75], 0 offen
	buffer_load_u16 v164, v164, s[72:75], 0 offen
	buffer_load_u16 v166, v165, s[72:75], 0 offen
	buffer_load_u16 v167, v167, s[72:75], 0 offen
	buffer_load_u16 v177, v177, s[72:75], 0 offen
	v_add_nc_u32_e32 v165, 20, v193
	v_add_nc_u32_e32 v179, 0x4c, v193
	buffer_load_u16 v169, v169, s[72:75], 0 offen
	v_add_nc_u32_e32 v171, 48, v193
	v_add_nc_u32_e32 v180, 0x50, v193
	v_cndmask_b32_e64 v165, 0x80000000, v165, s34
	v_cndmask_b32_e64 v179, 0x80000000, v179, s19
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[181:182], v[50:51], v[9:16] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v171, 0x80000000, v171, s26
	v_cndmask_b32_e64 v180, 0x80000000, v180, s18
	s_clause 0x1
	buffer_load_u16 v168, v165, s[72:75], 0 offen
	buffer_load_u16 v179, v179, s[72:75], 0 offen
	v_add_nc_u32_e32 v165, 24, v193
	s_clause 0x1
	buffer_load_u16 v171, v171, s[72:75], 0 offen
	buffer_load_u16 v180, v180, s[72:75], 0 offen
	v_add_nc_u32_e32 v182, 0x54, v193
	v_cndmask_b32_e64 v174, 0x80000000, v174, s25
	v_cndmask_b32_e64 v165, 0x80000000, v165, s33
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[183:184], v[50:51], v[33:40] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v175, 56, v193
	v_cndmask_b32_e64 v182, 0x80000000, v182, s17
	s_clause 0x1
	buffer_load_u16 v174, v174, s[72:75], 0 offen
	buffer_load_u16 v170, v165, s[72:75], 0 offen
	v_add_nc_u32_e32 v165, 28, v193
	v_add_nc_u32_e32 v183, 0x58, v193
	buffer_load_u16 v182, v182, s[72:75], 0 offen
	v_cndmask_b32_e64 v175, 0x80000000, v175, s24
	v_add_nc_u32_e32 v176, 60, v193
	v_cndmask_b32_e64 v165, 0x80000000, v165, s31
	v_cndmask_b32_e64 v183, 0x80000000, v183, s16
	v_add_nc_u32_e32 v184, 0x5c, v193
	buffer_load_u16 v175, v175, s[72:75], 0 offen
	v_cndmask_b32_e64 v176, 0x80000000, v176, s23
	buffer_load_u16 v172, v165, s[72:75], 0 offen
	v_add_nc_u32_e32 v165, 32, v193
	buffer_load_u16 v183, v183, s[72:75], 0 offen
	v_cndmask_b32_e64 v184, 0x80000000, v184, s15
	buffer_load_u16 v178, v176, s[72:75], 0 offen
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s17, s0, vcc_lo
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v165, 0x80000000, v165, s30
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s16, s1, vcc_lo
	.loc	1 649 37                        ; attention.py:649:37
	buffer_load_u16 v184, v184, s[72:75], 0 offen
	v_add_nc_u32_e32 v176, 64, v193
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s15, s5, vcc_lo
	.loc	1 649 37                        ; attention.py:649:37
	buffer_load_u16 v173, v165, s[72:75], 0 offen
	v_add_nc_u32_e32 v165, 36, v193
	.loc	1 667 17                        ; attention.py:667:17
	v_cmp_ne_u32_e32 vcc_lo, 1, v67
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v176, 0x80000000, v176, s22
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v165, 0x80000000, v165, s29
	.loc	1 667 17                        ; attention.py:667:17
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 649 37                        ; attention.py:649:37
	buffer_load_u16 v181, v176, s[72:75], 0 offen
	v_add_nc_u32_e32 v176, 0x44, v193
	v_add_nc_u32_e32 v193, 0x7c, v193
	buffer_load_u16 v165, v165, s[72:75], 0 offen
	v_cndmask_b32_e64 v176, 0x80000000, v176, s21
	v_cndmask_b32_e64 v193, 0x80000000, v193, s7
	s_clause 0x1
	buffer_load_u16 v176, v176, s[72:75], 0 offen
	buffer_load_u16 v193, v193, s[72:75], 0 offen
	.loc	1 667 17                        ; attention.py:667:17
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e32 vcc_lo, v192, v71
	v_cmp_le_i32_e64 s7, v192, v72
	v_cmp_le_i32_e64 s8, v192, v73
	v_cmp_le_i32_e64 s9, v192, v74
	s_and_not1_b32 s11, s17, exec_lo
	.loc	1 668 21 is_stmt 0              ; attention.py:668:21
	s_and_b32 s10, vcc_lo, s17
	s_and_b32 s7, s7, s16
	s_and_b32 s8, s8, s15
	s_and_b32 s9, s9, s14
	s_and_b32 s10, s10, exec_lo
	s_and_not1_b32 s12, s16, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_or_b32 s17, s11, s10
	s_or_b32 s16, s12, s7
	s_and_not1_b32 s7, s15, exec_lo
	s_and_b32 s8, s8, exec_lo
	s_and_not1_b32 s10, s14, exec_lo
	s_and_b32 s9, s9, exec_lo
	s_or_b32 s15, s7, s8
	s_or_b32 s14, s10, s9
.LBB0_12:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 669 17 is_stmt 1              ; attention.py:669:17
	s_and_not1_b32 vcc_lo, exec_lo, s80
	s_cbranch_vccnz .LBB0_9
; %bb.13:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e32 vcc_lo, v192, v76
	v_cmp_ge_i32_e64 s7, v192, v77
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s9, v192, v142
	v_cmp_le_i32_e64 s10, v192, v143
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s8, v192, v78
	v_cmp_ge_i32_e64 s11, v192, v141
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s12, v192, v144
	v_cmp_le_i32_e64 s13, v192, v145
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s9, vcc_lo, s9
	s_and_b32 s7, s7, s10
	s_and_b32 s9, s9, s17
	s_and_b32 s7, s7, s16
	s_and_b32 s8, s8, s12
	s_and_b32 s10, s11, s13
	s_and_b32 s8, s8, s15
	s_and_b32 s10, s10, s14
	s_and_not1_b32 s11, s17, exec_lo
	s_and_b32 s9, s9, exec_lo
	s_and_not1_b32 s12, s16, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_or_b32 s17, s11, s9
	s_or_b32 s16, s12, s7
	s_and_not1_b32 s7, s15, exec_lo
	s_and_b32 s8, s8, exec_lo
	s_and_not1_b32 s9, s14, exec_lo
	s_and_b32 s10, s10, exec_lo
	s_or_b32 s15, s7, s8
	s_or_b32 s14, s9, s10
	s_branch .LBB0_9
.LBB0_14:                               ; %._crit_edge.loopexit
.Ltmp89:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v11, v10, v10 :: v_dual_add_f32 v10, 0, v9
	v_readlane_b32 s20, v218, 0
	v_readlane_b32 s24, v218, 5
	v_readlane_b32 s25, v218, 6
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v12, 0xff800000, v11 :: v_dual_mov_b32 v11, v68
	v_readlane_b32 s26, v218, 4
	v_readlane_b32 s21, v218, 1
	v_readlane_b32 s22, v218, 2
	v_readlane_b32 s23, v218, 3
.Ltmp90:
.LBB0_15:                               ; %._crit_edge
	.loc	1 825 26                        ; attention.py:825:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v66
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_lshlrev_b32_e32 v9, 2, v0
.Ltmp92:
	.loc	1 830 26                        ; attention.py:830:26
	v_cmp_eq_u32_e64 s0, 0, v58
.Ltmp93:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp94:
	.loc	1 828 36                        ; attention.py:828:36
	v_cndmask_b32_e32 v10, 0, v10, vcc_lo
	.loc	1 825 17                        ; attention.py:825:17
	v_dual_cndmask_b32 v12, 0xff800000, v12 :: v_dual_and_b32 v13, 12, v9
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e64 v1, 0, v1, s0
.Ltmp95:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_add_nc_u32_e32 v11, 0, v11
.Ltmp96:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e64 v3, 0, v3, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
.Ltmp97:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_add_nc_u32_e32 v13, 0, v13
.Ltmp98:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e64 v17, 0, v4, s0
.Ltmp99:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	ds_store_b32 v11, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v14, v3
.Ltmp101:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	ds_load_b32 v12, v13
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v11, v10
.Ltmp103:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v10, v1
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v11, v13
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp106:
	.loc	1 830 17 is_stmt 1              ; attention.py:830:17
	v_cndmask_b32_e64 v18, 0, v5, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	.loc	1 822 31                        ; attention.py:822:31
	s_mul_i32 s1, s26, s25
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v1, v1, v10
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v13, v2
.Ltmp109:
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s82, s82, 2
	.loc	1 822 31                        ; attention.py:822:31
	s_add_i32 s1, s24, s1
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v20, v7
	v_mov_b32_e32 v10, v1
	v_mov_b32_dpp v13, v13 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp111:
	.loc	1 822 30                        ; attention.py:822:30
	s_mul_i32 s4, s1, s82
	.loc	1 833 13                        ; attention.py:833:13
	s_mov_b32 s1, exec_lo
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v2, v2, v13 :: v_dual_add_f32 v3, v3, v14
.Ltmp114:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v13, v12 :: v_dual_mov_b32 v16, v11
.Ltmp115:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v14, v2 :: v_dual_mov_b32 v15, v3
.Ltmp117:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp119:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v15, v15 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp120:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v13, v13, v13
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v1, v1, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v2, v2, v14
	v_add_f32_e32 v14, v3, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp122:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_dual_add_f32 v10, v11, v16 :: v_dual_max_f32 v11, v12, v13
.Ltmp123:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v3, v1 :: v_dual_mov_b32 v16, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp124:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_dual_mov_b32 v12, v10 :: v_dual_mov_b32 v13, v11
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp127:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v1, v1, v3 :: v_dual_add_f32 v4, v14, v16
.Ltmp129:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v15, v2
.Ltmp130:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e64 v14, 0, v6, s0
.Ltmp131:
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
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v3, v2, v15
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v15, v17
	v_mov_b32_e32 v2, v1
.Ltmp134:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v16, v18, v16
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v21, v21 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v14
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp136:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v8, v8, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp137:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v18, v16 :: v_dual_add_f32 v15, v17, v15
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v17, v15 :: v_dual_add_f32 v14, v14, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp138:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v7, v7, v20 :: v_dual_add_f32 v16, v16, v18
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v20, v7
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v21, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp140:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v18, v14, v19 :: v_dual_add_f32 v15, v15, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp141:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v21, v21 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp142:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v19, v7, v20 :: v_dual_mov_b32 v20, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp143:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v17, v15 :: v_dual_add_f32 v8, v8, v21
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v7, v16
	v_dual_mov_b32 v22, v8 :: v_dual_mov_b32 v21, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp144:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v14, v15, v17
.Ltmp145:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v15, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp146:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v7, v16, v7 :: v_dual_add_f32 v16, v18, v20
.Ltmp147:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp148:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v18, v8, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp149:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp150:
	.loc	1 833 13                        ; attention.py:833:13
	v_or_b32_e32 v22, v56, v41
.Ltmp151:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v17, v19, v21
.Ltmp152:
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
.Ltmp153:
	.loc	1 833 13                        ; attention.py:833:13
	v_cmpx_eq_u32_e32 0, v22
	s_cbranch_execz .LBB0_17
; %bb.16:
.Ltmp154:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v22, v11, v11
.Ltmp155:
	.loc	1 833 13                        ; attention.py:833:13
	s_ashr_i32 s5, s4, 31
.Ltmp156:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_dual_add_f32 v11, v10, v12 :: v_dual_mov_b32 v12, 0
.Ltmp157:
	.loc	1 833 13                        ; attention.py:833:13
	s_lshl_b64 s[6:7], s[4:5], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp158:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v10, v22, v13
.Ltmp159:
	.loc	1 833 13                        ; attention.py:833:13
	s_add_u32 s6, s20, s6
	s_addc_u32 s7, s21, s7
	.loc	1 834 13                        ; attention.py:834:13
	global_store_b64 v12, v[10:11], s[6:7]
.LBB0_17:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s1
.Ltmp160:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v10, v16, v19
	v_dual_add_f32 v16, v14, v15 :: v_dual_add_f32 v15, v4, v6
	v_dual_add_f32 v14, v3, v5 :: v_dual_add_f32 v13, v1, v2
.Ltmp161:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v3, 0xc0, v9
	s_and_b32 vcc_lo, vcc_lo, s2
	v_lshlrev_b32_e32 v0, 5, v0
.Ltmp162:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v9, v7, v8 :: v_dual_and_b32 v4, 0xe0, v57
.Ltmp163:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v1, 28, v57
	v_add_nc_u32_e32 v2, 0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v0, 32, v0
.Ltmp164:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v12, v18, v21 :: v_dual_add_nc_u32 v3, 0, v4
	v_add_f32_e32 v11, v17, v20
.Ltmp165:
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
	v_add_nc_u32_e32 v1, s4, v42
	.loc	1 835 13                        ; attention.py:835:13
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_add_u32 v1, v1, 2, 8
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v0, v1, s[20:23], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp166:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.num_vgpr, 219
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15432
; TotalNumSgprs: 107
; NumVgprs: 219
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 107
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
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
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
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     107
    .sgpr_spill_count: 7
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.kd
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
