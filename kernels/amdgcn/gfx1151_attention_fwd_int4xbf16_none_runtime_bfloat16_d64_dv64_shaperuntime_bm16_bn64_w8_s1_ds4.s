	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
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
	s_load_b128 s[64:67], s[0:1], 0x4c
	s_load_b32 s40, s[0:1], 0x60
.Ltmp0:
	.loc	1 835 13 prologue_end           ; attention.py:835:13
	v_lshrrev_b32_e32 v68, 5, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v49, 31, v0
	s_mov_b32 s15, 0x31027000
	.loc	1 585 26                        ; attention.py:585:26
	v_and_b32_e32 v4, 0x7f, v0
	.loc	1 590 31                        ; attention.py:590:31
	s_mov_b32 s23, s15
	.loc	1 585 26                        ; attention.py:585:26
	v_lshlrev_b32_e32 v69, 1, v0
                                        ; implicit-def: $vgpr179 : SGPR spill to VGPR lane
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v70, 15, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s3, 1, s8
	s_bitcmp1_b32 s8, 8
	s_cselect_b32 s91, -1, 0
	s_cmp_eq_u32 s3, 1
	.loc	1 583 26                        ; attention.py:583:26
	s_mul_i32 s18, s25, s66
	s_cselect_b32 s3, -1, 0
	.loc	1 609 32                        ; attention.py:609:32
	s_abs_i32 s7, s26
	.loc	1 559 27                        ; attention.py:559:27
	s_abs_i32 s5, s2
	.loc	1 609 32                        ; attention.py:609:32
	s_cvt_f32_u32 s4, s7
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s6, s2, s26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s6, s6, 31
	.loc	1 609 32                        ; attention.py:609:32
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_cvt_u32_f32 s16, s4
	s_sub_i32 s4, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s4, s4, s16
	s_mul_hi_u32 s4, s16, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s16, s16, s4
	.loc	1 559 27                        ; attention.py:559:27
	s_mul_hi_u32 s4, s5, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s12, s4, s7
	s_sub_i32 s5, s5, s12
	s_add_i32 s12, s4, 1
	s_sub_i32 s13, s5, s7
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s12, s4
	s_cselect_b32 s5, s13, s5
	s_add_i32 s12, s4, 1
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s12, s4
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s5, s64
	.loc	1 566 23                        ; attention.py:566:23
	s_abs_i32 s14, s25
	s_cvt_f32_u32 s12, s5
	s_sub_i32 s13, 0, s5
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 566 23                        ; attention.py:566:23
	v_rcp_iflag_f32_e32 v1, s12
	.loc	1 559 27                        ; attention.py:559:27
	s_sub_i32 s4, s4, s6
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s6, s4, 4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 566 23                        ; attention.py:566:23
	v_readfirstlane_b32 s12, v1
	s_mul_f32 s12, s12, 0x4f7ffffe
	s_cvt_u32_f32 s12, s12
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s13, s13, s12
	s_mul_hi_u32 s13, s12, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s12, s12, s13
	.loc	1 560 27                        ; attention.py:560:27
	s_mul_i32 s13, s4, s26
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_hi_u32 s12, s14, s12
	.loc	1 560 27                        ; attention.py:560:27
	s_sub_i32 s24, s2, s13
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_i32 s4, s12, s5
	s_sub_i32 s2, s14, s4
	s_add_i32 s4, s12, 1
	s_sub_i32 s13, s2, s5
	s_cmp_ge_u32 s2, s5
	s_cselect_b32 s4, s4, s12
	s_cselect_b32 s2, s13, s2
	s_add_i32 s12, s4, 1
	s_cmp_ge_u32 s2, s5
	s_cselect_b32 s4, s12, s4
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s2, s65
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s12, s2
	s_sub_i32 s17, 0, s2
	v_rcp_iflag_f32_e32 v1, s12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s12, v1
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v1, s6, v68
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_f32 s14, s12, 0x4f7ffffe
	s_load_b64 s[12:13], s[0:1], 0x0
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v2, 8, v1
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e32 vcc_lo, s66, v1
	.loc	1 568 22                        ; attention.py:568:22
	s_cvt_u32_f32 s14, s14
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s17, s17, s14
	s_mul_hi_u32 s17, s14, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s14, s14, s17
	s_xor_b32 s17, s64, s65
	s_mul_hi_u32 s14, s5, s14
	s_ashr_i32 s17, s17, 31
	s_mul_i32 s19, s14, s2
	s_sub_i32 s5, s5, s19
	s_add_i32 s19, s14, 1
	s_sub_i32 s20, s5, s2
	s_cmp_ge_u32 s5, s2
	s_cselect_b32 s5, s20, s5
	s_load_b64 s[20:21], s[0:1], 0x18
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[51:52], null, s40, v68, v[49:50]
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s14, s19, s14
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e64 s41, s40, v49
	.loc	1 568 22                        ; attention.py:568:22
	s_add_i32 s19, s14, 1
	s_cmp_ge_u32 s5, s2
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, s66, v2
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s19, s19, s14
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s5, s18, s6
	v_lshl_add_u32 v71, s40, 3, v51
	s_mul_i32 s14, s5, s40
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s41, vcc_lo
	.loc	1 584 26                        ; attention.py:584:26
	v_add_nc_u32_e32 v1, s14, v51
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	.loc	1 584 26                        ; attention.py:584:26
	v_add_nc_u32_e32 v2, s14, v71
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 590 31                        ; attention.py:590:31
	v_add_lshl_u32 v6, s5, v70, 1
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, s41, s2
	.loc	1 590 31                        ; attention.py:590:31
	s_mov_b32 s22, s14
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_u8 v3, v1, s[12:15], 0 offen
	buffer_load_u8 v2, v2, s[12:15], 0 offen
	v_bfe_i32 v1, v0, 7, 1
	.loc	1 590 31                        ; attention.py:590:31
	s_and_b32 s21, s21, 0xffff
	.loc	1 606 16                        ; attention.py:606:16
	s_add_i32 s14, s67, 63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 606 15 is_stmt 0              ; attention.py:606:15
	s_ashr_i32 s15, s14, 31
	.loc	1 585 26 is_stmt 1              ; attention.py:585:26
	v_and_b32_e32 v1, 0x88, v1
	.loc	1 606 15                        ; attention.py:606:15
	s_lshr_b32 s15, s15, 26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s14, s14, s15
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v4, v1, v4
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v1, s6, v70
	.loc	1 606 15                        ; attention.py:606:15
	s_ashr_i32 s15, s14, 6
	.loc	1 606 14 is_stmt 0              ; attention.py:606:14
	s_and_not1_b32 s14, s14, 63
	.loc	1 609 33 is_stmt 1              ; attention.py:609:33
	s_add_i32 s15, s15, s26
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v5, 0x110, v4
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, s66, v1
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v72, 0, v4
	.loc	1 609 33                        ; attention.py:609:33
	s_add_i32 s15, s15, -1
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v73, 0, v5
	.loc	1 590 31                        ; attention.py:590:31
	v_cndmask_b32_e64 v4, 0x80000000, v6, s2
	v_writelane_b32 v179, s2, 0
	.loc	1 568 22                        ; attention.py:568:22
	s_xor_b32 s2, s19, s17
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(1)
	ds_store_b8 v72, v3
	s_waitcnt vmcnt(0)
	ds_store_b8 v73, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 590 31                        ; attention.py:590:31
	buffer_load_u16 v2, v4, s[20:23], 0 offen
	.loc	1 585 26                        ; attention.py:585:26
	v_and_b32_e32 v3, 24, v69
	.loc	1 568 22                        ; attention.py:568:22
	s_sub_i32 s13, s2, s17
	.loc	1 609 32                        ; attention.py:609:32
	s_abs_i32 s17, s15
	s_xor_b32 s15, s15, s26
	s_mul_hi_u32 s16, s17, s16
	.loc	1 585 26                        ; attention.py:585:26
	v_lshl_or_b32 v3, v70, 5, v3
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_i32 s18, s16, s7
	.loc	1 569 19                        ; attention.py:569:19
	s_abs_i32 s12, s13
	.loc	1 609 32                        ; attention.py:609:32
	s_sub_i32 s17, s17, s18
	s_ashr_i32 s15, s15, 31
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v4, 8, v3
	v_xor_b32_e32 v5, 16, v3
	v_add_nc_u32_e32 v74, 0, v3
	v_xor_b32_e32 v3, 24, v3
	.loc	1 609 32                        ; attention.py:609:32
	s_add_i32 s18, s16, 1
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v75, 0, v4
	v_add_nc_u32_e32 v76, 0, v5
	.loc	1 609 32                        ; attention.py:609:32
	s_sub_i32 s19, s17, s7
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v77, 0, v3
	ds_load_b64 v[52:53], v74
	ds_load_b64 v[54:55], v75
	ds_load_b64 v[56:57], v76
	ds_load_b64 v[58:59], v77
	.loc	1 609 32                        ; attention.py:609:32
	s_cmp_ge_u32 s17, s7
	.loc	1 569 19                        ; attention.py:569:19
	s_cvt_f32_u32 s2, s12
	.loc	1 609 32                        ; attention.py:609:32
	s_cselect_b32 s16, s18, s16
	s_cselect_b32 s17, s19, s17
	s_add_i32 s18, s16, 1
	s_cmp_ge_u32 s17, s7
	.loc	1 569 19                        ; attention.py:569:19
	v_rcp_iflag_f32_e32 v3, s2
	.loc	1 609 32                        ; attention.py:609:32
	s_cselect_b32 s2, s18, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s15
	s_sub_i32 s2, s2, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 610 18                        ; attention.py:610:18
	s_mul_i32 s7, s24, s2
	.loc	1 611 33                        ; attention.py:611:33
	s_lshl_b32 s2, s2, 6
	.loc	1 610 18                        ; attention.py:610:18
	s_lshl_b32 s20, s7, 6
	.loc	1 569 19                        ; attention.py:569:19
	v_readfirstlane_b32 s7, v3
	.loc	1 611 33                        ; attention.py:611:33
	s_add_i32 s2, s20, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 611 18 is_stmt 0              ; attention.py:611:18
	s_min_i32 s43, s14, s2
	.loc	1 612 9 is_stmt 1               ; attention.py:612:9
	s_bfe_u32 s2, s8, 0x10008
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s10, s11
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s8, s11, s9
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s2, s6
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s8, s8, s6
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
	s_max_i32 s20, s20, s8
	.loc	1 619 34                        ; attention.py:619:34
	s_ashr_i32 s14, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s14, s14, 26
	s_add_i32 s2, s2, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 619 33 is_stmt 0              ; attention.py:619:33
	s_and_not1_b32 s2, s2, 63
	.loc	1 619 18                        ; attention.py:619:18
	s_min_i32 s43, s43, s2
