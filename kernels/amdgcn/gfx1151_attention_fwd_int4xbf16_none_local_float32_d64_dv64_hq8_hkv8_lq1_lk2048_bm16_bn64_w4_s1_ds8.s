	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b32 s93, s[0:1], 0x64
	s_load_b64 s[78:79], s[0:1], 0x5c
	s_load_b64 s[80:81], s[0:1], 0x0
	s_load_b64 s[76:77], s[0:1], 0x40
.Ltmp0:
	.loc	1 559 27 prologue_end           ; attention.py:559:27
	s_abs_i32 s7, s2
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v2, 3, v0
	s_mov_b32 s83, 0x31027000
	s_mov_b32 s82, 0x7ffffffe
	s_clause 0x1
	s_load_b64 s[12:13], s[0:1], 0x80
	s_load_b32 s14, s[0:1], 0x88
	.loc	1 585 26                        ; attention.py:585:26
	v_lshlrev_b32_e32 v43, 2, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v46, 15, v0
	.loc	1 585 26                        ; attention.py:585:26
	v_lshlrev_b32_e32 v44, 1, v0
	.loc	1 633 49                        ; attention.py:633:49
	v_and_b32_e32 v45, 1, v0
	s_mov_b32 s68, 0
	.loc	1 609 32                        ; attention.py:609:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s5, s93
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s8, s2, s93
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
	v_cmp_gt_i32_e32 vcc_lo, s78, v3
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
	s_and_b32 s81, s81, 0xffff
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s16, s7, 4
	.loc	1 560 27                        ; attention.py:560:27
	s_mul_i32 s7, s7, s93
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s15, s16, s3
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v6, s16, v2
	.loc	1 584 26                        ; attention.py:584:26
	v_add_nc_u32_e32 v4, s15, v2
	.loc	1 560 27                        ; attention.py:560:27
	s_sub_i32 s92, s2, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s4, 1, v6
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[4:5], null, v4, s78, v[3:4]
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s93, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 609 32 is_stmt 1              ; attention.py:609:32
	s_xor_b32 s8, s4, s93
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v3, 0x80000000, v4, vcc_lo
	.loc	1 609 32                        ; attention.py:609:32
	s_abs_i32 s4, s4
	s_ashr_i32 s8, s8, 31
	s_mul_hi_u32 s6, s4, s6
	s_mul_i32 s9, s6, s5
	.loc	1 585 26                        ; attention.py:585:26
	buffer_load_b32 v4, v3, s[80:83], 0 offen
	.loc	1 609 32                        ; attention.py:609:32
	s_sub_i32 s4, s4, s9
	s_add_i32 s10, s6, 1
	s_sub_i32 s2, s4, s5
	s_cmp_ge_u32 s4, s5
	.loc	1 585 26                        ; attention.py:585:26
	v_and_b32_e32 v3, 0x60, v0
	.loc	1 609 32                        ; attention.py:609:32
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s5
	.loc	1 585 26                        ; attention.py:585:26
	v_lshrrev_b32_e32 v5, 2, v3
	.loc	1 609 32                        ; attention.py:609:32
	s_cselect_b32 s2, s4, s6
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s5, s13, s14
	.loc	1 609 32                        ; attention.py:609:32
	s_xor_b32 s2, s2, s8
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s5, s5, s16
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s4, s14, s12
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s5, s5, 16
	.loc	1 609 32                        ; attention.py:609:32
	s_sub_i32 s2, s2, s8
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s5, s5, 0x800
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s4, s4, s16
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s5, s5, 63
	.loc	1 610 18                        ; attention.py:610:18
	s_mul_i32 s6, s92, s2
	.loc	1 619 34                        ; attention.py:619:34
	s_ashr_i32 s7, s5, 31
	.loc	1 613 25                        ; attention.py:613:25
	s_max_i32 s4, s4, 0
	.loc	1 619 34                        ; attention.py:619:34
	s_lshr_b32 s7, s7, 26
	.loc	1 611 33                        ; attention.py:611:33
	s_lshl_b32 s2, s2, 6
	.loc	1 610 18                        ; attention.py:610:18
	s_lshl_b32 s6, s6, 6
	.loc	1 619 34                        ; attention.py:619:34
	s_add_i32 s5, s5, s7
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s4, s4, 0x7fffffc0
	.loc	1 611 33                        ; attention.py:611:33
	s_add_i32 s2, s6, s2
	.loc	1 619 33                        ; attention.py:619:33
	s_and_not1_b32 s5, s5, 63
	.loc	1 585 26                        ; attention.py:585:26
	v_xad_u32 v5, v43, v5, 0
	.loc	1 618 18                        ; attention.py:618:18
	s_max_i32 s94, s6, s4
	.loc	1 619 18                        ; attention.py:619:18
	s_min_i32 s95, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_ge_i32 s94, s95
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v5, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 570 21 is_stmt 1              ; attention.py:570:21
	v_or_b32_e32 v5, s16, v46
	.loc	1 590 31                        ; attention.py:590:31
	v_add_lshl_u32 v4, s15, v46, 1
	v_dual_mov_b32 v12, 0x7632 :: v_dual_and_b32 v7, 24, v44
	v_and_b32_e32 v8, 24, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e32 vcc_lo, 1, v5
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v6, 4, v0
	.loc	1 585 26                        ; attention.py:585:26
	v_lshl_or_b32 v14, v46, 5, v7
	v_dual_mov_b32 v109, 0xff800000 :: v_dual_lshlrev_b32 v48, 4, v0
	.loc	1 590 31                        ; attention.py:590:31
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_lshlrev_b32 v33, 4, v45
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v15, 16, v14
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v79, 62, v6
	v_bfe_u32 v47, v0, 4, 1
	.loc	1 632 32                        ; attention.py:632:32
	s_lshl_b32 s96, s3, 11
	s_lshl_b32 s97, s79, 4
	s_lshl_b32 s98, s79, 5
	s_mul_i32 s99, s79, 48
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s81, s9, 0xffff
	s_mov_b32 s80, s8
	v_mov_b32_e32 v11, 0x5410
	buffer_load_u16 v9, v4, s[80:83], 0 offen
	.loc	1 693 86                        ; attention.py:693:86
	v_lshlrev_b32_e32 v4, 3, v1
	v_mov_b32_e32 v1, 0
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v3, 0, v3
	v_and_b32_e32 v10, 16, v0
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v13, s14, v5
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[34:35], null, s79, v2, v[4:5]
	v_mov_b32_e32 v2, v1
	v_lshl_add_u32 v81, v46, 1, v3
	v_mov_b32_e32 v3, v1
	v_cmp_eq_u32_e64 s2, 0, v10
	v_dual_mov_b32 v5, v1 :: v_dual_add_nc_u32 v82, 0, v14
	s_load_b32 s8, s[0:1], 0x68
	v_xor_b32_e32 v80, v48, v8
	v_cndmask_b32_e64 v10, 0x1054, v11, s2
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v11, 8, v14
	v_xor_b32_e32 v14, 24, v14
	v_mov_b32_e32 v6, v1
	v_cndmask_b32_e64 v12, 0x3276, v12, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v8, v1 :: v_dual_add_nc_u32 v99, 0, v11
	v_add_nc_u32_e32 v101, 0, v14
	v_lshl_or_b32 v10, v10, 8, v10
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v11, v12, 8, v12
	v_mov_b32_e32 v110, v1
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v65, 34, v47
	v_or_b32_e32 v66, 36, v47
	v_and_b32_e32 v10, 0x540054, v10
	v_and_b32_e32 v11, 0x760076, v11
	v_or_b32_e32 v67, 38, v47
	v_or_b32_e32 v68, 40, v47
	v_or_b32_e32 v69, 42, v47
	v_or_b32_e32 v70, 44, v47
	v_or_b32_e32 v71, 46, v47
	v_or_b32_e32 v72, 48, v47
	v_or_b32_e32 v73, 50, v47
	v_or_b32_e32 v74, 52, v47
	v_or_b32_e32 v75, 54, v47
	v_or_b32_e32 v76, 56, v47
	v_or_b32_e32 v77, 58, v47
	v_or_b32_e32 v78, 60, v47
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s1, s79, v4
	v_mov_b32_e32 v4, v1
	v_dual_mov_b32 v7, v1 :: v_dual_add_nc_u32 v84, s13, v13
	.loc	1 670 47                        ; attention.py:670:47
	v_subrev_nc_u32_e32 v83, s12, v13
	v_xor_b32_e32 v13, 8, v80
	v_lshl_or_b32 v10, v10, 4, v10
	v_lshl_or_b32 v11, v11, 4, v11
	.loc	1 664 27                        ; attention.py:664:27
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s101, s8, 0x3fb8aa3b
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v49, 2, v47
	v_or_b32_e32 v50, 4, v47
	v_or_b32_e32 v51, 6, v47
	v_or_b32_e32 v52, 8, v47
	v_or_b32_e32 v53, 10, v47
	v_or_b32_e32 v54, 12, v47
	v_or_b32_e32 v55, 14, v47
	v_or_b32_e32 v56, 16, v47
	v_or_b32_e32 v57, 18, v47
	v_or_b32_e32 v58, 20, v47
	v_or_b32_e32 v59, 22, v47
	v_or_b32_e32 v60, 24, v47
	v_or_b32_e32 v61, 26, v47
	v_or_b32_e32 v62, 28, v47
	v_or_b32_e32 v63, 30, v47
	v_or_b32_e32 v64, 32, v47
	.loc	1 636 31                        ; attention.py:636:31
	v_cmp_gt_i32_e64 s0, s78, v33
	v_or_b32_e32 v85, s96, v65
	v_or_b32_e32 v86, s96, v66
	v_or_b32_e32 v87, s96, v67
	v_or_b32_e32 v88, s96, v68
	v_or_b32_e32 v89, s96, v69
	v_or_b32_e32 v90, s96, v70
	v_or_b32_e32 v91, s96, v71
	v_or_b32_e32 v92, s96, v72
	v_or_b32_e32 v93, s96, v73
	v_or_b32_e32 v94, s96, v74
	v_or_b32_e32 v95, s96, v75
	v_or_b32_e32 v96, s96, v76
	v_or_b32_e32 v97, s96, v77
	v_or_b32_e32 v98, s96, v78
	v_add_nc_u32_e32 v102, 0, v13
	v_and_b32_e32 v104, 0x5040504, v10
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_mov_b32 s69, s68
	s_mov_b32 s70, s68
	s_mov_b32 s71, s68
	s_mov_b32 s72, s68
	s_mov_b32 s73, s68
	s_mov_b32 s74, s68
	s_mov_b32 s75, s68
	s_mov_b32 s100, 0x76543210
	s_mov_b32 s86, s82
	s_mov_b32 s87, s83
	s_mov_b32 s90, s82
	s_mov_b32 s91, s83
	s_and_b32 s89, s7, 0xffff
	s_mov_b32 s84, s10
	s_mov_b32 s88, s6
	s_mov_b32 s80, s4
	s_mov_b32 s81, s5
	s_mov_b32 s85, s11
	.loc	1 664 17                        ; attention.py:664:17
	s_mov_b32 s102, s101
	s_mov_b32 s103, s101
	s_mov_b32 s104, s101
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v103, 16, v9
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v100, 0, v15
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mov_b32 v106, v103 :: v_dual_and_b32 v105, 0x7060706, v11
	v_mov_b32_e32 v107, v103
	.loc	1 585 26                        ; attention.py:585:26
	ds_load_b64 v[35:36], v82
	ds_load_b64 v[37:38], v99
	ds_load_b64 v[39:40], v100
	ds_load_b64 v[41:42], v101
	.loc	1 654 30                        ; attention.py:654:30
	v_mov_b32_e32 v108, v103
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 30 is_stmt 0                ; attention.py:0:30
	v_or_b32_e32 v18, s96, v47
	.loc	1 571 21 is_stmt 1              ; attention.py:571:21
	v_lshrrev_b32_e32 v114, 1, v0
	.loc	1 633 32                        ; attention.py:633:32
	s_add_i32 s2, s94, s96
	v_or_b32_e32 v21, s96, v49
	s_waitcnt lgkmcnt(3)
	v_mad_u64_u32 v[19:20], null, s2, s79, v[34:35]
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v116, v18, s94, 1
	.loc	1 633 32                        ; attention.py:633:32
	v_or_b32_e32 v18, s2, v114
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v118, v21, s94, 1
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v9, s68 :: v_dual_mov_b32 v12, s71
	v_mov_b32_e32 v15, s74
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 633 32                        ; attention.py:633:32
	v_mad_u64_u32 v[20:21], null, v18, s78, v[33:34]
	v_or_b32_e32 v22, s96, v50
	v_or_b32_e32 v23, s96, v51
	.loc	1 694 30                        ; attention.py:694:30
	v_lshlrev_b32_e32 v18, 1, v19
	v_add_lshl_u32 v21, v19, s97, 1
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v10, s69 :: v_dual_add_nc_u32 v17, 0, v80
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v119, v22, s94, 1
	v_add_lshl_u32 v120, v23, s94, 1
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v22, v19, s98, 1
	v_add_lshl_u32 v19, v19, s99, 1
	v_cndmask_b32_e64 v23, 0x80000000, v18, s1
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e64 v18, 0x80000000, v20, s0
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v189, 0x80000000, v21, s1
	v_or_b32_e32 v25, s96, v53
	v_cndmask_b32_e64 v191, 0x80000000, v19, s1
	v_or_b32_e32 v26, s96, v54
	.loc	1 634 32                        ; attention.py:634:32
	buffer_load_b128 v[18:21], v18, s[80:83], 0 offen
	v_or_b32_e32 v27, s96, v55
	v_or_b32_e32 v28, s96, v56
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v124, v25, s94, 1
	v_add_lshl_u32 v131, v26, s94, 1
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt lgkmcnt(0)
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v132, v27, s94, 1
	v_add_lshl_u32 v133, v28, s94, 1
	.loc	1 634 32                        ; attention.py:634:32
	s_barrier
	v_or_b32_e32 v24, s96, v52
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v11, s70 :: v_dual_mov_b32 v14, s73
	v_dual_mov_b32 v13, s72 :: v_dual_mov_b32 v16, s75
	v_or_b32_e32 v29, s96, v57
	v_or_b32_e32 v30, s96, v58
	v_or_b32_e32 v31, s96, v59
	v_or_b32_e32 v32, s96, v60
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v121, v24, s94, 1
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v190, 0x80000000, v22, s1
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v142, v29, s94, 1
	v_add_lshl_u32 v143, v30, s94, 1
	v_add_lshl_u32 v144, v31, s94, 1
	v_add_lshl_u32 v145, v32, s94, 1
	v_or_b32_e32 v115, s96, v64
	v_or_b32_e32 v111, s96, v61
	v_or_b32_e32 v112, s96, v62
	v_or_b32_e32 v113, s96, v63
	v_add_lshl_u32 v129, v92, s94, 1
	v_add_lshl_u32 v130, v93, s94, 1
	v_add_lshl_u32 v117, v85, s94, 1
	v_add_lshl_u32 v122, v86, s94, 1
	v_add_lshl_u32 v123, v87, s94, 1
	v_add_lshl_u32 v125, v88, s94, 1
	v_add_lshl_u32 v126, v89, s94, 1
	v_add_lshl_u32 v127, v90, s94, 1
	v_add_lshl_u32 v128, v91, s94, 1
	v_add_lshl_u32 v183, v94, s94, 1
	v_add_lshl_u32 v148, v115, s94, 1
	v_add_lshl_u32 v184, v95, s94, 1
	v_add_lshl_u32 v185, v96, s94, 1
	v_add_lshl_u32 v186, v97, s94, 1
	v_add_lshl_u32 v187, v98, s94, 1
	v_add_lshl_u32 v188, s2, v79, 1
	v_add_lshl_u32 v111, v111, s94, 1
	v_add_lshl_u32 v146, v112, s94, 1
	v_add_lshl_u32 v147, v113, s94, 1
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v17, v[18:19]
	ds_store_b64 v102, v[20:21]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[17:20], v82 offset1:1
	ds_load_2addr_stride64_b64 v[25:28], v82 offset0:2 offset1:3
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[21:24], v23, s[88:91], 0 offen
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[29:32], v99 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[134:141], v[17:18], v[35:36], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[19:20], v[35:36], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[167:174], v[25:26], v[35:36], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[175:182], v[27:28], v[35:36], v[9:16] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[9:12], v99 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[13:16], v100 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[134:141], v[29:30], v[37:38], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[31:32], v[37:38], v[149:156] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	s_clause 0x17
	buffer_load_u16 v25, v116, s[84:87], 0 offen
	buffer_load_u16 v26, v118, s[84:87], 0 offen
	buffer_load_u16 v32, v119, s[84:87], 0 offen
	buffer_load_u16 v112, v120, s[84:87], 0 offen
	buffer_load_u16 v27, v121, s[84:87], 0 offen
	buffer_load_u16 v30, v124, s[84:87], 0 offen
	buffer_load_u16 v28, v131, s[84:87], 0 offen
	buffer_load_u16 v31, v132, s[84:87], 0 offen
	buffer_load_u16 v29, v133, s[84:87], 0 offen
	buffer_load_u16 v113, v142, s[84:87], 0 offen
	buffer_load_u16 v114, v143, s[84:87], 0 offen
	buffer_load_u16 v118, v144, s[84:87], 0 offen
	buffer_load_u16 v121, v145, s[84:87], 0 offen
	buffer_load_u16 v115, v111, s[84:87], 0 offen
	buffer_load_u16 v119, v146, s[84:87], 0 offen
	buffer_load_u16 v116, v147, s[84:87], 0 offen
	buffer_load_u16 v120, v148, s[84:87], 0 offen
	buffer_load_u16 v117, v117, s[84:87], 0 offen
	buffer_load_u16 v122, v122, s[84:87], 0 offen
	buffer_load_u16 v124, v123, s[84:87], 0 offen
	buffer_load_u16 v164, v125, s[84:87], 0 offen
	buffer_load_u16 v165, v126, s[84:87], 0 offen
	buffer_load_u16 v123, v127, s[84:87], 0 offen
	buffer_load_u16 v125, v128, s[84:87], 0 offen
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v111.h, 0
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[167:174], v[9:10], v[37:38], v[167:174] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[175:182], v[11:12], v[37:38], v[175:182] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[9:12], v100 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[134:141], v[13:14], v[39:40], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[15:16], v[39:40], v[149:156] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[13:16], v101 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[167:174], v[9:10], v[39:40], v[167:174] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[175:182], v[11:12], v[39:40], v[175:182] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[9:12], v101 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[134:141], v[13:14], v[41:42], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[15:16], v[41:42], v[149:156] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v131, v136
	v_cvt_f32_i32_e32 v136, v138
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v138, v140
	v_cvt_f32_i32_e32 v148, v154
	v_cvt_f32_i32_e32 v147, v155
	v_cvt_f32_i32_e32 v132, v137
	v_cvt_f32_i32_e32 v137, v141
	v_cvt_f32_i32_e32 v141, v156
	v_cvt_f32_i32_e32 v143, v153
	v_cvt_f32_i32_e32 v144, v152
	v_cvt_f32_i32_e32 v145, v151
	v_cvt_f32_i32_e32 v146, v150
	v_cvt_f32_i32_e32 v133, v135
	v_mul_f32_e32 v138, v107, v138
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[167:174], v[9:10], v[41:42], v[167:174] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[175:182], v[11:12], v[41:42], v[175:182] neg_lo:[1,1,0]
	.loc	1 694 30                        ; attention.py:694:30
	s_clause 0x1
	buffer_load_b128 v[17:20], v189, s[88:91], 0 offen
	buffer_load_b128 v[13:16], v190, s[88:91], 0 offen
	.loc	1 649 37                        ; attention.py:649:37
	s_clause 0x7
	buffer_load_u16 v142, v129, s[84:87], 0 offen
	buffer_load_u16 v154, v130, s[84:87], 0 offen
	buffer_load_u16 v140, v183, s[84:87], 0 offen
	buffer_load_u16 v126, v184, s[84:87], 0 offen
	buffer_load_u16 v127, v185, s[84:87], 0 offen
	buffer_load_u16 v129, v186, s[84:87], 0 offen
	buffer_load_u16 v130, v187, s[84:87], 0 offen
	buffer_load_u16 v128, v188, s[84:87], 0 offen
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[9:12], v191, s[88:91], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v159, v170
	.loc	1 694 30                        ; attention.py:694:30
	v_add_nc_u32_e32 v170, 0, v48
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v160, v169
	v_mov_b32_e32 v169, v109
	v_cvt_f32_i32_e32 v155, v167
	v_cvt_f32_i32_e32 v167, v172
	v_cvt_f32_i32_e32 v166, v171
	v_cvt_f32_i32_e32 v156, v168
	v_mov_b32_e32 v168, v110
	v_cvt_f32_i32_e32 v157, v174
	v_cvt_f32_i32_e32 v162, v175
	v_cvt_f32_i32_e32 v150, v181
	v_cvt_f32_i32_e32 v152, v178
	v_cvt_f32_i32_e32 v163, v177
	v_cvt_f32_i32_e32 v158, v173
	v_cvt_f32_i32_e32 v161, v176
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v139
	v_dual_mul_f32 v131, v107, v131 :: v_dual_mul_f32 v132, v108, v132
	v_cvt_f32_i32_e32 v139, v149
	v_cvt_f32_i32_e32 v149, v180
	v_cvt_f32_i32_e32 v151, v179
	v_cvt_f32_i32_e32 v153, v182
	v_dual_mul_f32 v134, v103, v134 :: v_dual_mul_f32 v135, v106, v135
	v_dual_mul_f32 v136, v103, v136 :: v_dual_mul_f32 v137, v108, v137
	v_mul_f32_e32 v139, v103, v139
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v176.h, v111.h
	v_mov_b16_e64 v171.h, v111.h
	v_mov_b16_e64 v178.h, v111.h
	v_mov_b16_e64 v174.h, v111.h
	v_mov_b16_e64 v175.h, v111.h
	v_mov_b16_e64 v182.h, v111.h
	v_mov_b16_e64 v172.h, v111.h
	v_mov_b16_e64 v180.h, v111.h
	v_mov_b16_e32 v110.h, v111.h
	v_mov_b16_e64 v181.h, v111.h
	v_mov_b16_e64 v179.h, v111.h
	v_mov_b16_e64 v177.h, v111.h
	v_mov_b16_e64 v173.h, v111.h
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v133, v106, v133
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(35)
	ds_store_b128 v170, v[21:24]
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v21, s94, v74
	v_or_b32_e32 v22, s94, v73
	v_or_b32_e32 v23, s94, v76
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v24, v106, v156
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s2, v21, v83
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s4, v21, v84
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v21, s94, v72
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s5, v22, v83
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s6, v22, v84
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v22, s94, v71
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s64, v23, v83
	v_cmp_ge_i32_e64 s7, v21, v83
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s8, v21, v84
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v21, s94, v70
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s9, v22, v83
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s10, v22, v84
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v22, s94, v69
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s65, v23, v84
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s11, v21, v83
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s12, v21, v84
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v21, s94, v68
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s13, v22, v83
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s14, v22, v84
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v22, s94, v67
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v124, 16, v124
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s15, v21, v83
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s16, v21, v84
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v21, s94, v66
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s17, v22, v83
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s18, v22, v84
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v22, s94, v65
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v122, 16, v122
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s19, v21, v83
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s20, v21, v84
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v21, s94, v64
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s21, v22, v83
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s22, v22, v84
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v22, s94, v63
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v125, 16, v125
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s23, v21, v83
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s24, v21, v84
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v21, s94, v62
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s25, v22, v83
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s26, v22, v84
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v22, s94, v61
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v23, v107, v141
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s27, v21, v83
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s28, v21, v84
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v21, s94, v60
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s29, v22, v83
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s30, v22, v84
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v22, s94, v59
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v141, v107, v149
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s31, v21, v83
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s33, v21, v84
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v21, s94, v58
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s34, v22, v83
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s35, v22, v84
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v22, s94, v57
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s2, s2, s4
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s36, v21, v83
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s37, v21, v84
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v21, s94, v56
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s38, v22, v83
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s40, v22, v84
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v22, s94, v55
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s4, s7, s8
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s39, v21, v83
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s41, v21, v84
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v21, s94, v54
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s42, v22, v83
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s43, v22, v84
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v22, s94, v53
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s8, s13, s14
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s44, v21, v83
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s45, v21, v84
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v21, s94, v52
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s46, v22, v83
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s47, v22, v84
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v22, s94, v51
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(10)
	ds_store_b128 v170, v[17:20] offset:2048
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s48, v21, v83
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s49, v21, v84
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v21, s94, v50
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s50, v22, v83
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s51, v22, v84
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v22, s94, v49
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(9)
	ds_store_b128 v170, v[13:16] offset:4096
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s52, v21, v83
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s53, v21, v84
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v21, s94, v47
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(0)
	ds_store_b128 v170, v[9:12] offset:6144
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v9, v108, v167 :: v_dual_lshlrev_b32 v10, 16, v165
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s54, v22, v83
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s55, v22, v84
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v22, s94, v79
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s56, v21, v83
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s57, v21, v84
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v21, s94, v78
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v109, v9, v10 :: v_dual_lshlrev_b32 v10, 16, v164
	v_mul_f32_e32 v9, v107, v166
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s58, v22, v83
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s59, v22, v84
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v22, s94, v77
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s60, v21, v83
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s61, v21, v84
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v21, s94, v75
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v166, v9, v10 :: v_dual_mul_f32 v9, v106, v159
	v_dual_mul_f32 v10, v103, v160 :: v_dual_mul_f32 v11, v108, v161
	v_dual_mul_f32 v12, v107, v162 :: v_dual_mul_f32 v13, v106, v157
	v_dual_mul_f32 v15, v107, v163 :: v_dual_mul_f32 v18, v106, v145
	v_dual_mul_f32 v16, v108, v143 :: v_dual_mul_f32 v17, v107, v144
	v_mul_f32_e32 v143, v108, v150
	v_mul_f32_e32 v145, v103, v152
	v_dual_mul_f32 v125, v13, v125 :: v_dual_lshlrev_b32 v140, 16, v140
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s62, v22, v83
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s63, v22, v84
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s66, v21, v83
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s67, v21, v84
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v14, v103, v158
	v_dual_mul_f32 v19, v103, v146 :: v_dual_mul_f32 v20, v106, v147
	v_dual_mul_f32 v21, v103, v148 :: v_dual_mul_f32 v22, v108, v155
	v_dual_mul_f32 v124, v9, v124 :: v_dual_lshlrev_b32 v147, 16, v154
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v142, 16, v142
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v122, v10, v122 :: v_dual_lshlrev_b32 v123, 16, v123
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v118, 16, v118
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v140, v15, v140 :: v_dual_lshlrev_b32 v113, 16, v113
	v_dual_mul_f32 v147, v11, v147 :: v_dual_lshlrev_b32 v120, 16, v120
	v_dual_mul_f32 v142, v12, v142 :: v_dual_lshlrev_b32 v121, 16, v121
	v_dual_mul_f32 v123, v14, v123 :: v_dual_lshlrev_b32 v114, 16, v114
	v_dual_mul_f32 v118, v17, v118 :: v_dual_lshlrev_b32 v119, 16, v119
	v_dual_mul_f32 v113, v19, v113 :: v_dual_lshlrev_b32 v116, 16, v116
	v_dual_mul_f32 v120, v22, v120 :: v_dual_lshlrev_b32 v117, 16, v117
	v_dual_mul_f32 v121, v16, v121 :: v_dual_lshlrev_b32 v112, 16, v112
	v_dual_mul_f32 v114, v18, v114 :: v_dual_lshlrev_b32 v115, 16, v115
	v_dual_mul_f32 v119, v20, v119 :: v_dual_lshlrev_b32 v32, 16, v32
	v_dual_mul_f32 v116, v23, v116 :: v_dual_lshlrev_b32 v25, 16, v25
	v_dual_mul_f32 v117, v24, v117 :: v_dual_lshlrev_b32 v26, 16, v26
	v_dual_mul_f32 v112, v132, v112 :: v_dual_lshlrev_b32 v31, 16, v31
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v144, v106, v151
	v_dual_mul_f32 v146, v108, v153 :: v_dual_mul_f32 v115, v21, v115
	v_dual_mul_f32 v32, v131, v32 :: v_dual_lshlrev_b32 v27, 16, v27
	v_dual_mul_f32 v25, v134, v25 :: v_dual_lshlrev_b32 v30, 16, v30
	v_dual_mul_f32 v26, v133, v26 :: v_dual_lshlrev_b32 v29, 16, v29
	v_dual_mul_f32 v31, v137, v31 :: v_dual_lshlrev_b32 v130, 16, v130
	v_dual_mul_f32 v28, v138, v28 :: v_dual_lshlrev_b32 v127, 16, v127
	v_dual_mul_f32 v27, v136, v27 :: v_dual_lshlrev_b32 v128, 16, v128
	v_dual_mul_f32 v30, v135, v30 :: v_dual_lshlrev_b32 v129, 16, v129
	v_dual_mul_f32 v29, v139, v29 :: v_dual_lshlrev_b32 v126, 16, v126
	v_dual_mul_f32 v130, v143, v130 :: v_dual_mul_f32 v131, s103, v140
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v127, v144, v127 :: v_dual_mul_f32 v128, v146, v128
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v123, s101, v123 :: v_dual_mul_f32 v32, s103, v32
	v_mul_f32_e32 v25, s101, v25
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s14, s25, s26
	s_and_b32 s25, s56, s57
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v129, v141, v129
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s25, vcc_lo, s25
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v126, v145, v126 :: v_dual_mul_f32 v125, s102, v125
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v122, s101, v122 :: v_dual_mul_f32 v117, s102, v117
	v_dual_mul_f32 v120, s104, v120 :: v_dual_mul_f32 v115, s101, v115
	v_dual_mul_f32 v116, s103, v116 :: v_dual_mul_f32 v121, s104, v121
	v_dual_mul_f32 v118, s103, v118 :: v_dual_mul_f32 v113, s101, v113
	v_dual_mul_f32 v114, s102, v114 :: v_dual_mul_f32 v119, s102, v119
	v_dual_mul_f32 v27, s101, v27 :: v_dual_mul_f32 v112, s104, v112
	v_dual_mul_f32 v26, s102, v26 :: v_dual_mul_f32 v31, s104, v31
	v_dual_mul_f32 v30, s102, v30 :: v_dual_mul_f32 v29, s101, v29
	v_dual_mul_f32 v128, s104, v128 :: v_dual_mul_f32 v127, s102, v127
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v25, 0xff800000, v25, s25
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v130, s104, v130
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 vcc_hi, s5, s6
	s_and_b32 s5, s9, s10
	s_and_b32 s6, s11, s12
	s_and_b32 s9, s15, s16
	s_and_b32 s10, s17, s18
	s_and_b32 s11, s19, s20
	s_and_b32 s12, s21, s22
	s_and_b32 s13, s23, s24
	s_and_b32 s20, s27, s28
	s_and_b32 s15, s29, s30
	s_and_b32 s16, s31, s33
	s_and_b32 s17, s34, s35
	s_and_b32 s18, s36, s37
	s_and_b32 s19, s38, s40
	s_and_b32 s26, s46, s47
	s_and_b32 s21, s48, s49
	s_and_b32 s22, s50, s51
	s_and_b32 s24, s54, s55
	s_and_b32 s30, s58, s59
	s_and_b32 s7, s60, s61
	s_and_b32 s12, vcc_lo, s12
	s_and_b32 s13, vcc_lo, s13
	s_and_b32 s14, vcc_lo, s14
	s_and_b32 s15, vcc_lo, s15
	s_and_b32 s16, vcc_lo, s16
	s_and_b32 s17, vcc_lo, s17
	s_and_b32 s18, vcc_lo, s18
	s_and_b32 s19, vcc_lo, s19
	s_and_b32 s20, vcc_lo, s20
	s_and_b32 s21, vcc_lo, s21
	s_and_b32 s22, vcc_lo, s22
	s_and_b32 s24, vcc_lo, s24
	s_and_b32 s26, vcc_lo, s26
	s_and_b32 s30, vcc_lo, s30
	s_and_b32 s35, vcc_lo, s7
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v132, s103, v142 :: v_dual_mul_f32 v109, s104, v109
	v_dual_mul_f32 v133, s103, v166 :: v_dual_mul_f32 v124, s102, v124
	v_dual_mul_f32 v28, s103, v28 :: v_dual_mul_f32 v129, s103, v129
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v119, 0xff800000, v119, s20
	v_cndmask_b32_e64 v115, 0xff800000, v115, s15
	v_cndmask_b32_e64 v120, 0xff800000, v120, s13
	v_cndmask_b32_e64 v116, 0xff800000, v116, s14
	v_cndmask_b32_e64 v117, 0xff800000, v117, s12
	v_cndmask_b32_e64 v118, 0xff800000, v118, s17
	v_cndmask_b32_e64 v114, 0xff800000, v114, s18
	v_cndmask_b32_e64 v113, 0xff800000, v113, s19
	v_cndmask_b32_e64 v121, 0xff800000, v121, s16
	v_cndmask_b32_e64 v30, 0xff800000, v30, s26
	v_cndmask_b32_e64 v27, 0xff800000, v27, s21
	v_cndmask_b32_e64 v26, 0xff800000, v26, s24
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v134, s104, v147
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v112, 0xff800000, v112, s22
	v_cndmask_b32_e64 v130, 0xff800000, v130, s35
	v_cndmask_b32_e64 v128, 0xff800000, v128, s30
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v126, s101, v126
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s23, s52, s53
	s_and_b32 s29, s39, s41
	s_and_b32 s27, s42, s43
	s_and_b32 s28, s44, s45
	s_and_b32 s33, s64, s65
	s_and_b32 s34, s66, s67
	s_and_b32 s2, vcc_lo, s2
	s_and_b32 s4, vcc_lo, s4
	s_and_b32 s5, vcc_lo, s5
	s_and_b32 s6, vcc_lo, s6
	s_and_b32 s8, vcc_lo, s8
	s_and_b32 s9, vcc_lo, s9
	s_and_b32 s10, vcc_lo, s10
	s_and_b32 s11, vcc_lo, s11
	s_and_b32 s23, vcc_lo, s23
	s_and_b32 s27, vcc_lo, s27
	s_and_b32 s28, vcc_lo, s28
	s_and_b32 s29, vcc_lo, s29
	s_and_b32 s33, vcc_lo, s33
	s_and_b32 s34, vcc_lo, s34
	s_and_b32 s36, vcc_lo, vcc_hi
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v132, 0xff800000, v132, s4
	v_cndmask_b32_e64 v125, 0xff800000, v125, s5
	v_cndmask_b32_e64 v123, 0xff800000, v123, s6
	v_cndmask_b32_e64 v133, 0xff800000, v133, s9
	v_cndmask_b32_e64 v124, 0xff800000, v124, s10
	v_cndmask_b32_e64 v122, 0xff800000, v122, s11
	v_cndmask_b32_e64 v135, 0xff800000, v109, s8
	v_cndmask_b32_e64 v131, 0xff800000, v131, s2
	v_cndmask_b32_e64 v32, 0xff800000, v32, s23
	v_cndmask_b32_e64 v29, 0xff800000, v29, s29
	v_cndmask_b32_e64 v31, 0xff800000, v31, s27
	v_cndmask_b32_e64 v28, 0xff800000, v28, s28
	v_cndmask_b32_e64 v127, 0xff800000, v127, s33
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v138, v116, v120, v117
	v_max3_f32 v139, v113, v114, v118
	v_max3_f32 v140, v121, v115, v119
	v_max_f32_e32 v141, v25, v26
