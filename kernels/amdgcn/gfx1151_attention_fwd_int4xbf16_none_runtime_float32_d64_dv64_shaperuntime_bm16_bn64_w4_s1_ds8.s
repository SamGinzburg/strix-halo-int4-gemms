	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[8:11], s[0:1], 0x80
	s_load_b32 s28, s[0:1], 0x68
	s_mov_b32 s27, s3
                                        ; implicit-def: $vgpr178 : SGPR spill to VGPR lane
	s_clause 0x1
	s_load_b128 s[64:67], s[0:1], 0x4c
	s_load_b32 s40, s[0:1], 0x60
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_and_b32_e32 v49, 31, v0
	v_lshrrev_b32_e32 v67, 5, v0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	v_and_b32_e32 v71, 15, v0
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v6, 0x110, v0
	v_xor_b32_e32 v7, 0x198, v0
	v_lshlrev_b32_e32 v68, 1, v0
	v_add_nc_u32_e32 v72, 0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v74, 0, v6
	v_add_nc_u32_e32 v75, 0, v7
	s_waitcnt lgkmcnt(0)
	s_and_b32 s3, 1, s8
	s_bitcmp1_b32 s8, 8
	s_cselect_b32 s4, -1, 0
	s_cmp_eq_u32 s3, 1
	v_writelane_b32 v178, s4, 0
	s_cselect_b32 s3, -1, 0
	.loc	1 609 32                        ; attention.py:609:32
	s_abs_i32 s21, s28
	.loc	1 559 27                        ; attention.py:559:27
	s_abs_i32 s5, s2
	.loc	1 609 32                        ; attention.py:609:32
	s_cvt_f32_u32 s4, s21
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s6, s2, s28
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[51:52], null, s40, v67, v[49:50]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 609 32                        ; attention.py:609:32
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 559 27                        ; attention.py:559:27
	s_ashr_i32 s6, s6, 31
	.loc	1 583 26                        ; attention.py:583:26
	s_mul_i32 s14, s27, s66
	.loc	1 584 26                        ; attention.py:584:26
	v_lshl_add_u32 v69, s40, 2, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mad_u64_u32 v[52:53], null, s40, 12, v[51:52]
	v_lshl_add_u32 v70, s40, 3, v51
	.loc	1 609 32                        ; attention.py:609:32
	v_readfirstlane_b32 s4, v1
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
	s_mul_i32 s7, s4, s21
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s7
	s_add_i32 s7, s4, 1
	s_sub_i32 s12, s5, s21
	s_cmp_ge_u32 s5, s21
	s_cselect_b32 s4, s7, s4
	s_cselect_b32 s5, s12, s5
	s_add_i32 s7, s4, 1
	s_cmp_ge_u32 s5, s21
	s_cselect_b32 s4, s7, s4
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s5, s64
	.loc	1 566 23                        ; attention.py:566:23
	s_abs_i32 s13, s27
	s_cvt_f32_u32 s7, s5
	s_sub_i32 s12, 0, s5
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 566 23                        ; attention.py:566:23
	v_rcp_iflag_f32_e32 v1, s7
	.loc	1 559 27                        ; attention.py:559:27
	s_sub_i32 s4, s4, s6
	.loc	1 560 27                        ; attention.py:560:27
	s_mul_i32 s6, s4, s28
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s20, s4, 4
	.loc	1 560 27                        ; attention.py:560:27
	s_sub_i32 s26, s2, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 566 23                        ; attention.py:566:23
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s12, s12, s7
	s_mul_hi_u32 s12, s7, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s12
	s_mul_hi_u32 s7, s13, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s4, s7, s5
	s_sub_i32 s2, s13, s4
	s_add_i32 s4, s7, 1
	s_sub_i32 s6, s2, s5
	s_cmp_ge_u32 s2, s5
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x0
	s_load_b64 s[12:13], s[0:1], 0x18
	s_cselect_b32 s4, s4, s7
	s_cselect_b32 s2, s6, s2
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s2, s5
	s_cselect_b32 s7, s6, s4
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s6, s65
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e64 s4, s40, v49
	.loc	1 568 22                        ; attention.py:568:22
	s_cvt_f32_u32 s2, s6
	s_sub_i32 s15, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s2
	v_readfirstlane_b32 s2, v1
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v1, s20, v67
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_f32 s2, s2, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_2)
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v2, 4, v1
	v_or_b32_e32 v3, 8, v1
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e32 vcc_lo, s66, v1
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
	s_xor_b32 s2, s64, s65
	s_mul_i32 s23, s15, s6
	s_ashr_i32 s24, s2, 31
	s_sub_i32 s5, s5, s23
	s_add_i32 s23, s15, 1
	s_sub_i32 s25, s5, s6
	s_cmp_ge_u32 s5, s6
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, s66, v2
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s15, s23, s15
	s_cselect_b32 s5, s25, s5
	s_add_i32 s23, s15, 1
	s_cmp_ge_u32 s5, s6
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s5, s66, v3
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s23, s23, s15
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s25, s14, s20
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 584 26                        ; attention.py:584:26
	s_mul_i32 s14, s25, s40
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s6, s66, v4
	.loc	1 584 26                        ; attention.py:584:26
	v_add_nc_u32_e32 v1, s14, v51
	v_add_nc_u32_e32 v2, s14, v69
	v_add_nc_u32_e32 v3, s14, v70
	v_add_nc_u32_e32 v4, s14, v52
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt lgkmcnt(0)
	s_and_b32 s17, s17, 0xffff
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s4, s2
	.loc	1 590 31                        ; attention.py:590:31
	v_add_lshl_u32 v8, s25, v71, 1
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
	buffer_load_u8 v5, v1, s[16:19], 0 offen
	buffer_load_u8 v2, v2, s[16:19], 0 offen
	buffer_load_u8 v3, v3, s[16:19], 0 offen
	buffer_load_u8 v4, v4, s[16:19], 0 offen
	v_xor_b32_e32 v1, 0x88, v0
	.loc	1 590 31                        ; attention.py:590:31
	s_and_b32 s13, s13, 0xffff
	.loc	1 568 22                        ; attention.py:568:22
	s_xor_b32 s2, s23, s24
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v73, 0, v1
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v1, s20, v71
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(3)
	ds_store_b8 v72, v5
	s_waitcnt vmcnt(2)
	ds_store_b8 v73, v2
	s_waitcnt vmcnt(1)
	ds_store_b8 v74, v3
	s_waitcnt vmcnt(0)
	ds_store_b8 v75, v4
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s57, s66, v1
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_b32_e32 v3, 24, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 590 31                        ; attention.py:590:31
	v_cndmask_b32_e64 v6, 0x80000000, v8, s57
	.loc	1 585 26                        ; attention.py:585:26
	v_lshl_or_b32 v3, v71, 5, v3
	.loc	1 590 31                        ; attention.py:590:31
	buffer_load_u16 v2, v6, s[12:15], 0 offen
	.loc	1 606 16                        ; attention.py:606:16
	s_add_i32 s13, s67, 63
	.loc	1 568 22                        ; attention.py:568:22
	s_sub_i32 s12, s2, s24
	.loc	1 606 15                        ; attention.py:606:15
	s_ashr_i32 s14, s13, 31
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v4, 8, v3
	.loc	1 606 15                        ; attention.py:606:15
	s_lshr_b32 s14, s14, 26
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v5, 16, v3
	.loc	1 606 15                        ; attention.py:606:15
	s_add_i32 s13, s13, s14
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v76, 0, v3
	.loc	1 606 15                        ; attention.py:606:15
	s_ashr_i32 s14, s13, 6
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v3, 24, v3
	.loc	1 609 33                        ; attention.py:609:33
	s_add_i32 s14, s14, s28
	.loc	1 606 14                        ; attention.py:606:14
	s_and_b32 s16, s13, 0xffffffc0
	.loc	1 609 33                        ; attention.py:609:33
	s_add_i32 s14, s14, -1
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v77, 0, v4
	.loc	1 609 32                        ; attention.py:609:32
	s_abs_i32 s15, s14
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v78, 0, v5
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_hi_u32 s13, s15, s22
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v79, 0, v3
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_i32 s17, s13, s21
	s_xor_b32 s14, s14, s28
	s_sub_i32 s15, s15, s17
	.loc	1 569 19                        ; attention.py:569:19
	s_abs_i32 s6, s12
	.loc	1 609 32                        ; attention.py:609:32
	s_ashr_i32 s14, s14, 31
	s_add_i32 s17, s13, 1
	s_sub_i32 s18, s15, s21
	.loc	1 585 26                        ; attention.py:585:26
	ds_load_b64 v[53:54], v76
	ds_load_b64 v[55:56], v77
	ds_load_b64 v[57:58], v78
	ds_load_b64 v[59:60], v79
	.loc	1 609 32                        ; attention.py:609:32
	s_cmp_ge_u32 s15, s21
	.loc	1 569 19                        ; attention.py:569:19
	s_cvt_f32_u32 s2, s6
	.loc	1 609 32                        ; attention.py:609:32
	s_cselect_b32 s13, s17, s13
	s_cselect_b32 s15, s18, s15
	s_add_i32 s17, s13, 1
	s_cmp_ge_u32 s15, s21
	.loc	1 569 19                        ; attention.py:569:19
	v_rcp_iflag_f32_e32 v3, s2
	.loc	1 609 32                        ; attention.py:609:32
	s_cselect_b32 s2, s17, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s14
	s_sub_i32 s2, s2, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 610 18                        ; attention.py:610:18
	s_mul_i32 s13, s26, s2
	.loc	1 611 33                        ; attention.py:611:33
	s_lshl_b32 s2, s2, 6
	.loc	1 610 18                        ; attention.py:610:18
	s_lshl_b32 s72, s13, 6
	.loc	1 569 19                        ; attention.py:569:19
	v_readfirstlane_b32 s13, v3
	.loc	1 611 33                        ; attention.py:611:33
	s_add_i32 s2, s72, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 611 18 is_stmt 0              ; attention.py:611:18
	s_min_i32 s42, s16, s2
	.loc	1 612 9 is_stmt 1               ; attention.py:612:9
	s_bfe_u32 s2, s8, 0x10008
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s10, s11
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s8, s11, s9
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s2, s20
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s8, s8, s20
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s2, 16
	.loc	1 613 25                        ; attention.py:613:25
	s_max_i32 s8, s8, 0
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s2, s67, s2
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s8, s8, 0x7fffffc0
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s2, s2, 63
	.loc	1 618 18                        ; attention.py:618:18
	s_max_i32 s72, s72, s8
	.loc	1 619 34                        ; attention.py:619:34
	s_ashr_i32 s14, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s14, s14, 26
	s_add_i32 s2, s2, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 619 33 is_stmt 0              ; attention.py:619:33
	s_and_not1_b32 s2, s2, 63
	.loc	1 619 18                        ; attention.py:619:18
	s_min_i32 s42, s42, s2