.LBB0_2:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b32 s42, s[0:1], 0x64
	.loc	1 620 9 is_stmt 1               ; attention.py:620:9
	v_cndmask_b32_e64 v78, 0, 1, s3
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s2, s11, s6
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
	s_min_i32 s43, s43, s2
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b64 s[16:17], s[0:1], 0x40
	.loc	1 571 21 is_stmt 1              ; attention.py:571:21
	v_and_b32_e32 v50, 63, v0
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_ge_i32 s20, s43
	.loc	1 696 65                        ; attention.py:696:65
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_gt_i32_e64 s2, s42, v50
	.loc	1 629 13                        ; attention.py:629:13
	v_writelane_b32 v179, s2, 1
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_writelane_b32 v179, s16, 2
	s_xor_b32 s3, s25, s64
	s_mul_f32 s6, s7, 0x4f7ffffe
	s_ashr_i32 s3, s3, 31
	.loc	1 573 27 is_stmt 1              ; attention.py:573:27
	v_add_nc_u32_e32 v88, s11, v1
	v_writelane_b32 v179, s17, 3
	s_xor_b32 s4, s4, s3
	s_cvt_u32_f32 s6, s6
	s_sub_i32 s3, s4, s3
	s_sub_i32 s4, 0, s12
	v_writelane_b32 v179, s18, 4
	s_mul_i32 s7, s3, s64
	s_mul_i32 s4, s4, s6
	s_sub_i32 s7, s25, s7
	s_mul_hi_u32 s4, s6, s4
	v_writelane_b32 v179, s19, 5
	s_abs_i32 s8, s7
	s_add_i32 s6, s6, s4
	s_ashr_i32 s4, s13, 31
	s_mul_hi_u32 s6, s8, s6
	v_writelane_b32 v179, s26, 6
	s_ashr_i32 s7, s7, 31
	.loc	1 569 19                        ; attention.py:569:19
	s_mul_i32 s13, s6, s12
	s_xor_b32 s4, s7, s4
	s_sub_i32 s7, s8, s13
	v_writelane_b32 v179, s24, 7
	s_add_i32 s8, s6, 1
	s_sub_i32 s13, s7, s12
	s_cmp_ge_u32 s7, s12
	s_mov_b32 s19, 0x31027000
	v_writelane_b32 v179, s25, 8
	s_clause 0x1
	s_load_b128 s[44:47], s[0:1], 0x8
	s_load_b64 s[24:25], s[0:1], 0x20
	s_cselect_b32 s6, s8, s6
	s_cselect_b32 s7, s13, s7
	s_add_i32 s8, s6, 1
	s_cmp_ge_u32 s7, s12
	s_mov_b32 s18, 0x7ffffffe
	s_cselect_b32 s6, s8, s6
	s_mov_b32 s26, s18
	v_and_b32_e32 v1, 16, v0
	s_load_b32 s7, s[0:1], 0x6c
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v89.h, v2.l
	v_mov_b32_e32 v2, 0x5410
	v_mov_b16_e32 v89.l, 0
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	v_mov_b32_e32 v1, 0x7632
	v_add_nc_u32_e32 v91, s10, v88
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v79, 6, v0
	.loc	1 654 30                        ; attention.py:654:30
	v_mov_b32_e32 v94, v89
	v_cndmask_b32_e32 v2, 0x1054, v2, vcc_lo
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s16, s46
	s_and_b32 s17, s47, 0xffff
	s_mov_b32 s46, s18
	s_mov_b32 s47, s19
	v_writelane_b32 v179, s16, 9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, s19
	v_cndmask_b32_e32 v1, 0x3276, v1, vcc_lo
	v_lshl_or_b32 v2, v2, 8, v2
	v_writelane_b32 v179, s17, 10
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v80, 24, v68
	v_or_b32_e32 v81, 56, v68
	v_lshl_or_b32 v1, v1, 8, v1
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mov_b32 v95, v89 :: v_dual_and_b32 v2, 0x540054, v2
	v_writelane_b32 v179, s18, 11
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v82, 12, v79
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mov_b32 v96, v89 :: v_dual_and_b32 v1, 0x760076, v1
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v83, 28, v79
	v_writelane_b32 v179, s19, 12
	v_or_b32_e32 v84, 44, v79
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[60:61], null, s40, v80, v[49:50]
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v85, 60, v79
	v_writelane_b32 v179, s24, 13
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s49, s7, 0x3fb8aa3b
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[61:62], null, s40, v81, v[49:50]
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v3, 4, v0
	v_writelane_b32 v179, s25, 14
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[62:63], null, s42, v79, v[50:51]
	v_lshl_or_b32 v2, v2, 4, v2
	v_lshl_or_b32 v1, v1, 4, v1
	v_writelane_b32 v179, s26, 15
	v_mad_u64_u32 v[63:64], null, s42, v82, v[50:51]
	v_mad_u64_u32 v[64:65], null, s42, v83, v[50:51]
	v_writelane_b32 v179, s27, 16
	v_mad_u64_u32 v[65:66], null, s42, v84, v[50:51]
	s_mov_b32 s8, 0
	.loc	1 664 17                        ; attention.py:664:17
	s_mov_b32 s66, s49
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[66:67], null, s42, v85, v[50:51]
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v87, 62, v3
	v_subrev_nc_u32_e32 v90, s9, v88
	v_and_b32_e32 v4, 0x60, v0
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v16, s15 :: v_dual_lshlrev_b32 v3, 1, v70
	v_dual_mov_b32 v14, s13 :: v_dual_and_b32 v67, 0x5040504, v2
	v_dual_mov_b32 v15, s14 :: v_dual_and_b32 v92, 0x7060706, v1
	v_dual_mov_b32 v13, s12 :: v_dual_and_b32 v2, 0x1fe, v69
	v_mov_b32_e32 v1, 0
	.loc	1 629 13                        ; attention.py:629:13
	v_writelane_b32 v179, s66, 17
	.loc	1 569 19                        ; attention.py:569:19
	s_xor_b32 s0, s6, s4
	.loc	1 632 33                        ; attention.py:632:33
	s_mul_i32 s3, s3, s65
	.loc	1 569 19                        ; attention.py:569:19
	s_sub_i32 s0, s0, s4
	.loc	1 571 21                        ; attention.py:571:21
	v_bfe_u32 v86, v0, 4, 1
	v_add3_u32 v93, 0, v3, v4
	v_dual_mov_b32 v99, 0xff800000 :: v_dual_mov_b32 v12, s11
	v_dual_mov_b32 v11, s10 :: v_dual_mov_b32 v10, s9
	v_mov_b32_e32 v9, s8
	v_dual_mov_b32 v4, v1 :: v_dual_add_nc_u32 v97, 0, v2
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v98, v1
	.loc	1 629 13                        ; attention.py:629:13
	v_writelane_b32 v179, s40, 18
	.loc	1 632 33                        ; attention.py:632:33
	s_add_i32 s0, s0, s3
	s_lshl_b32 s50, s40, 4
	.loc	1 632 32 is_stmt 0              ; attention.py:632:32
	s_mul_i32 s48, s0, s67
	s_lshl_b32 s68, s40, 5
	s_mul_i32 s52, s40, 40
	s_mul_i32 s53, s40, 48
	s_and_b32 s45, s45, 0xffff
	s_lshl_b32 s54, s42, 2
	s_lshl_b32 s55, s42, 3
	s_lshl_b32 s56, s42, 4
	s_mul_i32 s57, s42, 20
	s_mul_i32 s58, s42, 24
	s_lshl_b32 s59, s42, 5
	s_mul_i32 s60, s42, 36
	s_mul_i32 s61, s42, 40
	s_mul_i32 s62, s42, 48
	s_mul_i32 s63, s42, 52
	s_mul_i32 vcc_hi, s42, 56
	.loc	1 664 17 is_stmt 1              ; attention.py:664:17
	s_mov_b32 s64, s49
	s_mov_b32 s65, s49
	.loc	1 629 13                        ; attention.py:629:13
	v_writelane_b32 v179, s91, 19
                                        ; implicit-def: $vgpr178 : SGPR spill to VGPR lane
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v110.l, 0
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v41, v41
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(31)
	v_mov_b16_e64 v110.h, v133.l
	s_waitcnt vmcnt(30)
	v_mov_b16_e64 v112.h, v131.l
	v_mov_b16_e32 v112.l, v110.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v42, v94, v42 :: v_dual_mul_f32 v41, v89, v41
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v42, v42, v112 :: v_dual_mul_f32 v41, v41, v110
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(26)
	v_mov_b16_e64 v112.h, v129.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v46, v94, v46 :: v_dual_mul_f32 v45, v89, v45
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v110.h, v126.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v27, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v46, v46, v112
	v_cvt_f32_i32_e32 v25, v25
	v_dual_mul_f32 v45, v45, v110 :: v_dual_mul_f32 v24, v95, v24
	v_mul_f32_e32 v27, v89, v27
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(17)
	v_mov_b16_e32 v110.h, v125.l
	s_waitcnt vmcnt(16)
	v_mov_b16_e32 v112.h, v124.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v28, v94, v28 :: v_dual_mul_f32 v25, v96, v25
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v31, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v27, v27, v110 :: v_dual_mul_f32 v28, v28, v112
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(12)
	v_mov_b16_e32 v112.h, v121.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v32, v94, v32 :: v_dual_mul_f32 v31, v89, v31
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v110.h, v118.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_dual_mul_f32 v32, v32, v112 :: v_dual_mul_f32 v31, v31, v110
	v_cvt_f32_i32_e32 v37, v37
	v_dual_mul_f32 v36, v89, v36 :: v_dual_mul_f32 v39, v96, v39
	v_mul_f32_e32 v38, v95, v38
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v118.l, v110.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v118.h, v115.l
	s_waitcnt vmcnt(7)
	v_mov_b16_e32 v112.h, v116.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v110.h, v117.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v18, v18
	v_dual_mul_f32 v22, v89, v22 :: v_dual_mul_f32 v23, v94, v23
	v_mul_f32_e32 v37, v94, v37
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v115.l, v110.l
	v_mov_b16_e32 v115.h, v114.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v38, v38, v118 :: v_dual_mul_f32 v39, v39, v112
	v_mul_f32_e32 v36, v36, v110
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v112.h, v109.l
	v_mov_b16_e32 v110.h, v107.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_dual_mul_f32 v18, v89, v18 :: v_dual_mul_f32 v23, v23, v112
	v_mul_f32_e32 v22, v22, v110
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v110.h, v108.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v17, v17
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v131.h, v132.l
	v_mov_b16_e64 v131.l, v110.l
	v_mov_b16_e64 v132.l, v110.l
	v_mov_b16_e64 v132.h, v130.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v43, v95, v43 :: v_dual_mul_f32 v44, v96, v44
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v47, v47
	v_dual_mul_f32 v19, v94, v19 :: v_dual_mul_f32 v20, v95, v20
	v_mul_f32_e32 v21, v96, v21
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v114.l, v110.l
	v_mov_b16_e32 v116.l, v110.l
	v_mov_b16_e32 v116.h, v113.l
	v_mov_b16_e32 v114.h, v111.l
	v_mov_b16_e32 v107.l, v110.l
	v_mov_b16_e32 v109.l, v110.l
	v_mov_b16_e32 v109.h, v102.l
	v_mov_b16_e32 v107.h, v101.l
	v_mov_b16_e32 v101.l, v110.l
	v_mov_b16_e32 v101.h, v100.l
	v_mov_b16_e32 v100.l, v110.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v100.h, v105.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v35, v35
	v_mul_f32_e32 v18, v18, v110
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v110.h, v106.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v40, v96, v40 :: v_dual_mul_f32 v17, v89, v17
	v_dual_mul_f32 v26, v94, v26 :: v_dual_mul_f32 v19, v19, v101
	v_dual_mul_f32 v43, v43, v132 :: v_dual_mul_f32 v44, v44, v131
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e64 v129.l, v110.l
	v_mov_b16_e64 v129.h, v128.l
	v_mov_b16_e64 v128.l, v110.l
	v_mov_b16_e64 v128.h, v127.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v48, v96, v48 :: v_dual_mul_f32 v47, v95, v47
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v33, v33
	v_dual_mul_f32 v25, v25, v116 :: v_dual_mul_f32 v24, v24, v114
	v_dual_mul_f32 v21, v21, v109 :: v_dual_mul_f32 v20, v20, v107
	v_dual_mul_f32 v26, v26, v100 :: v_dual_mul_f32 v17, v17, v110
	v_dual_mul_f32 v48, v48, v128 :: v_dual_mul_f32 v47, v47, v129
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v124.l, v110.l
	v_mov_b16_e32 v124.h, v123.l
	v_mov_b16_e32 v123.l, v110.l
	v_mov_b16_e32 v123.h, v122.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v30, v96, v30 :: v_dual_mul_f32 v29, v95, v29
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v121.l, v110.l
	v_mov_b16_e32 v121.h, v120.l
	v_mov_b16_e32 v120.l, v110.l
	v_mov_b16_e32 v120.h, v119.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v34, v96, v34 :: v_dual_mul_f32 v33, v95, v33
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v102.l, v110.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v102.h, v104.l
	v_mov_b16_e32 v104.l, v110.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v104.h, v103.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v35, v95, v35
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v41, s49, v41 :: v_dual_mul_f32 v42, s64, v42
	v_dual_mul_f32 v44, s66, v44 :: v_dual_mul_f32 v43, s65, v43
	v_dual_mul_f32 v45, s49, v45 :: v_dual_mul_f32 v46, s64, v46
	v_dual_mul_f32 v18, s49, v18 :: v_dual_mul_f32 v19, s64, v19
	v_dual_mul_f32 v20, s65, v20 :: v_dual_mul_f32 v21, s66, v21
	v_dual_mul_f32 v22, s49, v22 :: v_dual_mul_f32 v23, s64, v23
	v_dual_mul_f32 v24, s65, v24 :: v_dual_mul_f32 v25, s66, v25
	v_dual_mul_f32 v17, s49, v17 :: v_dual_mul_f32 v26, s64, v26
	v_readlane_b32 s25, v179, 22
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v30, v30, v123 :: v_dual_mul_f32 v29, v29, v124
	v_dual_mul_f32 v34, v34, v120 :: v_dual_mul_f32 v33, v33, v121
	v_dual_mul_f32 v37, v37, v115 :: v_dual_mul_f32 v40, v40, v104
	v_mul_f32_e32 v35, v35, v102
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v47, s65, v47 :: v_dual_mul_f32 v48, s66, v48
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v44, 0xff800000, v44, s102
	v_cndmask_b32_e64 v42, 0xff800000, v42, s38
	v_cndmask_b32_e64 v41, 0xff800000, v41, s25
	v_cndmask_b32_e64 v46, 0xff800000, v46, s100
	v_cndmask_b32_e64 v45, 0xff800000, v45, s101
	v_cndmask_b32_e64 v26, 0xff800000, v26, s86
	v_cndmask_b32_e64 v21, 0xff800000, v21, s93
	v_cndmask_b32_e64 v20, 0xff800000, v20, s95
	v_cndmask_b32_e64 v19, 0xff800000, v19, s74
	v_cndmask_b32_e64 v101, 0xff800000, v18, s104
	v_cndmask_b32_e64 v25, 0xff800000, v25, s80
	v_cndmask_b32_e64 v24, 0xff800000, v24, s75
	v_cndmask_b32_e64 v23, 0xff800000, v23, s92
	v_cndmask_b32_e64 v22, 0xff800000, v22, s94
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v27, s49, v27 :: v_dual_mul_f32 v28, s64, v28
	v_dual_mul_f32 v29, s65, v29 :: v_dual_mul_f32 v30, s66, v30
	v_dual_mul_f32 v31, s49, v31 :: v_dual_mul_f32 v32, s64, v32
	v_dual_mul_f32 v33, s65, v33 :: v_dual_mul_f32 v34, s66, v34
	v_dual_mul_f32 v36, s49, v36 :: v_dual_mul_f32 v37, s64, v37
	v_dual_mul_f32 v39, s66, v39 :: v_dual_mul_f32 v38, s65, v38
	v_dual_mul_f32 v35, s65, v35 :: v_dual_mul_f32 v40, s66, v40
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v43, 0xff800000, v43, s103
	v_cndmask_b32_e64 v48, 0xff800000, v48, s83
	v_cndmask_b32_e64 v47, 0xff800000, v47, s99
	v_cndmask_b32_e64 v100, 0xff800000, v17, s88
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v18, v44, v45, v46
	v_max3_f32 v103, v101, v19, v20
	v_max3_f32 v104, v21, v22, v23
	v_max3_f32 v105, v24, v25, v26
	v_readlane_b32 s24, v179, 20
	v_max_f32_e32 v17, v41, v42
