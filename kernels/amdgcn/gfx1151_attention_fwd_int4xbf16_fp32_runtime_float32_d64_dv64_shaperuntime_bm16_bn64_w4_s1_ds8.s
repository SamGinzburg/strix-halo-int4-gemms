	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
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
	s_load_b128 s[52:55], s[0:1], 0x4c
	s_load_b32 s85, s[0:1], 0x60
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
	s_cselect_b32 s84, -1, 0
	s_cmp_eq_u32 s3, 1
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[43:44], null, s85, v60, v[41:42]
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
	s_mul_i32 s10, s27, s54
	.loc	1 559 27                        ; attention.py:559:27
	s_ashr_i32 s5, s5, 31
	.loc	1 609 32                        ; attention.py:609:32
	v_rcp_iflag_f32_e32 v1, s3
	.loc	1 584 26                        ; attention.py:584:26
	v_lshl_add_u32 v62, s85, 2, v43
	v_mad_u64_u32 v[44:45], null, s85, 12, v[43:44]
	v_lshl_add_u32 v63, s85, 3, v43
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
	s_abs_i32 s6, s52
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
	s_abs_i32 s5, s53
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e64 s4, s85, v41
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
	v_cmp_gt_i32_e32 vcc_lo, s54, v1
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
	s_xor_b32 s2, s52, s53
	s_mul_i32 s23, s11, s5
	s_ashr_i32 s24, s2, 31
	s_sub_i32 s6, s6, s23
	s_add_i32 s23, s11, 1
	s_sub_i32 s25, s6, s5
	s_cmp_ge_u32 s6, s5
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, s54, v2
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s11, s23, s11
	s_cselect_b32 s6, s25, s6
	s_add_i32 s23, s11, 1
	s_cmp_ge_u32 s6, s5
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s54, v3
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s23, s23, s11
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s25, s10, s3
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 584 26                        ; attention.py:584:26
	s_mul_i32 s10, s25, s85
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s6, s54, v4
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
	v_cmp_gt_i32_e32 vcc_lo, s54, v5
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
	s_add_i32 s8, s55, 63
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
	s_lshl_b32 s87, s8, 6
	.loc	1 569 19                        ; attention.py:569:19
	v_readfirstlane_b32 s8, v2
	.loc	1 611 33                        ; attention.py:611:33
	s_add_i32 s2, s87, s2
	.loc	1 611 18 is_stmt 0              ; attention.py:611:18
	s_min_i32 s88, s11, s2
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
	s_min_i32 s2, s55, s2
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s9, s9, 0x7fffffc0
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s2, s2, 63
	.loc	1 618 18                        ; attention.py:618:18
	s_max_i32 s87, s87, s9
	.loc	1 619 34                        ; attention.py:619:34
	s_ashr_i32 s10, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s10, s10, 26
	s_add_i32 s2, s2, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 619 33 is_stmt 0              ; attention.py:619:33
	s_and_not1_b32 s2, s2, 63
	.loc	1 619 18                        ; attention.py:619:18
	s_min_i32 s88, s88, s2
