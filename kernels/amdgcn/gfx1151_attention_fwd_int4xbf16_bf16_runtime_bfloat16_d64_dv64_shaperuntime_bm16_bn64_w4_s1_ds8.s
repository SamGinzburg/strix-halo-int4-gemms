	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x80
	s_load_b32 s28, s[0:1], 0x68
	s_mov_b32 s27, s3
	s_clause 0x1
	s_load_b128 s[48:51], s[0:1], 0x4c
	s_load_b32 s81, s[0:1], 0x60
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_and_b32_e32 v41, 31, v0
	v_lshrrev_b32_e32 v60, 5, v0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v5, 0x88, v0
	v_xor_b32_e32 v6, 0x110, v0
	v_xor_b32_e32 v7, 0x198, v0
	v_add_nc_u32_e32 v65, 0, v0
	v_lshlrev_b32_e32 v61, 1, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v64, 15, v0
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v67, 0, v6
	v_add_nc_u32_e32 v68, 0, v7
	s_waitcnt lgkmcnt(0)
	s_and_b32 s3, 1, s12
	s_bitcmp1_b32 s12, 8
	s_cselect_b32 s80, -1, 0
	s_cmp_eq_u32 s3, 1
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[43:44], null, s81, v60, v[41:42]
	s_cselect_b32 s7, -1, 0
	.loc	1 609 32                        ; attention.py:609:32
	s_abs_i32 s21, s28
	.loc	1 559 27                        ; attention.py:559:27
	s_abs_i32 s4, s2
	.loc	1 609 32                        ; attention.py:609:32
	s_cvt_f32_u32 s3, s21
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s5, s2, s28
	.loc	1 583 26                        ; attention.py:583:26
	s_mul_i32 s10, s27, s50
	.loc	1 559 27                        ; attention.py:559:27
	s_ashr_i32 s5, s5, 31
	.loc	1 609 32                        ; attention.py:609:32
	v_rcp_iflag_f32_e32 v1, s3
	.loc	1 584 26                        ; attention.py:584:26
	v_lshl_add_u32 v62, s81, 2, v43
	v_mad_u64_u32 v[44:45], null, s81, 12, v[43:44]
	v_lshl_add_u32 v63, s81, 3, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 609 32                        ; attention.py:609:32
	v_readfirstlane_b32 s3, v1
	s_mul_f32 s3, s3, 0x4f7ffffe
	s_cvt_u32_f32 s22, s3
	s_sub_i32 s3, 0, s21
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s3, s3, s22
	s_mul_hi_u32 s3, s22, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s22, s22, s3
	.loc	1 559 27                        ; attention.py:559:27
	s_mul_hi_u32 s3, s4, s22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s3, s21
	s_sub_i32 s4, s4, s6
	s_add_i32 s6, s3, 1
	s_sub_i32 s8, s4, s21
	s_cmp_ge_u32 s4, s21
	s_cselect_b32 s3, s6, s3
	s_cselect_b32 s4, s8, s4
	s_add_i32 s6, s3, 1
	s_cmp_ge_u32 s4, s21
	s_cselect_b32 s3, s6, s3
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s6, s48
	.loc	1 566 23                        ; attention.py:566:23
	s_abs_i32 s9, s27
	s_cvt_f32_u32 s4, s6
	s_sub_i32 s8, 0, s6
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s3, s3, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 566 23                        ; attention.py:566:23
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 559 27                        ; attention.py:559:27
	s_sub_i32 s3, s3, s5
	.loc	1 560 27                        ; attention.py:560:27
	s_mul_i32 s5, s3, s28
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s3, s3, 4
	.loc	1 560 27                        ; attention.py:560:27
	s_sub_i32 s26, s2, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 566 23                        ; attention.py:566:23
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_cvt_u32_f32 s4, s4
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s4
	s_mul_hi_u32 s8, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, s8
	s_mul_hi_u32 s4, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s4, s6
	s_add_i32 s5, s4, 1
	s_sub_i32 s2, s9, s8
	s_sub_i32 s8, s2, s6
	s_cmp_ge_u32 s2, s6
	s_cselect_b32 s4, s5, s4
	s_cselect_b32 s2, s8, s2
	s_add_i32 s5, s4, 1
	s_cmp_ge_u32 s2, s6
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x0
	s_load_b64 s[8:9], s[0:1], 0x18
	s_cselect_b32 s20, s5, s4
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s5, s49
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e64 s4, s81, v41
	.loc	1 568 22                        ; attention.py:568:22
	s_cvt_f32_u32 s2, s5
	s_sub_i32 s11, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s2
	v_readfirstlane_b32 s2, v1
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v1, s3, v60
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_f32 s2, s2, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_2)
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v2, 4, v1
	v_or_b32_e32 v3, 8, v1
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e32 vcc_lo, s50, v1
	.loc	1 568 22                        ; attention.py:568:22
	s_cvt_u32_f32 s2, s2
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v4, 12, v1
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_i32 s11, s11, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s11, s2, s11
	s_add_i32 s2, s2, s11
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s11, s6, s2
	s_xor_b32 s2, s48, s49
	s_mul_i32 s23, s11, s5
	s_ashr_i32 s24, s2, 31
	s_sub_i32 s6, s6, s23
	s_add_i32 s23, s11, 1
	s_sub_i32 s25, s6, s5
	s_cmp_ge_u32 s6, s5
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, s50, v2
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s11, s23, s11
	s_cselect_b32 s6, s25, s6
	s_add_i32 s23, s11, 1
	s_cmp_ge_u32 s6, s5
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s50, v3
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s23, s23, s11
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s25, s10, s3
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 584 26                        ; attention.py:584:26
	s_mul_i32 s10, s25, s81
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s6, s50, v4
	.loc	1 584 26                        ; attention.py:584:26
	v_add_nc_u32_e32 v1, s10, v43
	v_add_nc_u32_e32 v2, s10, v62
	v_add_nc_u32_e32 v3, s10, v63
	v_add_nc_u32_e32 v4, s10, v44
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt lgkmcnt(0)
	s_and_b32 s17, s17, 0xffff
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s4, s2
	.loc	1 590 31                        ; attention.py:590:31
	s_mov_b32 s10, s18
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s4, s5
	.loc	1 590 31                        ; attention.py:590:31
	v_add_lshl_u32 v8, s25, v64, 1
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s4, s6
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v66, 0, v5
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x3
	buffer_load_u8 v1, v1, s[16:19], 0 offen
	buffer_load_u8 v2, v2, s[16:19], 0 offen
	buffer_load_u8 v3, v3, s[16:19], 0 offen
	buffer_load_u8 v4, v4, s[16:19], 0 offen
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v5, s3, v64
	.loc	1 590 31                        ; attention.py:590:31
	s_mov_b32 s11, s19
	s_and_b32 s9, s9, 0xffff
	.loc	1 568 22                        ; attention.py:568:22
	s_xor_b32 s2, s23, s24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 592 22                        ; attention.py:592:22
	v_cmp_gt_i32_e32 vcc_lo, s50, v5
	.loc	1 568 22                        ; attention.py:568:22
	s_sub_i32 s6, s2, s24
	.loc	1 569 19                        ; attention.py:569:19
	s_abs_i32 s5, s6
	.loc	1 590 31                        ; attention.py:590:31
	v_cndmask_b32_e32 v5, 0x80000000, v8, vcc_lo
	.loc	1 569 19                        ; attention.py:569:19
	s_cvt_f32_u32 s2, s5
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(3)
	ds_store_b8 v65, v1
	s_waitcnt vmcnt(2)
	ds_store_b8 v66, v2
	s_waitcnt vmcnt(1)
	ds_store_b8 v67, v3
	s_waitcnt vmcnt(0)
	ds_store_b8 v68, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 590 31                        ; attention.py:590:31
	buffer_load_u16 v1, v5, s[8:11], 0 offen
	.loc	1 606 16                        ; attention.py:606:16
	s_add_i32 s8, s51, 63
	.loc	1 585 26                        ; attention.py:585:26
	v_and_b32_e32 v2, 24, v61
	.loc	1 606 15                        ; attention.py:606:15
	s_ashr_i32 s9, s8, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s9, s9, 26
	s_add_i32 s8, s8, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 585 26                        ; attention.py:585:26
	v_lshl_or_b32 v2, v64, 5, v2
	.loc	1 606 15                        ; attention.py:606:15
	s_ashr_i32 s9, s8, 6
	.loc	1 606 14 is_stmt 0              ; attention.py:606:14
	s_and_b32 s11, s8, 0xffffffc0
	.loc	1 609 33 is_stmt 1              ; attention.py:609:33
	s_add_i32 s9, s9, s28
	s_add_i32 s9, s9, -1
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v3, 8, v2
	v_xor_b32_e32 v4, 16, v2
	.loc	1 609 32                        ; attention.py:609:32
	s_abs_i32 s10, s9
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v69, 0, v2
	v_xor_b32_e32 v2, 24, v2
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_hi_u32 s8, s10, s22
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v70, 0, v3
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_i32 s16, s8, s21
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v71, 0, v4
	v_add_nc_u32_e32 v72, 0, v2
	.loc	1 609 32                        ; attention.py:609:32
	s_xor_b32 s9, s9, s28
	s_sub_i32 s10, s10, s16
	s_ashr_i32 s9, s9, 31
	s_add_i32 s16, s8, 1
	s_sub_i32 s17, s10, s21
	.loc	1 585 26                        ; attention.py:585:26
	ds_load_b64 v[45:46], v69
	ds_load_b64 v[47:48], v70
	ds_load_b64 v[49:50], v71
	ds_load_b64 v[51:52], v72
	.loc	1 609 32                        ; attention.py:609:32
	s_cmp_ge_u32 s10, s21
	.loc	1 569 19                        ; attention.py:569:19
	v_rcp_iflag_f32_e32 v2, s2
	.loc	1 609 32                        ; attention.py:609:32
	s_cselect_b32 s8, s16, s8
	s_cselect_b32 s10, s17, s10
	s_add_i32 s16, s8, 1
	s_cmp_ge_u32 s10, s21
	s_cselect_b32 s2, s16, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s9
	s_sub_i32 s2, s2, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 610 18                        ; attention.py:610:18
	s_mul_i32 s8, s26, s2
	.loc	1 611 33                        ; attention.py:611:33
	s_lshl_b32 s2, s2, 6
	.loc	1 610 18                        ; attention.py:610:18
	s_lshl_b32 s83, s8, 6
	.loc	1 569 19                        ; attention.py:569:19
	v_readfirstlane_b32 s8, v2
	.loc	1 611 33                        ; attention.py:611:33
	s_add_i32 s2, s83, s2
	.loc	1 611 18 is_stmt 0              ; attention.py:611:18
	s_min_i32 s84, s11, s2
	.loc	1 612 9 is_stmt 1               ; attention.py:612:9
	s_bfe_u32 s2, s12, 0x10008
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s14, s15
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s9, s15, s13
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s2, s3
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s9, s9, s3
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s2, 16
	.loc	1 613 25                        ; attention.py:613:25
	s_max_i32 s9, s9, 0
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s2, s51, s2
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s9, s9, 0x7fffffc0
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s2, s2, 63
	.loc	1 618 18                        ; attention.py:618:18
	s_max_i32 s83, s83, s9
	.loc	1 619 34                        ; attention.py:619:34
	s_ashr_i32 s10, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s10, s10, 26
	s_add_i32 s2, s2, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 619 33 is_stmt 0              ; attention.py:619:33
	s_and_not1_b32 s2, s2, 63
	.loc	1 619 18                        ; attention.py:619:18
	s_min_i32 s84, s84, s2
