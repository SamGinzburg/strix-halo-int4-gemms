	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
	v_lshrrev_b32_e32 v2, 3, v0
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	.loc	1 585 26                        ; attention.py:585:26
	v_and_b32_e32 v74, 0x60, v0
	v_lshlrev_b32_e32 v69, 2, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v72, 31, v0
	v_and_b32_e32 v68, 0x70, v0
	v_and_b32_e32 v73, 15, v0
	.loc	1 585 26                        ; attention.py:585:26
	v_lshlrev_b32_e32 v70, 1, v0
	.loc	1 633 49                        ; attention.py:633:49
	v_and_b32_e32 v71, 1, v0
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 609 32                        ; attention.py:609:32
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	.loc	1 584 86                        ; attention.py:584:86
	v_and_b32_e32 v1, 7, v0
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 584 86                        ; attention.py:584:86
	v_lshlrev_b32_e32 v3, 2, v1
	.loc	1 609 32                        ; attention.py:609:32
	s_cvt_u32_f32 s4, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e32 vcc_lo, s42, v3
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_i32 s6, s6, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s4, s6
	s_add_i32 s6, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 559 27                        ; attention.py:559:27
	s_mul_hi_u32 s4, s7, s6
	s_mul_i32 s9, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_lshl_b32 s16, s7, 4
	.loc	1 560 27                        ; attention.py:560:27
	s_mul_i32 s7, s7, s55
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s12, s16, s3
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v6, s16, v2
	.loc	1 584 26                        ; attention.py:584:26
	v_add_nc_u32_e32 v4, s12, v2
	.loc	1 560 27                        ; attention.py:560:27
	s_sub_i32 s54, s2, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s4, 1, v6
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[4:5], null, v4, s42, v[3:4]
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s55, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 609 32 is_stmt 1              ; attention.py:609:32
	s_xor_b32 s8, s4, s55
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v3, 0x80000000, v4, vcc_lo
	.loc	1 609 32                        ; attention.py:609:32
	s_abs_i32 s4, s4
	s_ashr_i32 s8, s8, 31
	s_mul_hi_u32 s6, s4, s6
	.loc	1 585 26                        ; attention.py:585:26
	v_lshrrev_b32_e32 v4, 2, v74
	buffer_load_b32 v3, v3, s[56:59], 0 offen
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_i32 s9, s6, s5
	s_add_i32 s10, s6, 1
	s_sub_i32 s4, s4, s9
	.loc	1 585 26                        ; attention.py:585:26
	v_xad_u32 v4, v69, v4, 0
	.loc	1 609 32                        ; attention.py:609:32
	s_sub_i32 s2, s4, s5
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s5
	s_cselect_b32 s2, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s8
	s_sub_i32 s2, s2, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 610 18                        ; attention.py:610:18
	s_mul_i32 s4, s54, s2
	.loc	1 611 33                        ; attention.py:611:33
	s_lshl_b32 s2, s2, 6
	.loc	1 610 18                        ; attention.py:610:18
	s_lshl_b32 s72, s4, 6
	.loc	1 611 33                        ; attention.py:611:33
	s_add_i32 s2, s72, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 611 18 is_stmt 0              ; attention.py:611:18
	s_min_i32 s73, s2, 0x800
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	s_cmp_ge_i32 s72, s73
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v4, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 570 21 is_stmt 1              ; attention.py:570:21
	v_or_b32_e32 v3, s16, v73
	.loc	1 590 31                        ; attention.py:590:31
	v_add_lshl_u32 v4, s12, v73, 1
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x68
	s_load_b64 s[60:61], s[0:1], 0x30
	v_dual_mov_b32 v138, 0xff800000 :: v_dual_and_b32 v5, 24, v70
	.loc	1 592 22                        ; attention.py:592:22
	v_cmp_gt_i32_e32 vcc_lo, 1, v3
	v_lshlrev_b32_e32 v14, 3, v72
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	v_lshl_or_b32 v17, v0, 5, v0
	.loc	1 590 31                        ; attention.py:590:31
	v_dual_cndmask_b32 v3, 0x80000000, v4 :: v_dual_add_nc_u32 v6, 0, v74
	.loc	1 571 21                        ; attention.py:571:21
	v_bfe_u32 v4, v0, 4, 1
	v_dual_mov_b32 v19, 0xff800000 :: v_dual_lshlrev_b32 v18, 6, v71
	.loc	1 566 23                        ; attention.py:566:23
	s_lshr_b32 s0, s0, 29
	.loc	1 585 26                        ; attention.py:585:26
	v_lshl_or_b32 v24, v73, 5, v5
	v_bfe_i32 v16, v0, 6, 1
	.loc	1 629 13                        ; attention.py:629:13
	v_sub_nc_u32_e32 v76, 0x800, v2
	v_dual_mov_b32 v21, 0x5410 :: v_dual_lshlrev_b32 v8, 3, v73
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s57, s9, 0xffff
	s_mov_b32 s56, s8
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s1, s3, s0
	.loc	1 590 31                        ; attention.py:590:31
	buffer_load_u16 v10, v3, s[56:59], 0 offen
	.loc	1 693 86                        ; attention.py:693:86
	v_lshlrev_b32_e32 v3, 3, v1
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v20, 16, v0
	v_lshlrev_b32_e32 v77, 4, v0
	v_and_b32_e32 v7, 24, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[58:59], null, s43, v2, v[3:4]
	v_mov_b32_e32 v2, v1
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s0, s43, v3
	v_mov_b32_e32 v3, v1
	v_cmp_eq_u32_e64 s2, 0, v20
	v_and_or_b32 v84, 0x39e, v17, v18
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v18, 8, v24
	v_dual_mov_b32 v22, 0x7632 :: v_dual_lshlrev_b32 v9, 2, v73
	v_lshlrev_b32_e32 v15, 2, v72
	v_lshl_or_b32 v83, v73, 8, v14
	v_dual_mov_b32 v5, v1 :: v_dual_and_b32 v14, 0x84, v16
	v_xor_b32_e32 v20, 16, v24
	.loc	1 632 32                        ; attention.py:632:32
	s_lshl_b32 s74, s3, 11
	v_cndmask_b32_e64 v16, 0x1054, v21, s2
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v21, 24, v24
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v11, 4, v68
	.loc	1 629 13                        ; attention.py:629:13
	v_sub_nc_u32_e32 v79, 0x800, v4
	v_or_b32_e32 v81, s74, v4
	v_lshl_add_u32 v85, v73, 1, v6
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v6, v1
	v_xor_b32_e32 v80, v77, v7
	v_dual_mov_b32 v7, v1 :: v_dual_add_nc_u32 v86, 0, v24
	v_dual_mov_b32 v25, v1 :: v_dual_add_nc_u32 v102, 0, v18
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v12, 4, v0
	v_lshl_or_b32 v26, v68, 4, v8
	v_mov_b32_e32 v8, v1
	v_xor_b32_e32 v14, v14, v15
	v_cndmask_b32_e64 v22, 0x3276, v22, s2
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v103, 0, v20
	v_add_nc_u32_e32 v104, 0, v21
	v_lshrrev_b32_e32 v13, 1, v68
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v23, s16, v11
	v_lshl_or_b32 v16, v16, 8, v16
	v_and_or_b32 v105, v12, 2, v14
	v_lshl_or_b32 v14, v22, 8, v22
	v_or3_b32 v82, s74, v12, 62
	v_or_b32_e32 v17, 8, v23
	v_xor_b32_e32 v90, v26, v13
	v_xor_b32_e32 v13, 8, v83
	v_and_b32_e32 v12, 0x540054, v16
	v_and_b32_e32 v14, 0x760076, v14
	.loc	1 629 13                        ; attention.py:629:13
	v_sub_nc_u32_e32 v78, 0x800, v9
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s8, s1, -8
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s9, s1, 3
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s1, 1, v23
	v_xor_b32_e32 v23, 8, v80
	v_xor_b32_e32 v24, 16, v83
	v_xor_b32_e32 v26, 24, v83
	v_xor_b32_e32 v27, 32, v83
	v_xor_b32_e32 v28, 40, v83
	v_xor_b32_e32 v29, 48, v83
	v_xor_b32_e32 v30, 56, v83
	v_xor_b32_e32 v31, 64, v83
	v_xor_b32_e32 v32, 0x48, v83
	v_xor_b32_e32 v33, 0x50, v83
	v_xor_b32_e32 v34, 0x58, v83
	v_xor_b32_e32 v35, 0x60, v83
	v_xor_b32_e32 v36, 0x68, v83
	v_xor_b32_e32 v37, 0x70, v83
	v_xor_b32_e32 v38, 0x78, v83
	v_xor_b32_e32 v15, 4, v84
	v_xor_b32_e32 v39, 8, v84
	v_xor_b32_e32 v40, 12, v84
	v_xor_b32_e32 v41, 16, v84
	v_xor_b32_e32 v42, 20, v84
	v_xor_b32_e32 v43, 24, v84
	v_xor_b32_e32 v44, 28, v84
	v_cmp_gt_i32_e64 s2, 1, v17
	v_xor_b32_e32 v17, 0x840, v90
	v_add_nc_u32_e32 v107, 0, v13
	v_xor_b32_e32 v13, 0x318, v105
	v_lshl_or_b32 v12, v12, 4, v12
	v_lshl_or_b32 v14, v14, 4, v14
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s8, s3, s8
	.loc	1 675 27                        ; attention.py:675:27
	s_mul_i32 s9, s13, s9
	.loc	1 676 27                        ; attention.py:676:27
	s_mul_i32 s8, s14, s8
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v75, 1, v0
	v_dual_mov_b32 v140, 0xff800000 :: v_dual_lshlrev_b32 v57, 4, v71
	v_or_b32_e32 v87, 34, v81
	v_or_b32_e32 v88, 36, v81
	v_or_b32_e32 v89, 38, v81
	v_or_b32_e32 v91, 40, v81
	v_or_b32_e32 v92, 42, v81
	v_or_b32_e32 v93, 44, v81
	v_or_b32_e32 v94, 46, v81
	v_or_b32_e32 v95, 48, v81
	v_or_b32_e32 v96, 50, v81
	v_or_b32_e32 v97, 52, v81
	v_or_b32_e32 v98, 54, v81
	v_or_b32_e32 v99, 56, v81
	v_or_b32_e32 v100, 58, v81
	v_or_b32_e32 v101, 60, v81
	v_add_nc_u32_e32 v106, 0, v23
	v_add_nc_u32_e32 v108, 0, v24
	v_add_nc_u32_e32 v109, 0, v26
	v_add_nc_u32_e32 v110, 0, v27
	v_add_nc_u32_e32 v111, 0, v28
	v_add_nc_u32_e32 v112, 0, v29
	v_add_nc_u32_e32 v113, 0, v30
	v_add_nc_u32_e32 v114, 0, v31
	v_add_nc_u32_e32 v115, 0, v32
	v_add_nc_u32_e32 v116, 0, v33
	v_add_nc_u32_e32 v117, 0, v34
	v_add_nc_u32_e32 v118, 0, v35
	v_add_nc_u32_e32 v119, 0, v36
	v_add_nc_u32_e32 v120, 0, v37
	v_add_nc_u32_e32 v121, 0, v38
	v_add_nc_u32_e32 v122, 0, v15
	v_add_nc_u32_e32 v123, 0, v39
	v_add_nc_u32_e32 v124, 0, v40
	v_add_nc_u32_e32 v125, 0, v41
	v_add_nc_u32_e32 v126, 0, v42
	v_add_nc_u32_e32 v127, 0, v43
	v_add_nc_u32_e32 v128, 0, v44
	v_add_nc_u32_e32 v129, 0, v17
	v_and_b32_e32 v130, 0x5040504, v12
	v_add_nc_u32_e32 v133, 0, v13
	v_and_b32_e32 v134, 0x7060706, v14
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s79, s12, 0x3fb8aa3b
	.loc	1 674 25                        ; attention.py:674:25
	s_mul_i32 s16, s16, s15
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_add_i32 s80, s8, s9
	s_lshl_b32 s75, s43, 4
	s_lshl_b32 s76, s43, 5
	s_mul_i32 s77, s43, 48
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	s_mov_b32 s78, 0x76543210
	s_mov_b32 s66, s58
	s_mov_b32 s67, s59
	s_mov_b32 s62, s58
	s_mov_b32 s63, s59
	s_mov_b32 s70, s58
	s_mov_b32 s71, s59
	s_and_b32 s61, s61, 0xffff
	s_and_b32 s69, s7, 0xffff
	s_mov_b32 s64, s10
	s_mov_b32 s68, s6
	s_mov_b32 s56, s4
	s_mov_b32 s57, s5
	s_mov_b32 s65, s11
	s_add_i32 s80, s80, s16
	.loc	1 636 31                        ; attention.py:636:31
	v_cmp_gt_i32_e32 vcc_lo, s42, v57
	.loc	1 629 13                        ; attention.py:629:13
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[59:60], null, s15, v11, v[9:10]
	.loc	1 585 26                        ; attention.py:585:26
	ds_load_b64 v[60:61], v86
	ds_load_b64 v[62:63], v102
	ds_load_b64 v[64:65], v103
	ds_load_b64 v[66:67], v104
	v_xor_b32_e32 v9, 0x210, v105
	v_xor_b32_e32 v11, 0x108, v105
	.loc	1 590 31                        ; attention.py:590:31
	v_lshlrev_b32_e32 v135, 16, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v131, 0, v9
	v_add_nc_u32_e32 v132, 0, v11
	.loc	1 629 13                        ; attention.py:629:13
	v_lshl_add_u32 v136, s15, 3, v59
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 633 32                        ; attention.py:633:32
	s_add_i32 s6, s72, s74
	.loc	1 629 13                        ; attention.py:629:13
	v_sub_nc_u32_e32 v17, 0x800, v75
	.loc	1 633 32                        ; attention.py:633:32
	v_or_b32_e32 v52, s6, v75
	.loc	1 674 25                        ; attention.py:674:25
	s_add_i32 s5, s80, s72
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_lt_i32_e64 s4, s72, v78
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v54, s5, v59, 2
	v_add_lshl_u32 v55, s5, v136, 2
	.loc	1 633 32                        ; attention.py:633:32
	v_mad_u64_u32 v[52:53], null, v52, s42, v[57:58]
	.loc	1 636 73                        ; attention.py:636:73
	v_cmp_lt_i32_e64 s5, s72, v17
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s7, s1, s4
	s_and_b32 s4, s2, s4
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v17, 0x80000000, v54, s7
	v_cndmask_b32_e64 v182, 0x80000000, v55, s4
	.loc	1 636 30                        ; attention.py:636:30
	s_and_b32 s5, vcc_lo, s5
	v_dual_mov_b32 v21, v140 :: v_dual_add_nc_u32 v18, 0, v80
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e64 v52, 0x80000000, v52, s5
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v9, s44 :: v_dual_mov_b32 v12, s47
	v_dual_mov_b32 v137, v25 :: v_dual_mov_b32 v10, s45
	.loc	1 634 32                        ; attention.py:634:32
	buffer_load_b128 v[52:55], v52, s[56:59], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v11, s46 :: v_dual_mov_b32 v14, s49
	v_dual_mov_b32 v13, s48 :: v_dual_mov_b32 v16, s51
	v_mov_b32_e32 v15, s50
	v_or_b32_e32 v22, 2, v81
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v20, s72, v81, 1
	v_or_b32_e32 v23, 4, v81
	.loc	1 651 30                        ; attention.py:651:30
	v_cmp_lt_i32_e64 s5, s72, v79
	v_or_b32_e32 v24, 6, v81
	v_or_b32_e32 v26, 8, v81
	v_or_b32_e32 v28, 10, v81
	v_or_b32_e32 v30, 12, v81
	v_or_b32_e32 v33, 14, v81
	v_or_b32_e32 v25, 16, v81
	v_or_b32_e32 v27, 18, v81
	v_or_b32_e32 v29, 20, v81
	v_or_b32_e32 v31, 22, v81
	v_or_b32_e32 v32, 24, v81
	v_or_b32_e32 v34, 26, v81
	v_or_b32_e32 v35, 28, v81
	v_or_b32_e32 v36, 30, v81
	v_or_b32_e32 v37, 32, v81
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v25, v25, s72, 1
	v_add_lshl_u32 v27, v27, s72, 1
	v_add_lshl_u32 v29, v29, s72, 1
	v_add_lshl_u32 v31, v31, s72, 1
	v_add_lshl_u32 v38, v87, s72, 1
	v_add_lshl_u32 v39, v88, s72, 1
	v_add_lshl_u32 v40, v89, s72, 1
	v_add_lshl_u32 v41, v91, s72, 1
	v_add_lshl_u32 v42, v92, s72, 1
	v_add_lshl_u32 v43, v93, s72, 1
	v_add_lshl_u32 v44, v94, s72, 1
	v_add_lshl_u32 v45, v95, s72, 1
	v_add_lshl_u32 v46, v96, s72, 1
	v_add_lshl_u32 v47, v97, s72, 1
	v_add_lshl_u32 v48, v98, s72, 1
	v_add_lshl_u32 v49, v99, s72, 1
	v_add_lshl_u32 v50, v100, s72, 1
	v_add_lshl_u32 v51, v101, s72, 1
	v_add_lshl_u32 v32, v32, s72, 1
	v_cndmask_b32_e64 v25, 0x80000000, v25, s5
	v_cndmask_b32_e64 v27, 0x80000000, v27, s5
	v_cndmask_b32_e64 v29, 0x80000000, v29, s5
	v_cndmask_b32_e64 v31, 0x80000000, v31, s5
	v_cndmask_b32_e64 v32, 0x80000000, v32, s5
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s41, 0xff800000, v19
	.loc	1 685 25                        ; attention.py:685:25
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v18, v[52:53]
	ds_store_b64 v106, v[54:55]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[52:55], v86 offset1:1
	ds_load_2addr_stride64_b64 v[163:166], v86 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[178:181], v102 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[139:146], v[52:53], v[60:61], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[147:154], v[54:55], v[60:61], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[155:162], v[163:164], v[60:61], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[170:177], v[165:166], v[60:61], v[9:16] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[9:12], v102 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[13:16], v103 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[139:146], v[178:179], v[62:63], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[147:154], v[180:181], v[62:63], v[147:154] neg_lo:[1,1,0]
	.loc	1 683 36                        ; attention.py:683:36
	buffer_load_b128 v[52:55], v17, s[60:63], 0 offen
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[155:162], v[9:10], v[62:63], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[170:177], v[11:12], v[62:63], v[170:177] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[9:12], v103 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[139:146], v[13:14], v[64:65], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[147:154], v[15:16], v[64:65], v[147:154] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[13:16], v104 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[155:162], v[9:10], v[64:65], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[170:177], v[11:12], v[64:65], v[170:177] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[9:12], v104 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[147:154], v[15:16], v[66:67], v[147:154] neg_lo:[1,1,0]
	.loc	1 683 36                        ; attention.py:683:36
	buffer_load_b128 v[15:18], v182, s[60:63], 0 offen
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[139:146], v[13:14], v[66:67], v[139:146] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v169, v139
	v_cvt_f32_i32_e32 v139, v143
	v_cvt_f32_i32_e32 v143, v147
	v_cvt_f32_i32_e32 v147, v151
	v_cvt_f32_i32_e32 v168, v140
	v_cvt_f32_i32_e32 v167, v141
	v_cvt_f32_i32_e32 v56, v142
	v_cvt_f32_i32_e32 v140, v144
	v_cvt_f32_i32_e32 v141, v145
	v_cvt_f32_i32_e32 v142, v146
	v_cvt_f32_i32_e32 v144, v148
	v_cvt_f32_i32_e32 v145, v149
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[170:177], v[11:12], v[66:67], v[170:177] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[155:162], v[9:10], v[66:67], v[155:162] neg_lo:[1,1,0]
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v146, v150
	v_cvt_f32_i32_e32 v148, v152
	v_cvt_f32_i32_e32 v149, v153
	v_cvt_f32_i32_e32 v150, v154
	v_cvt_f32_i32_e32 v151, v155
	v_cvt_f32_i32_e32 v155, v159
	v_cvt_f32_i32_e32 v159, v170
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v170, s72, v82, 1
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v152, v156
	v_cvt_f32_i32_e32 v153, v157
	v_cvt_f32_i32_e32 v154, v158
	v_cvt_f32_i32_e32 v156, v160
	v_cvt_f32_i32_e32 v157, v161
	v_cvt_f32_i32_e32 v158, v162
	v_cvt_f32_i32_e32 v160, v171
	v_cvt_f32_i32_e32 v161, v172
	v_cvt_f32_i32_e32 v162, v173
	v_cvt_f32_i32_e32 v163, v174
	v_cvt_f32_i32_e32 v164, v175
	v_cvt_f32_i32_e32 v165, v176
	v_cvt_f32_i32_e32 v166, v177
	v_mul_f32_e32 v143, v135, v143
	v_mul_f32_e32 v139, v135, v139
	v_mul_f32_e32 v141, v135, v141
	v_mul_f32_e32 v145, v135, v145
	v_mul_f32_e32 v147, v135, v147
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v10, 0xff800000, v55, s7
	v_cndmask_b32_e64 v9, 0xff800000, v53, s7
	v_cndmask_b32_e64 v14, 0xff800000, v54, s7
	v_cndmask_b32_e64 v13, 0xff800000, v52, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s13, 0xff800000, v10
	v_cmp_neq_f32_e64 s11, 0xff800000, v9
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v12, 0xff800000, v18, s4
	v_cndmask_b32_e64 v11, 0xff800000, v16, s4
	v_cndmask_b32_e64 v16, 0xff800000, v17, s4
	v_mad_u64_u32 v[17:18], null, s6, s43, v[58:59]
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v18, v22, s72, 1
	v_add_lshl_u32 v22, v24, s72, 1
	v_add_lshl_u32 v24, v28, s72, 1
	v_add_lshl_u32 v28, v33, s72, 1
	v_add_lshl_u32 v33, v34, s72, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s5
	.loc	1 694 30                        ; attention.py:694:30
	v_lshlrev_b32_e32 v52, 1, v17
	v_add_lshl_u32 v53, v17, s75, 1
	v_add_lshl_u32 v54, v17, s76, 1
	v_add_lshl_u32 v55, v17, s77, 1
	.loc	1 649 37                        ; attention.py:649:37
	v_cndmask_b32_e64 v17, 0x80000000, v20, s5
	v_add_lshl_u32 v20, v23, s72, 1
	v_add_lshl_u32 v23, v26, s72, 1
	v_add_lshl_u32 v26, v30, s72, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	v_cndmask_b32_e64 v24, 0x80000000, v24, s5
	v_cndmask_b32_e64 v20, 0x80000000, v20, s5
	v_cndmask_b32_e64 v23, 0x80000000, v23, s5
	v_cndmask_b32_e64 v26, 0x80000000, v26, s5
	v_cndmask_b32_e64 v28, 0x80000000, v28, s5
	s_clause 0x7
	buffer_load_u16 v17, v17, s[64:67], 0 offen
	buffer_load_u16 v18, v18, s[64:67], 0 offen
	buffer_load_u16 v20, v20, s[64:67], 0 offen
	buffer_load_u16 v30, v22, s[64:67], 0 offen
	buffer_load_u16 v23, v23, s[64:67], 0 offen
	buffer_load_u16 v24, v24, s[64:67], 0 offen
	buffer_load_u16 v26, v26, s[64:67], 0 offen
	buffer_load_u16 v28, v28, s[64:67], 0 offen
	v_add_lshl_u32 v34, v35, s72, 1
	v_add_lshl_u32 v35, v36, s72, 1
	v_add_lshl_u32 v36, v37, s72, 1
	v_cndmask_b32_e64 v37, 0x80000000, v38, s5
	v_cndmask_b32_e64 v38, 0x80000000, v39, s5
	v_cndmask_b32_e64 v39, 0x80000000, v40, s5
	v_cndmask_b32_e64 v40, 0x80000000, v41, s5
	v_cndmask_b32_e64 v41, 0x80000000, v42, s5
	v_cndmask_b32_e64 v42, 0x80000000, v43, s5
	v_cndmask_b32_e64 v43, 0x80000000, v44, s5
	v_cndmask_b32_e64 v44, 0x80000000, v45, s5
	v_cndmask_b32_e64 v45, 0x80000000, v46, s5
	v_cndmask_b32_e64 v46, 0x80000000, v47, s5
	v_cndmask_b32_e64 v47, 0x80000000, v48, s5
	v_cndmask_b32_e64 v48, 0x80000000, v49, s5
	v_cndmask_b32_e64 v49, 0x80000000, v50, s5
	v_cndmask_b32_e64 v50, 0x80000000, v51, s5
	v_cndmask_b32_e64 v51, 0x80000000, v170, s5
	v_cndmask_b32_e64 v33, 0x80000000, v33, s5
	v_cndmask_b32_e64 v34, 0x80000000, v34, s5
	v_cndmask_b32_e64 v35, 0x80000000, v35, s5
	v_cndmask_b32_e64 v36, 0x80000000, v36, s5
	s_clause 0x17
	buffer_load_u16 v25, v25, s[64:67], 0 offen
	buffer_load_u16 v27, v27, s[64:67], 0 offen
	buffer_load_u16 v29, v29, s[64:67], 0 offen
	buffer_load_u16 v31, v31, s[64:67], 0 offen
	buffer_load_u16 v32, v32, s[64:67], 0 offen
	buffer_load_u16 v33, v33, s[64:67], 0 offen
	buffer_load_u16 v34, v34, s[64:67], 0 offen
	buffer_load_u16 v35, v35, s[64:67], 0 offen
	buffer_load_u16 v36, v36, s[64:67], 0 offen
	buffer_load_u16 v37, v37, s[64:67], 0 offen
	buffer_load_u16 v38, v38, s[64:67], 0 offen
	buffer_load_u16 v39, v39, s[64:67], 0 offen
	buffer_load_u16 v40, v40, s[64:67], 0 offen
	buffer_load_u16 v41, v41, s[64:67], 0 offen
	buffer_load_u16 v42, v42, s[64:67], 0 offen
	buffer_load_u16 v43, v43, s[64:67], 0 offen
	buffer_load_u16 v44, v44, s[64:67], 0 offen
	buffer_load_u16 v45, v45, s[64:67], 0 offen
	buffer_load_u16 v46, v46, s[64:67], 0 offen
	buffer_load_u16 v47, v47, s[64:67], 0 offen
	buffer_load_u16 v48, v48, s[64:67], 0 offen
	buffer_load_u16 v49, v49, s[64:67], 0 offen
	buffer_load_u16 v50, v50, s[64:67], 0 offen
	buffer_load_u16 v51, v51, s[64:67], 0 offen
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v22, v135, v169
	v_mul_f32_e32 v56, v135, v56
	v_mul_f32_e32 v140, v135, v140
	v_mul_f32_e32 v142, v135, v142
	v_mul_f32_e32 v144, v135, v144
	v_mul_f32_e32 v146, v135, v146
	v_mul_f32_e32 v148, v135, v148
	v_mul_f32_e32 v149, v135, v149
	v_mul_f32_e32 v150, v135, v150
	v_mul_f32_e32 v151, v135, v151
	v_mul_f32_e32 v169, v135, v153
	v_mul_f32_e32 v170, v135, v154
	v_mul_f32_e32 v171, v135, v155
	v_mul_f32_e32 v172, v135, v156
	v_mul_f32_e32 v173, v135, v157
	v_mul_f32_e32 v174, v135, v158
	v_mul_f32_e32 v175, v135, v159
	v_mul_f32_e32 v176, v135, v160
	v_mul_f32_e32 v177, v135, v161
	v_mul_f32_e32 v178, v135, v162
	v_mul_f32_e32 v180, v135, v163
	v_mul_f32_e32 v181, v135, v164
	v_mul_f32_e32 v165, v135, v165
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v15, 0xff800000, v15, s4
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s6, 0xff800000, v14
	v_cmp_neq_f32_e64 s5, 0xff800000, v13
	v_cmp_neq_f32_e64 s8, 0xff800000, v15
	v_cmp_neq_f32_e64 s9, 0xff800000, v16
	v_cmp_neq_f32_e64 s10, 0xff800000, v11
	v_cmp_neq_f32_e64 s12, 0xff800000, v12
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s6, s7, s6
	s_and_b32 s8, s4, s8
	s_and_b32 s9, s4, s9
	s_and_b32 s10, s4, s10
	s_and_b32 s12, s4, s12
	s_and_b32 s4, s7, s5
	s_and_b32 s5, s7, s11
	s_and_b32 s7, s7, s13
	.loc	1 649 37 is_stmt 1              ; attention.py:649:37
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v17, 16, v17
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v18, 16, v18
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v20, 16, v20
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v30, 16, v30
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v179, v22, v17 :: v_dual_mul_f32 v22, v135, v168
	.loc	1 684 35                        ; attention.py:684:35
	v_add_nc_u32_e32 v17, 0, v90
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v24, 16, v24
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v26, 16, v26
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v168, v22, v18
	s_waitcnt vmcnt(23)
	v_dual_mul_f32 v22, v135, v167 :: v_dual_lshlrev_b32 v25, 16, v25
	v_dual_mul_f32 v167, v135, v152 :: v_dual_add_nc_u32 v18, 0, v83
	s_waitcnt vmcnt(22)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v22, v22, v20 :: v_dual_lshlrev_b32 v27, 16, v27
	.loc	1 685 25                        ; attention.py:685:25
	v_add_nc_u32_e32 v20, 0, v105
	.loc	1 654 30                        ; attention.py:654:30
	s_waitcnt vmcnt(21)
	v_dual_mul_f32 v166, v135, v166 :: v_dual_lshlrev_b32 v29, 16, v29
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v31, 16, v31
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v32, 16, v32
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v33, 16, v33
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v34, 16, v34
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v35, 16, v35
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v37, 16, v37
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v38, 16, v38
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v39, 16, v39
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v40, 16, v40
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v41, 16, v41
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v42, 16, v42
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v43, 16, v43
	.loc	1 654 30                        ; attention.py:654:30
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v163, v139, v23 :: v_dual_lshlrev_b32 v44, 16, v44
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v45, 16, v45
	.loc	1 654 30                        ; attention.py:654:30
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v159, v143, v25 :: v_dual_lshlrev_b32 v46, 16, v46
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v47, 16, v47
	.loc	1 654 30                        ; attention.py:654:30
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v161, v141, v26 :: v_dual_lshlrev_b32 v48, 16, v48
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v155, v147, v32 :: v_dual_lshlrev_b32 v50, 16, v50
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v153, v149, v34 :: v_dual_lshlrev_b32 v182, 16, v51
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v36, 16, v36
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v164, v56, v30 :: v_dual_lshlrev_b32 v49, 16, v49
	v_dual_mul_f32 v162, v140, v24 :: v_dual_mul_f32 v149, v169, v38
	v_dual_mul_f32 v160, v142, v28 :: v_dual_mul_f32 v141, v173, v42
	v_dual_mul_f32 v158, v144, v27 :: v_dual_mul_f32 v139, v171, v40
	v_dual_mul_f32 v157, v145, v29 :: v_dual_mul_f32 v156, v146, v31
	v_dual_mul_f32 v143, v175, v44 :: v_dual_mul_f32 v154, v148, v33
	v_dual_mul_f32 v145, v177, v46 :: v_dual_mul_f32 v152, v150, v35
	v_dual_mul_f32 v147, v180, v48 :: v_dual_mul_f32 v150, v167, v37
	v_dual_mul_f32 v51, v165, v50 :: v_dual_mul_f32 v56, v170, v39
	v_mul_f32_e32 v140, v172, v41
	v_mul_f32_e32 v142, v174, v43
	v_mul_f32_e32 v144, v176, v45
	v_mul_f32_e32 v146, v178, v47
	v_mul_f32_e32 v50, v166, v182
	.loc	1 684 35                        ; attention.py:684:35
	ds_store_2addr_b64 v17, v[13:14], v[9:10] offset1:16
	ds_store_2addr_b64 v129, v[15:16], v[11:12] offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[23:24], v18
	ds_load_b64 v[25:26], v107
	ds_load_b64 v[27:28], v108
	ds_load_b64 v[29:30], v109
	ds_load_b64 v[31:32], v110
	ds_load_b64 v[39:40], v111
	ds_load_b64 v[41:42], v112
	ds_load_b64 v[43:44], v113
	ds_load_b64 v[45:46], v114
	ds_load_b64 v[47:48], v115
	ds_load_b64 v[165:166], v116
	ds_load_b64 v[169:170], v117
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v9, 0, 1, s6
	v_cndmask_b32_e64 v10, 0, 1, s4
	v_cndmask_b32_e64 v167, 0, 1, s7
	v_cndmask_b32_e64 v15, 0, 1, s5
	.loc	1 684 35                        ; attention.py:684:35
	ds_load_b64 v[171:172], v118
	ds_load_b64 v[173:174], v119
	ds_load_b64 v[175:176], v120
	ds_load_b64 v[177:178], v121
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v9.l, 8, v9.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v148, v181, v49
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v11, 0x3fb8aa3b, v24 :: v_dual_mul_f32 v34, 0x3fb8aa3b, v23
	v_mul_f32_e32 v13, 0x3fb8aa3b, v28
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v9.l, v10.l, v9.l
	v_mov_b16_e64 v10.l, v167.l
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v35, 0x3fb8aa3b, v25
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v167, 0, 1, s12
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v25, 0x3fb8aa3b, v44 :: v_dual_mul_f32 v12, 0x3fb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v9.h, 8, v10.l
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v28, 0x3fb8aa3b, v166 :: v_dual_fmac_f32 v11, s79, v168
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v166, 0, 1, s9
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v44, 0x3fb8aa3b, v165
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v165, 0, 1, s8
	v_or_b16 v9.h, v15.l, v9.h
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v26, 0x3fb8aa3b, v46
	.loc	1 685 25                        ; attention.py:685:25
	v_mov_b16_e64 v10.l, v166.l
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v24, 0x3fb8aa3b, v42 :: v_dual_mul_f32 v49, 0x3fb8aa3b, v177
	.loc	1 685 25                        ; attention.py:685:25
	v_mov_b16_e64 v15.l, v165.l
	v_cndmask_b32_e64 v165, 0, 1, s10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v10.l, 8, v10.l
	s_barrier
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v24, s79, v154 :: v_dual_fmac_f32 v49, s79, v51
	.loc	1 696 27                        ; attention.py:696:27
	v_cmp_lt_i32_e64 s8, s72, v76
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v10.l, v15.l, v10.l
	v_mov_b16_e64 v15.l, v167.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v151, v151, v36 :: v_dual_mul_f32 v42, 0x3fb8aa3b, v45
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v33, 0x3fb8aa3b, v178
	.loc	1 696 26                        ; attention.py:696:26
	s_and_b32 s8, s0, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v10.h, 8, v15.l
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v23, 0x3fb8aa3b, v40 :: v_dual_mul_f32 v40, 0x3fb8aa3b, v41
	v_mul_f32_e32 v41, 0x3fb8aa3b, v43
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_dual_fmac_f32 v42, s79, v151 :: v_dual_fmac_f32 v33, s79, v50
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	v_or_b16 v10.h, v165.l, v10.h
	v_add_nc_u32_e32 v165, 0, v84
	ds_store_b16 v20, v9
	ds_store_b16_d16_hi v131, v9
	ds_store_b16 v132, v10
	ds_store_b16_d16_hi v133, v10
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16_hi v9, v122 offset:32
	ds_load_u16_d16 v10, v165
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v10, v123 offset:32
	ds_load_u16_d16 v20, v122
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v20, v124
	ds_load_u16_d16 v51, v123
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v51, v124 offset:32
	ds_load_u16_d16 v9, v165 offset:32
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v182, 0x80000000, v52, s8
	v_cndmask_b32_e64 v183, 0x80000000, v53, s8
	v_cndmask_b32_e64 v184, 0x80000000, v54, s8
	.loc	1 685 25                        ; attention.py:685:25
	ds_load_u16_d16 v50, v125
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v50, v125 offset:32
	ds_load_u16_d16 v52, v126
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v52, v126 offset:32
	ds_load_u16_d16 v53, v127
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v53, v127 offset:32
	ds_load_u16_d16 v54, v128
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v54, v128 offset:32
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v36, 0x3fb8aa3b, v27 :: v_dual_mul_f32 v27, 0x3fb8aa3b, v48
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v185, 0x80000000, v55, s8
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v46, 0x3fb8aa3b, v171 :: v_dual_fmac_f32 v35, s79, v22
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v22, v21, v21 :: v_dual_fmac_f32 v27, s79, v56
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v37, 0x3fb8aa3b, v29
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v55.h, 1, v9.h
	v_lshrrev_b16 v9.h, 8, v9.h
	v_and_b16 v56.l, 1, v10.h
	v_lshrrev_b16 v10.h, 8, v10.h
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v14, 0x3fb8aa3b, v30 :: v_dual_mul_f32 v45, 0x3fb8aa3b, v169
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s9, 1, v55.h
	v_and_b16 v55.l, 1, v9.l
	v_cmp_eq_u16_e64 s10, 1, v56.l
	v_and_b16 v56.l, 1, v50.l
	v_and_b16 v55.h, 1, v51.h
	v_lshrrev_b16 v50.l, 8, v50.l
	v_cmp_eq_u16_e64 s8, 1, v55.l
	v_and_b16 v55.l, 1, v20.h
	v_cmp_eq_u16_e64 s17, 1, v56.l
	v_and_b16 v56.l, 1, v52.h
	v_cmp_eq_u16_e64 s11, 1, v55.h
	v_and_b16 v55.h, 1, v52.l
	v_cmp_eq_u16_e64 s16, 1, v55.l
	v_and_b16 v55.l, 1, v50.h
	v_cmp_eq_u16_e64 s13, 1, v56.l
	v_and_b16 v56.l, 1, v53.h
	v_cmp_eq_u16_e64 s18, 1, v55.h
	v_lshrrev_b16 v55.h, 8, v10.l
	v_cmp_eq_u16_e64 s12, 1, v55.l
	v_and_b16 v55.l, 1, v53.l
	v_cmp_eq_u16_e64 s14, 1, v56.l
	s_waitcnt lgkmcnt(0)
	v_and_b16 v56.l, 1, v54.h
	v_lshrrev_b16 v52.l, 8, v52.l
	v_lshrrev_b16 v53.l, 8, v53.l
	v_cmp_eq_u16_e64 s19, 1, v55.l
	v_and_b16 v55.l, 1, v54.l
	v_lshrrev_b16 v54.h, 8, v54.h
	v_cmp_eq_u16_e64 s15, 1, v56.l
	v_lshrrev_b16 v56.l, 8, v51.l
	v_lshrrev_b16 v20.h, 8, v20.h
	v_cmp_eq_u16_e64 s20, 1, v55.l
	v_lshrrev_b16 v55.l, 8, v20.l
	v_and_b16 v10.l, 1, v10.l
	v_lshrrev_b16 v9.l, 8, v9.l
	v_and_b16 v20.l, 1, v20.l
	v_and_b16 v51.l, 1, v51.l
	v_lshrrev_b16 v51.h, 8, v51.h
	v_lshrrev_b16 v50.h, 8, v50.h
	v_lshrrev_b16 v52.h, 8, v52.h
	v_lshrrev_b16 v53.h, 8, v53.h
	v_lshrrev_b16 v54.l, 8, v54.l
	v_and_b16 v55.h, 1, v55.h
	v_and_b16 v52.l, 1, v52.l
	v_and_b16 v53.l, 1, v53.l
	v_and_b16 v54.h, 1, v54.h
	v_and_b16 v55.l, 1, v55.l
	v_and_b16 v56.l, 1, v56.l
	v_and_b16 v20.h, 1, v20.h
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v38, 0x3fb8aa3b, v31 :: v_dual_mul_f32 v29, 0x3fb8aa3b, v170
	v_dual_mul_f32 v16, 0x3fb8aa3b, v32 :: v_dual_mul_f32 v39, 0x3fb8aa3b, v39
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v50.l, 1, v50.l
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v43, 0x3fb8aa3b, v47 :: v_dual_mul_f32 v30, 0x3fb8aa3b, v172
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_fmac_f32_e32 v13, s79, v162
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v47, 0x3fb8aa3b, v173
	v_dual_mul_f32 v31, 0x3fb8aa3b, v174 :: v_dual_mul_f32 v48, 0x3fb8aa3b, v175
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v37, s79, v161 :: v_dual_mul_f32 v32, 0x3fb8aa3b, v176
	v_dual_fmac_f32 v39, s79, v157 :: v_dual_fmac_f32 v34, s79, v179
	v_dual_fmac_f32 v23, s79, v156 :: v_dual_fmac_f32 v36, s79, v163
	v_fmac_f32_e32 v43, s79, v149
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	v_and_b16 v9.l, 1, v9.l
	v_and_b16 v9.h, 1, v9.h
	v_and_b16 v10.h, 1, v10.h
	v_and_b16 v51.h, 1, v51.h
	v_and_b16 v50.h, 1, v50.h
	v_and_b16 v52.h, 1, v52.h
	v_and_b16 v53.h, 1, v53.h
	v_and_b16 v54.l, 1, v54.l
	v_cmp_eq_u16_e64 s21, 1, v10.l
	v_cmp_eq_u16_e64 s22, 1, v20.l
	v_cmp_eq_u16_e64 s23, 1, v51.l
	v_cmp_eq_u16_e64 s24, 1, v55.h
	v_cmp_eq_u16_e64 s29, 1, v52.l
	v_cmp_eq_u16_e64 s30, 1, v53.l
	v_cmp_eq_u16_e64 s40, 1, v54.h
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v12, s79, v164 :: v_dual_fmac_f32 v41, s79, v153
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s25, 1, v55.l
	v_cmp_eq_u16_e64 s26, 1, v56.l
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v14, s79, v160 :: v_dual_fmac_f32 v45, s79, v141
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s27, 1, v20.h
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v38, s79, v159 :: v_dual_fmac_f32 v29, s79, v142
	v_dual_fmac_f32 v16, s79, v158 :: v_dual_fmac_f32 v47, s79, v145
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s28, 1, v50.l
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v15, v138, v138 :: v_dual_add_nc_u32 v166, 0, v77
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v25, s79, v152 :: v_dual_fmac_f32 v40, s79, v155
	v_dual_fmac_f32 v31, s79, v146 :: v_dual_fmac_f32 v28, s79, v140
	v_fmac_f32_e32 v46, s79, v143
	v_fmac_f32_e32 v48, s79, v147
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v34, 0xff800000, v34, s21
	v_cndmask_b32_e64 v140, 0xff800000, v35, s22
	v_cndmask_b32_e64 v36, 0xff800000, v36, s23
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v30, s79, v144
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v142, 0xff800000, v37, s16
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v32, s79, v148
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v35, 0xff800000, v11, s24
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v26, s79, v150
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v145, 0xff800000, v23, s29
	v_cndmask_b32_e64 v23, 0xff800000, v49, s15
	v_cndmask_b32_e64 v147, 0xff800000, v24, s30
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s31, 1, v54.l
	v_cmp_eq_u16_e64 s33, 1, v9.l
	v_cmp_eq_u16_e64 s34, 1, v9.h
	v_cmp_eq_u16_e64 s35, 1, v10.h
	v_cmp_eq_u16_e64 s36, 1, v51.h
	v_cmp_eq_u16_e64 s37, 1, v50.h
	v_cmp_eq_u16_e64 s38, 1, v52.h
	v_cmp_eq_u16_e64 s39, 1, v53.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v24, 0xff800000, v33, s40
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v44, s79, v139
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v141, 0xff800000, v12, s25
	v_cndmask_b32_e64 v37, 0xff800000, v13, s26
	v_cndmask_b32_e64 v143, 0xff800000, v14, s27
	v_cndmask_b32_e64 v38, 0xff800000, v38, s17
	v_cndmask_b32_e64 v144, 0xff800000, v39, s18
	v_cndmask_b32_e64 v39, 0xff800000, v16, s28
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v146, 0xff800000, v40, s19
	v_cndmask_b32_e64 v148, 0xff800000, v41, s20
	v_cndmask_b32_e64 v150, 0xff800000, v42, s8
	v_cndmask_b32_e64 v152, 0xff800000, v43, s9
	v_cndmask_b32_e64 v156, 0xff800000, v45, s11
	v_cndmask_b32_e64 v158, 0xff800000, v46, s12
	v_cndmask_b32_e64 v160, 0xff800000, v47, s13
	v_cndmask_b32_e64 v162, 0xff800000, v48, s14
	v_cndmask_b32_e64 v149, 0xff800000, v25, s31
	v_cndmask_b32_e64 v153, 0xff800000, v27, s34
	v_cndmask_b32_e64 v155, 0xff800000, v28, s35
	v_cndmask_b32_e64 v157, 0xff800000, v29, s36
	v_cndmask_b32_e64 v159, 0xff800000, v30, s37
	v_cndmask_b32_e64 v161, 0xff800000, v31, s38
	v_cndmask_b32_e64 v163, 0xff800000, v32, s39
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v9, v34, v35
.Ltmp2:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v151, 0xff800000, v26, s33
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v29, v23, v24
.Ltmp4:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v154, 0xff800000, v44, s10
	ds_store_b64 v18, v[34:35]
	ds_store_b64 v107, v[140:141]
	ds_store_b64 v108, v[36:37]
	ds_store_b64 v109, v[142:143]
	ds_store_b64 v110, v[38:39]
	ds_store_b64 v111, v[144:145]
	ds_store_b64 v112, v[146:147]
	ds_store_b64 v113, v[148:149]
	ds_store_b64 v114, v[150:151]
	ds_store_b64 v115, v[152:153]
	ds_store_b64 v116, v[154:155]
	ds_store_b64 v117, v[156:157]
	ds_store_b64 v118, v[158:159]
	ds_store_b64 v119, v[160:161]
	ds_store_b64 v120, v[162:163]
	ds_store_b64 v121, v[23:24]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 694 30                        ; attention.py:694:30
	s_clause 0x3
	buffer_load_b128 v[49:52], v182, s[68:71], 0 offen
	buffer_load_b128 v[11:14], v183, s[68:71], 0 offen
	buffer_load_b128 v[41:44], v184, s[68:71], 0 offen
	buffer_load_b128 v[45:48], v185, s[68:71], 0 offen
	.loc	1 686 26                        ; attention.py:686:26
	ds_load_2addr_b64 v[53:56], v17 offset1:16
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v10, v141, v36, v37
	v_max3_f32 v17, v39, v144, v145
	v_max3_f32 v18, v146, v147, v148
	v_max3_f32 v20, v149, v150, v151
	v_max3_f32 v16, v142, v143, v38
	v_max3_f32 v25, v152, v153, v154
	v_max3_f32 v26, v155, v156, v157
	v_max3_f32 v27, v158, v159, v160
	v_max_f32_e32 v28, v161, v162
	v_max3_f32 v9, v9, v140, v10
	v_max3_f32 v10, v17, v18, v20