.LBB0_2:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b32 s41, s[0:1], 0x64
	.loc	1 620 9 is_stmt 1               ; attention.py:620:9
	v_cndmask_b32_e64 v80, 0, 1, s3
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s2, s11, s20
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 16
	s_min_i32 s2, s67, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 63
	.loc	1 622 34 is_stmt 1              ; attention.py:622:34
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s3, s3, 26
	s_add_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 622 33 is_stmt 0              ; attention.py:622:33
	s_and_not1_b32 s2, s2, 63
	.loc	1 622 18                        ; attention.py:622:18
	s_min_i32 s42, s42, s2
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b64 s[16:17], s[0:1], 0x40
	.loc	1 571 21 is_stmt 1              ; attention.py:571:21
	v_and_b32_e32 v50, 63, v0
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_ge_i32 s72, s42
	.loc	1 696 65                        ; attention.py:696:65
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_gt_i32_e64 s59, s41, v50
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_13
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_xor_b32 s3, s27, s64
	s_mul_f32 s8, s13, 0x4f7ffffe
	s_ashr_i32 s3, s3, 31
	v_writelane_b32 v178, s16, 1
	s_xor_b32 s7, s7, s3
	s_cvt_u32_f32 s8, s8
	s_sub_i32 s3, s7, s3
	s_sub_i32 s7, 0, s6
	v_writelane_b32 v178, s17, 2
	s_mul_i32 s13, s3, s64
	s_mul_i32 s7, s7, s8
	s_sub_i32 s13, s27, s13
	s_mul_hi_u32 s7, s8, s7
	s_abs_i32 s14, s13
	s_add_i32 s8, s8, s7
	v_writelane_b32 v178, s18, 3
	s_mul_hi_u32 s8, s14, s8
	s_ashr_i32 s7, s12, 31
	s_ashr_i32 s12, s13, 31
	.loc	1 569 19 is_stmt 1              ; attention.py:569:19
	s_mul_i32 s13, s8, s6
	v_writelane_b32 v178, s19, 4
	s_xor_b32 s7, s12, s7
	s_sub_i32 s12, s14, s13
	s_add_i32 s13, s8, 1
	s_sub_i32 s14, s12, s6
	s_cmp_ge_u32 s12, s6
	v_writelane_b32 v178, s28, 5
	s_cselect_b32 s8, s13, s8
	s_cselect_b32 s12, s14, s12
	s_add_i32 s13, s8, 1
	s_cmp_ge_u32 s12, s6
	v_writelane_b32 v178, s26, 6
	s_cselect_b32 s8, s13, s8
	.loc	1 632 33                        ; attention.py:632:33
	s_mul_i32 s3, s3, s65
	.loc	1 569 19                        ; attention.py:569:19
	s_xor_b32 s8, s8, s7
	s_load_b32 s6, s[0:1], 0x6c
	s_sub_i32 s7, s8, s7
	v_writelane_b32 v178, s27, 7
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x8
	s_load_b64 s[20:21], s[0:1], 0x20
	.loc	1 632 33                        ; attention.py:632:33
	s_add_i32 s0, s7, s3
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 632 32 is_stmt 0              ; attention.py:632:32
	s_mul_i32 s43, s0, s67
	s_lshl_b32 s0, s40, 4
	s_mov_b32 s23, 0x31027000
	v_writelane_b32 v178, s0, 8
	s_mul_i32 s0, s40, 20
                                        ; implicit-def: $vgpr177 : SGPR spill to VGPR lane
	v_mov_b16_e32 v89.l, 0
	.loc	1 590 31 is_stmt 1              ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v89.h, v2.l
	v_and_b32_e32 v3, 0x60, v0
	v_writelane_b32 v178, s0, 9
	s_mul_i32 s0, s40, 24
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v88, s11, v1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mov_b32 v94, v89 :: v_dual_add_nc_u32 v1, 0, v3
	v_writelane_b32 v178, s0, 10
	s_mul_i32 s0, s40, 36
	v_mov_b32_e32 v3, 0x5410
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s76, s18
	s_and_b32 s21, s21, 0xffff
	v_writelane_b32 v178, s0, 11
	s_mul_i32 s0, s40, 40
	s_mov_b32 s18, s22
	v_writelane_b32 v177, s20, 0
	v_and_b32_e32 v2, 16, v0
	v_writelane_b32 v178, s0, 12
	s_mul_i32 s0, s40, 52
	s_and_b32 s17, s17, 0xffff
	v_writelane_b32 v177, s21, 1
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_writelane_b32 v178, s0, 13
	s_mul_i32 s0, s40, 56
	v_mov_b32_e32 v2, 0x7632
	v_writelane_b32 v177, s22, 2
	s_and_b32 s77, s19, 0xffff
	v_writelane_b32 v178, s0, 14
	s_mul_i32 s0, s40, 60
	s_mov_b32 s19, s23
	v_writelane_b32 v177, s23, 3
	v_cndmask_b32_e32 v3, 0x1054, v3, vcc_lo
	v_writelane_b32 v178, s0, 15
	s_lshl_b32 s0, s41, 2
	v_dual_cndmask_b32 v2, 0x3276, v2 :: v_dual_mov_b32 v95, v89
	v_writelane_b32 v177, s16, 4
	v_writelane_b32 v178, s0, 16
	s_mul_i32 s0, s41, 6
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v81, 6, v0
	v_lshl_or_b32 v3, v3, 8, v3
	v_lshl_or_b32 v2, v2, 8, v2
	v_writelane_b32 v178, s0, 17
	s_lshl_b32 s0, s41, 3
	v_writelane_b32 v177, s17, 5
	.loc	1 629 13                        ; attention.py:629:13
	s_mov_b32 s8, 0
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v82, 14, v81
	v_writelane_b32 v178, s0, 18
	s_mul_i32 s0, s41, 10
	v_or_b32_e32 v83, 30, v81
	v_subrev_nc_u32_e32 v90, s9, v88
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mov_b32 v96, v89 :: v_dual_add_nc_u32 v91, s10, v88
	v_writelane_b32 v178, s0, 19
	s_mul_i32 s0, s41, 12
	v_and_b32_e32 v2, 0x760076, v2
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	v_writelane_b32 v178, s0, 20
	s_mul_i32 s0, s41, 18
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	v_writelane_b32 v178, s0, 21
	s_mul_i32 s0, s41, 20
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v16, s15 :: v_dual_and_b32 v3, 0x540054, v3
	v_writelane_b32 v178, s0, 22
	s_mul_i32 s0, s41, 24
	v_writelane_b32 v177, s18, 6
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v84, 46, v81
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s44, s6, 0x3fb8aa3b
	v_writelane_b32 v178, s0, 23
	s_mul_i32 s0, s41, 26
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v85, 62, v81
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[61:62], null, s41, v81, v[50:51]
	v_writelane_b32 v178, s0, 24
	s_lshl_b32 s0, s41, 5
	v_mad_u64_u32 v[62:63], null, s41, v82, v[50:51]
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v4, 4, v0
	v_writelane_b32 v178, s0, 25
	s_mul_i32 s0, s41, 34
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[63:64], null, s41, v83, v[50:51]
	v_lshl_or_b32 v3, v3, 4, v3
	v_writelane_b32 v178, s0, 26
	s_mul_i32 s0, s41, 44
	v_lshl_add_u32 v93, v71, 1, v1
	v_mov_b32_e32 v1, 0
	v_lshl_or_b32 v2, v2, 4, v2
	v_writelane_b32 v178, s0, 27
	s_mul_i32 s0, s41, 58
	v_writelane_b32 v177, s19, 7
	v_mad_u64_u32 v[64:65], null, s41, v84, v[50:51]
	v_writelane_b32 v178, s0, 28
	v_mad_u64_u32 v[65:66], null, s41, v85, v[50:51]
	s_mul_i32 s82, s41, 60
	.loc	1 571 21                        ; attention.py:571:21
	v_bfe_u32 v86, v0, 4, 1
	.loc	1 664 17                        ; attention.py:664:17
	v_writelane_b32 v178, s44, 29
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v87, 62, v4
	v_dual_mov_b32 v15, s14 :: v_dual_and_b32 v66, 0x5040504, v3
	v_dual_mov_b32 v13, s12 :: v_dual_and_b32 v92, 0x7060706, v2
	.loc	1 664 17                        ; attention.py:664:17
	v_writelane_b32 v178, s44, 30
	v_dual_mov_b32 v99, 0xff800000 :: v_dual_mov_b32 v14, s13
	v_dual_mov_b32 v12, s11 :: v_dual_mov_b32 v11, s10
	v_dual_mov_b32 v10, s9 :: v_dual_mov_b32 v9, s8
	v_dual_mov_b32 v2, v1 :: v_dual_add_nc_u32 v97, v72, v0
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v98, v1
	.loc	1 629 13                        ; attention.py:629:13
	v_writelane_b32 v177, s82, 8
	s_mul_i32 s47, s40, 28
	s_lshl_b32 s48, s40, 5
	s_mul_i32 s55, s40, 44
	s_mul_i32 s39, s40, 48
	s_lshl_b32 s51, s41, 1
	s_lshl_b32 s62, s41, 4
	s_mul_i32 s65, s41, 22
	s_mul_i32 s70, s41, 28
	s_mul_i32 s73, s41, 36
	s_mul_i32 s74, s41, 38
	s_mul_i32 s75, s41, 40
	s_mul_i32 s84, s41, 42
	s_mul_i32 s86, s41, 48
	s_mul_i32 s87, s41, 50
	s_mul_i32 s88, s41, 52
	s_mul_i32 s81, s41, 54
	s_mul_i32 s80, s41, 56
	.loc	1 664 17                        ; attention.py:664:17
	v_writelane_b32 v178, s44, 31
	.loc	1 629 13                        ; attention.py:629:13
	v_writelane_b32 v177, s40, 9
	s_branch .LBB0_8