.LBB0_2:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b32 s86, s[0:1], 0x64
	.loc	1 620 9 is_stmt 1               ; attention.py:620:9
	v_cndmask_b32_e64 v74, 0, 1, s7
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s2, s15, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 16
	s_min_i32 s2, s55, s2
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
	s_min_i32 s88, s88, s2
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b64 s[16:17], s[0:1], 0x40
	.loc	1 571 21 is_stmt 1              ; attention.py:571:21
	v_and_b32_e32 v42, 63, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v73, 64, v0
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_ge_i32 s87, s88
	.loc	1 696 65                        ; attention.py:696:65
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_i32_e64 s2, s86, v42
	v_cmp_eq_u32_e32 vcc_lo, 0, v73
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
                                        ; implicit-def: $vgpr239 : SGPR spill to VGPR lane
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_xor_b32 s7, s27, s52
	v_writelane_b32 v239, s16, 0
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_ashr_i32 s7, s7, 31
	s_ashr_i32 s6, s6, 31
	s_xor_b32 s9, s20, s7
	v_writelane_b32 v239, s17, 1
	s_cvt_u32_f32 s8, s8
	s_sub_i32 s11, s9, s7
	s_sub_i32 s7, 0, s5
	s_mul_i32 s9, s11, s52
	v_writelane_b32 v239, s18, 2
	s_mul_i32 s7, s7, s8
	s_sub_i32 s12, s27, s9
	s_mul_hi_u32 s7, s8, s7
	s_abs_i32 s9, s12
	v_writelane_b32 v239, s19, 3
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x6c
	s_load_b64 s[68:69], s[0:1], 0x30
	s_add_i32 s8, s8, s7
	.loc	1 570 31 is_stmt 1              ; attention.py:570:31
	v_lshrrev_b32_e32 v75, 6, v73
	s_mul_hi_u32 s7, s9, s8
	s_ashr_i32 s8, s12, 31
	.loc	1 569 19                        ; attention.py:569:19
	s_mul_i32 s10, s7, s5
	s_xor_b32 s6, s8, s6
	s_sub_i32 s8, s9, s10
	s_load_b32 s89, s[0:1], 0x7c
	s_add_i32 s9, s7, 1
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v2, s3, v75
	.loc	1 569 19                        ; attention.py:569:19
	s_cselect_b32 s7, s9, s7
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s7, 1
	s_cmp_ge_u32 s8, s5
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v6, 6, v2
	.loc	1 569 19                        ; attention.py:569:19
	s_cselect_b32 s5, s9, s7
	v_dual_mov_b32 v56, 0x5410 :: v_dual_and_b32 v11, 16, v0
	s_xor_b32 s5, s5, s6
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v85.h, v1.l
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s19, v75
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x8
	s_load_b64 s[72:73], s[0:1], 0x20
	.loc	1 569 19                        ; attention.py:569:19
	s_sub_i32 s0, s5, s6
	.loc	1 632 33                        ; attention.py:632:33
	s_mul_i32 s1, s11, s53
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v4, 2, v2
	.loc	1 632 33                        ; attention.py:632:33
	s_add_i32 s90, s0, s1
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v5, 4, v2
	v_or_b32_e32 v7, 8, v2
	v_or_b32_e32 v8, 10, v2
	v_or_b32_e32 v9, 12, v2
	v_or_b32_e32 v10, 14, v2
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v77, s15, v2
	v_add_nc_u32_e32 v80, s15, v6
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s0, s54, v2
	v_cmp_gt_i32_e64 s6, s54, v6
	v_cndmask_b32_e64 v6, 0x104, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v11
	v_and_b32_e32 v2, 60, v61
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v78, s15, v4
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s1, s54, v4
	v_dual_mov_b32 v155, 0xff800000 :: v_dual_lshlrev_b32 v4, 6, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[53:54], null, s89, v42, v[1:2]
	v_dual_cndmask_b32 v56, 0x1054, v56 :: v_dual_lshlrev_b32 v1, 2, v41
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v81, s15, v7
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s7, s54, v7
	v_dual_mov_b32 v160, 0xff800000 :: v_dual_and_b32 v7, 64, v4
	v_lshl_or_b32 v103, v64, 8, v1
	v_and_b32_e32 v1, 0x380, v4
	v_lshlrev_b32_e32 v4, 2, v11
	v_mov_b32_e32 v11, 0x7632
	v_lshl_or_b32 v56, v56, 8, v56
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v79, s15, v5
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s54, v5
	v_dual_mov_b32 v156, 0xff800000 :: v_dual_and_b32 v5, 32, v0
	v_cndmask_b32_e32 v11, 0x3276, v11, vcc_lo
	v_xor_b32_e32 v6, v6, v2
	v_or3_b32 v104, v60, v7, v2
	v_lshlrev_b32_e32 v2, 1, v64
	v_and_b32_e32 v56, 0x540054, v56
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v82, s15, v8
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s8, s54, v8
	v_dual_mov_b32 v157, 0xff800000 :: v_dual_lshlrev_b32 v8, 2, v5
	v_or3_b32 v105, v1, v4, v2
	v_lshl_or_b32 v11, v11, 8, v11
	v_lshl_or_b32 v56, v56, 4, v56
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v102, v6, v8, v7
	v_lshrrev_b32_e32 v1, 2, v73
	v_xor_b32_e32 v54, 24, v105
	v_xor_b32_e32 v55, 28, v105
	v_lshl_add_u32 v5, v5, 1, 0
	v_add_nc_u32_e32 v7, 0, v7
	v_and_b32_e32 v11, 0x760076, v11
	v_add_nc_u32_e32 v145, 0, v54
	v_add_nc_u32_e32 v146, 0, v55
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[54:55], null, s19, 6, v[53:54]
	v_and_b32_e32 v106, 0x5040504, v56
	v_writelane_b32 v239, s28, 4
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s9, s54, v9
	v_cmp_gt_i32_e64 s10, s54, v10
	v_mov_b16_e32 v85.l, 0
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v83, s15, v9
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[55:56], null, s19, 10, v[53:54]
	v_xor_b32_e32 v6, 0x208, v102
	v_xor_b32_e32 v8, 0x410, v102
	v_xor_b32_e32 v9, 0x618, v102
	v_xor_b32_e32 v12, 0xa28, v102
	v_xor_b32_e32 v13, 0xc30, v102
	v_xor_b32_e32 v14, 0xe38, v102
	v_xor_b32_e32 v15, 4, v103
	v_xor_b32_e32 v16, 8, v103
	v_xor_b32_e32 v17, 12, v103
	v_xor_b32_e32 v18, 16, v103
	v_xor_b32_e32 v19, 20, v103
	v_xor_b32_e32 v20, 24, v103
	v_xor_b32_e32 v21, 28, v103
	v_xor_b32_e32 v22, 32, v103
	v_xor_b32_e32 v23, 36, v103
	v_xor_b32_e32 v24, 40, v103
	v_xor_b32_e32 v25, 44, v103
	v_xor_b32_e32 v26, 48, v103
	v_xor_b32_e32 v27, 52, v103
	v_xor_b32_e32 v28, 56, v103
	v_xor_b32_e32 v29, 60, v103
	v_xor_b32_e32 v30, 0x84, v104
	v_xor_b32_e32 v31, 0x108, v104
	v_xor_b32_e32 v32, 0x18c, v104
	v_xor_b32_e32 v4, 0x210, v104
	v_xor_b32_e32 v33, 0x294, v104
	v_xor_b32_e32 v34, 0x318, v104
	v_xor_b32_e32 v35, 0x39c, v104
	v_xor_b32_e32 v36, 4, v105
	v_xor_b32_e32 v37, 8, v105
	v_xor_b32_e32 v38, 12, v105
	v_xor_b32_e32 v39, 16, v105
	v_xor_b32_e32 v40, 20, v105
	v_lshl_or_b32 v11, v11, 4, v11
	v_add_nc_u32_e32 v109, v5, v1
	v_add_nc_u32_e32 v110, v7, v1
	v_mov_b32_e32 v1, 0
	v_and_b32_e32 v3, 0x60, v0
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v84, s15, v10
	v_xor_b32_e32 v10, 0x820, v102
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[56:57], null, s19, 12, v[53:54]
	v_mad_u64_u32 v[57:58], null, s19, 14, v[53:54]
	v_mad_u64_u32 v[58:59], null, s86, v75, v[42:43]
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s91, s16, 0x3fb8aa3b
	.loc	1 674 25                        ; attention.py:674:25
	s_mul_i32 s3, s3, s19
	.loc	1 675 27                        ; attention.py:675:27
	s_mul_i32 s11, s11, s17
	v_writelane_b32 v239, s26, 5
	.loc	1 571 21                        ; attention.py:571:21
	v_bfe_u32 v76, v0, 4, 1
	v_subrev_nc_u32_e32 v87, s13, v78
	v_subrev_nc_u32_e32 v89, s13, v80
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mov_b32 v152, v85 :: v_dual_add_nc_u32 v95, s14, v78
	v_dual_mov_b32 v154, 0xff800000 :: v_dual_add_nc_u32 v97, s14, v80
	v_and_b32_e32 v107, 0x7060706, v11
	v_add_nc_u32_e32 v111, 0, v6
	v_add_nc_u32_e32 v112, 0, v8
	v_add_nc_u32_e32 v113, 0, v9
	v_add_nc_u32_e32 v114, 0, v10
	v_add_nc_u32_e32 v115, 0, v12
	v_add_nc_u32_e32 v116, 0, v13
	v_add_nc_u32_e32 v117, 0, v14
	v_add_nc_u32_e32 v118, 0, v15
	v_add_nc_u32_e32 v119, 0, v16
	v_add_nc_u32_e32 v120, 0, v17
	v_add_nc_u32_e32 v121, 0, v18
	v_add_nc_u32_e32 v122, 0, v19
	v_add_nc_u32_e32 v123, 0, v20
	v_add_nc_u32_e32 v124, 0, v21
	v_add_nc_u32_e32 v125, 0, v22
	v_add_nc_u32_e32 v126, 0, v23
	v_add_nc_u32_e32 v127, 0, v24
	v_add_nc_u32_e32 v128, 0, v25
	v_add_nc_u32_e32 v129, 0, v26
	v_add_nc_u32_e32 v130, 0, v27
	v_add_nc_u32_e32 v131, 0, v28
	v_add_nc_u32_e32 v132, 0, v29
	v_add_nc_u32_e32 v133, 0, v30
	v_add_nc_u32_e32 v134, 0, v31
	v_add_nc_u32_e32 v135, 0, v32
	v_add_nc_u32_e32 v136, 0, v4
	v_add_nc_u32_e32 v137, 0, v33
	v_add_nc_u32_e32 v138, 0, v34
	v_add_nc_u32_e32 v139, 0, v35
	v_add_nc_u32_e32 v140, 0, v36
	v_add_nc_u32_e32 v141, 0, v37
	v_add_nc_u32_e32 v142, 0, v38
	v_add_nc_u32_e32 v143, 0, v39
	v_add_nc_u32_e32 v144, 0, v40
	v_mov_b32_e32 v4, v1
	v_subrev_nc_u32_e32 v86, s13, v77
	v_dual_mov_b32 v7, v1 :: v_dual_add_nc_u32 v94, s14, v77
	v_mov_b32_e32 v5, v1
	v_subrev_nc_u32_e32 v93, s13, v84
	v_dual_mov_b32 v162, 0xff800000 :: v_dual_add_nc_u32 v101, s14, v84
	v_mov_b32_e32 v6, v1
	v_subrev_nc_u32_e32 v88, s13, v79
	v_dual_mov_b32 v151, v85 :: v_dual_add_nc_u32 v96, s14, v79
	v_mov_b32_e32 v8, v1
	v_subrev_nc_u32_e32 v90, s13, v81
	v_dual_mov_b32 v163, 0xff800000 :: v_dual_add_nc_u32 v98, s14, v81
	.loc	1 629 13                        ; attention.py:629:13
	v_lshl_add_u32 v147, s19, 1, v53
	v_lshl_add_u32 v148, s19, 2, v53
	v_lshl_add_u32 v149, s19, 3, v53
	.loc	1 654 30                        ; attention.py:654:30
	v_mov_b32_e32 v150, v85
	v_subrev_nc_u32_e32 v92, s13, v83
	v_dual_mov_b32 v159, 0xff800000 :: v_dual_add_nc_u32 v100, s14, v83
	v_dual_mov_b32 v158, 0xff800000 :: v_dual_add_nc_u32 v153, v65, v0
	v_mov_b32_e32 v59, 0xff800000
	v_add3_u32 v108, 0, v3, v2
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_subrev_nc_u32_e32 v91, s13, v82
	v_add_nc_u32_e32 v99, s14, v82
	v_mov_b32_e32 v161, v1
	.loc	1 629 13                        ; attention.py:629:13
	s_mov_b32 s56, 0
	.loc	1 676 27                        ; attention.py:676:27
	s_mul_i32 s12, s12, s18
	s_add_i32 s103, s11, s3
	.loc	1 632 32                        ; attention.py:632:32
	s_mul_i32 s90, s90, s55
	s_lshl_b32 s54, s85, 4
	s_lshl_b32 s95, s85, 5
	s_waitcnt lgkmcnt(0)
	s_and_b32 s77, s21, 0xffff
	s_mov_b32 s76, s20
	s_mov_b32 s79, 0x31027000
	s_mov_b32 s78, 0x7ffffffe
	s_and_b32 s73, s73, 0xffff
	s_add_i32 s103, s103, s12
	s_and_b32 s69, s69, 0xffff
	s_lshl_b32 s104, s86, 1
	s_lshl_b32 vcc_hi, s86, 2
	s_lshl_b32 s67, s86, 3
	s_lshl_b32 s94, s86, 4
	s_lshl_b32 s64, s86, 5
	s_mul_i32 s98, s86, 48
	s_mul_i32 s99, s86, 50
	s_mul_i32 s100, s86, 52
	s_mul_i32 s101, s86, 54
	s_mul_i32 s102, s86, 56
	s_mul_i32 s65, s86, 58
	s_mul_i32 s66, s86, 60
	s_mul_i32 s3, s86, 62
	s_and_b32 s81, s23, 0xffff
	s_mov_b32 s80, s22
	.loc	1 664 17                        ; attention.py:664:17
	s_mov_b32 s92, s91
	s_mov_b32 s93, s91
	s_mov_b32 s96, s91
	s_mov_b32 s57, s56
	s_mov_b32 s58, s56
	s_mov_b32 s59, s56
	s_mov_b32 s60, s56
	s_mov_b32 s61, s56
	s_mov_b32 s62, s56
	s_mov_b32 s63, s56
	s_mov_b32 s97, 0x76543210
	v_writelane_b32 v239, s27, 6
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 674 25                        ; attention.py:674:25
	s_mul_i32 s11, s87, s89
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v197, v35
	.loc	1 674 25                        ; attention.py:674:25
	s_add_i32 s11, s103, s11
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v35, v38
	v_cvt_f32_i32_e32 v38, v25
	v_cvt_f32_i32_e32 v25, v23
	v_cvt_f32_i32_e32 v23, v10
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v10, s11, v53, 2
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v199, v33
	v_cvt_f32_i32_e32 v33, v40
	v_cvt_f32_i32_e32 v40, v26
	v_cvt_f32_i32_e32 v26, v19
	v_cvt_f32_i32_e32 v19, v13
	v_cvt_f32_i32_e32 v13, v14
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v14, s11, v147, 2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s34
	s_mov_b32 s70, s78
	s_mov_b32 s71, s79
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v201, v28
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v14, 0x80000000, v14, s33
	s_clause 0x1
	buffer_load_b32 v10, v10, s[68:71], 0 offen
	buffer_load_b32 v14, v14, s[68:71], 0 offen
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v28, v20
	v_cvt_f32_i32_e32 v20, v12
	v_cvt_f32_i32_e32 v12, v15
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v15, s11, v148, 2
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v200, v27
	v_cvt_f32_i32_e32 v27, v24
	v_cvt_f32_i32_e32 v24, v22
	v_cvt_f32_i32_e32 v22, v11
	v_cvt_f32_i32_e32 v11, v16
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v16, s11, v54, 2
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v198, v34
	v_cvt_f32_i32_e32 v34, v39
	v_cvt_f32_i32_e32 v39, v32
	v_cvt_f32_i32_e32 v32, v30
	v_cvt_f32_i32_e32 v30, v17
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v17, s11, v149, 2
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v196, v36
	v_cvt_f32_i32_e32 v36, v37
	v_cvt_f32_i32_e32 v37, v31
	v_cvt_f32_i32_e32 v31, v29
	v_cvt_f32_i32_e32 v29, v21
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v21, s11, v55, 2
	v_cndmask_b32_e64 v15, 0x80000000, v15, s29
	v_add_lshl_u32 v202, s11, v56, 2
	v_add_lshl_u32 v203, s11, v57, 2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s31
	v_cndmask_b32_e64 v17, 0x80000000, v17, s30
	v_cndmask_b32_e64 v21, 0x80000000, v21, s28
	v_cndmask_b32_e64 v202, 0x80000000, v202, s27
	buffer_load_b32 v15, v15, s[68:71], 0 offen
	v_cndmask_b32_e64 v203, 0x80000000, v203, s26
	s_clause 0x4
	buffer_load_b32 v16, v16, s[68:71], 0 offen
	buffer_load_b32 v204, v17, s[68:71], 0 offen
	buffer_load_b32 v21, v21, s[68:71], 0 offen
	buffer_load_b32 v202, v202, s[68:71], 0 offen
	buffer_load_b32 v203, v203, s[68:71], 0 offen
	.loc	1 684 35                        ; attention.py:684:35
	v_add_nc_u32_e32 v17, 0, v102
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(37)
	v_mov_b16_e64 v193.h, v193.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v25, v150, v25 :: v_dual_mul_f32 v24, v85, v24
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(26)
	v_mov_b16_e64 v178.h, v178.l
	v_mov_b16_e64 v181.h, v181.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v26, v150, v26 :: v_dual_mul_f32 v23, v85, v23
	v_dual_mul_f32 v30, v85, v30 :: v_dual_mul_f32 v27, v151, v27
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(25)
	v_mov_b16_e64 v180.h, v180.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v18, v18
	v_dual_mul_f32 v38, v85, v38 :: v_dual_mul_f32 v29, v152, v29
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v185.h, v187.l
	v_mov_b16_e64 v184.h, v184.l
	v_mov_b16_e64 v190.h, v190.l
	v_mov_b16_e64 v192.h, v192.l
	v_mov_b16_e64 v189.h, v189.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v9, v9
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v188.h, v188.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v32, v150, v32 :: v_dual_mul_f32 v31, v85, v31
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v186.h, v186.l
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v154, v154, v154
	.loc	1 694 30                        ; attention.py:694:30
	s_mov_b32 s82, s78
	s_mov_b32 s83, s79
	.loc	1 685 25                        ; attention.py:685:25
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v28, v151, v28 :: v_dual_mul_f32 v39, v152, v39
	v_mul_f32_e32 v37, v151, v37
	v_mul_f32_e32 v13, v85, v13
	v_mul_f32_e32 v9, v152, v9
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v10, 0xff800000, v10, s34
	s_waitcnt vmcnt(6)
	v_cndmask_b32_e64 v14, 0xff800000, v14, s33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v10
	v_cmp_neq_f32_e64 s11, 0xff800000, v14
	.loc	1 684 35                        ; attention.py:684:35
	ds_store_b32 v17, v10
	ds_store_b32 v111, v14
	v_add_nc_u32_e32 v10, 0, v103
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s41, s34, vcc_lo
	s_and_b32 s42, s33, s11
	v_cndmask_b32_e64 v14, 0, 1, s41
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v14.h, v194.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v194, v152, v201
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v16, 0xff800000, v16, s31
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v235, 0xff800000, v204, s30
	v_cndmask_b32_e64 v234, 0xff800000, v15, s29
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v236, 0xff800000, v21, s28
	.loc	1 685 25                        ; attention.py:685:25
	v_add_nc_u32_e32 v21, 0, v104
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v237, 0xff800000, v202, s27
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v238, 0xff800000, v203, s26
	.loc	1 684 35                        ; attention.py:684:35
	ds_store_b32 v112, v234
	ds_store_b32 v113, v16
	ds_store_b32 v114, v235
	ds_store_b32 v115, v236
	ds_store_b32 v116, v237
	ds_store_b32 v117, v238
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[202:203], v10 offset1:32
	ds_load_2addr_b32 v[204:205], v118 offset1:32
	ds_load_2addr_b32 v[206:207], v119 offset1:32
	ds_load_2addr_b32 v[208:209], v120 offset1:32
	ds_load_2addr_b32 v[210:211], v121 offset1:32
	ds_load_2addr_b32 v[212:213], v122 offset1:32
	ds_load_2addr_b32 v[214:215], v123 offset1:32
	ds_load_2addr_b32 v[216:217], v124 offset1:32
	ds_load_2addr_b32 v[218:219], v125 offset1:32
	ds_load_2addr_b32 v[220:221], v126 offset1:32
	ds_load_2addr_b32 v[222:223], v127 offset1:32
	ds_load_2addr_b32 v[224:225], v128 offset1:32
	ds_load_2addr_b32 v[226:227], v129 offset1:32
	ds_load_2addr_b32 v[228:229], v130 offset1:32
	ds_load_2addr_b32 v[230:231], v131 offset1:32
	ds_load_2addr_b32 v[232:233], v132 offset1:32
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v15, 0, 1, s42
	ds_store_b8 v21, v14
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v21.l, 0
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v11, v85, v11
	v_mul_f32_e32 v19, v85, v19
	v_mul_f32_e32 v22, v85, v22
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v21.h, v195.l
	v_mov_b16_e64 v178.l, v21.l
	v_mov_b16_e64 v181.l, v21.l
	v_mov_b16_e64 v180.l, v21.l
	v_mov_b16_e64 v184.l, v21.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v30, v30, v21
	v_mul_f32_e32 v178, v24, v178
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v24.h, v179.l
	v_mov_b16_e32 v24.l, v21.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v26, v26, v181
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v21.h, v185.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v12, v85, v12
	v_mul_f32_e32 v20, v85, v20
	v_mul_f32_e32 v179, v23, v24
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v23.h, v177.l
	v_mov_b16_e32 v23.l, v21.l
	v_mov_b16_e64 v185.l, v21.l
	v_mov_b16_e64 v181.h, v183.l
	v_mov_b16_e32 v14.l, v21.l
	v_mov_b16_e64 v190.l, v21.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v177, v22, v23
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v22.h, v176.l
	v_mov_b16_e32 v22.l, v21.l
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v23, 0x3fb8aa3b, v207
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v29, v29, v185 :: v_dual_mul_f32 v28, v28, v184
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v27, v27, v181 :: v_dual_mul_f32 v176, v20, v22
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v20.h, v175.l
	v_mov_b16_e32 v20.l, v21.l
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v181, 0x3fb8aa3b, v214
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v14, v194, v14
	v_mul_f32_e32 v194, v151, v200
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v192.l, v21.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v175, v19, v20
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v19.h, v174.l
	v_mov_b16_e32 v19.l, v21.l
	v_mov_b16_e64 v189.l, v21.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v38, v38, v190
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v190.h, v191.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v40, v150, v40 :: v_dual_mul_f32 v13, v13, v19
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v20, 0x3fb8aa3b, v218
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v19.h, v173.l
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v185, 0x3fb8aa3b, v212
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v39, v39, v190 :: v_dual_mul_f32 v40, v40, v192
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v234
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v173, v12, v19
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v12.h, v172.l
	v_mov_b16_e32 v12.l, v21.l
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v19, 0x3fb8aa3b, v209
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v16
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v37, v37, v189
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v189, 0x3fb8aa3b, v224
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v172, v11, v12
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v11.h, v171.l
	v_mov_b16_e32 v11.l, v21.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v12, v85, v199
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s12, 0xff800000, v235
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s49, s29, vcc_lo
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s13, 0xff800000, v236
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s48, s31, s11
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_dual_mul_f32 v171, v12, v11 :: v_dual_mul_f32 v12, v85, v198
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v11.h, v170.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s14, 0xff800000, v237
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s47, s30, s12
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s15, 0xff800000, v238
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s46, s28, s13
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_mul_f32_e32 v170, v12, v11
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v11.h, v169.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v12, v85, v197
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v188.l, v21.l
	v_mov_b16_e64 v186.l, v21.l
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v22, 0x3fb8aa3b, v217 :: v_dual_mul_f32 v199, 0x3fb8aa3b, v202
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v169, v12, v11 :: v_dual_mul_f32 v12, v85, v196
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v11.h, v168.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v23, s91, v177
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s45, s27, s14
	s_and_b32 s44, s26, s15
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v32, v32, v188 :: v_dual_mul_f32 v31, v31, v186
	v_mul_f32_e32 v168, v12, v11
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v11.h, v167.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v12, v85, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v200, 0x3fb8aa3b, v203 :: v_dual_fmac_f32 v185, s92, v32
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v25, v25, v180 :: v_dual_mul_f32 v198, 0x3fb8aa3b, v230
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v181, s93, v37 :: v_dual_mul_f32 v36, v12, v11
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v183, 0x3fb8aa3b, v210
	.loc	1 649 37 is_stmt 1              ; attention.py:649:37
	v_mov_b16_e64 v11.h, v166.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v12, v85, v35
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v184, 0x3fb8aa3b, v213 :: v_dual_fmac_f32 v19, s91, v176
	v_dual_mul_f32 v191, 0x3fb8aa3b, v220 :: v_dual_fmac_f32 v198, s92, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v35, v12, v11 :: v_dual_mul_f32 v12, v85, v34
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v11.h, v165.l
	.loc	1 685 25                        ; attention.py:685:25
	v_add_nc_u32_e32 v25, 0, v105
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v184, s91, v13
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_dual_mul_f32 v190, 0x3fb8aa3b, v221 :: v_dual_fmac_f32 v199, s91, v38
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_dual_mul_f32 v34, v12, v11 :: v_dual_mul_f32 v187, 0x3fb8aa3b, v226
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v11.h, v182.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v12, v85, v33
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v182, 0x3fb8aa3b, v211
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v193.l, v21.l
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v24, 0x3fb8aa3b, v205 :: v_dual_mul_f32 v197, 0x3fb8aa3b, v231
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v33, v12, v11 :: v_dual_mul_f32 v166, 0x3fb8aa3b, v206
	v_mul_f32_e32 v11, v85, v18
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v12, 0, 1, s48
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v182, s91, v175
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_dual_mul_f32 v18, 0x3fb8aa3b, v219 :: v_dual_mul_f32 v193, v194, v193
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_mul_f32_e32 v165, v11, v21
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v11, 0, 1, s49
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v21.h, v164.l
	.loc	1 685 25                        ; attention.py:685:25
	ds_store_b8 v133, v15
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v22, s91, v172
	v_fmac_f32_e32 v18, s91, v171
	.loc	1 685 25                        ; attention.py:685:25
	ds_store_b8 v134, v11
	v_cndmask_b32_e64 v11, 0, 1, s47
	ds_store_b8 v135, v12
	v_cndmask_b32_e64 v12, 0, 1, s46
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v9, v9, v21 :: v_dual_mul_f32 v164, 0x3fb8aa3b, v208
	.loc	1 685 25                        ; attention.py:685:25
	ds_store_b8 v136, v11
	v_cndmask_b32_e64 v11, 0, 1, s45
	ds_store_b8 v137, v12
	v_cndmask_b32_e64 v12, 0, 1, s44
	ds_store_b8 v138, v11
	ds_store_b8 v139, v12
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v200, s96, v9
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v9, v141
	ds_load_u16_d16 v11, v142 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v11, v141 offset:32
	ds_load_u16_d16_hi v9, v140 offset:32
	ds_load_u16_d16_hi v12, v25 offset:32
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v164, s96, v14
	v_dual_fmac_f32 v20, s91, v30 :: v_dual_fmac_f32 v191, s91, v165
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v167, 0x3fb8aa3b, v204
	v_dual_mul_f32 v174, 0x3fb8aa3b, v216 :: v_dual_mul_f32 v195, 0x3fb8aa3b, v233
	v_dual_mul_f32 v180, 0x3fb8aa3b, v215 :: v_dual_mul_f32 v201, 0x3fb8aa3b, v229
	v_dual_mul_f32 v186, 0x3fb8aa3b, v227 :: v_dual_fmac_f32 v197, s91, v34
	v_mul_f32_e32 v188, 0x3fb8aa3b, v225
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v192, 0x3fb8aa3b, v223 :: v_dual_fmac_f32 v195, s91, v33
	v_dual_mul_f32 v194, 0x3fb8aa3b, v222 :: v_dual_fmac_f32 v167, s92, v40
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v12.l, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v9.l
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v196, 0x3fb8aa3b, v232 :: v_dual_fmac_f32 v183, s91, v31
	v_dual_mul_f32 v202, 0x3fb8aa3b, v228 :: v_dual_fmac_f32 v187, s96, v29
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s37, 1, v12.l
	ds_load_u16_d16 v12, v140
	v_and_b16 v9.l, 1, v9.l
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v24, s91, v179 :: v_dual_fmac_f32 v189, s93, v28
	v_fmac_f32_e32 v166, s93, v193
	v_fmac_f32_e32 v180, s91, v173
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e32 vcc_lo, 1, v9.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v190, s91, v170
	v_fmac_f32_e32 v192, s91, v169
	v_dual_fmac_f32 v186, s91, v36 :: v_dual_fmac_f32 v201, s91, v35
	v_fmac_f32_e32 v188, s91, v168
	v_fmac_f32_e32 v174, s96, v39
	v_fmac_f32_e32 v194, s92, v26
	v_fmac_f32_e32 v196, s93, v27
	v_fmac_f32_e32 v202, s91, v178
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e32 v35, 0xff800000, v23, vcc_lo
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v13.l, 1, v12.l
	v_lshrrev_b16 v12.l, 8, v12.l
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_eq_u16_e64 s43, 1, v13.l
	ds_load_u16_d16 v13, v146
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v13, v146 offset:32
	ds_load_u16_d16 v14, v145 offset:32
	v_and_b16 v12.l, 1, v12.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s12, 1, v12.l
	ds_load_u16_d16 v12, v142
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v37, 0xff800000, v24, s12
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(1)
	v_and_b16 v14.h, 1, v13.l
	v_cmp_eq_u16_e64 s36, 1, v14.h
	ds_load_u16_d16_hi v14, v145
	ds_load_u16_d16 v15, v144 offset:32
	s_waitcnt lgkmcnt(2)
	v_lshrrev_b16 v9.l, 8, v12.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b16 v9.l, 1, v9.l
	v_cmp_eq_u16_e64 s33, 1, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v36, 0xff800000, v19, s33
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v15.h, 1, v14.h
	v_cmp_eq_u16_e64 s35, 1, v15.h
	ds_load_u16_d16_hi v15, v144
	ds_load_u16_d16 v16, v143 offset:32
	s_waitcnt lgkmcnt(0)
	v_and_b16 v16.h, 1, v15.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s39, 1, v16.h
	ds_load_u16_d16_hi v16, v143
	s_waitcnt lgkmcnt(0)
	v_and_b16 v21.h, 1, v16.h
	v_lshrrev_b16 v9.l, 8, v16.h
	v_cmp_eq_u16_e64 s38, 1, v21.h
	v_and_b16 v21.h, 1, v12.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b16 v9.l, 1, v9.l
	v_cmp_eq_u16_e64 s31, 1, v21.h
	v_and_b16 v21.h, 1, v16.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s27, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v15.h
	v_cmp_eq_u16_e64 s22, 1, v21.h
	v_and_b16 v21.h, 1, v11.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b16 v9.l, 1, v9.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v33, 0xff800000, v182, s27
	v_cndmask_b32_e64 v40, 0xff800000, v187, s22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s29, 1, v21.h
	v_and_b16 v21.h, 1, v11.h
	v_cmp_eq_u16_e64 s30, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v14.h
	v_cmp_eq_u16_e64 s28, 1, v21.h
	v_and_b16 v21.h, 1, v9.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b16 v9.l, 1, v9.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v34, 0xff800000, v184, s30
	v_cndmask_b32_e64 v165, 0xff800000, v194, s28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s34, 1, v21.h
	v_and_b16 v21.h, 1, v13.h
	v_cmp_eq_u16_e64 s23, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v13.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v168, 0xff800000, v191, s34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s19, 1, v21.h
	v_and_b16 v21.h, 1, v14.l
	v_and_b16 v9.l, 1, v9.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v31, 0xff800000, v180, s23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v39, 0xff800000, v196, s19
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s18, 1, v21.h
	v_and_b16 v21.h, 1, v15.l
	v_cmp_eq_u16_e64 s26, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v12.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v38, 0xff800000, v198, s18
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s25, 1, v21.h
	ds_load_u16_d16_hi v21, v25
	v_and_b16 v9.l, 1, v9.l
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v32, 0xff800000, v22, s26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s13, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v9.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v28, 0xff800000, v18, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v9.l, 1, v9.l
	v_cmp_eq_u16_e64 s14, 1, v9.l
	v_lshrrev_b16 v25.l, 8, v21.h
	v_and_b16 v9.l, 1, v21.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v29, 0xff800000, v190, s14
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v25.l, 1, v25.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s50, 1, v9.l
	v_cmp_eq_u16_e64 s11, 1, v25.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v9, 0xff800000, v199, s50
	v_cndmask_b32_e64 v30, 0xff800000, v200, s11
	ds_store_2addr_b32 v10, v9, v30 offset1:32
	.loc	1 685 25                        ; attention.py:685:25
	v_lshrrev_b16 v10.l, 8, v11.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b16 v10.l, 1, v10.l
	v_cmp_eq_u16_e64 s21, 1, v10.l
	v_lshrrev_b16 v10.l, 8, v11.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v11, 0xff800000, v166, s37
	v_cndmask_b32_e64 v166, 0xff800000, v189, s29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v26, 0xff800000, v192, s21
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v10.l, 1, v10.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s24, 1, v10.l
	v_lshrrev_b16 v10.l, 8, v16.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v16, 0xff800000, v174, s36
	v_cndmask_b32_e64 v27, 0xff800000, v188, s24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v10.l, 1, v10.l
	v_cmp_eq_u16_e64 s17, 1, v10.l
	v_lshrrev_b16 v10.l, 8, v15.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v15, 0xff800000, v181, s35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v24, 0xff800000, v186, s17
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v10.l, 1, v10.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s20, 1, v10.l
	v_lshrrev_b16 v10.l, 8, v14.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v14, 0xff800000, v185, s39
	v_cndmask_b32_e64 v25, 0xff800000, v201, s20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v10.l, 1, v10.l
	v_cmp_eq_u16_e64 s15, 1, v10.l
	v_lshrrev_b16 v10.l, 8, v13.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v13, 0xff800000, v183, s38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v22, 0xff800000, v197, s15
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v10.l, 1, v10.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s16, 1, v10.l
	v_and_b16 v10.l, 1, v12.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v23, 0xff800000, v195, s16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s40, 1, v10.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v10, 0xff800000, v167, s43
	v_cndmask_b32_e64 v167, 0xff800000, v20, s31
	v_cndmask_b32_e64 v12, 0xff800000, v164, s40
	v_cndmask_b32_e64 v164, 0xff800000, v202, s25
	ds_store_2addr_b32 v118, v10, v37 offset1:32
	ds_store_2addr_b32 v119, v11, v35 offset1:32
	ds_store_2addr_b32 v120, v12, v36 offset1:32
	ds_store_2addr_b32 v121, v13, v33 offset1:32
	ds_store_2addr_b32 v122, v14, v34 offset1:32
	ds_store_2addr_b32 v123, v15, v31 offset1:32
	ds_store_2addr_b32 v124, v16, v32 offset1:32
	ds_store_2addr_b32 v125, v167, v28 offset1:32
	ds_store_2addr_b32 v126, v168, v29 offset1:32
	ds_store_2addr_b32 v127, v165, v26 offset1:32
	ds_store_2addr_b32 v128, v166, v27 offset1:32
	ds_store_2addr_b32 v129, v40, v24 offset1:32
	ds_store_2addr_b32 v130, v164, v25 offset1:32
	ds_store_2addr_b32 v131, v38, v22 offset1:32
	ds_store_2addr_b32 v132, v39, v23 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v17, v17
	ds_load_b32 v18, v111
	ds_load_b32 v19, v112
	ds_load_b32 v20, v113
	ds_load_b32 v170, v114
	ds_load_b32 v171, v115
	ds_load_b32 v172, v116
	ds_load_b32 v173, v117
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_dpp v169, v17 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp2:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v174, v17, v17 :: v_dual_max_f32 v175, v18, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_max_f32 v176, v20, v20 :: v_dual_max_f32 v169, v169, v169
	v_max_f32_e32 v178, v171, v171
	v_max_f32_e32 v180, v173, v173
	v_max_f32_e32 v169, v174, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v174, v169 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp4:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v174, v174, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v169, v169, v174
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v174, v18 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v174, v174, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v174, v175, v174
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v175, v169 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v175, v175, v175
	v_max_f32_e32 v169, v169, v175
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v175, v174 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v175, v175, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v174, v174, v175
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v175, v169 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v175, v175, v175
	v_max_f32_e32 v169, v169, v175
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v175, v174 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v175, v175, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v174, v174, v175
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v175, v169, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v175, v175, v175
	v_max_f32_e32 v169, v169, v175
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v175, v174 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s52, v169, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v175, v175, v175
	v_max_f32_e32 v174, v174, v175
	v_max_f32_e32 v175, v19, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v169, v174, -1, -1 op_sel:[1,0]
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v169, v169, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v169, v174, v169
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v174, v19 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s53, v169, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v174, v174, v174
	v_max_f32_e32 v174, v175, v174
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v175, v20 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v175, v175, v175
	v_max_f32_e32 v175, v176, v175
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v176, v174 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v176, v176, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v174, v174, v176
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v176, v175 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v176, v176, v176
	v_max_f32_e32 v175, v175, v176
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v176, v174 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v176, v176, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v174, v174, v176
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v176, v175 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v176, v176, v176
	v_max_f32_e32 v175, v175, v176
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v176, v174 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v176, v176, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v174, v174, v176
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v176, v175 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v176, v176, v176
	v_max_f32_e32 v175, v175, v176
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v176, v174, -1, -1 op_sel:[1,0]
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v176, v176, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v176, v174, v176
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v174, v175, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v174, v174, v174
	v_max_f32_e32 v177, v175, v174
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v174, v170 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v175, v170, v170
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v174, v174, v174
	v_max_f32_e32 v174, v175, v174
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v175, v171 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v175, v175, v175
	v_max_f32_e32 v175, v178, v175
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v178, v174 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v178, v178, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v174, v174, v178
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v178, v175 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v178, v178, v178
	v_max_f32_e32 v175, v175, v178
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v178, v174 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v178, v178, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v174, v174, v178
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v178, v175 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v178, v178, v178
	v_max_f32_e32 v175, v175, v178
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v178, v174 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v178, v178, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v174, v174, v178
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v178, v175 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v178, v178, v178
	v_max_f32_e32 v175, v175, v178
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v178, v174, -1, -1 op_sel:[1,0]
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v178, v178, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v178, v174, v178
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v174, v175, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v174, v174, v174
	v_max_f32_e32 v179, v175, v174
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v174, v172 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v175, v172, v172 :: v_dual_max_f32 v174, v174, v174
	v_max_f32_e32 v174, v175, v174
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v175, v173 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v175, v175, v175
	v_max_f32_e32 v175, v180, v175
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v180, v174 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v180, v180, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v174, v174, v180
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v180, v175 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v180, v180, v180
	v_max_f32_e32 v175, v175, v180
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v180, v174 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v180, v180, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v174, v174, v180
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v180, v175 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v180, v180, v180
	v_max_f32_e32 v175, v175, v180
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v180, v174 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v180, v180, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v174, v174, v180
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v180, v175 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v180, v180, v180
	v_max_f32_e32 v175, v175, v180
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v180, v174, -1, -1 op_sel:[1,0]
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v180, v180, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v180, v174, v180
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v174, v175, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp80:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v174, v174, v174
	v_max_f32_e32 v181, v175, v174
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v175, s53
	v_readlane_b32 s53, v177, 31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v174, s52 :: v_dual_mov_b32 v177, s53
	v_readlane_b32 s52, v176, 31
	v_readlane_b32 s53, v179, 31
	v_mov_b32_e32 v176, s52
	v_readlane_b32 s52, v178, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v179, s53
	v_readlane_b32 s53, v181, 31
	v_mov_b32_e32 v178, s52
	v_readlane_b32 s52, v180, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v181, s53 :: v_dual_mov_b32 v180, s52
	ds_store_b128 v109, v[174:177]
	ds_store_b128 v109, v[178:181] offset:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[174:177], v110 offset:32
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v169, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v169, v169 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp82:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v158, v158, v174, v169
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v169, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v169, v169 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp84:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v159, v159, v175, v169
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v169, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v169, v169 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp86:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v160, v160, v176, v169
.Ltmp87:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v169, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v169, v169 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp88:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v59, v59, v177, v169
.Ltmp89:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	ds_load_b128 v[174:177], v110
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v169, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v169, v169 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp92:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v155, v155, v175, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp93:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_dual_mov_b32 v169, v176 :: v_dual_sub_f32 v18, v18, v155
	v_mov_b32_dpp v169, v169 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp94:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v18, v18
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v156, v156, v176, v169
.Ltmp95:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v169, v177
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp96:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v19, v19, v156
.Ltmp97:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v169, v169 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp98:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v18, 0, v18, s42
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 688 24 is_stmt 1              ; attention.py:688:24
	v_max3_f32 v157, v157, v177, v169