.Ltmp6:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v167.h, 0
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v17, v25, v26, v27
	v_max3_f32 v18, v28, v163, v29
.Ltmp8:
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v9, v9, v16, v10
.Ltmp10:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v169.h, v167.h
	v_mov_b16_e64 v174.h, v167.h
	v_mov_b16_e64 v176.h, v167.h
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v10, v55, v55
	v_max3_f32 v9, v9, v17, v18
.Ltmp12:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v178.h, v167.h
	v_mov_b16_e64 v172.h, v167.h
	v_mov_b16_e64 v180.h, v167.h
	v_mov_b16_e64 v138.h, v167.h
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v17, v9, s78, 0xfedcba98 op_sel:[1,0]
.Ltmp14:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v164.h, v167.h
	v_mov_b16_e64 v168.h, v167.h
	v_mov_b16_e64 v171.h, v167.h
	v_mov_b16_e64 v181.h, v167.h
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v139, v19, v9, v17
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v16, v53, v53
.Ltmp16:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v175.h, v167.h
	v_mov_b16_e64 v170.h, v167.h
	v_mov_b16_e64 v177.h, v167.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v20, v141, v139
	v_sub_f32_e32 v25, v36, v139
	v_sub_f32_e32 v26, v37, v139
	v_sub_f32_e32 v27, v142, v139
	v_sub_f32_e32 v28, v143, v139
	v_sub_f32_e32 v29, v38, v139
	v_sub_f32_e32 v30, v39, v139
	v_sub_f32_e32 v31, v144, v139
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v10, v16, v10 :: v_dual_sub_f32 v33, v146, v139
.Ltmp18:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v32, v145, v139
	v_sub_f32_e32 v141, v155, v139
	v_sub_f32_e32 v17, v35, v139
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v9, v10, v54, v56
.Ltmp20:
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v10, v19, v139
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v19, v20
	v_exp_f32_e32 v20, v25
	v_exp_f32_e32 v25, v26
	v_exp_f32_e32 v26, v27
	v_exp_f32_e32 v27, v28
	v_exp_f32_e32 v28, v29
	v_exp_f32_e32 v29, v30
	v_exp_f32_e32 v30, v31
	v_exp_f32_e32 v31, v32
	v_exp_f32_e32 v32, v33
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v35, v148, v139
	v_sub_f32_e32 v36, v149, v139
	v_sub_f32_e32 v38, v151, v139
	v_sub_f32_e32 v40, v153, v139
	v_sub_f32_e32 v142, v156, v139
	v_sub_f32_e32 v144, v158, v139
	v_sub_f32_e32 v145, v159, v139
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v20, 0, v20, s23
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v146, v160, v139
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v32, 0, v32, s19
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v148, v162, v139
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v17, v17
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v168.l, v20.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v23, v23, v139
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v172.l, v32.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v24, v24, v139
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v26, 0, v26, s16
	v_cndmask_b32_e64 v30, 0, v30, s18
	v_cndmask_b32_e64 v19, 0, v19, s25
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v155, 1, v172
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v10, v10
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v24, v24
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v17, 0, v17, s24
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v169.l, v26.h
	v_mov_b16_e64 v171.l, v30.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v25, 0, v25, s26
	v_cndmask_b32_e64 v27, 0, v27, s27
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v167.l, v17.h
	v_cmp_o_f32_e64 s16, v26, v26
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v28, 0, v28, s17
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v10, 0, v10, s41
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v16, v34, v139
	v_sub_f32_e32 v18, v140, v139
	v_sub_f32_e32 v34, v147, v139
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_sub_f32 v37, v150, v139 :: v_dual_mul_f32 v4, v4, v10
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v1, v1, v10
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v16, v16
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v3, v3, v10
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v18, v18
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_dual_sub_f32 v39, v152, v139 :: v_dual_mul_f32 v2, v2, v10
	v_sub_f32_e32 v140, v154, v139
	v_dual_sub_f32 v143, v157, v139 :: v_dual_mul_f32 v8, v8, v10
