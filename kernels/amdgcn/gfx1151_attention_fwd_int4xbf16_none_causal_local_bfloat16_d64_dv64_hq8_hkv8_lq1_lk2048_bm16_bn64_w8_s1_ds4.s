	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
	v_and_b32_e32 v52, 15, v0
	s_clause 0x1
	s_load_b64 s[12:13], s[0:1], 0x80
	s_load_b32 s14, s[0:1], 0x88
	s_mov_b32 s83, 0x31027000
	s_mov_b32 s82, 0x7ffffffe
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v9, 3, v0
	.loc	1 584 86                        ; attention.py:584:86
	v_lshlrev_b32_e32 v2, 1, v52
	.loc	1 585 26                        ; attention.py:585:26
	v_lshlrev_b32_e32 v51, 1, v0
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
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e32 vcc_lo, s78, v2
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
	s_and_b32 s81, s81, 0xffff
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s16, s7, 4
	.loc	1 560 27                        ; attention.py:560:27
	s_mul_i32 s7, s7, s93
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v5, s16, v1
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s15, s16, s3
	.loc	1 560 27                        ; attention.py:560:27
	s_sub_i32 s92, s2, s7
	.loc	1 584 26                        ; attention.py:584:26
	v_add_nc_u32_e32 v3, s15, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s4, 1, v5
	.loc	1 587 22 is_stmt 0              ; attention.py:587:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 0 0                           ; attention.py:0
	s_add_i32 s4, s93, 31
	.loc	1 609 32 is_stmt 1              ; attention.py:609:32
	s_xor_b32 s8, s4, s93
	s_abs_i32 s4, s4
	s_ashr_i32 s8, s8, 31
	s_mul_hi_u32 s6, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s6, s5
	s_add_i32 s10, s6, 1
	s_sub_i32 s4, s4, s9
	s_sub_i32 s2, s4, s5
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s5
	s_cselect_b32 s2, s4, s6
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s5, s14, s16
	.loc	1 609 32                        ; attention.py:609:32
	s_xor_b32 s2, s2, s8
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s5, s5, 16
	.loc	1 609 32                        ; attention.py:609:32
	s_sub_i32 s2, s2, s8
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s6, s5, s13
	.loc	1 621 25                        ; attention.py:621:25
	s_min_i32 s5, s5, 0x800
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s6, s6, 0x800
	.loc	1 622 35                        ; attention.py:622:35
	s_add_i32 s5, s5, 63
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s6, s6, 63
	.loc	1 622 34                        ; attention.py:622:34
	s_ashr_i32 s8, s5, 31
	.loc	1 610 18                        ; attention.py:610:18
	s_mul_i32 s7, s92, s2
	.loc	1 622 34                        ; attention.py:622:34
	s_lshr_b32 s8, s8, 26
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s4, s14, s12
	.loc	1 622 34                        ; attention.py:622:34
	s_add_i32 s5, s5, s8
	.loc	1 619 34                        ; attention.py:619:34
	s_ashr_i32 s8, s6, 31
	.loc	1 622 33                        ; attention.py:622:33
	s_and_not1_b32 s5, s5, 63
	.loc	1 619 34                        ; attention.py:619:34
	s_lshr_b32 s8, s8, 26
	.loc	1 622 18                        ; attention.py:622:18
	v_mov_b32_e32 v5, s5
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[3:4], null, v3, s78, v[2:3]
	.loc	1 611 33                        ; attention.py:611:33
	s_lshl_b32 s2, s2, 6
	.loc	1 610 18                        ; attention.py:610:18
	s_lshl_b32 s7, s7, 6
	.loc	1 619 34                        ; attention.py:619:34
	s_add_i32 s5, s6, s8
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s4, s4, s16
	.loc	1 611 33                        ; attention.py:611:33
	s_add_i32 s2, s7, s2
	.loc	1 619 33                        ; attention.py:619:33
	s_and_not1_b32 s5, s5, 63
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 613 25                        ; attention.py:613:25
	s_max_i32 s4, s4, 0
	.loc	1 622 18                        ; attention.py:622:18
	v_min3_i32 v53, s2, s5, v5
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s2, s4, 0x7fffffc0
	.loc	1 585 26                        ; attention.py:585:26
	v_and_b32_e32 v4, 24, v9
	buffer_load_u16 v3, v3, s[80:83], 0 offen
	.loc	1 618 18                        ; attention.py:618:18
	s_max_i32 s94, s7, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 629 13                        ; attention.py:629:13
	v_cmp_ge_i32_e32 vcc_lo, s94, v53
	.loc	1 585 26                        ; attention.py:585:26
	v_xad_u32 v4, v51, v4, 0
	.loc	1 629 13                        ; attention.py:629:13
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(0)
	ds_store_b16 v4, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_vccnz .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 570 21 is_stmt 1              ; attention.py:570:21
	v_or_b32_e32 v3, s16, v52
	.loc	1 590 31                        ; attention.py:590:31
	v_add_lshl_u32 v4, s15, v52, 1
	v_dual_mov_b32 v7, 0x5410 :: v_dual_and_b32 v54, 1, v1
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v55, 62, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, 1, v3
	v_lshrrev_b32_e32 v5, 1, v0
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v6, 16, v0
	v_and_b32_e32 v14, 0x60, v0
	.loc	1 590 31                        ; attention.py:590:31
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_dual_mov_b32 v125, 0xff800000 :: v_dual_lshlrev_b32 v12, 3, v0
	v_lshlrev_b32_e32 v8, 4, v0
	v_and_b32_e32 v17, 24, v5
	v_mov_b32_e32 v5, v1
	v_add3_u32 v86, 0, v2, v14
	.loc	1 693 86                        ; attention.py:693:86
	v_and_b32_e32 v10, 56, v12
	v_cmp_eq_u32_e32 vcc_lo, 0, v6
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s81, s9, 0xffff
	s_mov_b32 s80, s8
	v_mov_b32_e32 v13, 0x7632
	buffer_load_u16 v11, v4, s[80:83], 0 offen
	.loc	1 585 26                        ; attention.py:585:26
	v_and_b32_e32 v4, 24, v51
	s_load_b32 s8, s[0:1], 0x68
	v_dual_mov_b32 v2, v1 :: v_dual_add_nc_u32 v15, s14, v3
	v_mov_b32_e32 v3, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v16, v52, 5, v4
	v_mov_b32_e32 v127, v1
	v_dual_mov_b32 v6, v1 :: v_dual_add_nc_u32 v87, 0, v8
	v_dual_cndmask_b32 v18, 0x1054, v7 :: v_dual_and_b32 v41, 24, v12
	v_xor_b32_e32 v14, 8, v16
	v_xor_b32_e32 v19, 16, v16
	v_add_nc_u32_e32 v88, 0, v16
	v_xor_b32_e32 v16, 24, v16
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v8, v1 :: v_dual_add_nc_u32 v115, 0, v14
	v_mov_b32_e32 v7, v1
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s1, s79, v10
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v116, 0, v19
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v62, 14, v54
	v_or_b32_e32 v63, 16, v54
	v_or_b32_e32 v64, 18, v54
	v_or_b32_e32 v65, 20, v54
	v_or_b32_e32 v66, 22, v54
	v_or_b32_e32 v67, 24, v54
	v_or_b32_e32 v68, 26, v54
	v_or_b32_e32 v69, 28, v54
	v_or_b32_e32 v70, 30, v54
	v_or_b32_e32 v71, 32, v54
	v_or_b32_e32 v72, 34, v54
	v_or_b32_e32 v73, 36, v54
	v_or_b32_e32 v74, 38, v54
	v_or_b32_e32 v75, 40, v54
	v_or_b32_e32 v76, 42, v54
	v_or_b32_e32 v77, 44, v54
	v_or_b32_e32 v78, 46, v54
	v_or_b32_e32 v79, 48, v54
	v_or_b32_e32 v80, 50, v54
	v_or_b32_e32 v81, 52, v54
	v_or_b32_e32 v82, 54, v54
	v_or_b32_e32 v83, 56, v54
	v_or_b32_e32 v84, 58, v54
	v_or_b32_e32 v85, 60, v54
	v_mov_b32_e32 v4, v1
	v_xor_b32_e32 v12, v12, v17
	.loc	1 632 32                        ; attention.py:632:32
	s_lshl_b32 s95, s3, 11
	.loc	1 664 27                        ; attention.py:664:27
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s98, s8, 0x3fb8aa3b
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v56, 2, v54
	v_or_b32_e32 v57, 4, v54
	v_or_b32_e32 v58, 6, v54
	v_or_b32_e32 v59, 8, v54
	v_or_b32_e32 v60, 10, v54
	v_or_b32_e32 v61, 12, v54
	.loc	1 636 31                        ; attention.py:636:31
	v_cmp_gt_i32_e64 s0, s78, v41
	.loc	1 670 47                        ; attention.py:670:47
	v_subrev_nc_u32_e32 v89, s12, v15
	v_or_b32_e32 v90, s95, v62
	v_or_b32_e32 v91, s95, v63
	v_or_b32_e32 v92, s95, v64
	v_or_b32_e32 v93, s95, v65
	v_or_b32_e32 v94, s95, v66
	v_or_b32_e32 v95, s95, v67
	v_or_b32_e32 v96, s95, v68
	v_or_b32_e32 v97, s95, v69
	v_or_b32_e32 v98, s95, v70
	v_or_b32_e32 v99, s95, v71
	v_or_b32_e32 v100, s95, v72
	v_or_b32_e32 v101, s95, v73
	v_or_b32_e32 v102, s95, v74
	v_or_b32_e32 v103, s95, v75
	v_or_b32_e32 v104, s95, v76
	v_or_b32_e32 v105, s95, v77
	v_or_b32_e32 v106, s95, v78
	v_or_b32_e32 v107, s95, v79
	v_or_b32_e32 v108, s95, v80
	v_or_b32_e32 v109, s95, v81
	v_or_b32_e32 v110, s95, v82
	v_or_b32_e32 v111, s95, v83
	v_or_b32_e32 v112, s95, v84
	v_or_b32_e32 v113, s95, v85
	v_add_nc_u32_e32 v118, 0, v12
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s96, s79, 5
	s_mov_b32 s69, s68
	s_mov_b32 s70, s68
	s_mov_b32 s71, s68
	s_mov_b32 s72, s68
	s_mov_b32 s73, s68
	s_mov_b32 s74, s68
	s_mov_b32 s75, s68
	s_mov_b32 s97, 0x76543210
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
	s_mov_b32 s99, s98
	s_mov_b32 s100, s98
	s_mov_b32 s101, s98
	.loc	1 585 26                        ; attention.py:585:26
	v_add_nc_u32_e32 v117, 0, v16
	.loc	1 629 13                        ; attention.py:629:13
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[42:43], null, s79, v9, v[10:11]
	v_cndmask_b32_e32 v10, 0x3276, v13, vcc_lo
	.loc	1 585 26                        ; attention.py:585:26
	ds_load_b64 v[43:44], v88
	ds_load_b64 v[45:46], v115
	ds_load_b64 v[47:48], v116
	ds_load_b64 v[49:50], v117
	v_lshl_or_b32 v9, v18, 8, v18
	.loc	1 590 31                        ; attention.py:590:31
	v_lshlrev_b32_e32 v119, 16, v11
	.loc	1 671 47                        ; attention.py:671:47
	v_add_nc_u32_e32 v20, s13, v15
	v_lshl_or_b32 v10, v10, 8, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mov_b32 v122, v119 :: v_dual_and_b32 v9, 0x540054, v9
	v_dual_mov_b32 v123, v119 :: v_dual_and_b32 v10, 0x760076, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_min_i32_e32 v114, v15, v20
	v_lshl_or_b32 v9, v9, 4, v9
	v_mov_b32_e32 v124, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v10, v10, 4, v10
	v_and_b32_e32 v120, 0x5040504, v9
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v121, 0x7060706, v10
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v17, 2, v0
	.loc	1 633 32                        ; attention.py:633:32
	s_add_i32 s4, s94, s95
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v9, s68 :: v_dual_mov_b32 v10, s69
	v_dual_mov_b32 v11, s70 :: v_dual_mov_b32 v12, s71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 633 32                        ; attention.py:633:32
	v_or_b32_e32 v17, s4, v17
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v13, s72 :: v_dual_mov_b32 v14, s73
	v_dual_mov_b32 v15, s74 :: v_dual_mov_b32 v16, s75
	.loc	1 633 32                        ; attention.py:633:32
	v_mad_u64_u32 v[17:18], null, v17, s78, v[41:42]
	v_or_b32_e32 v33, s95, v54
	v_or_b32_e32 v38, s95, v56
	v_or_b32_e32 v39, s95, v57
	v_or_b32_e32 v40, s95, v58
	v_or_b32_e32 v126, s95, v59
	v_or_b32_e32 v136, s95, v60
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	v_or_b32_e32 v137, s95, v61
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v138, v90, s94, 1
	v_add_lshl_u32 v139, v91, s94, 1
	v_add_lshl_u32 v151, v92, s94, 1
	.loc	1 634 32                        ; attention.py:634:32
	buffer_load_b64 v[17:18], v17, s[80:83], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v152, v93, s94, 1
	v_add_lshl_u32 v170, v94, s94, 1
	v_add_lshl_u32 v171, v95, s94, 1
	v_add_lshl_u32 v172, v96, s94, 1
	v_add_lshl_u32 v173, v97, s94, 1
	v_add_lshl_u32 v174, v98, s94, 1
	v_add_lshl_u32 v175, v99, s94, 1
	v_add_lshl_u32 v176, v100, s94, 1
	v_add_lshl_u32 v177, v101, s94, 1
	v_add_lshl_u32 v178, v102, s94, 1
	v_add_lshl_u32 v179, v103, s94, 1
	v_add_lshl_u32 v180, v104, s94, 1
	v_add_lshl_u32 v181, v105, s94, 1
	v_add_lshl_u32 v182, v106, s94, 1
	v_add_lshl_u32 v183, v107, s94, 1
	v_add_lshl_u32 v184, v108, s94, 1
	v_add_lshl_u32 v185, v109, s94, 1
	v_add_lshl_u32 v186, v110, s94, 1
	v_add_lshl_u32 v187, v111, s94, 1
	v_add_lshl_u32 v188, v112, s94, 1
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v118, v[17:18]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[25:28], v88 offset1:1
	ds_load_2addr_stride64_b64 v[29:32], v88 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[34:37], v115 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[25:26], v[43:44], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[128:135], v[27:28], v[43:44], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[143:150], v[29:30], v[43:44], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[31:32], v[43:44], v[9:16] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[9:12], v115 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[13:16], v116 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[34:35], v[45:46], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[128:135], v[36:37], v[45:46], v[128:135] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v34, v38, s94, 1
	v_add_lshl_u32 v35, v39, s94, 1
	v_add_lshl_u32 v36, v40, s94, 1
	v_add_lshl_u32 v37, v126, s94, 1
	v_add_lshl_u32 v38, v136, s94, 1
	v_add_lshl_u32 v39, v137, s94, 1
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v126, s94, v81
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e32 vcc_lo, v126, v89
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[143:150], v[9:10], v[45:46], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[11:12], v[45:46], v[159:166] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[9:12], v116 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[13:14], v[47:48], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[128:135], v[15:16], v[47:48], v[128:135] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[13:16], v117 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[143:150], v[9:10], v[47:48], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[11:12], v[47:48], v[159:166] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[9:12], v117 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[13:14], v[49:50], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[128:135], v[15:16], v[49:50], v[128:135] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v13, v19
	v_cvt_f32_i32_e32 v14, v20
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v15, v18
	v_cvt_f32_i32_e32 v16, v17
	v_cvt_f32_i32_e32 v17, v22
	v_cvt_f32_i32_e32 v18, v21
	v_cvt_f32_i32_e32 v19, v24
	v_cvt_f32_i32_e32 v20, v23
	v_cvt_f32_i32_e32 v142, v132
	v_cvt_f32_i32_e32 v141, v131
	v_cvt_f32_i32_e32 v140, v130
	v_cvt_f32_i32_e32 v23, v129
	v_cvt_f32_i32_e32 v24, v134
	v_cvt_f32_i32_e32 v25, v133
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[143:150], v[9:10], v[49:50], v[143:150] neg_lo:[1,1,0]
	v_mad_u64_u32 v[9:10], null, s4, s79, v[42:43]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[11:12], v[49:50], v[159:166] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v12, v33, s94, 1
	v_add_lshl_u32 v11, v113, s94, 1
	v_add_lshl_u32 v10, s4, v55, 1
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v22, v135
	v_cvt_f32_i32_e32 v26, v164
	v_dual_mov_b32 v164, v125 :: v_dual_lshlrev_b32 v33, 1, v9
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v9, v9, s96, 1
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v21, v128
	v_cvt_f32_i32_e32 v31, v143
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v158, v148
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v9, 0x80000000, v9, s1
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v157, v147
	v_cvt_f32_i32_e32 v156, v146
	v_cvt_f32_i32_e32 v155, v145
	v_cvt_f32_i32_e32 v148, v150
	v_cvt_f32_i32_e32 v147, v149
	v_cvt_f32_i32_e32 v32, v144
	v_cvt_f32_i32_e32 v154, v160
	v_cvt_f32_i32_e32 v153, v159
	v_cvt_f32_i32_e32 v27, v165
	v_cvt_f32_i32_e32 v28, v163
	v_cvt_f32_i32_e32 v29, v162
	v_cvt_f32_i32_e32 v146, v161
	v_cvt_f32_i32_e32 v30, v166
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[166:169], v33, s[88:91], 0 offen
	.loc	1 649 37                        ; attention.py:649:37
	s_clause 0x1f
	buffer_load_u16 v33, v12, s[84:87], 0 offen
	buffer_load_u16 v34, v34, s[84:87], 0 offen
	buffer_load_u16 v40, v35, s[84:87], 0 offen
	buffer_load_u16 v128, v36, s[84:87], 0 offen
	buffer_load_u16 v35, v37, s[84:87], 0 offen
	buffer_load_u16 v38, v38, s[84:87], 0 offen
	buffer_load_u16 v36, v39, s[84:87], 0 offen
	buffer_load_u16 v39, v138, s[84:87], 0 offen
	buffer_load_u16 v37, v139, s[84:87], 0 offen
	buffer_load_u16 v129, v151, s[84:87], 0 offen
	buffer_load_u16 v143, v152, s[84:87], 0 offen
	buffer_load_u16 v144, v170, s[84:87], 0 offen
	buffer_load_u16 v145, v171, s[84:87], 0 offen
	buffer_load_u16 v131, v172, s[84:87], 0 offen
	buffer_load_u16 v136, v173, s[84:87], 0 offen
	buffer_load_u16 v132, v174, s[84:87], 0 offen
	buffer_load_u16 v137, v175, s[84:87], 0 offen
	buffer_load_u16 v134, v176, s[84:87], 0 offen
	buffer_load_u16 v161, v177, s[84:87], 0 offen
	buffer_load_u16 v162, v178, s[84:87], 0 offen
	buffer_load_u16 v163, v179, s[84:87], 0 offen
	buffer_load_u16 v165, v180, s[84:87], 0 offen
	buffer_load_u16 v150, v181, s[84:87], 0 offen
	buffer_load_u16 v151, v182, s[84:87], 0 offen
	buffer_load_u16 v159, v183, s[84:87], 0 offen
	buffer_load_u16 v160, v184, s[84:87], 0 offen
	buffer_load_u16 v149, v185, s[84:87], 0 offen
	buffer_load_u16 v130, v186, s[84:87], 0 offen
	buffer_load_u16 v133, v187, s[84:87], 0 offen
	buffer_load_u16 v138, v188, s[84:87], 0 offen
	buffer_load_u16 v139, v11, s[84:87], 0 offen
	buffer_load_u16 v135, v10, s[84:87], 0 offen
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[9:12], v9, s[88:91], 0 offen
	.loc	1 670 21                        ; attention.py:670:21
	v_cmp_ge_i32_e64 s4, v114, v126
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v126, s94, v80
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v152, v127
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v22, v123, v22
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s5, v126, v89
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s6, v114, v126
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v126, s94, v79
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v13, v123, v13
	v_mul_f32_e32 v21, v119, v21
	v_mul_f32_e32 v29, v119, v29
	v_dual_mul_f32 v17, v122, v17 :: v_dual_mul_f32 v18, v119, v18
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s7, v126, v89
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s8, v114, v126
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v126, s94, v78
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v19, v124, v19 :: v_dual_mul_f32 v26, v123, v26
	v_mul_f32_e32 v27, v124, v27
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s102, s6, s5
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s9, v126, v89
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s10, v114, v126
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v126, s94, v77
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s5, s8, s7
	s_and_b32 s4, s4, vcc_lo
	s_and_b32 s5, s2, s5
	s_and_b32 s6, s10, s9
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s11, v126, v89
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s12, v114, v126
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v126, s94, v76
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s4, s2, s4
	s_and_b32 s6, s2, s6
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v164
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s7, s12, s11
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s13, v126, v89
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s14, v114, v126
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v126, s94, v75
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s7, s2, s7
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v30, v124, v30
	v_mul_f32_e32 v20, v123, v20
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s8, s14, s13
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s15, v126, v89
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s16, v114, v126
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v126, s94, v74
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s8, s2, s8
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v14, v124, v14
	v_mul_f32_e32 v28, v122, v28
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s9, s16, s15
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s17, v126, v89
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s18, v114, v126
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v126, s94, v73
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s9, s2, s9
	s_and_b32 s10, s18, s17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s19, v126, v89
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s20, v114, v126
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v126, s94, v72
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s10, s2, s10
	s_and_b32 s11, s20, s19
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s21, v126, v89
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s22, v114, v126
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v126, s94, v71
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s11, s2, s11
	s_and_b32 s12, s22, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s23, v126, v89
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s24, v114, v126
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v126, s94, v70
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s12, s2, s12
	s_and_b32 s13, s24, s23
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s25, v126, v89
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s26, v114, v126
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v126, s94, v69
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s13, s2, s13
	s_and_b32 s14, s26, s25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s27, v126, v89
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s28, v114, v126
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v126, s94, v68
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s14, s2, s14
	s_and_b32 s18, s28, s27
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s29, v126, v89
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s30, v114, v126
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v126, s94, v67
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s18, s2, s18
	s_and_b32 s15, s30, s29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s31, v126, v89
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s33, v114, v126
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v126, s94, v66
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s15, s2, s15
	s_and_b32 s16, s33, s31
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s34, v126, v89
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s35, v114, v126
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v126, s94, v65
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s16, s2, s16
	s_and_b32 s17, s35, s34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s36, v126, v89
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s37, v114, v126
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v126, s94, v64
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s17, s2, s17
	s_and_b32 s19, s37, s36
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s38, v126, v89
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s39, v114, v126
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v126, s94, v63
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s19, s2, s19
	s_and_b32 s20, s39, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s40, v126, v89
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s41, v114, v126
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v126, s94, v62
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s21, s2, s20
	s_and_b32 s35, s41, s40
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s42, v126, v89
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s43, v114, v126
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v126, s94, v61
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s35, s2, s35
	s_and_b32 s36, s43, s42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s44, v126, v89
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s45, v114, v126
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v126, s94, v60
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s37, s45, s44
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s46, v126, v89
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s47, v114, v126
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v126, s94, v59
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s22, s47, s46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s48, v126, v89
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s49, v114, v126
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v126, s94, v58
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s31, s2, s22
	s_and_b32 s23, s49, s48
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s50, v126, v89
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s51, v114, v126
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v126, s94, v57
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s24, s2, s23
	s_and_b32 s25, s51, s50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s52, v126, v89
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s53, v114, v126
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v126, s94, v56
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s27, s2, s25
	s_and_b32 s26, s53, s52
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s54, v126, v89
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s55, v114, v126
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v126, s94, v54
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s28, s2, s26
	s_and_b32 s29, s55, s54
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s56, v126, v89
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s57, v114, v126
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v126, s94, v55
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s33, s2, s29
	s_and_b32 s29, s2, s102
	s_and_b32 s30, s57, s56
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s58, v126, v89
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s59, v114, v126
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v126, s94, v85
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s34, s2, s30
	s_and_b32 s30, s2, s36
	s_and_b32 s36, s2, s37
	s_and_b32 s38, s59, s58
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s60, v126, v89
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s61, v114, v126
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v126, s94, v84
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s20, s2, s38
	s_and_b32 s39, s61, s60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s62, v126, v89
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s63, v114, v126
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v126, s94, v83
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s25, s2, s39
	s_and_b32 s40, s63, s62
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s64, v126, v89
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s65, v114, v126
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v126, s94, v82
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s22, s2, s40
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s94, s94, 64
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s41, s65, s64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s66, v126, v89
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s67, v114, v126
	.loc	1 671 21 is_stmt 1              ; attention.py:671:21
	s_and_b32 s23, s2, s41
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v126.h, 0
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s42, s67, s66
	s_and_b32 s26, s2, s42
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v127.h, v126.h
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(33)
	ds_store_b128 v87, v[166:169]
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v166.h, v126.h
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v34, 16, v34
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v40, 16, v40
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v128, 16, v128
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v167.h, v126.h
	v_mov_b16_e64 v168.h, v126.h
	v_mov_b16_e64 v169.h, v126.h
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v128, v14, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v128, s101, v128
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v128, 0xff800000, v128, s27
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(0)
	ds_store_b128 v87, v[9:12] offset:4096
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v9, v124, v158 :: v_dual_lshlrev_b32 v10, 16, v165
	v_dual_mul_f32 v11, v119, v25 :: v_dual_mul_f32 v12, v124, v31
	v_mul_f32_e32 v25, v119, v16
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v165, v9, v10 :: v_dual_lshlrev_b32 v16, 16, v136
	v_dual_mul_f32 v9, v123, v157 :: v_dual_lshlrev_b32 v10, 16, v163
	v_mul_f32_e32 v40, v13, v40
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v158.h, v126.h
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v157, v9, v10
	v_dual_mul_f32 v9, v122, v156 :: v_dual_lshlrev_b32 v10, 16, v162
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v156.h, v126.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v162, v9, v10 :: v_dual_mul_f32 v9, v119, v155
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v10, 16, v161
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v155.h, v126.h
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v161, v9, v10 :: v_dual_lshlrev_b32 v10, 16, v160
	v_mul_f32_e32 v9, v124, v154
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v154.h, v126.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v125, v9, v10
	v_dual_mul_f32 v9, v123, v153 :: v_dual_lshlrev_b32 v10, 16, v159
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v153.h, v126.h
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v159, v9, v10
	v_dual_mul_f32 v9, v122, v148 :: v_dual_lshlrev_b32 v10, 16, v151
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v148.h, v126.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v151, v9, v10
	v_dual_mul_f32 v9, v119, v147 :: v_dual_lshlrev_b32 v10, 16, v150
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v147.h, v126.h
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v150, v9, v10
	v_dual_mul_f32 v9, v123, v146 :: v_dual_lshlrev_b32 v10, 16, v149
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v146.h, v126.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v149, v9, v10
	v_dual_mul_f32 v9, v124, v142 :: v_dual_lshlrev_b32 v10, 16, v145
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v142.h, v126.h
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v145, v9, v10
	v_dual_mul_f32 v9, v123, v141 :: v_dual_lshlrev_b32 v10, 16, v144
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v141.h, v126.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v144, v9, v10 :: v_dual_mul_f32 v9, v122, v140
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v10, 16, v143
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v140.h, v126.h
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v143, v9, v10
	v_mul_f32_e32 v9, v119, v23
	v_dual_mul_f32 v23, v122, v32 :: v_dual_lshlrev_b32 v32, 16, v137
	v_mul_f32_e32 v10, v122, v24
	v_dual_mul_f32 v24, v122, v15 :: v_dual_lshlrev_b32 v15, 16, v129
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v38, 16, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v32, v12, v32
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v129, 16, v132
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v24, v24, v34 :: v_dual_lshlrev_b32 v35, 16, v35
	v_mul_f32_e32 v136, v9, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v22, v22, v129 :: v_dual_lshlrev_b32 v31, 16, v131
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v131, 16, v134
	v_lshlrev_b32_e32 v36, 16, v36
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v18, v18, v35 :: v_dual_lshlrev_b32 v37, 16, v37
	v_dual_mul_f32 v23, v23, v131 :: v_dual_lshlrev_b32 v132, 16, v138
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v133, 16, v133
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v31, v11, v31
	v_dual_mul_f32 v20, v20, v36 :: v_dual_lshlrev_b32 v39, 16, v39
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v130, 16, v130
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v25, v25, v33 :: v_dual_lshlrev_b32 v134, 16, v139
	v_mul_f32_e32 v137, v10, v16
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v19, v19, v39
	v_dual_mul_f32 v21, v21, v37 :: v_dual_mul_f32 v34, s100, v159
	v_dual_mul_f32 v26, v26, v132 :: v_dual_lshlrev_b32 v135, 16, v135
	v_dual_mul_f32 v28, v28, v133 :: v_dual_mul_f32 v17, v17, v38
	v_dual_mul_f32 v29, v29, v130 :: v_dual_mul_f32 v32, s101, v32
	v_dual_mul_f32 v27, v27, v134 :: v_dual_mul_f32 v38, s100, v157
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v30, v30, v135
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v35, s99, v151 :: v_dual_mul_f32 v22, s100, v22
	v_dual_mul_f32 v37, s101, v165 :: v_dual_mul_f32 v132, s99, v143
	v_dual_mul_f32 v39, s99, v162 :: v_dual_mul_f32 v130, s101, v145
	v_dual_mul_f32 v129, s98, v161 :: v_dual_mul_f32 v18, s98, v18
	v_dual_mul_f32 v23, s99, v23 :: v_dual_mul_f32 v134, s99, v137
	v_mul_f32_e32 v31, s98, v31
	v_dual_mul_f32 v131, s100, v144 :: v_dual_mul_f32 v30, s101, v30
	v_dual_mul_f32 v133, s98, v136 :: v_dual_mul_f32 v26, s100, v26
	v_dual_mul_f32 v40, s100, v40 :: v_dual_mul_f32 v25, s98, v25
	v_dual_mul_f32 v24, s99, v24 :: v_dual_mul_f32 v17, s99, v17
	v_dual_mul_f32 v21, s98, v21 :: v_dual_mul_f32 v28, s99, v28
	v_mul_f32_e32 v29, s98, v29
	v_dual_mul_f32 v33, s100, v149 :: v_dual_mul_f32 v36, s98, v150
	v_dual_mul_f32 v19, s101, v19 :: v_dual_mul_f32 v20, s100, v20
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v134, 0xff800000, v134, s18
	v_cndmask_b32_e64 v31, 0xff800000, v31, s15
	v_cndmask_b32_e64 v32, 0xff800000, v32, s13
	v_cndmask_b32_e64 v22, 0xff800000, v22, s14
	v_cndmask_b32_e64 v23, 0xff800000, v23, s12
	v_cndmask_b32_e64 v131, 0xff800000, v131, s17
	v_cndmask_b32_e64 v132, 0xff800000, v132, s19
	v_cndmask_b32_e64 v133, 0xff800000, v133, s21
	v_cndmask_b32_e64 v130, 0xff800000, v130, s16
	v_cndmask_b32_e64 v17, 0xff800000, v17, s31
	v_cndmask_b32_e64 v18, 0xff800000, v18, s24
	v_cndmask_b32_e64 v24, 0xff800000, v24, s33
	v_cndmask_b32_e64 v25, 0xff800000, v25, s34
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v125, s101, v125
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v28, 0xff800000, v28, s23
	v_cndmask_b32_e64 v29, 0xff800000, v29, s26
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v27, s101, v27
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v34, 0xff800000, v34, s5
	v_cndmask_b32_e64 v35, 0xff800000, v35, s6
	v_cndmask_b32_e64 v36, 0xff800000, v36, s7
	v_cndmask_b32_e64 v38, 0xff800000, v38, s9
	v_cndmask_b32_e64 v39, 0xff800000, v39, s10
	v_cndmask_b32_e64 v129, 0xff800000, v129, s11
	v_cndmask_b32_e64 v37, 0xff800000, v37, s8
	v_cndmask_b32_e64 v33, 0xff800000, v33, s4
	v_cndmask_b32_e64 v40, 0xff800000, v40, s28
	v_cndmask_b32_e64 v21, 0xff800000, v21, s35
	v_cndmask_b32_e64 v19, 0xff800000, v19, s30
	v_cndmask_b32_e64 v20, 0xff800000, v20, s36
	v_cndmask_b32_e64 v30, 0xff800000, v30, s20
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v138, v22, v32, v23
	v_max3_f32 v139, v133, v132, v131
	v_max3_f32 v143, v130, v31, v134
	v_max_f32_e32 v144, v25, v24