.LBB0_6:                                ;   in Loop: Header=BB0_8 Depth=1
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s3, v163, v90
	v_cmp_ge_i32_e64 s15, v140, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s16, v140, v91
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s11, v134, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s1, v134, v91
	v_writelane_b32 v177, s3, 17
	v_cmp_le_i32_e64 s3, v163, v91
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s38, v137, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s12, v137, v91
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s58, v138, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s14, v138, v91
	.loc	1 670 30                        ; attention.py:670:30
	v_writelane_b32 v177, s3, 18
	v_cmp_ge_i32_e64 s3, v162, v90
	v_cmp_ge_i32_e64 s9, v136, v90
	s_mov_b32 s30, s10
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s10, v136, v91
	s_mov_b32 s76, s85
	v_writelane_b32 v177, s3, 19
	v_cmp_le_i32_e64 s3, v162, v91
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s15, s15, s16
	s_mov_b32 s90, s49
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s17, v144, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s18, v144, v91
	.loc	1 670 30                        ; attention.py:670:30
	v_writelane_b32 v177, s3, 20
	v_cmp_ge_i32_e64 s3, v160, v90
	v_cmp_ge_i32_e64 s27, v148, v90
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s1, s11, s1
	s_and_b32 s11, s38, s12
	v_writelane_b32 v177, s97, 21
	.loc	1 671 30 is_stmt 0              ; attention.py:671:30
	v_cmp_le_i32_e64 s97, v148, v91
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s12, s58, s14
	s_and_b32 s14, s15, s76
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s23, v142, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_writelane_b32 v177, s3, 22
	v_cmp_le_i32_e64 s3, v160, v91
	v_cmp_le_i32_e64 s24, v142, v91
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s98, v151, v90
	s_mov_b32 s78, s73
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s73, v151, v91
	.loc	1 670 30                        ; attention.py:670:30
	v_writelane_b32 v177, s3, 23
	v_cmp_ge_i32_e64 s3, v161, v90
	s_mov_b32 s28, s74
	v_cmp_ge_i32_e64 s74, v154, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s33, v154, v91
	s_mov_b32 s31, s84
	v_writelane_b32 v177, s3, 24
	v_cmp_le_i32_e64 s3, v161, v91
	s_mov_b32 s84, s47
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s47, v141, v90
	s_mov_b32 s20, s65
	s_mov_b32 s65, s48
	v_writelane_b32 v177, s3, 25
	v_cmp_ge_i32_e64 s48, v143, v90
	s_mov_b32 s79, s86
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s86, v141, v91
	v_cmp_le_i32_e64 s3, v143, v91
	v_writelane_b32 v177, vcc_hi, 26
	v_cmp_le_i32_e64 s6, v147, v91
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s58, s11, s90
	s_mov_b32 s11, s90
	s_and_b32 s10, s9, s10
	v_writelane_b32 v177, s53, 27
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s53, v147, v90
	s_mov_b32 vcc_hi, s42
	v_cmp_ge_i32_e64 s42, v156, v90
	s_mov_b32 s29, s75
	v_writelane_b32 v177, s64, 28
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s64, s10, s52
	s_and_b32 s10, s17, s18
	s_and_b32 s18, s27, s97
	s_mov_b32 s75, s70
	v_readlane_b32 s90, v177, 15
	v_writelane_b32 v177, s14, 29
	.loc	1 671 30 is_stmt 0              ; attention.py:671:30
	v_cmp_le_i32_e64 s70, v156, v91
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s49, v146, v90
	s_mov_b32 s36, s59
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s59, v146, v91
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s14, s23, s24
	s_and_b32 s17, s74, s33
	s_and_b32 s23, s98, s73
	s_mov_b32 s73, s78
	s_and_b32 s18, s18, s30
	s_mov_b32 s78, s30
	s_and_b32 s30, s47, s86
	s_mov_b32 s47, s84
	s_mov_b32 s84, s31
	s_and_b32 s31, s48, s3
	s_and_b32 s33, s53, s6
	v_readlane_b32 s3, v177, 23
	v_readlane_b32 s6, v177, 22
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s5, v139, v90
	s_mov_b32 s37, s57
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s57, v139, v91
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s27, s42, s70
	s_mov_b32 s70, s75
	s_mov_b32 s75, s29
	s_and_b32 s29, s49, s59
	s_mov_b32 s59, s36
	s_and_b32 s36, s6, s3
	v_readlane_b32 s3, v177, 25
	v_readlane_b32 s6, v177, 24
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s25, v145, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s26, v145, v91
	s_mov_b32 s13, s44
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s44, v152, v90
	s_mov_b32 s85, s45
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s45, v152, v91
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s22, v150, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s9, v150, v91
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s82, v100, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s0, v100, v91
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s7, v135, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s8, v135, v91
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s40, v155, v90
	s_mov_b32 s103, s41
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s41, v155, v91
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s89, v159, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s21, v159, v91
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s24, s5, s57
	s_mov_b32 s57, s37
	s_and_b32 s37, s6, s3
	v_readlane_b32 s3, v177, 19
	v_readlane_b32 s6, v177, 20
	s_and_b32 s15, s25, s26
	s_and_b32 s25, s44, s45
	s_mov_b32 s44, s13
	s_and_b32 s9, s22, s9
	v_readlane_b32 s13, v177, 16
	v_readlane_b32 s22, v177, 28
	s_and_b32 s0, s82, s0
	s_and_b32 s8, s7, s8
	s_and_b32 s0, s0, s104
	s_and_b32 s1, s1, s93
	s_and_b32 s26, s40, s41
	s_and_b32 s40, s89, s21
	s_and_b32 s21, s3, s6
	s_and_b32 s8, s8, s61
	s_mov_b32 s48, s65
	s_mov_b32 s65, s20
	s_and_b32 s20, s21, s13
	s_and_b32 s21, s37, s22
	s_and_not1_b32 s37, s104, exec_lo
	s_and_b32 s0, s0, exec_lo
	s_and_not1_b32 s38, s93, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_or_b32 s104, s37, s0
	s_or_b32 s93, s38, s1
	s_and_not1_b32 s0, s61, exec_lo
	s_and_b32 s1, s8, exec_lo
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s34, v157, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s35, v157, v91
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s77, v158, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s19, v158, v91
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	v_readlane_b32 s3, v177, 17
	v_readlane_b32 s6, v177, 18
	s_or_b32 s61, s0, s1
	s_and_not1_b32 s0, s11, exec_lo
	s_and_b32 s1, s58, exec_lo
	s_and_b32 s12, s12, s90
	s_or_b32 s38, s0, s1
	v_readlane_b32 s1, v177, 29
	s_and_b32 s16, s34, s35
	s_and_b32 s35, s77, s19
	s_and_b32 s19, s3, s6
	s_and_not1_b32 s6, s52, exec_lo
	s_and_b32 s8, s64, exec_lo
	s_and_b32 s10, s10, s69
	s_or_b32 s52, s6, s8
	s_and_not1_b32 s6, s90, exec_lo
	s_and_b32 s8, s12, exec_lo
	s_and_not1_b32 s0, s76, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_b32 s19, s19, s85
	s_or_b32 s3, s6, s8
	s_and_not1_b32 s6, s69, exec_lo
	s_and_b32 s8, s10, exec_lo
	s_or_b32 s1, s0, s1
	s_and_b32 s14, s14, s63
	s_and_b32 s15, s15, s2
	s_or_b32 s69, s6, s8
	s_and_not1_b32 s0, s85, exec_lo
	s_mov_b32 s85, s1
	s_and_b32 s1, s19, exec_lo
	s_and_not1_b32 s6, s13, exec_lo
	s_and_b32 s8, s20, exec_lo
	v_readlane_b32 s53, v177, 26
	s_and_b32 s23, s23, s100
	s_mov_b32 s41, s103
	s_or_b32 s45, s0, s1
	s_or_b32 s103, s6, s8
	s_and_not1_b32 s0, s63, exec_lo
	s_and_b32 s1, s14, exec_lo
	s_and_not1_b32 s6, s2, exec_lo
	s_and_b32 s8, s15, exec_lo
	s_and_b32 s17, s17, s46
	s_and_b32 s16, s16, s66
	s_or_b32 s63, s0, s1
	s_or_b32 s2, s6, s8
	s_and_not1_b32 s0, s78, exec_lo
	s_and_b32 s1, s18, exec_lo
	s_and_not1_b32 s6, s100, exec_lo
	s_and_b32 s8, s23, exec_lo
	s_mov_b32 s83, s55
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s55, v153, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s7, v153, v91
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s36, s36, s53
	s_or_b32 s10, s0, s1
	s_or_b32 s100, s6, s8
	s_and_not1_b32 s0, s46, exec_lo
	s_and_b32 s1, s17, exec_lo
	s_and_not1_b32 s6, s66, exec_lo
	s_and_b32 s8, s16, exec_lo
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s71, v149, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e32 vcc_lo, v149, v91
	s_mov_b32 s5, s68
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s30, s30, s68
	v_readlane_b32 s68, v177, 21
	s_and_b32 s26, s26, s54
	s_and_b32 s27, s27, s102
	s_or_b32 s46, s0, s1
	s_or_b32 s66, s6, s8
	s_and_not1_b32 s0, s53, exec_lo
	s_and_b32 s1, s36, exec_lo
	s_and_not1_b32 s6, s22, exec_lo
	s_and_b32 s8, s21, exec_lo
	s_mov_b32 s42, vcc_hi
	s_and_b32 s25, s25, s101
	s_and_b32 s24, s24, s99
	s_or_b32 vcc_hi, s0, s1
	s_or_b32 s64, s6, s8
	s_and_not1_b32 s0, s54, exec_lo
	s_and_b32 s1, s26, exec_lo
	s_and_not1_b32 s6, s102, exec_lo
	s_and_b32 s8, s27, exec_lo
	s_and_b32 s7, s55, s7
	s_mov_b32 s55, s83
	v_readlane_b32 s83, v177, 27
	s_mov_b32 s74, s28
	s_and_b32 s28, s71, vcc_lo
	s_and_b32 s31, s31, s68
	s_or_b32 s54, s0, s1
	s_or_b32 s102, s6, s8
	s_and_not1_b32 s0, s101, exec_lo
	s_and_b32 s1, s25, exec_lo
	s_and_not1_b32 s6, s99, exec_lo
	s_and_b32 s8, s24, exec_lo
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s56, v119, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s82, v119, v91
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s29, s29, s96
	s_and_b32 s28, s28, s95
	s_or_b32 s101, s0, s1
	s_or_b32 s99, s6, s8
	s_and_not1_b32 s0, s5, exec_lo
	s_and_b32 s1, s30, exec_lo
	s_and_not1_b32 s6, s68, exec_lo
	s_and_b32 s8, s31, exec_lo
	s_and_b32 s35, s35, s94
	s_and_b32 s49, s40, s83
	s_or_b32 s68, s0, s1
	s_or_b32 s97, s6, s8
	s_and_not1_b32 s0, s96, exec_lo
	s_and_b32 s1, s29, exec_lo
	s_and_not1_b32 s6, s95, exec_lo
	s_and_b32 s8, s28, exec_lo
	s_and_b32 s33, s33, s92
	s_and_b32 s9, s9, s91
	s_and_b32 s34, s56, s82
	s_or_b32 s96, s0, s1
	s_or_b32 s95, s6, s8
	s_and_not1_b32 s0, s83, exec_lo
	s_and_b32 s1, s49, exec_lo
	s_and_not1_b32 s6, s94, exec_lo
	s_and_b32 s8, s35, exec_lo
	s_mov_b32 s86, s79
	s_and_b32 s7, s7, s50
	s_and_b32 s34, s34, s60
	s_or_b32 s53, s0, s1
	s_or_b32 s94, s6, s8
	s_and_not1_b32 s0, s92, exec_lo
	s_and_b32 s1, s33, exec_lo
	s_and_not1_b32 s6, s91, exec_lo
	s_and_b32 s8, s9, exec_lo
	v_readlane_b32 s76, v177, 10
	v_readlane_b32 s82, v177, 8
	v_readlane_b32 s40, v177, 9
	v_readlane_b32 s77, v177, 11
	s_or_b32 s92, s0, s1
	s_or_b32 s91, s6, s8
	s_and_not1_b32 s0, s50, exec_lo
	s_and_b32 s1, s7, exec_lo
	s_and_not1_b32 s6, s60, exec_lo
	s_and_b32 s7, s34, exec_lo
	s_mov_b32 s49, s38
	s_or_b32 s50, s0, s1
	s_or_b32 s60, s6, s7
	v_readlane_b32 s78, v177, 12
	v_readlane_b32 s79, v177, 13
.LBB0_7:                                ;   in Loop: Header=BB0_8 Depth=1
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v135, v42
	v_cvt_f32_i32_e32 v42, v45
	v_cvt_f32_i32_e32 v139, v37
	v_cvt_f32_i32_e32 v140, v39
	v_cvt_f32_i32_e32 v37, v35
	v_cvt_f32_i32_e32 v35, v25
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v39, v32
	v_cvt_f32_i32_e32 v23, v23
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(31)
	v_mov_b16_e64 v25.h, v128.l
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v25.l, 0
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v32, v89, v41
	v_mul_f32_e32 v27, v89, v27
	v_mul_f32_e32 v23, v94, v23
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v31, v31
	v_mul_f32_e32 v128, v32, v25
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(27)
	v_mov_b16_e64 v25.h, v129.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v32, v89, v42
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v21, v21
	v_readlane_b32 s6, v178, 31
	v_cvt_f32_i32_e32 v22, v22
	v_dual_mul_f32 v129, v32, v25 :: v_dual_mul_f32 v32, v89, v36
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(17)
	v_mov_b16_e64 v25.h, v130.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v31, v89, v31 :: v_dual_mul_f32 v24, v95, v24
	v_mul_f32_e32 v21, v96, v21
	v_cvt_f32_i32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v27, v27, v25
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(13)
	v_mov_b16_e64 v25.h, v131.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v29, v29
	v_mul_f32_e32 v20, v95, v20
	v_cvt_f32_i32_e32 v26, v26
	v_mul_f32_e32 v31, v31, v25
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(6)
	v_mov_b16_e64 v25.h, v133.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v18, v18
	v_mul_f32_e32 v19, v94, v19
	v_readlane_b32 s0, v178, 29
	v_readlane_b32 s1, v178, 30
	v_mul_f32_e32 v130, v32, v25
	v_mul_f32_e32 v32, v96, v35
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(5)
	v_mov_b16_e64 v35.h, v132.l
	v_mov_b16_e32 v35.l, v25.l
	v_mov_b16_e32 v25.h, v126.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v22, v89, v22
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v33, v33
	v_mul_f32_e32 v32, v32, v35
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v35.h, v125.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v119, v43
	v_cvt_f32_i32_e32 v134, v44
	v_cvt_f32_i32_e32 v138, v46
	v_mul_f32_e32 v24, v24, v35
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v35.h, v124.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v136, v48
	v_mul_f32_e32 v26, v94, v26
	v_cvt_f32_i32_e32 v137, v47
	v_cvt_f32_i32_e32 v30, v30
	v_mul_f32_e32 v23, v23, v35
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v35.h, v122.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v22, v22, v25
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v25.h, v127.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v17, v17
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v23, s0, v23
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v21, v21, v35
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v35.h, v121.l
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v22, s44, v22
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v141, v40
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v43, 0xff800000, v23, s46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v21, s6, v21 :: v_dual_mul_f32 v20, v20, v35
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v35.h, v120.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v46, 0xff800000, v22, s100
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v22, v94, v28
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v45, 0xff800000, v21, s10
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v21, v95, v29
	v_mul_f32_e32 v19, v19, v35
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v35.h, v123.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v18, v89, v18
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v20, s1, v20 :: v_dual_mul_f32 v23, v96, v34
	v_mul_f32_e32 v19, s0, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v26, v26, v35
	v_dual_mul_f32 v18, v18, v25 :: v_dual_mul_f32 v35, s6, v32
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v24, s1, v24
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v47, 0xff800000, v20, s2
	v_cndmask_b32_e64 v48, 0xff800000, v19, s63
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v18, s44, v18
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v35, 0xff800000, v35, vcc_hi
	v_cndmask_b32_e64 v44, 0xff800000, v24, s66
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v24, v95, v33
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v26, s0, v26
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v100, 0xff800000, v18, s103
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v19, v45, v46, v43
.Ltmp2:
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v29, s44, v31 :: v_dual_mul_f32 v28, v95, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v32, 0xff800000, v26, s64
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v18, v100, v48, v47
.Ltmp4:
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v25.h, v111.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v37, 0xff800000, v29, s68
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v38, v38
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v20, v44, v35, v32
.Ltmp6:
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v34.h, v102.l
	v_mov_b16_e32 v34.l, v25.l
	s_mov_b32 s33, 0x76543210
	.loc	1 693 30                        ; attention.py:693:30
	v_readlane_b32 s30, v177, 14
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v18, v18, v19, v20
.Ltmp8:
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v19.h, v118.l
	v_mov_b16_e32 v19.l, v25.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v20, v96, v30 :: v_dual_mul_f32 v17, v89, v17
	v_mul_f32_e32 v30, v94, v138
	.loc	1 693 30                        ; attention.py:693:30
	s_mul_i32 s31, s30, s41
	s_mov_b32 s35, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v19, v20, v19
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v20.h, v117.l
	v_mov_b16_e32 v20.l, v25.l
	.loc	1 694 30                        ; attention.py:694:30
	v_readlane_b32 s2, v178, 21
	s_mov_b32 s34, s10
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v19, s6, v19
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v118, s31, v62, 1
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v20, v21, v20
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v21.h, v115.l
	v_mov_b16_e32 v21.l, v25.l
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v33, s44, v129
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v126, s31, v63, 1
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v17, v17, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v21, v22, v21
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v22.h, v116.l
	v_mov_b16_e32 v22.l, v25.l
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v116, s72, v85
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v17, s44, v17
	v_dual_mul_f32 v21, s0, v21 :: v_dual_mul_f32 v22, v23, v22
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v23.h, v113.l
	v_mov_b16_e32 v23.l, v25.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v41, 0xff800000, v21, s102
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v23, v24, v23
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v24.h, v112.l
	v_mov_b16_e32 v24.l, v25.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v23, s1, v23 :: v_dual_mul_f32 v20, s1, v20
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v29, 0xff800000, v23, s96
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v23, v96, v136 :: v_dual_mul_f32 v26, v94, v39
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v22, s6, v22
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v39, 0xff800000, v19, s99
	v_cndmask_b32_e64 v40, 0xff800000, v20, s101
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v24, v26, v24
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v26.h, v114.l
	v_mov_b16_e32 v26.l, v25.l
	v_add_nc_u32_e32 v114, s31, v61
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v24, s0, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v26, v28, v26
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v28, s44, v27
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v125, v114, s70, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v36, 0xff800000, v24, s97
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v24, v95, v137
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v26, s1, v26
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v42, 0xff800000, v28, s54
	v_cndmask_b32_e64 v28, 0xff800000, v22, s95
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v20, v39, v37, v36
.Ltmp10:
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v22, v94, v135
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v27, 0xff800000, v26, s53
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v19, v42, v41, v40
.Ltmp12:
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v129, v114, s73, 1
	v_add_lshl_u32 v120, v114, s2, 1
	v_add_lshl_u32 v132, v114, s84, 1
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v21, v29, v28, v27
.Ltmp14:
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v136, v114, s87, 1
	v_readlane_b32 s2, v178, 28
	v_lshlrev_b32_e32 v115, 1, v114
	v_add_lshl_u32 v131, v114, s75, 1
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v26, v19, v20, v21
.Ltmp16:
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v19.h, v110.l
	v_mov_b16_e32 v19.l, v25.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v20, v95, v119 :: v_dual_mul_f32 v21, v96, v134
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v119, v114, s62, 1
	v_add_lshl_u32 v135, v114, s86, 1
	v_add_lshl_u32 v122, v114, s65, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v19, v20, v19
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v20.h, v109.l
	v_mov_b16_e32 v20.l, v25.l
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v137, v114, s88, 1
	v_add_lshl_u32 v134, s31, v64, 1
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v31, s1, v19
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v138, v114, s81, 1
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v20, v21, v20
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v21.h, v107.l
	v_mov_b16_e32 v21.l, v25.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v20, s6, v20 :: v_dual_mul_f32 v21, v22, v21
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v22.h, v108.l
	v_mov_b16_e32 v22.l, v25.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v19, 0xff800000, v20, s52
	v_cndmask_b32_e64 v20, 0xff800000, v31, s61
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v21, s0, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v23, v23, v22
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v22.h, v106.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v106, 0xff800000, v21, s93
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v23, s6, v23 :: v_dual_mul_f32 v24, v24, v22
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v22.h, v101.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v101, 0xff800000, v17, s45
	v_cndmask_b32_e64 v23, 0xff800000, v23, s69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v22, v30, v22
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v30, s44, v128
	v_mul_f32_e32 v22, s0, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v107, 0xff800000, v30, s104
	v_cndmask_b32_e64 v21, 0xff800000, v22, s3
	v_cndmask_b32_e64 v22, 0xff800000, v33, s49
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v24, s1, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v30, v107, v106 :: v_dual_mul_f32 v33, v96, v141
.Ltmp18:
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v141, s31, v65, 1
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v31, v19, v22, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp20:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v24, 0xff800000, v24, s85
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v30, v30, v20, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_max3_f32 v17, v24, v23, v101
.Ltmp22:
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v31.h, v103.l
	v_mov_b16_e32 v31.l, v25.l
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v17, v30, v17, v18
.Ltmp24:
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v18, v96, v140
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v30.h, v104.l
	v_mov_b16_e32 v30.l, v25.l
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v140, v114, s2, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v18, v18, v30
	v_mul_f32_e32 v30, v94, v139
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v139, v114, s80, 1
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v18, s6, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v30, v30, v31
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v31.h, v105.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v31, v33, v31
	v_mul_f32_e32 v33, v95, v38
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v38, s44, v130
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v130, v114, s74, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v31, s6, v31
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v33, v33, v34
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v34, s0, v30
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v38, 0xff800000, v38, s94
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v30, 0xff800000, v31, s60
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v102, s1, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v33, 0xff800000, v34, s92
	v_cndmask_b32_e64 v31, 0xff800000, v18, s50
	v_cndmask_b32_e64 v34, 0xff800000, v102, s91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v18, v38, v33
	v_max_f32_e32 v102, v31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v18, v18, v34, v102
	v_max3_f32 v17, v17, v26, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v18, v17, s33, 0xfedcba98 op_sel:[1,0]