.Ltmp21:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v150, v9
.Ltmp22:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v33, v34
	v_exp_f32_e32 v34, v35
	v_exp_f32_e32 v35, v36
	v_exp_f32_e32 v36, v37
	v_exp_f32_e32 v37, v38
	v_exp_f32_e32 v38, v39
	v_exp_f32_e32 v39, v40
	v_exp_f32_e32 v40, v140
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v16, 0, v16, s21
	v_cndmask_b32_e64 v18, 0, v18, s22
	.loc	1 699 23 is_stmt 1              ; attention.py:699:23
	v_mul_f32_e32 v6, v6, v10
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v140, v141
	v_exp_f32_e32 v141, v142
	v_exp_f32_e32 v142, v143
	v_exp_f32_e32 v143, v144
	v_exp_f32_e32 v144, v145
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v150, v150 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp24:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v138.l, v16.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v147, v161, v139
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v164.l, v18.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v149, v163, v139
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v145, v146
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v138, 1, v138
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v146, v147
	v_exp_f32_e32 v147, v148
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v154, 0, v142, s36
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v142, 1, v164
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v148, v149
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v149, v150, v150
.Ltmp26:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v152, 0, v37, s33
	v_cndmask_b32_e64 v37, 0, v141, s11
	v_cndmask_b32_e64 v141, 0, v144, s37
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v144, 1, v168
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v23, v23
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v9, v9, v149
.Ltmp28:
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v5, v5, v10
	v_mul_f32_e32 v7, v7, v10
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v150, 0, v33, s30
	v_cndmask_b32_e64 v151, 0, v35, s31
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v10, v9
.Ltmp30:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v33, 0, v34, s20
	v_cndmask_b32_e64 v34, 0, v36, s8
	v_cndmask_b32_e64 v35, 0, v38, s9
	v_cndmask_b32_e64 v23, 0, v23, s15
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp32:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v36, 0, v40, s10
	v_cndmask_b32_e64 v38, 0, v143, s12
	v_cndmask_b32_e64 v143, 0, v146, s38
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v181.l, v23.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v40, 0, v147, s14
	v_cndmask_b32_e64 v146, 0, v24, s40
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v24, 1, v167
	v_mov_b16_e64 v167.l, v19.h
	v_and_b32_e32 v147, 1, v169
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_and_b32 v149, 1, v171
.Ltmp34:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v164, 1, v181
	v_cmp_o_f32_e64 s9, v17, v17
	v_cmp_o_f32_e64 s10, v16, v16
	v_add3_u32 v16, v16, v138, 0x7fff
	v_add3_u32 v17, v17, v24, 0x7fff
	v_and_b32_e32 v24, 1, v167
	v_mov_b16_e64 v167.l, v25.h
	v_add3_u32 v26, v26, v147, 0x7fff
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v9, v9, v10
.Ltmp36:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s40, v23, v23
	v_add3_u32 v23, v23, v164, 0x7fff
	v_cmp_o_f32_e64 s11, v19, v19
	v_cmp_o_f32_e64 s12, v18, v18
	v_mov_b16_e64 v175.l, v35.h
	v_mov_b16_e64 v176.l, v36.h
	v_add3_u32 v18, v18, v142, 0x7fff
	v_cndmask_b16 v17.l, 0x7fff, v16.h, s10
	v_add3_u32 v16, v19, v24, 0x7fff
	v_and_b32_e32 v19, 1, v167
	v_mov_b16_e64 v167.l, v27.h
	v_cndmask_b16 v23.l, 0x7fff, v26.h, s16
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v26, v9
.Ltmp38:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v29, 0, v29, s28
	v_cndmask_b32_e64 v153, 0, v39, s34
	v_cndmask_b32_e64 v39, 0, v145, s13
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s13, v25, v25
	v_cmp_o_f32_e64 s14, v20, v20
	v_mov_b16_e64 v170.l, v28.h
	v_and_b32_e32 v158, 1, v175
	v_and_b32_e32 v159, 1, v176
	v_add3_u32 v20, v20, v144, 0x7fff
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s12
	v_cndmask_b16 v18.h, 0x7fff, v16.h, s11
	v_add3_u32 v10, v25, v19, 0x7fff
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v26, v26 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v19, 1, v167
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v145, 0, v148, s39
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s15, v27, v27
	v_cmp_o_f32_e64 s28, v35, v35
	v_cmp_o_f32_e64 s30, v36, v36
	v_mov_b16_e64 v177.l, v37.h
	v_mov_b16_e64 v178.l, v38.h
	v_and_b32_e32 v148, 1, v170
	v_add3_u32 v35, v35, v158, 0x7fff
	v_add3_u32 v36, v36, v159, 0x7fff
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s14
	v_mov_b16_e64 v167.l, v29.h
	v_cndmask_b16 v20.h, 0x7fff, v10.h, s13
	v_add3_u32 v10, v27, v19, 0x7fff
	v_permlanex16_b32 v27, v18, s78, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e64 v173.h, v167.h
	v_cmp_o_f32_e64 s18, v28, v28
	v_cmp_o_f32_e64 s20, v30, v30
	v_mov_b16_e64 v173.l, v33.h
	v_and_b32_e32 v160, 1, v177
	v_and_b32_e32 v161, 1, v178
	v_add3_u32 v28, v28, v148, 0x7fff
	v_add3_u32 v30, v30, v149, 0x7fff
	v_cndmask_b16 v148.l, 0x7fff, v35.h, s28
	v_cndmask_b16 v149.l, 0x7fff, v36.h, s30
	v_and_b32_e32 v19, 1, v167
	v_perm_b32 v35, v27, v18, v130
	v_perm_b32 v36, v27, v18, v134
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v18, v26, v26
.Ltmp42:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v140, 0, v140, s35
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s33, v37, v37
	v_cmp_o_f32_e64 s35, v38, v38
	v_add3_u32 v37, v37, v160, 0x7fff
	v_add3_u32 v38, v38, v161, 0x7fff
	v_cndmask_b16 v16.l, 0x7fff, v23.h, s40
	v_cndmask_b16 v23.h, 0x7fff, v10.h, s15
	v_add3_u32 v10, v29, v19, 0x7fff
	v_permlanex16_b32 v19, v20, s78, 0xfedcba98 op_sel:[1,0]
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v9, v9, v18 :: v_dual_and_b32 v156, 1, v173
.Ltmp44:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s22, v32, v32
	v_cmp_o_f32_e64 s24, v33, v33
	v_mov_b16_e64 v174.l, v34.h
	v_add3_u32 v32, v32, v155, 0x7fff
	v_add3_u32 v33, v33, v156, 0x7fff
	v_cndmask_b16 v155.l, 0x7fff, v37.h, s33
	v_cndmask_b16 v156.l, 0x7fff, v38.h, s35
	v_perm_b32 v37, v19, v20, v130
	v_perm_b32 v38, v19, v20, v134
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v19, v9
.Ltmp46:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v31, 0, v31, s29
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v157, 1, v174
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s9
	v_cmp_o_f32_e64 s26, v34, v34
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v167.l, v31.h
	v_add3_u32 v34, v34, v157, 0x7fff
	v_permlanex16_b32 v25, v17, s78, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e64 v179.h, v167.h
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v19, v19, v19
.Ltmp50:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s17, v29, v29
	v_mov_b16_e64 v179.l, v39.h
	v_mov_b16_e64 v180.l, v40.h
	v_cndmask_b16 v32.l, 0x7fff, v33.h, s24
	v_cndmask_b16 v147.l, 0x7fff, v34.h, s26
	v_perm_b32 v33, v25, v17, v130
	v_perm_b32 v34, v25, v17, v134
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v9, v9, v19
.Ltmp52:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v17, 1, v167
	v_mov_b16_e64 v167.l, v150.h
	v_cmp_o_f32_e64 s19, v31, v31
	v_and_b32_e32 v162, 1, v179
	v_and_b32_e32 v163, 1, v180
	v_cndmask_b16 v24.l, 0x7fff, v28.h, s18
	v_cndmask_b16 v24.h, 0x7fff, v10.h, s17
	v_add3_u32 v10, v31, v17, 0x7fff
	v_and_b32_e32 v17, 1, v167
	v_mov_b16_e64 v167.l, v151.h
	v_cmp_o_f32_e64 s21, v150, v150
	v_cmp_o_f32_e64 s37, v39, v39
	v_cmp_o_f32_e64 s39, v40, v40
	v_add3_u32 v39, v39, v162, 0x7fff
	v_add3_u32 v40, v40, v163, 0x7fff
	v_permlanex16_b32 v25, v23, s78, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v28.h, 0x7fff, v10.h, s19
	v_add3_u32 v10, v150, v17, 0x7fff
	v_permlanex16_b32 v18, v24, s78, 0xfedcba98 op_sel:[1,0]
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v138, v15, v9 :: v_dual_and_b32 v17, 1, v167
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v167.l, v152.h
	v_cmp_o_f32_e64 s23, v151, v151
	v_cndmask_b16 v28.l, 0x7fff, v30.h, s20
	v_cndmask_b16 v144.l, 0x7fff, v39.h, s37
	v_cndmask_b16 v142.l, 0x7fff, v40.h, s39
	v_perm_b32 v39, v25, v23, v130
	v_perm_b32 v40, v25, v23, v134
	v_cndmask_b16 v30.h, 0x7fff, v10.h, s21
	v_perm_b32 v25, v18, v24, v130
	v_perm_b32 v26, v18, v24, v134
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v24, v55, v138
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v10, v151, v17, 0x7fff
	v_and_b32_e32 v17, 1, v167
	v_mov_b16_e64 v167.l, v153.h
	v_cmp_o_f32_e64 s25, v152, v152
	v_cndmask_b16 v30.l, 0x7fff, v32.h, s22
	v_cndmask_b16 v32.h, 0x7fff, v10.h, s23
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v23, v53, v138
	v_sub_f32_e32 v53, v54, v138
	v_sub_f32_e32 v54, v56, v138
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v10, v152, v17, 0x7fff
	v_and_b32_e32 v17, 1, v167
	v_mov_b16_e64 v167.l, v140.h
	v_cmp_o_f32_e64 s27, v153, v153
	v_cmp_o_f32_e64 s29, v140, v140
	v_cndmask_b16 v147.h, 0x7fff, v10.h, s25
	v_add3_u32 v10, v153, v17, 0x7fff
	v_and_b32_e32 v17, 1, v167
	v_mov_b16_e64 v167.l, v154.h
	v_permlanex16_b32 v18, v30, s78, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s31, v154, v154
	v_cndmask_b16 v148.h, 0x7fff, v10.h, s27
	v_add3_u32 v10, v140, v17, 0x7fff
	v_and_b32_e32 v17, 1, v167
	v_mov_b16_e64 v167.l, v141.h
	v_perm_b32 v29, v18, v30, v130
	v_perm_b32 v30, v18, v30, v134
	v_permlanex16_b32 v18, v147, s78, 0xfedcba98 op_sel:[1,0]
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v140, v22, v9
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v149.h, 0x7fff, v10.h, s29
	v_add3_u32 v9, v154, v17, 0x7fff
	v_and_b32_e32 v10, 1, v167
	v_mov_b16_e64 v167.l, v143.h
	v_cmp_o_f32_e64 s34, v141, v141
	v_permlanex16_b32 v20, v28, s78, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v17, v18, v147, v130
	v_perm_b32 v18, v18, v147, v134
	v_cndmask_b16 v155.h, 0x7fff, v9.h, s31
	v_add3_u32 v9, v141, v10, 0x7fff
	v_and_b32_e32 v10, 1, v167
	v_mov_b16_e64 v167.l, v145.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v56, v23
	v_exp_f32_e32 v147, v24
	v_exp_f32_e32 v53, v53
	v_exp_f32_e32 v54, v54
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s36, v143, v143
	v_perm_b32 v27, v20, v28, v130
	v_perm_b32 v28, v20, v28, v134
	v_permlanex16_b32 v20, v32, s78, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v148, s78, 0xfedcba98 op_sel:[1,0]
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v22, v21, v140
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v55, v149, s78, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v156.h, 0x7fff, v9.h, s34
	v_add3_u32 v9, v143, v10, 0x7fff
	v_and_b32_e32 v10, 1, v167
	v_mov_b16_e64 v167.l, v146.h
	v_cmp_o_f32_e64 s38, v145, v145
	v_perm_b32 v31, v20, v32, v130
	v_perm_b32 v32, v20, v32, v134
	v_perm_b32 v19, v15, v148, v130
	v_perm_b32 v20, v15, v148, v134
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v15, v22
	.loc	1 689 25 is_stmt 0              ; attention.py:689:25
	v_cmp_neq_f32_e64 s9, 0xff800000, v21
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_perm_b32 v21, v55, v149, v130
	v_perm_b32 v22, v55, v149, v134
	v_cndmask_b16 v144.h, 0x7fff, v9.h, s36
	v_add3_u32 v9, v145, v10, 0x7fff
	v_and_b32_e32 v10, 1, v167
	v_permlanex16_b32 v55, v156, s78, 0xfedcba98 op_sel:[1,0]
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v56, 0, v56, s4
	v_cndmask_b32_e64 v143, 0, v147, s5
	v_cndmask_b32_e64 v53, 0, v53, s6
	v_cndmask_b32_e64 v54, 0, v54, s7
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v142.h, 0x7fff, v9.h, s38
	v_add3_u32 v145, v146, v10, 0x7fff
	v_perm_b32 v9, v55, v156, v130
	v_perm_b32 v10, v55, v156, v134
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v55, v56, v143
	v_add_f32_e32 v53, v53, v54
