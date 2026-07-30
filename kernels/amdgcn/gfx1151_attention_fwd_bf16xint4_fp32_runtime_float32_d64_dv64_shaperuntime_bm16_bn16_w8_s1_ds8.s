	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b128 s[8:11], s[0:1], 0x80
	s_load_b32 s34, s[0:1], 0x68
	s_load_b128 s[16:19], s[0:1], 0x4c
	s_load_b32 s24, s[0:1], 0x5c
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v58, 6, v0
	.loc	1 572 22                        ; attention.py:572:22
	v_and_b32_e32 v50, 63, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v53, 0xc0, v0
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v54, 1, v0
	v_and_b32_e32 v57, 7, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v56, 15, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v6, 4, v57
	v_lshl_or_b32 v6, v56, 7, v6
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s8
	s_bitcmp1_b32 s8, 8
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s27, s24, 12
	s_cselect_b32 s35, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v7, 16, v6
	s_cselect_b32 s40, -1, 0
	.loc	1 609 32                        ; attention.py:609:32
	s_abs_i32 s21, s34
	.loc	1 559 27                        ; attention.py:559:27
	s_abs_i32 s5, s2
	.loc	1 609 32                        ; attention.py:609:32
	s_cvt_f32_u32 s4, s21
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s6, s2, s34
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v8, 32, v6
	.loc	1 559 27                        ; attention.py:559:27
	s_ashr_i32 s7, s6, 31
	.loc	1 609 32                        ; attention.py:609:32
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v9, 48, v6
	v_xor_b32_e32 v10, 64, v6
	v_add_nc_u32_e32 v60, 0, v6
	v_xor_b32_e32 v11, 0x50, v6
	v_xor_b32_e32 v12, 0x60, v6
	v_xor_b32_e32 v6, 0x70, v6
	v_add_nc_u32_e32 v62, 0, v7
	v_add_nc_u32_e32 v63, 0, v8
	v_add_nc_u32_e32 v64, 0, v9
	.loc	1 609 32                        ; attention.py:609:32
	v_readfirstlane_b32 s4, v1
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v65, 0, v10
	v_add_nc_u32_e32 v66, 0, v11
	v_add_nc_u32_e32 v67, 0, v12
	v_add_nc_u32_e32 v68, 0, v6
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_u32_f32 s22, s4
	s_sub_i32 s4, 0, s21
	s_mul_i32 s4, s4, s22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s22, s4
	s_add_i32 s22, s22, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 559 27                        ; attention.py:559:27
	s_mul_hi_u32 s4, s5, s22
	s_mul_i32 s12, s4, s21
	s_add_i32 s6, s4, 1
	s_sub_i32 s5, s5, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s12, s5, s21
	s_cmp_ge_u32 s5, s21
	s_cselect_b32 s4, s6, s4
	s_cselect_b32 s5, s12, s5
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s5, s21
	s_load_b64 s[12:13], s[0:1], 0x0
	s_cselect_b32 s4, s6, s4
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s5, s16
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s25, s4, s7
	.loc	1 566 23                        ; attention.py:566:23
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s14, 0, s5
	s_abs_i32 s15, s3
	.loc	1 597 26                        ; attention.py:597:26
	s_mul_i32 s23, s3, s18
	.loc	1 566 23                        ; attention.py:566:23
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s14, s14, s6
	s_mul_hi_u32 s4, s6, s14
	.loc	1 559 27                        ; attention.py:559:27
	s_sub_i32 s14, s25, s7
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s6, s6, s4
	.loc	1 560 27                        ; attention.py:560:27
	s_mul_i32 s4, s14, s34
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_hi_u32 s6, s15, s6
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s26, s14, 4
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_i32 s14, s6, s5
	.loc	1 560 27                        ; attention.py:560:27
	s_sub_i32 s33, s2, s4
	.loc	1 566 23                        ; attention.py:566:23
	s_sub_i32 s2, s15, s14
	s_add_i32 s4, s6, 1
	s_sub_i32 s14, s2, s5
	s_cmp_ge_u32 s2, s5
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v3, s26, v58
	.loc	1 566 23                        ; attention.py:566:23
	s_cselect_b32 s4, s4, s6
	s_cselect_b32 s2, s14, s2
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s2, s5
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v4, 8, v3
	.loc	1 566 23                        ; attention.py:566:23
	s_cselect_b32 s20, s6, s4
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s6, s17
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e64 s4, s24, v50
	.loc	1 568 22                        ; attention.py:568:22
	s_cvt_f32_u32 s2, s6
	s_sub_i32 s28, 0, s6
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v5, 12, v3
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e32 vcc_lo, s18, v3
	.loc	1 568 22                        ; attention.py:568:22
	v_rcp_iflag_f32_e32 v1, s2
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_readfirstlane_b32 s2, v1
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[1:2], null, s24, v58, v[50:51]
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v2, 4, v3
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_f32 s2, s2, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s2, s2
	s_mul_i32 s28, s28, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s28, s2, s28
	s_add_i32 s2, s2, s28
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s28, s5, s2
	s_xor_b32 s2, s16, s17
	s_mul_i32 s29, s28, s6
	s_ashr_i32 s30, s2, 31
	s_sub_i32 s5, s5, s29
	s_add_i32 s29, s28, 1
	s_sub_i32 s31, s5, s6
	s_cmp_ge_u32 s5, s6
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s2, s18, v2
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s28, s29, s28
	s_cselect_b32 s5, s31, s5
	s_add_i32 s29, s28, 1
	s_cmp_ge_u32 s5, s6
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s5, s18, v4
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s28, s29, s28
	.loc	1 598 26                        ; attention.py:598:26
	s_add_i32 s23, s23, s26
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s6, s18, v5
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s23, s23, s24
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 598 26                        ; attention.py:598:26
	s_lshl2_add_u32 s29, s24, s23
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v2, s23, v1, 1
	.loc	1 598 26                        ; attention.py:598:26
	s_lshl3_add_u32 s31, s24, s23
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v3, s29, v1, 1
	.loc	1 598 26                        ; attention.py:598:26
	s_add_i32 s27, s23, s27
	.loc	1 599 26                        ; attention.py:599:26
	v_lshrrev_b32_e32 v5, 2, v53
	v_add_lshl_u32 v4, s31, v1, 1
	v_add_lshl_u32 v1, s27, v1, 1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s4, s2
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v5, v54, v5
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s4, s5
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_add_nc_u32 v59, 0, v5
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s4, s6
	.loc	1 606 16                        ; attention.py:606:16
	s_add_i32 s2, s19, 15
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x3
	buffer_load_u16 v2, v2, s[12:15], 0 offen
	buffer_load_u16 v4, v4, s[12:15], 0 offen
	buffer_load_u16 v3, v3, s[12:15], 0 offen
	buffer_load_u16 v1, v1, s[12:15], 0 offen
	.loc	1 606 15                        ; attention.py:606:15
	s_ashr_i32 s5, s2, 31
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v5, 0x240, v5
	.loc	1 606 15                        ; attention.py:606:15
	s_lshr_b32 s5, s5, 28
	.loc	1 568 22                        ; attention.py:568:22
	s_xor_b32 s6, s28, s30
	.loc	1 606 15                        ; attention.py:606:15
	s_add_i32 s2, s2, s5
	.loc	1 568 22                        ; attention.py:568:22
	s_sub_i32 s23, s6, s30
	.loc	1 606 15                        ; attention.py:606:15
	s_ashr_i32 s5, s2, 4
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v61, 0, v5
	.loc	1 609 33                        ; attention.py:609:33
	s_add_i32 s12, s5, s34
	.loc	1 569 19                        ; attention.py:569:19
	s_abs_i32 s6, s23
	.loc	1 609 33                        ; attention.py:609:33
	s_add_i32 s12, s12, -1
	.loc	1 606 14                        ; attention.py:606:14
	s_and_b32 s2, s2, -16
	.loc	1 609 32                        ; attention.py:609:32
	s_abs_i32 s14, s12
	s_xor_b32 s12, s12, s34
	s_mul_hi_u32 s15, s14, s22
	s_ashr_i32 s12, s12, 31
	s_mul_i32 s22, s15, s21
	.loc	1 569 19                        ; attention.py:569:19
	s_cvt_f32_u32 s13, s6
	.loc	1 609 32                        ; attention.py:609:32
	s_sub_i32 s14, s14, s22
	s_add_i32 s22, s15, 1
	s_sub_i32 s27, s14, s21
	s_cmp_ge_u32 s14, s21
	.loc	1 569 19                        ; attention.py:569:19
	v_rcp_iflag_f32_e32 v33, s13
	.loc	1 609 32                        ; attention.py:609:32
	s_cselect_b32 s15, s22, s15
	s_cselect_b32 s14, s27, s14
	s_add_i32 s22, s15, 1
	s_cmp_ge_u32 s14, s21
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt vmcnt(3)
	ds_store_b16 v59, v2
	s_waitcnt vmcnt(2)
	ds_store_b16 v59, v4 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v61, v3
	s_waitcnt vmcnt(0)
	ds_store_b16 v61, v1 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v60
	ds_load_b128 v[5:8], v62
	ds_load_b128 v[9:12], v63
	ds_load_b128 v[13:16], v64
	ds_load_b128 v[17:20], v65
	ds_load_b128 v[21:24], v66
	ds_load_b128 v[25:28], v67
	ds_load_b128 v[29:32], v68
	.loc	1 609 32                        ; attention.py:609:32
	s_cselect_b32 s13, s22, s15
	.loc	1 569 19                        ; attention.py:569:19
	v_readfirstlane_b32 s21, v33
	.loc	1 609 32                        ; attention.py:609:32
	s_xor_b32 s13, s13, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s12, s13, s12
	.loc	1 610 18                        ; attention.py:610:18
	s_mul_i32 s13, s33, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b32 s15, s13, 4
	.loc	1 611 33                        ; attention.py:611:33
	s_lshl4_add_u32 s12, s12, s15
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 611 18 is_stmt 0              ; attention.py:611:18
	s_min_i32 s41, s2, s12
	.loc	1 612 9 is_stmt 1               ; attention.py:612:9
	s_bfe_u32 s2, s8, 0x10008
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s10, s11
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s8, s11, s9
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s2, s26
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s8, s8, s26
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s2, 16
	.loc	1 613 25                        ; attention.py:613:25
	s_max_i32 s8, s8, 0
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s2, s19, s2
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s8, s8, 0x7ffffff0
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s2, s2, 15
	.loc	1 618 18                        ; attention.py:618:18
	s_max_i32 s15, s15, s8
	.loc	1 619 34                        ; attention.py:619:34
	s_ashr_i32 s12, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s12, s12, 28
	s_add_i32 s2, s2, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 619 33 is_stmt 0              ; attention.py:619:33
	s_and_b32 s2, s2, -16
	.loc	1 619 18                        ; attention.py:619:18
	s_min_i32 s41, s41, s2