.Ltmp99:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v169, v174
.Ltmp100:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v174, v174, v174
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v18, v18, v18 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp102:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v169, v169 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v18, v18, v18 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp104:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v19, 0, v19, s49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp105:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v169, v169, v169
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v18, v18, v18 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v19, v19, v19 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp107:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v169, v174, v169
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v18, v18, v18 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v19, v19, v19 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp109:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v154, v154, v169
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v19, v19, v19 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp111:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v17, v17, v154
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v19, v19, v19 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp113:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v17, v17
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v17, 0, v17, s41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp114:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v17, v17, v17 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v17, v17, v17 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v17, v17, v17 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v17, v17, v17 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v174, v17, -1, -1 op_sel:[1,0]
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v17, v17, v174
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v174, v18, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s41, v17, 31
.Ltmp118:
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v17, v20, v157 :: v_dual_add_f32 v18, v18, v174
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v174, v19, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp120:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v17, v17
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s42, v18, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v19, v19, v174
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s49, v19, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp124:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v17, 0, v17, s48
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v17, v17, v17 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v17, v17, v17 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v17, v17, v17 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v17, v17, v17 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v18, v17, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v17, v17, v18
.Ltmp128:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v18, v170, v158
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v18, 0, v18, s47
.Ltmp129:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v18, v18, v18 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v18, v18, v18 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v18, v18, v18 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v18, v18, v18 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v19, v18, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v18, v18, v19
.Ltmp132:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v19, v171, v159
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v19, 0, v19, s46
.Ltmp133:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v19, v19, v19 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v19, v19, v19 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v19, v19, v19 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v19, v19, v19 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v20, v19, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v19, v19, v20
.Ltmp136:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v20, v172, v160
.Ltmp137:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s46, v19, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp138:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v20, v20
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v19, s49
.Ltmp140:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v20, 0, v20, s45
.Ltmp141:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s45, v18, 31
	v_mov_b32_e32 v18, s42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp142:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v20, v20, v20 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v20, v20, v20 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v20, v20, v20 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v20, v20, v20 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp143:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v170, v20, -1, -1 op_sel:[1,0]