.Ltmp54:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v24, v155, s78, 0xfedcba98 op_sel:[1,0]
	.loc	1 694 30                        ; attention.py:694:30
	s_barrier
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s8, v146, v146
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(3)
	ds_store_b128 v166, v[49:52]
	s_waitcnt vmcnt(2)
	ds_store_b128 v166, v[11:14] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v166, v[41:44] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v166, v[45:48] offset:6144
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v53, v55, v53
.Ltmp56:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v23, v24, v155, v130
	v_perm_b32 v24, v24, v155, v134
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp57:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v54, v53
.Ltmp58:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v16.h, 0x7fff, v145.h, s8
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v141, 0, v15, s9
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v15, v144, s78, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v142, s78, 0xfedcba98 op_sel:[1,0]
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v54, v54 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s72, s72, 64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v11, v15, v144, v130
	v_perm_b32 v12, v15, v144, v134
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v53, v53, v54
.Ltmp62:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v13, v14, v142, v130
	v_perm_b32 v14, v14, v142, v134
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s72, s73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v54, v53
	v_mov_b32_dpp v54, v54 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v53, v53, v54
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v54, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v54, v54 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v143, v53, v54
.Ltmp67:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v146, v85
	ds_load_u16_d16 v147, v85 offset:256
	ds_load_u16_d16 v148, v85 offset:512
	ds_load_u16_d16 v149, v85 offset:768
	ds_load_u16_d16 v150, v85 offset:1024
	ds_load_u16_d16 v151, v85 offset:1280
	ds_load_u16_d16 v152, v85 offset:1536
	ds_load_u16_d16 v153, v85 offset:1792
	ds_load_u16_d16 v154, v85 offset:2048
	ds_load_u16_d16 v155, v85 offset:2304
	ds_load_u16_d16 v156, v85 offset:2560
	ds_load_u16_d16 v157, v85 offset:2816
	ds_load_u16_d16 v158, v85 offset:3072
	ds_load_u16_d16 v159, v85 offset:3328
	ds_load_u16_d16 v160, v85 offset:3584
	ds_load_u16_d16 v161, v85 offset:3840
	ds_load_u16_d16 v49, v85 offset:4096
	ds_load_u16_d16 v50, v85 offset:4352
	ds_load_u16_d16 v51, v85 offset:4608
	ds_load_u16_d16 v52, v85 offset:4864
	ds_load_u16_d16 v53, v85 offset:5120
	ds_load_u16_d16 v54, v85 offset:5376
	ds_load_u16_d16 v55, v85 offset:5632
	ds_load_u16_d16 v56, v85 offset:5888
	ds_load_u16_d16 v41, v85 offset:6144
	ds_load_u16_d16 v42, v85 offset:6400
	ds_load_u16_d16 v43, v85 offset:6656
	ds_load_u16_d16 v44, v85 offset:6912
	ds_load_u16_d16 v45, v85 offset:7168
	ds_load_u16_d16 v46, v85 offset:7424
	ds_load_u16_d16 v47, v85 offset:7680
	ds_load_u16_d16 v48, v85 offset:7936
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v145, v143
.Ltmp69:
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v146, v85 offset:128
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v147, v85 offset:384
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v148, v85 offset:640
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v149, v85 offset:896
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v150, v85 offset:1152
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v151, v85 offset:1408
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v152, v85 offset:1664
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v153, v85 offset:1920
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v154, v85 offset:2176
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v155, v85 offset:2432
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v156, v85 offset:2688
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v157, v85 offset:2944
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v158, v85 offset:3200
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v159, v85 offset:3456
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v160, v85 offset:3712
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v161, v85 offset:3968
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v49, v85 offset:4224
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v50, v85 offset:4480
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v51, v85 offset:4736
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v52, v85 offset:4992
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v53, v85 offset:5248
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v54, v85 offset:5504
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v55, v85 offset:5760
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v56, v85 offset:6016
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v41, v85 offset:6272
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v42, v85 offset:6528
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v43, v85 offset:6784
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v44, v85 offset:7040
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v45, v85 offset:7296
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v46, v85 offset:7552
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v47, v85 offset:7808
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v48, v85 offset:8064
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(24)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[146:153], v[33:40], v[1:8]
	.loc	1 700 30 is_stmt 0              ; attention.py:700:30
	v_permlanex16_b32 v33, v16, s78, 0xfedcba98 op_sel:[1,0]