.LBB0_2:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b32 s14, s[0:1], 0x64
	.loc	1 620 9 is_stmt 1               ; attention.py:620:9
	s_and_not1_b32 vcc_lo, exec_lo, s40
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s2, s11, s26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 16
	s_min_i32 s2, s19, s2
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
	s_min_i32 s41, s41, s2
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b64 s[12:13], s[0:1], 0x40
	.loc	1 570 31 is_stmt 1              ; attention.py:570:31
	v_lshrrev_b32_e32 v69, 4, v0
	.loc	1 778 24                        ; attention.py:778:24
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s2, s14, v50
	v_lshlrev_b32_e32 v55, 2, v0
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_ge_i32 s15, s41
	s_cbranch_scc1 .LBB0_9
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_xor_b32 s8, s3, s16
	s_mul_f32 s21, s21, 0x4f7ffffe
	s_ashr_i32 s8, s8, 31
	s_ashr_i32 s22, s23, 31
	s_xor_b32 s20, s20, s8
	s_cvt_u32_f32 s21, s21
	s_sub_i32 s8, s20, s8
	s_sub_i32 s20, 0, s6
	s_mul_i32 s16, s8, s16
	s_mul_i32 s20, s20, s21
	s_sub_i32 s27, s3, s16
	s_mul_hi_u32 s16, s21, s20
	s_abs_i32 s20, s27
	s_add_i32 s21, s21, s16
	.loc	1 570 21 is_stmt 1              ; attention.py:570:21
	v_or_b32_e32 v33, s26, v69
	s_mul_hi_u32 s16, s20, s21
	s_ashr_i32 s21, s27, 31
	.loc	1 569 19                        ; attention.py:569:19
	s_mul_i32 s23, s16, s6
	s_xor_b32 s21, s21, s22
	s_sub_i32 s20, s20, s23
	s_add_i32 s22, s16, 1
	s_sub_i32 s23, s20, s6
	s_cmp_ge_u32 s20, s6
	v_bfe_i32 v41, v0, 3, 1
	s_cselect_b32 s16, s22, s16
	s_cselect_b32 s20, s23, s20
	s_add_i32 s22, s16, 1
	s_cmp_ge_u32 s20, s6
	v_and_b32_e32 v47, 16, v0
	s_cselect_b32 s6, s22, s16
	s_clause 0x1
	s_load_b128 s[28:31], s[0:1], 0x6c
	s_load_b32 s46, s[0:1], 0x7c
	s_xor_b32 s6, s6, s21
	s_load_b128 s[36:39], s[0:1], 0x8
	s_sub_i32 s6, s6, s21
	s_load_b128 s[20:23], s[0:1], 0x28
	v_dual_mov_b32 v51, 0x5410 :: v_dual_add_nc_u32 v70, s11, v33
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s0, s18, v33
	v_and_b32_e32 v33, 1, v0
	v_lshrrev_b32_e32 v46, 1, v0
	v_and_b32_e32 v41, 0x84, v41
	v_bfe_i32 v49, v0, 7, 1
	v_cmp_eq_u32_e32 vcc_lo, 0, v47
	v_and_b32_e32 v34, 14, v0
	v_mov_b32_e32 v96, 0xff800000
	v_and_or_b32 v41, v46, 3, v41
	v_dual_mov_b32 v46, 0x7632 :: v_dual_lshlrev_b32 v37, 5, v33
	v_and_b32_e32 v38, 64, v55
	v_and_b32_e32 v47, 0x84, v49
	v_cndmask_b32_e32 v49, 0x1054, v51, vcc_lo
	v_mul_u32_u24_e32 v34, 0x42, v34
	v_and_b32_e32 v35, 0xe0, v0
	v_or3_b32 v74, v41, v37, v38
	v_and_b32_e32 v36, 60, v54
	v_lshrrev_b32_e32 v48, 5, v0
	v_add3_u32 v73, v34, v37, v38
	v_cndmask_b32_e32 v37, 0x3276, v46, vcc_lo
	v_lshl_or_b32 v41, v49, 8, v49
	.loc	1 734 33                        ; attention.py:734:33
	s_mul_i32 s16, s8, s17
	v_lshrrev_b32_e32 v39, 3, v35
	v_lshl_or_b32 v35, v35, 2, v36
	v_lshl_or_b32 v37, v37, 8, v37
	v_and_or_b32 v36, v48, 3, v36
	v_and_b32_e32 v41, 0x540054, v41
	s_add_i32 s43, s6, s16
	.loc	1 707 13                        ; attention.py:707:13
	v_lshl_or_b32 v48, s25, 4, v69
	v_and_b32_e32 v37, 0x760076, v37
	.loc	1 734 32                        ; attention.py:734:32
	s_mul_i32 s1, s43, s19
	v_xor_b32_e32 v36, v36, v47
	v_lshl_or_b32 v41, v41, 4, v41
	.loc	1 707 13                        ; attention.py:707:13
	v_add3_u32 v47, s15, s1, v58
	v_lshl_or_b32 v37, v37, 4, v37
	s_lshl_b32 s1, s7, 4
	v_mad_u64_u32 v[51:52], null, s14, v58, v[50:51]
	v_and_b32_e32 v52, 0x5040504, v41
	v_dual_mov_b32 v94, 0xff800000 :: v_dual_add_nc_u32 v41, 12, v47
	v_and_b32_e32 v75, 0x7060706, v37
	v_subrev_nc_u32_e32 v37, s1, v48
	v_add_nc_u32_e32 v49, 8, v47
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v41, s24, v41
	v_add_nc_u32_e32 v76, 4, v47
	v_add_nc_u32_e32 v77, s15, v56
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v37, s31, v37
	v_lshlrev_b32_e32 v48, 1, v50
	.loc	1 772 39                        ; attention.py:772:39
	s_lshl_b32 s16, s5, 3
	.loc	1 707 13                        ; attention.py:707:13
	v_mul_lo_u32 v49, s24, v49
	v_mul_lo_u32 v78, s24, v76
	v_mul_lo_u32 v47, s24, v47
	v_mul_lo_u32 v80, s46, v77
	.loc	1 773 30                        ; attention.py:773:30
	s_mul_i32 s42, s43, s16
	.loc	1 794 21                        ; attention.py:794:21
	s_mul_i32 s43, s43, s5
	.loc	1 753 27                        ; attention.py:753:27
	s_mul_i32 s8, s8, s29
	.loc	1 754 27                        ; attention.py:754:27
	s_mul_i32 s5, s27, s30
	v_xor_b32_e32 v34, v35, v39
	v_lshl_add_u32 v33, v33, 6, 0
	v_xor_b32_e32 v35, 4, v73
	v_xor_b32_e32 v39, 8, v73
	v_xor_b32_e32 v40, 12, v73
	v_xor_b32_e32 v42, 16, v73
	v_xor_b32_e32 v43, 20, v73
	v_xor_b32_e32 v44, 24, v73
	v_xor_b32_e32 v45, 28, v73
	v_and_b32_e32 v38, 0x60, v0
	v_xor_b32_e32 v46, 4, v74
	v_lshl_add_u32 v91, v53, 2, 0
	v_lshl_add_u32 v92, v56, 1, 0
	.loc	1 707 13                        ; attention.py:707:13
	v_lshl_add_u32 v76, v41, 1, v48
	v_add3_u32 v37, s8, s5, v37
	v_mov_b32_e32 v41, 0
	v_subrev_nc_u32_e32 v71, s9, v70
	v_dual_mov_b32 v95, 0xff800000 :: v_dual_add_nc_u32 v72, s10, v70
	s_delay_alu instid0(VALU_DEP_4)
	v_add_lshl_u32 v80, v37, v80, 2
	v_add_nc_u32_e32 v81, v33, v34
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v82, 0, v35
	v_add_nc_u32_e32 v83, 0, v39
	v_add_nc_u32_e32 v84, 0, v40
	v_add_nc_u32_e32 v85, 0, v42
	v_add_nc_u32_e32 v86, 0, v43
	v_add_nc_u32_e32 v87, 0, v44
	v_add_nc_u32_e32 v88, 0, v45
	v_add_nc_u32_e32 v89, v33, v36
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v90, 0, v46
	v_add_nc_u32_e32 v92, v92, v38
	v_mov_b32_e32 v34, v41
	v_mov_b32_e32 v35, v41
	v_mov_b32_e32 v36, v41
	v_mov_b32_e32 v37, v41
	v_lshl_add_u32 v77, v49, 1, v48
	v_lshl_add_u32 v78, v78, 1, v48
	v_lshl_add_u32 v79, v47, 1, v48
	v_dual_mov_b32 v38, v41 :: v_dual_add_nc_u32 v91, v91, v48
	v_mov_b32_e32 v39, v41
	v_mov_b32_e32 v40, v41
	.loc	1 742 27                        ; attention.py:742:27
	s_mul_f32 s17, s28, 0x3fb8aa3b
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s23, s23, 0xffff
	s_and_b32 s39, s39, 0xffff
	s_mov_b32 s18, 0
	s_lshl_b32 s44, s14, 2
	s_and_b32 s21, s21, 0xffff
	.loc	1 707 13                        ; attention.py:707:13
	s_lshl_b32 s45, s24, 5
	s_lshl_b32 s46, s46, 6
	s_mov_b32 s24, s36
	s_mov_b32 s25, s37
	s_mov_b32 s28, s22
	s_mov_b32 s29, s23
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s47, 0x76543210
	s_mov_b32 s36, s38
	s_mov_b32 s37, s39
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s22, s26
	s_mov_b32 s23, s27
                                        ; implicit-def: $sgpr48
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 761 36                        ; attention.py:761:36
	v_cndmask_b32_e64 v97, 0x80000000, v80, s48
	.loc	1 771 36                        ; attention.py:771:36
	s_lshr_b32 s1, s15, 31
	.loc	1 762 35                        ; attention.py:762:35
	v_add_nc_u32_e32 v101, 0, v73
	.loc	1 771 36                        ; attention.py:771:36
	s_add_i32 s1, s15, s1
	s_ashr_i32 s5, s15, 31
	.loc	1 761 36                        ; attention.py:761:36
	buffer_load_b32 v99, v97, s[28:31], 0 offen
	.loc	1 771 36                        ; attention.py:771:36
	s_ashr_i32 s1, s1, 1
	.loc	1 762 35                        ; attention.py:762:35
	s_waitcnt lgkmcnt(0)
	.loc	1 771 36                        ; attention.py:771:36
	v_add_nc_u32_e32 v102, s1, v58
	.loc	1 774 30                        ; attention.py:774:30
	s_add_i32 s1, s1, s42
	.loc	1 762 35                        ; attention.py:762:35
	s_barrier
	v_mad_u64_u32 v[97:98], null, s1, s14, v[51:52]
	.loc	1 798 53                        ; attention.py:798:53
	s_lshr_b32 s5, s5, 28
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v95, v95, v95
	.loc	1 798 53                        ; attention.py:798:53
	s_add_i32 s5, s15, s5
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s15, s15, 16
	.loc	1 798 53                        ; attention.py:798:53
	s_ashr_i32 s5, s5, 4
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s18, s18, s45
	.loc	1 798 25                        ; attention.py:798:25
	s_add_i32 s1, s5, s43
	.loc	1 763 25                        ; attention.py:763:25
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 798 25                        ; attention.py:798:25
	s_mul_i32 s1, s1, s14
	.loc	1 707 13                        ; attention.py:707:13
	v_add_nc_u32_e32 v80, s46, v80
	.loc	1 761 36                        ; attention.py:761:36
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v98, 0xff800000, v99, s48
	.loc	1 797 41                        ; attention.py:797:41
	v_add_lshl_u32 v99, s1, v50, 1
	.loc	1 762 35                        ; attention.py:762:35
	ds_store_b32 v81, v98
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v106, v101
	ds_load_b32 v107, v82
	ds_load_b32 v108, v83
	ds_load_b32 v109, v84
	ds_load_b32 v110, v85
	ds_load_b32 v111, v86
	ds_load_b32 v112, v87
	ds_load_b32 v113, v88
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v98
	.loc	1 763 25 is_stmt 0              ; attention.py:763:25
	v_add_nc_u32_e32 v100, 0, v74
	v_add_nc_u32_e32 v103, s44, v97
	.loc	1 797 41 is_stmt 1              ; attention.py:797:41
	v_cndmask_b32_e64 v105, 0x80000000, v99, s2
	.loc	1 763 25                        ; attention.py:763:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 762 35                        ; attention.py:762:35
	v_dual_mul_f32 v106, 0x3fb8aa3b, v106 :: v_dual_mul_f32 v107, 0x3fb8aa3b, v107
	v_dual_mul_f32 v108, 0x3fb8aa3b, v108 :: v_dual_mul_f32 v109, 0x3fb8aa3b, v109
	.loc	1 777 27                        ; attention.py:777:27
	v_cmp_gt_i32_e32 vcc_lo, s16, v102
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 762 25                        ; attention.py:762:25
	v_dual_fmac_f32 v106, s17, v42 :: v_dual_fmac_f32 v107, s17, v43
	.loc	1 762 35 is_stmt 0              ; attention.py:762:35
	v_dual_mul_f32 v110, 0x3fb8aa3b, v110 :: v_dual_mul_f32 v111, 0x3fb8aa3b, v111
	.loc	1 777 26 is_stmt 1              ; attention.py:777:26
	s_and_b32 s5, s2, vcc_lo
	.loc	1 763 25                        ; attention.py:763:25
	s_and_b32 vcc_lo, s48, s1
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v104, 0x80000000, v97, s5
	.loc	1 763 25                        ; attention.py:763:25
	v_cndmask_b32_e64 v97, 0, 1, vcc_lo
	.loc	1 762 25                        ; attention.py:762:25
	v_dual_fmac_f32 v108, s17, v44 :: v_dual_fmac_f32 v109, s17, v45
	.loc	1 762 35 is_stmt 0              ; attention.py:762:35
	v_dual_mul_f32 v112, 0x3fb8aa3b, v112 :: v_dual_mul_f32 v113, 0x3fb8aa3b, v113
	.loc	1 763 25 is_stmt 1              ; attention.py:763:25
	ds_store_b8 v89, v97
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v97, v100
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v97, v100 offset:8
	ds_load_u8_d16 v98, v100 offset:16
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v98, v100 offset:24
	ds_load_u8_d16 v99, v90
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v99, v90 offset:8
	ds_load_u8_d16 v100, v90 offset:16
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v100, v90 offset:24
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v103, 0x80000000, v103, s5
	.loc	1 762 25                        ; attention.py:762:25
	v_dual_fmac_f32 v110, s17, v46 :: v_dual_fmac_f32 v111, s17, v47
	v_dual_fmac_f32 v112, s17, v48 :: v_dual_fmac_f32 v113, s17, v49
	.loc	1 764 26                        ; attention.py:764:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 771 36                        ; attention.py:771:36
	v_lshlrev_b32_e32 v102, 1, v102
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_lt_i32 s15, s41
	.loc	1 763 25                        ; attention.py:763:25
	v_and_b16 v42.l, 1, v97.l
	v_and_b16 v43.l, 1, v97.h
	v_and_b16 v44.l, 1, v98.l
	v_and_b16 v45.l, 1, v98.h
	v_and_b16 v42.h, 1, v99.l
	v_and_b16 v43.h, 1, v99.h
	v_and_b16 v44.h, 1, v100.l
	v_and_b16 v45.h, 1, v100.h
	v_cmp_eq_u16_e64 s1, 1, v42.l
	v_cmp_eq_u16_e64 s5, 1, v42.h
	v_cmp_eq_u16_e64 s6, 1, v43.l
	v_cmp_eq_u16_e64 s7, 1, v43.h
	v_cmp_eq_u16_e64 s8, 1, v44.l
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v46, 0xff800000, v106, s1
	.loc	1 763 25                        ; attention.py:763:25
	v_cmp_eq_u16_e64 s9, 1, v44.h
	v_cmp_eq_u16_e64 s10, 1, v45.l
	v_cmp_eq_u16_e64 s11, 1, v45.h
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v42, 0xff800000, v107, s5
	v_cndmask_b32_e64 v47, 0xff800000, v108, s6
	v_cndmask_b32_e64 v43, 0xff800000, v109, s7
	v_cndmask_b32_e64 v48, 0xff800000, v110, s8
	v_cndmask_b32_e64 v44, 0xff800000, v111, s9
	v_cndmask_b32_e64 v49, 0xff800000, v112, s10
	v_cndmask_b32_e64 v45, 0xff800000, v113, s11
	ds_store_b32 v101, v46
	ds_store_b32 v82, v42
	ds_store_b32 v83, v47
	ds_store_b32 v84, v43
	ds_store_b32 v85, v48
	ds_store_b32 v86, v44
	ds_store_b32 v87, v49
	ds_store_b32 v88, v45
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 775 32                        ; attention.py:775:32
	s_clause 0x1
	buffer_load_u8 v97, v104, s[36:39], 0 offen
	buffer_load_u8 v98, v103, s[36:39], 0 offen
	.loc	1 797 41                        ; attention.py:797:41
	buffer_load_u16 v99, v105, s[20:23], 0 offen
	.loc	1 764 26                        ; attention.py:764:26
	ds_load_b32 v100, v81
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v106, v49, v45
.Ltmp2:
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v108, v94, v94
	.loc	1 782 31                        ; attention.py:782:31
	v_or_b32_e32 v113, 1, v102
	v_add_nc_u32_e32 v102, 9, v102
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v104, v43, v48, v44
.Ltmp4:
	.loc	1 785 30                        ; attention.py:785:30
	v_mov_b16_e32 v105.h, 0
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v112.h, v105.h
	v_mov_b16_e32 v111.h, v105.h
	.loc	1 785 30                        ; attention.py:785:30
	v_mov_b16_e32 v109.h, v105.h
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v101, v100
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v103, v100, v100
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v101, v101 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v101, v101, v101
	v_max_f32_e32 v101, v103, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v103, v101
	v_mov_b32_dpp v103, v103 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v103, v103, v103
	v_max_f32_e32 v101, v101, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v103, v101
	v_mov_b32_dpp v103, v103 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v103, v103, v103
	v_max_f32_e32 v101, v101, v103
	v_max3_f32 v103, v46, v42, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_max3_f32 v103, v103, v104, v106