.Ltmp144:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v20, v20, v170
.Ltmp145:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v170, v173, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp146:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s47, v20, 31
.Ltmp147:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v170, v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp148:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v172, s47
.Ltmp149:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v170, 0, v170, s44
.Ltmp150:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s44, v17, 31
	v_mov_b32_e32 v17, s41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp151:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v170, v170, v170 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp152:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v20, s44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp153:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_dpp v170, v170, v170 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v170, v170, v170 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v170, v170, v170 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp154:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v171, v170, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp155:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v170, v170, v171 :: v_dual_mov_b32 v171, s46
.Ltmp156:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_readlane_b32 s48, v170, 31
	v_mov_b32_e32 v170, s45
.Ltmp157:
	.loc	1 694 30                        ; attention.py:694:30
	s_mul_i32 s45, s86, 6
.Ltmp158:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v173, s48
	ds_store_b128 v109, v[17:20]
	ds_store_b128 v109, v[170:173] offset:32
.Ltmp159:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v17, v168, v165, v166
	v_max3_f32 v18, v40, v164, v38
	v_max3_f32 v19, v39, v30, v37
	v_max3_f32 v20, v28, v29, v26
.Ltmp160:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp161:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v17, v17, v18, v19
	v_max3_f32 v18, v35, v36, v33
	v_max3_f32 v19, v34, v31, v32
	v_max3_f32 v18, v18, v19, v20
	v_max_f32_e32 v19, v9, v10
	v_max3_f32 v20, v12, v13, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v19, v19, v11, v20
	v_max3_f32 v20, v15, v16, v167
	v_max3_f32 v17, v19, v20, v17
	v_dual_max_f32 v19, v27, v24 :: v_dual_max_f32 v20, v22, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v19, v19, v25, v20
	v_max3_f32 v17, v17, v18, v19