.Ltmp2:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v134, 0xff800000, v134, s36
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v142, v112, v27, v30
	v_max_f32_e32 v145, v130, v128
.Ltmp4:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v126, 0xff800000, v126, s34
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s31, s62, s63
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v109, v122, v124, v133
.Ltmp6:
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s31, vcc_lo, s31
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v136, v135, v123, v125
.Ltmp8:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v129, 0xff800000, v129, s31
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v137, v132, v134, v131
	v_max3_f32 v143, v28, v31, v29
	v_max_f32_e32 v144, v126, v127
	v_max3_f32 v138, v139, v140, v138
	v_max3_f32 v139, v141, v32, v142
	v_max3_f32 v109, v109, v136, v137
.Ltmp10:
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s7, 0xff800000, v169
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v136, v144, v129, v145
.Ltmp12:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v170.h, v111.h
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v137, v139, v143, v138
.Ltmp14:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v164.h, v111.h
	v_mov_b16_e64 v165.h, v111.h
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v109, v137, v109, v136
.Ltmp16:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v9, v81
	ds_load_u16_d16 v10, v81 offset:256
	ds_load_u16_d16 v11, v81 offset:512
	ds_load_u16_d16 v12, v81 offset:768
	ds_load_u16_d16 v13, v81 offset:1024
	ds_load_u16_d16 v14, v81 offset:1280
	ds_load_u16_d16 v15, v81 offset:1536
	ds_load_u16_d16 v16, v81 offset:1792
	ds_load_u16_d16 v17, v81 offset:2048
	ds_load_u16_d16 v18, v81 offset:2304
	ds_load_u16_d16 v19, v81 offset:2560
	ds_load_u16_d16 v20, v81 offset:2816
	ds_load_u16_d16 v21, v81 offset:3072
	ds_load_u16_d16 v22, v81 offset:3328
	ds_load_u16_d16 v23, v81 offset:3584
	ds_load_u16_d16 v24, v81 offset:3840
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s94, s94, 64
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v136, v109, s100, 0xfedcba98 op_sel:[1,0]
.Ltmp18:
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s94, s95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v109, v169, v109, v136
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v25, v25, v109
	v_sub_f32_e32 v114, v114, v109
	v_sub_f32_e32 v122, v122, v109
	v_sub_f32_e32 v123, v123, v109
	v_sub_f32_e32 v27, v27, v109
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v25, v25
	v_exp_f32_e32 v114, v114
	v_exp_f32_e32 v138, v122
	v_exp_f32_e32 v140, v123
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v129, v129, v109
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v27, v27
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v117, v117, v109
	v_sub_f32_e32 v135, v135, v109
	v_sub_f32_e32 v127, v127, v109
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v143, v129
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v25, 0, v25, s25
	v_cndmask_b32_e64 v148, 0, v114, s18
	v_cndmask_b32_e64 v155, 0, v138, s11
	v_cndmask_b32_e64 v129, 0, v140, s6
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v119, v119, v109
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v176.l, v25.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v118, v118, v109
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v27, 0, v27, s21
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v117, v117
	v_exp_f32_e32 v119, v119
	v_exp_f32_e32 v135, v135
	v_exp_f32_e32 v118, v118
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v178.l, v27.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v133, v133, v109
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v127, v127
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v126, v126, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_sub_f32 v137, v132, v109 :: v_dual_and_b32 v150, 1, v178
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v133, v133
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v153, 0, v119, s20
	v_cndmask_b32_e64 v119, 0, v117, s12
	s_delay_alu instid0(TRANS32_DEP_3)
	v_cndmask_b32_e64 v122, 0, v118, s17
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v29, v29, v109
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v117, 0, v135, s8
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v174.l, v153.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v131, v131, v109
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v142, v126
	v_exp_f32_e32 v29, v29
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v156, 0, v133, s9
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v158, 1, v174
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v131, v131
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v31, v31, v109
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v172.l, v148.h
	v_mov_b16_e64 v182.l, v156.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v130, v130, v109
	v_sub_f32_e32 v134, v134, v109
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v31, v31
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v147, 0, v29, s29
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v161, 1, v182
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v144, v130
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v130, 0, v131, s2
	v_cndmask_b32_e64 v131, 0, v127, s33
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v171.l, v147.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v124, v124, v109
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v114, 0, v142, s34
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v121, v121, v109
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v137, v137
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v151, 1, v172
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v139, v124
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v124, 0, v31, s27
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v134, v134
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v180.l, v130.h
	v_mov_b16_e64 v181.l, v155.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v127, 0, v144, s35
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v170.l, v129.h
	v_cmp_o_f32_e64 s6, v25, v25
	v_add3_u32 v151, v148, v151, 0x7fff
	v_mov_b16_e64 v165.l, v131.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v118, 0, v139, s10
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v113, v113, v109
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v164.l, v127.h
	v_and_b32_e32 v162, 1, v180
	v_cmp_o_f32_e64 s29, v131, v131
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v140, v155, v118
.Ltmp20:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v113, v113
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v120, v120, v109
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s9, v153, v153
	v_cmp_o_f32_e64 s11, v155, v155
	v_cmp_o_f32_e64 s12, v156, v156
	v_cmp_o_f32_e64 s25, v122, v122
	v_cmp_o_f32_e64 s33, v118, v118
	v_cmp_o_f32_e64 s34, v117, v117
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v123, 0, v113, s19
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v112, v112, v109
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s19, v114, v114
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v135, v147, v123
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp22:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v112, v112
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v126, 0, v112, s22
	v_cndmask_b32_e64 v112, 0, v143, s31
	.loc	1 689 74 is_stmt 1              ; attention.py:689:74
	v_sub_f32_e32 v136, v169, v109
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s31, v119, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s21, v126, v126
	v_cmp_o_f32_e64 s17, v112, v112
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v132, v136
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v136, v120
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v132, 0, v132, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v154, 0, v136, s13
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v28, v28, v109
	v_sub_f32_e32 v128, v128, v109