.Ltmp13:
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v104.h, v105.h
	v_mov_b16_e32 v106.h, v105.h
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_permlanex16_b32 v110, v103, s47, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp15:
	.loc	1 766 24                        ; attention.py:766:24
	v_max3_f32 v114, v96, v103, v110
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v103, v96, v114
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v46, v46, v114
	v_sub_f32_e32 v42, v42, v114
	v_sub_f32_e32 v48, v48, v114
	v_sub_f32_e32 v44, v44, v114
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v103, v103
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v107, v101
.Ltmp17:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v49, v49, v114
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v46, v46
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v48, v48
.Ltmp18:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v107, v107 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp19:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v44, v44
	v_exp_f32_e32 v49, v49
	.loc	1 768 62 is_stmt 0              ; attention.py:768:62
	v_sub_f32_e32 v45, v45, v114
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp20:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v107, v107, v107
	v_max_f32_e32 v101, v101, v107
.Ltmp21:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v107, 0, v42, s5
	v_cndmask_b32_e64 v42, 0, v46, s1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v110, 0, v44, s9
	v_cndmask_b32_e64 v44, 0, v48, s8
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v95, v95, v101
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v48, 0, v49, s10
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v104.l, v42.h
	v_cmp_o_f32_e64 s1, v42, v42
	v_mov_b16_e32 v111.l, v44.h
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v100, v100, v95
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v112.l, v48.h
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v47, v47, v114
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s8, v44, v44
	v_cmp_o_f32_e64 s10, v48, v48
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v100, v100
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e32 v100, 0, v100, vcc_lo
	.loc	1 767 25 is_stmt 1              ; attention.py:767:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v96
	v_cndmask_b32_e32 v96, 0, v103, vcc_lo
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v103, 1, v111
	v_cmp_o_f32_e32 vcc_lo, v107, v107
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v33, v33, v96
	v_mul_f32_e32 v34, v34, v96
	v_mul_f32_e32 v35, v35, v96
	v_mul_f32_e32 v36, v36, v96
	v_mul_f32_e32 v37, v37, v96
	v_dual_mul_f32 v38, v38, v96 :: v_dual_sub_f32 v43, v43, v114
	v_mul_f32_e32 v39, v39, v96
	v_mul_f32_e32 v40, v40, v96
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v96, 1, v104
	v_and_b32_e32 v104, 1, v112
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v96, v42, v96, 0x7fff
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v42, v108, v101
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v43, v43
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v47, 0, v47, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v46, 0, v43, s7
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_mov_b16_e32 v106.l, v47.h
.Ltmp22:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v43, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp23:
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s6, v47, v47
	v_cmp_o_f32_e64 s7, v110, v110
	v_cmp_o_f32_e64 s5, v46, v46