.Ltmp2:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v40, 0xff800000, v40, s70
	v_cndmask_b32_e64 v35, 0xff800000, v35, s73
	v_cndmask_b32_e64 v30, 0xff800000, v30, s85
	v_cndmask_b32_e64 v29, 0xff800000, v29, s87
	v_cndmask_b32_e64 v28, 0xff800000, v28, s89
	v_cndmask_b32_e64 v27, 0xff800000, v27, s90
	v_cndmask_b32_e64 v34, 0xff800000, v34, s76
	v_cndmask_b32_e64 v33, 0xff800000, v33, s39
	v_cndmask_b32_e64 v32, 0xff800000, v32, s84
	v_cndmask_b32_e64 v31, 0xff800000, v31, s77
	v_cndmask_b32_e64 v39, 0xff800000, v39, s69
	v_cndmask_b32_e64 v37, 0xff800000, v37, s72
	v_cndmask_b32_e64 v36, 0xff800000, v36, s3
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v102, v47, v48, v100
	v_max3_f32 v17, v17, v43, v18
	v_max3_f32 v18, v103, v104, v105
.Ltmp4:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v38, 0xff800000, v38, s71
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v106, v27, v28, v29
	v_max3_f32 v107, v30, v31, v32
	v_max3_f32 v108, v33, v34, v35
	v_max3_f32 v17, v17, v102, v18
	v_dual_max_f32 v109, v36, v37 :: v_dual_add_nc_u32 v102, s24, v79
	v_max_f32_e32 v111, v39, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max3_f32 v103, v106, v107, v108
	s_mov_b32 s4, 0x76543210
.Ltmp6:
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v106, 16, v102
	.loc	1 693 30                        ; attention.py:693:30
	v_readlane_b32 s0, v179, 21
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v104, v109, v38, v111
.Ltmp8:
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v99
	v_readlane_b32 s2, v179, 1
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s7, s67, v106
	.loc	1 693 30                        ; attention.py:693:30
	s_mul_i32 s19, s0, s42
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v17, v17, v103, v104
.Ltmp10:
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v104, 8, v102
	v_readlane_b32 s20, v179, 9
	v_readlane_b32 s21, v179, 10
	v_readlane_b32 s22, v179, 11
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v18, v17, s4, 0xfedcba98 op_sel:[1,0]
.Ltmp12:
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s1, s67, v104
	v_readlane_b32 s23, v179, 12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v17, v99, v17, v18
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v103, 4, v102
	v_add_nc_u32_e32 v112, 36, v102
	v_add_nc_u32_e32 v117, 56, v102
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v42, v42, v17 :: v_dual_add_nc_u32 v105, s24, v82
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v18, v99, v17
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v22, v22, v17
	v_sub_f32_e32 v27, v27, v17
	v_sub_f32_e32 v43, v43, v17
	v_sub_f32_e32 v20, v20, v17
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v18, v18
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v109, s24, v83
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v133, v27
	v_add_nc_u32_e32 v27, s19, v62
	v_exp_f32_e32 v128, v22
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v22, s19, v63, 1
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v19, v19, v17
	v_sub_f32_e32 v24, v24, v17
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s0, s67, v103
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v43, v43
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v18, 0, v18, vcc_lo
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e32 vcc_lo, s67, v102
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v125, v19
	.loc	1 694 30                        ; attention.py:694:30
	v_lshlrev_b32_e32 v19, 1, v27
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v130, v24
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v24, v27, s57, 1
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v26, v26, v17 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	v_sub_f32_e32 v21, v21, v17
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v126, v20
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_add_lshl_u32 v20, v27, s54, 1
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v44, v44, v17 :: v_dual_add_nc_u32 v107, 20, v102
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v132, v26
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_add_lshl_u32 v26, s19, v64, 1
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v23, v23, v17
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v127, v21
	.loc	1 696 27 is_stmt 1              ; attention.py:696:27
	v_cmp_gt_i32_e64 s6, s67, v105
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v21, v27, s55, 1
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v41, v41, v17 :: v_dual_add_nc_u32 v108, 24, v102
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s0
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v115, 48, v102
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v99, v100, v17 :: v_dual_cndmask_b32 v20, 0x80000000, v20
	v_sub_f32_e32 v100, v101, v17
	v_dual_sub_f32 v124, v34, v17 :: v_dual_mul_f32 v3, v3, v18
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s1
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v34, s19, v66, 1
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v121, v31, v17
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v31, s19, v65, 1
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v122, v32, v17
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v32, v27, s62, 1
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v101, v28, v17
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v28, v27, s59, 1
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v25, v25, v17
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v129, v23
	.loc	1 696 27 is_stmt 1              ; attention.py:696:27
	v_cmp_gt_i32_e64 s8, s67, v107
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v23, v27, s56, 1
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v46, v46, v17 :: v_dual_add_nc_u32 v111, 32, v102
	.loc	1 694 30                        ; attention.py:694:30
	v_dual_cndmask_b32 v21, 0x80000000, v21 :: v_dual_mul_f32 v8, v8, v18
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s6
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v42, v42
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s9, s67, v108
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s7
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v131, v25
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s10, s67, v109
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v25, v27, s58, 1
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v43, 0, v43, s103
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_dual_sub_f32 v48, v48, v17 :: v_dual_add_nc_u32 v113, 40, v102
	v_dual_sub_f32 v120, v30, v17 :: v_dual_cndmask_b32 v23, 0x80000000, v23
	.loc	1 696 26 is_stmt 1              ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s8
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s11, s67, v111
	.loc	1 690 62 is_stmt 1              ; attention.py:690:62
	v_dual_sub_f32 v45, v45, v17 :: v_dual_add_nc_u32 v114, s24, v84
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v41, v41
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s9
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s12, s67, v112
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v112.l, v43.h
	v_mov_b16_e32 v112.h, v110.l
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s10
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v119, v29, v17
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s13, s67, v113
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v29, v27, s60, 1
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v47, v47, v17 :: v_dual_add_nc_u32 v116, 52, v102
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s11
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v44, v44
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s14, s67, v114
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v30, v27, s61, 1
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v42, 0, v42, s38
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v45, v45
	v_exp_f32_e32 v46, v46
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s12
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s15, s67, v115
	.loc	1 699 23 is_stmt 1              ; attention.py:699:23
	v_dual_mul_f32 v1, v1, v18 :: v_dual_add_nc_u32 v118, s24, v85
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v29, 0x80000000, v29, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s13
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s16, s67, v116
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e32 v30, 0x80000000, v30, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s14
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v41, 0, v41, s25
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v108.l, v42.h
	v_mov_b16_e32 v108.h, v110.l
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v123, v33, v17 :: v_dual_mul_f32 v2, v2, v18
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_gt_i32_e64 s17, s67, v117
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v33, v27, s63, 1
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s15
	.loc	1 696 27 is_stmt 0              ; attention.py:696:27
	v_cmp_gt_i32_e64 s18, s67, v118
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_add_lshl_u32 v27, v27, vcc_hi, 1
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s16
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v39, v39, v17 :: v_dual_and_b32 v108, 1, v108
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v109.l, v41.h
	v_mov_b16_e32 v109.h, v110.l
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v44, 0, v44, s102
	v_cndmask_b32_e64 v45, 0, v45, s101
	v_cndmask_b32_e64 v46, 0, v46, s100
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s17
	.loc	1 694 30                        ; attention.py:694:30
	v_dual_cndmask_b32 v102, 0x80000000, v27 :: v_dual_and_b32 v109, 1, v109
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 vcc_lo, s2, s18
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v108, v42, v108, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_mov_b16_e32 v111.l, v44.h
	v_mov_b16_e32 v111.h, v110.l
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v40, v40, v17
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v109, v41, v109, 0x7fff
	v_cmp_o_f32_e64 s0, v41, v41
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v41, v41, v42
.Ltmp14:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v42.h, 0x7fff, v108.h, vcc_lo
	v_and_b32_e32 v108, 1, v112
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v112, 0, v127, s93
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v111, 1, v111
	v_cndmask_b16 v42.l, 0x7fff, v109.h, s0
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v109, v43, v44
.Ltmp16:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v108, v43, v108, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	v_add3_u32 v111, v44, v111, 0x7fff
	v_mov_b16_e32 v44.l, v45.h
	v_mov_b16_e32 v44.h, v110.l
	v_cmp_o_f32_e64 s0, v43, v43
	.loc	1 694 30                        ; attention.py:694:30
	s_clause 0x7
	buffer_load_u16 v19, v19, s[20:23], 0 offen
	buffer_load_u16 v20, v20, s[20:23], 0 offen
	buffer_load_u16 v21, v21, s[20:23], 0 offen
	buffer_load_u16 v22, v22, s[20:23], 0 offen
	buffer_load_u16 v23, v23, s[20:23], 0 offen
	buffer_load_u16 v24, v24, s[20:23], 0 offen
	buffer_load_u16 v25, v25, s[20:23], 0 offen
	buffer_load_u16 v26, v26, s[20:23], 0 offen
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v41, v41, v109
.Ltmp18:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v48, v48
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v44, 1, v44
	v_cndmask_b16 v109.l, 0x7fff, v108.h, s0
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v108, v45, v46
.Ltmp20:
	.loc	1 694 30                        ; attention.py:694:30
	s_clause 0x7
	buffer_load_u16 v27, v28, s[20:23], 0 offen
	buffer_load_u16 v28, v29, s[20:23], 0 offen
	buffer_load_u16 v29, v30, s[20:23], 0 offen
	buffer_load_u16 v30, v31, s[20:23], 0 offen
	buffer_load_u16 v31, v32, s[20:23], 0 offen
	buffer_load_u16 v32, v33, s[20:23], 0 offen
	buffer_load_u16 v33, v102, s[20:23], 0 offen
	buffer_load_u16 v34, v34, s[20:23], 0 offen
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v100, v100
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v43.l, v46.h
	v_mov_b16_e32 v43.h, v110.l
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v99, v99
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v48, 0, v48, s83
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v44, v45, v44, 0x7fff
	v_cmp_o_f32_e64 s0, v45, v45
	v_and_b32_e32 v43, 1, v43
	v_mov_b16_e32 v45.h, v110.l
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v47, 0, v47, s99
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v45.l, v48.h
	v_cndmask_b16 v109.h, 0x7fff, v111.h, vcc_lo
	v_add3_u32 v43, v46, v43, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	v_mov_b16_e32 v46.l, v47.h
	v_mov_b16_e32 v46.h, v110.l
	v_and_b32_e32 v45, 1, v45
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v100, 0, v100, s104
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v43.h, 0x7fff, v43.h, vcc_lo
	v_cndmask_b16 v43.l, 0x7fff, v44.h, s0
	v_and_b32_e32 v44, 1, v46
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v99, 0, v99, s88
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v45, v48, v45, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v48, v48
	v_mov_b16_e32 v113.h, v110.l
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v111, v47, v48
.Ltmp22:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v48.l, v100.h
	v_mov_b16_e32 v48.h, v110.l
	v_add3_u32 v44, v47, v44, 0x7fff
	v_cmp_o_f32_e64 s0, v47, v47
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v46, v108, v111
.Ltmp24:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v108.l, v99.h
	v_mov_b16_e32 v108.h, v110.l
	v_and_b32_e32 v47, 1, v48
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v48, 0, v125, s74
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v45.l, 0x7fff, v44.h, s0
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v44, 0, v126, s95
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v111.h, v110.l
	v_cmp_o_f32_e64 s0, v99, v99
	v_mov_b16_e32 v111.l, v48.h
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v41, v41, v46 :: v_dual_and_b32 v46, 1, v108
.Ltmp26:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v108.l, v44.h
	v_add3_u32 v47, v100, v47, 0x7fff
	v_cndmask_b16 v45.h, 0x7fff, v45.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v100, v100
	v_add3_u32 v46, v99, v46, 0x7fff
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v99, v99, v100 :: v_dual_and_b32 v100, 1, v111
	v_add_f32_e32 v111, v48, v44