.Ltmp23:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v136, v148, v122 :: v_dual_mul_f32 v1, v1, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v139, v154, v119
.Ltmp24:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v145, v128
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v128, 0, v137, s4
.Ltmp25:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v135, v135, v136 :: v_dual_and_b32 v160, 1, v181
.Ltmp26:
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v3, v3, v132
	v_mul_f32_e32 v6, v6, v132
	v_mul_f32_e32 v5, v5, v132
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v179.l, v128.h
	v_mov_b16_e64 v175.l, v154.h
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v146, 0, v28, s28
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v32, v32, v109
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v113, 0, v145, s30
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s27, v128, v128
	v_cmp_o_f32_e64 s30, v127, v127
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v31, v146, v124
.Ltmp28:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v32, v32
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v110.l, v146.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v125, v125, v109
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v8, v8, v132 :: v_dual_and_b32 v159, 1, v175
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s28, v130, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v110, 1, v110
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v141, v125
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s4, v27, v27
	v_cmp_o_f32_e64 s13, v146, v146
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v32, 0, v32, s23
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v26, v26, v109
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s23, v124, v124
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v2, v2, v132
	v_mul_f32_e32 v4, v4, v132
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v29, v32, v126
.Ltmp30:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v26, v26
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v177.l, v32.h
	v_cmp_o_f32_e64 s2, v32, v32
	v_cmp_o_f32_e64 s10, v154, v154
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v149, 1, v177
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v26, 0, v26, s24
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s24, v123, v123
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v111.l, v26.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v116, v116, v109
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v28, v25, v26 :: v_dual_and_b32 v145, 1, v111
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v116, v116
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v133, v28, v29 :: v_dual_add_f32 v28, v130, v114
.Ltmp34:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v121, v121
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v29, v131, v112
.Ltmp36:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v111.l, v126.h
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v7, v7, v132
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v130, v130, v162, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v120, 0, v116, s14
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v115, v115, v109
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v116, 0, v141, s5
	v_cndmask_b32_e64 v152, 0, v121, s16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp37:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v141, v156, v117 :: v_dual_add_f32 v138, v153, v120