.Ltmp162:
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v19, s87, v75
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s87, s87, 64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp163:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v18, v17, s97, 0xfedcba98 op_sel:[1,0]
.Ltmp164:
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s52, s55, v19
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v201, 40, v19
	v_add_nc_u32_e32 v203, 44, v19
	v_add_nc_u32_e32 v205, 48, v19
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v170, v163, v17, v18
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v17.h, v21.l
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v202, 42, v19
	v_add_nc_u32_e32 v204, 46, v19
	v_add_nc_u32_e32 v206, 50, v19
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v10, v10, v170
	v_sub_f32_e32 v9, v9, v170
	v_sub_f32_e32 v12, v12, v170
	v_sub_f32_e32 v11, v11, v170
	v_sub_f32_e32 v14, v14, v170
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v10, v10
	v_exp_f32_e32 v9, v9
	v_exp_f32_e32 v12, v12
	v_exp_f32_e32 v11, v11
	v_exp_f32_e32 v14, v14
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v13, v13, v170
	v_sub_f32_e32 v16, v16, v170
	v_sub_f32_e32 v15, v15, v170
	.loc	1 689 74 is_stmt 1              ; attention.py:689:74
	v_dual_sub_f32 v200, v163, v170 :: v_dual_add_nc_u32 v207, 52, v19
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v10, 0, v10, s43
	v_cndmask_b32_e64 v9, 0, v9, s50
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v12, 0, v12, s40
	v_cndmask_b32_e64 v11, 0, v11, s37
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v14, 0, v14, s39
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v17.l, v10.h
	v_cmp_o_f32_e64 s41, v10, v10
	v_cmp_o_f32_e64 s42, v9, v9
	v_cmp_o_f32_e64 s40, v12, v12
	v_cmp_o_f32_e64 s37, v11, v11
	v_and_b32_e32 v17, 1, v17
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v13, v13
	v_exp_f32_e32 v16, v16
	v_exp_f32_e32 v15, v15
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v200, v200
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v17, v10, v17, 0x7fff
	v_mov_b16_e32 v10.l, v9.h
	v_mov_b16_e32 v10.h, v21.l
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v208, 54, v19
	v_add_nc_u32_e32 v209, 56, v19
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s41
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v13, 0, v13, s38
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v10, 1, v10
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v16, 0, v16, s36
	v_cndmask_b32_e64 v15, 0, v15, s35
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v210, 58, v19
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s38, v13, v13
	v_add3_u32 v10, v9, v10, 0x7fff
	v_cmp_o_f32_e64 s36, v16, v16
	v_cmp_o_f32_e64 s35, v15, v15
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v211, 60, v19
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s52, s2, s52
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v17.l, 0x7fff, v10.h, s42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v10, v17, s97, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v9, v10, v17, v106
	v_perm_b32 v10, v10, v17, v107
	v_mov_b16_e32 v17.l, v12.h
	v_mov_b16_e32 v17.h, v21.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v17, v12, v17, 0x7fff
	v_mov_b16_e32 v12.l, v11.h
	v_mov_b16_e32 v12.h, v21.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s40
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v12, v11, v12, 0x7fff
	v_cndmask_b16 v17.l, 0x7fff, v12.h, s37
	v_cmp_o_f32_e64 s37, v14, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v12, v17, s97, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v11, v12, v17, v106
	v_perm_b32 v12, v12, v17, v107
	v_mov_b16_e32 v17.l, v14.h
	v_mov_b16_e32 v17.h, v21.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v17, v14, v17, 0x7fff
	v_mov_b16_e32 v14.l, v13.h
	v_mov_b16_e32 v14.h, v21.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s37
	v_and_b32_e32 v14, 1, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v14, v13, v14, 0x7fff
	v_cndmask_b16 v17.l, 0x7fff, v14.h, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v14, v17, s97, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v13, v14, v17, v106
	v_perm_b32 v14, v14, v17, v107
	v_mov_b16_e32 v17.l, v16.h
	v_mov_b16_e32 v17.h, v21.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v17, v16, v17, 0x7fff
	v_mov_b16_e32 v16.l, v15.h
	v_mov_b16_e32 v16.h, v21.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s36
	v_and_b32_e32 v16, 1, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v16, v15, v16, 0x7fff
	v_cndmask_b16 v17.l, 0x7fff, v16.h, s35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v16, v17, s97, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v15, v16, v17, v106
	v_perm_b32 v16, v16, v17, v107
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v17, 2, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s44, s55, v17
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v17, 4, v19
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s44, s2, s44
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s43, s55, v17
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_add_nc_u32_e32 v17, 6, v19
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s43, s2, s43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s42, s55, v17
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_add_nc_u32_e32 v17, 8, v19
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s42, s2, s42
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s41, s55, v17
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_add_nc_u32_e32 v17, 10, v19
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s41, s2, s41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s40, s55, v17
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_add_nc_u32_e32 v17, 12, v19
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s40, s2, s40
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s39, s55, v17
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_add_nc_u32_e32 v17, 14, v19
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s39, s2, s39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s38, s55, v17
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_add_nc_u32_e32 v17, 16, v19
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s38, s2, s38
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s37, s55, v17
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_add_nc_u32_e32 v17, 18, v19
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s37, s2, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s36, s55, v17
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_add_nc_u32_e32 v17, 20, v19
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s36, s2, s36
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s35, s55, v17
	v_mad_u64_u32 v[17:18], null, s51, s86, v[58:59]
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s35
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_add_lshl_u32 v172, v17, s45, 1
	s_mul_i32 s45, s86, 10
	v_add_lshl_u32 v171, v17, vcc_hi, 1
	v_add_lshl_u32 v174, v17, s45, 1
	s_mul_i32 s45, s86, 12
	v_add_lshl_u32 v173, v17, s67, 1
	v_add_lshl_u32 v175, v17, s45, 1
	s_mul_i32 s45, s86, 14
	v_add_lshl_u32 v177, v17, s94, 1
	v_add_lshl_u32 v176, v17, s45, 1
	s_mul_i32 s45, s86, 18
	v_lshlrev_b32_e32 v18, 1, v17
	v_add_lshl_u32 v178, v17, s45, 1
	s_mul_i32 s45, s86, 20
	v_add_lshl_u32 v185, v17, s64, 1
	v_add_lshl_u32 v179, v17, s45, 1
	s_mul_i32 s45, s86, 22
	v_add_lshl_u32 v20, v17, s104, 1
	v_add_lshl_u32 v180, v17, s45, 1
	s_mul_i32 s45, s86, 24
	v_cndmask_b32_e64 v18, 0x80000000, v18, s52
	v_add_lshl_u32 v181, v17, s45, 1
	s_mul_i32 s45, s86, 26
	v_cndmask_b32_e64 v20, 0x80000000, v20, s44
	v_add_lshl_u32 v182, v17, s45, 1
	s_mul_i32 s45, s86, 28
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s44, s55, v201
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v183, v17, s45, 1
	s_mul_i32 s45, s86, 30
	v_add_lshl_u32 v193, v17, s98, 1
	v_add_lshl_u32 v184, v17, s45, 1
	s_mul_i32 s45, s86, 34
	v_add_lshl_u32 v194, v17, s99, 1
	v_add_lshl_u32 v186, v17, s45, 1
	s_mul_i32 s45, s86, 36
	v_add_lshl_u32 v195, v17, s100, 1
	v_add_lshl_u32 v187, v17, s45, 1
	s_mul_i32 s45, s86, 38
	v_add_lshl_u32 v196, v17, s101, 1
	v_add_lshl_u32 v188, v17, s45, 1
	s_mul_i32 s45, s86, 40
	v_add_lshl_u32 v197, v17, s102, 1
	v_add_lshl_u32 v189, v17, s45, 1
	s_mul_i32 s45, s86, 42
	v_add_lshl_u32 v198, v17, s65, 1
	v_add_lshl_u32 v190, v17, s45, 1
	s_mul_i32 s45, s86, 44
	v_add_lshl_u32 v199, v17, s66, 1
	v_add_lshl_u32 v191, v17, s45, 1
	s_mul_i32 s45, s86, 46
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v192, v17, s45, 1
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s45, 0xff800000, v163
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v17, v17, s3, 1
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v163, 0, v200, s45
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v200, 38, v19
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v1, v1, v163
	v_mul_f32_e32 v2, v2, v163
	v_mul_f32_e32 v3, v3, v163
	v_mul_f32_e32 v4, v4, v163
	v_mul_f32_e32 v5, v5, v163
	v_mul_f32_e32 v6, v6, v163
	v_mul_f32_e32 v7, v7, v163
	v_mul_f32_e32 v8, v8, v163
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v163, 22, v19
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s52, s55, v200
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_gt_i32_e64 s45, s55, v163
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v163, 24, v19
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s46, s55, v163
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v163, 26, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s47, s55, v163
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v163, 28, v19
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s48, s55, v163
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v163, 30, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s49, s55, v163
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v163, 32, v19
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s50, s55, v163
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v163, 34, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s51, s55, v163
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v163, 36, v19
	v_add_nc_u32_e32 v19, 62, v19
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s53, s55, v163
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v163, 0x80000000, v171, s43
	v_cndmask_b32_e64 v171, 0x80000000, v172, s42
	v_cndmask_b32_e64 v172, 0x80000000, v173, s41
	v_cndmask_b32_e64 v173, 0x80000000, v174, s40
	v_cndmask_b32_e64 v174, 0x80000000, v175, s39
	v_cndmask_b32_e64 v175, 0x80000000, v176, s38
	v_cndmask_b32_e64 v176, 0x80000000, v177, s37
	v_cndmask_b32_e64 v177, 0x80000000, v178, s36
	v_cndmask_b32_e64 v178, 0x80000000, v179, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s45
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s43, s55, v202
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e64 v179, 0x80000000, v180, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s46
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s42, s55, v203
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e64 v180, 0x80000000, v181, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s47
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s47, s55, v19
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e64 v19, 0x80000000, v182, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s48
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s41, s55, v204
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e64 v181, 0x80000000, v183, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s49
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s40, s55, v205
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e64 v182, 0x80000000, v184, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s50
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s39, s55, v206
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e64 v183, 0x80000000, v185, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s51
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s38, s55, v207
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e64 v184, 0x80000000, v186, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s53
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s37, s55, v208
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e64 v185, 0x80000000, v187, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s52
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s36, s55, v209
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e64 v186, 0x80000000, v188, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s44
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s45, s55, v210
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e64 v187, 0x80000000, v189, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s43
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s46, s55, v211
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e64 v188, 0x80000000, v190, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s42
	.loc	1 694 30                        ; attention.py:694:30
	s_clause 0xf
	buffer_load_u16 v189, v18, s[80:83], 0 offen
	buffer_load_u16 v190, v20, s[80:83], 0 offen
	buffer_load_u16 v163, v163, s[80:83], 0 offen
	buffer_load_u16 v171, v171, s[80:83], 0 offen
	buffer_load_u16 v172, v172, s[80:83], 0 offen
	buffer_load_u16 v173, v173, s[80:83], 0 offen
	buffer_load_u16 v174, v174, s[80:83], 0 offen
	buffer_load_u16 v175, v175, s[80:83], 0 offen
	buffer_load_u16 v176, v176, s[80:83], 0 offen
	buffer_load_u16 v177, v177, s[80:83], 0 offen
	buffer_load_u16 v178, v178, s[80:83], 0 offen
	buffer_load_u16 v179, v179, s[80:83], 0 offen
	buffer_load_u16 v180, v180, s[80:83], 0 offen
	buffer_load_u16 v200, v19, s[80:83], 0 offen
	buffer_load_u16 v181, v181, s[80:83], 0 offen
	buffer_load_u16 v182, v182, s[80:83], 0 offen
	v_cndmask_b32_e64 v18, 0x80000000, v191, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s41
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v19, 0x80000000, v192, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s40
	.loc	1 694 30                        ; attention.py:694:30
	s_clause 0x7
	buffer_load_u16 v183, v183, s[80:83], 0 offen
	buffer_load_u16 v184, v184, s[80:83], 0 offen
	buffer_load_u16 v185, v185, s[80:83], 0 offen
	buffer_load_u16 v186, v186, s[80:83], 0 offen
	buffer_load_u16 v187, v187, s[80:83], 0 offen
	buffer_load_u16 v188, v188, s[80:83], 0 offen
	buffer_load_u16 v191, v18, s[80:83], 0 offen
	buffer_load_u16 v192, v19, s[80:83], 0 offen
	v_cndmask_b32_e64 v18, 0x80000000, v193, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s39
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v19, 0x80000000, v194, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s38
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v20, 0x80000000, v195, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v193, 0x80000000, v196, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s36
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v194, 0x80000000, v197, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s45
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v195, 0x80000000, v198, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s46
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v196, 0x80000000, v199, s35
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s35, s2, s47
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s87, s88
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v17, 0x80000000, v17, s35
	s_clause 0x7
	buffer_load_u16 v197, v18, s[80:83], 0 offen
	buffer_load_u16 v198, v19, s[80:83], 0 offen
	buffer_load_u16 v199, v20, s[80:83], 0 offen
	buffer_load_u16 v193, v193, s[80:83], 0 offen
	buffer_load_u16 v194, v194, s[80:83], 0 offen
	buffer_load_u16 v195, v195, s[80:83], 0 offen
	buffer_load_u16 v196, v196, s[80:83], 0 offen
	buffer_load_u16 v201, v17, s[80:83], 0 offen
