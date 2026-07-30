	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b32 s55, s[0:1], 0x64
	s_load_b64 s[42:43], s[0:1], 0x5c
	s_load_b64 s[56:57], s[0:1], 0x0
	s_load_b64 s[52:53], s[0:1], 0x40
.Ltmp0:
	.loc	1 559 27 prologue_end           ; attention.py:559:27
	s_abs_i32 s7, s2
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v52, 15, v0
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	s_load_b32 s12, s[0:1], 0x88
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v9, 3, v0
	.loc	1 584 86                        ; attention.py:584:86
	v_lshlrev_b32_e32 v2, 1, v52
	.loc	1 585 26                        ; attention.py:585:26
	v_lshlrev_b32_e32 v51, 1, v0
	s_mov_b32 s44, 0
	.loc	1 609 32                        ; attention.py:609:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s5, s55
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s8, s2, s55
	.loc	1 609 32                        ; attention.py:609:32
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 559 27                        ; attention.py:559:27
	s_ashr_i32 s8, s8, 31
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e32 vcc_lo, s42, v2
	.loc	1 609 32                        ; attention.py:609:32
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s4, v1
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v1, 4, v0
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_cvt_u32_f32 s4, s4
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s4
	s_mul_hi_u32 s6, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s4, s6
	.loc	1 559 27                        ; attention.py:559:27
	s_mul_hi_u32 s4, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s4, s5
	s_sub_i32 s7, s7, s9
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s7, s10, s7
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s9, s4
	.loc	1 585 26                        ; attention.py:585:26
	s_and_b32 s57, s57, 0xffff
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s14, s7, 4
	.loc	1 560 27                        ; attention.py:560:27
	s_mul_i32 s7, s7, s55
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s13, s14, s3
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v5, s14, v1
	.loc	1 584 26                        ; attention.py:584:26
	v_add_nc_u32_e32 v3, s13, v1
	.loc	1 560 27                        ; attention.py:560:27
	s_sub_i32 s54, s2, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s4, 1, v5
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[3:4], null, v3, s42, v[2:3]
	.loc	1 585 26                        ; attention.py:585:26
	v_and_b32_e32 v4, 24, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s55, 31
	.loc	1 609 32 is_stmt 1              ; attention.py:609:32
	s_xor_b32 s8, s4, s55
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 609 32                        ; attention.py:609:32
	s_abs_i32 s4, s4
	s_ashr_i32 s8, s8, 31
	s_mul_hi_u32 s6, s4, s6
	.loc	1 585 26                        ; attention.py:585:26
	v_xad_u32 v4, v51, v4, 0
	buffer_load_u16 v3, v3, s[56:59], 0 offen
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_i32 s9, s6, s5
	s_add_i32 s10, s6, 1
	s_sub_i32 s4, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s2, s4, s5
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s5
	s_cselect_b32 s2, s4, s6
	.loc	1 621 48                        ; attention.py:621:48
	s_add_i32 s4, s12, s14
	.loc	1 609 32                        ; attention.py:609:32
	s_xor_b32 s2, s2, s8
	.loc	1 621 48                        ; attention.py:621:48
	s_add_i32 s4, s4, 16
	.loc	1 609 32                        ; attention.py:609:32
	s_sub_i32 s2, s2, s8
	.loc	1 621 25                        ; attention.py:621:25
	s_min_i32 s4, s4, 0x800
	.loc	1 610 18                        ; attention.py:610:18
	s_mul_i32 s5, s54, s2
	.loc	1 622 35                        ; attention.py:622:35
	s_add_i32 s4, s4, 63
	.loc	1 611 33                        ; attention.py:611:33
	s_lshl_b32 s2, s2, 6
	.loc	1 622 34                        ; attention.py:622:34
	s_ashr_i32 s6, s4, 31
	.loc	1 610 18                        ; attention.py:610:18
	s_lshl_b32 s68, s5, 6
	.loc	1 622 34                        ; attention.py:622:34
	s_lshr_b32 s6, s6, 26
	.loc	1 611 33                        ; attention.py:611:33
	s_add_i32 s2, s68, s2
	.loc	1 622 34                        ; attention.py:622:34
	s_add_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 622 33 is_stmt 0              ; attention.py:622:33
	s_and_not1_b32 s4, s4, 63
	.loc	1 622 18                        ; attention.py:622:18
	s_min_i32 s69, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	s_cmp_ge_i32 s68, s69
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(0)
	ds_store_b16 v4, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 570 21 is_stmt 1              ; attention.py:570:21
	v_or_b32_e32 v3, s14, v52
	.loc	1 590 31                        ; attention.py:590:31
	v_add_lshl_u32 v4, s13, v52, 1
	v_dual_mov_b32 v7, 0x5410 :: v_dual_and_b32 v54, 1, v1
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v55, 62, v1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e32 vcc_lo, 1, v3
	v_lshrrev_b32_e32 v5, 1, v0
	v_dual_mov_b32 v124, 0xff800000 :: v_dual_add_nc_u32 v87, s12, v3
	v_dual_mov_b32 v1, 0 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	v_and_b32_e32 v14, 0x60, v0
	.loc	1 633 49                        ; attention.py:633:49
	v_lshlrev_b32_e32 v12, 3, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v125, v1 :: v_dual_and_b32 v6, 16, v0
	v_mov_b32_e32 v3, v1
	v_add3_u32 v88, 0, v2, v14
	.loc	1 629 13                        ; attention.py:629:13
	v_sub_nc_u32_e32 v56, 0x800, v9
	v_lshlrev_b32_e32 v8, 4, v0
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s57, s9, 0xffff
	s_mov_b32 s56, s8
	v_mov_b32_e32 v13, 0x7632
	buffer_load_u16 v11, v4, s[56:59], 0 offen
	.loc	1 585 26                        ; attention.py:585:26
	v_and_b32_e32 v4, 24, v51
	s_load_b32 s8, s[0:1], 0x68
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v64, 16, v54
	v_or_b32_e32 v65, 18, v54
	v_or_b32_e32 v66, 20, v54
	.loc	1 585 26                        ; attention.py:585:26
	v_lshl_or_b32 v15, v52, 5, v4
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v67, 22, v54
	v_or_b32_e32 v68, 24, v54
	v_or_b32_e32 v69, 26, v54
	v_or_b32_e32 v70, 28, v54
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v14, 8, v15
	v_xor_b32_e32 v18, 16, v15
	v_add_nc_u32_e32 v90, 0, v15
	v_xor_b32_e32 v15, 24, v15
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v71, 30, v54
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v114, 0, v14
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v72, 32, v54
	v_or_b32_e32 v73, 34, v54
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v116, 0, v15
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v74, 36, v54
	v_or_b32_e32 v75, 38, v54
	v_or_b32_e32 v76, 40, v54
	v_or_b32_e32 v77, 42, v54
	v_or_b32_e32 v78, 44, v54
	v_or_b32_e32 v79, 46, v54
	v_or_b32_e32 v80, 48, v54
	v_or_b32_e32 v81, 50, v54
	v_or_b32_e32 v82, 52, v54
	v_or_b32_e32 v83, 54, v54
	v_or_b32_e32 v84, 56, v54
	v_or_b32_e32 v85, 58, v54
	v_or_b32_e32 v86, 60, v54
	v_dual_mov_b32 v2, v1 :: v_dual_and_b32 v41, 24, v12
	.loc	1 632 32                        ; attention.py:632:32
	s_lshl_b32 s70, s3, 11
	.loc	1 664 27                        ; attention.py:664:27
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s73, s8, 0x3fb8aa3b
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v53, 2, v0
	v_or_b32_e32 v57, 2, v54
	v_or_b32_e32 v58, 4, v54
	v_or_b32_e32 v59, 6, v54
	v_or_b32_e32 v60, 8, v54
	v_or_b32_e32 v61, 10, v54
	v_or_b32_e32 v62, 12, v54
	v_or_b32_e32 v63, 14, v54
	.loc	1 636 31                        ; attention.py:636:31
	v_cmp_gt_i32_e64 s0, s42, v41
	v_or_b32_e32 v91, s70, v64
	v_or_b32_e32 v92, s70, v65
	v_or_b32_e32 v93, s70, v66
	v_or_b32_e32 v94, s70, v67
	v_or_b32_e32 v95, s70, v68
	v_or_b32_e32 v96, s70, v69
	v_or_b32_e32 v97, s70, v70
	v_or_b32_e32 v98, s70, v71
	v_or_b32_e32 v99, s70, v72
	v_or_b32_e32 v100, s70, v73
	v_or_b32_e32 v101, s70, v74
	v_or_b32_e32 v102, s70, v75
	v_or_b32_e32 v103, s70, v76
	v_or_b32_e32 v104, s70, v77
	v_or_b32_e32 v105, s70, v78
	v_or_b32_e32 v106, s70, v79
	v_or_b32_e32 v107, s70, v80
	v_or_b32_e32 v108, s70, v81
	v_or_b32_e32 v109, s70, v82
	v_or_b32_e32 v110, s70, v83
	v_or_b32_e32 v111, s70, v84
	v_or_b32_e32 v112, s70, v85
	v_or_b32_e32 v113, s70, v86
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s71, s43, 5
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	s_mov_b32 s72, 0x76543210
	s_mov_b32 s62, s58
	s_mov_b32 s63, s59
	s_mov_b32 s66, s58
	s_mov_b32 s67, s59
	s_and_b32 s65, s7, 0xffff
	s_mov_b32 s60, s10
	s_mov_b32 s64, s6
	s_mov_b32 s56, s4
	s_mov_b32 s57, s5
	s_mov_b32 s61, s11
	.loc	1 664 17                        ; attention.py:664:17
	s_mov_b32 s74, s73
	s_mov_b32 s75, s73
	s_mov_b32 s76, s73
	v_dual_mov_b32 v4, v1 :: v_dual_add_nc_u32 v115, 0, v18
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v118, 16, v11
	.loc	1 693 86                        ; attention.py:693:86
	v_and_b32_e32 v10, 56, v12
	v_and_b32_e32 v16, 24, v5
	v_mov_b32_e32 v5, v1
	v_cmp_eq_u32_e64 s2, 0, v6
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v121, v118
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s1, s43, v10
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[42:43], null, s43, v9, v[10:11]
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v17, 0x1054, v7, s2
	v_cndmask_b32_e64 v10, 0x3276, v13, s2
	.loc	1 585 26                        ; attention.py:585:26
	ds_load_b64 v[43:44], v90
	ds_load_b64 v[45:46], v114
	ds_load_b64 v[47:48], v115
	ds_load_b64 v[49:50], v116
	v_mov_b32_e32 v7, v1
	v_add_nc_u32_e32 v89, 0, v8
	v_lshl_or_b32 v9, v17, 8, v17
	v_lshl_or_b32 v10, v10, 8, v10
	v_dual_mov_b32 v8, v1 :: v_dual_mov_b32 v123, v118
	v_xor_b32_e32 v12, v12, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v9, 0x540054, v9
	v_and_b32_e32 v10, 0x760076, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mov_b32 v122, v118 :: v_dual_add_nc_u32 v117, 0, v12
	v_lshl_or_b32 v9, v9, 4, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v10, v10, 4, v10
	v_and_b32_e32 v119, 0x5040504, v9
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v120, 0x7060706, v10
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 633 32                        ; attention.py:633:32
	s_add_i32 s5, s68, s70
	.loc	1 629 13                        ; attention.py:629:13
	v_sub_nc_u32_e32 v17, 0x800, v53
	.loc	1 633 32                        ; attention.py:633:32
	v_or_b32_e32 v18, s5, v53
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v9, s44 :: v_dual_mov_b32 v10, s45
	v_dual_mov_b32 v11, s46 :: v_dual_mov_b32 v12, s47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_lt_i32_e64 s2, s68, v17
	.loc	1 633 32                        ; attention.py:633:32
	v_mad_u64_u32 v[17:18], null, v18, s42, v[41:42]
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v13, s48 :: v_dual_mov_b32 v14, s49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 s2, s0, s2
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v15, s50 :: v_dual_mov_b32 v16, s51
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v126, s68, v54
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	v_or_b32_e32 v40, s70, v58
	v_or_b32_e32 v38, s70, v54
	v_or_b32_e32 v39, s70, v57
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_lt_i32_e64 s4, s68, v56
	.loc	1 634 32                        ; attention.py:634:32
	buffer_load_b64 v[17:18], v17, s[56:59], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_or_b32_e32 v151, s70, v59
	v_or_b32_e32 v152, s70, v60
	v_or_b32_e32 v153, s70, v61
	v_or_b32_e32 v154, s70, v62
	v_or_b32_e32 v155, s70, v63
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_gt_i32_e64 s2, 0x800, v126
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s4, s1, s4
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v160, v91, s68, 1
	v_add_lshl_u32 v161, v92, s68, 1
	v_add_lshl_u32 v162, v93, s68, 1
	v_add_lshl_u32 v163, v94, s68, 1
	v_add_lshl_u32 v164, v95, s68, 1
	v_add_lshl_u32 v165, v96, s68, 1
	v_add_lshl_u32 v166, v97, s68, 1
	v_add_lshl_u32 v167, v98, s68, 1
	v_add_lshl_u32 v168, v99, s68, 1
	v_add_lshl_u32 v169, v100, s68, 1
	v_add_lshl_u32 v170, v101, s68, 1
	v_add_lshl_u32 v171, v102, s68, 1
	v_add_lshl_u32 v172, v103, s68, 1
	v_add_lshl_u32 v173, v104, s68, 1
	v_add_lshl_u32 v174, v105, s68, 1
	v_add_lshl_u32 v175, v106, s68, 1
	v_add_lshl_u32 v176, v107, s68, 1
	v_add_lshl_u32 v177, v108, s68, 1
	v_add_lshl_u32 v178, v109, s68, 1
	v_add_lshl_u32 v179, v110, s68, 1
	v_add_lshl_u32 v180, v111, s68, 1
	v_add_lshl_u32 v181, v112, s68, 1
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s34, v126, v87
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v126, s68, v85
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s33, v126, v87
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v126.h, 0
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v117, v[17:18]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[25:28], v90 offset1:1
	ds_load_2addr_stride64_b64 v[141:144], v90 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[145:148], v114 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[25:26], v[43:44], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[30:37], v[27:28], v[43:44], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[127:134], v[141:142], v[43:44], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[135:142], v[143:144], v[43:44], v[9:16] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[9:12], v114 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[13:16], v115 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[145:146], v[45:46], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[30:37], v[147:148], v[45:46], v[30:37] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v143, v113, s68, 1
	v_cndmask_b32_e64 v144, 0x80000000, v168, s2
	v_cndmask_b32_e64 v148, 0x80000000, v169, s2
	v_cndmask_b32_e64 v169, 0x80000000, v176, s2
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[127:134], v[9:10], v[45:46], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[135:142], v[11:12], v[45:46], v[135:142] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[9:12], v115 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[13:14], v[47:48], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[30:37], v[15:16], v[47:48], v[30:37] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[13:16], v116 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[127:134], v[9:10], v[47:48], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[135:142], v[11:12], v[47:48], v[135:142] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[9:12], v116 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[13:14], v[49:50], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[30:37], v[15:16], v[49:50], v[30:37] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v16, v17
	v_cvt_f32_i32_e32 v17, v22
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v22, v37
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v37, v40, s68, 1
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v14, v20
	v_cvt_f32_i32_e32 v20, v23
	v_cvt_f32_i32_e32 v23, v33
	v_cvt_f32_i32_e32 v27, v35
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v40, v153, s68, 1
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v13, v19
	v_cvt_f32_i32_e32 v15, v18
	v_cvt_f32_i32_e32 v18, v21
	v_cvt_f32_i32_e32 v19, v24
	v_cvt_f32_i32_e32 v24, v32
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[127:134], v[9:10], v[49:50], v[127:134] neg_lo:[1,1,0]
	v_mad_u64_u32 v[9:10], null, s5, s43, v[42:43]
	v_wmma_i32_16x16x16_iu4 v[135:142], v[11:12], v[49:50], v[135:142] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v11, v38, s68, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v156, v129
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v12, v39, s68, 1
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v33, v127
	v_cvt_f32_i32_e32 v35, v128
	.loc	1 694 30                        ; attention.py:694:30
	v_lshlrev_b32_e32 v129, 1, v9
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v10, s5, v55, 1
	v_add_lshl_u32 v38, v151, s68, 1
	v_add_lshl_u32 v39, v152, s68, 1
	v_add_lshl_u32 v127, v154, s68, 1
	v_add_lshl_u32 v128, v155, s68, 1
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v9, v9, s71, 1
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v157, v130
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v130, 0x80000000, v37, s2
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v37, 0x80000000, v129, s4
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v25, v31
	v_cvt_f32_i32_e32 v26, v36
	v_cvt_f32_i32_e32 v21, v30
	v_cvt_f32_i32_e32 v159, v132
	v_cvt_f32_i32_e32 v158, v131
	v_cvt_f32_i32_e32 v147, v134
	v_cvt_f32_i32_e32 v145, v133
	v_cvt_f32_i32_e32 v150, v136
	v_cvt_f32_i32_e32 v149, v135
	v_cvt_f32_i32_e32 v30, v139
	v_cvt_f32_i32_e32 v31, v138
	v_cvt_f32_i32_e32 v36, v137
	v_cvt_f32_i32_e32 v32, v142
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v131, 0x80000000, v38, s2
	v_cndmask_b32_e64 v39, 0x80000000, v39, s2
	v_cndmask_b32_e64 v40, 0x80000000, v40, s2
	v_cndmask_b32_e64 v127, 0x80000000, v127, s2
	v_cndmask_b32_e64 v132, 0x80000000, v128, s2
	v_cndmask_b32_e64 v133, 0x80000000, v160, s2
	v_cndmask_b32_e64 v134, 0x80000000, v161, s2
	v_cndmask_b32_e64 v135, 0x80000000, v162, s2
	v_cndmask_b32_e64 v136, 0x80000000, v163, s2
	v_cndmask_b32_e64 v137, 0x80000000, v164, s2
	v_cndmask_b32_e64 v138, 0x80000000, v165, s2
	v_cndmask_b32_e64 v139, 0x80000000, v166, s2
	v_cndmask_b32_e64 v142, 0x80000000, v167, s2
	v_cndmask_b32_e64 v151, 0x80000000, v170, s2
	v_cndmask_b32_e64 v152, 0x80000000, v171, s2
	v_cndmask_b32_e64 v153, 0x80000000, v172, s2
	v_cndmask_b32_e64 v154, 0x80000000, v173, s2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v28, v140
	v_cvt_f32_i32_e32 v29, v141
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v155, 0x80000000, v174, s2
	v_cndmask_b32_e64 v162, 0x80000000, v175, s2
	v_cndmask_b32_e64 v170, 0x80000000, v177, s2
	v_cndmask_b32_e64 v171, 0x80000000, v178, s2
	v_cndmask_b32_e64 v172, 0x80000000, v179, s2
	v_cndmask_b32_e64 v173, 0x80000000, v180, s2
	v_cndmask_b32_e64 v174, 0x80000000, v181, s2
	v_cndmask_b32_e64 v175, 0x80000000, v143, s2
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[165:168], v37, s[64:67], 0 offen
	.loc	1 649 37                        ; attention.py:649:37
	s_clause 0x1f
	buffer_load_u16 v37, v11, s[60:63], 0 offen
	buffer_load_u16 v38, v12, s[60:63], 0 offen
	buffer_load_u16 v130, v130, s[60:63], 0 offen
	buffer_load_u16 v131, v131, s[60:63], 0 offen
	buffer_load_u16 v39, v39, s[60:63], 0 offen
	buffer_load_u16 v128, v40, s[60:63], 0 offen
	buffer_load_u16 v40, v127, s[60:63], 0 offen
	buffer_load_u16 v129, v132, s[60:63], 0 offen
	buffer_load_u16 v127, v133, s[60:63], 0 offen
	buffer_load_u16 v132, v134, s[60:63], 0 offen
	buffer_load_u16 v134, v135, s[60:63], 0 offen
	buffer_load_u16 v140, v136, s[60:63], 0 offen
	buffer_load_u16 v146, v137, s[60:63], 0 offen
	buffer_load_u16 v135, v138, s[60:63], 0 offen
	buffer_load_u16 v141, v139, s[60:63], 0 offen
	buffer_load_u16 v136, v142, s[60:63], 0 offen
	buffer_load_u16 v142, v144, s[60:63], 0 offen
	buffer_load_u16 v138, v148, s[60:63], 0 offen
	buffer_load_u16 v160, v151, s[60:63], 0 offen
	buffer_load_u16 v161, v152, s[60:63], 0 offen
	buffer_load_u16 v163, v153, s[60:63], 0 offen
	buffer_load_u16 v164, v154, s[60:63], 0 offen
	buffer_load_u16 v151, v155, s[60:63], 0 offen
	buffer_load_u16 v152, v162, s[60:63], 0 offen
	buffer_load_u16 v153, v169, s[60:63], 0 offen
	buffer_load_u16 v154, v170, s[60:63], 0 offen
	buffer_load_u16 v148, v171, s[60:63], 0 offen
	buffer_load_u16 v133, v172, s[60:63], 0 offen
	buffer_load_u16 v137, v173, s[60:63], 0 offen
	buffer_load_u16 v143, v174, s[60:63], 0 offen
	buffer_load_u16 v144, v175, s[60:63], 0 offen
	buffer_load_u16 v139, v10, s[60:63], 0 offen
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[9:12], v9, s[64:67], 0 offen
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v155, s68, v82
	v_or_b32_e32 v162, s68, v81
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v34, v34
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s5, v155, v87
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v155, s68, v80
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s4, v162, v87
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v162, s68, v79
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v29, v123, v29 :: v_dual_mul_f32 v22, v122, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s6, v155, v87
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v155, s68, v78
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s7, v162, v87
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v162, s68, v77
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v17, v121, v17 :: v_dual_mul_f32 v20, v122, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s8, v155, v87
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v155, s68, v76
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s9, v162, v87
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v162, s68, v75
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v21, v118, v21 :: v_dual_mul_f32 v30, v121, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s10, v155, v87
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v155, s68, v74
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s11, v162, v87
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v162, s68, v73
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v19, v123, v19 :: v_dual_mul_f32 v28, v122, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s13, v155, v87
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v155, s68, v72
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s14, v162, v87
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v162, s68, v71
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v31, v118, v31 :: v_dual_mul_f32 v32, v123, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s15, v155, v87
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v155, s68, v70
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s16, v162, v87
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v162, s68, v69
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s2, vcc_lo, s2
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v169.h, v126.h
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s12, v155, v87
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v155, s68, v68
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s17, v162, v87
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v162, s68, v67
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s14, s14, s2
	s_and_b32 s15, s15, s2
	.loc	1 668 30 is_stmt 0              ; attention.py:668:30
	v_cmp_le_i32_e64 s18, v155, v87
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v155, s68, v66
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s19, v162, v87
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v162, s68, v65
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s16, s16, s2
	s_and_b32 s17, s17, s2
	.loc	1 668 30 is_stmt 0              ; attention.py:668:30
	v_cmp_le_i32_e64 s20, v155, v87
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v155, s68, v64
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s24, v162, v87
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v162, s68, v63
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s18, s18, s2
	s_and_b32 s19, s19, s2
	.loc	1 668 30 is_stmt 0              ; attention.py:668:30
	v_cmp_le_i32_e64 s21, v155, v87
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v155, s68, v62
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s22, v162, v87
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v162, s68, v61
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s20, s20, s2
	s_and_b32 s24, s24, s2
	.loc	1 668 30 is_stmt 0              ; attention.py:668:30
	v_cmp_le_i32_e64 s23, v155, v87
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v155, s68, v60
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s25, v162, v87
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v162, s68, v59
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s12, s12, s2
	s_and_b32 s39, s34, s2
	.loc	1 668 30 is_stmt 0              ; attention.py:668:30
	v_cmp_le_i32_e64 s26, v155, v87
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v155, s68, v58
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s27, v162, v87
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v162, s68, v57
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s34, s25, s2
	s_and_b32 s26, s26, s2
	.loc	1 668 30 is_stmt 0              ; attention.py:668:30
	v_cmp_le_i32_e64 s28, v155, v87
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v155, s68, v55
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s31, v162, v87
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v162, s68, v86
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s37, s27, s2
	s_and_b32 s28, s28, s2
	.loc	1 668 30 is_stmt 0              ; attention.py:668:30
	v_cmp_le_i32_e64 s30, v155, v87
	v_mov_b32_e32 v155, v125
	v_cmp_le_i32_e64 s29, v162, v87
	v_mov_b32_e32 v162, v124
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s38, s31, s2
	s_and_b32 s41, s23, s2
	s_and_b32 s40, s21, s2
	s_and_b32 s21, s30, s2
	s_and_b32 s25, s29, s2
	s_and_b32 s5, s5, s2
	s_and_b32 s6, s6, s2
	s_and_b32 s7, s7, s2
	s_and_b32 s8, s8, s2
	s_and_b32 s9, s9, s2
	s_and_b32 s10, s10, s2
	s_and_b32 s11, s11, s2
	s_and_b32 s13, s13, s2
	s_and_b32 s31, s22, s2
	s_and_b32 s4, s4, s2
	s_and_b32 s22, s33, s2
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v125.h, v126.h
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v18, v118, v18
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(33)
	ds_store_b128 v89, v[165:168]
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v165, s68, v84
	v_or_b32_e32 v166, s68, v83
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v167.h, v126.h
	v_mov_b16_e64 v168.h, v126.h
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s68, s68, 64
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s36, v165, v87
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v40, 16, v40
	v_lshlrev_b32_e32 v39, 16, v39
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s35, v166, v87
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v165.h, v126.h
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s23, s36, s2
	.loc	1 654 30                        ; attention.py:654:30
	s_waitcnt vmcnt(25)
	v_dual_mul_f32 v20, v20, v40 :: v_dual_lshlrev_b32 v129, 16, v129
	v_mul_f32_e32 v18, v18, v39
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s27, s35, s2
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v166.h, v126.h
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v162
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v19, v19, v129
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s68, s69
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v18, s73, v18
	v_mul_f32_e32 v20, s75, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v18, 0xff800000, v18, s26
	v_cndmask_b32_e64 v20, 0xff800000, v20, s41
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v139, 16, v139
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(0)
	ds_store_b128 v89, v[9:12] offset:4096
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v9, v123, v159 :: v_dual_lshlrev_b32 v10, 16, v164
	v_dual_mul_f32 v11, v118, v25 :: v_dual_mul_f32 v12, v121, v26
	v_dual_mul_f32 v26, v122, v13 :: v_dual_mul_f32 v25, v121, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v124, v9, v10
	v_dual_mul_f32 v9, v122, v158 :: v_dual_lshlrev_b32 v10, 16, v163
	v_dual_mul_f32 v35, v118, v16 :: v_dual_lshlrev_b32 v130, 16, v130
	v_dual_mul_f32 v32, v32, v139 :: v_dual_lshlrev_b32 v137, 16, v137
	v_mul_f32_e32 v163, v9, v10
	v_mul_f32_e32 v9, v121, v157
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v10, 16, v161
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v30, v30, v137
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v32, s76, v32
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v157.h, v126.h
	v_mov_b16_e64 v159.h, v126.h
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v161, v9, v10
	v_mul_f32_e32 v9, v118, v156
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v10, 16, v160
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v124, s76, v124
	v_mul_f32_e32 v30, s74, v30
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v32, 0xff800000, v32, s21
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v158.h, v126.h
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v156, v9, v10
	v_mul_f32_e32 v9, v123, v150
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v10, 16, v154
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v30, 0xff800000, v30, s23
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v150.h, v126.h
	v_mov_b16_e64 v160.h, v126.h
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v154, v9, v10 :: v_dual_mul_f32 v9, v122, v149
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v10, 16, v153
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v149.h, v126.h
	.loc	1 694 30                        ; attention.py:694:30
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v153, v9, v10
	v_dual_mul_f32 v9, v121, v147 :: v_dual_lshlrev_b32 v10, 16, v152
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v147.h, v126.h
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v152, v9, v10 :: v_dual_mul_f32 v9, v118, v145
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v10, 16, v151
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v145.h, v126.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v151, v9, v10
	v_mul_f32_e32 v9, v122, v36
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v10, 16, v148
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v36.h, v126.h
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v148, v9, v10
	v_mul_f32_e32 v9, v123, v34
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v10, 16, v146
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v34.h, v126.h
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v146, v9, v10 :: v_dual_mul_f32 v9, v122, v23
	v_dual_mul_f32 v10, v121, v24 :: v_dual_mul_f32 v23, v118, v27
	v_mul_f32_e32 v24, v123, v33
	v_mul_f32_e32 v27, v123, v14
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v14, 16, v134
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v33, v121, v15 :: v_dual_lshlrev_b32 v134, 16, v142
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v13, 16, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v142, v10, v14 :: v_dual_lshlrev_b32 v15, 16, v132
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v132, 16, v135
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v24, v24, v134 :: v_dual_lshlrev_b32 v135, 16, v136
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v16, 16, v141
	v_lshlrev_b32_e32 v131, 16, v131
	v_lshlrev_b32_e32 v136, 16, v138
	v_lshlrev_b32_e32 v138, 16, v143
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v143, v11, v15 :: v_dual_lshlrev_b32 v140, 16, v144
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v144, v12, v16 :: v_dual_mul_f32 v27, v27, v131
	v_dual_mul_f32 v25, v25, v136 :: v_dual_mul_f32 v26, v26, v130
	v_dual_mul_f32 v22, v22, v135 :: v_dual_lshlrev_b32 v37, 16, v37
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v38, 16, v38
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v40, s73, v151 :: v_dual_lshlrev_b32 v133, 16, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v35, v35, v37 :: v_dual_lshlrev_b32 v128, 16, v128
	v_mul_f32_e32 v33, v33, v38
	v_mul_f32_e32 v141, v9, v13
	v_mul_f32_e32 v23, v23, v132
	v_mul_f32_e32 v31, v31, v133
	v_mul_f32_e32 v17, v17, v128
	v_dual_mul_f32 v28, v28, v138 :: v_dual_lshlrev_b32 v127, 16, v127
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v131, s75, v141
	v_dual_mul_f32 v133, s73, v143 :: v_dual_mul_f32 v26, s75, v26
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v21, v21, v127
	v_dual_mul_f32 v29, v29, v140 :: v_dual_mul_f32 v38, s75, v153
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v39, s74, v152 :: v_dual_mul_f32 v22, s75, v22
	v_dual_mul_f32 v127, s75, v163 :: v_dual_mul_f32 v24, s76, v24
	v_dual_mul_f32 v129, s73, v156 :: v_dual_mul_f32 v130, s76, v146
	v_dual_mul_f32 v25, s74, v25 :: v_dual_mul_f32 v132, s74, v142
	v_dual_mul_f32 v23, s73, v23 :: v_dual_mul_f32 v134, s74, v144
	v_mul_f32_e32 v27, s76, v27
	v_mul_f32_e32 v33, s74, v33
	v_dual_mul_f32 v35, s73, v35 :: v_dual_mul_f32 v28, s75, v28
	v_mul_f32_e32 v17, s74, v17
	v_mul_f32_e32 v29, s76, v29
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v26, 0xff800000, v26, s28
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v31, s73, v31
	v_dual_mul_f32 v37, s75, v148 :: v_dual_mul_f32 v128, s74, v161
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v134, 0xff800000, v134, s12
	v_cndmask_b32_e64 v23, 0xff800000, v23, s17
	v_cndmask_b32_e64 v24, 0xff800000, v24, s15
	v_cndmask_b32_e64 v22, 0xff800000, v22, s16
	v_cndmask_b32_e64 v25, 0xff800000, v25, s14
	v_cndmask_b32_e64 v131, 0xff800000, v131, s19
	v_cndmask_b32_e64 v132, 0xff800000, v132, s20
	v_cndmask_b32_e64 v133, 0xff800000, v133, s24
	v_cndmask_b32_e64 v130, 0xff800000, v130, s18
	v_cndmask_b32_e64 v17, 0xff800000, v17, s34
	v_cndmask_b32_e64 v33, 0xff800000, v33, s38
	v_cndmask_b32_e64 v35, 0xff800000, v35, s39
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v19, s76, v19
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v27, 0xff800000, v27, s37
	v_cndmask_b32_e64 v29, 0xff800000, v29, s25
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v135, s76, v154
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v31, 0xff800000, v31, s27
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v21, s73, v21
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v38, 0xff800000, v38, s6
	v_cndmask_b32_e64 v39, 0xff800000, v39, s7
	v_cndmask_b32_e64 v40, 0xff800000, v40, s8
	v_cndmask_b32_e64 v127, 0xff800000, v127, s10
	v_cndmask_b32_e64 v128, 0xff800000, v128, s11
	v_cndmask_b32_e64 v129, 0xff800000, v129, s13
	v_cndmask_b32_e64 v136, 0xff800000, v124, s9
	v_cndmask_b32_e64 v37, 0xff800000, v37, s5
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v139, v22, v24, v25
	v_max3_f32 v140, v133, v132, v131
	v_max3_f32 v141, v130, v23, v134
	v_max_f32_e32 v142, v35, v33