.Ltmp38:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v115, v115
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v142, v129, v116
.Ltmp40:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s14, v147, v147
	v_cmp_o_f32_e64 s5, v26, v26
	v_mov_b16_e64 v173.l, v152.h
	v_cmp_o_f32_e64 s8, v152, v152
	v_cmp_o_f32_e64 s7, v120, v120
	v_cmp_o_f32_e64 s35, v116, v116
	v_cmp_o_f32_e64 s16, v113, v113
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v121, 0, v115, s15
	v_cndmask_b32_e64 v115, 0, v134, s36
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v30, v30, v109
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s15, v148, v148
	v_add3_u32 v148, v156, v161, 0x7fff
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v137, v152, v121
	v_add_f32_e32 v143, v128, v115
.Ltmp42:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v30, v30
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v161, 1, v179
	v_cmp_o_f32_e64 s18, v121, v121
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v136, v137, v138 :: v_dual_add_f32 v137, v139, v140
	v_add_f32_e32 v139, v143, v28
.Ltmp44:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v143, v26, v145, 0x7fff
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v138, v141, v142 :: v_dual_and_b32 v145, 1, v171
.Ltmp46:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v141, v27, v150, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v125, 0, v30, s26
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s26, v129, v129
	v_add3_u32 v150, v147, v145, 0x7fff
	v_add3_u32 v147, v155, v160, 0x7fff
	v_and_b32_e32 v160, 1, v170
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v30, v27, v125
.Ltmp48:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v157, 1, v173
	v_add3_u32 v128, v128, v161, 0x7fff
	v_add3_u32 v145, v153, v158, 0x7fff
	v_add3_u32 v129, v129, v160, 0x7fff
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v134, v30, v31
	v_dual_add_f32 v30, v127, v113 :: v_dual_and_b32 v31, 1, v176