.Ltmp165:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	ds_load_b128 v[17:20], v110
.Ltmp166:
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v18.h, v21.l
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(31)
	ds_store_b16 v153, v189
	s_waitcnt vmcnt(30)
	ds_store_b16 v153, v190 offset:256
	s_waitcnt vmcnt(29)
	ds_store_b16 v153, v163 offset:512
	s_waitcnt vmcnt(28)
	ds_store_b16 v153, v171 offset:768
	s_waitcnt vmcnt(27)
	ds_store_b16 v153, v172 offset:1024
	s_waitcnt vmcnt(26)
	ds_store_b16 v153, v173 offset:1280
	s_waitcnt vmcnt(25)
	ds_store_b16 v153, v174 offset:1536
	s_waitcnt vmcnt(24)
	ds_store_b16 v153, v175 offset:1792
	s_waitcnt vmcnt(23)
	ds_store_b16 v153, v176 offset:2048
	s_waitcnt vmcnt(22)
	ds_store_b16 v153, v177 offset:2304
	s_waitcnt vmcnt(21)
	ds_store_b16 v153, v178 offset:2560
	s_waitcnt vmcnt(20)
	ds_store_b16 v153, v179 offset:2816
	s_waitcnt vmcnt(19)
	ds_store_b16 v153, v180 offset:3072
	s_waitcnt vmcnt(18)
	ds_store_b16 v153, v200 offset:3328
	s_waitcnt vmcnt(17)
	ds_store_b16 v153, v181 offset:3584
	s_waitcnt vmcnt(16)
	ds_store_b16 v153, v182 offset:3840
	s_waitcnt vmcnt(15)
	ds_store_b16 v153, v183 offset:4096
	s_waitcnt vmcnt(14)
	ds_store_b16 v153, v184 offset:4352
	s_waitcnt vmcnt(13)
	ds_store_b16 v153, v185 offset:4608
	s_waitcnt vmcnt(12)
	ds_store_b16 v153, v186 offset:4864
	s_waitcnt vmcnt(11)
	ds_store_b16 v153, v187 offset:5120
	s_waitcnt vmcnt(10)
	ds_store_b16 v153, v188 offset:5376
	s_waitcnt vmcnt(9)
	ds_store_b16 v153, v191 offset:5632
	s_waitcnt vmcnt(8)
	ds_store_b16 v153, v192 offset:5888
	s_waitcnt vmcnt(7)
	ds_store_b16 v153, v197 offset:6144
	s_waitcnt vmcnt(6)
	ds_store_b16 v153, v198 offset:6400
	s_waitcnt vmcnt(5)
	ds_store_b16 v153, v199 offset:6656
	s_waitcnt vmcnt(4)
	ds_store_b16 v153, v193 offset:6912
	s_waitcnt vmcnt(3)
	ds_store_b16 v153, v194 offset:7168
	s_waitcnt vmcnt(2)
	ds_store_b16 v153, v195 offset:7424
	s_waitcnt vmcnt(1)
	ds_store_b16 v153, v196 offset:7680
	s_waitcnt vmcnt(0)
	ds_store_b16 v153, v201 offset:7936
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v171, v108
	ds_load_u16_d16 v172, v108 offset:256
	ds_load_u16_d16 v173, v108 offset:512
	ds_load_u16_d16 v174, v108 offset:768
	ds_load_u16_d16 v175, v108 offset:1024
	ds_load_u16_d16 v176, v108 offset:1280
	ds_load_u16_d16 v177, v108 offset:1536
	ds_load_u16_d16 v178, v108 offset:1792
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v171, v108 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v172, v108 offset:384
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v173, v108 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v174, v108 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v175, v108 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v176, v108 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v177, v108 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v178, v108 offset:1920
	v_mov_b32_e32 v163, v170
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[171:178], v[9:16], v[1:8]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v9, v168, v170
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
	ds_load_u16_d16 v171, v108 offset:2048
	ds_load_u16_d16 v172, v108 offset:2304
	ds_load_u16_d16 v173, v108 offset:2560
	ds_load_u16_d16 v174, v108 offset:2816
	ds_load_u16_d16 v175, v108 offset:3072
	ds_load_u16_d16 v176, v108 offset:3328
	ds_load_u16_d16 v177, v108 offset:3584
	ds_load_u16_d16 v178, v108 offset:3840
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v171, v108 offset:2176
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v172, v108 offset:2432
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v173, v108 offset:2688
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v174, v108 offset:2944
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v175, v108 offset:3200
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v176, v108 offset:3456
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v177, v108 offset:3712
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v178, v108 offset:3968
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v9, 0, v9, s34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v10.l, v9.h
	v_cmp_o_f32_e64 s34, v9, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v10, 1, v10
	v_add3_u32 v10, v9, v10, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v9, v167, v170
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s34
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v9, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v9, 0, v9, s31
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v11.l, v9.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s31, v9, v9
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v11, v9, v11, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v11.h, s31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v11, v10, s97, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v9, v11, v10, v106
	v_perm_b32 v10, v11, v10, v107
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v11, v166, v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v11, v11
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v11, 0, v11, s29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v12.l, v11.h
	v_cmp_o_f32_e64 s29, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v11, v165, v170
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s29
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v11, 0, v11, s28
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v13.l, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s28, v11, v11
	v_and_b32_e32 v13, 1, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v13, v11, v13, 0x7fff
	v_cndmask_b16 v12.l, 0x7fff, v13.h, s28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v13, v12, s97, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v11, v13, v12, v106
	v_perm_b32 v12, v13, v12, v107
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v13, v164, v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v13, v13
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v13, 0, v13, s25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v14.l, v13.h
	v_cmp_o_f32_e64 s25, v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v14, 1, v14
	v_add3_u32 v14, v13, v14, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v13, v40, v170
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s25
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v13, 0, v13, s22
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v15.l, v13.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s22, v13, v13
	v_and_b32_e32 v15, 1, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v15, v13, v15, 0x7fff
	v_cndmask_b16 v14.l, 0x7fff, v15.h, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v15, v14, s97, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v13, v15, v14, v106
	v_perm_b32 v14, v15, v14, v107
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v15, v39, v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v15, v15
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v15, 0, v15, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v16.l, v15.h
	v_cmp_o_f32_e64 s19, v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v16, 1, v16
	v_add3_u32 v16, v15, v16, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v15, v38, v170
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s19
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v15, 0, v15, s18
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v18.l, v15.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s18, v15, v15
	v_and_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v18, v15, v18, 0x7fff
	v_cndmask_b16 v16.l, 0x7fff, v18.h, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v18, v16, s97, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v15, v18, v16, v106
	v_perm_b32 v16, v18, v16, v107
	v_mov_b16_e32 v18.h, v21.l
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[171:178], v[9:16], v[1:8]
	.loc	1 690 62 is_stmt 1              ; attention.py:690:62
	v_sub_f32_e32 v9, v37, v170
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
	v_cndmask_b32_e64 v9, 0, v9, s12
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v10.l, v9.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s12, v9, v9
	v_and_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v10, v9, v10, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v9, v30, v170
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v9, v9
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v9, 0, v9, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v11.l, v9.h
	v_cmp_o_f32_e64 s11, v9, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v11, v9, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v10.l, 0x7fff, v11.h, s11
	v_permlanex16_b32 v11, v10, s97, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v9, v11, v10, v106
	v_perm_b32 v10, v11, v10, v107
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v11, v36, v170
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v11, 0, v11, s33
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v12.l, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s11, v11, v11
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v11, v35, v170
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v11, v11
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e32 v11, 0, v11, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v13.l, v11.h
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v13, v11, v13, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v12.l, 0x7fff, v13.h, vcc_lo
	v_permlanex16_b32 v13, v12, s97, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v11, v13, v12, v106
	v_perm_b32 v12, v13, v12, v107
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v13, v34, v170
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
	v_sub_f32_e32 v13, v33, v170
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v14.h, 0x7fff, v14.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v13, v13
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v13, 0, v13, s27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v15.l, v13.h
	v_cmp_o_f32_e64 s11, v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v15, 1, v15
	v_add3_u32 v15, v13, v15, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v14.l, 0x7fff, v15.h, s11
	v_permlanex16_b32 v15, v14, s97, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v13, v15, v14, v106
	v_perm_b32 v14, v15, v14, v107
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v15, v32, v170
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v15, 0, v15, s26
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v16.l, v15.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	v_and_b32_e32 v16, 1, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v16, v15, v16, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v15, v31, v170
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v30, v108 offset:4096
	ds_load_u16_d16 v31, v108 offset:4352
	ds_load_u16_d16 v32, v108 offset:4608
	ds_load_u16_d16 v33, v108 offset:4864
	ds_load_u16_d16 v34, v108 offset:5120
	ds_load_u16_d16 v35, v108 offset:5376
	ds_load_u16_d16 v36, v108 offset:5632
	ds_load_u16_d16 v37, v108 offset:5888
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v30, v108 offset:4224
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v31, v108 offset:4480
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v32, v108 offset:4736
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v33, v108 offset:4992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v34, v108 offset:5248
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v35, v108 offset:5504
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v36, v108 offset:5760
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v37, v108 offset:6016
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v15, v15
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v16.h, 0x7fff, v16.h, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v15, 0, v15, s23
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v18.l, v15.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s11, v15, v15
	v_and_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v18, v15, v18, 0x7fff
	v_cndmask_b16 v16.l, 0x7fff, v18.h, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v18, v16, s97, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v15, v18, v16, v106
	v_perm_b32 v16, v18, v16, v107
	v_mov_b16_e32 v18.h, v21.l
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[30:37], v[9:16], v[1:8]
	.loc	1 690 62 is_stmt 1              ; attention.py:690:62
	v_sub_f32_e32 v9, v29, v170
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v10.h, v21.l
	v_mov_b16_e32 v11.h, v21.l
	v_mov_b16_e32 v12.h, v21.l
	v_mov_b16_e32 v16.h, v21.l
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v9, v9
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v13.h, v21.l
	v_mov_b16_e32 v14.h, v21.l
	v_mov_b16_e32 v15.h, v21.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v9, 0, v9, s14
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v10.l, v9.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_and_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v10, v9, v10, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v9, v28, v170
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v10.h, 0x7fff, v10.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v9, v9
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v9, 0, v9, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v11.l, v9.h
	v_cmp_o_f32_e64 s11, v9, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v11, v9, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v10.l, 0x7fff, v11.h, s11
	v_permlanex16_b32 v11, v10, s97, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v9, v11, v10, v106
	v_perm_b32 v10, v11, v10, v107
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v11, v27, v170
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
	v_sub_f32_e32 v11, v26, v170
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
	v_cmp_o_f32_e64 s11, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v13, v11, v13, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v12.l, 0x7fff, v13.h, s11
	v_permlanex16_b32 v13, v12, s97, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v11, v13, v12, v106
	v_perm_b32 v12, v13, v12, v107
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v13, v25, v170
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
	v_sub_f32_e32 v13, v24, v170
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v14.h, 0x7fff, v14.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v13, v13
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v13, 0, v13, s17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v15.l, v13.h
	v_cmp_o_f32_e64 s11, v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v15, 1, v15
	v_add3_u32 v15, v13, v15, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v14.l, 0x7fff, v15.h, s11
	v_permlanex16_b32 v15, v14, s97, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v13, v15, v14, v106
	v_perm_b32 v14, v15, v14, v107
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v15, v23, v170
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v15, 0, v15, s16
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v16.l, v15.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	v_and_b32_e32 v16, 1, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v16, v15, v16, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v15, v22, v170
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v16.h, 0x7fff, v16.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v15, v15
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v162
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v15, 0, v15, s15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v18.l, v15.h
	v_cmp_o_f32_e64 s11, v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v18, 1, v18
	v_add3_u32 v18, v15, v18, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v16.l, 0x7fff, v18.h, s11
	v_permlanex16_b32 v18, v16, s97, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v15, v18, v16, v106
	v_perm_b32 v16, v18, v16, v107
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v18, v108 offset:6144
	ds_load_u16_d16 v19, v108 offset:6400
	ds_load_u16_d16 v20, v108 offset:6656
	ds_load_u16_d16 v21, v108 offset:6912
	ds_load_u16_d16 v22, v108 offset:7168
	ds_load_u16_d16 v23, v108 offset:7424
	ds_load_u16_d16 v24, v108 offset:7680
	ds_load_u16_d16 v25, v108 offset:7936
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v18, v108 offset:6272
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v19, v108 offset:6528
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v20, v108 offset:6784
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v21, v108 offset:7040
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v22, v108 offset:7296
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v23, v108 offset:7552
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v24, v108 offset:7808
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v25, v108 offset:8064
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[18:25], v[9:16], v[1:8]
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v10, v162, v162 :: v_dual_mov_b32 v9, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v10, v10, v169
.Ltmp167:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp168:
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v11, v162, v10
.Ltmp169:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v9, v17, v9 :: v_dual_mov_b32 v162, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp170:
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v11, v11
	.loc	1 689 25 is_stmt 0              ; attention.py:689:25
	v_cndmask_b32_e32 v11, 0, v11, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fmac_f32_e32 v9, v161, v11
	v_mov_b32_e32 v161, v9
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc0 .LBB0_12
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v9, s87, v60
	.loc	1 633 32                        ; attention.py:633:32
	s_add_i32 s51, s87, s90
	s_mul_i32 s27, s85, 20
	s_mul_i32 s26, s51, s85
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v171, s63 :: v_dual_add_nc_u32 v22, s26, v62
	v_dual_mov_b32 v170, s62 :: v_dual_add_nc_u32 v23, s26, v63
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v10, 4, v9
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s24, s55, v9
	.loc	1 633 32                        ; attention.py:633:32
	v_add_nc_u32_e32 v24, s26, v44
	.loc	1 649 37                        ; attention.py:649:37
	s_mov_b32 s74, s78
	s_mov_b32 s75, s79
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e32 vcc_lo, s55, v10
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v10, 8, v9
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 s24, s4, s24
	.loc	1 639 33                        ; attention.py:639:33
	v_mov_b32_e32 v169, s61
	v_mov_b32_e32 v167, s59
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 636 73 is_stmt 0              ; attention.py:636:73
	v_cmp_gt_i32_e64 s11, s55, v10
	.loc	1 639 33 is_stmt 1              ; attention.py:639:33
	v_dual_mov_b32 v165, s57 :: v_dual_add_nc_u32 v10, 12, v9
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 639 33                        ; attention.py:639:33
	v_mov_b32_e32 v168, s60
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 636 73 is_stmt 0              ; attention.py:636:73
	v_cmp_gt_i32_e64 s12, s55, v10
	.loc	1 634 32 is_stmt 1              ; attention.py:634:32
	v_dual_cndmask_b32 v23, 0x80000000, v23 :: v_dual_add_nc_u32 v10, 16, v9
	.loc	1 639 33                        ; attention.py:639:33
	v_mov_b32_e32 v166, s58
	v_mov_b32_e32 v164, s56
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s13, s55, v10
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v10, 20, v9
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 636 73 is_stmt 0              ; attention.py:636:73
	v_cmp_gt_i32_e64 s14, s55, v10
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_add_nc_u32_e32 v10, 24, v9
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s15, s55, v10
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v10, 28, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s16, s55, v10
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v10, 32, v9
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s17, s55, v10
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v10, 36, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s18, s55, v10
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v10, 40, v9
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s19, s55, v10
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v10, 44, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s20, s55, v10
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v10, 48, v9
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s21, s55, v10
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v10, 52, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s22, s55, v10
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v10, 56, v9
	v_add_nc_u32_e32 v9, 60, v9
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s23, s55, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_gt_i32_e64 s25, s55, v9
	.loc	1 633 32                        ; attention.py:633:32
	v_add_nc_u32_e32 v9, s26, v43
	v_add_nc_u32_e32 v11, s27, v9
	s_mul_i32 s27, s85, 24
	v_add_nc_u32_e32 v10, s54, v9
	v_add_nc_u32_e32 v12, s27, v9
	s_mul_i32 s27, s85, 28
	v_add_nc_u32_e32 v14, s95, v9
	v_add_nc_u32_e32 v13, s27, v9
	s_mul_i32 s27, s85, 36
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	v_add_nc_u32_e32 v15, s27, v9
	s_mul_i32 s27, s85, 40
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s14
	v_add_nc_u32_e32 v16, s27, v9
	s_mul_i32 s27, s85, 44
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	v_add_nc_u32_e32 v17, s27, v9
	s_mul_i32 s27, s85, 48
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s15
	v_add_nc_u32_e32 v18, s27, v9
	s_mul_i32 s27, s85, 52
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	v_add_nc_u32_e32 v19, s27, v9
	s_mul_i32 s27, s85, 56
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s12
	v_add_nc_u32_e32 v20, s27, v9
	s_mul_i32 s27, s85, 60
	s_delay_alu instid0(SALU_CYCLE_1)
	v_add_nc_u32_e32 v21, s27, v9
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s17
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e64 v9, 0x80000000, v9, s24
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s21
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s18
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s19
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s22
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s16
	.loc	1 634 32                        ; attention.py:634:32
	s_clause 0x3
	buffer_load_u8 v14, v14, s[76:79], 0 offen
	buffer_load_u8 v18, v18, s[76:79], 0 offen
	buffer_load_u8 v15, v15, s[76:79], 0 offen
	buffer_load_u8 v19, v19, s[76:79], 0 offen
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s23
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s20
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s25
	.loc	1 634 32                        ; attention.py:634:32
	s_clause 0x5
	buffer_load_u8 v9, v9, s[76:79], 0 offen
	buffer_load_u8 v22, v22, s[76:79], 0 offen
	buffer_load_u8 v23, v23, s[76:79], 0 offen
	buffer_load_u8 v10, v10, s[76:79], 0 offen
	buffer_load_u8 v11, v11, s[76:79], 0 offen
	buffer_load_u8 v12, v12, s[76:79], 0 offen
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	s_clause 0x5
	buffer_load_u8 v16, v16, s[76:79], 0 offen
	buffer_load_u8 v20, v20, s[76:79], 0 offen
	buffer_load_u8 v13, v13, s[76:79], 0 offen
	buffer_load_u8 v24, v24, s[76:79], 0 offen
	buffer_load_u8 v21, v21, s[76:79], 0 offen
	buffer_load_u8 v17, v17, s[76:79], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(11)
	ds_store_b8 v65, v9
	s_waitcnt vmcnt(8)
	ds_store_b8 v65, v10 offset:512
	ds_store_b8 v65, v14 offset:1024
	ds_store_b8 v65, v18 offset:1536
	ds_store_b8 v66, v22
	s_waitcnt vmcnt(7)
	ds_store_b8 v66, v11 offset:512
	ds_store_b8 v66, v15 offset:1024
	ds_store_b8 v66, v19 offset:1536
	ds_store_b8 v67, v23
	s_waitcnt vmcnt(6)
	ds_store_b8 v67, v12 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v67, v16 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v67, v20 offset:1536
	s_waitcnt vmcnt(2)
	ds_store_b8 v68, v24
	ds_store_b8 v68, v13 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v68, v17 offset:1024
	ds_store_b8 v68, v21 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[9:12], v69 offset1:1
	ds_load_2addr_stride64_b64 v[172:175], v69 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[9:10], v[45:46], v[164:171] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[11:12], v[45:46], v[164:171] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[172:173], v[45:46], v[164:171] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[174:175], v[45:46], v[164:171] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[164:167], v70 offset1:1
	ds_load_2addr_stride64_b64 v[168:171], v70 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[164:165], v[47:48], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[166:167], v[47:48], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[168:169], v[47:48], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[170:171], v[47:48], v[33:40] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[164:167], v71 offset1:1
	ds_load_2addr_stride64_b64 v[168:171], v71 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[164:165], v[49:50], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[166:167], v[49:50], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[168:169], v[49:50], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[170:171], v[49:50], v[33:40] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[164:167], v72 offset1:1
	ds_load_2addr_stride64_b64 v[168:171], v72 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[164:165], v[51:52], v[25:32] neg_lo:[1,1,0]
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v164, s87, v76
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[17:24], v[166:167], v[51:52], v[17:24] neg_lo:[1,1,0]
	.loc	1 650 25                        ; attention.py:650:25
	v_add_lshl_u32 v165, s51, v76, 1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[168:169], v[51:52], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[170:171], v[51:52], v[33:40] neg_lo:[1,1,0]
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v166, 2, v164
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s41, s55, v164
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v167, 4, v165
	v_add_nc_u32_e32 v168, 8, v165
	v_add_nc_u32_e32 v169, 12, v165
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e32 vcc_lo, s55, v166
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v166, 4, v164
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v170, 16, v165
	v_add_nc_u32_e32 v171, 20, v165
	v_add_nc_u32_e32 v172, 24, v165
	v_add_nc_u32_e32 v173, 28, v165
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s11, s55, v166
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v166, 6, v164
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v174, 32, v165
	v_add_nc_u32_e32 v175, 36, v165
	v_add_nc_u32_e32 v176, 40, v165
	v_add_nc_u32_e32 v177, 44, v165
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s12, s55, v166
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v166, 8, v164
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v178, 48, v165
	v_add_nc_u32_e32 v179, 52, v165
	v_add_nc_u32_e32 v180, 56, v165
	v_add_nc_u32_e32 v182, 64, v165
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s13, s55, v166
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v166, 10, v164
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v181, 60, v165
	v_add_nc_u32_e32 v183, 0x44, v165
	v_add_nc_u32_e32 v184, 0x48, v165
	v_add_nc_u32_e32 v185, 0x4c, v165
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s14, s55, v166
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v166, 12, v164
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v186, 0x50, v165
	v_add_nc_u32_e32 v187, 0x54, v165
	v_add_nc_u32_e32 v188, 0x58, v165
	v_add_nc_u32_e32 v189, 0x5c, v165
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s15, s55, v166
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v166, 14, v164
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v190, 0x60, v165
	v_add_nc_u32_e32 v191, 0x64, v165
	v_add_nc_u32_e32 v192, 0x68, v165
	v_add_nc_u32_e32 v193, 0x6c, v165
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s16, s55, v166
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v166, 16, v164
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v194, 0x70, v165
	v_add_nc_u32_e32 v195, 0x74, v165
	v_add_nc_u32_e32 v196, 0x78, v165
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s17, s55, v166
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v166, 18, v164
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s18, s55, v166
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v166, 20, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s19, s55, v166
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v166, 22, v164
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s20, s55, v166
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v166, 24, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s21, s55, v166
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v166, 26, v164
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s22, s55, v166
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v166, 28, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s23, s55, v166
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v166, 30, v164
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s24, s55, v166
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v166, 32, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v197, 0x80000000, v181, s24
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s25, s55, v166
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v166, 34, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v182, 0x80000000, v182, s25
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s26, s55, v166
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v166, 36, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v198, 0x80000000, v183, s26
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s27, s55, v166
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v166, 38, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v199, 0x80000000, v184, s27
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s28, s55, v166
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v166, 40, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v200, 0x80000000, v185, s28
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s29, s55, v166
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v166, 42, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v201, 0x80000000, v186, s29
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s30, s55, v166
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v166, 44, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v202, 0x80000000, v187, s30
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s31, s55, v166
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v166, 46, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v203, 0x80000000, v188, s31
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s33, s55, v166
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v166, 48, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v204, 0x80000000, v189, s33
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s34, s55, v166
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v166, 50, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v205, 0x80000000, v190, s34
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s35, s55, v166
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v166, 52, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v206, 0x80000000, v191, s35
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s36, s55, v166
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v166, 54, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v207, 0x80000000, v192, s36
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s37, s55, v166
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v166, 56, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v208, 0x80000000, v193, s37
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s38, s55, v166
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v166, 58, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v209, 0x80000000, v194, s38
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s39, s55, v166
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v166, 60, v164
	v_add_nc_u32_e32 v164, 62, v164
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v210, 0x80000000, v195, s39
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s40, s55, v166
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v166, 0x7c, v165
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_gt_i32_e64 s42, s55, v164
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v164, 0x80000000, v165, s41
	v_cndmask_b32_e32 v165, 0x80000000, v167, vcc_lo
	v_cndmask_b32_e64 v167, 0x80000000, v168, s11
	v_cndmask_b32_e64 v168, 0x80000000, v169, s12
	v_cndmask_b32_e64 v169, 0x80000000, v170, s13
	v_cndmask_b32_e64 v170, 0x80000000, v171, s14
	v_cndmask_b32_e64 v171, 0x80000000, v172, s15
	v_cndmask_b32_e64 v172, 0x80000000, v173, s16
	v_cndmask_b32_e64 v173, 0x80000000, v174, s17
	v_cndmask_b32_e64 v174, 0x80000000, v175, s18
	v_cndmask_b32_e64 v175, 0x80000000, v176, s19
	v_cndmask_b32_e64 v176, 0x80000000, v177, s20
	v_cndmask_b32_e64 v177, 0x80000000, v178, s21
	v_cndmask_b32_e64 v178, 0x80000000, v179, s22
	v_cndmask_b32_e64 v179, 0x80000000, v180, s23
	v_cndmask_b32_e64 v196, 0x80000000, v196, s40
	v_cndmask_b32_e64 v211, 0x80000000, v166, s42
	s_clause 0x1f
	buffer_load_u16 v190, v164, s[72:75], 0 offen
	buffer_load_u16 v192, v165, s[72:75], 0 offen
	buffer_load_u16 v193, v167, s[72:75], 0 offen
	buffer_load_u16 v194, v168, s[72:75], 0 offen
	buffer_load_u16 v186, v169, s[72:75], 0 offen
	buffer_load_u16 v188, v170, s[72:75], 0 offen
	buffer_load_u16 v189, v171, s[72:75], 0 offen
	buffer_load_u16 v191, v172, s[72:75], 0 offen
	buffer_load_u16 v195, v173, s[72:75], 0 offen
	buffer_load_u16 v185, v174, s[72:75], 0 offen
	buffer_load_u16 v181, v175, s[72:75], 0 offen
	buffer_load_u16 v184, v176, s[72:75], 0 offen
	buffer_load_u16 v187, v177, s[72:75], 0 offen
	buffer_load_u16 v178, v178, s[72:75], 0 offen
	buffer_load_u16 v180, v179, s[72:75], 0 offen
	buffer_load_u16 v183, v197, s[72:75], 0 offen
	buffer_load_u16 v164, v182, s[72:75], 0 offen
	buffer_load_u16 v179, v198, s[72:75], 0 offen
	buffer_load_u16 v177, v199, s[72:75], 0 offen
	buffer_load_u16 v176, v200, s[72:75], 0 offen
	buffer_load_u16 v175, v201, s[72:75], 0 offen
	buffer_load_u16 v174, v202, s[72:75], 0 offen
	buffer_load_u16 v173, v203, s[72:75], 0 offen
	buffer_load_u16 v172, v204, s[72:75], 0 offen
	buffer_load_u16 v171, v205, s[72:75], 0 offen
	buffer_load_u16 v170, v206, s[72:75], 0 offen
	buffer_load_u16 v169, v207, s[72:75], 0 offen
	buffer_load_u16 v168, v208, s[72:75], 0 offen
	buffer_load_u16 v167, v209, s[72:75], 0 offen
	buffer_load_u16 v166, v210, s[72:75], 0 offen
	buffer_load_u16 v165, v196, s[72:75], 0 offen
	buffer_load_u16 v182, v211, s[72:75], 0 offen
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v196, s87, v42
	.loc	1 667 17                        ; attention.py:667:17
	v_cmp_ne_u32_e32 vcc_lo, 1, v74
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s11, s55, v196
	.loc	1 667 17                        ; attention.py:667:17
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s34, s0, s11
	s_and_b32 s33, s1, s11
	s_and_b32 s29, s5, s11
	s_and_b32 s31, s6, s11
	s_and_b32 s30, s7, s11
	s_and_b32 s28, s8, s11
	s_and_b32 s27, s9, s11
	s_and_b32 s26, s10, s11
	.loc	1 667 17                        ; attention.py:667:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e32 vcc_lo, v196, v77
	v_cmp_le_i32_e64 s11, v196, v78
	v_cmp_le_i32_e64 s12, v196, v79
	v_cmp_le_i32_e64 s13, v196, v80
	v_cmp_le_i32_e64 s14, v196, v81
	v_cmp_le_i32_e64 s15, v196, v82
	.loc	1 668 21 is_stmt 0              ; attention.py:668:21
	s_and_b32 s18, vcc_lo, s34
	s_and_b32 s11, s11, s33
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s16, v196, v83
	v_cmp_le_i32_e64 s17, v196, v84
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s12, s12, s29
	s_and_b32 s13, s13, s31
	s_and_not1_b32 s19, s34, exec_lo
	s_and_b32 s18, s18, exec_lo
	s_and_not1_b32 s20, s33, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_b32 s14, s14, s30
	s_and_b32 s15, s15, s28
	s_or_b32 s34, s19, s18
	s_or_b32 s33, s20, s11
	s_and_not1_b32 s11, s29, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s18, s31, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s27
	s_and_b32 s17, s17, s26
	s_or_b32 s29, s11, s12
	s_or_b32 s31, s18, s13
	s_and_not1_b32 s11, s30, exec_lo
	s_and_b32 s12, s14, exec_lo
	s_and_not1_b32 s13, s28, exec_lo
	s_and_b32 s14, s15, exec_lo
	s_or_b32 s30, s11, s12
	s_or_b32 s28, s13, s14
	s_and_not1_b32 s11, s27, exec_lo
	s_and_b32 s12, s16, exec_lo
	s_and_not1_b32 s13, s26, exec_lo
	s_and_b32 s14, s17, exec_lo
	s_or_b32 s27, s11, s12
	s_or_b32 s26, s13, s14
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 669 17 is_stmt 1              ; attention.py:669:17
	s_and_not1_b32 vcc_lo, exec_lo, s84
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e32 vcc_lo, v196, v86
	v_cmp_ge_i32_e64 s11, v196, v87
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s18, v196, v94
	v_cmp_le_i32_e64 s19, v196, v95
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s12, v196, v88
	v_cmp_ge_i32_e64 s13, v196, v89
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s20, v196, v96
	v_cmp_le_i32_e64 s21, v196, v97
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s14, v196, v90
	v_cmp_ge_i32_e64 s15, v196, v91
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s22, v196, v98
	v_cmp_le_i32_e64 s23, v196, v99
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s18, vcc_lo, s18
	s_and_b32 s11, s11, s19
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s16, v196, v92
	v_cmp_ge_i32_e64 s17, v196, v93
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s24, v196, v100
	v_cmp_le_i32_e64 s25, v196, v101
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s18, s18, s34
	s_and_b32 s11, s11, s33
	s_and_b32 s12, s12, s20
	s_and_b32 s13, s13, s21
	s_and_b32 s12, s12, s29
	s_and_b32 s13, s13, s31
	s_and_b32 s14, s14, s22
	s_and_b32 s15, s15, s23
	s_and_not1_b32 s19, s34, exec_lo
	s_and_b32 s18, s18, exec_lo
	s_and_not1_b32 s20, s33, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_b32 s14, s14, s30
	s_and_b32 s15, s15, s28
	s_and_b32 s16, s16, s24
	s_and_b32 s17, s17, s25
	s_or_b32 s34, s19, s18
	s_or_b32 s33, s20, s11
	s_and_not1_b32 s11, s29, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s18, s31, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s27
	s_and_b32 s17, s17, s26
	s_or_b32 s29, s11, s12
	s_or_b32 s31, s18, s13
	s_and_not1_b32 s11, s30, exec_lo
	s_and_b32 s12, s14, exec_lo
	s_and_not1_b32 s13, s28, exec_lo
	s_and_b32 s14, s15, exec_lo
	s_or_b32 s30, s11, s12
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
.Ltmp171:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_add_f32 v11, 0, v9
	v_readlane_b32 s16, v239, 0
	v_readlane_b32 s26, v239, 5
	v_readlane_b32 s27, v239, 6
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v10, 0xff800000, v10
	v_readlane_b32 s28, v239, 4
	v_readlane_b32 s17, v239, 1
	v_readlane_b32 s18, v239, 2
	v_readlane_b32 s19, v239, 3