.Ltmp2:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v19, 0xff800000, v19, s31
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v143, v27, v18, v17
	v_max_f32_e32 v146, v31, v30
.Ltmp4:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v21, 0xff800000, v21, s40
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v148, v29, v32
.Ltmp6:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v135, 0xff800000, v135, s4
	v_cndmask_b32_e64 v28, 0xff800000, v28, s22
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v124, v129, v128, v127
	v_max3_f32 v137, v136, v40, v39
	v_max3_f32 v144, v20, v19, v21
	v_max3_f32 v138, v38, v135, v37
	v_max3_f32 v139, v140, v141, v139
	v_max3_f32 v140, v142, v26, v143
.Ltmp8:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v9, v88
	ds_load_u16_d16 v10, v88 offset:256
	ds_load_u16_d16 v11, v88 offset:512
	ds_load_u16_d16 v12, v88 offset:768
	ds_load_u16_d16 v13, v88 offset:1024
	ds_load_u16_d16 v14, v88 offset:1280
	ds_load_u16_d16 v15, v88 offset:1536
	ds_load_u16_d16 v16, v88 offset:1792
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v124, v124, v137, v138
	v_max3_f32 v137, v146, v28, v148
	v_max3_f32 v138, v140, v144, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v124, v138, v124, v137
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v137, v124, s72, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v124, v162, v124, v137
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v18, v18, v124
	v_sub_f32_e32 v21, v21, v124
	v_sub_f32_e32 v39, v39, v124
	v_sub_f32_e32 v25, v25, v124
	v_sub_f32_e32 v31, v31, v124
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v18, v18
	v_exp_f32_e32 v21, v21
	v_exp_f32_e32 v139, v39
	v_exp_f32_e32 v25, v25
	v_exp_f32_e32 v31, v31
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v127, v127, v124
	v_sub_f32_e32 v29, v29, v124
	v_sub_f32_e32 v30, v30, v124
	v_sub_f32_e32 v133, v133, v124
	v_sub_f32_e32 v40, v40, v124
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v18, 0, v18, s26
	v_cndmask_b32_e64 v142, 0, v21, s40
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v127, v127
	v_exp_f32_e32 v29, v29
	v_exp_f32_e32 v30, v30
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v169.l, v18.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v131, v131, v124
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v165.l, v142.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v129, v129, v124
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v133, v133
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v135, v135, v124
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v131, v131
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v154, 0, v127, s10
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v129, v129
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v164, 0, v29, s25
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v40, v40
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v163, 0, v30, s23
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v150.l, v154.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v32, v32, v124
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v34.l, v164.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v37, v37, v124
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v39, 0, v131, s19
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v134, v134, v124
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v140, v135
	v_exp_f32_e32 v32, v32
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v34, 1, v34
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v141, v37
	v_exp_f32_e32 v134, v134
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v37, 0, v133, s24
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v33, v33, v124
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v156, 0, v40, s8
	v_cndmask_b32_e64 v131, 0, v139, s7
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v17, v17, v124
	v_sub_f32_e32 v26, v26, v124
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v36.l, v163.h
	v_mov_b16_e64 v149.l, v156.h
	v_cmp_o_f32_e64 s26, v131, v131
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v146, 0, v134, s12
	v_cndmask_b32_e64 v134, 0, v25, s14
	v_cndmask_b32_e64 v25, 0, v129, s13
	v_cndmask_b32_e64 v129, 0, v31, s27
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v24, v24, v124
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v158.l, v146.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v28, v28, v124
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v26, v26
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v160.l, v25.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v24, v24
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s8, v25, v25
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v28, v28
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s19, v164, v164
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v26, 0, v26, s28
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s28, v129, v129
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v148, 0, v24, s15
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v22, v22, v124
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v127, 0, v28, s22
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v128, v128, v124
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v168.l, v26.h
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v29, v148, v134
.Ltmp13:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v22, v22
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v157.l, v148.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v128, v128
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s15, v156, v156
	v_cmp_o_f32_e64 s7, v148, v148
	v_cmp_o_f32_e64 s29, v127, v127
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v135, 0, v22, s16
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_dual_sub_f32 v35, v35, v124 :: v_dual_add_f32 v22, v142, v37
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v33, v33
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v133, 0, v128, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp14:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v28, v146, v135
.Ltmp15:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v35, v35
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v128, 0, v32, s21
.Ltmp16:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v32, v156, v131
.Ltmp17:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v17, v17
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_dual_sub_f32 v27, v27, v124 :: v_dual_add_f32 v30, v25, v133
	v_sub_f32_e32 v23, v23, v124
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v33, 0, v33, s38
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s11, v142, v142
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v35, 0, v35, s39
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v20, v20, v124
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v23, v23
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v152, 0, v17, s34
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v126.l, v33.h
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v17, v35, v33
.Ltmp19:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v20, v20
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v167.l, v35.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v136, v136, v124
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v151, 0, v27, s37
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v132, v132, v124
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s21, v33, v33
	v_cmp_o_f32_e64 s22, v35, v35
	v_cmp_o_f32_e64 s14, v152, v152
	v_cmp_o_f32_e64 s23, v151, v151
	v_cmp_o_f32_e64 s24, v133, v133
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v27, 0, v20, s41
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v130, v130, v124
.Ltmp20:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v20, v18, v152
.Ltmp21:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v138, v38, v124
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s30, v128, v128
	v_mov_b16_e32 v125.l, v27.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v130, v130
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s10, v27, v27
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v138, v138
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v144, 0, v130, s18
	v_cndmask_b32_e64 v130, 0, v140, s4
	v_cndmask_b32_e64 v161, 0, v138, s6
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v19, v19, v124
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s6, v146, v146
	v_mov_b16_e64 v159.l, v144.h
	v_cmp_o_f32_e64 s4, v18, v18
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v40, v161, v130
.Ltmp23:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v19, v19
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v147.l, v161.h
	v_cmp_o_f32_e64 s16, v161, v161
	v_cmp_o_f32_e64 s18, v163, v163
	v_cmp_o_f32_e64 s27, v130, v130
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v153, 0, v19, s31
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v19, v26, v151
.Ltmp25:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v132, v132
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v137, v162, v124
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v162, 0, v141, s5
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v21, v27, v153 :: v_dual_add_f32 v170, v17, v19
	v_add_f32_e32 v19, v163, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp27:
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v38, v137
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v17, v162, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_add_f32_e32 v171, v20, v21
.Ltmp29:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v21, 1, v167
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v143, 0, v132, s20
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v137, v136
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v136, 0, v23, s17
.Ltmp30:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v173, v40, v17
.Ltmp31:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s5, v144, v144
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v23, v143, v39
.Ltmp33:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v145.l, v162.h
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v24, v144, v136
.Ltmp35:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s20, v26, v26
	v_mov_b16_e64 v166.l, v143.h
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v172, v22, v23
.Ltmp37:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v22, 1, v126
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v132, 0, v137, s9
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v23, 1, v168
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v168, v29, v30
.Ltmp39:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v30, 1, v159
	v_add3_u32 v17, v33, v22, 0x7fff
	v_and_b32_e32 v33, 1, v160
	v_mov_b16_e64 v126.l, v151.h
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v20, v164, v128
.Ltmp41:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v40, v144, v30, 0x7fff
	v_cmp_o_f32_e64 s9, v154, v154
	v_add3_u32 v138, v25, v33, 0x7fff
	v_and_b32_e32 v33, 1, v149
	v_and_b32_e32 v29, 1, v166
	v_cmp_o_f32_e64 s12, v143, v143
	v_cmp_o_f32_e64 s13, v153, v153
	v_cmp_o_f32_e64 s17, v162, v162
	v_add3_u32 v144, v156, v33, 0x7fff
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v174, v19, v20 :: v_dual_and_b32 v33, 1, v126
	v_add_f32_e32 v31, v154, v132