.Ltmp27:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v26, v99, v17, v18
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v17, v107, v26
	v_sub_f32_e32 v18, v106, v26
	v_sub_f32_e32 v20, v20, v26
	v_sub_f32_e32 v19, v19, v26
	v_sub_f32_e32 v22, v22, v26
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v17, v17
	v_exp_f32_e32 v18, v18
	v_exp_f32_e32 v20, v20
	v_exp_f32_e32 v19, v19
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v21, v21, v26
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v22, v22
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v24, v24, v26
	v_sub_f32_e32 v23, v23, v26
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v21, v21
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v102, 0, v17, s104
	v_cndmask_b32_e64 v103, 0, v18, s93
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v17.h, v25.l
	v_mov_b16_e32 v18.h, v25.l
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v105, 0, v19, s52
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v17.l, v102.h
	v_mov_b16_e32 v18.l, v103.h
	v_cmp_o_f32_e32 vcc_lo, v103, v103
	v_cmp_o_f32_e64 s0, v102, v102
	v_mov_b16_e32 v19.h, v25.l
	v_and_b32_e32 v17, 1, v17
	v_and_b32_e32 v18, 1, v18
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v107, 0, v21, s3
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v21.h, v25.l
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v24, v24
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v17, v102, v17, 0x7fff
	v_add3_u32 v18, v103, v18, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v23, v23
	.loc	1 694 30                        ; attention.py:694:30
	v_readlane_b32 s3, v178, 16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v18.l, 0x7fff, v17.h, s0
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v105, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_permlanex16_b32 v104, v18, s33, 0xfedcba98 op_sel:[1,0]
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v109, 0, v23, s69
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v23.h, v25.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_perm_b32 v17, v104, v18, v66
	v_perm_b32 v18, v104, v18, v92
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v104, 0, v20, s61
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v20.l, v105.h
	v_mov_b16_e32 v20.h, v25.l
	v_mov_b16_e32 v19.l, v104.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s0, v104, v104
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v20, v105, v20, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v19, v104, v19, 0x7fff
	v_cndmask_b16 v20.h, 0x7fff, v20.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v107, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v20.l, 0x7fff, v19.h, s0
	v_permlanex16_b32 v106, v20, s33, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_perm_b32 v19, v106, v20, v66
	v_perm_b32 v20, v106, v20, v92
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v106, 0, v22, s49
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v22.l, v107.h
	v_mov_b16_e32 v22.h, v25.l
	v_mov_b16_e32 v21.l, v106.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s0, v106, v106
	v_and_b32_e32 v22, 1, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v22, v107, v22, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v21, v106, v21, 0x7fff
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v109, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v22.l, 0x7fff, v21.h, s0
	v_permlanex16_b32 v108, v22, s33, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_perm_b32 v21, v108, v22, v66
	v_perm_b32 v22, v108, v22, v92
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v108, 0, v24, s85
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v24.l, v109.h
	v_mov_b16_e32 v24.h, v25.l
	v_mov_b16_e32 v23.l, v108.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s0, v108, v108
	v_and_b32_e32 v24, 1, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v23, 1, v23
	v_add3_u32 v24, v109, v24, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v23, v108, v23, 0x7fff
	v_cndmask_b16 v24.h, 0x7fff, v24.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v24.l, 0x7fff, v23.h, s0
	v_permlanex16_b32 v110, v24, s33, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v23, v110, v24, v66
	v_perm_b32 v24, v110, v24, v92
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v110, s72, v81
	v_add_nc_u32_e32 v111, 2, v110
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s29, s67, v110
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v112, 56, v110
	v_add_nc_u32_e32 v113, 58, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e32 vcc_lo, s67, v111
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v111, 4, v110
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s29, s59, s29
	s_and_b32 vcc_lo, s59, vcc_lo
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s0, s67, v111
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_add_nc_u32_e32 v111, 6, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s1, s67, v111
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v111, 8, v110
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s6, s67, v111
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v111, 10, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s7, s67, v111
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v111, 12, v110
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s8, s67, v111
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v111, s72, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s9, s67, v111
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v111, 16, v110
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s10, s67, v111
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v111, 18, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s11, s67, v111
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v111, 20, v110
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s12, s67, v111
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v111, 22, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s13, s67, v111
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v111, 24, v110
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s14, s67, v111
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v111, 26, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s15, s67, v111
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v111, 28, v110
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s16, s67, v111
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v111, s72, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s17, s67, v111
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v111, 32, v110
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s18, s67, v111
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v111, 34, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s19, s67, v111
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v111, 36, v110
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s20, s67, v111
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v111, 38, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s21, s67, v111
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v111, 40, v110
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s22, s67, v111
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v111, 42, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s23, s67, v111
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v111, 44, v110
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s24, s67, v111
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v111, s72, v84
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s72, s72, 64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s25, s67, v111
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v111, 48, v110
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s26, s67, v111
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v111, 50, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s27, s67, v111
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v111, 52, v110
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s28, s67, v111
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v111, 54, v110
	v_add_nc_u32_e32 v110, 60, v110
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s30, s67, v111
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v111, 0x80000000, v115, s29
	v_add_lshl_u32 v115, v114, s51, 1
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s29, s67, v112
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v112, 0x80000000, v115, vcc_lo
	v_add_lshl_u32 v115, v114, s3, 1
	v_readlane_b32 s3, v178, 17
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s59, s0
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s0, s67, v113
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e32 v113, 0x80000000, v115, vcc_lo
	v_add_lshl_u32 v115, v114, s3, 1
	v_readlane_b32 s3, v178, 18
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s59, s1
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s1, s67, v110
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e32 v110, 0x80000000, v115, vcc_lo
	v_add_lshl_u32 v115, v114, s3, 1
	v_readlane_b32 s3, v178, 19
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s59, s6
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s6, s67, v116
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e32 v115, 0x80000000, v115, vcc_lo
	v_add_lshl_u32 v116, v114, s3, 1
	v_readlane_b32 s3, v178, 20
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s59, s7
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v116, 0x80000000, v116, vcc_lo
	v_add_lshl_u32 v117, v114, s3, 1
	v_readlane_b32 s3, v178, 22
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s59, s8
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v117, 0x80000000, v117, vcc_lo
	v_add_lshl_u32 v121, v114, s3, 1
	v_readlane_b32 s3, v178, 23
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s59, s9
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v118, 0x80000000, v118, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s59, s10
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v123, v114, s3, 1
	v_readlane_b32 s3, v178, 24
	v_cndmask_b32_e32 v119, 0x80000000, v119, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s59, s11
	v_readlane_b32 s8, v177, 0
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v120, 0x80000000, v120, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s59, s12
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v124, v114, s3, 1
	v_readlane_b32 s3, v178, 25
	v_cndmask_b32_e32 v121, 0x80000000, v121, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s59, s13
	v_readlane_b32 s10, v177, 2
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v122, 0x80000000, v122, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s59, s14
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v127, v114, s3, 1
	v_cndmask_b32_e32 v123, 0x80000000, v123, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s59, s15
	.loc	1 694 30                        ; attention.py:694:30
	v_readlane_b32 s3, v178, 26
	v_cndmask_b32_e32 v124, 0x80000000, v124, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s59, s16
	v_readlane_b32 s11, v177, 3
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v125, 0x80000000, v125, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s59, s17
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v128, v114, s3, 1
	v_cndmask_b32_e32 v126, 0x80000000, v126, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s59, s18
	.loc	1 694 30                        ; attention.py:694:30
	v_readlane_b32 s3, v178, 27
	v_cndmask_b32_e32 v127, 0x80000000, v127, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s59, s19
	.loc	1 694 30                        ; attention.py:694:30
	s_mov_b32 s78, s10
	v_cndmask_b32_e32 v128, 0x80000000, v128, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s59, s20
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v133, v114, s3, 1
	v_cndmask_b32_e32 v129, 0x80000000, v129, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s59, s21
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v114, v114, s82, 1
	v_cndmask_b32_e32 v130, 0x80000000, v130, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s59, s22
	.loc	1 694 30                        ; attention.py:694:30
	s_mov_b32 s79, s11
	v_cndmask_b32_e32 v131, 0x80000000, v131, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s59, s23
	v_readlane_b32 s9, v177, 1
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v132, 0x80000000, v132, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s59, s24
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v133, 0x80000000, v133, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s59, s25
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v134, 0x80000000, v134, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s59, s26
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v135, 0x80000000, v135, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s59, s27
	.loc	1 694 30                        ; attention.py:694:30
	s_clause 0x7
	buffer_load_u16 v111, v111, s[76:79], 0 offen
	buffer_load_u16 v112, v112, s[76:79], 0 offen
	buffer_load_u16 v113, v113, s[76:79], 0 offen
	buffer_load_u16 v110, v110, s[76:79], 0 offen
	buffer_load_u16 v115, v115, s[76:79], 0 offen
	buffer_load_u16 v116, v116, s[76:79], 0 offen
	buffer_load_u16 v117, v117, s[76:79], 0 offen
	buffer_load_u16 v118, v118, s[76:79], 0 offen
	v_cndmask_b32_e32 v136, 0x80000000, v136, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s59, s28
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v137, 0x80000000, v137, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s59, s30
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v138, 0x80000000, v138, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s59, s29
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v139, 0x80000000, v139, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s59, s0
	.loc	1 694 30                        ; attention.py:694:30
	s_clause 0x7
	buffer_load_u16 v119, v119, s[76:79], 0 offen
	buffer_load_u16 v120, v120, s[76:79], 0 offen
	buffer_load_u16 v121, v121, s[76:79], 0 offen
	buffer_load_u16 v122, v122, s[76:79], 0 offen
	buffer_load_u16 v123, v123, s[76:79], 0 offen
	buffer_load_u16 v124, v124, s[76:79], 0 offen
	buffer_load_u16 v125, v125, s[76:79], 0 offen
	buffer_load_u16 v126, v126, s[76:79], 0 offen
	v_cndmask_b32_e32 v140, 0x80000000, v140, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s59, s1
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v114, 0x80000000, v114, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s59, s6
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s72, s42
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v141, 0x80000000, v141, vcc_lo
	s_clause 0xf
	buffer_load_u16 v127, v127, s[76:79], 0 offen
	buffer_load_u16 v128, v128, s[76:79], 0 offen
	buffer_load_u16 v129, v129, s[76:79], 0 offen
	buffer_load_u16 v130, v130, s[76:79], 0 offen
	buffer_load_u16 v131, v131, s[76:79], 0 offen
	buffer_load_u16 v132, v132, s[76:79], 0 offen
	buffer_load_u16 v133, v133, s[76:79], 0 offen
	buffer_load_u16 v134, v134, s[76:79], 0 offen
	buffer_load_u16 v135, v135, s[76:79], 0 offen
	buffer_load_u16 v136, v136, s[76:79], 0 offen
	buffer_load_u16 v137, v137, s[76:79], 0 offen
	buffer_load_u16 v138, v138, s[76:79], 0 offen
	buffer_load_u16 v139, v139, s[76:79], 0 offen
	buffer_load_u16 v140, v140, s[76:79], 0 offen
	buffer_load_u16 v114, v114, s[76:79], 0 offen
	buffer_load_u16 v141, v141, s[76:79], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v99
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(31)
	ds_store_b16 v97, v111
	s_waitcnt vmcnt(30)
	ds_store_b16 v97, v112 offset:256
	s_waitcnt vmcnt(29)
	ds_store_b16 v97, v113 offset:512
	s_waitcnt vmcnt(28)
	ds_store_b16 v97, v110 offset:768
	s_waitcnt vmcnt(27)
	ds_store_b16 v97, v115 offset:1024
	s_waitcnt vmcnt(26)
	ds_store_b16 v97, v116 offset:1280
	s_waitcnt vmcnt(25)
	ds_store_b16 v97, v117 offset:1536
	s_waitcnt vmcnt(24)
	ds_store_b16 v97, v118 offset:1792
	s_waitcnt vmcnt(23)
	ds_store_b16 v97, v119 offset:2048
	s_waitcnt vmcnt(22)
	ds_store_b16 v97, v120 offset:2304
	s_waitcnt vmcnt(21)
	ds_store_b16 v97, v121 offset:2560
	s_waitcnt vmcnt(20)
	ds_store_b16 v97, v122 offset:2816
	s_waitcnt vmcnt(19)
	ds_store_b16 v97, v123 offset:3072
	s_waitcnt vmcnt(18)
	ds_store_b16 v97, v124 offset:3328
	s_waitcnt vmcnt(17)
	ds_store_b16 v97, v125 offset:3584
	s_waitcnt vmcnt(16)
	ds_store_b16 v97, v126 offset:3840
	s_waitcnt vmcnt(15)
	ds_store_b16 v97, v127 offset:4096
	s_waitcnt vmcnt(14)
	ds_store_b16 v97, v128 offset:4352
	s_waitcnt vmcnt(13)
	ds_store_b16 v97, v129 offset:4608
	s_waitcnt vmcnt(12)
	ds_store_b16 v97, v130 offset:4864
	s_waitcnt vmcnt(11)
	ds_store_b16 v97, v131 offset:5120
	s_waitcnt vmcnt(10)
	ds_store_b16 v97, v132 offset:5376
	s_waitcnt vmcnt(9)
	ds_store_b16 v97, v133 offset:5632
	s_waitcnt vmcnt(8)
	ds_store_b16 v97, v134 offset:5888
	s_waitcnt vmcnt(7)
	ds_store_b16 v97, v135 offset:6144
	s_waitcnt vmcnt(6)
	ds_store_b16 v97, v136 offset:6400
	s_waitcnt vmcnt(5)
	ds_store_b16 v97, v137 offset:6656
	s_waitcnt vmcnt(4)
	ds_store_b16 v97, v138 offset:6912
	s_waitcnt vmcnt(3)
	ds_store_b16 v97, v139 offset:7168
	s_waitcnt vmcnt(2)
	ds_store_b16 v97, v140 offset:7424
	s_waitcnt vmcnt(1)
	ds_store_b16 v97, v114 offset:7680
	s_waitcnt vmcnt(0)
	ds_store_b16 v97, v141 offset:7936
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v110, v99, v26
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v118, v110
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v110, v93
	ds_load_u16_d16 v111, v93 offset:256
	ds_load_u16_d16 v112, v93 offset:512
	ds_load_u16_d16 v113, v93 offset:768
	ds_load_u16_d16 v114, v93 offset:1024
	ds_load_u16_d16 v115, v93 offset:1280
	ds_load_u16_d16 v116, v93 offset:1536
	ds_load_u16_d16 v117, v93 offset:1792
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v110, v93 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v111, v93 offset:384
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v112, v93 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v113, v93 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v114, v93 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v115, v93 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v116, v93 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v117, v93 offset:1920
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v99, 0, v118, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v1, v1, v99
	v_mul_f32_e32 v2, v2, v99
	v_mul_f32_e32 v3, v3, v99
	v_mul_f32_e32 v4, v4, v99
	v_mul_f32_e32 v5, v5, v99
	v_mul_f32_e32 v6, v6, v99
	v_mul_f32_e32 v7, v7, v99
	v_mul_f32_e32 v8, v8, v99
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[110:117], v[17:24], v[1:8]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v17, v101, v26
	v_sub_f32_e32 v18, v100, v26
	v_sub_f32_e32 v24, v44, v26
	v_sub_f32_e32 v20, v47, v26
	v_sub_f32_e32 v22, v45, v26
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v17, v17
	v_exp_f32_e32 v18, v18
	v_exp_f32_e32 v24, v24
	v_exp_f32_e32 v20, v20
	v_exp_f32_e32 v22, v22
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	ds_load_u16_d16 v110, v93 offset:2048
	ds_load_u16_d16 v111, v93 offset:2304
	ds_load_u16_d16 v112, v93 offset:2560
	ds_load_u16_d16 v113, v93 offset:2816
	ds_load_u16_d16 v114, v93 offset:3072
	ds_load_u16_d16 v115, v93 offset:3328
	ds_load_u16_d16 v116, v93 offset:3584
	ds_load_u16_d16 v117, v93 offset:3840
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v110, v93 offset:2176
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v111, v93 offset:2432
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v112, v93 offset:2688
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v113, v93 offset:2944
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v114, v93 offset:3200
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v115, v93 offset:3456
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v116, v93 offset:3712
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v117, v93 offset:3968
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v100, 0, v17, s45
	v_cndmask_b32_e64 v101, 0, v18, s103
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v17.h, v25.l
	v_mov_b16_e32 v18.h, v25.l
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v121, 0, v24, s66
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v17.l, v100.h
	v_mov_b16_e32 v18.l, v101.h
	v_cmp_o_f32_e32 vcc_lo, v101, v101
	v_cmp_o_f32_e64 s0, v100, v100
	v_mov_b16_e32 v24.l, v121.h
	v_and_b32_e32 v17, 1, v17
	v_and_b32_e32 v18, 1, v18
	v_mov_b16_e32 v24.h, v25.l
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v119, 0, v22, s34
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v22.h, v25.l
	v_add3_u32 v17, v100, v17, 0x7fff
	v_add3_u32 v18, v101, v18, 0x7fff
	v_and_b32_e32 v24, 1, v24
	v_mov_b16_e32 v22.l, v119.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v18.l, 0x7fff, v17.h, s0
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v24, v121, v24, 0x7fff
	v_and_b32_e32 v22, 1, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v19, v18, s33, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v22, v119, v22, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_perm_b32 v17, v19, v18, v66
	v_perm_b32 v18, v19, v18, v92
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v19, v48, v26
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v48, 0, v20, s35
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v20.h, v25.l
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v20.l, v48.h
	v_cmp_o_f32_e32 vcc_lo, v48, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v20, 1, v20
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v47, 0, v19, s63
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v19.h, v25.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v20, v48, v20, 0x7fff
	v_mov_b16_e32 v19.l, v47.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s0, v47, v47
	v_cndmask_b16 v20.h, 0x7fff, v20.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v19, v47, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v20.l, 0x7fff, v19.h, s0
	v_cmp_o_f32_e64 s0, v119, v119
	v_permlanex16_b32 v21, v20, s33, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v23.l, 0x7fff, v22.h, s0
	v_perm_b32 v19, v21, v20, v66
	v_perm_b32 v20, v21, v20, v92
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v21, v46, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v21, v21
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v118, 0, v21, s100
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v21.h, v25.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v21.l, v118.h
	v_cmp_o_f32_e32 vcc_lo, v118, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v21, v118, v21, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v23.h, 0x7fff, v21.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v121, v121
	v_permlanex16_b32 v22, v23, s33, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v24.h, 0x7fff, v24.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v21, v22, v23, v66
	v_perm_b32 v22, v22, v23, v92
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v23, v43, v26
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v120, 0, v23, s46
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v23.h, v25.l
	v_mov_b16_e32 v23.l, v120.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s0, v120, v120
	v_and_b32_e32 v23, 1, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v23, v120, v23, 0x7fff
	v_cndmask_b16 v24.l, 0x7fff, v23.h, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v43, v24, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v23, v43, v24, v66
	v_perm_b32 v24, v43, v24, v92
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[110:117], v[17:24], v[1:8]
	.loc	1 690 62 is_stmt 1              ; attention.py:690:62
	v_sub_f32_e32 v17, v35, v26
	v_sub_f32_e32 v18, v32, v26
	v_sub_f32_e32 v20, v42, v26
	v_sub_f32_e32 v22, v39, v26
	v_sub_f32_e32 v24, v37, v26
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v17, v17
	v_exp_f32_e32 v18, v18
	v_exp_f32_e32 v20, v20
	v_exp_f32_e32 v22, v22
	v_exp_f32_e32 v24, v24
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v35, 0, v17, vcc_hi
	v_cndmask_b32_e64 v110, 0, v18, s64
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v17.h, v25.l
	v_mov_b16_e32 v18.h, v25.l
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v112, 0, v20, s54
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v17.l, v35.h
	v_mov_b16_e32 v18.l, v110.h
	v_cmp_o_f32_e32 vcc_lo, v110, v110
	v_cmp_o_f32_e64 s0, v35, v35
	v_mov_b16_e32 v20.l, v112.h
	v_and_b32_e32 v17, 1, v17
	v_and_b32_e32 v18, 1, v18
	v_mov_b16_e32 v20.h, v25.l
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v114, 0, v22, s99
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v22.h, v25.l
	v_add3_u32 v17, v35, v17, 0x7fff
	v_add3_u32 v18, v110, v18, 0x7fff
	v_and_b32_e32 v20, 1, v20
	v_mov_b16_e32 v22.l, v114.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v37, 0, v24, s68
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v18.l, 0x7fff, v17.h, s0
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	v_add3_u32 v20, v112, v20, 0x7fff
	v_cmp_o_f32_e64 s0, v112, v112
	v_and_b32_e32 v22, 1, v22
	v_mov_b16_e32 v24.l, v37.h
	v_permlanex16_b32 v19, v18, s33, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e32 v24.h, v25.l
	v_cndmask_b16 v21.l, 0x7fff, v20.h, s0
	v_add3_u32 v22, v114, v22, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v17, v19, v18, v66
	v_perm_b32 v18, v19, v18, v92
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v19, v41, v26 :: v_dual_and_b32 v24, 1, v24
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v24, v37, v24, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v111, 0, v19, s102
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v19.h, v25.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v19.l, v111.h
	v_cmp_o_f32_e32 vcc_lo, v111, v111
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v19, v111, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v21.h, 0x7fff, v19.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v114, v114
	v_permlanex16_b32 v20, v21, s33, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	v_perm_b32 v19, v20, v21, v66
	v_perm_b32 v20, v20, v21, v92
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v21, v40, v26
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v39, v93 offset:4096
	ds_load_u16_d16 v40, v93 offset:4352
	ds_load_u16_d16 v41, v93 offset:4608
	ds_load_u16_d16 v42, v93 offset:4864
	ds_load_u16_d16 v43, v93 offset:5120
	ds_load_u16_d16 v44, v93 offset:5376
	ds_load_u16_d16 v45, v93 offset:5632
	ds_load_u16_d16 v46, v93 offset:5888
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v39, v93 offset:4224
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v40, v93 offset:4480
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v41, v93 offset:4736
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v42, v93 offset:4992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v43, v93 offset:5248
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v44, v93 offset:5504
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v45, v93 offset:5760
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v46, v93 offset:6016
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v113, 0, v21, s101
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v21.h, v25.l
	v_mov_b16_e32 v21.l, v113.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s0, v113, v113
	v_and_b32_e32 v21, 1, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v21, v113, v21, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v21.h, s0
	v_cmp_o_f32_e64 s0, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v23, v22, s33, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v32.l, 0x7fff, v24.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v21, v23, v22, v66
	v_perm_b32 v22, v23, v22, v92
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v23, v36, v26
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v36, 0, v23, s97
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v23.h, v25.l
	v_mov_b16_e32 v23.l, v36.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	v_and_b32_e32 v23, 1, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v23, v36, v23, 0x7fff
	v_cndmask_b16 v32.h, 0x7fff, v23.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v24, v32, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v23, v24, v32, v66
	v_perm_b32 v24, v24, v32, v92
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[39:46], v[17:24], v[1:8]
	.loc	1 690 62 is_stmt 1              ; attention.py:690:62
	v_sub_f32_e32 v17, v29, v26
	v_sub_f32_e32 v18, v28, v26
	v_sub_f32_e32 v22, v34, v26
	v_sub_f32_e32 v24, v30, v26
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v18, v18
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v24, v24
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v39, 0, v17, s96
	v_cndmask_b32_e64 v40, 0, v18, s95
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v17.h, v25.l
	v_mov_b16_e32 v18.h, v25.l
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v20, v38, v26
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v17.l, v39.h
	v_mov_b16_e32 v18.l, v40.h
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	v_cmp_o_f32_e64 s0, v39, v39
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v20, v20
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v17, 1, v17
	v_and_b32_e32 v18, 1, v18
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v43, 0, v22, s91
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v22.h, v25.l
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v45, 0, v24, s60
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v17, v39, v17, 0x7fff
	v_add3_u32 v18, v40, v18, 0x7fff
	v_mov_b16_e32 v22.l, v43.h
	v_mov_b16_e32 v24.h, v25.l
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v41, 0, v20, s94
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v18.l, 0x7fff, v17.h, s0
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	v_mov_b16_e32 v20.h, v25.l
	v_mov_b16_e32 v24.l, v45.h
	v_mov_b16_e32 v20.l, v41.h
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	v_permlanex16_b32 v19, v18, s33, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v24, 1, v24
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_perm_b32 v17, v19, v18, v66
	v_perm_b32 v18, v19, v18, v92
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v19, v27, v26
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v20, v41, v20, 0x7fff
	v_add3_u32 v24, v45, v24, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v19, v19
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v20.h, 0x7fff, v20.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v38, 0, v19, s53
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v19.h, v25.l
	v_mov_b16_e32 v19.l, v38.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s0, v38, v38
	v_and_b32_e32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v19, v38, v19, 0x7fff
	v_cndmask_b16 v20.l, 0x7fff, v19.h, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v21, v20, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v19, v21, v20, v66
	v_perm_b32 v20, v21, v20, v92
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v21, v33, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v21, v21
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v42, 0, v21, s92
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v21.h, v25.l
	v_and_b32_e32 v22, 1, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v21.l, v42.h
	v_cmp_o_f32_e64 s0, v42, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v22, v43, v22, 0x7fff
	v_and_b32_e32 v21, 1, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	v_add3_u32 v21, v42, v21, 0x7fff
	v_cndmask_b16 v24.h, 0x7fff, v24.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v22.l, 0x7fff, v21.h, s0
	v_permlanex16_b32 v23, v22, s33, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v21, v23, v22, v66
	v_perm_b32 v22, v23, v22, v92
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v23, v31, v26
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v27, v93 offset:6144
	ds_load_u16_d16 v28, v93 offset:6400
	ds_load_u16_d16 v29, v93 offset:6656
	ds_load_u16_d16 v30, v93 offset:6912
	ds_load_u16_d16 v31, v93 offset:7168
	ds_load_u16_d16 v32, v93 offset:7424
	ds_load_u16_d16 v33, v93 offset:7680
	ds_load_u16_d16 v34, v93 offset:7936
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v27, v93 offset:6272
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v28, v93 offset:6528
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v29, v93 offset:6784
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v30, v93 offset:7040
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v31, v93 offset:7296
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v32, v93 offset:7552
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v33, v93 offset:7808
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v34, v93 offset:8064
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v44, 0, v23, s50
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v23.h, v25.l
	v_mov_b16_e32 v23.l, v44.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s0, v44, v44
	v_and_b32_e32 v23, 1, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v23, v44, v23, 0x7fff
	v_cndmask_b16 v24.l, 0x7fff, v23.h, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v25, v24, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v23, v25, v24, v66
	v_perm_b32 v24, v25, v24, v92
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v25, v37, v36
.Ltmp29:
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[27:34], v[17:24], v[1:8]
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v17, v102, v103 :: v_dual_add_f32 v18, v104, v105
	v_dual_add_f32 v19, v106, v107 :: v_dual_add_f32 v20, v108, v109
	v_dual_add_f32 v21, v100, v101 :: v_dual_add_f32 v22, v47, v48
	v_add_f32_e32 v17, v17, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_add_f32 v23, v112, v111 :: v_dual_add_f32 v18, v19, v20
	v_add_f32_e32 v24, v113, v114
	v_add_f32_e32 v19, v21, v22
	v_dual_add_f32 v21, v120, v121 :: v_dual_add_f32 v22, v35, v110
	v_add_f32_e32 v20, v119, v118
	v_dual_add_f32 v27, v39, v40 :: v_dual_add_f32 v28, v38, v41
	v_dual_add_f32 v29, v42, v43 :: v_dual_add_f32 v30, v44, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v20, v20, v21 :: v_dual_add_f32 v21, v22, v23
	v_dual_add_f32 v22, v24, v25 :: v_dual_add_f32 v23, v27, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v24, v29, v30
	v_dual_add_f32 v17, v17, v18 :: v_dual_add_f32 v18, v19, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v19, v21, v22 :: v_dual_add_f32 v20, v23, v24
	v_dual_add_f32 v17, v17, v18 :: v_dual_add_f32 v18, v19, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v17, v17, v18