.Ltmp172:
.LBB0_13:                               ; %._crit_edge
	.loc	1 830 26                        ; attention.py:830:26
	v_cmp_eq_u32_e64 s0, 0, v64
.Ltmp173:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_lshrrev_b32_e32 v12, 4, v73
.Ltmp174:
	.loc	1 825 26                        ; attention.py:825:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v73
.Ltmp175:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_and_b32_e32 v9, 1, v0
	s_waitcnt lgkmcnt(0)
.Ltmp176:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e64 v1, 0, v1, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 825 17                        ; attention.py:825:17
	v_cndmask_b32_e32 v10, 0xff800000, v10, vcc_lo
	.loc	1 828 36                        ; attention.py:828:36
	v_dual_cndmask_b32 v11, 0, v11 :: v_dual_add_nc_u32 v12, 0, v12
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp177:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v14, v1 :: v_dual_mov_b32 v15, v2
.Ltmp178:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_lshl_add_u32 v13, v9, 2, 0
	s_barrier
	ds_store_b32 v12, v10
.Ltmp179:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v16, v3
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp180:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp181:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v1, v1, v14
.Ltmp182:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp183:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	ds_load_b32 v10, v13
.Ltmp184:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v12, v11
.Ltmp185:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v2, v2, v15 :: v_dual_add_f32 v3, v3, v16
.Ltmp186:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v12, v1
.Ltmp187:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v11, v13
.Ltmp188:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v13, v2
	v_mov_b32_dpp v12, v12 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v14, v3