.Ltmp43:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v19, v35, v21, 0x7fff
	v_and_b32_e32 v35, 1, v150
	v_add3_u32 v20, v26, v23, 0x7fff
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v150, v173, v174
.Ltmp45:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v26, 1, v125
	v_mov_b16_e64 v126.l, v152.h
	v_add3_u32 v139, v154, v35, 0x7fff
	v_and_b32_e32 v35, 1, v147
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v167, v24, v28 :: v_dual_and_b32 v24, 1, v169
	v_add_f32_e32 v169, v31, v32
.Ltmp47:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v31, 1, v158
	v_and_b32_e32 v36, 1, v36
	v_and_b32_e32 v154, 1, v126
	v_add3_u32 v33, v151, v33, 0x7fff
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v149, v168, v169
.Ltmp49:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v125, v146, v31, 0x7fff
	v_and_b32_e32 v146, 1, v145
	v_add3_u32 v145, v161, v35, 0x7fff
	v_add3_u32 v147, v163, v36, 0x7fff
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v35, v170, v171
	v_add_f32_e32 v36, v172, v167
.Ltmp51:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v126.l, v153.h
	v_and_b32_e32 v28, 1, v165
	v_and_b32_e32 v32, 1, v157
	v_cndmask_b16 v156.h, 0x7fff, v33.h, s23
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v35, v35, v36 :: v_dual_add_f32 v36, v149, v150
.Ltmp53:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v150, v152, v154, 0x7fff
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v152, 0, v38, s2
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v33, 1, v126
	v_mov_b16_e32 v126.l, v37.h
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v149, v35, v36
.Ltmp55:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v140, v18, v24, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v17, v88 offset:2048
	ds_load_u16_d16 v18, v88 offset:2304
	ds_load_u16_d16 v19, v88 offset:2560
	ds_load_u16_d16 v20, v88 offset:2816
	ds_load_u16_d16 v21, v88 offset:3072
	ds_load_u16_d16 v22, v88 offset:3328
	ds_load_u16_d16 v23, v88 offset:3584
	ds_load_u16_d16 v24, v88 offset:3840
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v141, v27, v26, 0x7fff
	v_add3_u32 v142, v142, v28, 0x7fff
	v_add3_u32 v143, v143, v29, 0x7fff
	v_add3_u32 v137, v148, v32, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v25, v88 offset:4096
	ds_load_u16_d16 v26, v88 offset:4352
	ds_load_u16_d16 v27, v88 offset:4608
	ds_load_u16_d16 v28, v88 offset:4864
	ds_load_u16_d16 v29, v88 offset:5120
	ds_load_u16_d16 v30, v88 offset:5376
	ds_load_u16_d16 v31, v88 offset:5632
	ds_load_u16_d16 v32, v88 offset:5888
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v2, v2, v152
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v151, v153, v33, 0x7fff
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v4, v4, v152
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v140.l, 0x7fff, v125.h, s6
	v_cndmask_b16 v38.h, 0x7fff, v150.h, s14
	v_and_b32_e32 v125, 1, v126