.Ltmp70:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v145, v145 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp71:
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(16)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[154:161], v[25:32], v[1:8]
	.loc	1 700 30 is_stmt 0              ; attention.py:700:30
	v_perm_b32 v15, v33, v16, v130
	v_perm_b32 v16, v33, v16, v134
.Ltmp72:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v25, v143, v145
.Ltmp73:
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[49:56], v[17:24], v[1:8]
	v_mov_b32_e32 v19, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v25, v137, v141
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[41:48], v[9:16], v[1:8]
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %._crit_edge.loopexit
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v9, v140, v140
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v10, 0xff800000, v9
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v9, 0, v25
	s_branch .LBB0_5
.Ltmp76:
.LBB0_4:
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v10, 0xff800000 :: v_dual_mov_b32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v9, v8
.LBB0_5:                                ; %._crit_edge
	.loc	1 825 26 is_stmt 1              ; attention.py:825:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v68
	s_mov_b32 s0, 0x76543210
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_lshrrev_b32_e32 v12, 3, v74
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp78:
	.loc	1 825 17                        ; attention.py:825:17
	v_dual_cndmask_b32 v10, 0xff800000, v10 :: v_dual_cndmask_b32 v9, 0, v9
	.loc	1 830 26                        ; attention.py:830:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v73
	.loc	1 835 13                        ; attention.py:835:13
	v_lshrrev_b32_e32 v21, 5, v0
	.loc	1 822 31                        ; attention.py:822:31
	s_mul_i32 s55, s55, s3
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_permlanex16_b32 v11, v10, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp80:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v10, v10, v10
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_permlanex16_b32 v14, v9, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp82:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_add_nc_u32_e32 v12, 0, v12
.Ltmp83:
	.loc	1 833 13                        ; attention.py:833:13
	v_or_b32_e32 v21, v21, v72
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v11, v11, v11
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_and_b32_e32 v13, 12, v69
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v9, v9, v14
.Ltmp87:
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s0, s43, 2
	.loc	1 822 31                        ; attention.py:822:31
	s_add_i32 s1, s54, s55
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp88:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v10, v10, v11 :: v_dual_add_nc_u32 v11, 0, v13
.Ltmp89:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v2, 0, v2 :: v_dual_cndmask_b32 v1, 0, v1
	.loc	1 822 30                        ; attention.py:822:30
	s_mul_i32 s0, s1, s0