.Ltmp2:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v135, 0xff800000, v125, s29
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v145, v128, v18, v17
	v_max_f32_e32 v150, v29, v28
.Ltmp4:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v27, 0xff800000, v27, s25
	v_cndmask_b32_e64 v26, 0xff800000, v26, s22
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v125, v129, v39, v38
	v_max3_f32 v136, v37, v36, v35
	v_max3_f32 v137, v34, v135, v33
	v_max3_f32 v149, v20, v19, v21
	v_max_f32_e32 v151, v27, v30
	v_max3_f32 v138, v139, v143, v138
	v_max3_f32 v139, v144, v40, v145
	v_max3_f32 v125, v125, v136, v137
.Ltmp6:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v9, v86
	ds_load_u16_d16 v10, v86 offset:256
	ds_load_u16_d16 v11, v86 offset:512
	ds_load_u16_d16 v12, v86 offset:768
	ds_load_u16_d16 v13, v86 offset:1024
	ds_load_u16_d16 v14, v86 offset:1280
	ds_load_u16_d16 v15, v86 offset:1536
	ds_load_u16_d16 v16, v86 offset:1792
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v136, v150, v26, v151
	v_max3_f32 v137, v139, v149, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v125, v137, v125, v136
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v136, v125, s97, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v125, v164, v125, v136
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v132, v132, v125
	v_sub_f32_e32 v24, v24, v125
	v_sub_f32_e32 v35, v35, v125
	v_sub_f32_e32 v129, v129, v125
	v_sub_f32_e32 v39, v39, v125
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v132, v132
	v_exp_f32_e32 v24, v24
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v129, v129
	v_exp_f32_e32 v139, v39
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v36, v36, v125
	v_sub_f32_e32 v33, v33, v125
	v_sub_f32_e32 v29, v29, v125
	v_sub_f32_e32 v34, v34, v125
	v_sub_f32_e32 v22, v22, v125
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v145, 0, v132, s19
	v_cndmask_b32_e64 v24, 0, v24, s33
	v_cndmask_b32_e64 v132, 0, v35, s6
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v36, v36
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v160, 0, v129, s11
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v127.l, v145.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v28, v28, v125
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v126.l, v24.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v31, v31, v125
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v29, v29
	v_exp_f32_e32 v28, v28
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v31, v31
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v36, 0, v36, s7
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v23, v23, v125
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v22, v22
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v19, v19, v125
	v_sub_f32_e32 v133, v133, v125
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v33, 0, v33, s4
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v147.l, v36.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v35, 0, v28, s23
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v134, v134, v125
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v137, 0, v31, s15
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v135, v135, v125
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v34, 0, v34, s5
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v23, v23
	v_exp_f32_e32 v134, v134
	v_exp_f32_e32 v19, v19
	v_exp_f32_e32 v143, v135
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v146.l, v34.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v30, v30, v125
	v_sub_f32_e32 v27, v27, v125
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v133, v133
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v153.l, v160.h
	v_mov_b16_e64 v142.l, v33.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v30, v30
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v31, 0, v134, s18
	v_cndmask_b32_e64 v134, 0, v139, s10
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v130, v130, v125
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v135, 0, v23, s12
	v_cndmask_b32_e64 v159, 0, v19, s30
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v27, v27
.Ltmp10:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v139, v160, v134
.Ltmp11:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v130, v130
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v32, v32, v125
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v129, 0, v30, s20
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v155.l, v31.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v26, v26, v125
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v141.l, v35.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v32, v32
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s12, v36, v36
	v_cmp_o_f32_e64 s15, v33, v33
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v26, v26
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v149, 0, v130, s16
	v_cndmask_b32_e64 v130, 0, v29, s26
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v131, v131, v125
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s16, v35, v35
	v_cmp_o_f32_e64 s20, v24, v24
	v_mov_b16_e64 v156.l, v149.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v32, 0, v32, s13
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v131, v131
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v17, v17, v125
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s6, v149, v149
	v_cmp_o_f32_e64 s13, v34, v34
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v30, v32, v135
.Ltmp13:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v154.l, v32.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v17, v17
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v37, v37, v125
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s11, v145, v145
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v165, v30, v139
.Ltmp15:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v39, 0, v131, s17
	v_cndmask_b32_e64 v131, 0, v143, s29
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v136, v164, v125
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v37, v37
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v128, v128, v125
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s7, v31, v31
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v157, 0, v17, s31
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v138, v136
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v136, 0, v22, s14
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v20, v20, v125
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s14, v159, v159
	v_cmp_o_f32_e64 s23, v157, v157
	v_cmp_o_f32_e64 s26, v130, v130
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v29, v31, v136
.Ltmp17:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v20, v20
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e32 v138, 0, v138, vcc_lo
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v3, v3, v138
	v_mul_f32_e32 v1, v1, v138
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v17, 0, v20, s36
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_dual_sub_f32 v40, v40, v125 :: v_dual_mul_f32 v5, v5, v138
	.loc	1 699 23 is_stmt 1              ; attention.py:699:23
	v_mul_f32_e32 v7, v7, v138
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v23, v17, v159
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp19:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v40, v40
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v21, v21, v125
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v169.l, v17.h
	v_cmp_o_f32_e64 s4, v17, v17
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v30, 1, v169
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v144, 0, v40, s28
	v_cndmask_b32_e64 v40, 0, v133, s21
	v_cndmask_b32_e64 v133, 0, v37, s8
	v_cndmask_b32_e64 v37, 0, v27, s25
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v27, v145, v39
.Ltmp21:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v128, v128
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v19, 0, v21, s35
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v25, v25, v125
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v167.l, v144.h
	v_add3_u32 v139, v17, v30, 0x7fff
	v_mov_b16_e64 v140.l, v37.h
	v_mov_b16_e64 v158.l, v19.h
	v_cmp_o_f32_e64 s18, v144, v144
	v_cmp_o_f32_e64 s5, v19, v19
	v_cmp_o_f32_e64 s8, v32, v32
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v150, 0, v128, s27
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v18, v18, v125
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v128, 0, v26, s22
.Ltmp22:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v26, v19, v40
.Ltmp23:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v25, v25
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v21, v144, v150
.Ltmp25:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v18, v18
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s22, v150, v150
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v163, v26, v27 :: v_dual_add_f32 v28, v149, v137
	v_add_f32_e32 v26, v37, v129