.Ltmp28:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v108, 1, v108
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v47.l, 0x7fff, v46.h, s0
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v46, 0, v128, s94
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v47.h, 0x7fff, v47.h, vcc_lo
	v_add3_u32 v100, v48, v100, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	v_cmp_o_f32_e64 s0, v48, v48
	v_mov_b16_e32 v113.l, v46.h
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v99, v99, v111
.Ltmp30:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v108, v44, v108, 0x7fff
	v_mov_b16_e32 v44.l, v112.h
	v_mov_b16_e32 v44.h, v110.l
	v_and_b32_e32 v48, 1, v113
	v_cndmask_b16 v108.l, 0x7fff, v100.h, s0
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v100, 0, v130, s75
	v_cndmask_b32_e64 v111, 0, v129, s92
	v_cndmask_b32_e64 v114, 0, v131, s80
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v44, 1, v44
	v_cndmask_b16 v108.h, 0x7fff, v108.h, vcc_lo
	v_add3_u32 v48, v46, v48, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v46, v46
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v46, v112, v46
.Ltmp32:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v44, v112, v44, 0x7fff
	v_cmp_o_f32_e64 s0, v112, v112
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v112, v111, v100
.Ltmp34:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v113.l, v111.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v101, v101
	v_exp_f32_e32 v106, v123
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v48.l, 0x7fff, v44.h, s0
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v44, v46, v112
.Ltmp36:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v46.l, v100.h
	v_mov_b16_e32 v46.h, v110.l
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v107, v124
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v112, 1, v113
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v113, 0, v132, s86
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v115.l, v114.h
	v_and_b32_e32 v46, 1, v46
	v_mov_b16_e32 v115.h, v110.l
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v102, v119
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v48.h, 0x7fff, v48.h, vcc_lo
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v44, v99, v44
.Ltmp38:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v99, v111, v112, 0x7fff
	v_mov_b16_e32 v112.l, v113.h
	v_mov_b16_e32 v112.h, v110.l
	v_add3_u32 v46, v100, v46, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v100, v100
	v_cmp_o_f32_e64 s0, v111, v111
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v41, v41, v44 :: v_dual_and_b32 v100, 1, v115
.Ltmp40:
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v35, v35, v17 :: v_dual_mul_f32 v4, v4, v18
	v_dual_sub_f32 v36, v36, v17 :: v_dual_mul_f32 v5, v5, v18
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v103, v120
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cndmask_b16 v44.h, 0x7fff, v46.h, vcc_lo
	v_cndmask_b16 v44.l, 0x7fff, v99.h, s0
	v_add3_u32 v46, v114, v100, 0x7fff
	v_cmp_o_f32_e64 s0, v114, v114
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v100, 0, v101, s89
	v_cndmask_b32_e64 v107, 0, v107, s76
	v_cndmask_b32_e64 v106, 0, v106, s39
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v111, 1, v112
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v36, v36
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e32 vcc_lo, v113, v113
	v_cndmask_b16 v112.l, 0x7fff, v46.h, s0
	v_add3_u32 v99, v113, v111, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v111, 0, v133, s90
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v46.l, v100.h
	v_mov_b16_e32 v46.h, v110.l
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v102, 0, v102, s87
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_dual_sub_f32 v37, v37, v17 :: v_dual_mul_f32 v6, v6, v18
	v_dual_sub_f32 v38, v38, v17 :: v_dual_mul_f32 v7, v7, v18
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v104, v121
	v_exp_f32_e32 v105, v122
.Ltmp41:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v101, v114, v113
.Ltmp42:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v112.h, 0x7fff, v99.h, vcc_lo
	v_mov_b16_e32 v99.l, v111.h
	v_mov_b16_e32 v99.h, v110.l
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v103, 0, v103, s85
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v113, v111, v100 :: v_dual_and_b32 v46, 1, v46
.Ltmp44:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v115.l, v102.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v38, v38
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v99, 1, v99
	v_mov_b16_e32 v114.l, v103.h
	v_mov_b16_e32 v114.h, v110.l
	v_add3_u32 v46, v100, v46, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v100, v100
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v100, v101, v113
.Ltmp46:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v36, 0, v36, s3
	v_cndmask_b32_e64 v35, 0, v35, s73
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v101, 1, v115
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v40, v40
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v113, 1, v114
	v_add3_u32 v99, v111, v99, 0x7fff
	v_cndmask_b16 v46.h, 0x7fff, v46.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v111, v111
	v_add3_u32 v101, v102, v101, 0x7fff
	v_cmp_o_f32_e64 s1, v102, v102
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v105, 0, v105, s84
	v_cndmask_b32_e64 v104, 0, v104, s77
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v111, v103, v113, 0x7fff
	v_cmp_o_f32_e64 s0, v103, v103
	v_cndmask_b16 v46.l, 0x7fff, v99.h, vcc_lo
	v_cndmask_b16 v131.l, 0x7fff, v101.h, s1
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v38, 0, v38, s71
	v_cndmask_b32_e64 v37, 0, v37, s72
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v99, v102, v103
.Ltmp48:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v102.l, v105.h
	v_mov_b16_e32 v102.h, v110.l
	v_mov_b16_e32 v103.l, v104.h
	v_mov_b16_e32 v103.h, v110.l
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v101, v104, v105
.Ltmp50:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v131.h, 0x7fff, v111.h, s0
	v_mov_b16_e32 v111.l, v106.h
	v_mov_b16_e32 v111.h, v110.l
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v40, 0, v40, s70
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v99, v99, v101
.Ltmp52:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v39, 0, v39, s69
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v101, 1, v102
	v_and_b32_e32 v102, 1, v103
	v_mov_b16_e32 v103.l, v107.h
	v_cmp_o_f32_e32 vcc_lo, v105, v105
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v99, v100, v99
.Ltmp54:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v101, v105, v101, 0x7fff
	v_and_b32_e32 v100, 1, v111
	v_and_b32_e32 v103, 1, v103
	v_add3_u32 v102, v104, v102, 0x7fff
	v_cmp_o_f32_e64 s1, v106, v106
	v_cndmask_b16 v132.h, 0x7fff, v101.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v104, v104
	v_add3_u32 v100, v106, v100, 0x7fff
	v_add3_u32 v101, v107, v103, 0x7fff
	v_cmp_o_f32_e64 s0, v107, v107
	v_mov_b16_e32 v103.l, v35.h
	v_cndmask_b16 v132.l, 0x7fff, v102.h, vcc_lo
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v102, v106, v107
.Ltmp56:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v133.l, 0x7fff, v100.h, s1
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v100, v35, v36
.Ltmp58:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v103.h, v110.l
	v_cndmask_b16 v133.h, 0x7fff, v101.h, s0
	v_mov_b16_e32 v101.l, v36.h
	v_mov_b16_e32 v101.h, v110.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v100, v102, v100 :: v_dual_and_b32 v103, 1, v103
	v_add_f32_e32 v102, v37, v38
	v_dual_add_f32 v104, v39, v40 :: v_dual_and_b32 v101, 1, v101