.Ltmp90:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	ds_store_b32 v12, v10
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v10, v11
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v12, v9
.Ltmp92:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v12, v2
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v9, v11
.Ltmp94:
	.loc	1 833 13 is_stmt 1              ; attention.py:833:13
	s_mov_b32 s2, exec_lo
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp96:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v3, 0, v3 :: v_dual_cndmask_b32 v16, 0, v4
	v_dual_cndmask_b32 v8, 0, v8 :: v_dual_cndmask_b32 v17, 0, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v2, v2, v12 :: v_dual_mov_b32 v11, v1
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v20, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v14, v2
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v1, v1, v11
.Ltmp100:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v11, v10
.Ltmp101:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_mov_b32 v13, v3
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v2, v2, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v12, v1
.Ltmp104:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v8, v8, v20
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v14, v2
	v_mov_b32_dpp v12, v12 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp107:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v11, v11, v11 :: v_dual_mov_b32 v20, v8
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v3, v3, v13
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v13, v9
.Ltmp110:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp111:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v10, v10, v11
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v15, v3
.Ltmp113:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp114:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v2, v2, v14 :: v_dual_add_f32 v1, v1, v12
.Ltmp115:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v12, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_dual_add_f32 v9, v9, v13 :: v_dual_mov_b32 v4, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v13, v1 :: v_dual_mov_b32 v14, v16
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v3, v3, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v11, v9
.Ltmp121:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp123:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp124:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v1, v1, v13 :: v_dual_add_f32 v14, v16, v14
.Ltmp125:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v13, 0, v6, vcc_lo
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v15, v3 :: v_dual_mov_b32 v16, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v5, v3, v15
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v15, v17
	v_dual_mov_b32 v3, v1 :: v_dual_add_f32 v14, v14, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v13, v13, v18