.Ltmp27:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	v_cmp_o_f32_e64 s17, v37, v37
	v_cndmask_b16 v139.l, 0x7fff, v139.h, s4
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v164, v28, v29
.Ltmp29:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v25, 0, v25, s34
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v18, 0, v18, s24
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v28, 1, v167
	v_cmp_o_f32_e64 s24, v132, v132
	v_cmp_o_f32_e64 s25, v131, v131
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v20, v25, v24
.Ltmp31:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v168.l, v18.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v38, v38, v125
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v166.l, v25.h
	v_cmp_o_f32_e64 s19, v18, v18
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v161, v20, v21
.Ltmp33:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v29, 1, v168
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v38, v38
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v20, v36, v132 :: v_dual_and_b32 v27, 1, v166
	v_add_f32_e32 v21, v34, v131
.Ltmp35:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s21, v25, v25
	v_cmp_o_f32_e64 s27, v128, v128
	v_cmp_o_f32_e64 s28, v129, v129
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v38, 0, v38, s9
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s9, v160, v160
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v143, v38, v133
.Ltmp37:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v148.l, v38.h
	v_cmp_o_f32_e64 s10, v38, v38
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v166, v143, v20
.Ltmp39:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v20, 1, v126
	v_mov_b16_e64 v126.l, v150.h
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v22, v18, v157
.Ltmp41:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v18, v18, v29, 0x7fff
	v_and_b32_e32 v29, 1, v153
	v_and_b32_e32 v153, 1, v146
	v_and_b32_e32 v30, 1, v148
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v162, v22, v23
	v_dual_add_f32 v22, v33, v130 :: v_dual_add_f32 v23, v35, v128