.Ltmp50:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v164, 1, v164
	v_and_b32_e32 v160, 1, v111
	v_mov_b16_e32 v111.l, v125.h
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v144, v29, v30
.Ltmp52:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v142, v25, v31, 0x7fff
	v_and_b32_e32 v163, 1, v165
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v133, v133, v134 :: v_dual_add_f32 v134, v135, v136
	v_dual_add_f32 v135, v137, v138 :: v_dual_and_b32 v138, 1, v111
	v_add_f32_e32 v136, v139, v144
.Ltmp54:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v127, v127, v164, 0x7fff
	v_cndmask_b16 v137.h, 0x7fff, v143.h, s5
	v_cndmask_b16 v137.l, 0x7fff, v142.h, s6
	v_mov_b16_e32 v111.l, v124.h
	v_add3_u32 v140, v32, v149, 0x7fff
	v_add3_u32 v149, v146, v110, 0x7fff
	v_add3_u32 v110, v152, v157, 0x7fff
	v_cmp_o_f32_e64 s22, v125, v125
	v_add3_u32 v126, v126, v160, 0x7fff
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v133, v133, v134 :: v_dual_add_f32 v134, v135, v136
.Ltmp56:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v145.l, 0x7fff, v128.h, s27
	v_cndmask_b16 v148.l, 0x7fff, v127.h, s30
	v_and_b32_e32 v127, 1, v111
	v_permlanex16_b32 v128, v137, s100, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v125, v125, v138, 0x7fff
	v_mov_b16_e32 v111.l, v123.h
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v25, v81 offset:4096
	ds_load_u16_d16 v26, v81 offset:4352
	ds_load_u16_d16 v27, v81 offset:4608
	ds_load_u16_d16 v28, v81 offset:4864
	ds_load_u16_d16 v29, v81 offset:5120
	ds_load_u16_d16 v30, v81 offset:5376
	ds_load_u16_d16 v31, v81 offset:5632
	ds_load_u16_d16 v32, v81 offset:5888
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v146, v154, v159, 0x7fff
	v_add3_u32 v131, v131, v163, 0x7fff
	v_cndmask_b16 v110.l, 0x7fff, v140.h, s2
	v_cndmask_b16 v135.l, 0x7fff, v110.h, s8
	v_cndmask_b16 v144.l, 0x7fff, v129.h, s26
	v_cndmask_b16 v146.l, 0x7fff, v130.h, s28
	v_cndmask_b16 v110.h, 0x7fff, v126.h, s21
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v130, v133, v134
.Ltmp58:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v126, v124, v127, 0x7fff
	v_perm_b32 v124, v128, v137, v104
	v_cndmask_b16 v129.h, 0x7fff, v125.h, s22
	v_perm_b32 v125, v128, v137, v105
	v_and_b32_e32 v128, 1, v111
	v_mov_b16_e32 v111.l, v122.h
	v_cndmask_b16 v129.l, 0x7fff, v141.h, s4
	v_cndmask_b16 v131.l, 0x7fff, v149.h, s13
	v_cndmask_b16 v147.l, 0x7fff, v131.h, s29
	v_permlanex16_b32 v127, v110, s100, 0xfedcba98 op_sel:[1,0]
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v133, v130, s100, 0xfedcba98 op_sel:[1,0]
.Ltmp60:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v131.h, 0x7fff, v126.h, s23
	v_and_b32_e32 v137, 1, v111
	v_add3_u32 v123, v123, v128, 0x7fff
	v_mov_b16_e32 v111.l, v121.h
	v_perm_b32 v126, v127, v110, v104
	v_permlanex16_b32 v134, v129, s100, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v127, v127, v110, v105
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v110, v130, v133
.Ltmp62:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v133, v131, s100, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v139.h, 0x7fff, v123.h, s24
	v_and_b32_e32 v123, 1, v111
	v_mov_b16_e32 v111.l, v120.h
	v_perm_b32 v128, v134, v129, v104
	v_perm_b32 v129, v134, v129, v105
	v_perm_b32 v130, v133, v131, v104
	v_perm_b32 v131, v133, v131, v105
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v110, v168, v132
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v121, v121, v123, 0x7fff
	v_and_b32_e32 v123, 1, v111
	v_mov_b16_e32 v111.l, v119.h
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v152, v81 offset:6144
	ds_load_u16_d16 v153, v81 offset:6400
	ds_load_u16_d16 v154, v81 offset:6656
	ds_load_u16_d16 v155, v81 offset:6912
	ds_load_u16_d16 v156, v81 offset:7168
	ds_load_u16_d16 v157, v81 offset:7424
	ds_load_u16_d16 v158, v81 offset:7680
	ds_load_u16_d16 v159, v81 offset:7936
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v9, v81 offset:128
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v10, v81 offset:384
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v11, v81 offset:640
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v12, v81 offset:896
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v13, v81 offset:1152
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v14, v81 offset:1408
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v15, v81 offset:1664
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v16, v81 offset:1920
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v17, v81 offset:2176
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v18, v81 offset:2432
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v19, v81 offset:2688
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v20, v81 offset:2944
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v21, v81 offset:3200
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v22, v81 offset:3456
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v23, v81 offset:3712
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v24, v81 offset:3968
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v25, v81 offset:4224
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v26, v81 offset:4480
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v27, v81 offset:4736
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v28, v81 offset:4992
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v29, v81 offset:5248
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v30, v81 offset:5504
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v31, v81 offset:5760
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v32, v81 offset:6016
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v122, v122, v137, 0x7fff
	v_cndmask_b16 v139.l, 0x7fff, v150.h, s14
	v_cndmask_b16 v140.l, 0x7fff, v151.h, s15
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[124:131], v[1:8]
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v13, v120, v123, 0x7fff
	v_and_b32_e32 v14, 1, v111
	v_mov_b16_e32 v111.l, v118.h
	v_cndmask_b16 v136.l, 0x7fff, v145.h, s9
	v_cndmask_b16 v140.h, 0x7fff, v122.h, s25
	v_cndmask_b16 v135.h, 0x7fff, v121.h, s18
	v_cndmask_b16 v136.h, 0x7fff, v13.h, s7
	v_add3_u32 v16, v119, v14, 0x7fff
	v_and_b32_e32 v119, 1, v111
	v_mov_b16_e32 v111.l, v117.h
	v_permlanex16_b32 v122, v139, s100, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v140, s100, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v135, s100, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v120, v136, s100, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v118, v118, v119, 0x7fff
	v_and_b32_e32 v119, 1, v111
	v_mov_b16_e32 v111.l, v116.h
	v_perm_b32 v9, v122, v139, v104
	v_perm_b32 v10, v122, v139, v105
	v_perm_b32 v11, v12, v140, v104
	v_perm_b32 v12, v12, v140, v105
	v_perm_b32 v13, v15, v135, v104
	v_perm_b32 v14, v15, v135, v105
	v_cndmask_b16 v141.h, 0x7fff, v16.h, s31
	v_perm_b32 v15, v120, v136, v104
	v_perm_b32 v16, v120, v136, v105
	v_cndmask_b16 v142.h, 0x7fff, v118.h, s33
	v_and_b32_e32 v118, 1, v111
	v_mov_b16_e32 v111.l, v115.h
	v_cmp_o_f32_e64 s20, v115, v115
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[17:24], v[9:16], v[1:8]
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v117, v117, v119, 0x7fff
	v_add3_u32 v13, v116, v118, 0x7fff
	v_and_b32_e32 v14, 1, v111
	v_mov_b16_e32 v111.l, v114.h
	v_cndmask_b16 v141.l, 0x7fff, v146.h, s10
	v_cndmask_b16 v142.l, 0x7fff, v147.h, s11
	v_cndmask_b16 v143.l, 0x7fff, v148.h, s12
	v_add3_u32 v17, v115, v14, 0x7fff
	v_and_b32_e32 v16, 1, v111
	v_mov_b16_e32 v111.l, v112.h
	v_cndmask_b16 v143.h, 0x7fff, v117.h, s34
	v_cndmask_b16 v144.h, 0x7fff, v13.h, s35
	v_cndmask_b16 v145.h, 0x7fff, v17.h, s20
	v_add3_u32 v17, v114, v16, 0x7fff
	v_and_b32_e32 v19, 1, v111
	v_mov_b16_e32 v111.l, v113.h
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	ds_load_u16_d16_hi v152, v81 offset:6272
	ds_load_u16_d16_hi v153, v81 offset:6528
	ds_load_u16_d16_hi v154, v81 offset:6784
	ds_load_u16_d16_hi v155, v81 offset:7040
	ds_load_u16_d16_hi v156, v81 offset:7296
	ds_load_u16_d16_hi v157, v81 offset:7552
	ds_load_u16_d16_hi v158, v81 offset:7808
	ds_load_u16_d16_hi v159, v81 offset:8064
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v120, v141, s100, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v142, s100, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v143, s100, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v20, 1, v111
	v_permlanex16_b32 v18, v144, s100, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v19, v112, v19, 0x7fff
	v_cndmask_b16 v146.h, 0x7fff, v17.h, s19
	v_perm_b32 v9, v120, v141, v104
	v_add3_u32 v17, v113, v20, 0x7fff
	v_perm_b32 v10, v120, v141, v105
	v_perm_b32 v11, v12, v142, v104
	v_perm_b32 v12, v12, v142, v105
	v_perm_b32 v13, v15, v143, v104
	v_perm_b32 v14, v15, v143, v105
	v_perm_b32 v15, v18, v144, v104
	v_perm_b32 v16, v18, v144, v105
	v_cndmask_b16 v147.h, 0x7fff, v19.h, s17
	v_cndmask_b16 v148.h, 0x7fff, v17.h, s16
	v_permlanex16_b32 v18, v145, s100, 0xfedcba98 op_sel:[1,0]
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[25:32], v[9:16], v[1:8]
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v12, v146, s100, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v147, s100, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v148, s100, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v9, v18, v145, v104
	v_perm_b32 v10, v18, v145, v105
	v_perm_b32 v11, v12, v146, v104
	v_perm_b32 v12, v12, v146, v105
	v_perm_b32 v13, v14, v147, v104
	v_perm_b32 v14, v14, v147, v105
	v_perm_b32 v15, v16, v148, v104
	v_perm_b32 v16, v16, v148, v105
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[152:159], v[9:16], v[1:8]
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v109, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v110, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 825 26 is_stmt 1              ; attention.py:825:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v46
	.loc	1 822 31                        ; attention.py:822:31
	s_mul_i32 s93, s93, s3
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s0, s79, 2
	.loc	1 822 31                        ; attention.py:822:31
	s_add_i32 s1, s92, s93
	.loc	1 833 13                        ; attention.py:833:13
	s_mov_b32 s2, exec_lo
	.loc	1 825 17                        ; attention.py:825:17
	v_dual_cndmask_b32 v9, 0xff800000, v109 :: v_dual_cndmask_b32 v2, 0, v2
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v14, 0, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v15, 0, v7 :: v_dual_mov_b32 v10, v9
	.loc	1 828 36                        ; attention.py:828:36
	v_cndmask_b32_e32 v11, 0, v110, vcc_lo
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_cndmask_b32 v12, 0, v4
.Ltmp64:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v13, 0, v5 :: v_dual_cndmask_b32 v16, 0, v8
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp66:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v3, 0, v3 :: v_dual_mov_b32 v6, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v17, v13 :: v_dual_mov_b32 v20, v16
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v4, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v7, v2 :: v_dual_mov_b32 v8, v3
.Ltmp70:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v5, v11
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp72:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v4, v9, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp74:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp76:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_dual_mov_b32 v9, v4 :: v_dual_add_f32 v2, v2, v7
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v5, v11, v5
.Ltmp79:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v3, v3, v8
	v_dual_add_f32 v1, v1, v6 :: v_dual_mov_b32 v8, v2