.Ltmp189:
	.loc	1 830 17 is_stmt 1              ; attention.py:830:17
	v_cndmask_b32_e64 v17, 0, v4, s0
	v_cndmask_b32_e64 v18, 0, v5, s0
.Ltmp190:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp191:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v1, v1, v12
.Ltmp192:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp193:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
.Ltmp194:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v2, v2, v13
.Ltmp195:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v13, v10
.Ltmp196:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v3, v3, v14 :: v_dual_mov_b32 v14, v1
.Ltmp197:
	.loc	1 822 31                        ; attention.py:822:31
	s_mul_i32 s1, s28, s27
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp198:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v15, v2
.Ltmp199:
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s86, s86, 2
	.loc	1 822 31                        ; attention.py:822:31
	s_add_i32 s1, s26, s1
.Ltmp200:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v16, v3
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp201:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v12, v11
.Ltmp202:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v20, v7 :: v_dual_add_f32 v1, v1, v14
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp203:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v2, v2, v15
.Ltmp204:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e64 v14, 0, v6, s0
.Ltmp205:
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
.Ltmp206:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v15, v17, v15
.Ltmp207:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp208:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v7, v7, v20 :: v_dual_add_f32 v8, v8, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v16, v18, v16 :: v_dual_mov_b32 v17, v15
	v_add_f32_e32 v14, v14, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp209:
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
.Ltmp210:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v15, v15, v17
.Ltmp211:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp212:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp213:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp214:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v16, v16, v18 :: v_dual_mov_b32 v17, v15
	v_add_f32_e32 v14, v14, v19
	v_dual_add_f32 v18, v7, v20 :: v_dual_add_f32 v19, v8, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp215:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v7, v16
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v20, v14
	v_dual_mov_b32 v21, v18 :: v_dual_mov_b32 v22, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp216:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v8, v15, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp217:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp218:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v7, v16, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp219:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v15, v8 :: v_dual_add_f32 v16, v14, v20
.Ltmp220:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v18, v18, v21 :: v_dual_add_f32 v19, v19, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp221:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v14, v7
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v17, v16 :: v_dual_mov_b32 v20, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v21, v19
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v15, v15 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp222:
	.loc	1 833 13                        ; attention.py:833:13
	v_or_b32_e32 v22, v60, v41
.Ltmp223:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp224:
	.loc	1 822 30                        ; attention.py:822:30
	s_mul_i32 s4, s1, s86
	.loc	1 833 13                        ; attention.py:833:13
	s_mov_b32 s1, exec_lo
	v_cmpx_eq_u32_e32 0, v22
	s_cbranch_execz .LBB0_15
; %bb.14:
.Ltmp225:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v10, v10, v10
.Ltmp226:
	.loc	1 833 13                        ; attention.py:833:13
	s_ashr_i32 s5, s4, 31
.Ltmp227:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v11, v11, v12
.Ltmp228:
	.loc	1 833 13                        ; attention.py:833:13
	s_lshl_b64 s[6:7], s[4:5], 2
	v_mov_b32_e32 v12, 0
.Ltmp229:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v10, v10, v13
.Ltmp230:
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
.Ltmp231:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v10, v16, v17
	v_dual_add_f32 v17, v4, v6 :: v_dual_add_f32 v12, v19, v21
	v_add_f32_e32 v11, v18, v20
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp232:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v0, 0xc0, v0
.Ltmp233:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v18, v8, v15
	v_add_f32_e32 v16, v2, v5
	v_dual_add_f32 v15, v1, v3 :: v_dual_and_b32 v2, 0xe0, v61
.Ltmp234:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v1, 28, v61
	v_lshlrev_b32_e32 v3, 5, v9
	s_and_b32 vcc_lo, vcc_lo, s2
	v_add_nc_u32_e32 v0, 0, v0
	v_add_nc_u32_e32 v2, 0, v2
.Ltmp235:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v9, v7, v14
.Ltmp236:
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
.Ltmp237:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
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
		.amdhsa_next_free_vgpr 240
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.num_vgpr, 240
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18148
; TotalNumSgprs: 107
; NumVgprs: 240
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 29
; NumSGPRsForWavesPerEU: 107
; NumVGPRsForWavesPerEU: 240
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
	.quad	.Ltmp227                        ; DW_AT_low_pc
	.long	.Ltmp228-.Ltmp227               ; DW_AT_high_pc
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
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
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
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
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
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
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
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     107
    .sgpr_spill_count: 7
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     240
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