.Ltmp43:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v148, 1, v147
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v147, v38, v30, 0x7fff
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v167, v21, v22 :: v_dual_and_b32 v38, 1, v140
.Ltmp45:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v21, 1, v158
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v158, v23, v26
.Ltmp47:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v26, 1, v156
	v_add3_u32 v22, v25, v27, 0x7fff
	v_and_b32_e32 v25, 1, v127
	v_add3_u32 v148, v36, v148, 0x7fff
	v_and_b32_e32 v36, 1, v141
	v_add3_u32 v127, v149, v26, 0x7fff
	v_add3_u32 v149, v34, v153, 0x7fff
	v_and_b32_e32 v34, 1, v142
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v153, v167, v158
.Ltmp49:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v141, v35, v36, 0x7fff
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v35, v163, v164 :: v_dual_add_f32 v36, v165, v166
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp51:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v140, v33, v34, 0x7fff
	v_and_b32_e32 v33, 1, v126
	v_mov_b16_e64 v126.l, v157.h
	v_add3_u32 v142, v37, v38, 0x7fff
	v_add3_u32 v23, v144, v28, 0x7fff
	v_and_b32_e32 v27, 1, v155
	v_and_b32_e32 v28, 1, v154
	v_and_b32_e32 v38, 1, v126
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v34, v161, v162
.Ltmp53:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v126.l, v159.h
	v_add3_u32 v20, v24, v20, 0x7fff
	v_add3_u32 v33, v150, v33, 0x7fff
	v_cndmask_b16 v142.l, 0x7fff, v127.h, s6
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v34, v34, v35 :: v_dual_add_f32 v35, v36, v153
.Ltmp55:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v36, v157, v38, 0x7fff
	v_and_b32_e32 v38, 1, v126
	v_mov_b16_e32 v126.l, v40.h
	v_add3_u32 v143, v19, v21, 0x7fff
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v150, v34, v35
.Ltmp57:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v17, v86 offset:2048
	ds_load_u16_d16 v18, v86 offset:2304
	ds_load_u16_d16 v19, v86 offset:2560
	ds_load_u16_d16 v20, v86 offset:2816
	ds_load_u16_d16 v21, v86 offset:3072
	ds_load_u16_d16 v22, v86 offset:3328
	ds_load_u16_d16 v23, v86 offset:3584
	ds_load_u16_d16 v24, v86 offset:3840
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v151, v145, v25, 0x7fff
	v_and_b32_e32 v127, 1, v126
	v_add3_u32 v144, v31, v27, 0x7fff
	v_add3_u32 v145, v32, v28, 0x7fff
	v_add3_u32 v146, v160, v29, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v25, v86 offset:4096
	ds_load_u16_d16 v26, v86 offset:4352
	ds_load_u16_d16 v27, v86 offset:4608
	ds_load_u16_d16 v28, v86 offset:4864
	ds_load_u16_d16 v29, v86 offset:5120
	ds_load_u16_d16 v30, v86 offset:5376
	ds_load_u16_d16 v31, v86 offset:5632
	ds_load_u16_d16 v32, v86 offset:5888
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v153, v159, v38, 0x7fff
	v_add3_u32 v40, v40, v127, 0x7fff
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v127, v150, s97, 0xfedcba98 op_sel:[1,0]
.Ltmp59:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v126.l, v39.h
	s_waitcnt lgkmcnt(12)
	v_cndmask_b16 v37.h, 0x7fff, v20.h, s20
	s_waitcnt lgkmcnt(10)
	v_cndmask_b16 v37.l, 0x7fff, v22.h, s21
	s_waitcnt lgkmcnt(9)
	v_cndmask_b16 v154.l, 0x7fff, v23.h, s18
	v_cndmask_b16 v155.l, 0x7fff, v18.h, s19
	v_cndmask_b16 v154.h, 0x7fff, v33.h, s22
	v_cndmask_b16 v155.h, 0x7fff, v36.h, s23
	v_cndmask_b16 v139.h, 0x7fff, v153.h, s14
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v127, v150, v127 :: v_dual_and_b32 v150, 1, v126
.Ltmp61:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v126.l, v137.h
	v_permlanex16_b32 v156, v37, s97, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v154, s97, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v155, s97, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s18, v39, v39
	v_add3_u32 v150, v39, v150, 0x7fff
	v_permlanex16_b32 v162, v139, s97, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v163, 1, v126
	v_mov_b16_e64 v126.l, v136.h
	v_perm_b32 v33, v156, v37, v120
	v_perm_b32 v34, v156, v37, v121
	v_perm_b32 v35, v36, v154, v120
	v_perm_b32 v36, v36, v154, v121
	v_perm_b32 v37, v38, v155, v120
	v_perm_b32 v38, v38, v155, v121
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v2, v2, v138
	v_mul_f32_e32 v4, v4, v138
	v_mul_f32_e32 v6, v6, v138
	v_mul_f32_e32 v8, v8, v138
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v149.l, 0x7fff, v140.h, s15
	v_cndmask_b16 v151.l, 0x7fff, v141.h, s16
	v_cndmask_b16 v140.h, 0x7fff, v40.h, vcc_lo
	v_perm_b32 v39, v162, v139, v120
	v_perm_b32 v40, v162, v139, v121
	v_cndmask_b16 v141.h, 0x7fff, v150.h, s18
	v_and_b32_e32 v150, 1, v126
	v_mov_b16_e64 v126.l, v135.h
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v154, v86 offset:6144
	ds_load_u16_d16 v155, v86 offset:6400
	ds_load_u16_d16 v156, v86 offset:6656
	ds_load_u16_d16 v157, v86 offset:6912
	ds_load_u16_d16 v158, v86 offset:7168
	ds_load_u16_d16 v159, v86 offset:7424
	ds_load_u16_d16 v160, v86 offset:7680
	ds_load_u16_d16 v161, v86 offset:7936
	ds_load_u16_d16_hi v9, v86 offset:128
	ds_load_u16_d16_hi v10, v86 offset:384
	ds_load_u16_d16_hi v11, v86 offset:640
	ds_load_u16_d16_hi v12, v86 offset:896
	ds_load_u16_d16_hi v13, v86 offset:1152
	ds_load_u16_d16_hi v14, v86 offset:1408
	ds_load_u16_d16_hi v15, v86 offset:1664
	ds_load_u16_d16_hi v16, v86 offset:1920
	ds_load_u16_d16_hi v17, v86 offset:2176
	ds_load_u16_d16_hi v18, v86 offset:2432
	ds_load_u16_d16_hi v19, v86 offset:2688
	ds_load_u16_d16_hi v20, v86 offset:2944
	ds_load_u16_d16_hi v21, v86 offset:3200
	ds_load_u16_d16_hi v22, v86 offset:3456
	ds_load_u16_d16_hi v23, v86 offset:3712
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v24, v86 offset:3968
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v25, v86 offset:4224
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v26, v86 offset:4480
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v27, v86 offset:4736
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v28, v86 offset:4992
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v29, v86 offset:5248
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v30, v86 offset:5504
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v31, v86 offset:5760
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v32, v86 offset:6016
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s19, v137, v137
	v_cmp_o_f32_e64 s20, v136, v136
	v_add3_u32 v137, v137, v163, 0x7fff
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[33:40], v[1:8]
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v13, v136, v150, 0x7fff
	v_and_b32_e32 v14, 1, v126
	v_mov_b16_e64 v126.l, v134.h
	v_cndmask_b16 v140.l, 0x7fff, v143.h, s5
	v_cndmask_b16 v141.l, 0x7fff, v151.h, s11
	v_cndmask_b16 v143.l, 0x7fff, v144.h, s7
	v_cndmask_b16 v153.l, 0x7fff, v142.h, s17
	v_cndmask_b16 v142.h, 0x7fff, v137.h, s19
	v_cndmask_b16 v143.h, 0x7fff, v13.h, s20
	v_and_b32_e32 v33, 1, v126
	v_mov_b16_e64 v126.l, v133.h
	v_cmp_o_f32_e64 s21, v135, v135
	v_cmp_o_f32_e64 s22, v134, v134
	v_permlanex16_b32 v139, v140, s97, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v141, s97, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v142, s97, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v16, v135, v14, 0x7fff
	v_permlanex16_b32 v34, v143, s97, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v33, v134, v33, 0x7fff
	v_and_b32_e32 v35, 1, v126
	v_mov_b16_e64 v126.l, v132.h
	v_cndmask_b16 v144.l, 0x7fff, v145.h, s8
	v_perm_b32 v9, v139, v140, v120
	v_perm_b32 v10, v139, v140, v121
	v_perm_b32 v11, v12, v141, v120
	v_perm_b32 v12, v12, v141, v121
	v_perm_b32 v13, v15, v142, v120
	v_perm_b32 v14, v15, v142, v121
	v_cndmask_b16 v144.h, 0x7fff, v16.h, s21
	v_perm_b32 v15, v34, v143, v120
	v_perm_b32 v16, v34, v143, v121
	v_cndmask_b16 v145.h, 0x7fff, v33.h, s22
	v_add3_u32 v33, v133, v35, 0x7fff
	v_and_b32_e32 v35, 1, v126
	v_mov_b16_e64 v126.l, v131.h
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[17:24], v[9:16], v[1:8]
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s23, v133, v133
	v_cndmask_b16 v145.l, 0x7fff, v146.h, s9
	v_add3_u32 v13, v132, v35, 0x7fff
	v_and_b32_e32 v14, 1, v126
	v_mov_b16_e64 v126.l, v130.h
	v_cndmask_b16 v146.l, 0x7fff, v147.h, s10
	v_cndmask_b16 v147.l, 0x7fff, v148.h, s12
	v_cndmask_b16 v146.h, 0x7fff, v33.h, s23
	v_add3_u32 v17, v131, v14, 0x7fff
	v_and_b32_e32 v16, 1, v126
	v_mov_b16_e64 v126.l, v128.h
	v_cndmask_b16 v147.h, 0x7fff, v13.h, s24
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	ds_load_u16_d16_hi v154, v86 offset:6272
	ds_load_u16_d16_hi v155, v86 offset:6528
	ds_load_u16_d16_hi v156, v86 offset:6784
	ds_load_u16_d16_hi v157, v86 offset:7040
	ds_load_u16_d16_hi v158, v86 offset:7296
	ds_load_u16_d16_hi v159, v86 offset:7552
	ds_load_u16_d16_hi v160, v86 offset:7808
	ds_load_u16_d16_hi v161, v86 offset:8064
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v148.h, 0x7fff, v17.h, s25
	v_add3_u32 v17, v130, v16, 0x7fff
	v_and_b32_e32 v19, 1, v126
	v_mov_b16_e64 v126.l, v129.h
	v_cndmask_b16 v148.l, 0x7fff, v149.h, s13
	v_permlanex16_b32 v34, v144, s97, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v145, s97, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v146, s97, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v20, 1, v126
	v_permlanex16_b32 v18, v147, s97, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v19, v128, v19, 0x7fff
	v_cndmask_b16 v149.h, 0x7fff, v17.h, s26
	v_perm_b32 v9, v34, v144, v120
	v_add3_u32 v17, v129, v20, 0x7fff
	v_perm_b32 v10, v34, v144, v121
	v_perm_b32 v11, v12, v145, v120
	v_perm_b32 v12, v12, v145, v121
	v_perm_b32 v13, v15, v146, v120
	v_perm_b32 v14, v15, v146, v121
	v_perm_b32 v15, v18, v147, v120
	v_perm_b32 v16, v18, v147, v121
	v_cndmask_b16 v151.h, 0x7fff, v19.h, s27
	v_cndmask_b16 v153.h, 0x7fff, v17.h, s28
	v_permlanex16_b32 v18, v148, s97, 0xfedcba98 op_sel:[1,0]
	.loc	1 629 13                        ; attention.py:629:13
	v_cmp_lt_i32_e32 vcc_lo, s94, v53
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[25:32], v[9:16], v[1:8]
	.loc	1 700 30 is_stmt 0              ; attention.py:700:30
	v_permlanex16_b32 v12, v149, s97, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v151, s97, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v153, s97, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v9, v18, v148, v120
	v_perm_b32 v10, v18, v148, v121
	v_perm_b32 v11, v12, v149, v120
	v_perm_b32 v12, v12, v149, v121
	v_perm_b32 v13, v14, v151, v120
	v_perm_b32 v14, v14, v151, v121
	v_perm_b32 v15, v16, v153, v120
	v_perm_b32 v16, v16, v153, v121
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fmac_f32_e32 v127, v152, v138
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[154:161], v[9:16], v[1:8]
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_vccnz .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v125, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v127, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 825 26 is_stmt 1              ; attention.py:825:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v52
	.loc	1 822 31                        ; attention.py:822:31
	s_mul_i32 s93, s93, s3
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s0, s79, 2
	.loc	1 822 31                        ; attention.py:822:31
	s_add_i32 s1, s92, s93
	.loc	1 833 13                        ; attention.py:833:13
	s_mov_b32 s2, exec_lo
	.loc	1 825 17                        ; attention.py:825:17
	v_dual_cndmask_b32 v9, 0xff800000, v125 :: v_dual_cndmask_b32 v2, 0, v2
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v14, 0, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v15, 0, v7 :: v_dual_mov_b32 v10, v9
	.loc	1 828 36                        ; attention.py:828:36
	v_cndmask_b32_e32 v11, 0, v127, vcc_lo
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_cndmask_b32 v12, 0, v4
.Ltmp63:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v13, 0, v5 :: v_dual_cndmask_b32 v16, 0, v8
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp65:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v3, 0, v3 :: v_dual_mov_b32 v6, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v17, v13 :: v_dual_mov_b32 v20, v16
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v4, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v7, v2 :: v_dual_mov_b32 v8, v3
.Ltmp69:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v5, v11
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp71:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v4, v9, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp73:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp75:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_dual_mov_b32 v9, v4 :: v_dual_add_f32 v2, v2, v7
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v5, v11, v5
.Ltmp78:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v3, v3, v8
	v_dual_add_f32 v1, v1, v6 :: v_dual_mov_b32 v8, v2