.Ltmp80:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v6, v5
.Ltmp82:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v10, v3
.Ltmp83:
	.loc	1 822 30 is_stmt 1              ; attention.py:822:30
	s_mul_i32 s0, s1, s0
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v9, v9, v9
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp87:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v14
.Ltmp88:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v2, v2, v8 :: v_dual_mov_b32 v7, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp89:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v4, v4, v9 :: v_dual_add_f32 v5, v5, v6
.Ltmp90:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v8, v3, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v10, v2
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp92:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_dual_mov_b32 v6, v4 :: v_dual_mov_b32 v3, v5
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v1, v1, v7
.Ltmp95:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp97:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v9, v1 :: v_dual_max_f32 v6, v6, v6
.Ltmp98:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v7, v5, v3
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v11, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v1, v1, v9
.Ltmp101:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v9, v4, v6
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v4, v8, v11
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v11, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v3, v2, v10 :: v_dual_mov_b32 v2, v1
.Ltmp105:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v10, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v6, v4
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp107:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v8, v7
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp109:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v11, v12, v11 :: v_dual_add_f32 v12, v13, v17
	v_add_f32_e32 v13, v14, v18
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v19, v15
.Ltmp112:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp114:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v14, v15, v19 :: v_dual_add_f32 v15, v16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v20, v15
	v_mov_b32_e32 v16, v11
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v13, v13, v18 :: v_dual_add_f32 v14, v14, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v11, v11, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v16, v15, v20
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v18, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_mov_b32 v15, v11
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v20, v16 :: v_dual_mov_b32 v19, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v13, v13, v18
	v_add_f32_e32 v11, v11, v15
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v15, v14, v19 :: v_dual_mov_b32 v18, v13
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v14, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp126:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v12, v12, v17
	v_add_f32_e32 v17, v16, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp127:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v19, v15 :: v_dual_mov_b32 v16, v12
	v_mov_b32_e32 v20, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp128:
	.loc	1 833 13                        ; attention.py:833:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp129:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v9, v9, v9