.Ltmp24:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v43, v43 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v43, v100, v43 :: v_dual_and_b32 v100, 1, v106
.Ltmp26:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v49, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp27:
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v47, v47, v100, 0x7fff
	v_cndmask_b16 v47.l, 0x7fff, v96.h, s1
	.loc	1 782 30                        ; attention.py:782:30
	v_cmp_gt_i32_e64 s1, s19, v113
.Ltmp28:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v49, v49 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp29:
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v108.l, 0x7fff, v47.h, s6
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v43, v43, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp31:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v49, v43
	v_mov_b32_dpp v49, v49 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v49, v43, v49
.Ltmp33:
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v43, v44, v103, 0x7fff
	v_add3_u32 v44, v48, v104, 0x7fff
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v48, v94, v42
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v111.l, 0x7fff, v43.h, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v112.l, 0x7fff, v44.h, s10
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v48, v48
	.loc	1 785 32                        ; attention.py:785:32
	s_waitcnt vmcnt(2)
	v_lshrrev_b16 v105.l, 4, v97.l
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v43.l, v97.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v43.h, v98.l, 15
	.loc	1 784 29                        ; attention.py:784:29
	v_and_b32_e32 v44, 15, v97
	v_and_b32_e32 v97, 15, v98
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v109.l, 4, v98.l
	.loc	1 797 41                        ; attention.py:797:41
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v98, 16, v99
	.loc	1 783 32                        ; attention.py:783:32
	v_cndmask_b32_e64 v99, 0, v105, s1
	.loc	1 782 30                        ; attention.py:782:30
	v_cmp_gt_i32_e64 s1, s19, v102
	.loc	1 786 54                        ; attention.py:786:54
	v_or_b32_e32 v100, -16, v44
	v_or_b32_e32 v102, -16, v97
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v45, v45
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v105.l, v107.h
	.loc	1 783 32                        ; attention.py:783:32
	v_cndmask_b32_e64 v101, 0, v109, s1
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s1, 7, v43.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v106, 1, v105
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b32_e32 v103, -16, v101
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b32_e64 v44, v44, v100, s1
	.loc	1 786 38 is_stmt 0              ; attention.py:786:38
	v_cmp_lt_u16_e64 s1, 7, v43.h
	.loc	1 787 56 is_stmt 1              ; attention.py:787:56
	v_or_b32_e32 v100, -16, v99
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v105.l, v46.h
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v45, 0, v45, s11
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v44, v44
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b32_e64 v43, v97, v102, s1
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_lt_u32_e64 s1, 7, v99
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v109, 1, v105
	v_mov_b16_e32 v105.l, v110.h
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v44, v44, v98
	v_cvt_f32_i32_e32 v43, v43
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b32_e64 v97, v99, v100, s1
	.loc	1 787 39 is_stmt 0              ; attention.py:787:39
	v_cmp_lt_u32_e64 s1, 7, v101
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_add3_u32 v106, v107, v106, 0x7fff
	v_cmp_o_f32_e64 s9, v45, v45
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v43, v98, v43
	v_cvt_f32_i32_e32 v97, v97
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b32_e64 v99, v101, v103, s1
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s1, v44, v44
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v46, v46, v109, 0x7fff
	.loc	1 814 30                        ; attention.py:814:30
	v_bfe_u32 v100, v43, 16, 1
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_mul_f32_e32 v97, v98, v97
	v_cvt_f32_i32_e32 v99, v99
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s6, v43, v43
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_cndmask_b16 v47.h, 0x7fff, v106.h, vcc_lo
	.loc	1 814 30                        ; attention.py:814:30
	v_add3_u32 v100, v43, v100, 0x7fff
	v_bfe_u32 v101, v97, 16, 1
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_mul_f32_e32 v98, v98, v99
	.loc	1 814 30                        ; attention.py:814:30
	v_bfe_u32 v99, v44, 16, 1
	v_cmp_o_f32_e64 s8, v97, v97
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_cndmask_b16 v108.h, 0x7fff, v46.h, s5
	.loc	1 814 30                        ; attention.py:814:30
	v_add3_u32 v43, v97, v101, 0x7fff
	v_cmp_o_f32_e64 s10, v98, v98
	v_add3_u32 v44, v44, v99, 0x7fff
	v_bfe_u32 v99, v98, 16, 1
	v_cndmask_b16 v44.l, 0x7fff, v100.h, s6
	v_cndmask_b16 v43.h, 0x7fff, v43.h, s8
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v46, v47, s47, 0xfedcba98 op_sel:[1,0]
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v43.l, 0x7fff, v44.h, s1
	v_add3_u32 v97, v98, v99, 0x7fff
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v106, v46, v47, v75
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v44.h, 0x7fff, v97.h, s10
	ds_store_b16 v91, v43
	ds_store_b16_d16_hi v91, v43 offset:128
	ds_store_b16 v91, v44 offset:1024
	ds_store_b16_d16_hi v91, v44 offset:1152
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v97, v92
	ds_load_u16_d16 v98, v92 offset:256
	ds_load_u16_d16 v99, v92 offset:512
	ds_load_u16_d16 v100, v92 offset:768
	ds_load_u16_d16 v101, v92 offset:1024
	ds_load_u16_d16 v102, v92 offset:1280
	ds_load_u16_d16 v103, v92 offset:1536
	ds_load_u16_d16 v104, v92 offset:1792
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v44, 1, v105
	v_mov_b16_e32 v105.l, v45.h
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v97, v92 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v98, v92 offset:384
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v99, v92 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v100, v92 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v101, v92 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v102, v92 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v103, v92 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v104, v92 offset:1920
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v94, 1, v105
	v_add3_u32 v44, v110, v44, 0x7fff
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v48, 0, v48, s1
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v105, v46, v47, v52
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v45, v45, v94, 0x7fff
	v_mov_b32_e32 v94, v42