.Ltmp130:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v7, 0, v7, vcc_lo
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v6, v5
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v18, v13 :: v_dual_mov_b32 v19, v7
	v_dual_mov_b32 v16, v14 :: v_dual_add_f32 v15, v17, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v15, v15, v17
	v_add_f32_e32 v17, v13, v18
	v_add_f32_e32 v7, v7, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v13, v15
	v_mov_b32_e32 v19, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp134:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v13, v15, v13
	v_dual_add_f32 v18, v7, v19 :: v_dual_add_f32 v19, v8, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v7, v14, v16 :: v_dual_mov_b32 v16, v13
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v22, v18 :: v_dual_mov_b32 v23, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v8, v7
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v23, v23 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp136:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v15, v18, v22 :: v_dual_add_f32 v14, v17, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v17, v19, v23
.Ltmp137:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v19, v15 :: v_dual_mov_b32 v18, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp138:
	.loc	1 833 13                        ; attention.py:833:13
	v_cmpx_eq_u32_e32 0, v21
	s_cbranch_execz .LBB0_7
; %bb.6:
.Ltmp139:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v21, v10, v10
.Ltmp140:
	.loc	1 833 13                        ; attention.py:833:13
	s_ashr_i32 s1, s0, 31
.Ltmp141:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_dual_add_f32 v10, v9, v11 :: v_dual_mov_b32 v11, 0
.Ltmp142:
	.loc	1 833 13                        ; attention.py:833:13
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp143:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v9, v21, v12
.Ltmp144:
	.loc	1 833 13                        ; attention.py:833:13
	s_add_u32 s4, s52, s4
	s_addc_u32 s5, s53, s5
	.loc	1 834 13                        ; attention.py:834:13
	global_store_b64 v11, v[9:10], s[4:5]