.LBB0_2:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b32 s82, s[0:1], 0x64
	.loc	1 620 9 is_stmt 1               ; attention.py:620:9
	v_cndmask_b32_e64 v74, 0, 1, s7
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s2, s15, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 16
	s_min_i32 s2, s51, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 63
	.loc	1 622 34 is_stmt 1              ; attention.py:622:34
	s_ashr_i32 s7, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s7, s7, 26
	s_add_i32 s2, s2, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 622 33 is_stmt 0              ; attention.py:622:33
	s_and_not1_b32 s2, s2, 63
	.loc	1 622 18                        ; attention.py:622:18
	s_min_i32 s84, s84, s2
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b64 s[16:17], s[0:1], 0x40
	.loc	1 571 21 is_stmt 1              ; attention.py:571:21
	v_and_b32_e32 v42, 63, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v73, 64, v0
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_ge_i32 s83, s84
	.loc	1 696 65                        ; attention.py:696:65
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_i32_e64 s2, s82, v42
	v_cmp_eq_u32_e32 vcc_lo, 0, v73
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
                                        ; implicit-def: $vgpr244 : SGPR spill to VGPR lane
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_xor_b32 s7, s27, s48
	s_mul_f32 s8, s8, 0x4f7ffffe
	v_writelane_b32 v244, s16, 0
	s_ashr_i32 s7, s7, 31
	s_ashr_i32 s6, s6, 31
	s_xor_b32 s9, s20, s7
	s_cvt_u32_f32 s8, s8
	v_writelane_b32 v244, s17, 1
	s_sub_i32 s11, s9, s7
	s_sub_i32 s7, 0, s5
	s_mul_i32 s9, s11, s48
	s_mul_i32 s7, s7, s8
	s_sub_i32 s12, s27, s9
	s_mul_hi_u32 s7, s8, s7
	v_writelane_b32 v244, s18, 2
	s_abs_i32 s9, s12
	s_add_i32 s8, s8, s7
	.loc	1 570 31 is_stmt 1              ; attention.py:570:31
	v_lshrrev_b32_e32 v75, 6, v73
	s_mul_hi_u32 s7, s9, s8
	v_writelane_b32 v244, s19, 3
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x6c
	s_load_b64 s[64:65], s[0:1], 0x30
	s_ashr_i32 s8, s12, 31
	.loc	1 569 19                        ; attention.py:569:19
	s_mul_i32 s10, s7, s5
	s_xor_b32 s6, s8, s6
	s_sub_i32 s8, s9, s10
	s_add_i32 s9, s7, 1
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	s_load_b32 s85, s[0:1], 0x7c
	s_cselect_b32 s7, s9, s7
	s_cselect_b32 s8, s10, s8
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v2, s3, v75
	.loc	1 569 19                        ; attention.py:569:19
	s_add_i32 s9, s7, 1
	s_cmp_ge_u32 s8, s5
	v_and_b32_e32 v3, 0x60, v0
	s_cselect_b32 s5, s9, s7
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v4, 2, v2
	v_or_b32_e32 v5, 4, v2
	v_dual_mov_b32 v92, 0x5410 :: v_dual_and_b32 v11, 16, v0
	.loc	1 569 19                        ; attention.py:569:19
	s_xor_b32 s5, s5, s6
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x8
	s_load_b64 s[68:69], s[0:1], 0x20
	s_sub_i32 s0, s5, s6
	.loc	1 632 33                        ; attention.py:632:33
	s_mul_i32 s1, s11, s49
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v6, 6, v2
	.loc	1 632 33                        ; attention.py:632:33
	s_add_i32 s86, s0, s1
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v7, 8, v2
	v_or_b32_e32 v8, 10, v2
	v_or_b32_e32 v9, 12, v2
	v_or_b32_e32 v10, 14, v2
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v76, s15, v2
	v_add_nc_u32_e32 v77, s15, v4
	v_add_nc_u32_e32 v78, s15, v5
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s0, s50, v2
	v_cmp_gt_i32_e64 s1, s50, v4
	v_cmp_gt_i32_e64 s5, s50, v5
	v_and_b32_e32 v2, 0xbc, v61
	v_lshrrev_b32_e32 v5, 4, v3
	v_cndmask_b32_e64 v90, 0x104, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v11
	v_lshlrev_b32_e32 v4, 6, v0
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v84.h, v1.l
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s19, v75
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v79, s15, v6
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s6, s50, v6
	v_mov_b16_e32 v84.l, 0
	v_and_b32_e32 v6, 64, v4
	v_xor_b32_e32 v2, v2, v5
	v_and_b32_e32 v4, 0x380, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mov_b32 v179, v84 :: v_dual_lshlrev_b32 v28, 1, v64
	v_dual_mov_b32 v178, v84 :: v_dual_lshlrev_b32 v29, 2, v11
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[53:54], null, s85, v42, v[1:2]
	v_lshlrev_b32_e32 v1, 2, v41
	.loc	1 654 30                        ; attention.py:654:30
	v_mov_b32_e32 v177, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_or3_b32 v88, v4, v29, v28
	v_dual_mov_b32 v176, v84 :: v_dual_and_b32 v23, 60, v61
	v_lshl_or_b32 v86, v64, 7, v1
	v_lshl_or_b32 v89, v64, 8, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v1, 16, v88
	v_dual_mov_b32 v180, v84 :: v_dual_and_b32 v59, 32, v0
	v_mov_b32_e32 v175, v84
	v_or_b32_e32 v85, v2, v6
	v_or3_b32 v87, v60, v6, v23
	v_dual_mov_b32 v182, 0xff800000 :: v_dual_lshlrev_b32 v91, 2, v59
	v_xor_b32_e32 v23, v90, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v2, 0x108, v85
	v_add_nc_u32_e32 v126, 0, v1
	v_mov_b32_e32 v1, 0
	v_xor_b32_e32 v54, 28, v88
	v_or3_b32 v90, v23, v91, v6
	v_dual_mov_b32 v183, 0xff800000 :: v_dual_add_nc_u32 v94, 0, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v2, v1
	v_add3_u32 v91, 0, v3, v28
	v_mov_b32_e32 v3, 0x7632
	v_cndmask_b32_e32 v28, 0x1054, v92, vcc_lo
	v_xor_b32_e32 v55, 4, v89
	v_add_nc_u32_e32 v129, 0, v54
	v_xor_b32_e32 v56, 8, v89
	v_cndmask_b32_e32 v3, 0x3276, v3, vcc_lo
	v_lshl_or_b32 v28, v28, 8, v28
	v_add_nc_u32_e32 v130, 0, v55
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[54:55], null, s19, 6, v[53:54]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v3, v3, 8, v3
	v_xor_b32_e32 v57, 12, v89
	v_dual_mov_b32 v189, v1 :: v_dual_and_b32 v28, 0x540054, v28
	v_xor_b32_e32 v58, 16, v89
	v_and_b32_e32 v3, 0x760076, v3
	v_lshrrev_b32_e32 v11, 2, v73
	v_lshl_add_u32 v59, v59, 1, 0
	v_add_nc_u32_e32 v131, 0, v56
	v_mad_u64_u32 v[55:56], null, s19, 10, v[53:54]
	v_writelane_b32 v244, s28, 4
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v80, s15, v7
	v_add_nc_u32_e32 v81, s15, v8
	v_add_nc_u32_e32 v82, s15, v9
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mov_b32 v174, v84 :: v_dual_add_nc_u32 v83, s15, v10
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s7, s50, v7
	v_cmp_gt_i32_e64 s8, s50, v8
	v_cmp_gt_i32_e64 s9, s50, v9
	v_cmp_gt_i32_e64 s10, s50, v10
	v_xor_b32_e32 v5, 0x210, v85
	v_xor_b32_e32 v7, 0x318, v85
	v_xor_b32_e32 v8, 0x420, v85
	v_xor_b32_e32 v9, 0x528, v85
	v_xor_b32_e32 v10, 0x630, v85
	v_xor_b32_e32 v12, 0x738, v85
	v_xor_b32_e32 v13, 4, v86
	v_xor_b32_e32 v14, 8, v86
	v_xor_b32_e32 v15, 12, v86
	v_xor_b32_e32 v16, 16, v86
	v_xor_b32_e32 v17, 20, v86
	v_xor_b32_e32 v18, 24, v86
	v_xor_b32_e32 v19, 28, v86
	v_xor_b32_e32 v20, 32, v86
	v_xor_b32_e32 v21, 36, v86
	v_xor_b32_e32 v22, 40, v86
	v_xor_b32_e32 v24, 44, v86
	v_xor_b32_e32 v25, 48, v86
	v_xor_b32_e32 v26, 52, v86
	v_xor_b32_e32 v27, 56, v86
	v_xor_b32_e32 v30, 60, v86
	v_xor_b32_e32 v31, 0x84, v87
	v_xor_b32_e32 v32, 0x108, v87
	v_xor_b32_e32 v33, 0x18c, v87
	v_xor_b32_e32 v4, 0x210, v87
	v_xor_b32_e32 v29, 0x294, v87
	v_xor_b32_e32 v34, 0x318, v87
	v_xor_b32_e32 v35, 0x39c, v87
	v_xor_b32_e32 v36, 4, v88
	v_xor_b32_e32 v37, 8, v88
	v_xor_b32_e32 v38, 12, v88
	v_xor_b32_e32 v39, 20, v88
	v_xor_b32_e32 v40, 24, v88
	v_xor_b32_e32 v134, 20, v89
	v_xor_b32_e32 v135, 24, v89
	v_xor_b32_e32 v136, 28, v89
	v_xor_b32_e32 v137, 32, v89
	v_xor_b32_e32 v138, 36, v89
	v_xor_b32_e32 v139, 40, v89
	v_xor_b32_e32 v140, 44, v89
	v_xor_b32_e32 v23, 48, v89
	v_xor_b32_e32 v142, 52, v89
	v_xor_b32_e32 v143, 56, v89
	v_xor_b32_e32 v144, 60, v89
	v_xor_b32_e32 v145, 0x208, v90
	v_xor_b32_e32 v146, 0x410, v90
	v_xor_b32_e32 v147, 0x618, v90
	v_xor_b32_e32 v148, 0x820, v90
	v_xor_b32_e32 v149, 0xa28, v90
	v_xor_b32_e32 v150, 0xc30, v90
	v_xor_b32_e32 v151, 0xe38, v90
	v_dual_mov_b32 v191, 0xff800000 :: v_dual_add_nc_u32 v6, 0, v6
	v_lshl_or_b32 v28, v28, 4, v28
	v_lshl_or_b32 v3, v3, 4, v3
	v_add_nc_u32_e32 v132, 0, v57
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[56:57], null, s19, 12, v[53:54]
	v_add_nc_u32_e32 v133, 0, v58
	v_mad_u64_u32 v[57:58], null, s19, 14, v[53:54]
	v_add_nc_u32_e32 v152, v59, v11
	v_mad_u64_u32 v[58:59], null, s82, v75, v[42:43]
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s87, s16, 0x3fb8aa3b
	.loc	1 674 25                        ; attention.py:674:25
	s_mul_i32 s3, s3, s19
	.loc	1 675 27                        ; attention.py:675:27
	s_mul_i32 s11, s11, s17
	v_writelane_b32 v244, s26, 5
	v_and_b32_e32 v92, 0x5040504, v28
	v_and_b32_e32 v93, 0x7060706, v3
	v_dual_mov_b32 v184, 0xff800000 :: v_dual_add_nc_u32 v95, 0, v5
	v_dual_mov_b32 v185, 0xff800000 :: v_dual_add_nc_u32 v96, 0, v7
	v_dual_mov_b32 v186, 0xff800000 :: v_dual_add_nc_u32 v97, 0, v8
	v_dual_mov_b32 v187, 0xff800000 :: v_dual_add_nc_u32 v98, 0, v9
	v_dual_mov_b32 v188, 0xff800000 :: v_dual_add_nc_u32 v99, 0, v10
	v_dual_mov_b32 v59, 0xff800000 :: v_dual_add_nc_u32 v100, 0, v12
	v_dual_mov_b32 v190, 0xff800000 :: v_dual_add_nc_u32 v101, 0, v13
	v_add_nc_u32_e32 v102, 0, v14
	v_add_nc_u32_e32 v103, 0, v15
	v_add_nc_u32_e32 v104, 0, v16
	v_add_nc_u32_e32 v105, 0, v17
	v_add_nc_u32_e32 v106, 0, v18
	v_add_nc_u32_e32 v107, 0, v19
	v_add_nc_u32_e32 v108, 0, v20
	v_add_nc_u32_e32 v109, 0, v21
	v_add_nc_u32_e32 v110, 0, v22
	v_add_nc_u32_e32 v111, 0, v24
	v_add_nc_u32_e32 v112, 0, v25
	v_add_nc_u32_e32 v113, 0, v26
	v_add_nc_u32_e32 v114, 0, v27
	v_add_nc_u32_e32 v115, 0, v30
	v_add_nc_u32_e32 v116, 0, v31
	v_add_nc_u32_e32 v117, 0, v32
	v_add_nc_u32_e32 v118, 0, v33
	v_add_nc_u32_e32 v119, 0, v4
	v_add_nc_u32_e32 v120, 0, v29
	v_add_nc_u32_e32 v121, 0, v34
	v_add_nc_u32_e32 v122, 0, v35
	v_add_nc_u32_e32 v123, 0, v36
	v_add_nc_u32_e32 v124, 0, v37
	v_add_nc_u32_e32 v125, 0, v38
	v_add_nc_u32_e32 v127, 0, v39
	v_add_nc_u32_e32 v128, 0, v40
	v_add_nc_u32_e32 v134, 0, v134
	v_add_nc_u32_e32 v135, 0, v135
	v_add_nc_u32_e32 v136, 0, v136
	v_add_nc_u32_e32 v137, 0, v137
	v_add_nc_u32_e32 v138, 0, v138
	v_add_nc_u32_e32 v139, 0, v139
	v_add_nc_u32_e32 v140, 0, v140
	v_add_nc_u32_e32 v141, 0, v23
	v_add_nc_u32_e32 v142, 0, v142
	v_add_nc_u32_e32 v143, 0, v143
	v_add_nc_u32_e32 v144, 0, v144
	v_add_nc_u32_e32 v145, 0, v145
	v_add_nc_u32_e32 v146, 0, v146
	v_add_nc_u32_e32 v147, 0, v147
	v_add_nc_u32_e32 v148, 0, v148
	v_add_nc_u32_e32 v149, 0, v149
	v_add_nc_u32_e32 v150, 0, v150
	v_add_nc_u32_e32 v151, 0, v151
	v_add_nc_u32_e32 v153, v6, v11
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	.loc	1 571 21                        ; attention.py:571:21
	v_bfe_u32 v154, v0, 4, 1
	v_subrev_nc_u32_e32 v155, s13, v76
	v_subrev_nc_u32_e32 v156, s13, v77
	v_subrev_nc_u32_e32 v157, s13, v78
	v_subrev_nc_u32_e32 v158, s13, v79
	v_subrev_nc_u32_e32 v159, s13, v80
	v_subrev_nc_u32_e32 v160, s13, v81
	v_subrev_nc_u32_e32 v161, s13, v82
	v_subrev_nc_u32_e32 v162, s13, v83
	v_add_nc_u32_e32 v163, s14, v76
	v_add_nc_u32_e32 v164, s14, v77
	v_add_nc_u32_e32 v165, s14, v78
	v_add_nc_u32_e32 v166, s14, v79
	v_add_nc_u32_e32 v167, s14, v80
	v_add_nc_u32_e32 v168, s14, v81
	v_add_nc_u32_e32 v169, s14, v82
	v_add_nc_u32_e32 v170, s14, v83
	.loc	1 629 13                        ; attention.py:629:13
	v_lshl_add_u32 v171, s19, 1, v53
	v_lshl_add_u32 v172, s19, 2, v53
	v_lshl_add_u32 v173, s19, 3, v53
	v_add_nc_u32_e32 v181, v65, v0
	s_mov_b32 s52, 0
	.loc	1 676 27                        ; attention.py:676:27
	s_mul_i32 s12, s12, s18
	s_add_i32 s100, s11, s3
	.loc	1 632 32                        ; attention.py:632:32
	s_mul_i32 s86, s86, s51
	s_lshl_b32 s88, s81, 4
	s_lshl_b32 s92, s81, 5
	s_and_b32 s73, s21, 0xffff
	s_mov_b32 s72, s20
	s_mov_b32 s75, 0x31027000
	s_mov_b32 s74, 0x7ffffffe
	s_and_b32 s69, s69, 0xffff
	s_add_i32 s100, s100, s12
	s_and_b32 s65, s65, 0xffff
	s_lshl_b32 s101, s82, 1
	s_lshl_b32 s102, s82, 2
	s_lshl_b32 s104, s82, 3
	s_lshl_b32 s3, s82, 4
	s_lshl_b32 s97, s82, 5
	s_mul_i32 s89, s82, 50
	s_mul_i32 s90, s82, 52
	s_mul_i32 s91, s82, 54
	s_mul_i32 s93, s82, 56
	s_mul_i32 s94, s82, 58
	s_mul_i32 s95, s82, 60
	s_mul_i32 s96, s82, 62
	s_and_b32 s77, s23, 0xffff
	s_mov_b32 s76, s22
	.loc	1 664 17                        ; attention.py:664:17
	s_mov_b32 s98, s87
	s_mov_b32 s99, s87
	s_mov_b32 s60, s87
	s_mov_b32 s61, s87
	s_mov_b32 s103, s87
	s_mov_b32 s62, s87
	s_mov_b32 s53, s52
	s_mov_b32 s54, s52
	s_mov_b32 s55, s52
	s_mov_b32 s56, s52
	s_mov_b32 s57, s52
	s_mov_b32 s58, s52
	s_mov_b32 s59, s52
	s_mov_b32 s63, s87
	s_mov_b32 vcc_hi, 0x76543210
	v_writelane_b32 v244, s27, 6
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 674 25                        ; attention.py:674:25
	s_mul_i32 s11, s83, s85
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v224, v36
	.loc	1 674 25                        ; attention.py:674:25
	s_add_i32 s11, s100, s11
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v36, v37
	v_cvt_f32_i32_e32 v37, v26
	v_cvt_f32_i32_e32 v26, v17
	v_cvt_f32_i32_e32 v17, v12
	v_cvt_f32_i32_e32 v12, v14
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v14, s11, v53, 1
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v226, v34
	v_cvt_f32_i32_e32 v34, v39
	v_cvt_f32_i32_e32 v39, v27
	v_cvt_f32_i32_e32 v27, v23
	v_cvt_f32_i32_e32 v23, v20
	v_cvt_f32_i32_e32 v20, v18
	v_cvt_f32_i32_e32 v18, v11
	v_cvt_f32_i32_e32 v11, v15
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v15, s11, v171, 1
	v_cndmask_b32_e64 v14, 0x80000000, v14, s34
	s_mov_b32 s66, s74
	s_mov_b32 s67, s75
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v225, v35
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v15, 0x80000000, v15, s33
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v35, v38
	.loc	1 683 36                        ; attention.py:683:36
	s_clause 0x1
	buffer_load_u16 v38, v14, s[64:67], 0 offen
	buffer_load_u16 v228, v15, s[64:67], 0 offen
	v_add_lshl_u32 v14, s11, v173, 1
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v227, v33
	v_cvt_f32_i32_e32 v33, v40
	v_cvt_f32_i32_e32 v229, v29
	v_cvt_f32_i32_e32 v40, v28
	v_cvt_f32_i32_e32 v29, v25
	v_cvt_f32_i32_e32 v25, v22
	v_cvt_f32_i32_e32 v22, v19
	v_cvt_f32_i32_e32 v19, v10
	v_cvt_f32_i32_e32 v10, v16
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v16, s11, v172, 1
	v_cndmask_b32_e64 v28, 0x80000000, v14, s29
	v_add_lshl_u32 v14, s11, v55, 1
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v230, v30
	v_cvt_f32_i32_e32 v231, v31
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v16, 0x80000000, v16, s31
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v232, v32
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v30, 0x80000000, v14, s28
	v_add_lshl_u32 v14, s11, v56, 1
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v32, v24
	v_cvt_f32_i32_e32 v24, v21
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v21, s11, v54, 1
	v_add_lshl_u32 v15, s11, v57, 1
	v_cndmask_b32_e64 v31, 0x80000000, v14, s27
	buffer_load_u16 v14, v16, s[64:67], 0 offen
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(27)
	v_mov_b16_e64 v222.h, v222.l
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v21, 0x80000000, v21, s30
	v_cndmask_b32_e64 v233, 0x80000000, v15, s26
	s_clause 0x4
	buffer_load_u16 v15, v21, s[64:67], 0 offen
	buffer_load_u16 v16, v28, s[64:67], 0 offen
	buffer_load_u16 v28, v30, s[64:67], 0 offen
	buffer_load_u16 v30, v31, s[64:67], 0 offen
	buffer_load_u16 v31, v233, s[64:67], 0 offen
	.loc	1 684 35                        ; attention.py:684:35
	v_add_nc_u32_e32 v21, 0, v85
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v221.h, v221.l
	v_mov_b16_e64 v218.h, v218.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v39, v175, v39 :: v_dual_mul_f32 v24, v176, v24
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v220.h, v220.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v37, v174, v37 :: v_dual_mul_f32 v32, v179, v32
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v219.h, v219.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v27, v178, v27
	v_dual_mul_f32 v25, v177, v25 :: v_dual_mul_f32 v22, v174, v22
	v_dual_mul_f32 v23, v175, v23 :: v_dual_mul_f32 v18, v84, v18
	v_mul_f32_e32 v12, v84, v12
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v13, v13
	.loc	1 694 30                        ; attention.py:694:30
	s_mov_b32 s79, s75
	.loc	1 685 25                        ; attention.py:685:25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v9, v180, v9
	v_mul_f32_e32 v13, v84, v13
	.loc	1 685 25                        ; attention.py:685:25
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v40, v176, v40
	v_mul_f32_e32 v26, v84, v26
	v_mul_f32_e32 v29, v84, v29
	v_mul_f32_e32 v20, v84, v20
	v_mul_f32_e32 v10, v84, v10
	v_dual_mul_f32 v17, v84, v17 :: v_dual_max_f32 v182, v182, v182
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(7)
	v_cndmask_b16 v38.h, 0xff80, v38.l, s34
	s_waitcnt vmcnt(6)
	v_cndmask_b16 v228.h, 0xff80, v228.l, s33
	.loc	1 684 35                        ; attention.py:684:35
	ds_store_b16_d16_hi v21, v38
	ds_store_b16_d16_hi v94, v228
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v21.l, 0
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v21.h, v223.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v223, v180, v232
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v222.l, v21.l
	v_mov_b16_e64 v221.l, v21.l
	v_mov_b16_e64 v218.l, v21.l
	v_mov_b16_e64 v220.l, v21.l
	v_mov_b16_e64 v219.l, v21.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v222, v223, v222
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v223, v179, v231 :: v_dual_mul_f32 v218, v40, v218
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v40.h, v216.l
	v_mov_b16_e32 v40.l, v21.l
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v38.l, v21.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v221, v223, v221
	v_mul_f32_e32 v223, v178, v230
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v228.l, v21.l
	s_waitcnt vmcnt(5)
	v_cndmask_b16 v192.h, 0xff80, v14.l, s31
	.loc	1 684 35                        ; attention.py:684:35
	v_add_nc_u32_e32 v14, 0, v86
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v216, v39, v40
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v39.h, v214.l
	v_mov_b16_e32 v39.l, v21.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v220, v223, v220 :: v_dual_add_nc_u32 v243, 0, v87
	v_mul_f32_e32 v223, v177, v229
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(4)
	v_cndmask_b16 v193.h, 0xff80, v15.l, s30
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v214, v37, v39
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v37.h, v212.l
	v_mov_b16_e32 v37.l, v21.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v219, v223, v219
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(3)
	v_cndmask_b16 v194.h, 0xff80, v16.l, s29
	s_waitcnt vmcnt(2)
	v_cndmask_b16 v195.h, 0xff80, v28.l, s28
	s_waitcnt vmcnt(1)
	v_cndmask_b16 v196.h, 0xff80, v30.l, s27
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v212, v29, v37
	v_mul_f32_e32 v29, v26, v21
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v26.h, v215.l
	v_mov_b16_e32 v26.l, v21.l
	v_mov_b16_e64 v21.h, v217.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v11, v84, v11
	v_mul_f32_e32 v19, v84, v19
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v38
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v39, v32, v26
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v26.h, v213.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v228
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v197.h, 0xff80, v31.l, s26
	.loc	1 684 35                        ; attention.py:684:35
	ds_store_b16_d16_hi v95, v192
	ds_store_b16_d16_hi v96, v193
	ds_store_b16_d16_hi v97, v194
	ds_store_b16_d16_hi v98, v195
	ds_store_b16_d16_hi v99, v196
	ds_store_b16_d16_hi v100, v197
	s_waitcnt lgkmcnt(0)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v26, v27, v26
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v27.h, v211.l
	v_mov_b16_e32 v27.l, v21.l
	.loc	1 684 35                        ; attention.py:684:35
	s_barrier
	ds_load_b32 v28, v14
	ds_load_b32 v235, v101
	ds_load_b32 v236, v102
	ds_load_b32 v237, v103
	ds_load_b32 v238, v104
	ds_load_b32 v239, v105
	ds_load_b32 v240, v106
	ds_load_b32 v241, v107
	ds_load_b32 v242, v108
	ds_load_b32 v228, v109
	ds_load_b32 v38, v110
	ds_load_b32 v30, v111
	ds_load_b32 v16, v112
	ds_load_b32 v14, v113
	ds_load_b32 v15, v114
	ds_load_b32 v31, v115
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s48, s34, vcc_lo
	s_and_b32 s49, s33, s11
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v37, v25, v27
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v25.h, v210.l
	v_mov_b16_e32 v25.l, v21.l
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v234, 0, 1, s49
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v233, 0, 1, s48
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v40, v24, v25
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v24.h, v209.l
	v_mov_b16_e32 v24.l, v21.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v209, v23, v24
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v23.h, v208.l
	v_mov_b16_e32 v23.l, v21.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v208, v22, v23
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v22.h, v205.l
	v_mov_b16_e32 v22.l, v21.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v205, v20, v22
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v20.h, v207.l
	v_mov_b16_e32 v20.l, v21.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v19, v19, v20
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v20.h, v206.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v20, v18, v20
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v18.h, v204.l
	v_mov_b16_e32 v18.l, v21.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v17, v17, v18
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v18.h, v203.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v13, v13, v18
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v18.h, v202.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v12, v12, v18
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v18.h, v201.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v32, v11, v18
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v11.h, v200.l
	v_mov_b16_e32 v11.l, v21.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v200, v10, v11
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v10.h, v199.l
	v_mov_b16_e32 v10.l, v21.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v11, v84, v227
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v199, v11, v10
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v10.h, v198.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v11, v84, v226
	v_mul_f32_e32 v201, v11, v10
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v10.h, v197.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v11, v84, v225
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v197.l, v21.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v202, v11, v10
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v10.h, v196.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v11, v84, v224
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v196.l, v21.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s15, 0xff800000, v197
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v203, v11, v10
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v10.h, v195.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v11, v84, v36
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s14, 0xff800000, v196
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v195.l, v21.l
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s41, s26, s15
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v36, v11, v10 :: v_dual_mul_f32 v11, v84, v35
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v10.h, v194.l
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v194.l, v21.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s13, 0xff800000, v195
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s42, s27, s14
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_mul_f32_e32 v35, v11, v10
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v10.h, v193.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v11, v84, v34
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v193.l, v21.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s12, 0xff800000, v194
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s43, s28, s13
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_dual_mul_f32 v34, v11, v10 :: v_dual_mul_f32 v11, v84, v33
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v10.h, v192.l
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v192.l, v21.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v193
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s44, s29, s12
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v192
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_mul_f32_e32 v192, v9, v21
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v21.h, v242.l
	v_and_b32_e32 v9, 0xffff0000, v235
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s46, s30, s11
	s_and_b32 s47, s31, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v18, 0x3fb8aa3b, v21
	v_mul_f32_e32 v22, 0x3fb8aa3b, v9
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v9, 0xffff0000, v236
	v_mov_b16_e32 v21.h, v28.l
	v_and_b32_e32 v28, 0xffff0000, v28
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v18, s87, v29
	v_fmac_f32_e32 v22, s87, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v196, 0x3fb8aa3b, v21
	v_dual_mul_f32 v23, 0x3fb8aa3b, v9 :: v_dual_mul_f32 v28, 0x3fb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v196, s87, v212 :: v_dual_and_b32 v9, 0xffff0000, v237
	v_fmac_f32_e32 v28, s63, v192
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v24, 0x3fb8aa3b, v9
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v24, s87, v17 :: v_dual_and_b32 v9, 0xffff0000, v238
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v25, 0x3fb8aa3b, v9
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_and_b32_e32 v9, 0xffff0000, v239
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v27, 0x3fb8aa3b, v9
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v9, 0xffff0000, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v29, 0x3fb8aa3b, v9
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v9, 0xffff0000, v241
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v29, s87, v32 :: v_dual_mul_f32 v32, 0x3fb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v32, s87, v200 :: v_dual_and_b32 v9, 0xffff0000, v242
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v197, 0x3fb8aa3b, v9
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_and_b32_e32 v9, 0xffff0000, v228
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v197, s87, v199 :: v_dual_mul_f32 v198, 0x3fb8aa3b, v9
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v9, 0xffff0000, v38
	v_mov_b16_e32 v38.h, v38.l
	v_mov_b16_e32 v38.l, v21.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v198, s87, v201
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v199, 0x3fb8aa3b, v9
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_and_b32_e32 v9, 0xffff0000, v30
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v204, 0x3fb8aa3b, v38
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v38.h, v30.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v199, s87, v202 :: v_dual_mul_f32 v200, 0x3fb8aa3b, v9
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v9, 0xffff0000, v16
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v33, v11, v10
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v10, 0, 1, s47
	v_cndmask_b32_e64 v11, 0, 1, s46
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v200, s87, v203 :: v_dual_mul_f32 v201, 0x3fb8aa3b, v9
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v9, 0xffff0000, v14
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v23, s87, v20
	.loc	1 685 25                        ; attention.py:685:25
	ds_store_b8 v116, v234
	ds_store_b8 v117, v10
	v_cndmask_b32_e64 v10, 0, 1, s44
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v20, 0x3fb8aa3b, v9
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v9, 0xffff0000, v15
	.loc	1 685 25                        ; attention.py:685:25
	ds_store_b8 v118, v11
	v_cndmask_b32_e64 v11, 0, 1, s43
	ds_store_b8 v119, v10
	ds_store_b8 v243, v233
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v19, 0x3fb8aa3b, v9
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v9, 0xffff0000, v31
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v10, 0, 1, s42
	ds_store_b8 v120, v11
	v_cndmask_b32_e64 v11, 0, 1, s41
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v19, s87, v34
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v17, 0x3fb8aa3b, v9
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_mov_b16_e64 v9.h, v235.l
	v_mov_b16_e32 v9.l, v21.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v20, s87, v35
	.loc	1 685 25                        ; attention.py:685:25
	ds_store_b8 v121, v10
	ds_store_b8 v122, v11
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v17, s87, v33
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v33, 0x3fb8aa3b, v9
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v9.h, v236.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v27, s87, v12
	.loc	1 685 25                        ; attention.py:685:25
	s_barrier
	ds_load_u16_d16 v10, v129
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v10, v129 offset:32
	ds_load_u16_d16 v11, v128 offset:32
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v201, s87, v36 :: v_dual_mul_f32 v34, 0x3fb8aa3b, v9
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v9.h, v237.l
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v11, v128
	ds_load_u16_d16 v12, v127 offset:32
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v25, s87, v13 :: v_dual_add_nc_u32 v202, 0, v88
	v_fmac_f32_e32 v33, s98, v214
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v35, 0x3fb8aa3b, v9
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_mov_b16_e64 v9.h, v241.l
	.loc	1 685 25                        ; attention.py:685:25
	ds_load_u16_d16_hi v31, v202 offset:32
	ds_load_u16_d16_hi v30, v123
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v34, s99, v216 :: v_dual_fmac_f32 v35, s60, v218
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v36, 0x3fb8aa3b, v9
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_mov_b16_e64 v9.h, v238.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v204, s98, v208
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v36, s63, v222 :: v_dual_mul_f32 v193, 0x3fb8aa3b, v9
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v9.h, v240.l
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v193, s61, v219 :: v_dual_mul_f32 v194, 0x3fb8aa3b, v9
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v9.h, v239.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v194, s62, v221
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v195, 0x3fb8aa3b, v9
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	v_and_b16 v9.l, 1, v10.l
	v_lshrrev_b16 v10.l, 8, v10.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v195, s103, v220
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s35, 1, v9.l
	s_waitcnt lgkmcnt(3)
	v_and_b16 v9.l, 1, v11.h
	v_and_b16 v10.l, 1, v10.l
	v_lshrrev_b16 v11.h, 8, v11.h
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u16_e64 s36, 1, v9.l
	ds_load_u16_d16 v9, v127
	s_waitcnt lgkmcnt(3)
	ds_load_u16_d16_hi v12, v126 offset:32
	v_cmp_eq_u16_e64 s34, 1, v10.l
	s_waitcnt lgkmcnt(3)
	v_lshrrev_b16 v10.l, 8, v31.h
	v_and_b16 v11.h, 1, v11.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v32, 0xff800000, v32, s34
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v10.l, 1, v10.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s33, 1, v11.h
	v_cmp_eq_u16_e64 s19, 1, v10.l
	s_waitcnt lgkmcnt(1)
	v_and_b16 v9.h, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s38, 1, v9.h
	ds_load_u16_d16_hi v9, v126
	s_waitcnt lgkmcnt(0)
	v_and_b16 v9.l, 1, v9.l
	v_cmp_eq_u16_e64 s20, 1, v9.l
	v_and_b16 v13.l, 1, v9.h
	v_lshrrev_b16 v9.h, 8, v9.h
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_eq_u16_e64 s37, 1, v13.l
	ds_load_u16_d16 v13, v125
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v13, v125 offset:32
	ds_load_u16_d16_hi v14, v124 offset:32
	v_and_b16 v9.h, 1, v9.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s14, 1, v9.h
	s_waitcnt lgkmcnt(1)
	v_and_b16 v15.h, 1, v13.l
	v_lshrrev_b16 v13.l, 8, v13.l
	v_cmp_eq_u16_e64 s40, 1, v15.h
	ds_load_u16_d16_hi v15, v124
	ds_load_u16_d16_hi v16, v123 offset:32
	v_and_b16 v13.l, 1, v13.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s24, 1, v13.l
	s_waitcnt lgkmcnt(1)
	v_and_b16 v21.h, 1, v15.h
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b16 v10.l, 8, v16.h
	v_cmp_eq_u16_e64 s39, 1, v21.h
	v_and_b16 v21.h, 1, v30.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b16 v10.l, 1, v10.l
	v_cmp_eq_u16_e64 s45, 1, v21.h
	v_and_b16 v21.h, 1, v31.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s22, 1, v10.l
	v_lshrrev_b16 v10.l, 8, v14.h
	v_cmp_eq_u16_e64 s16, 1, v21.h
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v21.h, v228.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v10.l, 1, v10.l
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v203, 0x3fb8aa3b, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s13, 1, v10.l
	v_lshrrev_b16 v10.l, 8, v13.h
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v203, s87, v205
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v205, 0x3fb8aa3b, v38
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_mov_b16_e32 v38.h, v31.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v10.l, 1, v10.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v31, 0xff800000, v29, s33
	v_cndmask_b32_e64 v29, 0xff800000, v198, s22
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v205, s99, v209 :: v_dual_mul_f32 v38, 0x3fb8aa3b, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s17, 1, v10.l
	v_lshrrev_b16 v10.l, 8, v12.h
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v38, s62, v39
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v39.h, v16.l
	v_mov_b16_e32 v39.l, v21.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v10.l, 1, v10.l
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v206, 0x3fb8aa3b, v39
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v39.h, v15.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s11, 1, v10.l
	v_lshrrev_b16 v10.l, 8, v12.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v206, s60, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v40, 0x3fb8aa3b, v39
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	v_and_b16 v21.h, 1, v10.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v40, s103, v26
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v26.h, v14.l
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v14.l, 1, v10.h
	v_lshrrev_b16 v10.h, 8, v10.h
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v26.l, v21.l
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s30, 1, v21.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cmp_eq_u16_e64 s12, 1, v14.l
	v_and_b16 v14.l, 1, v11.l
	v_lshrrev_b16 v11.l, 8, v11.l
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v192, 0x3fb8aa3b, v26
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v39, 0xff800000, v38, s12
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e32 vcc_lo, 1, v14.l
	v_and_b16 v14.l, 1, v12.l
	v_and_b16 v30.l, 1, v11.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v192, s61, v37
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v11, 0xff800000, v34, s39
	v_cndmask_b32_e64 v34, 0xff800000, v27, s20
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s18, 1, v14.l
	v_and_b16 v14.l, 1, v12.h
	v_cmp_eq_u16_e64 s26, 1, v30.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v12, 0xff800000, v35, s40
	v_cndmask_b32_e32 v38, 0xff800000, v40, vcc_lo
	v_cndmask_b32_e64 v192, 0xff800000, v192, s18
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s15, 1, v14.l
	v_and_b16 v14.l, 1, v13.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v13, 0xff800000, v193, s37
	v_cndmask_b32_e64 v27, 0xff800000, v197, s19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v40, 0xff800000, v206, s15
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s27, 1, v14.l
	v_and_b16 v14.l, 1, v14.h
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s23, 1, v14.l
	v_and_b16 v14.l, 1, v16.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v16, 0xff800000, v36, s35
	v_cndmask_b32_e64 v36, 0xff800000, v24, s24
	v_cndmask_b32_e64 v24, 0xff800000, v199, s13
	v_cndmask_b32_e64 v193, 0xff800000, v204, s23
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s31, 1, v14.l
	ds_load_u16_d16 v14, v202
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 685 25                        ; attention.py:685:25
	v_lshrrev_b16 v15.l, 8, v14.l
	v_and_b16 v9.l, 1, v14.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v14, 0xff800000, v195, s38
	v_cndmask_b32_e64 v195, 0xff800000, v18, s16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v15.l, 1, v15.l
	v_cmp_eq_u16_e64 s50, 1, v9.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_eq_u16_e64 s25, 1, v15.l
	v_lshrrev_b16 v15.l, 8, v30.h
	v_and_b16 v30.h, 1, v10.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v9, 0xff800000, v196, s50
	v_cndmask_b32_e64 v10, 0xff800000, v33, s45
	v_cndmask_b32_e64 v26, 0xff800000, v28, s25
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v15.l, 1, v15.l
	v_cmp_eq_u16_e64 s29, 1, v30.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v33, 0xff800000, v25, s14
	v_cndmask_b32_e64 v196, 0xff800000, v203, s31
	v_cndmask_b32_e64 v25, 0xff800000, v200, s17
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s28, 1, v15.l
	v_lshrrev_b16 v15.l, 8, v15.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v30, 0xff800000, v17, s29
	v_add_nc_u32_e32 v17, 0, v90
	v_cndmask_b32_e64 v28, 0xff800000, v20, s30
	v_cndmask_b32_e64 v37, 0xff800000, v22, s28
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v15.l, 1, v15.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v22, 0xff800000, v201, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s21, 1, v15.l
	.loc	1 686 26                        ; attention.py:686:26
	v_add_nc_u32_e32 v15, 0, v89
	v_cndmask_b32_e64 v35, 0xff800000, v23, s21
	ds_store_2addr_b32 v15, v9, v26 offset1:32
	v_cndmask_b32_e64 v15, 0xff800000, v194, s36
	v_cndmask_b32_e64 v194, 0xff800000, v205, s27
	v_cndmask_b32_e64 v23, 0xff800000, v19, s26
	ds_store_2addr_b32 v130, v10, v37 offset1:32
	ds_store_2addr_b32 v131, v11, v35 offset1:32
	ds_store_2addr_b32 v132, v12, v36 offset1:32
	ds_store_2addr_b32 v133, v13, v33 offset1:32
	ds_store_2addr_b32 v134, v14, v34 offset1:32
	ds_store_2addr_b32 v135, v15, v31 offset1:32
	ds_store_2addr_b32 v136, v16, v32 offset1:32
	ds_store_2addr_b32 v137, v195, v27 offset1:32
	ds_store_2addr_b32 v138, v196, v29 offset1:32
	ds_store_2addr_b32 v139, v193, v24 offset1:32
	ds_store_2addr_b32 v140, v194, v25 offset1:32
	ds_store_2addr_b32 v141, v40, v22 offset1:32
	ds_store_2addr_b32 v142, v192, v28 offset1:32
	ds_store_2addr_b32 v143, v38, v23 offset1:32
	ds_store_2addr_b32 v144, v39, v30 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v17, v17
	ds_load_b32 v201, v145
	ds_load_b32 v18, v146
	ds_load_b32 v19, v147
	ds_load_b32 v20, v148
	ds_load_b32 v199, v149
	ds_load_b32 v198, v150
	ds_load_b32 v200, v151
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_dpp v197, v17 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp2:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v202, v17, v17
	v_dual_max_f32 v203, v201, v201 :: v_dual_max_f32 v204, v18, v18
	v_max_f32_e32 v205, v19, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_max_f32 v197, v197, v197 :: v_dual_max_f32 v206, v20, v20
	v_dual_max_f32 v207, v199, v199 :: v_dual_max_f32 v208, v198, v198
	v_max_f32_e32 v209, v200, v200
	v_max_f32_e32 v197, v202, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v202, v197 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp4:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v202, v202, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v197, v197, v202
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v202, v197 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v202, v202, v202
	v_max_f32_e32 v197, v197, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v202, v197 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v202, v202, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v197, v197, v202
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v202, v197, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v202, v202, v202
	v_max_f32_e32 v197, v197, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s66, v197, 31
	v_mov_b32_dpp v197, v201 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_mov_b32 v202, s66 :: v_dual_max_f32 v197, v197, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v197, v203, v197
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v203, v197 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v203, v203, v203
	v_max_f32_e32 v197, v197, v203
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v203, v197 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v203, v203, v203
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v197, v197, v203
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v203, v197 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v203, v203, v203
	v_max_f32_e32 v197, v197, v203
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v203, v197, -1, -1 op_sel:[1,0]
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v203, v203, v203
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v197, v197, v203
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s66, v197, 31
	v_mov_b32_dpp v197, v18 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v203, s66
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v197, v197, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v197, v204, v197
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v204, v197 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v204, v204, v204
	v_max_f32_e32 v197, v197, v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v204, v197 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v204, v204, v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v197, v197, v204
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v204, v197 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v204, v204, v204
	v_max_f32_e32 v197, v197, v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v204, v197, -1, -1 op_sel:[1,0]
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v204, v204, v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v197, v197, v204
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s66, v197, 31
	v_mov_b32_dpp v197, v19 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v204, s66 :: v_dual_max_f32 v197, v197, v197
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v197, v205, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v205, v197 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v205, v205, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v197, v197, v205
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v205, v197 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v205, v205, v205
	v_max_f32_e32 v197, v197, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v205, v197 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v205, v205, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v197, v197, v205
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v205, v197, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v205, v205, v205
	v_max_f32_e32 v197, v197, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s66, v197, 31
	v_mov_b32_dpp v197, v20 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v205, s66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v197, v197, v197
	v_max_f32_e32 v197, v206, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v206, v197 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v206, v206, v206
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v197, v197, v206
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v206, v197 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v206, v206, v206
	v_max_f32_e32 v197, v197, v206
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v206, v197 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v206, v206, v206
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v197, v197, v206
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v206, v197, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v206, v206, v206
	v_max_f32_e32 v197, v197, v206
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s66, v197, 31
	v_mov_b32_dpp v197, v199 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_mov_b32 v206, s66 :: v_dual_max_f32 v197, v197, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v197, v207, v197
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v207, v197 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v207, v207, v207
	v_max_f32_e32 v197, v197, v207
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v207, v197 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v207, v207, v207
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v197, v197, v207
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v207, v197 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v207, v207, v207
	v_max_f32_e32 v197, v197, v207
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v207, v197, -1, -1 op_sel:[1,0]
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v207, v207, v207
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v197, v197, v207
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s66, v197, 31
	v_mov_b32_dpp v197, v198 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v207, s66
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v197, v197, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v197, v208, v197
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v208, v197 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v208, v208, v208
	v_max_f32_e32 v197, v197, v208
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v208, v197 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v208, v208, v208
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v197, v197, v208
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v208, v197 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v208, v208, v208
	v_max_f32_e32 v197, v197, v208
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v208, v197, -1, -1 op_sel:[1,0]
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v208, v208, v208
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v197, v197, v208
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s66, v197, 31
	v_mov_b32_dpp v197, v200 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v208, s66 :: v_dual_max_f32 v197, v197, v197
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v197, v209, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v209, v197 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v209, v209, v209
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v197, v197, v209
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v209, v197 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v209, v209, v209
	v_max_f32_e32 v197, v197, v209
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v209, v197 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v209, v209, v209
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v197, v197, v209
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v209, v197, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp80:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v209, v209, v209
	v_max_f32_e32 v197, v197, v209
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_readlane_b32 s66, v197, 31
	v_mov_b32_e32 v209, s66
	ds_store_b128 v152, v[202:205]
	ds_store_b128 v152, v[206:209] offset:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[202:205], v153
	ds_load_b128 v[206:209], v153 offset:32
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v197, v202
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v202, v202, v202
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v197, v197 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp86:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v197, v197, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v197, v202, v197 :: v_dual_mov_b32 v202, v203
.Ltmp87:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v182, v182, v197
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp88:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v202, v202 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp89:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v17, v17, v182
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v183, v183, v203, v202
.Ltmp90:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v202, v204
.Ltmp91:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v201, v201, v183
.Ltmp92:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v202, v202 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp93:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v201, v201
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v184, v184, v204, v202
.Ltmp94:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v202, v205
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp95:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v17, 0, v17, s48
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v18, v18, v184
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp96:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v202, v202 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v17, v17, v17 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp98:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v201, 0, v201, s49
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 688 24 is_stmt 1              ; attention.py:688:24
	v_max3_f32 v185, v185, v205, v202