.Ltmp34:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v96, v49
.Ltmp35:
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v111.h, 0x7fff, v44.h, s7
	v_permlanex16_b32 v44, v108, s47, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v112.h, 0x7fff, v45.h, s9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp36:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v96, v96 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v45, v111, s47, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_perm_b32 v107, v44, v108, v52
	v_permlanex16_b32 v46, v112, s47, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v108, v44, v108, v75
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v43, v49, v96
.Ltmp39:
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v109, v45, v111, v52
	v_perm_b32 v110, v45, v111, v75
	v_perm_b32 v111, v46, v112, v52
	v_perm_b32 v112, v46, v112, v75
	.loc	1 817 23                        ; attention.py:817:23
	v_dual_fmac_f32 v43, v93, v48 :: v_dual_mov_b32 v96, v114
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[97:104], v[105:112], v[33:40]
	v_mov_b32_e32 v93, v43
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc0 .LBB0_10
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 708 31                        ; attention.py:708:31
	v_add_nc_u32_e32 v42, s15, v58
	.loc	1 736 32                        ; attention.py:736:32
	v_add_nc_u32_e32 v43, s18, v79
	v_add_nc_u32_e32 v45, s18, v77
	v_add_nc_u32_e32 v44, s18, v78
	.loc	1 735 32                        ; attention.py:735:32
	v_add_nc_u32_e32 v97, s15, v56
	.loc	1 738 65                        ; attention.py:738:65
	v_cmp_gt_i32_e32 vcc_lo, s19, v42
	.loc	1 708 31                        ; attention.py:708:31
	v_add_nc_u32_e32 v47, 4, v42
	.loc	1 745 17                        ; attention.py:745:17
	.loc	1 738 30                        ; attention.py:738:30
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 736 32                        ; attention.py:736:32
	v_dual_cndmask_b32 v43, 0x80000000, v43 :: v_dual_add_nc_u32 v46, 8, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 738 65                        ; attention.py:738:65
	v_cmp_gt_i32_e64 s5, s19, v47
	v_cmp_gt_i32_e64 s1, s19, v46
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v46, v41
	.loc	1 738 30                        ; attention.py:738:30
	s_and_b32 vcc_lo, s4, s1
	.loc	1 736 32                        ; attention.py:736:32
	v_dual_cndmask_b32 v45, 0x80000000, v45 :: v_dual_add_nc_u32 v48, 12, v42
	v_add_nc_u32_e32 v42, s18, v76
	.loc	1 745 17                        ; attention.py:745:17
	v_cmp_le_i32_e64 s1, v97, v70
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 738 65                        ; attention.py:738:65
	v_cmp_gt_i32_e64 s6, s19, v48
	.loc	1 738 30 is_stmt 0              ; attention.py:738:30
	s_and_b32 vcc_lo, s4, s6
	.loc	1 736 32 is_stmt 1              ; attention.py:736:32
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	.loc	1 738 30                        ; attention.py:738:30
	s_and_b32 vcc_lo, s4, s5
	.loc	1 736 32                        ; attention.py:736:32
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	s_clause 0x3
	buffer_load_u16 v47, v43, s[24:27], 0 offen
	buffer_load_u16 v48, v45, s[24:27], 0 offen
	buffer_load_u16 v49, v42, s[24:27], 0 offen
	buffer_load_u16 v98, v44, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 738 65                        ; attention.py:738:65
	v_cmp_gt_i32_e32 vcc_lo, s19, v97
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v42, v41
	v_mov_b32_e32 v43, v41
	v_mov_b32_e32 v44, v41
	v_mov_b32_e32 v45, v41
	.loc	1 743 25                        ; attention.py:743:25
	s_and_b32 s5, s0, vcc_lo
	.loc	1 747 17                        ; attention.py:747:17
	s_and_not1_b32 vcc_lo, exec_lo, s35
	.loc	1 745 17                        ; attention.py:745:17
	s_and_b32 s1, s1, s5
	v_cndmask_b32_e64 v130, 0, 1, s5
	v_cndmask_b32_e64 v131, 0, 1, s1
	s_and_not1_b32 s5, s48, exec_lo
	.loc	1 736 32                        ; attention.py:736:32
	s_waitcnt vmcnt(3)
	ds_store_b16 v59, v47
	s_waitcnt vmcnt(2)
	ds_store_b16 v59, v48 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b16 v61, v98
	ds_store_b16 v61, v49 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[98:101], v60
	ds_load_b128 v[102:105], v62
	ds_load_b128 v[106:109], v63
	ds_load_b128 v[110:113], v64
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v48, v41
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[114:117], v65
	ds_load_b128 v[118:121], v66
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v47, v41
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[122:125], v67
	ds_load_b128 v[126:129], v68
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v49, v48
	v_mov_b32_e32 v48, v47
	v_mov_b32_e32 v47, v46
	v_mov_b32_e32 v46, v45
	v_mov_b32_e32 v45, v44
	v_mov_b32_e32 v44, v43
	v_mov_b32_e32 v43, v42
	v_mov_b32_e32 v42, v41
	s_waitcnt lgkmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[42:49], v[98:105], v[1:8], v[42:49]
	.loc	1 745 17                        ; attention.py:745:17
	v_cndmask_b16 v98.l, v130.l, v131.l, s40
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[42:49], v[106:113], v[9:16], v[42:49]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 745 17                        ; attention.py:745:17
	v_and_b16 v98.l, 1, v98.l
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[42:49], v[114:121], v[17:24], v[42:49]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 745 17                        ; attention.py:745:17
	v_cmp_eq_u16_e64 s1, 1, v98.l
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[42:49], v[122:129], v[25:32], v[42:49]
	s_and_b32 s6, s1, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s48, s5, s6
	.loc	1 747 17                        ; attention.py:747:17
	s_cbranch_vccnz .LBB0_6
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e32 vcc_lo, v97, v71
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s5, v97, v72
	.loc	1 748 21                        ; attention.py:748:21
	s_and_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 749 21                        ; attention.py:749:21
	s_and_b32 s1, s5, s1
	s_and_not1_b32 s5, s48, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_or_b32 s48, s5, s1
	s_branch .LBB0_6