.Ltmp56:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v150, v149, s72, 0xfedcba98 op_sel:[1,0]
.Ltmp57:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v126.l, v39.h
	v_add3_u32 v148, v164, v34, 0x7fff
	s_waitcnt lgkmcnt(15)
	v_cndmask_b16 v34.h, 0x7fff, v17.h, s21
	s_waitcnt lgkmcnt(13)
	v_cndmask_b16 v34.l, 0x7fff, v19.h, s22
	s_waitcnt lgkmcnt(12)
	v_cndmask_b16 v156.l, 0x7fff, v20.h, s20
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v6, v6, v152
	v_mul_f32_e32 v8, v8, v152
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s2, v37, v37
	v_cndmask_b16 v38.l, 0x7fff, v140.h, s4
	v_cndmask_b16 v40.l, 0x7fff, v141.h, s10
	v_cndmask_b16 v139.l, 0x7fff, v40.h, s5
	v_cndmask_b16 v40.h, 0x7fff, v151.h, s13
	v_add3_u32 v151, v37, v125, 0x7fff
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v125, v149, v150
.Ltmp59:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v149, 1, v126
	v_mov_b16_e64 v126.l, v136.h
	v_permlanex16_b32 v157, v34, s72, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v156, s72, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v141.l, 0x7fff, v137.h, s7
	v_permlanex16_b32 v153, v38, s72, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v150, v40, s72, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v137.h, 0x7fff, v151.h, s2
	v_and_b32_e32 v151, 1, v126
	v_mov_b16_e64 v126.l, v135.h
	v_perm_b32 v33, v157, v34, v119
	v_perm_b32 v34, v157, v34, v120
	v_perm_b32 v35, v36, v156, v119
	v_perm_b32 v36, v36, v156, v120
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v1, v1, v152
	v_mul_f32_e32 v3, v3, v152
	v_mul_f32_e32 v5, v5, v152
	v_mul_f32_e32 v7, v7, v152
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s20, v39, v39
	v_perm_b32 v37, v153, v38, v119
	v_perm_b32 v38, v153, v38, v120
	v_add3_u32 v149, v39, v149, 0x7fff
	v_perm_b32 v39, v150, v40, v119
	v_perm_b32 v40, v150, v40, v120
	v_and_b32_e32 v150, 1, v126
	v_mov_b16_e64 v126.l, v134.h
	v_add3_u32 v146, v162, v146, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v156, v88 offset:6144
	ds_load_u16_d16 v157, v88 offset:6400
	ds_load_u16_d16 v158, v88 offset:6656
	ds_load_u16_d16 v159, v88 offset:6912
	ds_load_u16_d16 v160, v88 offset:7168
	ds_load_u16_d16 v161, v88 offset:7424
	ds_load_u16_d16 v162, v88 offset:7680
	ds_load_u16_d16 v163, v88 offset:7936
	ds_load_u16_d16_hi v9, v88 offset:128
	ds_load_u16_d16_hi v10, v88 offset:384
	ds_load_u16_d16_hi v11, v88 offset:640
	ds_load_u16_d16_hi v12, v88 offset:896
	ds_load_u16_d16_hi v13, v88 offset:1152
	ds_load_u16_d16_hi v14, v88 offset:1408
	ds_load_u16_d16_hi v15, v88 offset:1664
	ds_load_u16_d16_hi v16, v88 offset:1920
	ds_load_u16_d16_hi v17, v88 offset:2176
	ds_load_u16_d16_hi v18, v88 offset:2432
	ds_load_u16_d16_hi v19, v88 offset:2688
	ds_load_u16_d16_hi v20, v88 offset:2944
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v21, v88 offset:3200
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v22, v88 offset:3456
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v23, v88 offset:3712
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v24, v88 offset:3968
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v25, v88 offset:4224
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v26, v88 offset:4480
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v27, v88 offset:4736
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v28, v88 offset:4992
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v29, v88 offset:5248
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v30, v88 offset:5504
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v31, v88 offset:5760
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v32, v88 offset:6016
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s21, v136, v136
	v_cmp_o_f32_e64 s22, v135, v135
	v_add3_u32 v136, v136, v151, 0x7fff
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[33:40], v[1:8]
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v13, v135, v150, 0x7fff
	v_and_b32_e32 v14, 1, v126
	v_mov_b16_e64 v126.l, v133.h
	v_cndmask_b16 v137.l, 0x7fff, v142.h, s11
	v_cndmask_b16 v138.l, 0x7fff, v143.h, s12
	v_cndmask_b16 v142.l, 0x7fff, v138.h, s8
	v_cndmask_b16 v143.l, 0x7fff, v139.h, s9
	v_cndmask_b16 v138.h, 0x7fff, v149.h, s20
	v_cndmask_b16 v139.h, 0x7fff, v136.h, s21
	v_cndmask_b16 v140.h, 0x7fff, v13.h, s22
	v_and_b32_e32 v33, 1, v126
	v_mov_b16_e64 v126.l, v132.h
	v_cmp_o_f32_e64 s23, v134, v134
	v_permlanex16_b32 v149, v137, s72, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v138, s72, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v139, s72, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v16, v134, v14, 0x7fff
	v_permlanex16_b32 v34, v140, s72, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v33, v133, v33, 0x7fff
	v_and_b32_e32 v35, 1, v126
	v_mov_b16_e64 v126.l, v131.h
	v_perm_b32 v9, v149, v137, v119
	v_perm_b32 v10, v149, v137, v120
	v_perm_b32 v11, v12, v138, v119
	v_perm_b32 v12, v12, v138, v120
	v_perm_b32 v13, v15, v139, v119
	v_perm_b32 v14, v15, v139, v120
	v_cndmask_b16 v141.h, 0x7fff, v16.h, s23
	v_perm_b32 v15, v34, v140, v119
	v_perm_b32 v16, v34, v140, v120
	v_cndmask_b16 v142.h, 0x7fff, v33.h, s24
	v_add3_u32 v33, v132, v35, 0x7fff
	v_and_b32_e32 v35, 1, v126
	v_mov_b16_e64 v126.l, v130.h
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[17:24], v[9:16], v[1:8]
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s25, v132, v132
	v_cndmask_b16 v144.l, 0x7fff, v144.h, s15
	v_add3_u32 v13, v131, v35, 0x7fff
	v_and_b32_e32 v14, 1, v126
	v_mov_b16_e64 v126.l, v129.h
	v_cndmask_b16 v145.l, 0x7fff, v145.h, s16
	v_cndmask_b16 v143.h, 0x7fff, v33.h, s25
	v_cndmask_b16 v144.h, 0x7fff, v13.h, s26
	v_add3_u32 v17, v130, v14, 0x7fff
	v_and_b32_e32 v16, 1, v126
	v_mov_b16_e32 v126.l, v127.h
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	ds_load_u16_d16_hi v156, v88 offset:6272
	ds_load_u16_d16_hi v157, v88 offset:6528
	ds_load_u16_d16_hi v158, v88 offset:6784
	ds_load_u16_d16_hi v159, v88 offset:7040
	ds_load_u16_d16_hi v160, v88 offset:7296
	ds_load_u16_d16_hi v161, v88 offset:7552
	ds_load_u16_d16_hi v162, v88 offset:7808
	ds_load_u16_d16_hi v163, v88 offset:8064
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v146.l, 0x7fff, v146.h, s17
	v_cndmask_b16 v145.h, 0x7fff, v17.h, s27
	v_add3_u32 v17, v129, v16, 0x7fff
	v_and_b32_e32 v19, 1, v126
	v_mov_b16_e64 v126.l, v128.h
	v_permlanex16_b32 v34, v141, s72, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v142, s72, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v143, s72, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v144, s72, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v20, 1, v126
	v_add3_u32 v19, v127, v19, 0x7fff
	v_cndmask_b16 v146.h, 0x7fff, v17.h, s28
	v_cndmask_b16 v147.l, 0x7fff, v147.h, s18
	v_cndmask_b16 v148.l, 0x7fff, v148.h, s19
	v_add3_u32 v17, v128, v20, 0x7fff
	v_perm_b32 v9, v34, v141, v119
	v_perm_b32 v10, v34, v141, v120
	v_perm_b32 v11, v12, v142, v119
	v_perm_b32 v12, v12, v142, v120
	v_perm_b32 v13, v15, v143, v119
	v_perm_b32 v14, v15, v143, v120
	v_perm_b32 v15, v18, v144, v119
	v_perm_b32 v16, v18, v144, v120
	v_cndmask_b16 v147.h, 0x7fff, v19.h, s29
	v_cndmask_b16 v148.h, 0x7fff, v17.h, s30
	v_permlanex16_b32 v18, v145, s72, 0xfedcba98 op_sel:[1,0]
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v125, v155, v152
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[25:32], v[9:16], v[1:8]
	.loc	1 700 30 is_stmt 0              ; attention.py:700:30
	v_permlanex16_b32 v12, v146, s72, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v147, s72, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v148, s72, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v9, v18, v145, v119
	v_perm_b32 v10, v18, v145, v120
	v_perm_b32 v11, v12, v146, v119
	v_perm_b32 v12, v12, v146, v120
	v_perm_b32 v13, v14, v147, v119
	v_perm_b32 v14, v14, v147, v120
	v_perm_b32 v15, v16, v148, v119
	v_perm_b32 v16, v16, v148, v120
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[156:163], v[9:16], v[1:8]
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v124, 0xff800000 :: v_dual_mov_b32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v125, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 825 26 is_stmt 1              ; attention.py:825:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v52
	.loc	1 822 31                        ; attention.py:822:31
	s_mul_i32 s55, s55, s3
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s0, s43, 2
	.loc	1 822 31                        ; attention.py:822:31
	s_add_i32 s1, s54, s55
	.loc	1 833 13                        ; attention.py:833:13
	s_mov_b32 s2, exec_lo
	.loc	1 825 17                        ; attention.py:825:17
	v_dual_cndmask_b32 v9, 0xff800000, v124 :: v_dual_cndmask_b32 v2, 0, v2
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v14, 0, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v15, 0, v7 :: v_dual_mov_b32 v10, v9
	.loc	1 828 36                        ; attention.py:828:36
	v_cndmask_b32_e32 v11, 0, v125, vcc_lo
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_cndmask_b32 v12, 0, v4
.Ltmp61:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v13, 0, v5 :: v_dual_cndmask_b32 v16, 0, v8
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v3, 0, v3 :: v_dual_mov_b32 v6, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v17, v13 :: v_dual_mov_b32 v20, v16
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v4, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v7, v2 :: v_dual_mov_b32 v8, v3
.Ltmp67:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v5, v11
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v4, v9, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp71:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp73:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_dual_mov_b32 v9, v4 :: v_dual_add_f32 v2, v2, v7
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v5, v11, v5
.Ltmp76:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v3, v3, v8
	v_dual_add_f32 v1, v1, v6 :: v_dual_mov_b32 v8, v2