.Ltmp60:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s0, v35, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v103, v35, v103, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v36, v36
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v35, v102, v104
.Ltmp62:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v101, v36, v101, 0x7fff
	v_mov_b16_e32 v36.l, v38.h
	v_mov_b16_e32 v36.h, v110.l
	v_mov_b16_e32 v102.l, v37.h
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v35, v100, v35
.Ltmp64:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v102.h, v110.l
	v_cndmask_b16 v134.h, 0x7fff, v101.h, vcc_lo
	v_and_b32_e32 v36, 1, v36
	v_mov_b16_e32 v101.l, v39.h
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v35, v99, v35
.Ltmp66:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v99.l, v40.h
	v_mov_b16_e32 v101.h, v110.l
	v_mov_b16_e32 v99.h, v110.l
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b16 v97, v19
	s_waitcnt vmcnt(14)
	ds_store_b16 v97, v20 offset:512
	s_waitcnt vmcnt(13)
	ds_store_b16 v97, v21 offset:1024
	s_waitcnt vmcnt(12)
	ds_store_b16 v97, v22 offset:1536
	s_waitcnt vmcnt(11)
	ds_store_b16 v97, v23 offset:2048
	s_waitcnt vmcnt(10)
	ds_store_b16 v97, v24 offset:2560
	s_waitcnt vmcnt(9)
	ds_store_b16 v97, v25 offset:3072
	s_waitcnt vmcnt(8)
	ds_store_b16 v97, v26 offset:3584
	s_waitcnt vmcnt(7)
	ds_store_b16 v97, v27 offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b16 v97, v28 offset:4608
	s_waitcnt vmcnt(5)
	ds_store_b16 v97, v29 offset:5120
	s_waitcnt vmcnt(4)
	ds_store_b16 v97, v30 offset:5632
	s_waitcnt vmcnt(3)
	ds_store_b16 v97, v31 offset:6144
	s_waitcnt vmcnt(2)
	ds_store_b16 v97, v32 offset:6656
	s_waitcnt vmcnt(1)
	ds_store_b16 v97, v33 offset:7168
	s_waitcnt vmcnt(0)
	ds_store_b16 v97, v34 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v19, v93
	ds_load_u16_d16 v20, v93 offset:256
	ds_load_u16_d16 v21, v93 offset:512
	ds_load_u16_d16 v22, v93 offset:768
	ds_load_u16_d16 v23, v93 offset:1024
	ds_load_u16_d16 v24, v93 offset:1280
	ds_load_u16_d16 v25, v93 offset:1536
	ds_load_u16_d16 v26, v93 offset:1792
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v35, v41, v35 :: v_dual_and_b32 v100, 1, v102
.Ltmp68:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v41, 1, v101
	v_and_b32_e32 v99, 1, v99
	v_cndmask_b16 v134.l, 0x7fff, v103.h, s0
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v100, v37, v100, 0x7fff
	v_add3_u32 v36, v38, v36, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	v_cmp_o_f32_e64 s0, v37, v37
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v37, v35, s4, 0xfedcba98 op_sel:[1,0]
.Ltmp70:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v38, v39, v41, 0x7fff
	v_add3_u32 v41, v40, v99, 0x7fff
	v_cmp_o_f32_e64 s1, v40, v40
	v_cmp_o_f32_e64 s6, v39, v39
	v_cndmask_b16 v135.l, 0x7fff, v100.h, s0
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v35, v35, v37
.Ltmp72:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v37, v42, s4, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v136.h, 0x7fff, v41.h, s1
	v_permlanex16_b32 v39, v109, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v43, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v99, v45, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v100, v47, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v101, v108, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v104, v112, s4, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v135.h, 0x7fff, v36.h, vcc_lo
	v_cndmask_b16 v136.l, 0x7fff, v38.h, s6
	v_perm_b32 v36, v37, v42, v67
	v_perm_b32 v37, v37, v42, v92
	v_perm_b32 v38, v39, v109, v67
	v_perm_b32 v39, v39, v109, v92
	v_perm_b32 v40, v41, v43, v67
	v_perm_b32 v41, v41, v43, v92
	v_perm_b32 v42, v99, v45, v67
	v_perm_b32 v43, v99, v45, v92
	v_perm_b32 v27, v100, v47, v67
	v_perm_b32 v28, v100, v47, v92
	v_perm_b32 v29, v101, v108, v67
	v_perm_b32 v30, v101, v108, v92
	v_perm_b32 v99, v104, v112, v67
	v_perm_b32 v100, v104, v112, v92
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v19, v93 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v20, v93 offset:384
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v21, v93 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v22, v93 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v23, v93 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v24, v93 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v25, v93 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v26, v93 offset:1920
	ds_load_u16_d16 v107, v93 offset:2048
	ds_load_u16_d16 v108, v93 offset:2304
	ds_load_u16_d16 v109, v93 offset:2560
	ds_load_u16_d16 v110, v93 offset:2816
	ds_load_u16_d16 v111, v93 offset:3072
	ds_load_u16_d16 v112, v93 offset:3328
	ds_load_u16_d16 v113, v93 offset:3584
	ds_load_u16_d16 v114, v93 offset:3840
	ds_load_u16_d16 v115, v93 offset:4096
	ds_load_u16_d16 v116, v93 offset:4352
	ds_load_u16_d16 v117, v93 offset:4608
	ds_load_u16_d16 v118, v93 offset:4864
	ds_load_u16_d16 v119, v93 offset:5120
	ds_load_u16_d16 v120, v93 offset:5376
	ds_load_u16_d16 v121, v93 offset:5632
	ds_load_u16_d16 v122, v93 offset:5888
	ds_load_u16_d16 v123, v93 offset:6144
	ds_load_u16_d16 v124, v93 offset:6400
	ds_load_u16_d16 v125, v93 offset:6656
	ds_load_u16_d16 v126, v93 offset:6912
	ds_load_u16_d16 v127, v93 offset:7168
	ds_load_u16_d16 v128, v93 offset:7424
	ds_load_u16_d16 v129, v93 offset:7680
	ds_load_u16_d16 v130, v93 offset:7936
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v102, v48, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v103, v44, s4, 0xfedcba98 op_sel:[1,0]
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v107, v93 offset:2176
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v108, v93 offset:2432
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v109, v93 offset:2688
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v110, v93 offset:2944
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v111, v93 offset:3200
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v112, v93 offset:3456
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v113, v93 offset:3712
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v114, v93 offset:3968
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v115, v93 offset:4224
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v116, v93 offset:4480
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v117, v93 offset:4736
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v118, v93 offset:4992
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v119, v93 offset:5248
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v120, v93 offset:5504
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v121, v93 offset:5760
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v122, v93 offset:6016
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v123, v93 offset:6272
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v124, v93 offset:6528
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v125, v93 offset:6784
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v126, v93 offset:7040
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v127, v93 offset:7296
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v128, v93 offset:7552
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v129, v93 offset:7808
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v130, v93 offset:8064
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v105, v46, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v106, v131, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v137, v132, s4, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v31, v102, v48, v67
	v_perm_b32 v32, v102, v48, v92
	v_perm_b32 v33, v103, v44, v67
	v_perm_b32 v34, v103, v44, v92
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[19:26], v[36:43], v[1:8]
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v138, v133, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v139, v134, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v140, v135, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v141, v136, s4, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v101, v105, v46, v67
	v_perm_b32 v102, v105, v46, v92
	v_perm_b32 v103, v106, v131, v67
	v_perm_b32 v104, v106, v131, v92
	v_perm_b32 v105, v137, v132, v67
	v_perm_b32 v106, v137, v132, v92
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[107:114], v[27:34], v[1:8]
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v19, v138, v133, v67
	v_perm_b32 v20, v138, v133, v92
	v_perm_b32 v21, v139, v134, v67
	v_perm_b32 v22, v139, v134, v92
	v_perm_b32 v23, v140, v135, v67
	v_perm_b32 v24, v140, v135, v92
	v_perm_b32 v25, v141, v136, v67
	v_perm_b32 v26, v141, v136, v92
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[115:122], v[99:106], v[1:8]
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fmac_f32_e32 v35, v98, v18
	v_mov_b32_e32 v99, v17
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s20, s24, 64
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[123:130], v[19:26], v[1:8]
	v_mov_b32_e32 v98, v35
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s20, s43
	s_cbranch_scc0 .LBB0_12
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v17, s20, v68
	.loc	1 633 32                        ; attention.py:633:32
	s_add_i32 s4, s20, s48
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v18, s20, v80
	.loc	1 633 32                        ; attention.py:633:32
	s_mul_i32 s0, s4, s40
	.loc	1 650 25                        ; attention.py:650:25
	v_add_lshl_u32 v108, s4, v86, 1
	.loc	1 633 32                        ; attention.py:633:32
	v_add_nc_u32_e32 v26, s0, v71
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v19, 8, v17
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e32 vcc_lo, s67, v17
	.loc	1 633 32                        ; attention.py:633:32
	v_add_nc_u32_e32 v22, s0, v51
	v_add_nc_u32_e32 v28, s0, v60
	v_add_nc_u32_e32 v32, s0, v61
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s0, s67, v19
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v23, 40, v17
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s6, s67, v18
	.loc	1 636 30 is_stmt 0              ; attention.py:636:30
	s_and_b32 vcc_lo, s41, vcc_lo
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_add_nc_u32_e32 v20, 16, v17
	v_add_nc_u32_e32 v21, 32, v17
	v_add_nc_u32_e32 v30, s52, v22
	v_add_nc_u32_e32 v24, 48, v17
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v17, 0x80000000, v22, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s41, s0
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v25, s20, v81
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s8, s67, v23
	v_cmp_gt_i32_e64 s1, s67, v20
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v18, 0x80000000, v26, vcc_lo
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 vcc_lo, s41, s6
	v_add_nc_u32_e32 v27, s50, v22
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v20, 0x80000000, v28, vcc_lo
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s7, s67, v21
	v_add_nc_u32_e32 v29, s68, v22
	v_cmp_gt_i32_e64 s10, s67, v25
	.loc	1 636 30 is_stmt 0              ; attention.py:636:30
	s_and_b32 vcc_lo, s41, s8
	s_and_b32 s0, s41, s1
	.loc	1 634 32 is_stmt 1              ; attention.py:634:32
	v_cndmask_b32_e32 v23, 0x80000000, v30, vcc_lo
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s9, s67, v24
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e64 v19, 0x80000000, v27, s0
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 s0, s41, s7
	v_add_nc_u32_e32 v31, s53, v22
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e64 v21, 0x80000000, v29, s0
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 s0, s41, s10
	s_and_b32 s1, s41, s9
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e64 v22, 0x80000000, v32, s0
	v_cndmask_b32_e64 v24, 0x80000000, v31, s1
	s_clause 0x7
	buffer_load_u8 v17, v17, s[44:47], 0 offen
	buffer_load_u8 v20, v20, s[44:47], 0 offen
	buffer_load_u8 v22, v22, s[44:47], 0 offen
	buffer_load_u8 v19, v19, s[44:47], 0 offen
	buffer_load_u8 v21, v21, s[44:47], 0 offen
	buffer_load_u8 v24, v24, s[44:47], 0 offen
	buffer_load_u8 v18, v18, s[44:47], 0 offen
	buffer_load_u8 v23, v23, s[44:47], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v112, s20, v86
	v_writelane_b32 v179, s20, 20
	v_add_nc_u32_e32 v110, s20, v87
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v111, 4, v108
	v_add_lshl_u32 v109, s4, v87, 1
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v151, 2, v112
	v_add_nc_u32_e32 v153, 4, v112
	v_add_nc_u32_e32 v155, 6, v112
	v_writelane_b32 v179, s4, 21
	v_add_nc_u32_e32 v156, 8, v112
	v_add_nc_u32_e32 v157, 10, v112
	v_add_nc_u32_e32 v158, 12, v112
	v_add_nc_u32_e32 v150, 26, v112
	v_add_nc_u32_e32 v152, 28, v112
	v_add_nc_u32_e32 v154, 30, v112
	v_add_nc_u32_e32 v146, 36, v112
	v_add_nc_u32_e32 v145, 38, v112
	v_add_nc_u32_e32 v144, 40, v112
	v_add_nc_u32_e32 v137, 42, v112
	v_add_nc_u32_e32 v138, 44, v112
	v_add_nc_u32_e32 v139, 46, v112
	v_add_nc_u32_e32 v140, 48, v112
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e32 vcc_lo, s67, v112
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v159, 14, v112
	v_add_nc_u32_e32 v147, 20, v112
	v_add_nc_u32_e32 v148, 22, v112
	v_add_nc_u32_e32 v149, 24, v112
	v_add_nc_u32_e32 v141, 50, v112
	v_add_nc_u32_e32 v136, 56, v112
	v_add_nc_u32_e32 v134, 58, v112
	v_add_nc_u32_e32 v135, 60, v112
	v_add_nc_u32_e32 v142, 54, v112
	v_add_nc_u32_e32 v160, 32, v112
	v_add_nc_u32_e32 v162, 18, v112
	v_add_nc_u32_e32 v163, 16, v112
	v_add_nc_u32_e32 v161, 34, v112
	v_add_nc_u32_e32 v143, 52, v112
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s25, s67, v151
	v_cmp_gt_i32_e64 s0, s67, v110
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v129, 8, v108
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s24, s67, v153
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v130, 12, v108
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s23, s67, v155
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v131, 16, v108
	v_add_nc_u32_e32 v132, 20, v108
	v_add_nc_u32_e32 v133, 24, v108
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s29, s67, v156
	v_cmp_gt_i32_e64 s28, s67, v157
	v_cmp_gt_i32_e64 s27, s67, v158
	v_cmp_gt_i32_e64 s21, s67, v150
	v_cmp_gt_i32_e64 s20, s67, v152
	v_cmp_gt_i32_e64 s19, s67, v154
	v_cmp_gt_i32_e64 s12, s67, v146
	v_cmp_gt_i32_e64 s11, s67, v145
	v_cmp_gt_i32_e64 s10, s67, v144
	v_cmp_gt_i32_e64 s9, s67, v137
	v_cmp_gt_i32_e64 s16, s67, v138
	v_cmp_gt_i32_e64 s15, s67, v139
	v_cmp_gt_i32_e64 s14, s67, v140
	v_readlane_b32 s36, v179, 13
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v164, 28, v108
	v_add_nc_u32_e32 v165, 32, v108
	v_add_nc_u32_e32 v166, 36, v108
	v_add_nc_u32_e32 v167, 40, v108
	v_add_nc_u32_e32 v168, 44, v108
	v_add_nc_u32_e32 v169, 48, v108
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s26, s67, v159
	v_cmp_gt_i32_e64 s18, s67, v147
	v_cmp_gt_i32_e64 s17, s67, v148
	v_cmp_gt_i32_e64 s22, s67, v149
	v_cmp_gt_i32_e64 s13, s67, v141
	v_cmp_gt_i32_e64 s6, s67, v136
	v_cmp_gt_i32_e64 s1, s67, v134
	v_cmp_gt_i32_e64 s7, s67, v135
	v_cmp_gt_i32_e64 s8, s67, v142
	v_cmp_gt_i32_e64 s31, s67, v160
	v_cmp_gt_i32_e64 s34, s67, v162
	v_cmp_gt_i32_e64 s35, s67, v163
	v_cmp_gt_i32_e64 s33, s67, v161
	v_cmp_gt_i32_e64 s30, s67, v143
	v_readlane_b32 s37, v179, 14
	v_readlane_b32 s38, v179, 15
	v_readlane_b32 s39, v179, 16
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v164, 0x80000000, v164, s26
	v_cndmask_b32_e64 v167, 0x80000000, v167, s18
	v_cndmask_b32_e64 v168, 0x80000000, v168, s17
	v_cndmask_b32_e64 v169, 0x80000000, v169, s22
	v_cndmask_b32_e64 v166, 0x80000000, v166, s34
	v_cndmask_b32_e64 v165, 0x80000000, v165, s35
	v_readlane_b32 s4, v179, 0
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt vmcnt(7)
	ds_store_b8 v72, v17
	s_waitcnt vmcnt(6)
	ds_store_b8 v73, v20 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v73, v22 offset:1536
	s_waitcnt vmcnt(4)
	ds_store_b8 v72, v19 offset:512
	s_waitcnt vmcnt(3)
	ds_store_b8 v72, v21 offset:1024
	s_waitcnt vmcnt(2)
	ds_store_b8 v72, v24 offset:1536
	s_waitcnt vmcnt(1)
	ds_store_b8 v73, v18
	s_waitcnt vmcnt(0)
	ds_store_b8 v73, v23 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[23:26], v74 offset1:1
	ds_load_2addr_stride64_b64 v[100:103], v74 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[104:107], v75 offset1:1
	ds_load_2addr_stride64_b64 v[113:116], v75 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[117:120], v76 offset1:1
	ds_load_2addr_stride64_b64 v[121:124], v76 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[125:128], v77 offset1:1
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s2, s4, vcc_lo
	s_and_b32 s103, s4, s24
	s_and_b32 s102, s4, s23
	s_and_b32 s101, s4, s29
	s_and_b32 s100, s4, s28
	s_and_b32 s99, s4, s27
	s_and_b32 s83, s4, s26
	s_and_b32 s88, s4, s35
	s_and_b32 s104, s4, s34
	s_and_b32 s74, s4, s18
	s_and_b32 s95, s4, s17
	s_and_b32 s93, s4, s22
	s_and_b32 s94, s4, s21
	s_and_b32 s92, s4, s20
	s_and_b32 s75, s4, s19
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[23:24], v[52:53], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[25:26], v[52:53], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[100:101], v[52:53], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[102:103], v[52:53], v[9:16] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[100:103], v77 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[113:114], v[54:55], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[104:105], v[54:55], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[115:116], v[54:55], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[106:107], v[54:55], v[17:24] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v104, 52, v108
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[121:122], v[56:57], v[25:32] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v105, 56, v108
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[123:124], v[56:57], v[33:40] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v106, 60, v108
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[117:118], v[56:57], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[119:120], v[56:57], v[17:24] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v114, 0x48, v108
	v_add_nc_u32_e32 v115, 0x4c, v108
	v_add_nc_u32_e32 v116, 0x50, v108
	v_add_nc_u32_e32 v117, 0x54, v108
	v_add_nc_u32_e32 v118, 0x58, v108
	v_add_nc_u32_e32 v119, 0x5c, v108
	v_add_nc_u32_e32 v120, 0x60, v108
	v_add_nc_u32_e32 v107, 64, v108
	v_add_nc_u32_e32 v113, 0x44, v108
	v_add_nc_u32_e32 v121, 0x64, v108
	v_add_nc_u32_e32 v122, 0x68, v108
	v_add_nc_u32_e32 v123, 0x6c, v108
	v_add_nc_u32_e32 v124, 0x70, v108
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[100:101], v[58:59], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[102:103], v[58:59], v[33:40] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_add_nc_u32_e32 v100, 0x74, v108
	v_add_nc_u32_e32 v101, 0x78, v108
	v_cndmask_b32_e32 v102, 0x80000000, v108, vcc_lo
	v_cndmask_b32_e64 v108, 0x80000000, v111, s25
	v_cndmask_b32_e64 v103, 0x80000000, v109, s0
	v_cndmask_b32_e64 v109, 0x80000000, v129, s24
	v_cndmask_b32_e64 v111, 0x80000000, v130, s23
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[125:126], v[58:59], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[127:128], v[58:59], v[17:24] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v125, 0x80000000, v131, s29
	v_cndmask_b32_e64 v127, 0x80000000, v132, s28
	v_cndmask_b32_e64 v128, 0x80000000, v133, s27
	v_cndmask_b32_e64 v104, 0x80000000, v104, s21
	v_cndmask_b32_e64 v105, 0x80000000, v105, s20
	v_cndmask_b32_e64 v106, 0x80000000, v106, s19
	v_cndmask_b32_e64 v114, 0x80000000, v114, s12
	v_cndmask_b32_e64 v115, 0x80000000, v115, s11
	v_cndmask_b32_e64 v116, 0x80000000, v116, s10
	v_cndmask_b32_e64 v117, 0x80000000, v117, s9
	v_cndmask_b32_e64 v118, 0x80000000, v118, s16
	v_cndmask_b32_e64 v119, 0x80000000, v119, s15
	v_cndmask_b32_e64 v120, 0x80000000, v120, s14
	v_cndmask_b32_e64 v170, 0x80000000, v121, s13
	v_cndmask_b32_e64 v171, 0x80000000, v124, s6
	v_cndmask_b32_e64 v172, 0x80000000, v100, s1
	v_cndmask_b32_e64 v173, 0x80000000, v101, s7
	v_cndmask_b32_e64 v174, 0x80000000, v123, s8
	v_cndmask_b32_e64 v175, 0x80000000, v107, s31
	v_cndmask_b32_e64 v176, 0x80000000, v113, s33
	v_cndmask_b32_e64 v177, 0x80000000, v122, s30
	s_clause 0x1f
	buffer_load_u16 v133, v102, s[36:39], 0 offen
	buffer_load_u16 v131, v108, s[36:39], 0 offen
	buffer_load_u16 v130, v109, s[36:39], 0 offen
	buffer_load_u16 v132, v111, s[36:39], 0 offen
	buffer_load_u16 v126, v125, s[36:39], 0 offen
	buffer_load_u16 v129, v127, s[36:39], 0 offen
	buffer_load_u16 v128, v128, s[36:39], 0 offen
	buffer_load_u16 v127, v164, s[36:39], 0 offen
	buffer_load_u16 v100, v167, s[36:39], 0 offen
	buffer_load_u16 v101, v168, s[36:39], 0 offen
	buffer_load_u16 v102, v169, s[36:39], 0 offen
	buffer_load_u16 v107, v104, s[36:39], 0 offen
	buffer_load_u16 v109, v105, s[36:39], 0 offen
	buffer_load_u16 v111, v106, s[36:39], 0 offen
	buffer_load_u16 v125, v114, s[36:39], 0 offen
	buffer_load_u16 v124, v115, s[36:39], 0 offen
	buffer_load_u16 v123, v116, s[36:39], 0 offen
	buffer_load_u16 v122, v117, s[36:39], 0 offen
	buffer_load_u16 v118, v118, s[36:39], 0 offen
	buffer_load_u16 v121, v119, s[36:39], 0 offen
	buffer_load_u16 v120, v120, s[36:39], 0 offen
	buffer_load_u16 v119, v170, s[36:39], 0 offen
	buffer_load_u16 v114, v171, s[36:39], 0 offen
	buffer_load_u16 v115, v172, s[36:39], 0 offen
	buffer_load_u16 v116, v173, s[36:39], 0 offen
	buffer_load_u16 v117, v174, s[36:39], 0 offen
	buffer_load_u16 v113, v175, s[36:39], 0 offen
	buffer_load_u16 v108, v166, s[36:39], 0 offen
	buffer_load_u16 v106, v165, s[36:39], 0 offen
	buffer_load_u16 v105, v176, s[36:39], 0 offen
	buffer_load_u16 v104, v177, s[36:39], 0 offen
	buffer_load_u16 v103, v103, s[36:39], 0 offen
	.loc	1 667 17                        ; attention.py:667:17
	v_cmp_ne_u32_e32 vcc_lo, 1, v78
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s38, s4, s25
	s_and_b32 s80, s4, s31
	s_and_b32 s86, s4, s33
	s_and_b32 s90, s4, s12
	s_and_b32 s89, s4, s11
	s_and_b32 s87, s4, s10
	s_and_b32 s85, s4, s9
	s_and_b32 s77, s4, s16
	s_and_b32 s84, s4, s15
	s_and_b32 s39, s4, s14
	s_and_b32 s76, s4, s13
	s_and_b32 s73, s4, s30
	s_and_b32 s3, s4, s8
	s_and_b32 s72, s4, s6
	s_and_b32 s71, s4, s1
	s_and_b32 s69, s4, s7
	s_and_b32 s70, s4, s0
	v_writelane_b32 v179, s2, 22
	.loc	1 667 17                        ; attention.py:667:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e32 vcc_lo, v112, v88
	v_cmp_le_i32_e64 s0, v151, v88
	s_delay_alu instid0(VALU_DEP_3)
	v_readlane_b32 s2, v179, 22
	v_cmp_le_i32_e64 s1, v153, v88
	v_cmp_le_i32_e64 s6, v155, v88
	v_cmp_le_i32_e64 s7, v156, v88
	v_cmp_le_i32_e64 s8, v157, v88
	.loc	1 668 21 is_stmt 0              ; attention.py:668:21
	s_and_b32 s36, vcc_lo, s2
	s_and_b32 s0, s0, s38
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s9, v158, v88
	v_cmp_le_i32_e64 s10, v159, v88
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s1, s1, s103
	s_and_b32 s6, s6, s102
	s_and_not1_b32 s37, s2, exec_lo
	s_and_b32 s36, s36, exec_lo
	s_and_not1_b32 s38, s38, exec_lo
	s_and_b32 s0, s0, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s11, v163, v88
	v_cmp_le_i32_e64 s12, v162, v88
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s7, s7, s101
	s_and_b32 s8, s8, s100
	s_or_b32 s2, s37, s36
	s_or_b32 s38, s38, s0
	s_and_not1_b32 s0, s103, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_not1_b32 s36, s102, exec_lo
	s_and_b32 s6, s6, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s13, v147, v88
	v_cmp_le_i32_e64 s14, v148, v88
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s9, s9, s99
	s_and_b32 s10, s10, s83
	s_or_b32 s103, s0, s1
	s_or_b32 s102, s36, s6
	s_and_not1_b32 s0, s101, exec_lo
	s_and_b32 s1, s7, exec_lo
	s_and_not1_b32 s6, s100, exec_lo
	s_and_b32 s7, s8, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s15, v149, v88
	v_cmp_le_i32_e64 s16, v150, v88
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s11, s11, s88
	s_and_b32 s12, s12, s104
	s_or_b32 s101, s0, s1
	s_or_b32 s100, s6, s7
	s_and_not1_b32 s0, s99, exec_lo
	s_and_b32 s1, s9, exec_lo
	s_and_not1_b32 s6, s83, exec_lo
	s_and_b32 s7, s10, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s17, v152, v88
	v_cmp_le_i32_e64 s18, v154, v88
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s13, s13, s74
	s_and_b32 s14, s14, s95
	s_or_b32 s99, s0, s1
	s_or_b32 s83, s6, s7
	s_and_not1_b32 s0, s88, exec_lo
	s_and_b32 s1, s11, exec_lo
	s_and_not1_b32 s4, s104, exec_lo
	s_and_b32 s6, s12, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s19, v160, v88
	v_cmp_le_i32_e64 s20, v161, v88
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s15, s15, s93
	s_and_b32 s16, s16, s94
	s_or_b32 s88, s0, s1
	s_or_b32 s104, s4, s6
	s_and_not1_b32 s0, s74, exec_lo
	s_and_b32 s1, s13, exec_lo
	s_and_not1_b32 s6, s95, exec_lo
	s_and_b32 s7, s14, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s21, v146, v88
	v_cmp_le_i32_e64 s22, v145, v88
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s17, s17, s92
	s_and_b32 s18, s18, s75
	s_or_b32 s74, s0, s1
	s_or_b32 s95, s6, s7
	s_and_not1_b32 s0, s93, exec_lo
	s_and_b32 s1, s15, exec_lo
	s_and_not1_b32 s6, s94, exec_lo
	s_and_b32 s7, s16, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s23, v144, v88
	v_cmp_le_i32_e64 s24, v137, v88
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s19, s19, s80
	s_and_b32 s20, s20, s86
	s_or_b32 s93, s0, s1
	s_or_b32 s94, s6, s7
	s_and_not1_b32 s0, s92, exec_lo
	s_and_b32 s1, s17, exec_lo
	s_and_not1_b32 s6, s75, exec_lo
	s_and_b32 s7, s18, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s25, v138, v88
	v_cmp_le_i32_e64 s26, v139, v88
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s21, s21, s90
	s_and_b32 s22, s22, s89
	s_or_b32 s92, s0, s1
	s_or_b32 s75, s6, s7
	s_and_not1_b32 s0, s80, exec_lo
	s_and_b32 s1, s19, exec_lo
	s_and_not1_b32 s6, s86, exec_lo
	s_and_b32 s7, s20, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s27, v140, v88
	v_cmp_le_i32_e64 s28, v141, v88
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s23, s23, s87
	s_and_b32 s24, s24, s85
	s_or_b32 s80, s0, s1
	s_or_b32 s86, s6, s7
	s_and_not1_b32 s0, s90, exec_lo
	s_and_b32 s1, s21, exec_lo
	s_and_not1_b32 s6, s89, exec_lo
	s_and_b32 s7, s22, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s29, v143, v88
	v_cmp_le_i32_e64 s30, v142, v88
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s25, s25, s77
	s_and_b32 s26, s26, s84
	s_or_b32 s90, s0, s1
	s_or_b32 s89, s6, s7
	s_and_not1_b32 s0, s87, exec_lo
	s_and_b32 s1, s23, exec_lo
	s_and_not1_b32 s6, s85, exec_lo
	s_and_b32 s7, s24, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s31, v136, v88
	v_cmp_le_i32_e64 s33, v134, v88
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s27, s27, s39
	s_and_b32 s28, s28, s76
	s_or_b32 s87, s0, s1
	s_or_b32 s85, s6, s7
	s_and_not1_b32 s0, s77, exec_lo
	s_and_b32 s1, s25, exec_lo
	s_and_not1_b32 s6, s84, exec_lo
	s_and_b32 s7, s26, exec_lo
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s34, v135, v88
	v_cmp_le_i32_e64 s35, v110, v88
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s29, s29, s73
	s_and_b32 s30, s30, s3
	s_or_b32 s77, s0, s1
	s_or_b32 s84, s6, s7
	s_and_not1_b32 s0, s39, exec_lo
	s_and_b32 s1, s27, exec_lo
	s_and_not1_b32 s6, s76, exec_lo
	s_and_b32 s7, s28, exec_lo
	s_and_b32 s31, s31, s72
	s_and_b32 s33, s33, s71
	s_or_b32 s39, s0, s1
	s_or_b32 s76, s6, s7
	s_and_not1_b32 s0, s73, exec_lo
	s_and_b32 s1, s29, exec_lo
	s_and_not1_b32 s6, s3, exec_lo
	s_and_b32 s7, s30, exec_lo
	s_and_b32 s34, s34, s69
	s_and_b32 s35, s35, s70
	s_or_b32 s73, s0, s1
	s_or_b32 s3, s6, s7
	s_and_not1_b32 s0, s72, exec_lo
	s_and_b32 s1, s31, exec_lo
	s_and_not1_b32 s6, s71, exec_lo
	s_and_b32 s7, s33, exec_lo
	s_or_b32 s72, s0, s1
	s_or_b32 s71, s6, s7
	s_and_not1_b32 s0, s69, exec_lo
	s_and_b32 s1, s34, exec_lo
	s_and_not1_b32 s6, s70, exec_lo
	s_and_b32 s7, s35, exec_lo
	s_or_b32 s69, s0, s1
	s_or_b32 s70, s6, s7
	v_writelane_b32 v179, s2, 22
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 669 17 is_stmt 1              ; attention.py:669:17
	s_and_not1_b32 vcc_lo, exec_lo, s91
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 17 is_stmt 0                ; attention.py:0:17
	v_writelane_b32 v179, s39, 23
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s2, v163, v90
	v_cmp_ge_i32_e64 s15, v158, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s16, v158, v91
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s11, v156, v90
	v_writelane_b32 v179, s76, 24
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s12, v156, v91
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s19, v157, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s14, v157, v91
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s15, s15, s16
	v_writelane_b32 v179, s86, 25
	s_mov_b32 s86, s99
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s9, v155, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s10, v155, v91
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s11, s11, s12
	v_writelane_b32 v179, s80, 26
	s_and_b32 s12, s19, s14
	s_and_b32 s14, s15, s86
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s17, v159, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s18, v159, v91
	v_writelane_b32 v179, s2, 27
	v_cmp_le_i32_e64 s2, v163, v91
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s23, v147, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s24, v147, v91
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s29, v150, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s30, v150, v91
	.loc	1 670 30                        ; attention.py:670:30
	v_writelane_b32 v179, s2, 28
	v_cmp_ge_i32_e64 s2, v162, v90
	v_cmp_ge_i32_e64 s31, v152, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s33, v152, v91
	s_mov_b32 s96, s48
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s48, v139, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_writelane_b32 v179, s2, 29
	v_cmp_le_i32_e64 s2, v162, v91
	s_mov_b32 s97, s49
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s49, v140, v90
	s_mov_b32 s36, s3
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s3, v139, v91
	.loc	1 670 30                        ; attention.py:670:30
	v_writelane_b32 v179, s2, 30
	v_cmp_ge_i32_e64 s2, v160, v90
	v_cmp_ge_i32_e64 s7, v153, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s8, v153, v91
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s34, v154, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s35, v154, v91
	v_writelane_b32 v179, s2, 31
	v_cmp_le_i32_e64 s2, v160, v91
	s_mov_b32 s13, s54
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s54, v134, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s6, v142, v91
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s10, s9, s10
	v_writelane_b32 v178, s2, 0
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s2, v161, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s9, v134, v91
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s27, v149, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s28, v149, v91
	s_mov_b32 s99, s50
	v_writelane_b32 v178, s2, 1
	v_cmp_le_i32_e64 s2, v161, v91
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s50, v141, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e32 vcc_lo, v141, v91
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s51, s10, s102
	s_and_b32 s10, s17, s18
	v_writelane_b32 v178, s2, 2
	s_mov_b32 s2, s60
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s60, v140, v91
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s17, s31, s33
	s_and_b32 s31, s48, s3
	v_writelane_b32 v178, s70, 3
	s_mov_b32 s39, s77
	s_mov_b64 s[78:79], s[46:47]
	s_mov_b32 s70, s93
	s_mov_b32 s93, s55
	v_writelane_b32 v178, s73, 4
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s73, v142, v90
	v_cmp_ge_i32_e64 s55, v135, v90
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s8, s7, s8
	.loc	1 671 30 is_stmt 0              ; attention.py:671:30
	v_cmp_le_i32_e64 s7, v135, v91
	.loc	1 671 21                        ; attention.py:671:21
	v_writelane_b32 v178, s14, 5
	s_and_b32 s14, s23, s24
	s_and_b32 s23, s29, s30
	s_and_b32 s29, s49, s60
	s_mov_b32 s60, s2
	v_readlane_b32 s2, v179, 31
	v_readlane_b32 s3, v178, 0
	s_and_b32 s16, s34, s35
	s_and_b32 s9, s54, s9
	s_and_b32 s35, s73, s6
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s25, v148, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s26, v148, v91
	s_mov_b64 s[76:77], s[44:45]
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s44, v144, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s45, v144, v91
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s46, v137, v90
	v_cmp_ge_i32_e64 s47, v138, v90
	s_mov_b32 s80, s95
	s_mov_b32 s95, s57
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s57, v137, v91
	v_cmp_le_i32_e64 s98, v138, v91
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v151, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s4, v151, v91
	s_mov_b32 s21, s68
	s_mov_b32 s68, s53
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s53, v136, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s82, v136, v91
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s18, s27, s28
	s_and_b32 s28, s50, vcc_lo
	s_and_b32 s9, s9, s71
	s_mov_b32 vcc_lo, s71
	s_mov_b32 s71, s36
	s_and_b32 s35, s35, s36
	s_and_b32 s36, s2, s3
	v_readlane_b32 s2, v178, 1
	v_readlane_b32 s3, v178, 2
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s66, v112, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s0, v112, v91
	s_mov_b32 s37, s69
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s7, s55, s7
	s_and_b32 s15, s25, s26
	s_and_b32 s24, s46, s57
	s_and_b32 s25, s44, s45
	s_and_b32 s30, s47, s98
	s_mov_b64 s[44:45], s[76:77]
	s_and_b32 s1, s1, s4
	v_readlane_b32 s4, v179, 22
	s_mov_b64 s[46:47], s[78:79]
	s_and_b32 s33, s53, s82
	s_mov_b32 s79, s37
	s_and_b32 s7, s7, s37
	s_and_b32 s37, s2, s3
	v_readlane_b32 s2, v179, 29
	v_readlane_b32 s3, v179, 30
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s40, v146, v90
	s_mov_b32 s69, s41
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s41, v146, v91
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s22, v143, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s81, v143, v91
	s_mov_b32 s20, s56
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s56, v110, v90
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s0, s66, s0
	.loc	1 671 30 is_stmt 0              ; attention.py:671:30
	v_cmp_le_i32_e64 s66, v110, v91
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s33, s33, s72
	s_mov_b32 s82, s72
	v_readlane_b32 s72, v179, 25
	s_and_b32 s0, s0, s4
	s_mov_b32 s53, s68
	s_mov_b32 s68, s21
	s_and_b32 s21, s2, s3
	s_mov_b32 s91, s42
	.loc	1 670 30 is_stmt 1              ; attention.py:670:30
	v_cmp_ge_i32_e64 s42, v145, v90
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s5, v145, v91
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s26, s40, s41
	s_and_b32 s40, s22, s81
	v_readlane_b32 s22, v178, 4
	s_and_b32 s1, s1, s38
	s_and_b32 s34, s56, s66
	s_mov_b32 s56, s20
	s_and_b32 s20, s21, s104
	s_and_b32 s21, s37, s72
	s_and_not1_b32 s37, s4, exec_lo
	s_and_b32 s0, s0, exec_lo
	s_and_b32 s8, s8, s103
	s_and_not1_b32 s38, s38, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_or_b32 s0, s37, s0
	s_and_b32 s11, s11, s101
	s_mov_b32 s41, s69
	s_and_b32 s27, s42, s5
	s_mov_b32 s42, s91
	s_mov_b32 s77, s39
	s_and_b32 s30, s30, s39
	v_readlane_b32 s76, v179, 23
	v_readlane_b32 s39, v179, 24
	v_readlane_b32 s66, v179, 17
	v_readlane_b32 s91, v179, 19
	v_readlane_b32 s73, v179, 26
	v_readlane_b32 s2, v179, 27
	v_readlane_b32 s3, v179, 28
	s_and_b32 s69, s40, s22
	v_readlane_b32 s40, v179, 18
	v_writelane_b32 v179, s0, 22
	s_or_b32 s38, s38, s1
	s_and_not1_b32 s0, s103, exec_lo
	s_and_b32 s1, s8, exec_lo
	s_and_b32 s12, s12, s100
	s_or_b32 s103, s0, s1
	s_and_not1_b32 s0, s101, exec_lo
	s_and_b32 s1, s11, exec_lo
	s_and_not1_b32 s6, s102, exec_lo
	s_or_b32 s101, s0, s1
	v_readlane_b32 s1, v178, 5
	s_and_b32 s8, s51, exec_lo
	s_and_b32 s10, s10, s83
	s_and_b32 s19, s2, s3
	s_or_b32 s102, s6, s8
	s_and_not1_b32 s6, s100, exec_lo
	s_and_b32 s8, s12, exec_lo
	s_and_b32 s19, s19, s88
	s_or_b32 s100, s6, s8
	s_and_not1_b32 s0, s86, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_not1_b32 s6, s83, exec_lo
	s_and_b32 s8, s10, exec_lo
	s_and_b32 s14, s14, s74
	s_and_b32 s15, s15, s80
	s_mov_b32 s50, s99
	s_or_b32 s99, s0, s1
	s_or_b32 s83, s6, s8
	s_and_not1_b32 s0, s88, exec_lo
	s_and_b32 s1, s19, exec_lo
	s_and_not1_b32 s4, s104, exec_lo
	s_and_b32 s6, s20, exec_lo
	s_and_b32 s18, s18, s70
	s_and_b32 s23, s23, s94
	s_or_b32 s88, s0, s1
	s_or_b32 s104, s4, s6
	s_and_not1_b32 s0, s74, exec_lo
	s_and_b32 s1, s14, exec_lo
	s_and_not1_b32 s6, s80, exec_lo
	s_and_b32 s8, s15, exec_lo
	s_and_b32 s17, s17, s92
	s_and_b32 s16, s16, s75
	s_mov_b32 s57, s95
	s_or_b32 s74, s0, s1
	s_or_b32 s95, s6, s8
	s_and_not1_b32 s0, s70, exec_lo
	s_and_b32 s1, s18, exec_lo
	s_and_not1_b32 s6, s94, exec_lo
	s_and_b32 s8, s23, exec_lo
	s_mov_b32 s55, s93
	s_and_b32 s36, s36, s73
	s_or_b32 s93, s0, s1
	s_or_b32 s94, s6, s8
	s_and_not1_b32 s0, s92, exec_lo
	s_and_b32 s1, s17, exec_lo
	s_and_not1_b32 s6, s75, exec_lo
	s_and_b32 s8, s16, exec_lo
	s_and_b32 s26, s26, s90
	s_and_b32 s27, s27, s89
	s_or_b32 s92, s0, s1
	s_or_b32 s75, s6, s8
	s_and_not1_b32 s0, s73, exec_lo
	s_and_b32 s1, s36, exec_lo
	s_and_not1_b32 s6, s72, exec_lo
	s_and_b32 s8, s21, exec_lo
	s_and_b32 s25, s25, s87
	s_and_b32 s24, s24, s85
	s_or_b32 s80, s0, s1
	s_or_b32 s86, s6, s8
	s_and_not1_b32 s0, s90, exec_lo
	s_and_b32 s1, s26, exec_lo
	s_and_not1_b32 s6, s89, exec_lo
	s_and_b32 s8, s27, exec_lo
	s_and_b32 s31, s31, s84
	s_or_b32 s90, s0, s1
	s_or_b32 s89, s6, s8
	s_and_not1_b32 s0, s87, exec_lo
	s_and_b32 s1, s25, exec_lo
	s_and_not1_b32 s6, s85, exec_lo
	s_and_b32 s8, s24, exec_lo
	s_and_b32 s29, s29, s76
	s_and_b32 s28, s28, s39
	s_or_b32 s87, s0, s1
	s_or_b32 s85, s6, s8
	s_and_not1_b32 s0, s77, exec_lo
	s_and_b32 s1, s30, exec_lo
	s_and_not1_b32 s6, s84, exec_lo
	s_and_b32 s8, s31, exec_lo
	v_readlane_b32 s78, v178, 3
	s_or_b32 s77, s0, s1
	s_or_b32 s84, s6, s8
	s_and_not1_b32 s0, s76, exec_lo
	s_and_b32 s1, s29, exec_lo
	s_and_not1_b32 s6, s39, exec_lo
	s_and_b32 s8, s28, exec_lo
	s_or_b32 s39, s0, s1
	s_or_b32 s76, s6, s8
	s_and_not1_b32 s0, s22, exec_lo
	s_and_b32 s1, s69, exec_lo
	s_and_not1_b32 s6, s71, exec_lo
	s_and_b32 s8, s35, exec_lo
	s_and_b32 s34, s34, s78
	s_or_b32 s73, s0, s1
	s_or_b32 s3, s6, s8
	s_and_not1_b32 s0, s82, exec_lo
	s_and_b32 s1, s33, exec_lo
	s_and_not1_b32 s6, vcc_lo, exec_lo
	s_and_b32 s8, s9, exec_lo
	s_or_b32 s72, s0, s1
	s_or_b32 s71, s6, s8
	s_and_not1_b32 s0, s79, exec_lo
	s_and_b32 s1, s7, exec_lo
	s_and_not1_b32 s6, s78, exec_lo
	s_and_b32 s7, s34, exec_lo
	s_mov_b32 s49, s97
	s_mov_b32 s48, s96
	s_mov_b32 s54, s13
	s_or_b32 s69, s0, s1
	s_or_b32 s70, s6, s7
	s_branch .LBB0_6