.LBB0_9:
	.loc	1 0 21 is_stmt 0                ; attention.py:0:21
	v_mov_b32_e32 v40, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v42, 0xff800000 :: v_dual_mov_b32 v39, v40
	v_mov_b32_e32 v38, v40
	v_mov_b32_e32 v37, v40
	v_mov_b32_e32 v36, v40
	v_mov_b32_e32 v35, v40
	v_mov_b32_e32 v34, v40
	v_mov_b32_e32 v33, v40
	v_mov_b32_e32 v43, v40
.LBB0_10:                               ; %._crit_edge
	.loc	1 825 26 is_stmt 1              ; attention.py:825:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v69
	s_mov_b32 s0, 0x76543210
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_lshrrev_b32_e32 v2, 3, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp41:
	.loc	1 825 17                        ; attention.py:825:17
	v_dual_cndmask_b32 v1, 0xff800000, v42 :: v_dual_cndmask_b32 v4, 0, v43
	.loc	1 830 26                        ; attention.py:830:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v56
	.loc	1 822 31                        ; attention.py:822:31
	s_mul_i32 s34, s34, s3
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s14, s14, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_permlanex16_b32 v3, v1, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_and_b32 v2, 28, v2
.Ltmp44:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_permlanex16_b32 v5, v4, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp45:
	.loc	1 822 31                        ; attention.py:822:31
	s_add_i32 s0, s33, s34
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v3, v3, v3
.Ltmp47:
	.loc	1 822 30                        ; attention.py:822:30
	s_mul_i32 s0, s0, s14
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_add_nc_u32_e32 v2, 0, v2
.Ltmp49:
	.loc	1 833 13                        ; attention.py:833:13
	s_mov_b32 s3, exec_lo
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_dual_add_f32 v4, v4, v5 :: v_dual_max_f32 v1, v1, v3
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_lshl_add_u32 v3, v57, 2, 0
.Ltmp52:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v5, 0, v33, vcc_lo
	v_cndmask_b32_e32 v12, 0, v37, vcc_lo
	v_cndmask_b32_e32 v14, 0, v39, vcc_lo
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	ds_store_b32 v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v3
.Ltmp54:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v2, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v2, v3
.Ltmp55:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v4, 0, v35 :: v_dual_cndmask_b32 v13, 0, v38
	v_cndmask_b32_e32 v3, 0, v34, vcc_lo
	v_dual_cndmask_b32 v11, 0, v36 :: v_dual_mov_b32 v6, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp56:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v8, v4 :: v_dual_cndmask_b32 v15, 0, v40
	v_mov_b32_e32 v7, v3
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v9, v1
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v4, v4, v8 :: v_dual_add_f32 v5, v5, v6
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v6, v2
.Ltmp63:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v10, v4 :: v_dual_add_f32 v3, v3, v7
	v_dual_mov_b32 v8, v5 :: v_dual_mov_b32 v19, v14
	v_mov_b32_e32 v20, v15
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp65:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v7, v9, v9
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v2, v2, v6
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v4, v4, v10 :: v_dual_max_f32 v1, v1, v7
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v9, v3
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v5, v5, v8
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v16, v4
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v6, v1
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v12, v12, v17
	v_add_f32_e32 v14, v14, v19
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp80:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v3, v3, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v9, v5 :: v_dual_add_f32 v4, v4, v16
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v10, v3 :: v_dual_mov_b32 v7, v2
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v16, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v8, v1, v6
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp86:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp87:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v1, v5, v9 :: v_dual_mov_b32 v6, v4
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v3, v3, v10
.Ltmp90:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_dual_add_f32 v7, v2, v7 :: v_dual_mov_b32 v10, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp91:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v2, v1 :: v_dual_add_f32 v11, v11, v16
	v_mov_b32_e32 v5, v3
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp92:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v9, v7
.Ltmp93:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v13, v13, v18
.Ltmp94:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v16, v11
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v15, v15, v20
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp98:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v18, v13 :: v_dual_mov_b32 v17, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v15
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v14
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp99:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v11, v11, v16 :: v_dual_add_f32 v16, v13, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v12, v12, v17
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v15, v15, v20
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v16
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v17, v14, v19 :: v_dual_mov_b32 v14, v12
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v20, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v13, v11
	v_mov_b32_e32 v19, v17
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v13, v11, v13
	v_add_f32_e32 v11, v12, v14
	v_add_f32_e32 v14, v16, v18
	v_dual_add_f32 v16, v17, v19 :: v_dual_add_f32 v17, v15, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v18, v14 :: v_dual_mov_b32 v15, v13
	v_dual_mov_b32 v12, v11 :: v_dual_mov_b32 v19, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v15, v15 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp107:
	.loc	1 833 13                        ; attention.py:833:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_12