.Ltmp99:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v202, v206
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v17, v17, v17 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v201, v201, v201 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp101:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v19, v19, v185
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp102:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v202, v202 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v17, v17, v17 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_f32_dpp v201, v201, v201 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp104:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v18, 0, v18, s47
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v19, v19
	.loc	1 688 24 is_stmt 1              ; attention.py:688:24
	v_max3_f32 v186, v186, v206, v202
.Ltmp105:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v202, v207
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v17, v17, v17 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v18, v18, v18 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v201, v201, v201 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp107:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v202, v202 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v18, v18, v18 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v201, v201, v201 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp109:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v187, v187, v207, v202
.Ltmp110:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v202, v208
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v18, v18, v18 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp112:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v202, v202 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v18, v18, v18 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp114:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v188, v188, v208, v202
.Ltmp115:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v202, v209
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v202, v202 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp116:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v59, v59, v209, v202
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v202, v17, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v17, v17, v202
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v202, v201, -1, -1 op_sel:[1,0]
	v_readlane_b32 s47, v17, 31
.Ltmp120:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v17, 0, v19, s46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v201, v201, v202
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v202, v18, -1, -1 op_sel:[1,0]
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v17, v17, v17 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s46, v201, 31
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v18, v18, v202
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v17, v17, v17 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v17, v17, v17 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v17, v17, v17 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v19, v17, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v17, v17, v19
.Ltmp128:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v19, v20, v186
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v19, 0, v19, s44
.Ltmp129:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s44, v18, 31
.Ltmp130:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v19, v19, v19 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v19, v19, v19 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v19, v19, v19 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v19, v19, v19 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v20, v19, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v19, v19, v20
.Ltmp133:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v20, v199, v187
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v20, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v18, 0, v20, s43
.Ltmp134:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s43, v17, 31
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v18, v18, v18 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v18, v18, v18 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v18, v18, v18 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v18, v18, v18 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp136:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v20, v18, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp137:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v18, v18, v20
.Ltmp138:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v20, v198, v188
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v20, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v17, 0, v20, s42
.Ltmp139:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s42, v19, 31
.Ltmp140:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v17, v17, v17 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp141:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v198, s42
.Ltmp142:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v17, v17, v17 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v17, v17, v17 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v17, v17, v17 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp143:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v20, v17, -1, -1 op_sel:[1,0]
.Ltmp144:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v20, v17, v20 :: v_dual_sub_f32 v17, v200, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp145:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v17, v17
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v17, 0, v17, s41
.Ltmp146:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s41, v18, 31
	v_mov_b32_e32 v18, s46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp147:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v17, v17, v17 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp148:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v199, s41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp149:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v17, v17, v17 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v17, v17, v17 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v17, v17, v17 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp150:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v19, v17, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp151:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v19, v17, v19