.Ltmp31:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v18, v17, s33, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v17, v17, v18
.Ltmp33:
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v17, v98, v99
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v99, v26 :: v_dual_mov_b32 v98, v17
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc0 .LBB0_14
.LBB0_8:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 633 32                        ; attention.py:633:32
	s_add_i32 s19, s72, s43
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v17, s72, v67
	.loc	1 633 32                        ; attention.py:633:32
	s_mul_i32 s0, s19, s40
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v100, s72, v86
	.loc	1 633 32                        ; attention.py:633:32
	v_add_nc_u32_e32 v32, s0, v51
	v_add_nc_u32_e32 v34, s0, v69
	v_add_nc_u32_e32 v35, s0, v70
	v_add_nc_u32_e32 v36, s0, v52
	v_readlane_b32 s0, v178, 8
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e32 vcc_lo, s67, v17
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v19, 8, v17
	v_add_nc_u32_e32 v20, 12, v17
	v_add_nc_u32_e32 v21, 16, v17
	v_add_nc_u32_e32 v37, s0, v32
	v_readlane_b32 s0, v178, 9
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v18, 4, v17
	v_add_nc_u32_e32 v30, 52, v17
	v_add_nc_u32_e32 v33, 60, v17
	v_add_nc_u32_e32 v38, s0, v32
	v_readlane_b32 s0, v178, 10
	v_add_nc_u32_e32 v23, 24, v17
	v_add_nc_u32_e32 v40, s47, v32
	v_add_nc_u32_e32 v25, 32, v17
	v_add_nc_u32_e32 v44, s55, v32
	v_add_nc_u32_e32 v39, s0, v32
	v_readlane_b32 s0, v178, 11
	v_add_nc_u32_e32 v22, 20, v17
	v_add_nc_u32_e32 v26, 36, v17
	v_writelane_b32 v177, s76, 10
	v_add_nc_u32_e32 v41, s48, v32
	v_add_nc_u32_e32 v42, s0, v32
	v_readlane_b32 s0, v178, 12
	v_add_nc_u32_e32 v27, 40, v17
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s8, s67, v22
	v_cmp_gt_i32_e64 s12, s67, v26
	v_writelane_b32 v177, s77, 11
	v_add_nc_u32_e32 v43, s0, v32
	v_readlane_b32 s0, v178, 13
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v24, 28, v17
	v_add_nc_u32_e32 v45, s39, v32
	v_writelane_b32 v177, s78, 12
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s16, s67, v30
	v_add_nc_u32_e32 v46, s0, v32
	v_readlane_b32 s0, v178, 14
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v29, 48, v17
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s10, s67, v24
	v_writelane_b32 v177, s79, 13
	v_cmp_gt_i32_e64 s18, s67, v33
	v_add_nc_u32_e32 v47, s0, v32
	v_readlane_b32 s0, v178, 15
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v28, 44, v17
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s15, s67, v29
	v_readlane_b32 s20, v177, 4
	v_readlane_b32 s21, v177, 5
	v_add_nc_u32_e32 v48, s0, v32
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v31, 56, v17
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v17, 0x80000000, v32, vcc_lo
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s0, s67, v18
	v_cmp_gt_i32_e64 s14, s67, v28
	v_readlane_b32 s22, v177, 6
	v_cmp_gt_i32_e64 s17, s67, v31
	v_readlane_b32 s23, v177, 7
	.loc	1 636 30 is_stmt 0              ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s0
	.loc	1 650 25 is_stmt 1              ; attention.py:650:25
	v_add_lshl_u32 v125, s19, v86, 1
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v18, 0x80000000, v34, vcc_lo
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s1, s67, v19
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v140, 12, v100
	v_add_nc_u32_e32 v144, 14, v100
	v_add_nc_u32_e32 v155, 36, v100
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v127, 4, v125
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s1
	.loc	1 634 32                        ; attention.py:634:32
	v_dual_cndmask_b32 v19, 0x80000000, v35 :: v_dual_add_nc_u32 v134, 2, v100
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s6, s67, v20
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v139, 24, v125
	v_add_nc_u32_e32 v141, 28, v125
	v_add_nc_u32_e32 v152, 0x48, v125
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s1, s67, v134
	.loc	1 636 30 is_stmt 0              ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s6
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_add_nc_u32_e32 v137, 8, v100
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v20, 0x80000000, v36, vcc_lo
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s7, s67, v21
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v145, 22, v100
	v_add_nc_u32_e32 v148, 24, v100
	v_add_nc_u32_e32 v151, 26, v100
	v_add_nc_u32_e32 v154, 28, v100
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s7
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v157, 30, v100
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v21, 0x80000000, v37, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s8
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v136, 6, v100
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v22, 0x80000000, v38, vcc_lo
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s9, s67, v23
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v156, 38, v100
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v131, 12, v125
	v_add_nc_u32_e32 v132, 16, v125
	v_add_nc_u32_e32 v133, 20, v125
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s9
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v143, 44, v125
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v23, 0x80000000, v39, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s10
	.loc	1 634 32                        ; attention.py:634:32
	s_clause 0x5
	buffer_load_u8 v17, v17, s[20:23], 0 offen
	buffer_load_u8 v18, v18, s[20:23], 0 offen
	buffer_load_u8 v19, v19, s[20:23], 0 offen
	buffer_load_u8 v21, v21, s[20:23], 0 offen
	buffer_load_u8 v22, v22, s[20:23], 0 offen
	buffer_load_u8 v23, v23, s[20:23], 0 offen
	v_cndmask_b32_e32 v24, 0x80000000, v40, vcc_lo
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s11, s67, v25
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v135, 4, v100
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s10, s67, v140
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v146, 48, v125
	v_add_nc_u32_e32 v147, 52, v125
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s11
	.loc	1 636 73 is_stmt 0              ; attention.py:636:73
	v_cmp_gt_i32_e64 s11, s67, v144
	.loc	1 634 32 is_stmt 1              ; attention.py:634:32
	v_cndmask_b32_e32 v25, 0x80000000, v41, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s12
	.loc	1 634 32                        ; attention.py:634:32
	v_dual_cndmask_b32 v26, 0x80000000, v42 :: v_dual_add_nc_u32 v149, 56, v125
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s13, s67, v27
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v150, 60, v125
	v_add_nc_u32_e32 v153, 0x4c, v125
	v_add_nc_u32_e32 v158, 0x50, v125
	v_add_nc_u32_e32 v159, 0x54, v125
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s13
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v160, 0x58, v125
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v27, 0x80000000, v43, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s15
	v_writelane_b32 v177, s19, 14
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v28, 0x80000000, v45, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s14
	.loc	1 634 32                        ; attention.py:634:32
	s_clause 0x1
	buffer_load_u8 v25, v25, s[20:23], 0 offen
	buffer_load_u8 v28, v28, s[20:23], 0 offen
	v_cndmask_b32_e32 v29, 0x80000000, v44, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s16
	.loc	1 636 73 is_stmt 0              ; attention.py:636:73
	v_cmp_gt_i32_e64 s7, s67, v136
	.loc	1 634 32 is_stmt 1              ; attention.py:634:32
	v_cndmask_b32_e32 v30, 0x80000000, v46, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s17
	.loc	1 634 32                        ; attention.py:634:32
	s_clause 0x1
	buffer_load_u8 v26, v26, s[20:23], 0 offen
	buffer_load_u8 v30, v30, s[20:23], 0 offen
	v_cndmask_b32_e32 v31, 0x80000000, v47, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s4, s18
	.loc	1 636 73 is_stmt 0              ; attention.py:636:73
	v_cmp_gt_i32_e64 s18, s67, v155
	.loc	1 634 32 is_stmt 1              ; attention.py:634:32
	v_cndmask_b32_e32 v32, 0x80000000, v48, vcc_lo
	s_clause 0x5
	buffer_load_u8 v27, v27, s[20:23], 0 offen
	buffer_load_u8 v31, v31, s[20:23], 0 offen
	buffer_load_u8 v20, v20, s[20:23], 0 offen
	buffer_load_u8 v24, v24, s[20:23], 0 offen
	buffer_load_u8 v29, v29, s[20:23], 0 offen
	buffer_load_u8 v32, v32, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e32 vcc_lo, s67, v100
	v_cmp_gt_i32_e64 s8, s67, v137
	v_cmp_gt_i32_e64 s13, s67, v145
	v_cmp_gt_i32_e64 s14, s67, v148
	v_cmp_gt_i32_e64 s15, s67, v151
	v_cmp_gt_i32_e64 s16, s67, v154
	v_cmp_gt_i32_e64 s17, s67, v157
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v142, 20, v100
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v130, 8, v125
	v_add_nc_u32_e32 v129, 0x5c, v125
	v_add_nc_u32_e32 v128, 0x60, v125
	v_add_nc_u32_e32 v126, 0x64, v125
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v162, 18, v100
	v_add_nc_u32_e32 v163, 16, v100
	v_add_nc_u32_e32 v161, 34, v100
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s6, s67, v135
	v_cmp_gt_i32_e64 s12, s67, v142
	v_readlane_b32 s76, v177, 0
	v_cmp_gt_i32_e64 s31, s67, v162
	v_cmp_gt_i32_e64 s34, s67, v163
	v_cmp_gt_i32_e64 s33, s67, v161
	v_readlane_b32 s77, v177, 1
	v_readlane_b32 s78, v177, 2
	v_readlane_b32 s79, v177, 3
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s104, s57, vcc_lo
	s_and_b32 s93, s57, s1
	s_and_b32 s61, s57, s6
	s_and_b32 s52, s57, s7
	s_and_b32 s49, s57, s8
	s_and_b32 s85, s57, s10
	s_and_b32 s69, s57, s11
	s_and_b32 s45, s57, s34
	s_and_b32 s3, s57, s31
	s_and_b32 s63, s57, s12
	s_and_b32 s2, s57, s13
	s_and_b32 s100, s57, s15
	s_and_b32 s46, s57, s16
	s_and_b32 s66, s57, s17
	s_and_b32 s64, s57, s33
	s_and_b32 s54, s57, s18
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt vmcnt(15)
	ds_store_b8 v72, v17
	s_waitcnt vmcnt(12)
	ds_store_b8 v72, v21 offset:512
	s_waitcnt vmcnt(9)
	ds_store_b8 v72, v25 offset:1024
	s_waitcnt vmcnt(8)
	ds_store_b8 v72, v28 offset:1536
	ds_store_b8 v73, v18
	ds_store_b8 v73, v22 offset:512
	s_waitcnt vmcnt(7)
	ds_store_b8 v73, v26 offset:1024
	s_waitcnt vmcnt(6)
	ds_store_b8 v73, v30 offset:1536
	ds_store_b8 v74, v19
	ds_store_b8 v74, v23 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v74, v27 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v74, v31 offset:1536
	s_waitcnt vmcnt(3)
	ds_store_b8 v75, v20
	s_waitcnt vmcnt(2)
	ds_store_b8 v75, v24 offset:512
	s_waitcnt vmcnt(1)
	ds_store_b8 v75, v29 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v75, v32 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[23:26], v76 offset1:1
	ds_load_2addr_stride64_b64 v[101:104], v76 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[105:108], v77 offset1:1
	ds_load_2addr_stride64_b64 v[109:112], v77 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[113:116], v78 offset1:1
	ds_load_2addr_stride64_b64 v[117:120], v78 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[121:124], v79 offset1:1
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v138, 10, v100
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s9, s67, v138
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s90, s57, s9
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[23:24], v[53:54], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[25:26], v[53:54], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[101:102], v[53:54], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[103:104], v[53:54], v[9:16] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[101:104], v79 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[109:110], v[55:56], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[105:106], v[55:56], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[111:112], v[55:56], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[107:108], v[55:56], v[17:24] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v106, 32, v125
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[117:118], v[57:58], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[113:114], v[57:58], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[119:120], v[57:58], v[33:40] neg_lo:[1,1,0]
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v119, s72, v87
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v113, 0x80000000, v139, s10
	v_cndmask_b32_e64 v114, 0x80000000, v141, s11
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v139, 42, v100
	v_add_nc_u32_e32 v141, 44, v100
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s0, s67, v119
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[17:24], v[115:116], v[57:58], v[17:24] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v109, 36, v125
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s21, s67, v139
	v_cmp_gt_i32_e64 s22, s67, v141
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v115, 40, v125
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[103:104], v[59:60], v[33:40] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v103, s19, v87, 1
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[25:32], v[101:102], v[59:60], v[25:32] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e32 v101, 0x80000000, v125, vcc_lo
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s19, s67, v156
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v110, 64, v125
	v_cndmask_b32_e64 v105, 0x80000000, v103, s0
	v_cndmask_b32_e64 v103, 0x80000000, v127, s1
	v_cndmask_b32_e64 v127, 0x80000000, v152, s18
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v152, 40, v100
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[121:122], v[59:60], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[123:124], v[59:60], v[17:24] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v107, 0x44, v125
	v_add_nc_u32_e32 v102, 0x68, v125
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s20, s67, v152
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v116, 0x6c, v125
	v_add_nc_u32_e32 v122, 0x70, v125
	v_add_nc_u32_e32 v121, 0x74, v125
	v_add_nc_u32_e32 v120, 0x78, v125
	v_cndmask_b32_e64 v108, 0x80000000, v131, s7
	v_cndmask_b32_e64 v111, 0x80000000, v132, s8
	v_cndmask_b32_e64 v112, 0x80000000, v133, s9
	v_cndmask_b32_e64 v117, 0x80000000, v143, s13
	v_cndmask_b32_e64 v118, 0x80000000, v146, s14
	v_cndmask_b32_e64 v123, 0x80000000, v147, s15
	v_cndmask_b32_e64 v124, 0x80000000, v149, s16
	v_cndmask_b32_e64 v125, 0x80000000, v150, s17
	v_cndmask_b32_e64 v131, 0x80000000, v153, s19
	v_cndmask_b32_e64 v132, 0x80000000, v158, s20
	v_cndmask_b32_e64 v133, 0x80000000, v159, s21
	v_cndmask_b32_e64 v164, 0x80000000, v160, s22
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v143, 46, v100
	v_add_nc_u32_e32 v146, 48, v100
	v_add_nc_u32_e32 v149, 50, v100
	v_add_nc_u32_e32 v147, 56, v100
	v_add_nc_u32_e32 v150, 58, v100
	v_add_nc_u32_e32 v153, 60, v100
	v_add_nc_u32_e32 v158, 54, v100
	v_add_nc_u32_e32 v160, 32, v100
	v_add_nc_u32_e32 v159, 52, v100
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s23, s67, v143
	v_cmp_gt_i32_e64 s24, s67, v146
	v_cmp_gt_i32_e64 s25, s67, v149
	v_cmp_gt_i32_e64 s26, s67, v147
	v_cmp_gt_i32_e64 s27, s67, v150
	v_cmp_gt_i32_e64 s28, s67, v153
	v_cmp_gt_i32_e64 s29, s67, v158
	v_cmp_gt_i32_e64 s30, s67, v160
	v_cmp_gt_i32_e64 s35, s67, v159
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v104, 0x80000000, v130, s6
	v_cndmask_b32_e64 v115, 0x80000000, v115, s12
	v_cndmask_b32_e64 v165, 0x80000000, v129, s23
	v_cndmask_b32_e64 v166, 0x80000000, v128, s24
	v_cndmask_b32_e64 v167, 0x80000000, v126, s25
	v_cndmask_b32_e64 v168, 0x80000000, v122, s26
	v_cndmask_b32_e64 v169, 0x80000000, v121, s27
	v_cndmask_b32_e64 v170, 0x80000000, v120, s28
	v_cndmask_b32_e64 v171, 0x80000000, v116, s29
	v_cndmask_b32_e64 v172, 0x80000000, v110, s30
	v_cndmask_b32_e64 v173, 0x80000000, v109, s31
	v_cndmask_b32_e64 v174, 0x80000000, v106, s34
	v_cndmask_b32_e64 v175, 0x80000000, v107, s33
	v_cndmask_b32_e64 v176, 0x80000000, v102, s35
	s_clause 0x1f
	buffer_load_u16 v128, v101, s[76:79], 0 offen
	buffer_load_u16 v107, v103, s[76:79], 0 offen
	buffer_load_u16 v110, v104, s[76:79], 0 offen
	buffer_load_u16 v109, v108, s[76:79], 0 offen
	buffer_load_u16 v129, v111, s[76:79], 0 offen
	buffer_load_u16 v101, v112, s[76:79], 0 offen
	buffer_load_u16 v106, v113, s[76:79], 0 offen
	buffer_load_u16 v108, v114, s[76:79], 0 offen
	buffer_load_u16 v120, v115, s[76:79], 0 offen
	buffer_load_u16 v121, v117, s[76:79], 0 offen
	buffer_load_u16 v122, v118, s[76:79], 0 offen
	buffer_load_u16 v126, v123, s[76:79], 0 offen
	buffer_load_u16 v124, v124, s[76:79], 0 offen
	buffer_load_u16 v125, v125, s[76:79], 0 offen
	buffer_load_u16 v130, v127, s[76:79], 0 offen
	buffer_load_u16 v115, v131, s[76:79], 0 offen
	buffer_load_u16 v117, v132, s[76:79], 0 offen
	buffer_load_u16 v118, v133, s[76:79], 0 offen
	buffer_load_u16 v131, v164, s[76:79], 0 offen
	buffer_load_u16 v112, v165, s[76:79], 0 offen
	buffer_load_u16 v113, v166, s[76:79], 0 offen
	buffer_load_u16 v116, v167, s[76:79], 0 offen
	buffer_load_u16 v103, v168, s[76:79], 0 offen
	buffer_load_u16 v102, v169, s[76:79], 0 offen
	buffer_load_u16 v104, v170, s[76:79], 0 offen
	buffer_load_u16 v133, v171, s[76:79], 0 offen
	buffer_load_u16 v132, v172, s[76:79], 0 offen
	buffer_load_u16 v127, v173, s[76:79], 0 offen
	buffer_load_u16 v111, v174, s[76:79], 0 offen
	buffer_load_u16 v123, v175, s[76:79], 0 offen
	buffer_load_u16 v114, v176, s[76:79], 0 offen
	buffer_load_u16 v105, v105, s[76:79], 0 offen
	.loc	1 667 17                        ; attention.py:667:17
	v_cmp_ne_u32_e32 vcc_lo, 1, v80
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s10, s57, s14
	s_and_b32 vcc_hi, s57, s30
	s_and_b32 s102, s57, s19
	s_and_b32 s101, s57, s20
	s_and_b32 s99, s57, s21
	s_and_b32 s68, s57, s22
	s_and_b32 s97, s57, s23
	s_and_b32 s96, s57, s24
	s_and_b32 s95, s57, s25
	s_and_b32 s53, s57, s35
	s_and_b32 s94, s57, s29
	s_and_b32 s92, s57, s26
	s_and_b32 s91, s57, s27
	s_and_b32 s50, s57, s28
	s_and_b32 s60, s57, s0
	.loc	1 667 17                        ; attention.py:667:17
	s_cbranch_vccnz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=1
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e32 vcc_lo, v100, v88
	v_cmp_le_i32_e64 s0, v134, v88
	v_cmp_le_i32_e64 s1, v135, v88
	v_cmp_le_i32_e64 s6, v136, v88
	v_cmp_le_i32_e64 s7, v137, v88
	v_cmp_le_i32_e64 s8, v138, v88
	.loc	1 668 21 is_stmt 0              ; attention.py:668:21
	s_and_b32 s36, vcc_lo, s104
	s_and_b32 s0, s0, s93
	s_and_b32 s1, s1, s61
	s_and_b32 s6, s6, s52
	s_and_not1_b32 s37, s104, exec_lo
	s_and_b32 s36, s36, exec_lo
	s_and_not1_b32 s38, s93, exec_lo
	s_and_b32 s0, s0, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s9, v140, v88
	s_mov_b32 s78, s10
	v_cmp_le_i32_e64 s10, v144, v88
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s7, s7, s49
	s_and_b32 s8, s8, s90
	s_or_b32 s104, s37, s36
	s_or_b32 s93, s38, s0
	s_and_not1_b32 s0, s61, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_not1_b32 s36, s52, exec_lo
	s_and_b32 s6, s6, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s11, v163, v88
	v_cmp_le_i32_e64 s12, v162, v88
	s_or_b32 s61, s0, s1
	s_or_b32 s52, s36, s6
	s_and_not1_b32 s0, s49, exec_lo
	s_and_b32 s1, s7, exec_lo
	s_and_not1_b32 s6, s90, exec_lo
	s_and_b32 s7, s8, exec_lo
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s9, s9, s85
	s_and_b32 s10, s10, s69
	s_or_b32 s49, s0, s1
	s_or_b32 s0, s6, s7
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s13, v142, v88
	v_cmp_le_i32_e64 s14, v145, v88
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s11, s11, s45
	s_and_b32 s12, s12, s3
	v_writelane_b32 v177, s0, 15
	s_and_not1_b32 s0, s85, exec_lo
	s_and_b32 s1, s9, exec_lo
	s_and_not1_b32 s6, s69, exec_lo
	s_and_b32 s7, s10, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s15, v148, v88
	v_cmp_le_i32_e64 s16, v151, v88
	s_or_b32 s85, s0, s1
	s_or_b32 s69, s6, s7
	s_and_not1_b32 s0, s45, exec_lo
	s_and_b32 s1, s11, exec_lo
	s_and_not1_b32 s6, s3, exec_lo
	s_and_b32 s7, s12, exec_lo
	v_cmp_le_i32_e64 s17, v154, v88
	v_cmp_le_i32_e64 s18, v157, v88
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s13, s13, s63
	s_and_b32 s14, s14, s2
	s_or_b32 s45, s0, s1
	s_or_b32 s0, s6, s7
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s19, v160, v88
	v_cmp_le_i32_e64 s20, v161, v88
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s15, s15, s78
	s_and_b32 s16, s16, s100
	v_writelane_b32 v177, s0, 16
	s_and_not1_b32 s0, s63, exec_lo
	s_and_b32 s1, s13, exec_lo
	s_and_not1_b32 s6, s2, exec_lo
	s_and_b32 s7, s14, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s21, v155, v88
	v_cmp_le_i32_e64 s22, v156, v88
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s17, s17, s46
	s_and_b32 s18, s18, s66
	s_or_b32 s63, s0, s1
	s_or_b32 s2, s6, s7
	s_and_not1_b32 s0, s78, exec_lo
	s_and_b32 s1, s15, exec_lo
	s_and_not1_b32 s6, s100, exec_lo
	s_and_b32 s7, s16, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s23, v152, v88
	v_cmp_le_i32_e64 s24, v139, v88
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s19, s19, vcc_hi
	s_and_b32 s20, s20, s64
	s_or_b32 s10, s0, s1
	s_or_b32 s100, s6, s7
	s_and_not1_b32 s0, s46, exec_lo
	s_and_b32 s1, s17, exec_lo
	s_and_not1_b32 s6, s66, exec_lo
	s_and_b32 s7, s18, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s25, v141, v88
	v_cmp_le_i32_e64 s26, v143, v88
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s21, s21, s54
	s_and_b32 s22, s22, s102
	s_or_b32 s46, s0, s1
	s_or_b32 s66, s6, s7
	s_and_not1_b32 s0, vcc_hi, exec_lo
	s_and_b32 s1, s19, exec_lo
	s_and_not1_b32 s6, s64, exec_lo
	s_and_b32 s7, s20, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s27, v146, v88
	v_cmp_le_i32_e64 s28, v149, v88
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s23, s23, s101
	s_and_b32 s24, s24, s99
	s_or_b32 vcc_hi, s0, s1
	s_or_b32 s64, s6, s7
	s_and_not1_b32 s0, s54, exec_lo
	s_and_b32 s1, s21, exec_lo
	s_and_not1_b32 s6, s102, exec_lo
	s_and_b32 s7, s22, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s29, v159, v88
	v_cmp_le_i32_e64 s30, v158, v88
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s25, s25, s68
	s_and_b32 s26, s26, s97
	s_or_b32 s54, s0, s1
	s_or_b32 s102, s6, s7
	s_and_not1_b32 s0, s101, exec_lo
	s_and_b32 s1, s23, exec_lo
	s_and_not1_b32 s6, s99, exec_lo
	s_and_b32 s7, s24, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s31, v147, v88
	v_cmp_le_i32_e64 s33, v150, v88
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s27, s27, s96
	s_and_b32 s28, s28, s95
	s_or_b32 s101, s0, s1
	s_or_b32 s99, s6, s7
	s_and_not1_b32 s0, s68, exec_lo
	s_and_b32 s1, s25, exec_lo
	s_and_not1_b32 s6, s97, exec_lo
	s_and_b32 s7, s26, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s34, v153, v88
	v_cmp_le_i32_e64 s35, v119, v88
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s29, s29, s53
	s_and_b32 s30, s30, s94
	s_or_b32 s68, s0, s1
	s_or_b32 s97, s6, s7
	s_and_not1_b32 s0, s96, exec_lo
	s_and_b32 s1, s27, exec_lo
	s_and_not1_b32 s6, s95, exec_lo
	s_and_b32 s7, s28, exec_lo
	s_and_b32 s31, s31, s92
	s_and_b32 s33, s33, s91
	s_or_b32 s96, s0, s1
	s_or_b32 s95, s6, s7
	s_and_not1_b32 s0, s53, exec_lo
	s_and_b32 s1, s29, exec_lo
	s_and_not1_b32 s6, s94, exec_lo
	s_and_b32 s7, s30, exec_lo
	s_and_b32 s34, s34, s50
	s_and_b32 s35, s35, s60
	s_or_b32 s53, s0, s1
	s_or_b32 s94, s6, s7
	s_and_not1_b32 s0, s92, exec_lo
	s_and_b32 s1, s31, exec_lo
	s_and_not1_b32 s6, s91, exec_lo
	s_and_b32 s7, s33, exec_lo
	s_or_b32 s92, s0, s1
	s_or_b32 s91, s6, s7
	s_and_not1_b32 s0, s50, exec_lo
	s_and_b32 s1, s34, exec_lo
	s_and_not1_b32 s6, s60, exec_lo
	s_and_b32 s7, s35, exec_lo
	s_or_b32 s50, s0, s1
	s_or_b32 s60, s6, s7
	s_branch .LBB0_11