.Ltmp79:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v6, v5
.Ltmp81:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v10, v3
.Ltmp82:
	.loc	1 822 30 is_stmt 1              ; attention.py:822:30
	s_mul_i32 s0, s1, s0
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v9, v9, v9
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp86:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v14
.Ltmp87:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v2, v2, v8 :: v_dual_mov_b32 v7, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp88:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v4, v4, v9 :: v_dual_add_f32 v5, v5, v6
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v8, v3, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v10, v2
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_dual_mov_b32 v6, v4 :: v_dual_mov_b32 v3, v5
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v1, v1, v7
.Ltmp94:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp96:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v9, v1 :: v_dual_max_f32 v6, v6, v6
.Ltmp97:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v7, v5, v3
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v11, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v1, v1, v9
.Ltmp100:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v9, v4, v6
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v4, v8, v11
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v11, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v3, v2, v10 :: v_dual_mov_b32 v2, v1
.Ltmp104:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v10, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v6, v4
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp106:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v8, v7
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp108:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v11, v12, v11 :: v_dual_add_f32 v12, v13, v17
	v_add_f32_e32 v13, v14, v18
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v19, v15
.Ltmp111:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp113:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v14, v15, v19 :: v_dual_add_f32 v15, v16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v17, v12 :: v_dual_mov_b32 v20, v15
	v_mov_b32_e32 v16, v11
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v11, v11, v16 :: v_dual_add_f32 v16, v13, v18
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v19, v14 :: v_dual_add_f32 v18, v15, v20
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v12, v12, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v17, v14, v19 :: v_dual_mov_b32 v14, v12
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v13, v11
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v11, v11, v13
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v15, v16
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v13, v12, v14 :: v_dual_mov_b32 v12, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v17
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v14, v16, v15
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v15, v17, v19
	v_add_f32_e32 v17, v18, v20