.Ltmp152:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v17, s47
	v_readlane_b32 s47, v20, 31
	v_mov_b32_e32 v20, s43
	v_readlane_b32 s46, v19, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v19, s44 :: v_dual_mov_b32 v200, s47
	v_mov_b32_e32 v201, s46
	ds_store_b128 v152, v[17:20]
	ds_store_b128 v152, v[198:201] offset:32
.Ltmp153:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v17, v196, v193, v194
	v_max3_f32 v18, v40, v192, v38
	v_max3_f32 v19, v39, v26, v37
	v_max3_f32 v20, v27, v29, v24
.Ltmp154:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp155:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v17, v17, v18, v19
	v_max3_f32 v18, v35, v36, v33
	v_max3_f32 v19, v34, v31, v32
	v_max3_f32 v18, v18, v19, v20
	v_max_f32_e32 v19, v9, v10
	v_max3_f32 v20, v12, v13, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v19, v19, v11, v20
	v_max3_f32 v20, v15, v16, v195
	v_max3_f32 v17, v19, v20, v17
	v_max_f32_e32 v19, v25, v22
	v_max_f32_e32 v20, v23, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v19, v19, v28, v20
	v_max3_f32 v17, v17, v18, v19
.Ltmp156:
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v19, s83, v75
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s83, s83, 64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp157:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v18, v17, vcc_hi, 0xfedcba98 op_sel:[1,0]
.Ltmp158:
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s48, s51, v19
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v229, 32, v19
	v_add_nc_u32_e32 v230, 34, v19
	v_add_nc_u32_e32 v231, 36, v19
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v198, v191, v17, v18
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v17.h, v21.l
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s48, s2, s48
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v232, 38, v19
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v10, v10, v198 :: v_dual_add_nc_u32 v233, 40, v19
	v_sub_f32_e32 v9, v9, v198
	v_sub_f32_e32 v12, v12, v198
	v_sub_f32_e32 v11, v11, v198
	v_sub_f32_e32 v14, v14, v198
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v10, v10
	v_exp_f32_e32 v9, v9
	v_exp_f32_e32 v12, v12
	v_exp_f32_e32 v11, v11
	v_exp_f32_e32 v14, v14
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v13, v13, v198
	v_sub_f32_e32 v16, v16, v198
	v_sub_f32_e32 v15, v15, v198
	.loc	1 689 74 is_stmt 1              ; attention.py:689:74
	v_sub_f32_e32 v228, v191, v198
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v234, 42, v19
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v10, 0, v10, s45
	v_cndmask_b32_e64 v9, 0, v9, s50
	v_cndmask_b32_e64 v12, 0, v12, s40
	v_cndmask_b32_e64 v11, 0, v11, s39
	v_cndmask_b32_e64 v14, 0, v14, s38
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v17.l, v10.h
	v_cmp_o_f32_e64 s41, v10, v10
	v_cmp_o_f32_e64 s42, v9, v9
	v_cmp_o_f32_e64 s40, v12, v12
	v_cmp_o_f32_e64 s39, v11, v11
	v_and_b32_e32 v17, 1, v17
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v13, v13
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s38, v14, v14
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v16, v16
	v_exp_f32_e32 v15, v15
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v17, v10, v17, 0x7fff
	v_mov_b16_e32 v10.l, v9.h
	v_mov_b16_e32 v10.h, v21.l
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v228, v228
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v235, 44, v19
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s41
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v13, 0, v13, s37
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v10, 1, v10
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v16, 0, v16, s35
	v_cndmask_b32_e64 v15, 0, v15, s36
	.loc	1 694 30                        ; attention.py:694:30
	s_mul_i32 s41, s82, 6
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s37, v13, v13
	v_add3_u32 v10, v9, v10, 0x7fff
	v_cmp_o_f32_e64 s35, v16, v16
	v_cmp_o_f32_e64 s36, v15, v15
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v236, 46, v19
	v_add_nc_u32_e32 v237, 48, v19
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v17.l, 0x7fff, v10.h, s42
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v238, 50, v19
	v_add_nc_u32_e32 v239, 52, v19
	v_add_nc_u32_e32 v240, 54, v19
	v_add_nc_u32_e32 v241, 56, v19
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v10, v17, vcc_hi, 0xfedcba98 op_sel:[1,0]
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v242, 58, v19
	v_add_nc_u32_e32 v243, 60, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v9, v10, v17, v92
	v_perm_b32 v10, v10, v17, v93
	v_mov_b16_e32 v17.l, v12.h
	v_mov_b16_e32 v17.h, v21.l
	v_and_b32_e32 v17, 1, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v17, v12, v17, 0x7fff
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e32 v12.h, v21.l
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v12, v11, v12, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v17.l, 0x7fff, v12.h, s39
	v_permlanex16_b32 v12, v17, vcc_hi, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v11, v12, v17, v92
	v_perm_b32 v12, v12, v17, v93
	v_mov_b16_e32 v17.l, v14.h
	v_mov_b16_e32 v17.h, v21.l
	v_and_b32_e32 v17, 1, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v17, v14, v17, 0x7fff
	v_mov_b16_e32 v14.l, v13.h
	v_mov_b16_e32 v14.h, v21.l
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v14, 1, v14
	v_add3_u32 v14, v13, v14, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v17.l, 0x7fff, v14.h, s37
	v_permlanex16_b32 v14, v17, vcc_hi, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v13, v14, v17, v92
	v_perm_b32 v14, v14, v17, v93
	v_mov_b16_e32 v17.l, v16.h
	v_mov_b16_e32 v17.h, v21.l
	v_and_b32_e32 v17, 1, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v17, v16, v17, 0x7fff
	v_mov_b16_e32 v16.l, v15.h
	v_mov_b16_e32 v16.h, v21.l
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v16, 1, v16
	v_add3_u32 v16, v15, v16, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v17.l, 0x7fff, v16.h, s36
	v_permlanex16_b32 v16, v17, vcc_hi, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v15, v16, v17, v92
	v_perm_b32 v16, v16, v17, v93
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v17, 2, v19
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s40, s51, v17
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v17, 4, v19
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s40, s2, s40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s39, s51, v17
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_add_nc_u32_e32 v17, 6, v19
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s39, s2, s39
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s38, s51, v17
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_add_nc_u32_e32 v17, 8, v19
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s38, s2, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s37, s51, v17
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_add_nc_u32_e32 v17, 10, v19
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s37, s2, s37
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s36, s51, v17
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_add_nc_u32_e32 v17, 12, v19
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s36, s2, s36
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s35, s51, v17
	v_mad_u64_u32 v[17:18], null, s78, s82, v[58:59]
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	s_mov_b32 s78, s74
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s35
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v200, v17, s41, 1
	s_mul_i32 s41, s82, 10
	v_add_lshl_u32 v199, v17, s102, 1
	v_add_lshl_u32 v202, v17, s41, 1
	s_mul_i32 s41, s82, 12
	v_add_lshl_u32 v201, v17, s104, 1
	v_add_lshl_u32 v203, v17, s41, 1
	s_mul_i32 s41, s82, 14
	v_add_lshl_u32 v205, v17, s3, 1
	v_add_lshl_u32 v204, v17, s41, 1
	s_mul_i32 s41, s82, 18
	v_lshlrev_b32_e32 v18, 1, v17
	v_add_lshl_u32 v206, v17, s41, 1
	s_mul_i32 s41, s82, 20
	v_add_lshl_u32 v20, v17, s101, 1
	v_add_lshl_u32 v207, v17, s41, 1
	s_mul_i32 s41, s82, 22
	v_cndmask_b32_e64 v18, 0x80000000, v18, s48
	v_add_lshl_u32 v208, v17, s41, 1
	s_mul_i32 s41, s82, 24
	v_cndmask_b32_e64 v20, 0x80000000, v20, s40
	v_add_lshl_u32 v209, v17, s41, 1
	s_mul_i32 s41, s82, 26
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s40, s51, v229
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v210, v17, s41, 1
	s_mul_i32 s41, s82, 28
	v_add_lshl_u32 v213, v17, s97, 1
	v_add_lshl_u32 v211, v17, s41, 1
	s_mul_i32 s41, s82, 30
	v_add_lshl_u32 v222, v17, s89, 1
	v_add_lshl_u32 v212, v17, s41, 1
	s_mul_i32 s41, s82, 34
	v_add_lshl_u32 v223, v17, s90, 1
	v_add_lshl_u32 v214, v17, s41, 1
	s_mul_i32 s41, s82, 36
	v_add_lshl_u32 v224, v17, s91, 1
	v_add_lshl_u32 v215, v17, s41, 1
	s_mul_i32 s41, s82, 38
	v_add_lshl_u32 v225, v17, s93, 1
	v_add_lshl_u32 v216, v17, s41, 1
	s_mul_i32 s41, s82, 40
	v_add_lshl_u32 v226, v17, s94, 1
	v_add_lshl_u32 v217, v17, s41, 1
	s_mul_i32 s41, s82, 42
	v_add_lshl_u32 v227, v17, s95, 1
	v_add_lshl_u32 v218, v17, s41, 1
	s_mul_i32 s41, s82, 44
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v219, v17, s41, 1
	s_mul_i32 s41, s82, 46
	v_add_lshl_u32 v220, v17, s41, 1
	s_mul_i32 s41, s82, 48
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v221, v17, s41, 1
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s41, 0xff800000, v191
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v17, v17, s96, 1
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v191, 0, v228, s41
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v228, 30, v19
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v1, v1, v191
	v_mul_f32_e32 v2, v2, v191
	v_mul_f32_e32 v3, v3, v191
	v_mul_f32_e32 v4, v4, v191
	v_mul_f32_e32 v5, v5, v191
	v_mul_f32_e32 v6, v6, v191
	v_mul_f32_e32 v7, v7, v191
	v_mul_f32_e32 v8, v8, v191
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v191, 14, v19
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s48, s51, v228
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_gt_i32_e64 s41, s51, v191
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v191, 16, v19
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s42, s51, v191
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v191, 18, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s43, s51, v191
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v191, 20, v19
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s44, s51, v191
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v191, 22, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s45, s51, v191
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v191, 24, v19
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s46, s51, v191
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v191, 26, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s47, s51, v191
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v191, 28, v19
	v_add_nc_u32_e32 v19, 62, v19
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s49, s51, v191
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v191, 0x80000000, v199, s39
	v_cndmask_b32_e64 v199, 0x80000000, v200, s38
	v_cndmask_b32_e64 v200, 0x80000000, v201, s37
	v_cndmask_b32_e64 v201, 0x80000000, v202, s36
	v_cndmask_b32_e64 v202, 0x80000000, v203, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s41
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s39, s51, v230
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e64 v203, 0x80000000, v204, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s42
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s38, s51, v231
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e64 v204, 0x80000000, v205, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s43
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s37, s51, v232
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e64 v205, 0x80000000, v206, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s44
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s36, s51, v233
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e64 v206, 0x80000000, v207, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s45
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s41, s51, v234
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e64 v207, 0x80000000, v208, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s46
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s42, s51, v235
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e64 v208, 0x80000000, v209, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s47
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s43, s51, v236
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e64 v209, 0x80000000, v210, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s49
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s44, s51, v237
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e64 v210, 0x80000000, v211, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s48
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s45, s51, v238
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e64 v211, 0x80000000, v212, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s40
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s46, s51, v239
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e64 v212, 0x80000000, v213, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s39
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s39, s51, v19
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e64 v19, 0x80000000, v214, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s38
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s47, s51, v240
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e64 v213, 0x80000000, v215, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s37
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s49, s51, v241
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e64 v214, 0x80000000, v216, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s36
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s48, s51, v242
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e64 v215, 0x80000000, v217, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s41
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s40, s51, v243
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e64 v216, 0x80000000, v218, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s42
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v217, 0x80000000, v219, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s43
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v218, 0x80000000, v220, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s44
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v219, 0x80000000, v221, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s45
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v220, 0x80000000, v222, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s46
	.loc	1 694 30                        ; attention.py:694:30
	s_clause 0x17
	buffer_load_u16 v221, v18, s[76:79], 0 offen
	buffer_load_u16 v222, v20, s[76:79], 0 offen
	buffer_load_u16 v191, v191, s[76:79], 0 offen
	buffer_load_u16 v199, v199, s[76:79], 0 offen
	buffer_load_u16 v200, v200, s[76:79], 0 offen
	buffer_load_u16 v201, v201, s[76:79], 0 offen
	buffer_load_u16 v202, v202, s[76:79], 0 offen
	buffer_load_u16 v203, v203, s[76:79], 0 offen
	buffer_load_u16 v204, v204, s[76:79], 0 offen
	buffer_load_u16 v205, v205, s[76:79], 0 offen
	buffer_load_u16 v206, v206, s[76:79], 0 offen
	buffer_load_u16 v207, v207, s[76:79], 0 offen
	buffer_load_u16 v208, v208, s[76:79], 0 offen
	buffer_load_u16 v209, v209, s[76:79], 0 offen
	buffer_load_u16 v210, v210, s[76:79], 0 offen
	buffer_load_u16 v211, v211, s[76:79], 0 offen
	buffer_load_u16 v212, v212, s[76:79], 0 offen
	buffer_load_u16 v228, v19, s[76:79], 0 offen
	buffer_load_u16 v213, v213, s[76:79], 0 offen
	buffer_load_u16 v214, v214, s[76:79], 0 offen
	buffer_load_u16 v215, v215, s[76:79], 0 offen
	buffer_load_u16 v216, v216, s[76:79], 0 offen
	buffer_load_u16 v217, v217, s[76:79], 0 offen
	buffer_load_u16 v218, v218, s[76:79], 0 offen
	v_cndmask_b32_e64 v18, 0x80000000, v223, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s47
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v19, 0x80000000, v224, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s49
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v20, 0x80000000, v225, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s48
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v223, 0x80000000, v226, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s40
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v224, 0x80000000, v227, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s39
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s83, s84
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v17, 0x80000000, v17, s35
	s_clause 0x7
	buffer_load_u16 v219, v219, s[76:79], 0 offen
	buffer_load_u16 v220, v220, s[76:79], 0 offen
	buffer_load_u16 v225, v18, s[76:79], 0 offen
	buffer_load_u16 v226, v19, s[76:79], 0 offen
	buffer_load_u16 v227, v20, s[76:79], 0 offen
	buffer_load_u16 v223, v223, s[76:79], 0 offen
	buffer_load_u16 v224, v224, s[76:79], 0 offen
	buffer_load_u16 v229, v17, s[76:79], 0 offen