.LBB0_10:                               ;   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 21                          ; attention.py:0:21
	v_writelane_b32 v177, s90, 15
	v_writelane_b32 v177, s3, 16
.LBB0_11:                               ;   in Loop: Header=BB0_8 Depth=1
	.loc	1 669 17 is_stmt 1              ; attention.py:669:17
	v_readlane_b32 s0, v178, 0
	s_and_not1_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccz .LBB0_6
; %bb.12:                               ;   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 17 is_stmt 0                ; attention.py:0:17
	v_readlane_b32 s76, v177, 10
	v_readlane_b32 s77, v177, 11
	v_readlane_b32 s78, v177, 12
	v_readlane_b32 s79, v177, 13
	v_readlane_b32 s103, v177, 16
	v_readlane_b32 s3, v177, 15
	.loc	1 669 17                        ; attention.py:669:17
	s_branch .LBB0_7
.LBB0_13:
	.loc	1 0 17                          ; attention.py:0:17
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v26, 0xff800000 :: v_dual_mov_b32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v17, v8
	s_branch .LBB0_15
.LBB0_14:                               ; %Flow
	v_readlane_b32 s16, v178, 1
	v_readlane_b32 s26, v178, 6
	v_readlane_b32 s27, v178, 7
	v_readlane_b32 s28, v178, 5
	v_readlane_b32 s17, v178, 2
	v_readlane_b32 s18, v178, 3
	v_readlane_b32 s19, v178, 4