.LBB0_7:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp145:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v7, v7, v8 :: v_dual_add_f32 v6, v5, v6
	v_dual_add_f32 v5, v2, v4 :: v_dual_and_b32 v8, 0xc0, v69
	v_dual_add_f32 v4, v1, v3 :: v_dual_and_b32 v1, 28, v70
.Ltmp146:
	.loc	1 835 13                        ; attention.py:835:13
	v_lshlrev_b32_e32 v2, 5, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 0, v8
	v_lshl_add_u32 v8, v68, 1, 0
.Ltmp147:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v12, v17, v20 :: v_dual_add_f32 v11, v15, v19
	v_dual_add_f32 v10, v14, v18 :: v_dual_add_f32 v9, v13, v16
.Ltmp148:
	.loc	1 835 13                        ; attention.py:835:13
	v_add3_u32 v1, v3, v2, v1
	.loc	1 571 21                        ; attention.py:571:21
	v_and_b32_e32 v13, 63, v0
	.loc	1 835 13                        ; attention.py:835:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[4:7]
	ds_store_b128 v8, v[9:12] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_and_b32_e32 v0, 64, v0
	.loc	1 836 17                        ; attention.py:836:17
	v_add_nc_u32_e32 v2, s0, v13
	.loc	1 838 22                        ; attention.py:838:22
	v_cmp_gt_i32_e32 vcc_lo, s43, v13
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
.Ltmp149:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
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
		.amdhsa_next_free_vgpr 186
		.amdhsa_next_free_sgpr 81
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_vgpr, 186
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.numbered_sgpr, 81
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11056
; TotalNumSgprs: 83
; NumVgprs: 186
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 83
; NumVGPRsForWavesPerEU: 186
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
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
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
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     83
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     186
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