.Ltmp159:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	ds_load_b128 v[17:20], v153
.Ltmp160:
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v18.h, v21.l
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(31)
	ds_store_b16 v181, v221
	s_waitcnt vmcnt(30)
	ds_store_b16 v181, v222 offset:256
	s_waitcnt vmcnt(29)
	ds_store_b16 v181, v191 offset:512
	s_waitcnt vmcnt(28)
	ds_store_b16 v181, v199 offset:768
	s_waitcnt vmcnt(27)
	ds_store_b16 v181, v200 offset:1024
	s_waitcnt vmcnt(26)
	ds_store_b16 v181, v201 offset:1280
	s_waitcnt vmcnt(25)
	ds_store_b16 v181, v202 offset:1536
	s_waitcnt vmcnt(24)
	ds_store_b16 v181, v203 offset:1792
	s_waitcnt vmcnt(23)
	ds_store_b16 v181, v204 offset:2048
	s_waitcnt vmcnt(22)
	ds_store_b16 v181, v205 offset:2304
	s_waitcnt vmcnt(21)
	ds_store_b16 v181, v206 offset:2560
	s_waitcnt vmcnt(20)
	ds_store_b16 v181, v207 offset:2816
	s_waitcnt vmcnt(19)
	ds_store_b16 v181, v208 offset:3072
	s_waitcnt vmcnt(18)
	ds_store_b16 v181, v209 offset:3328
	s_waitcnt vmcnt(17)
	ds_store_b16 v181, v210 offset:3584
	s_waitcnt vmcnt(16)
	ds_store_b16 v181, v211 offset:3840
	s_waitcnt vmcnt(15)
	ds_store_b16 v181, v212 offset:4096
	s_waitcnt vmcnt(14)
	ds_store_b16 v181, v228 offset:4352
	s_waitcnt vmcnt(13)
	ds_store_b16 v181, v213 offset:4608
	s_waitcnt vmcnt(12)
	ds_store_b16 v181, v214 offset:4864
	s_waitcnt vmcnt(11)
	ds_store_b16 v181, v215 offset:5120
	s_waitcnt vmcnt(10)
	ds_store_b16 v181, v216 offset:5376
	s_waitcnt vmcnt(9)
	ds_store_b16 v181, v217 offset:5632
	s_waitcnt vmcnt(8)
	ds_store_b16 v181, v218 offset:5888
	s_waitcnt vmcnt(7)
	ds_store_b16 v181, v219 offset:6144
	s_waitcnt vmcnt(6)
	ds_store_b16 v181, v220 offset:6400
	s_waitcnt vmcnt(5)
	ds_store_b16 v181, v225 offset:6656
	s_waitcnt vmcnt(4)
	ds_store_b16 v181, v226 offset:6912
	s_waitcnt vmcnt(3)
	ds_store_b16 v181, v227 offset:7168
	s_waitcnt vmcnt(2)
	ds_store_b16 v181, v223 offset:7424
	s_waitcnt vmcnt(1)
	ds_store_b16 v181, v224 offset:7680
	s_waitcnt vmcnt(0)
	ds_store_b16 v181, v229 offset:7936
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v199, v91
	ds_load_u16_d16 v200, v91 offset:256
	ds_load_u16_d16 v201, v91 offset:512
	ds_load_u16_d16 v202, v91 offset:768
	ds_load_u16_d16 v203, v91 offset:1024
	ds_load_u16_d16 v204, v91 offset:1280
	ds_load_u16_d16 v205, v91 offset:1536
	ds_load_u16_d16 v206, v91 offset:1792
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v199, v91 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v200, v91 offset:384
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v201, v91 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v202, v91 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v203, v91 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v204, v91 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v205, v91 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v206, v91 offset:1920
	v_mov_b32_e32 v191, v198
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[199:206], v[9:16], v[1:8]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v9, v196, v198
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v10.h, v21.l
	v_mov_b16_e32 v11.h, v21.l
	v_mov_b16_e32 v12.h, v21.l
	v_mov_b16_e32 v13.h, v21.l
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v9, v9
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v14.h, v21.l
	v_mov_b16_e32 v15.h, v21.l
	v_mov_b16_e32 v16.h, v21.l
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v199, v91 offset:2048
	ds_load_u16_d16 v200, v91 offset:2304
	ds_load_u16_d16 v201, v91 offset:2560
	ds_load_u16_d16 v202, v91 offset:2816
	ds_load_u16_d16 v203, v91 offset:3072
	ds_load_u16_d16 v204, v91 offset:3328
	ds_load_u16_d16 v205, v91 offset:3584
	ds_load_u16_d16 v206, v91 offset:3840
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v199, v91 offset:2176
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v200, v91 offset:2432
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v201, v91 offset:2688
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v202, v91 offset:2944
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v203, v91 offset:3200
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v204, v91 offset:3456
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v205, v91 offset:3712
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v206, v91 offset:3968
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v9, 0, v9, s31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v10.l, v9.h
	v_cmp_o_f32_e64 s31, v9, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v10, 1, v10
	v_add3_u32 v10, v9, v10, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v9, v195, v198
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s31
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v9, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v9, 0, v9, s16
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v11.l, v9.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s16, v9, v9
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v11, v9, v11, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v11.h, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v11, v10, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v9, v11, v10, v92
	v_perm_b32 v10, v11, v10, v93
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v11, v194, v198
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v11, v11
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v11, 0, v11, s27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v12.l, v11.h
	v_cmp_o_f32_e64 s16, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v11, v193, v198
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s16
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v11, 0, v11, s23
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v13.l, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s23, v11, v11
	v_and_b32_e32 v13, 1, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v13, v11, v13, 0x7fff
	v_cndmask_b16 v12.l, 0x7fff, v13.h, s23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v13, v12, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v11, v13, v12, v92
	v_perm_b32 v12, v13, v12, v93
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v13, v192, v198
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v13, v13
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v13, 0, v13, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v14.l, v13.h
	v_cmp_o_f32_e64 s16, v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v14, 1, v14
	v_add3_u32 v14, v13, v14, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v13, v40, v198
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s16
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v13, 0, v13, s15
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v15.l, v13.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s15, v13, v13
	v_and_b32_e32 v15, 1, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v15, v13, v15, 0x7fff
	v_cndmask_b16 v14.l, 0x7fff, v15.h, s15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v15, v14, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v13, v15, v14, v92
	v_perm_b32 v14, v15, v14, v93
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v15, v39, v198
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v15, v15
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v15, 0, v15, s12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v16.l, v15.h
	v_cmp_o_f32_e64 s12, v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v16, 1, v16
	v_add3_u32 v16, v15, v16, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v15, v38, v198
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s12
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e32 v15, 0, v15, vcc_lo
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v18.l, v15.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	v_and_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v18, v15, v18, 0x7fff
	v_cndmask_b16 v16.l, 0x7fff, v18.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v18, v16, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v15, v18, v16, v92
	v_perm_b32 v16, v18, v16, v93
	v_mov_b16_e32 v18.h, v21.l
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[199:206], v[9:16], v[1:8]
	.loc	1 690 62 is_stmt 1              ; attention.py:690:62
	v_sub_f32_e32 v9, v37, v198
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v10.h, v21.l
	v_mov_b16_e32 v11.h, v21.l
	v_mov_b16_e32 v12.h, v21.l
	v_mov_b16_e32 v13.h, v21.l
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v9, v9
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v14.h, v21.l
	v_mov_b16_e32 v15.h, v21.l
	v_mov_b16_e32 v16.h, v21.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v9, 0, v9, s28
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v10.l, v9.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_and_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v10, v9, v10, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v9, v26, v198
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v10.h, 0x7fff, v10.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v9, v9
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v9, 0, v9, s25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v11.l, v9.h
	v_cmp_o_f32_e64 s12, v9, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v11, v9, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v10.l, 0x7fff, v11.h, s12
	v_permlanex16_b32 v11, v10, vcc_hi, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v9, v11, v10, v92
	v_perm_b32 v10, v11, v10, v93
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v11, v36, v198
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v11, 0, v11, s24
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v12.l, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v11, v35, v198
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v12.h, 0x7fff, v12.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v11, v11
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v11, 0, v11, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v13.l, v11.h
	v_cmp_o_f32_e64 s12, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v13, v11, v13, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v12.l, 0x7fff, v13.h, s12
	v_permlanex16_b32 v13, v12, vcc_hi, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v11, v13, v12, v92
	v_perm_b32 v12, v13, v12, v93
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v13, v34, v198
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v13, 0, v13, s20
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v14.l, v13.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	v_and_b32_e32 v14, 1, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v14, v13, v14, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v13, v33, v198
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v14.h, 0x7fff, v14.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v13, v13
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v13, 0, v13, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v15.l, v13.h
	v_cmp_o_f32_e64 s12, v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v15, 1, v15
	v_add3_u32 v15, v13, v15, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v14.l, 0x7fff, v15.h, s12
	v_permlanex16_b32 v15, v14, vcc_hi, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v13, v15, v14, v92
	v_perm_b32 v14, v15, v14, v93
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v15, v32, v198
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v15, 0, v15, s34
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v16.l, v15.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	v_and_b32_e32 v16, 1, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v16, v15, v16, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v15, v31, v198
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v31, v91 offset:4096
	ds_load_u16_d16 v32, v91 offset:4352
	ds_load_u16_d16 v33, v91 offset:4608
	ds_load_u16_d16 v34, v91 offset:4864
	ds_load_u16_d16 v35, v91 offset:5120
	ds_load_u16_d16 v36, v91 offset:5376
	ds_load_u16_d16 v37, v91 offset:5632
	ds_load_u16_d16 v38, v91 offset:5888
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v31, v91 offset:4224
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v32, v91 offset:4480
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v33, v91 offset:4736
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v34, v91 offset:4992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v35, v91 offset:5248
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v36, v91 offset:5504
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v37, v91 offset:5760
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v38, v91 offset:6016
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v15, v15
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v16.h, 0x7fff, v16.h, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v15, 0, v15, s33
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v18.l, v15.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s12, v15, v15
	v_and_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v18, v15, v18, 0x7fff
	v_cndmask_b16 v16.l, 0x7fff, v18.h, s12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v18, v16, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v15, v18, v16, v92
	v_perm_b32 v16, v18, v16, v93
	v_mov_b16_e32 v18.h, v21.l
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[31:38], v[9:16], v[1:8]
	.loc	1 690 62 is_stmt 1              ; attention.py:690:62
	v_sub_f32_e32 v9, v29, v198
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v10.h, v21.l
	v_mov_b16_e32 v11.h, v21.l
	v_mov_b16_e32 v12.h, v21.l
	v_mov_b16_e32 v13.h, v21.l
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v9, v9
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v14.h, v21.l
	v_mov_b16_e32 v15.h, v21.l
	v_mov_b16_e32 v16.h, v21.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v9, 0, v9, s22
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v10.l, v9.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_and_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v10, v9, v10, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v9, v27, v198
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v10.h, 0x7fff, v10.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v9, v9
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v9, 0, v9, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v11.l, v9.h
	v_cmp_o_f32_e64 s12, v9, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v11, v9, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v10.l, 0x7fff, v11.h, s12
	v_permlanex16_b32 v11, v10, vcc_hi, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v9, v11, v10, v92
	v_perm_b32 v10, v11, v10, v93
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v11, v25, v198
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v11, 0, v11, s17
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v12.l, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v11, v24, v198
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v12.h, 0x7fff, v12.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v11, v11
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v11, 0, v11, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v13.l, v11.h
	v_cmp_o_f32_e64 s12, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v13, v11, v13, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v12.l, 0x7fff, v13.h, s12
	v_permlanex16_b32 v13, v12, vcc_hi, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v11, v13, v12, v92
	v_perm_b32 v12, v13, v12, v93
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v13, v28, v198
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v13, 0, v13, s30
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v14.l, v13.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	v_and_b32_e32 v14, 1, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v14, v13, v14, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v13, v22, v198
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v14.h, 0x7fff, v14.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v13, v13
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v13, 0, v13, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v15.l, v13.h
	v_cmp_o_f32_e64 s11, v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v15, 1, v15
	v_add3_u32 v15, v13, v15, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v14.l, 0x7fff, v15.h, s11
	v_permlanex16_b32 v15, v14, vcc_hi, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v13, v15, v14, v92
	v_perm_b32 v14, v15, v14, v93
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v15, v30, v198
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v15, 0, v15, s29
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v16.l, v15.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	v_and_b32_e32 v16, 1, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v16, v15, v16, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v15, v23, v198
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v16.h, 0x7fff, v16.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v15, v15
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v190
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v15, 0, v15, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v18.l, v15.h
	v_cmp_o_f32_e64 s11, v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v18, 1, v18
	v_add3_u32 v18, v15, v18, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v16.l, 0x7fff, v18.h, s11
	v_permlanex16_b32 v18, v16, vcc_hi, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v15, v18, v16, v92
	v_perm_b32 v16, v18, v16, v93
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v18, v91 offset:6144
	ds_load_u16_d16 v19, v91 offset:6400
	ds_load_u16_d16 v20, v91 offset:6656
	ds_load_u16_d16 v21, v91 offset:6912
	ds_load_u16_d16 v22, v91 offset:7168
	ds_load_u16_d16 v23, v91 offset:7424
	ds_load_u16_d16 v24, v91 offset:7680
	ds_load_u16_d16 v25, v91 offset:7936
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v18, v91 offset:6272
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v19, v91 offset:6528
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v20, v91 offset:6784
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v21, v91 offset:7040
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v22, v91 offset:7296
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v23, v91 offset:7552
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v24, v91 offset:7808
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v25, v91 offset:8064
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[18:25], v[9:16], v[1:8]
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v10, v190, v190 :: v_dual_mov_b32 v9, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v10, v10, v197
.Ltmp161:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp162:
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v11, v190, v10
.Ltmp163:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v9, v17, v9 :: v_dual_mov_b32 v190, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp164:
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v11, v11
	.loc	1 689 25 is_stmt 0              ; attention.py:689:25
	v_cndmask_b32_e32 v11, 0, v11, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fmac_f32_e32 v9, v189, v11
	v_mov_b32_e32 v189, v9
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc0 .LBB0_12
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v9, s83, v60
	.loc	1 633 32                        ; attention.py:633:32
	s_add_i32 s78, s83, s86
	s_mul_i32 s27, s81, 20
	s_mul_i32 s26, s78, s81
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v199, s59 :: v_dual_add_nc_u32 v22, s26, v62
	v_dual_mov_b32 v198, s58 :: v_dual_add_nc_u32 v23, s26, v63
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v10, 4, v9
	.loc	1 633 32                        ; attention.py:633:32
	v_add_nc_u32_e32 v24, s26, v44
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v13, 16, v9
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v197, s57 :: v_dual_add_nc_u32 v16, 28, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e32 vcc_lo, s51, v10
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v10, 32, v9
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s13, s51, v13
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v196, s56 :: v_dual_add_nc_u32 v13, 44, v9
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 634 32                        ; attention.py:634:32
	v_dual_cndmask_b32 v22, 0x80000000, v22 :: v_dual_add_nc_u32 v11, 8, v9
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s17, s51, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s20, s51, v13
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v10, 52, v9
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s11, s51, v11
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v11, 36, v9
	.loc	1 633 32                        ; attention.py:633:32
	v_add_nc_u32_e32 v13, s26, v43
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s24, s51, v9
	v_cmp_gt_i32_e64 s22, s51, v10
	.loc	1 636 30 is_stmt 0              ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s11
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s18, s51, v11
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_add_nc_u32_e32 v11, 56, v9
	v_add_nc_u32_e32 v10, s27, v13
	s_mul_i32 s27, s81, 24
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v192, s52 :: v_dual_mov_b32 v195, s55
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s23, s51, v11
	v_add_nc_u32_e32 v11, s27, v13
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v12, 12, v9
	v_add_nc_u32_e32 v15, 24, v9
	s_mul_i32 s27, s81, 28
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s16, s51, v16
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s12, s51, v12
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v12, 40, v9
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s15, s51, v15
	.loc	1 636 30 is_stmt 0              ; attention.py:636:30
	s_and_b32 s24, s4, s24
	.loc	1 649 37 is_stmt 1              ; attention.py:649:37
	s_mov_b32 s70, s74
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s12
	.loc	1 636 73 is_stmt 0              ; attention.py:636:73
	v_cmp_gt_i32_e64 s19, s51, v12
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_add_nc_u32_e32 v12, 60, v9
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s13
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v194, s54 :: v_dual_mov_b32 v193, s53
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s25, s51, v12
	v_add_nc_u32_e32 v12, s27, v13
	s_mul_i32 s27, s81, 36
	.loc	1 649 37                        ; attention.py:649:37
	s_mov_b32 s71, s75
	v_add_nc_u32_e32 v15, s27, v13
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v14, 20, v9
	s_mul_i32 s27, s81, 40
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v16, s27, v13
	s_mul_i32 s27, s81, 44
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s14, s51, v14
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v14, 48, v9
	v_add_nc_u32_e32 v9, s88, v13
	v_add_nc_u32_e32 v17, s27, v13
	s_mul_i32 s27, s81, 48
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v18, s27, v13
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s14
	.loc	1 636 73 is_stmt 0              ; attention.py:636:73
	v_cmp_gt_i32_e64 s21, s51, v14
	.loc	1 634 32 is_stmt 1              ; attention.py:634:32
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s15
	v_add_nc_u32_e32 v14, s92, v13
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s16
	s_mul_i32 s27, s81, 52
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s17
	v_add_nc_u32_e32 v19, s27, v13
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s18
	s_mul_i32 s27, s81, 56
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s19
	v_add_nc_u32_e32 v20, s27, v13
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s21
	s_mul_i32 s27, s81, 60
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s22
	v_add_nc_u32_e32 v21, s27, v13
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s23
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e64 v13, 0x80000000, v13, s24
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s20
	.loc	1 634 32                        ; attention.py:634:32
	s_clause 0x5
	buffer_load_u8 v13, v13, s[72:75], 0 offen
	buffer_load_u8 v22, v22, s[72:75], 0 offen
	buffer_load_u8 v23, v23, s[72:75], 0 offen
	buffer_load_u8 v9, v9, s[72:75], 0 offen
	buffer_load_u8 v10, v10, s[72:75], 0 offen
	buffer_load_u8 v11, v11, s[72:75], 0 offen
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s25
	.loc	1 634 32                        ; attention.py:634:32
	s_clause 0x3
	buffer_load_u8 v14, v14, s[72:75], 0 offen
	buffer_load_u8 v18, v18, s[72:75], 0 offen
	buffer_load_u8 v15, v15, s[72:75], 0 offen
	buffer_load_u8 v19, v19, s[72:75], 0 offen
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	s_clause 0x5
	buffer_load_u8 v16, v16, s[72:75], 0 offen
	buffer_load_u8 v20, v20, s[72:75], 0 offen
	buffer_load_u8 v12, v12, s[72:75], 0 offen
	buffer_load_u8 v24, v24, s[72:75], 0 offen
	buffer_load_u8 v21, v21, s[72:75], 0 offen
	buffer_load_u8 v17, v17, s[72:75], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b8 v65, v13
	s_waitcnt vmcnt(12)
	ds_store_b8 v65, v9 offset:512
	s_waitcnt vmcnt(9)
	ds_store_b8 v65, v14 offset:1024
	s_waitcnt vmcnt(8)
	ds_store_b8 v65, v18 offset:1536
	ds_store_b8 v66, v22
	ds_store_b8 v66, v10 offset:512
	s_waitcnt vmcnt(7)
	ds_store_b8 v66, v15 offset:1024
	s_waitcnt vmcnt(6)
	ds_store_b8 v66, v19 offset:1536
	ds_store_b8 v67, v23
	ds_store_b8 v67, v11 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v67, v16 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v67, v20 offset:1536
	s_waitcnt vmcnt(2)
	ds_store_b8 v68, v24
	ds_store_b8 v68, v12 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v68, v17 offset:1024
	ds_store_b8 v68, v21 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[9:12], v69 offset1:1
	ds_load_2addr_stride64_b64 v[200:203], v69 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[9:10], v[45:46], v[192:199] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[11:12], v[45:46], v[192:199] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[200:201], v[45:46], v[192:199] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[202:203], v[45:46], v[192:199] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[192:195], v70 offset1:1
	ds_load_2addr_stride64_b64 v[196:199], v70 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[192:193], v[47:48], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[194:195], v[47:48], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[196:197], v[47:48], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[198:199], v[47:48], v[33:40] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[192:195], v71 offset1:1
	ds_load_2addr_stride64_b64 v[196:199], v71 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[192:193], v[49:50], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[194:195], v[49:50], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[196:197], v[49:50], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[198:199], v[49:50], v[33:40] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[192:195], v72 offset1:1
	ds_load_2addr_stride64_b64 v[196:199], v72 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[192:193], v[51:52], v[25:32] neg_lo:[1,1,0]
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v192, s83, v154
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[17:24], v[194:195], v[51:52], v[17:24] neg_lo:[1,1,0]
	.loc	1 650 25                        ; attention.py:650:25
	v_add_lshl_u32 v193, s78, v154, 1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[196:197], v[51:52], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[198:199], v[51:52], v[33:40] neg_lo:[1,1,0]
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v194, 2, v192
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s41, s51, v192
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v195, 4, v193
	v_add_nc_u32_e32 v196, 8, v193
	v_add_nc_u32_e32 v197, 12, v193
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e32 vcc_lo, s51, v194
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v194, 4, v192
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v198, 16, v193
	v_add_nc_u32_e32 v199, 20, v193
	v_add_nc_u32_e32 v200, 24, v193
	v_add_nc_u32_e32 v201, 28, v193
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s11, s51, v194
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v194, 6, v192
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v202, 32, v193
	v_add_nc_u32_e32 v203, 36, v193
	v_add_nc_u32_e32 v204, 40, v193
	v_add_nc_u32_e32 v205, 44, v193
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s12, s51, v194
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v194, 8, v192
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v206, 48, v193
	v_add_nc_u32_e32 v207, 52, v193
	v_add_nc_u32_e32 v208, 56, v193
	v_add_nc_u32_e32 v209, 60, v193
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s13, s51, v194
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v194, 10, v192
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v210, 64, v193
	v_add_nc_u32_e32 v211, 0x44, v193
	v_add_nc_u32_e32 v212, 0x48, v193
	v_add_nc_u32_e32 v213, 0x4c, v193
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s14, s51, v194
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v194, 12, v192
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v214, 0x50, v193
	v_add_nc_u32_e32 v215, 0x54, v193
	v_add_nc_u32_e32 v216, 0x58, v193
	v_add_nc_u32_e32 v217, 0x5c, v193
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s15, s51, v194
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v194, 14, v192
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v218, 0x60, v193
	v_add_nc_u32_e32 v219, 0x64, v193
	v_add_nc_u32_e32 v220, 0x68, v193
	v_add_nc_u32_e32 v221, 0x6c, v193
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s16, s51, v194
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v194, 16, v192
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v222, 0x70, v193
	v_add_nc_u32_e32 v223, 0x74, v193
	v_add_nc_u32_e32 v224, 0x78, v193
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s17, s51, v194
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v194, 18, v192
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s18, s51, v194
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v194, 20, v192
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s19, s51, v194
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v194, 22, v192
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s20, s51, v194
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v194, 24, v192
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s21, s51, v194
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v194, 26, v192
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v206, 0x80000000, v206, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s22, s51, v194
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v194, 28, v192
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v207, 0x80000000, v207, s22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s23, s51, v194
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v194, 30, v192
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v225, 0x80000000, v208, s23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s24, s51, v194
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v194, 32, v192
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v226, 0x80000000, v209, s24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s25, s51, v194
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v194, 34, v192
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v227, 0x80000000, v210, s25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s26, s51, v194
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v194, 36, v192
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v228, 0x80000000, v211, s26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s27, s51, v194
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v194, 38, v192
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v229, 0x80000000, v212, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s28, s51, v194
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v194, 40, v192
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v230, 0x80000000, v213, s28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s29, s51, v194
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v194, 42, v192
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v231, 0x80000000, v214, s29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s30, s51, v194
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v194, 44, v192
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v232, 0x80000000, v215, s30
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s31, s51, v194
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v194, 46, v192
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v233, 0x80000000, v216, s31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s33, s51, v194
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v194, 48, v192
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v234, 0x80000000, v217, s33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s34, s51, v194
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v194, 50, v192
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v235, 0x80000000, v218, s34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s35, s51, v194
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v194, 52, v192
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v236, 0x80000000, v219, s35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s36, s51, v194
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v194, 54, v192
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v237, 0x80000000, v220, s36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s37, s51, v194
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v194, 56, v192
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v238, 0x80000000, v221, s37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s38, s51, v194
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v194, 58, v192
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v239, 0x80000000, v222, s38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s39, s51, v194
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v194, 60, v192
	v_add_nc_u32_e32 v192, 62, v192
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v240, 0x80000000, v223, s39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s40, s51, v194
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v194, 0x7c, v193
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s42, s51, v192
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v192, 0x80000000, v193, s41
	v_cndmask_b32_e32 v193, 0x80000000, v195, vcc_lo
	v_cndmask_b32_e64 v195, 0x80000000, v196, s11
	v_cndmask_b32_e64 v196, 0x80000000, v197, s12
	v_cndmask_b32_e64 v197, 0x80000000, v198, s13
	v_cndmask_b32_e64 v198, 0x80000000, v199, s14
	v_cndmask_b32_e64 v199, 0x80000000, v200, s15
	v_cndmask_b32_e64 v200, 0x80000000, v201, s16
	v_cndmask_b32_e64 v201, 0x80000000, v202, s17
	v_cndmask_b32_e64 v202, 0x80000000, v203, s18
	v_cndmask_b32_e64 v203, 0x80000000, v204, s19
	v_cndmask_b32_e64 v204, 0x80000000, v205, s20
	v_cndmask_b32_e64 v224, 0x80000000, v224, s40
	v_cndmask_b32_e64 v241, 0x80000000, v194, s42
	s_clause 0x1f
	buffer_load_u16 v212, v192, s[68:71], 0 offen
	buffer_load_u16 v214, v193, s[68:71], 0 offen
	buffer_load_u16 v216, v195, s[68:71], 0 offen
	buffer_load_u16 v218, v196, s[68:71], 0 offen
	buffer_load_u16 v219, v197, s[68:71], 0 offen
	buffer_load_u16 v220, v198, s[68:71], 0 offen
	buffer_load_u16 v221, v199, s[68:71], 0 offen
	buffer_load_u16 v222, v200, s[68:71], 0 offen
	buffer_load_u16 v223, v201, s[68:71], 0 offen
	buffer_load_u16 v205, v202, s[68:71], 0 offen
	buffer_load_u16 v208, v203, s[68:71], 0 offen
	buffer_load_u16 v209, v204, s[68:71], 0 offen
	buffer_load_u16 v210, v206, s[68:71], 0 offen
	buffer_load_u16 v211, v207, s[68:71], 0 offen
	buffer_load_u16 v213, v225, s[68:71], 0 offen
	buffer_load_u16 v215, v226, s[68:71], 0 offen
	buffer_load_u16 v217, v227, s[68:71], 0 offen
	buffer_load_u16 v207, v228, s[68:71], 0 offen
	buffer_load_u16 v206, v229, s[68:71], 0 offen
	buffer_load_u16 v204, v230, s[68:71], 0 offen
	buffer_load_u16 v203, v231, s[68:71], 0 offen
	buffer_load_u16 v202, v232, s[68:71], 0 offen
	buffer_load_u16 v201, v233, s[68:71], 0 offen
	buffer_load_u16 v200, v234, s[68:71], 0 offen
	buffer_load_u16 v199, v235, s[68:71], 0 offen
	buffer_load_u16 v198, v236, s[68:71], 0 offen
	buffer_load_u16 v197, v237, s[68:71], 0 offen
	buffer_load_u16 v196, v238, s[68:71], 0 offen
	buffer_load_u16 v195, v239, s[68:71], 0 offen
	buffer_load_u16 v194, v240, s[68:71], 0 offen
	buffer_load_u16 v193, v224, s[68:71], 0 offen
	buffer_load_u16 v192, v241, s[68:71], 0 offen
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v224, s83, v42
	.loc	1 667 17                        ; attention.py:667:17
	v_cmp_ne_u32_e32 vcc_lo, 1, v74
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s11, s51, v224
	.loc	1 667 17                        ; attention.py:667:17
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s34, s0, s11
	s_and_b32 s33, s1, s11
	s_and_b32 s31, s5, s11
	s_and_b32 s30, s6, s11
	s_and_b32 s29, s7, s11
	s_and_b32 s28, s8, s11
	s_and_b32 s27, s9, s11
	s_and_b32 s26, s10, s11
	.loc	1 667 17                        ; attention.py:667:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e32 vcc_lo, v224, v76
	v_cmp_le_i32_e64 s11, v224, v77
	v_cmp_le_i32_e64 s12, v224, v78
	v_cmp_le_i32_e64 s13, v224, v79
	v_cmp_le_i32_e64 s14, v224, v80
	v_cmp_le_i32_e64 s15, v224, v81
	.loc	1 668 21 is_stmt 0              ; attention.py:668:21
	s_and_b32 s18, vcc_lo, s34
	s_and_b32 s11, s11, s33
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s16, v224, v82
	v_cmp_le_i32_e64 s17, v224, v83
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s12, s12, s31
	s_and_b32 s13, s13, s30
	s_and_not1_b32 s19, s34, exec_lo
	s_and_b32 s18, s18, exec_lo
	s_and_not1_b32 s20, s33, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_b32 s14, s14, s29
	s_and_b32 s15, s15, s28
	s_or_b32 s34, s19, s18
	s_or_b32 s33, s20, s11
	s_and_not1_b32 s11, s31, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s18, s30, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s27
	s_and_b32 s17, s17, s26
	s_or_b32 s31, s11, s12
	s_or_b32 s30, s18, s13
	s_and_not1_b32 s11, s29, exec_lo
	s_and_b32 s12, s14, exec_lo
	s_and_not1_b32 s13, s28, exec_lo
	s_and_b32 s14, s15, exec_lo
	s_or_b32 s29, s11, s12
	s_or_b32 s28, s13, s14
	s_and_not1_b32 s11, s27, exec_lo
	s_and_b32 s12, s16, exec_lo
	s_and_not1_b32 s13, s26, exec_lo
	s_and_b32 s14, s17, exec_lo
	s_or_b32 s27, s11, s12
	s_or_b32 s26, s13, s14
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 669 17 is_stmt 1              ; attention.py:669:17
	s_and_not1_b32 vcc_lo, exec_lo, s80
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e32 vcc_lo, v224, v155
	v_cmp_ge_i32_e64 s11, v224, v156
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s18, v224, v163
	v_cmp_le_i32_e64 s19, v224, v164
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s12, v224, v157
	v_cmp_ge_i32_e64 s13, v224, v158
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s20, v224, v165
	v_cmp_le_i32_e64 s21, v224, v166
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s14, v224, v159
	v_cmp_ge_i32_e64 s15, v224, v160
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s22, v224, v167
	v_cmp_le_i32_e64 s23, v224, v168
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s18, vcc_lo, s18
	s_and_b32 s11, s11, s19
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s16, v224, v161
	v_cmp_ge_i32_e64 s17, v224, v162
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s24, v224, v169
	v_cmp_le_i32_e64 s25, v224, v170
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s18, s18, s34
	s_and_b32 s11, s11, s33
	s_and_b32 s12, s12, s20
	s_and_b32 s13, s13, s21
	s_and_b32 s12, s12, s31
	s_and_b32 s13, s13, s30
	s_and_b32 s14, s14, s22
	s_and_b32 s15, s15, s23
	s_and_not1_b32 s19, s34, exec_lo
	s_and_b32 s18, s18, exec_lo
	s_and_not1_b32 s20, s33, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_b32 s14, s14, s29
	s_and_b32 s15, s15, s28
	s_and_b32 s16, s16, s24
	s_and_b32 s17, s17, s25
	s_or_b32 s34, s19, s18
	s_or_b32 s33, s20, s11
	s_and_not1_b32 s11, s31, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s18, s30, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s27
	s_and_b32 s17, s17, s26
	s_or_b32 s31, s11, s12
	s_or_b32 s30, s18, s13
	s_and_not1_b32 s11, s29, exec_lo
	s_and_b32 s12, s14, exec_lo
	s_and_not1_b32 s13, s28, exec_lo
	s_and_b32 s14, s15, exec_lo
	s_or_b32 s29, s11, s12
	s_or_b32 s28, s13, s14
	s_and_not1_b32 s11, s27, exec_lo
	s_and_b32 s12, s16, exec_lo
	s_and_not1_b32 s13, s26, exec_lo
	s_and_b32 s14, s17, exec_lo
	s_or_b32 s27, s11, s12
	s_or_b32 s26, s13, s14
	s_branch .LBB0_6