.LBB0_11:
	.loc	1 0 21                          ; attention.py:0:21
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v17, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v35, v8
	s_branch .LBB0_13
.LBB0_12:                               ; %Flow
	v_readlane_b32 s16, v179, 2
	v_readlane_b32 s24, v179, 7
	v_readlane_b32 s25, v179, 8
	v_readlane_b32 s26, v179, 6
	v_readlane_b32 s17, v179, 3
	v_readlane_b32 s18, v179, 4
	v_readlane_b32 s19, v179, 5
.LBB0_13:                               ; %._crit_edge
	.loc	1 825 26 is_stmt 1              ; attention.py:825:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v70
	.loc	1 822 31                        ; attention.py:822:31
	s_mul_i32 s1, s26, s25
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s0, s42, 2
	.loc	1 822 31                        ; attention.py:822:31
	s_add_i32 s1, s24, s1
	.loc	1 833 13                        ; attention.py:833:13
	s_mov_b32 s3, exec_lo
	.loc	1 825 17                        ; attention.py:825:17
	v_dual_cndmask_b32 v9, 0xff800000, v17 :: v_dual_cndmask_b32 v2, 0, v2
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v14, 0, v6
	v_dual_cndmask_b32 v13, 0, v5 :: v_dual_cndmask_b32 v16, 0, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_dual_mov_b32 v10, v9 :: v_dual_cndmask_b32 v11, 0, v35
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_cndmask_b32 v12, 0, v4
.Ltmp75:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v15, 0, v7 :: v_dual_mov_b32 v6, v1
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp77:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v3, 0, v3, vcc_lo
	.loc	1 822 30                        ; attention.py:822:30
	s_mul_i32 s0, s1, s0
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v18, v14
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v4, v10, v10 :: v_dual_mov_b32 v5, v11
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v7, v2 :: v_dual_mov_b32 v8, v3
	v_mov_b32_e32 v20, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v4, v9, v4
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp83:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp84:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v5, v11, v5
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v9, v4
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v3, v3, v8
	v_dual_add_f32 v1, v1, v6 :: v_dual_add_f32 v2, v2, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v6, v5