.Ltmp77:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v6, v5
.Ltmp79:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v10, v3
.Ltmp80:
	.loc	1 822 30 is_stmt 1              ; attention.py:822:30
	s_mul_i32 s0, s1, s0
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v9, v9, v9
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp84:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v14
.Ltmp85:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v2, v2, v8 :: v_dual_mov_b32 v7, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp86:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v4, v4, v9 :: v_dual_add_f32 v5, v5, v6
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v8, v3, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v10, v2
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp89:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_dual_mov_b32 v6, v4 :: v_dual_mov_b32 v3, v5
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp91:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v1, v1, v7
.Ltmp92:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp94:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v9, v1 :: v_dual_max_f32 v6, v6, v6
.Ltmp95:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v7, v5, v3
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v11, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v1, v1, v9
.Ltmp98:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v9, v4, v6
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v4, v8, v11
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v11, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v3, v2, v10 :: v_dual_mov_b32 v2, v1
.Ltmp102:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v10, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v6, v4
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp104:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v8, v7
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp106:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v11, v12, v11 :: v_dual_add_f32 v12, v13, v17
	v_add_f32_e32 v13, v14, v18
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v19, v15
.Ltmp109:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp111:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v14, v15, v19 :: v_dual_add_f32 v15, v16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v17, v12 :: v_dual_mov_b32 v20, v15
	v_mov_b32_e32 v16, v11
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v11, v11, v16 :: v_dual_add_f32 v16, v13, v18
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v19, v14 :: v_dual_add_f32 v18, v15, v20
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v12, v12, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v17, v14, v19 :: v_dual_mov_b32 v14, v12
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v13, v11
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v11, v11, v13
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v15, v16
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v13, v12, v14 :: v_dual_mov_b32 v12, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v17
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v14, v16, v15
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v15, v17, v19
	v_add_f32_e32 v17, v18, v20
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v18, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v16, v13 :: v_dual_mov_b32 v19, v15
	v_mov_b32_e32 v20, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp127:
	.loc	1 833 13                        ; attention.py:833:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp128:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v9, v9, v9