.LBB0_11:
	.loc	1 0 21                          ; attention.py:0:21
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v10, 0xff800000 :: v_dual_mov_b32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v11, v8
	s_branch .LBB0_13
.LBB0_12:                               ; %._crit_edge.loopexit
.Ltmp165:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_add_f32 v11, 0, v9
	v_readlane_b32 s16, v244, 0
	v_readlane_b32 s26, v244, 5
	v_readlane_b32 s27, v244, 6
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v10, 0xff800000, v10
	v_readlane_b32 s28, v244, 4
	v_readlane_b32 s17, v244, 1
	v_readlane_b32 s18, v244, 2
	v_readlane_b32 s19, v244, 3
.Ltmp166:
.LBB0_13:                               ; %._crit_edge
	.loc	1 830 26                        ; attention.py:830:26
	v_cmp_eq_u32_e64 s0, 0, v64
.Ltmp167:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_lshrrev_b32_e32 v12, 4, v73
.Ltmp168:
	.loc	1 825 26                        ; attention.py:825:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v73
.Ltmp169:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_and_b32_e32 v9, 1, v0
	s_waitcnt lgkmcnt(0)
.Ltmp170:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e64 v1, 0, v1, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 825 17                        ; attention.py:825:17
	v_cndmask_b32_e32 v10, 0xff800000, v10, vcc_lo
	.loc	1 828 36                        ; attention.py:828:36
	v_dual_cndmask_b32 v11, 0, v11 :: v_dual_add_nc_u32 v12, 0, v12
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp171:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v14, v1 :: v_dual_mov_b32 v15, v2
.Ltmp172:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_lshl_add_u32 v13, v9, 2, 0
	s_barrier
	ds_store_b32 v12, v10