.Ltmp130:
	.loc	1 833 13                        ; attention.py:833:13
	s_ashr_i32 s1, s0, 31
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v8, v7, v8
.Ltmp132:
	.loc	1 833 13                        ; attention.py:833:13
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp133:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v7, v9, v10
.Ltmp134:
	.loc	1 833 13                        ; attention.py:833:13
	v_mov_b32_e32 v9, 0
	s_add_u32 s4, s76, s4
	s_addc_u32 s5, s77, s5
	.loc	1 834 13                        ; attention.py:834:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp135:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v8, v13, v18 :: v_dual_add_f32 v7, v12, v16
	v_add_f32_e32 v14, v11, v14
	v_dual_add_f32 v13, v4, v6 :: v_dual_add_f32 v12, v3, v5
.Ltmp136:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v3, 0xc0, v43
.Ltmp137:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v11, v1, v2 :: v_dual_and_b32 v4, 0xe0, v44
.Ltmp138:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v1, 28, v44
	v_lshlrev_b32_e32 v2, 5, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 0, v3
	v_add_nc_u32_e32 v4, 0, v4
.Ltmp139:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
.Ltmp140:
	.loc	1 571 21                        ; attention.py:571:21
	v_and_b32_e32 v5, 63, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 835 13                        ; attention.py:835:13
	v_add3_u32 v1, v3, v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v4, v[11:14]
	ds_store_b128 v4, v[7:10] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_and_b32_e32 v0, 64, v0
	.loc	1 836 17                        ; attention.py:836:17
	v_add_nc_u32_e32 v2, s0, v5
	.loc	1 838 22                        ; attention.py:838:22
	v_cmp_gt_i32_e32 vcc_lo, s79, v5
	.loc	1 835 13                        ; attention.py:835:13
	s_and_b32 s77, s77, 0xffff
	s_mov_b32 s79, 0x31027000
	v_cmp_eq_u32_e64 s0, 0, v0
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s78, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[76:79], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp141:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
		.amdhsa_next_free_vgpr 192
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_vgpr, 192
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9012
; TotalNumSgprs: 107
; NumVgprs: 192
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 107
; NumVGPRsForWavesPerEU: 192
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
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
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
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
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     107
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     192
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