.Ltmp88:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp90:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp91:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v8, v9, v9
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v10, v3
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v12, v12, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp94:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v4, v4, v8 :: v_dual_mov_b32 v7, v1
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v5, v5, v6
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp97:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v6, v4
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp99:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v1, v1, v7
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v9, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp102:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v6, v6, v6
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v8, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v2, v2, v9 :: v_dual_add_f32 v9, v3, v10
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_dual_mov_b32 v3, v5 :: v_dual_mov_b32 v10, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v1, v1, v8
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp108:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v8, v4, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v7, v5, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp111:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v3, v2, v10 :: v_dual_mov_b32 v2, v1
.Ltmp112:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v11, v9 :: v_dual_mov_b32 v10, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp113:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v4, v9, v11 :: v_dual_mov_b32 v9, v7
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v11, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v5, v3 :: v_dual_mov_b32 v6, v4
.Ltmp116:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp118:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v11, v13, v11
	v_add_f32_e32 v13, v14, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v19, v15 :: v_dual_mov_b32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v14, v15, v19 :: v_dual_add_f32 v15, v16, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v20, v15
	v_mov_b32_e32 v16, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v12, v12, v17
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v17, v12
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v11, v11, v16 :: v_dual_add_f32 v16, v13, v18
	v_add_f32_e32 v18, v14, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp126:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v13, v12, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v19, v15, v20 :: v_dual_mov_b32 v20, v16