.Ltmp173:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v16, v3
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp174:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp175:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v1, v1, v14
.Ltmp176:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp177:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	ds_load_b32 v10, v13
.Ltmp178:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v12, v11
.Ltmp179:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v2, v2, v15 :: v_dual_add_f32 v3, v3, v16
.Ltmp180:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v12, v1
.Ltmp181:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v11, v13
.Ltmp182:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v13, v2
	v_mov_b32_dpp v12, v12 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v14, v3
.Ltmp183:
	.loc	1 830 17 is_stmt 1              ; attention.py:830:17
	v_cndmask_b32_e64 v17, 0, v4, s0
	v_cndmask_b32_e64 v18, 0, v5, s0
.Ltmp184:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp185:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v1, v1, v12
.Ltmp186:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp187:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
.Ltmp188:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v2, v2, v13
.Ltmp189:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v13, v10
.Ltmp190:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v3, v3, v14 :: v_dual_mov_b32 v14, v1
.Ltmp191:
	.loc	1 822 31                        ; attention.py:822:31
	s_mul_i32 s1, s28, s27
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp192:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v15, v2
.Ltmp193:
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s82, s82, 2
	.loc	1 822 31                        ; attention.py:822:31
	s_add_i32 s1, s26, s1
.Ltmp194:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v16, v3
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp195:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v12, v11
.Ltmp196:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v20, v7 :: v_dual_add_f32 v1, v1, v14
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp197:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v2, v2, v15
.Ltmp198:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e64 v14, 0, v6, s0
.Ltmp199:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v15, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v21, v8 :: v_dual_add_f32 v4, v3, v16
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v5, v2
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v16, v18
	v_dual_mov_b32 v6, v4 :: v_dual_mov_b32 v19, v14
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp200:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v15, v17, v15
.Ltmp201:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp202:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v7, v7, v20 :: v_dual_add_f32 v8, v8, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v16, v18, v16 :: v_dual_mov_b32 v17, v15
	v_add_f32_e32 v14, v14, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp203:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v20, v7 :: v_dual_mov_b32 v21, v8
	v_mov_b32_e32 v18, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp204:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v15, v15, v17