; %bb.11:
.Ltmp108:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v21, v8, v8
.Ltmp109:
	.loc	1 833 13                        ; attention.py:833:13
	s_ashr_i32 s1, s0, 31
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v8, v7, v9
.Ltmp111:
	.loc	1 833 13                        ; attention.py:833:13
	s_lshl_b64 s[4:5], s[0:1], 2
	v_mov_b32_e32 v9, 0
.Ltmp112:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v7, v21, v10
.Ltmp113:
	.loc	1 833 13                        ; attention.py:833:13
	s_add_u32 s4, s12, s4
	s_addc_u32 s5, s13, s5
	.loc	1 834 13                        ; attention.py:834:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_12:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s3
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp114:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v9, v17, v20 :: v_dual_add_f32 v8, v16, v19
	v_dual_add_f32 v7, v14, v18 :: v_dual_add_f32 v16, v13, v15
	v_dual_add_f32 v15, v4, v6 :: v_dual_add_f32 v14, v3, v5
	v_dual_add_f32 v13, v1, v2 :: v_dual_lshlrev_b32 v0, 5, v0
	v_dual_add_f32 v6, v11, v12 :: v_dual_and_b32 v3, 0xc0, v55
.Ltmp115:
	.loc	1 835 13                        ; attention.py:835:13
	v_cmp_eq_u32_e32 vcc_lo, 0, v53
	v_and_b32_e32 v4, 0xe0, v54
	v_and_b32_e32 v1, 28, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v2, 0, v3
	s_waitcnt lgkmcnt(0)
	s_and_b32 vcc_lo, vcc_lo, s2
	v_and_b32_e32 v0, 32, v0
	v_add_nc_u32_e32 v3, 0, v4
	s_barrier
	ds_store_b128 v3, v[13:16]
	ds_store_b128 v3, v[6:9] offset:16
	v_add3_u32 v0, v2, v0, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 836 17                        ; attention.py:836:17
	v_add_nc_u32_e32 v1, s0, v50
	.loc	1 835 13                        ; attention.py:835:13
	s_and_b32 s13, s13, 0xffff
	ds_load_b32 v0, v0
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	v_lshl_add_u32 v1, v1, 2, 8
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v0, v1, s[12:15], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp116:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8
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
		.amdhsa_next_free_vgpr 132
		.amdhsa_next_free_sgpr 49
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
		.amdhsa_inst_pref_size 50
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8.num_vgpr, 132
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8.numbered_sgpr, 49
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6284
; TotalNumSgprs: 51
; NumVgprs: 132
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 16
; NumSGPRsForWavesPerEU: 51
; NumVGPRsForWavesPerEU: 132
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
	.byte	4                               ; Abbrev [4] 0x76:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	824                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x83:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x90:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	828                             ; DW_AT_call_line
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
	.short	829                             ; DW_AT_call_line
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
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     51
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     132
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