.Ltmp129:
	.loc	1 833 13                        ; attention.py:833:13
	s_ashr_i32 s1, s0, 31
.Ltmp130:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v8, v7, v8
.Ltmp131:
	.loc	1 833 13                        ; attention.py:833:13
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp132:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v7, v9, v10
.Ltmp133:
	.loc	1 833 13                        ; attention.py:833:13
	v_mov_b32_e32 v9, 0
	s_add_u32 s4, s52, s4
	s_addc_u32 s5, s53, s5
	.loc	1 834 13                        ; attention.py:834:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp134:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
	v_dual_add_f32 v8, v14, v18 :: v_dual_lshlrev_b32 v15, 2, v0
	v_add_f32_e32 v7, v13, v16
	v_dual_add_f32 v14, v11, v12 :: v_dual_add_f32 v13, v4, v6
	v_dual_add_f32 v12, v3, v5 :: v_dual_lshlrev_b32 v3, 5, v0
	v_dual_add_f32 v11, v1, v2 :: v_dual_and_b32 v4, 0xc0, v15
.Ltmp135:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v5, 0xe0, v51
	v_and_b32_e32 v1, 28, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v2, 32, v3
	v_add_nc_u32_e32 v3, 0, v4
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v4, 0, v5
	.loc	1 571 21                        ; attention.py:571:21
	v_and_b32_e32 v5, 63, v0
	.loc	1 835 13                        ; attention.py:835:13
	s_barrier
	v_add3_u32 v1, v3, v2, v1
	ds_store_b128 v4, v[11:14]
	ds_store_b128 v4, v[7:10] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_and_b32_e32 v0, 0xc0, v0
	.loc	1 836 17                        ; attention.py:836:17
	v_add_nc_u32_e32 v2, s0, v5
	.loc	1 838 22                        ; attention.py:838:22
	v_cmp_gt_i32_e32 vcc_lo, s43, v5
	.loc	1 835 13                        ; attention.py:835:13
	s_and_b32 s53, s53, 0xffff
	s_mov_b32 s55, 0x31027000
	v_cmp_eq_u32_e64 s0, 0, v0
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s54, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[52:55], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp136:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
		.amdhsa_next_free_vgpr 182
		.amdhsa_next_free_sgpr 77
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_vgpr, 182
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.numbered_sgpr, 77
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8940
; TotalNumSgprs: 79
; NumVgprs: 182
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 79
; NumVGPRsForWavesPerEU: 182
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
	.quad	.Ltmp11-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
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
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
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
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
        .size:           1
        .value_kind:     by_value
      - .offset:         125
        .size:           1
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     79
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     182
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