.Ltmp205:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp206:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp207:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp208:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v16, v16, v18 :: v_dual_mov_b32 v17, v15
	v_add_f32_e32 v14, v14, v19
	v_dual_add_f32 v18, v7, v20 :: v_dual_add_f32 v19, v8, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp209:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v7, v16
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v20, v14
	v_dual_mov_b32 v21, v18 :: v_dual_mov_b32 v22, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp210:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v8, v15, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp211:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp212:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v7, v16, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp213:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v15, v8 :: v_dual_add_f32 v16, v14, v20
.Ltmp214:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v18, v18, v21 :: v_dual_add_f32 v19, v19, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp215:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v14, v7
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v17, v16 :: v_dual_mov_b32 v20, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v21, v19
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v15, v15 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp216:
	.loc	1 833 13                        ; attention.py:833:13
	v_or_b32_e32 v22, v60, v41
.Ltmp217:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp218:
	.loc	1 822 30                        ; attention.py:822:30
	s_mul_i32 s4, s1, s82
	.loc	1 833 13                        ; attention.py:833:13
	s_mov_b32 s1, exec_lo
	v_cmpx_eq_u32_e32 0, v22
	s_cbranch_execz .LBB0_15
; %bb.14:
.Ltmp219:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v10, v10, v10
.Ltmp220:
	.loc	1 833 13                        ; attention.py:833:13
	s_ashr_i32 s5, s4, 31
.Ltmp221:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v11, v11, v12
.Ltmp222:
	.loc	1 833 13                        ; attention.py:833:13
	s_lshl_b64 s[6:7], s[4:5], 2
	v_mov_b32_e32 v12, 0
.Ltmp223:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v10, v10, v13
.Ltmp224:
	.loc	1 833 13                        ; attention.py:833:13
	s_add_u32 s6, s16, s6
	s_addc_u32 s7, s17, s7
	.loc	1 834 13                        ; attention.py:834:13
	global_store_b64 v12, v[10:11], s[6:7]
.LBB0_15:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 835 13 is_stmt 1              ; attention.py:835:13
	v_lshlrev_b32_e32 v0, 2, v0
.Ltmp225:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v10, v16, v17
	v_dual_add_f32 v17, v4, v6 :: v_dual_add_f32 v12, v19, v21
	v_add_f32_e32 v11, v18, v20
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp226:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v0, 0xc0, v0
.Ltmp227:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v18, v8, v15
	v_add_f32_e32 v16, v2, v5
	v_dual_add_f32 v15, v1, v3 :: v_dual_and_b32 v2, 0xe0, v61
.Ltmp228:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v1, 28, v61
	v_lshlrev_b32_e32 v3, 5, v9
	s_and_b32 vcc_lo, vcc_lo, s2
	v_add_nc_u32_e32 v0, 0, v0
	v_add_nc_u32_e32 v2, 0, v2
.Ltmp229:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v9, v7, v14
.Ltmp230:
	.loc	1 835 13                        ; attention.py:835:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v0, v0, v3, v1
	ds_store_b128 v2, v[15:18]
	ds_store_b128 v2, v[9:12] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 836 17                        ; attention.py:836:17
	v_add_nc_u32_e32 v1, s4, v42
	.loc	1 835 13                        ; attention.py:835:13
	ds_load_b32 v0, v0
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	v_lshl_add_u32 v1, v1, 2, 8
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v0, v1, s[16:19], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp231:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
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
		.amdhsa_next_free_vgpr 245
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.num_vgpr, 245
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18724
; TotalNumSgprs: 107
; NumVgprs: 245
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 107
; NumVGPRsForWavesPerEU: 245
; Occupancy: 5
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
	.byte	7                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
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
	.short	687                             ; DW_AT_call_line
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
	.short	691                             ; DW_AT_call_line
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
	.short	829                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x9d:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xab:0x23 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	828                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0xb8:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp221                        ; DW_AT_low_pc
	.long	.Ltmp222-.Ltmp221               ; DW_AT_high_pc
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
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
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
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
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
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
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
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     107
    .sgpr_spill_count: 7
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     245
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