.Ltmp128:
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
.Ltmp129:
	.loc	1 833 13                        ; attention.py:833:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp130:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v9, v9, v9
.Ltmp131:
	.loc	1 833 13                        ; attention.py:833:13
	s_ashr_i32 s1, s0, 31
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v8, v7, v8
.Ltmp133:
	.loc	1 833 13                        ; attention.py:833:13
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp134:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v7, v9, v10
.Ltmp135:
	.loc	1 833 13                        ; attention.py:833:13
	v_mov_b32_e32 v9, 0
	s_add_u32 s4, s76, s4
	s_addc_u32 s5, s77, s5
	.loc	1 834 13                        ; attention.py:834:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp136:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
	v_dual_add_f32 v8, v14, v18 :: v_dual_lshlrev_b32 v15, 2, v0
	v_add_f32_e32 v7, v13, v16
	v_dual_add_f32 v14, v11, v12 :: v_dual_add_f32 v13, v4, v6
	v_dual_add_f32 v12, v3, v5 :: v_dual_lshlrev_b32 v3, 5, v0
	v_dual_add_f32 v11, v1, v2 :: v_dual_and_b32 v4, 0xc0, v15
.Ltmp137:
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
.Ltmp138:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
		.amdhsa_next_free_vgpr 189
		.amdhsa_next_free_sgpr 103
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_vgpr, 189
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.numbered_sgpr, 103
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8988
; TotalNumSgprs: 105
; NumVgprs: 189
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 105
; NumVGPRsForWavesPerEU: 189
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
	.quad	.Ltmp9-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
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
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
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
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     105
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     189
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