.LBB0_15:                               ; %._crit_edge
	.loc	1 825 26 is_stmt 1              ; attention.py:825:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v71
	.loc	1 822 31                        ; attention.py:822:31
	s_mul_i32 s1, s28, s27
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s0, s41, 2
	.loc	1 822 31                        ; attention.py:822:31
	s_add_i32 s1, s26, s1
	.loc	1 833 13                        ; attention.py:833:13
	s_mov_b32 s3, exec_lo
	.loc	1 825 17                        ; attention.py:825:17
	v_dual_cndmask_b32 v9, 0xff800000, v26 :: v_dual_cndmask_b32 v12, 0, v4
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v14, 0, v6
	v_dual_cndmask_b32 v13, 0, v5 :: v_dual_cndmask_b32 v16, 0, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_dual_mov_b32 v10, v9 :: v_dual_cndmask_b32 v11, 0, v17
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_cndmask_b32 v2, 0, v2
.Ltmp36:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v15, 0, v7 :: v_dual_mov_b32 v6, v1
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v3, 0, v3, vcc_lo
	.loc	1 822 30                        ; attention.py:822:30
	s_mul_i32 s0, s1, s0
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v18, v14
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v4, v10, v10 :: v_dual_mov_b32 v5, v11
.Ltmp41:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v7, v2 :: v_dual_mov_b32 v8, v3
	v_mov_b32_e32 v20, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v4, v9, v4