.Ltmp127:
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
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v17, v19, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v11, v11, v15
	v_dual_add_f32 v15, v16, v20 :: v_dual_add_f32 v16, v18, v21
.Ltmp129:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v20, v17
.Ltmp130:
	.loc	1 833 13                        ; attention.py:833:13
	v_or_b32_e32 v21, v68, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v12, v11
	v_dual_mov_b32 v18, v15 :: v_dual_mov_b32 v19, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp132:
	.loc	1 833 13                        ; attention.py:833:13
	v_cmpx_eq_u32_e32 0, v21
	s_cbranch_execz .LBB0_15
; %bb.14:
.Ltmp133:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v21, v8, v8
.Ltmp134:
	.loc	1 833 13                        ; attention.py:833:13
	s_ashr_i32 s1, s0, 31
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v8, v7, v9
.Ltmp136:
	.loc	1 833 13                        ; attention.py:833:13
	s_lshl_b64 s[4:5], s[0:1], 2
	v_mov_b32_e32 v9, 0
.Ltmp137:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v7, v21, v10
.Ltmp138:
	.loc	1 833 13                        ; attention.py:833:13
	s_add_u32 s4, s16, s4
	s_addc_u32 s5, s17, s5
	.loc	1 834 13                        ; attention.py:834:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_15:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s3
.Ltmp139:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v7, v15, v18 :: v_dual_lshlrev_b32 v10, 2, v0
	v_dual_add_f32 v9, v17, v20 :: v_dual_add_f32 v8, v16, v19
	v_add_f32_e32 v16, v13, v14
	v_dual_add_f32 v15, v4, v6 :: v_dual_add_f32 v14, v3, v5
.Ltmp140:
	.loc	1 835 13                        ; attention.py:835:13
	v_lshlrev_b32_e32 v3, 5, v0
	v_and_b32_e32 v4, 0xc0, v10
.Ltmp141:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v6, v11, v12 :: v_dual_and_b32 v5, 0xe0, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_add_f32 v13, v1, v2 :: v_dual_and_b32 v2, 32, v3
.Ltmp142:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v1, 28, v69
	v_add_nc_u32_e32 v3, 0, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v4, 0, v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v4, v[13:16]
	ds_store_b128 v4, v[6:9] offset:16
	v_add3_u32 v1, v3, v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_b32_e32 v0, 0xc0, v0
	.loc	1 836 17                        ; attention.py:836:17
	v_add_nc_u32_e32 v2, s0, v50
	.loc	1 835 13                        ; attention.py:835:13
	ds_load_b32 v1, v1
	v_readlane_b32 s0, v179, 1
	s_and_b32 s17, s17, 0xffff
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 vcc_lo, vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[16:19], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp143:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
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
		.amdhsa_next_free_vgpr 180
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.num_vgpr, 180
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13164
; TotalNumSgprs: 107
; NumVgprs: 180
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 107
; NumVGPRsForWavesPerEU: 180
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     107
    .sgpr_spill_count: 40
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     180
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