.Ltmp43:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp44:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v5, v11, v5
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v9, v4
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v3, v3, v8
	v_dual_add_f32 v1, v1, v6 :: v_dual_add_f32 v2, v2, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp48:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v6, v5
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp51:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp52:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v8, v9, v9
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v10, v3
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v12, v12, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v4, v4, v8 :: v_dual_mov_b32 v7, v1
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v5, v5, v6
.Ltmp57:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v6, v4
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v1, v1, v7
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v9, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v6, v6, v6
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v8, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v2, v2, v9 :: v_dual_add_f32 v9, v3, v10
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_dual_mov_b32 v3, v5 :: v_dual_mov_b32 v10, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v1, v1, v8
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v8, v4, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v7, v5, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp72:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v3, v2, v10 :: v_dual_mov_b32 v2, v1
.Ltmp73:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v11, v9 :: v_dual_mov_b32 v10, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v4, v9, v11 :: v_dual_mov_b32 v9, v7
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v11, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v5, v3 :: v_dual_mov_b32 v6, v4
.Ltmp77:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v11, v13, v11
	v_add_f32_e32 v13, v14, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v19, v15 :: v_dual_mov_b32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v14, v15, v19 :: v_dual_add_f32 v15, v16, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v20, v15
	v_mov_b32_e32 v16, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v12, v12, v17
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v17, v12
.Ltmp85:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v11, v11, v16 :: v_dual_add_f32 v16, v13, v18
	v_add_f32_e32 v18, v14, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v13, v12, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v19, v15, v20 :: v_dual_mov_b32 v20, v16
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v14, v13 :: v_dual_mov_b32 v21, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v22, v19
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v15, v11
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v17, v19, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v11, v11, v15
	v_dual_add_f32 v15, v16, v20 :: v_dual_add_f32 v16, v18, v21
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v20, v17
.Ltmp91:
	.loc	1 833 13                        ; attention.py:833:13
	v_or_b32_e32 v21, v67, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v12, v11
	v_dual_mov_b32 v18, v15 :: v_dual_mov_b32 v19, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp93:
	.loc	1 833 13                        ; attention.py:833:13
	v_cmpx_eq_u32_e32 0, v21
	s_cbranch_execz .LBB0_17
; %bb.16:
.Ltmp94:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v21, v8, v8
.Ltmp95:
	.loc	1 833 13                        ; attention.py:833:13
	s_ashr_i32 s1, s0, 31
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v8, v7, v9
.Ltmp97:
	.loc	1 833 13                        ; attention.py:833:13
	s_lshl_b64 s[4:5], s[0:1], 2
	v_mov_b32_e32 v9, 0
.Ltmp98:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v7, v21, v10
.Ltmp99:
	.loc	1 833 13                        ; attention.py:833:13
	s_add_u32 s4, s16, s4
	s_addc_u32 s5, s17, s5
	.loc	1 834 13                        ; attention.py:834:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_17:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s3
.Ltmp100:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v7, v15, v18 :: v_dual_lshlrev_b32 v10, 2, v0
	v_dual_add_f32 v9, v17, v20 :: v_dual_add_f32 v8, v16, v19
	v_add_f32_e32 v16, v13, v14
	v_dual_add_f32 v15, v4, v6 :: v_dual_add_f32 v14, v3, v5
.Ltmp101:
	.loc	1 835 13                        ; attention.py:835:13
	v_lshlrev_b32_e32 v3, 5, v0
	v_and_b32_e32 v4, 0xc0, v10
	v_and_b32_e32 v5, 0xe0, v68
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v13, v1, v2
.Ltmp103:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v1, 28, v68
	v_and_b32_e32 v2, 32, v3
	v_add_nc_u32_e32 v3, 0, v4
	v_add_nc_u32_e32 v4, 0, v5
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v6, v11, v12
.Ltmp105:
	.loc	1 835 13                        ; attention.py:835:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v1, v3, v2, v1
	ds_store_b128 v4, v[13:16]
	ds_store_b128 v4, v[6:9] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_b32_e32 v0, 64, v0
	ds_load_b32 v1, v1
	.loc	1 836 17                        ; attention.py:836:17
	v_add_nc_u32_e32 v2, s0, v50
	.loc	1 835 13                        ; attention.py:835:13
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, 0x31027000
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	s_mov_b32 s18, 0x7ffffffe
	v_lshl_add_u32 v0, v2, 2, 8
	s_and_b32 vcc_lo, vcc_lo, s59
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[16:19], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp106:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
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
		.amdhsa_next_free_vgpr 179
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.num_vgpr, 179
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15448
; TotalNumSgprs: 107
; NumVgprs: 179
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 107
; NumVGPRsForWavesPerEU: 179
; Occupancy: 8
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
	.quad	.Ltmp27-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
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
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     107
    .sgpr_spill_count: 64
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     179
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
