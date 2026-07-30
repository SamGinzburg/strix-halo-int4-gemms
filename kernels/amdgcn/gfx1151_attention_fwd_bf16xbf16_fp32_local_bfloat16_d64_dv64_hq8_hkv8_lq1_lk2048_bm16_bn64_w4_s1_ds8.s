	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s58, s[0:1], 0x60
	s_load_b64 s[46:47], s[0:1], 0x58
.Ltmp0:
	.loc	1 559 27 prologue_end           ; attention.py:559:27
	s_abs_i32 s7, s2
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v81, 3, v0
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x40
	s_load_b64 s[60:61], s[0:1], 0x0
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	s_clause 0x1
	s_load_b64 s[12:13], s[0:1], 0x78
	s_load_b32 s15, s[0:1], 0x80
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v78, 1, v0
	v_lshlrev_b32_e32 v83, 4, v0
	v_and_b32_e32 v82, 15, v0
	v_lshlrev_b32_e32 v79, 5, v0
	v_lshlrev_b32_e32 v80, 2, v0
	v_and_b32_e32 v7, 0x70, v78
	s_mov_b32 s48, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v7, v83, v7
	.loc	1 609 32                        ; attention.py:609:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s5, s58
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s8, s2, s58
	.loc	1 609 32                        ; attention.py:609:32
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 559 27                        ; attention.py:559:27
	s_ashr_i32 s8, s8, 31
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v84, 0, v7
	.loc	1 609 32                        ; attention.py:609:32
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s4, v1
	.loc	1 571 21                        ; attention.py:571:21
	v_and_b32_e32 v1, 7, v0
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 571 21                        ; attention.py:571:21
	v_lshlrev_b32_e32 v73, 3, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 609 32                        ; attention.py:609:32
	s_cvt_u32_f32 s4, s4
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[74:75], null, s46, v81, v[73:74]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_i32 s6, s6, s4
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e32 vcc_lo, s46, v73
	.loc	1 609 32                        ; attention.py:609:32
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
	.loc	1 599 26                        ; attention.py:599:26
	s_and_b32 s61, s61, 0xffff
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s14, s7, 4
	.loc	1 560 27                        ; attention.py:560:27
	s_mul_i32 s7, s7, s58
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v2, s14, v81
	.loc	1 598 26                        ; attention.py:598:26
	s_add_i32 s4, s14, s3
	.loc	1 560 27                        ; attention.py:560:27
	s_sub_i32 s45, s2, s7
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s4, s4, s46
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v3, s4, v74, 1
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s44, 1, v2
	.loc	1 601 22 is_stmt 0              ; attention.py:601:22
	s_and_b32 s4, vcc_lo, s44
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s58, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 609 32 is_stmt 1              ; attention.py:609:32
	s_xor_b32 s8, s4, s58
	s_abs_i32 s4, s4
	.loc	1 599 26                        ; attention.py:599:26
	buffer_load_b128 v[3:6], v3, s[60:63], 0 offen
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_hi_u32 s6, s4, s6
	s_ashr_i32 s8, s8, 31
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
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s5, s13, s15
	.loc	1 609 32                        ; attention.py:609:32
	s_xor_b32 s2, s2, s8
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s5, s5, s14
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s4, s15, s12
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s5, s5, 16
	.loc	1 609 32                        ; attention.py:609:32
	s_sub_i32 s2, s2, s8
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s5, s5, 0x800
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s4, s4, s14
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s5, s5, 63
	.loc	1 610 18                        ; attention.py:610:18
	s_mul_i32 s6, s45, s2
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
	.loc	1 618 18                        ; attention.py:618:18
	s_max_i32 s59, s6, s4
	.loc	1 619 18                        ; attention.py:619:18
	s_min_i32 s72, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_ge_i32 s59, s72
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v84, v[3:6]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b128 s[8:11], s[0:1], 0x64
	v_and_b32_e32 v34, 24, v0
	v_dual_mov_b32 v138, 0xff800000 :: v_dual_and_b32 v37, 3, v0
	v_bfe_i32 v38, v0, 4, 1
	v_and_b32_e32 v39, 0x180, v79
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_lshlrev_b32_e32 v33, 4, v1
	v_and_b32_e32 v35, 0x60, v0
	v_lshlrev_b32_e32 v36, 1, v34
	v_lshlrev_b32_e32 v40, 4, v37
	v_and_b32_e32 v38, 0x840, v38
	v_lshl_or_b32 v39, v37, 9, v39
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x8
	s_load_b64 s[64:65], s[0:1], 0x30
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	v_lshlrev_b32_e32 v49, 3, v0
	s_lshr_b32 s0, s0, 29
	v_or3_b32 v102, v38, v40, v39
	v_mov_b32_e32 v38, 0x5410
	.loc	1 599 26                        ; attention.py:599:26
	v_lshl_or_b32 v9, v82, 7, v33
	v_lshl_or_b32 v33, v34, 6, v33
	.loc	1 629 13                        ; attention.py:629:13
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[75:76], null, s11, v81, v[73:74]
	v_mad_u64_u32 v[76:77], null, s47, v81, v[73:74]
	v_mov_b32_e32 v77, 0xff800000
	v_lshl_or_b32 v36, v35, 2, v36
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s1, s3, s0
	v_bfe_i32 v52, v0, 0, 1
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s2, s1, -8
	v_bfe_i32 v53, v0, 2, 1
	v_and_b32_e32 v49, 16, v49
	v_xor_b32_e32 v101, v33, v36
	v_and_b32_e32 v33, 16, v0
	s_sub_i32 s2, s3, s2
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s1, s1, 3
	.loc	1 676 27                        ; attention.py:676:27
	s_mul_i32 s2, s10, s2
	.loc	1 675 27                        ; attention.py:675:27
	s_mul_i32 s1, s9, s1
	v_lshlrev_b32_e32 v34, 4, v34
	v_and_b32_e32 v53, 0x840, v53
	v_and_or_b32 v49, 0x420, v52, v49
	.loc	1 674 25                        ; attention.py:674:25
	s_add_i32 s78, s2, s1
	v_cmp_eq_u32_e64 s1, 0, v33
	v_bfe_i32 v57, v0, 3, 1
	v_bfe_i32 v58, v0, 5, 1
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v1, s15, v2
	v_or3_b32 v105, v49, v53, v34
	v_mov_b32_e32 v34, 0x7632
	v_and_b32_e32 v56, 4, v0
	v_lshlrev_b32_e32 v37, 5, v37
	v_and_b32_e32 v49, 0x420, v57
	v_and_b32_e32 v53, 0x840, v58
	v_cndmask_b32_e64 v38, 0x1054, v38, s1
	v_cndmask_b32_e64 v34, 0x3276, v34, s1
	v_and_b32_e32 v58, 0x80, v78
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v14, 0x50, v9
	v_xor3_b32 v37, v49, v37, v53
	v_lshl_or_b32 v38, v38, 8, v38
	v_lshl_add_u32 v49, v56, 7, 0
	v_lshl_or_b32 v34, v34, 8, v34
	v_lshrrev_b32_e32 v40, 3, v35
	v_xor_b32_e32 v13, 64, v9
	v_and_b32_e32 v38, 0x540054, v38
	v_add3_u32 v37, v49, v58, v37
	v_xor_b32_e32 v12, 48, v9
	v_xor_b32_e32 v11, 32, v9
	v_xor_b32_e32 v10, 16, v9
	v_xor_b32_e32 v3, 0x70, v9
	v_and_b32_e32 v34, 0x760076, v34
	v_xor_b32_e32 v2, 0x60, v9
	.loc	1 671 47                        ; attention.py:671:47
	v_add_nc_u32_e32 v92, s13, v1
	v_xor_b32_e32 v36, 0x840, v101
	v_xor_b32_e32 v39, 16, v102
	v_xor_b32_e32 v103, v80, v40
	v_xor_b32_e32 v40, 0x50, v102
	v_lshl_or_b32 v38, v38, 4, v38
	v_add_nc_u32_e32 v109, v37, v33
	v_mov_b32_e32 v33, 0
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v95, 0, v14
	v_add_nc_u32_e32 v96, 0, v13
	v_add_nc_u32_e32 v97, 0, v12
	v_add_nc_u32_e32 v98, 0, v11
	v_add_nc_u32_e32 v93, 0, v3
	v_add_nc_u32_e32 v99, 0, v10
	v_lshl_or_b32 v34, v34, 4, v34
	v_lshlrev_b32_e32 v49, 1, v82
	v_add_nc_u32_e32 v94, 0, v2
	v_dual_mov_b32 v141, 0xff800000 :: v_dual_add_nc_u32 v100, 0, v9
	v_and_b32_e32 v106, 0x5040504, v38
	v_add_nc_u32_e32 v110, 0, v36
	v_add_nc_u32_e32 v111, 0, v39
	v_dual_mov_b32 v36, v33 :: v_dual_add_nc_u32 v115, 0, v40
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v39, v33
	v_mov_b32_e32 v40, v33
	ds_load_b128 v[13:16], v95
	ds_load_b128 v[9:12], v96
	ds_load_b128 v[21:24], v97
	ds_load_b128 v[17:20], v98
	ds_load_b128 v[29:32], v99
	ds_load_b128 v[25:28], v100
	.loc	1 670 47                        ; attention.py:670:47
	v_subrev_nc_u32_e32 v91, s12, v1
	v_and_b32_e32 v41, 28, v0
	v_and_b32_e32 v107, 0x7060706, v34
	v_add3_u32 v108, 0, v49, v35
	v_mov_b32_e32 v34, v33
	v_mov_b32_e32 v35, v33
	.loc	1 599 26                        ; attention.py:599:26
	ds_load_b128 v[5:8], v93
	ds_load_b128 v[1:4], v94
	v_and_or_b32 v104, 0x3e0, v79, v41
	v_xor_b32_e32 v42, 32, v102
	v_xor_b32_e32 v43, 48, v102
	v_xor_b32_e32 v44, 64, v102
	v_xor_b32_e32 v41, 0x60, v102
	v_xor_b32_e32 v45, 0x70, v102
	v_xor_b32_e32 v46, 0x210, v103
	v_xor_b32_e32 v47, 4, v104
	v_xor_b32_e32 v48, 8, v104
	v_xor_b32_e32 v50, 12, v104
	v_xor_b32_e32 v51, 16, v104
	v_xor_b32_e32 v54, 20, v104
	v_xor_b32_e32 v55, 24, v104
	v_xor_b32_e32 v52, 28, v104
	v_xor_b32_e32 v57, 32, v105
	v_xor_b32_e32 v53, 64, v105
	v_xor_b32_e32 v56, 0x60, v105
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v85, 1, v73
	v_or_b32_e32 v86, 2, v73
	v_or_b32_e32 v87, 3, v73
	v_or_b32_e32 v88, 4, v73
	v_or_b32_e32 v89, 5, v73
	v_or_b32_e32 v90, 6, v73
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s0, s47, v73
	v_add_nc_u32_e32 v112, 0, v42
	v_add_nc_u32_e32 v113, 0, v43
	v_add_nc_u32_e32 v114, 0, v44
	v_add_nc_u32_e32 v116, 0, v41
	v_add_nc_u32_e32 v117, 0, v45
	v_add_nc_u32_e32 v118, 0, v46
	v_add_nc_u32_e32 v119, 0, v47
	v_add_nc_u32_e32 v120, 0, v48
	v_add_nc_u32_e32 v121, 0, v50
	v_add_nc_u32_e32 v122, 0, v51
	v_add_nc_u32_e32 v123, 0, v54
	v_add_nc_u32_e32 v124, 0, v55
	v_add_nc_u32_e32 v125, 0, v52
	v_add_nc_u32_e32 v126, 0, v57
	v_add_nc_u32_e32 v127, 0, v53
	v_add_nc_u32_e32 v128, 0, v56
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v129, 7, v73
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v130, 1, v75
	v_add_nc_u32_e32 v131, 2, v75
	v_add_nc_u32_e32 v132, 3, v75
	v_add_nc_u32_e32 v133, 4, v75
	v_add_nc_u32_e32 v134, 5, v75
	v_add_nc_u32_e32 v135, 6, v75
	v_dual_mov_b32 v137, v33 :: v_dual_add_nc_u32 v136, 7, v75
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s74, s8, 0x3fb8aa3b
	.loc	1 674 25                        ; attention.py:674:25
	s_mul_i32 s14, s14, s11
	s_and_b32 s5, s5, 0xffff
	.loc	1 656 32                        ; attention.py:656:32
	s_lshl_b32 s73, s3, 11
	s_lshl_b32 s75, s46, 4
	s_lshl_b32 s76, s46, 5
	s_mul_i32 s77, s46, 48
	s_add_i32 s78, s78, s14
	s_and_b32 s65, s65, 0xffff
	s_lshl_b32 s79, s47, 4
	s_lshl_b32 s80, s47, 5
	s_mul_i32 s81, s47, 48
	s_and_b32 s69, s7, 0xffff
	s_mov_b32 s49, s48
	s_mov_b32 s50, s48
	s_mov_b32 s51, s48
	s_mov_b32 s52, s48
	s_mov_b32 s53, s48
	s_mov_b32 s54, s48
	s_mov_b32 s55, s48
	s_mov_b32 s82, 0x76543210
	s_mov_b32 s60, s4
	s_mov_b32 s61, s5
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	s_mov_b32 s68, s6
	s_mov_b32 s70, s62
	s_mov_b32 s71, s63
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 657 32                        ; attention.py:657:32
	s_add_i32 s19, s59, s73
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v139, s59, v73
	.loc	1 657 32                        ; attention.py:657:32
	v_mad_u64_u32 v[41:42], null, s19, s46, v[74:75]
	.loc	1 674 25                        ; attention.py:674:25
	s_add_i32 s20, s78, s59
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v165, s55 :: v_dual_mov_b32 v164, s54
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v139, v91
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s2, v139, v92
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v139, s59, v85
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v43, v41, s75, 1
	v_lshlrev_b32_e32 v42, 1, v41
	v_add_lshl_u32 v44, v41, s76, 1
	v_add_lshl_u32 v41, v41, s77, 1
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s4, v139, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 32                        ; attention.py:658:32
	v_dual_cndmask_b32 v45, 0x80000000, v43 :: v_dual_cndmask_b32 v42, 0x80000000, v42
	v_cndmask_b32_e32 v49, 0x80000000, v44, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v53, 0x80000000, v41, vcc_lo
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s7, v139, v92
	.loc	1 658 32                        ; attention.py:658:32
	s_clause 0x3
	buffer_load_b128 v[41:44], v42, s[60:63], 0 offen
	buffer_load_b128 v[45:48], v45, s[60:63], 0 offen
	buffer_load_b128 v[49:52], v49, s[60:63], 0 offen
	buffer_load_b128 v[53:56], v53, s[60:63], 0 offen
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v139, s59, v86
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s1, s1, s2
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v140, s20, v131, 2
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s5, v139, v91
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s6, v139, v92
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v139, s59, v87
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v163, s53 :: v_dual_mov_b32 v162, s52
	v_dual_mov_b32 v161, s51 :: v_dual_mov_b32 v160, s50
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s8, v139, v91
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s9, v139, v92
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v139, s59, v88
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s2, s5, s6
	s_and_b32 s6, s44, s1
	s_and_b32 s5, s44, s2
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v159, s49 :: v_dual_mov_b32 v158, s48
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s11, v139, v91
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s12, v139, v92
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v139, s59, v89
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v140, 0x80000000, v140, s5
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s1, s4, s7
	s_and_b32 s2, s8, s9
	s_and_b32 s10, s44, s1
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s13, v139, v91
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s14, v139, v92
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v139, s59, v90
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s8, s44, s2
	s_and_b32 s1, s11, s12
	.loc	1 685 25                        ; attention.py:685:25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s4, s44, s1
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s15, v139, v91
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s16, v139, v92
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v139, s59, v129
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s1, s13, s14
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s59, s59, 64
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s7, s44, s1
	s_and_b32 s1, s15, s16
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s17, v139, v91
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s18, v139, v92
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v139, s20, v75, 2
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s1, s44, s1
	.loc	1 685 25                        ; attention.py:685:25
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s2, s17, s18
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v139, 0x80000000, v139, s6
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s11, s44, s2
	.loc	1 685 25                        ; attention.py:685:25
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt vmcnt(3)
	ds_store_b128 v84, v[41:44]
	s_waitcnt vmcnt(2)
	ds_store_b128 v84, v[45:48] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v84, v[49:52] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v84, v[53:56] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 683 36                        ; attention.py:683:36
	s_clause 0x1
	buffer_load_b32 v139, v139, s[64:67], 0 offen
	buffer_load_b32 v140, v140, s[64:67], 0 offen
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[45:48], v99
	ds_load_b128 v[41:44], v100
	ds_load_b128 v[49:52], v100 offset:2048
	ds_load_b128 v[53:56], v99 offset:2048
	ds_load_b128 v[146:149], v99 offset:4096
	ds_load_b128 v[142:145], v100 offset:4096
	ds_load_b128 v[150:153], v100 offset:6144
	ds_load_b128 v[154:157], v99 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[41:48], v[25:32], v[158:165]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[49:56], v[25:32], v[158:165]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[142:149], v[25:32], v[158:165]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[150:157], v[25:32], v[158:165]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[146:149], v97
	ds_load_b128 v[142:145], v98
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[142:149], v[17:24], v[65:72]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[142:145], v98 offset:2048
	ds_load_b128 v[146:149], v97 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[142:149], v[17:24], v[57:64]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[146:149], v97 offset:4096
	ds_load_b128 v[142:145], v98 offset:4096
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[142:149], v[17:24], v[49:56]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[142:145], v98 offset:6144
	ds_load_b128 v[146:149], v97 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[142:149], v[17:24], v[41:48]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[146:149], v95
	ds_load_b128 v[142:145], v96
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[142:149], v[9:16], v[65:72]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[142:145], v96 offset:2048
	ds_load_b128 v[146:149], v95 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[142:149], v[9:16], v[57:64]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[146:149], v95 offset:4096
	ds_load_b128 v[142:145], v96 offset:4096
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[142:149], v[9:16], v[49:56]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[142:145], v96 offset:6144
	ds_load_b128 v[146:149], v95 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[142:149], v[9:16], v[41:48]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[146:149], v93
	ds_load_b128 v[142:145], v94
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[142:149], v[1:8], v[65:72]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[142:145], v94 offset:2048
	ds_load_b128 v[146:149], v93 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[142:149], v[1:8], v[57:64]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[146:149], v93 offset:4096
	ds_load_b128 v[142:145], v94 offset:4096
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[142:149], v[1:8], v[49:56]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[142:145], v94 offset:6144
	ds_load_b128 v[146:149], v93 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[142:149], v[1:8], v[41:48]
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v154, 0xff800000, v139, s6
	v_add_lshl_u32 v139, s20, v130, 2
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v155, 0xff800000, v140, s5
	v_add_lshl_u32 v140, s20, v132, 2
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s2, 0xff800000, v154
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v139, 0x80000000, v139, s10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s9, 0xff800000, v155
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v140, 0x80000000, v140, s8
	s_clause 0x1
	buffer_load_b32 v139, v139, s[64:67], 0 offen
	buffer_load_b32 v140, v140, s[64:67], 0 offen
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s5, s5, s9
	s_and_b32 s9, s6, s2
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v158, 0xff800000, v139, s10
	v_add_lshl_u32 v139, s20, v133, 2
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v159, 0xff800000, v140, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s14, 0xff800000, v158
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v139, 0x80000000, v139, s4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s15, 0xff800000, v159
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s10, s10, s14
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	buffer_load_b32 v139, v139, s[64:67], 0 offen
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s8, s8, s15
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v156, 0xff800000, v139, s4
	v_add_lshl_u32 v139, s20, v134, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s12, 0xff800000, v156
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v139, 0x80000000, v139, s7
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s4, s4, s12
	.loc	1 683 36                        ; attention.py:683:36
	buffer_load_b32 v139, v139, s[64:67], 0 offen
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v160, 0xff800000, v139, s7
	v_add_lshl_u32 v139, s20, v135, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s16, 0xff800000, v160
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v139, 0x80000000, v139, s1
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s7, s7, s16
	.loc	1 683 36                        ; attention.py:683:36
	buffer_load_b32 v139, v139, s[64:67], 0 offen
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v157, 0xff800000, v139, s1
	v_add_lshl_u32 v139, s20, v136, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s13, 0xff800000, v157
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v139, 0x80000000, v139, s11
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s1, s1, s13
	.loc	1 683 36                        ; attention.py:683:36
	buffer_load_b32 v139, v139, s[64:67], 0 offen
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v161, 0xff800000, v139, s11
	.loc	1 684 35                        ; attention.py:684:35
	v_add_nc_u32_e32 v139, 0, v101
	ds_store_b128 v139, v[154:157]
	ds_store_b128 v110, v[158:161]
	v_add_nc_u32_e32 v139, 0, v102
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s17, 0xff800000, v161
	.loc	1 684 35                        ; attention.py:684:35
	ds_load_b128 v[145:148], v139
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s6, s11, s17
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s59, s72
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v139, 0x3fb8aa3b, v146 :: v_dual_mul_f32 v146, 0x3fb8aa3b, v147
	v_mul_f32_e32 v144, 0x3fb8aa3b, v148
	ds_load_b128 v[147:150], v111
	v_dual_mul_f32 v145, 0x3fb8aa3b, v145 :: v_dual_fmac_f32 v146, s74, v67
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_dual_fmac_f32 v139, s74, v66 :: v_dual_fmac_f32 v144, s74, v68
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v145, s74, v65
	.loc	1 684 35                        ; attention.py:684:35
	ds_load_b128 v[65:68], v112
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v147, 0x3fb8aa3b, v147 :: v_dual_mul_f32 v140, 0x3fb8aa3b, v148
	v_dual_mul_f32 v149, 0x3fb8aa3b, v149 :: v_dual_mul_f32 v148, 0x3fb8aa3b, v150
	ds_load_b128 v[150:153], v115
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v147, s74, v69 :: v_dual_fmac_f32 v140, s74, v70
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v149, s74, v71 :: v_dual_mul_f32 v68, 0x3fb8aa3b, v68
	v_fmac_f32_e32 v148, s74, v72
	.loc	1 684 35                        ; attention.py:684:35
	ds_load_b128 v[69:72], v113
	v_dual_mul_f32 v65, 0x3fb8aa3b, v65 :: v_dual_mul_f32 v66, 0x3fb8aa3b, v66
	v_dual_mul_f32 v67, 0x3fb8aa3b, v67 :: v_dual_fmac_f32 v68, s74, v60
	.loc	1 684 25                        ; attention.py:684:25
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v66, s74, v58 :: v_dual_mul_f32 v69, 0x3fb8aa3b, v69
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v70, 0x3fb8aa3b, v70 :: v_dual_mul_f32 v71, 0x3fb8aa3b, v71
	v_dual_mul_f32 v72, 0x3fb8aa3b, v72 :: v_dual_fmac_f32 v65, s74, v57
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v67, s74, v59
	v_dual_fmac_f32 v69, s74, v61 :: v_dual_fmac_f32 v70, s74, v62
	.loc	1 684 35                        ; attention.py:684:35
	ds_load_b128 v[59:62], v114
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v71, s74, v63 :: v_dual_fmac_f32 v72, s74, v64
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v64, 0x3fb8aa3b, v152
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v64, s74, v55
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v59, 0x3fb8aa3b, v59 :: v_dual_mul_f32 v58, 0x3fb8aa3b, v60
	v_dual_mul_f32 v60, 0x3fb8aa3b, v61 :: v_dual_mul_f32 v57, 0x3fb8aa3b, v62
	v_dual_mul_f32 v62, 0x3fb8aa3b, v151 :: v_dual_mul_f32 v63, 0x3fb8aa3b, v150
	v_dual_mul_f32 v61, 0x3fb8aa3b, v153 :: v_dual_fmac_f32 v58, s74, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v59, s74, v49 :: v_dual_fmac_f32 v62, s74, v54
	v_dual_fmac_f32 v60, s74, v51 :: v_dual_fmac_f32 v57, s74, v52
	.loc	1 684 35                        ; attention.py:684:35
	ds_load_b128 v[49:52], v116
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v63, s74, v53
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v61, s74, v56 :: v_dual_mul_f32 v152, 0x3fb8aa3b, v49
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v142, 0x3fb8aa3b, v50 :: v_dual_mul_f32 v153, 0x3fb8aa3b, v51
	v_mul_f32_e32 v150, 0x3fb8aa3b, v52
	ds_load_b128 v[49:52], v117
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v152, s74, v41
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	v_cndmask_b32_e64 v41, 0, 1, s1
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v153, s74, v43
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_lshlrev_b16 v41.l, 8, v41.l
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v54, 0x3fb8aa3b, v49 :: v_dual_mul_f32 v143, 0x3fb8aa3b, v50
	v_dual_mul_f32 v151, 0x3fb8aa3b, v51 :: v_dual_mul_f32 v50, 0x3fb8aa3b, v52
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_fmac_f32_e32 v142, s74, v42
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	v_cndmask_b32_e64 v42, 0, 1, s4
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v150, s74, v44 :: v_dual_fmac_f32 v143, s74, v46
	v_fmac_f32_e32 v54, s74, v45
	v_mad_u64_u32 v[44:45], null, s19, s47, v[76:77]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v43.h, v42.l, v41.l
	v_cndmask_b32_e64 v41, 0, 1, s5
	v_cndmask_b32_e64 v42, 0, 1, s9
	v_add_nc_u32_e32 v45, 0, v104
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v151, s74, v47
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v41.l, 8, v41.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v43.l, v42.l, v41.l
	v_cndmask_b32_e64 v41, 0, 1, s6
	v_cndmask_b32_e64 v42, 0, 1, s7
	v_lshlrev_b16 v41.l, 8, v41.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v46.h, v42.l, v41.l
	v_cndmask_b32_e64 v41, 0, 1, s8
	v_cndmask_b32_e64 v42, 0, 1, s10
	v_lshlrev_b16 v41.l, 8, v41.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v46.l, v42.l, v41.l
	v_add_nc_u32_e32 v41, 0, v103
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v42, v44, s79, 1
	.loc	1 685 25                        ; attention.py:685:25
	ds_store_b32 v118, v46
	ds_store_b32 v41, v43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v45, v45
	ds_load_b32 v155, v122
	ds_load_b32 v158, v123
	ds_load_b32 v159, v124
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v43, v44, s80, 1
	v_cndmask_b32_e64 v42, 0x80000000, v42, s0
	.loc	1 685 25                        ; attention.py:685:25
	ds_load_b32 v160, v125
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v43, 0x80000000, v43, s0
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(4)
	v_and_b32_e32 v46, 0x10000, v45
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s37, 0, v46
	ds_load_b32 v46, v119
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v50, s74, v48
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v156, 0xff800000, v146, s37
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v47, 0x10000, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_ne_u32_e64 s36, 0, v47
	ds_load_b32 v47, v120
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v146, 0xff800000, v149, s36
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v48, 0x10000, v47
	v_cmp_ne_u32_e64 s28, 0, v48
	ds_load_b32 v48, v121
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v67, 0xff800000, v67, s28
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v49, 0x10000, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_ne_u32_e64 s27, 0, v49
	v_and_b32_e32 v49, 0x10000, v155
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v71, 0xff800000, v71, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s20, 0, v49
	v_and_b32_e32 v49, 0x10000, v158
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v51, 0xff800000, v60, s20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s19, 0, v49
	v_and_b32_e32 v49, 0x10000, v159
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v55, 0xff800000, v64, s19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s17, 0, v49
	v_and_b32_e32 v49, 0x10000, v160
	v_cmp_ne_u32_e64 s18, 0, v49
	v_and_b32_e32 v49, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e64 s41, 1, v49
	v_and_b32_e32 v49, 0x1000000, v45
	v_lshrrev_b16 v45.l, 8, v45.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v154, 0xff800000, v145, s41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s40, 0, v49
	v_and_b16 v45.l, 1, v45.l
	v_and_b32_e32 v49, 1, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v157, 0xff800000, v144, s40
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s43, 1, v45.l
	v_lshrrev_b16 v45.l, 8, v46.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e64 s39, 1, v49
	v_and_b32_e32 v49, 0x1000000, v46
	v_and_b16 v45.l, 1, v45.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v144, 0xff800000, v147, s39
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s38, 0, v49
	v_and_b32_e32 v49, 1, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_eq_u16_e64 s42, 1, v45.l
	v_lshrrev_b16 v45.l, 8, v47.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v147, 0xff800000, v148, s38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s33, 1, v49
	v_and_b32_e32 v49, 0x1000000, v47
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v145, 0xff800000, v140, s42
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v45.l, 1, v45.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v65, 0xff800000, v65, s33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s31, 0, v49
	v_cmp_eq_u16_e64 s35, 1, v45.l
	v_lshrrev_b16 v45.l, 8, v48.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v68, 0xff800000, v68, s31
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v49, 1, v48
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v66, 0xff800000, v66, s35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v45.l, 1, v45.l
	v_cmp_eq_u32_e64 s30, 1, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s34, 1, v45.l
	v_lshrrev_b16 v45.l, 8, v155.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v69, 0xff800000, v69, s30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v70, 0xff800000, v70, s34
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v49, 0x1000000, v48
	v_and_b16 v45.l, 1, v45.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v140, v69, v70, v71
.Ltmp2:
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s29, 0, v49
	v_and_b32_e32 v49, 1, v155
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_eq_u16_e64 s26, 1, v45.l
	v_lshrrev_b16 v45.l, 8, v158.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v72, 0xff800000, v72, s29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s25, 1, v49
	v_and_b32_e32 v49, 0x1000000, v155
	v_and_b16 v45.l, 1, v45.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v155, 0xff800000, v139, s43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s24, 0, v49
	v_and_b32_e32 v49, 1, v158
	v_cmp_eq_u16_e64 s16, 1, v45.l
	v_lshrrev_b16 v45.l, 8, v159.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v52, 0xff800000, v57, s24
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s23, 1, v49
	v_and_b32_e32 v49, 0x1000000, v158
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b16 v45.l, 1, v45.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v53, 0xff800000, v63, s23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s13, 0, v49
	v_and_b32_e32 v49, 1, v159
	v_cmp_eq_u16_e64 s15, 1, v45.l
	v_lshrrev_b16 v45.l, 8, v160.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v63, 0xff800000, v151, s18
	v_cndmask_b32_e64 v56, 0xff800000, v61, s13
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s22, 1, v49
	v_and_b32_e32 v49, 0x1000000, v159
	v_and_b16 v45.l, 1, v45.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v57, 0xff800000, v152, s22
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s11, 0, v49
	v_and_b32_e32 v49, 1, v160
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s14, 1, v45.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v60, 0xff800000, v150, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s21, 1, v49
	v_and_b32_e32 v49, 0x1000000, v160
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v61, 0xff800000, v54, s21
	.loc	1 694 30                        ; attention.py:694:30
	v_lshlrev_b32_e32 v41, 1, v44
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s12, 0, v49
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v44, v44, s81, 1
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v54, 0xff800000, v62, s16
	v_add_nc_u32_e32 v45, 0, v105
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v41, 0x80000000, v41, s0
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v49, 0xff800000, v59, s25
	v_cndmask_b32_e64 v64, 0xff800000, v50, s12
	v_cndmask_b32_e64 v50, 0xff800000, v58, s26
	v_cndmask_b32_e64 v59, 0xff800000, v153, s17
	v_cndmask_b32_e64 v58, 0xff800000, v142, s15
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v44, 0x80000000, v44, s0
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v62, 0xff800000, v143, s14
	ds_store_b128 v45, v[154:157]
	ds_store_b128 v45, v[49:52] offset:512
	ds_store_b128 v126, v[144:147]
	ds_store_b128 v126, v[53:56] offset:512
	ds_store_b128 v127, v[65:68]
	ds_store_b128 v127, v[57:60] offset:512
	ds_store_b128 v128, v[69:72]
	ds_store_b128 v128, v[61:64] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 694 30                        ; attention.py:694:30
	s_clause 0x3
	buffer_load_b128 v[148:151], v41, s[68:71], 0 offen
	buffer_load_b128 v[158:161], v42, s[68:71], 0 offen
	buffer_load_b128 v[162:165], v43, s[68:71], 0 offen
	buffer_load_b128 v[166:169], v44, s[68:71], 0 offen
	.loc	1 686 26                        ; attention.py:686:26
	ds_load_b128 v[45:48], v109
	ds_load_b128 v[41:44], v109 offset:256
	.loc	1 694 30                        ; attention.py:694:30
	v_add_nc_u32_e32 v139, 0, v83
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v142, v72, v49, v50
	v_max3_f32 v143, v57, v58, v59
.Ltmp4:
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(3)
	ds_store_b128 v139, v[148:151]
	s_waitcnt vmcnt(2)
	ds_store_b128 v139, v[158:161] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v139, v[162:165] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v139, v[166:169] offset:6144
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v139, v66, v67, v68
.Ltmp6:
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v139, v139, v140, v142
	v_max3_f32 v140, v51, v52, v53
	v_max3_f32 v142, v54, v55, v56
	v_max3_f32 v140, v140, v142, v143
	v_max_f32_e32 v142, v154, v155
	v_max3_f32 v143, v157, v144, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v142, v142, v156, v143
	v_max3_f32 v143, v146, v147, v65
	v_max3_f32 v139, v142, v143, v139
	v_dual_max_f32 v142, v60, v61 :: v_dual_max_f32 v143, v63, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v142, v142, v62, v143
	v_max3_f32 v139, v139, v140, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v140, v139, s82, 0xfedcba98 op_sel:[1,0]
.Ltmp9:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v139, v141, v139, v140
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v140, v155, v139
	v_sub_f32_e32 v142, v154, v139
	v_sub_f32_e32 v150, v144, v139
	v_sub_f32_e32 v148, v156, v139
	v_sub_f32_e32 v152, v146, v139
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v140, v140
	v_exp_f32_e32 v142, v142
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v65, v65, v139
	v_sub_f32_e32 v66, v66, v139
	v_sub_f32_e32 v67, v67, v139
	v_sub_f32_e32 v68, v68, v139
	v_sub_f32_e32 v69, v69, v139
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v67, v67
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v143, 0, v140, s43
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v140.h, 0
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v142, 0, v142, s41
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v68, v68
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v70, v70, v139
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v140.l, v143.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v149, v157, v139
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s2, v143, v143
	v_cmp_o_f32_e64 s41, v142, v142
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v65, 0, v65, s33
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v144, 1, v140
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v66, s35
	v_cndmask_b32_e64 v67, 0, v67, s28
	v_cndmask_b32_e64 v68, 0, v68, s31
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v69, v69
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v143, v143, v144, 0x7fff
	v_mov_b16_e64 v144.h, v140.h
	v_mov_b16_e64 v144.l, v142.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v151, v145, v139
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v145.h, v140.h
	v_cndmask_b16 v143.h, 0x7fff, v143.h, s2
	v_cmp_o_f32_e64 s33, v66, v66
	v_and_b32_e32 v144, 1, v144
	v_cmp_o_f32_e64 s28, v68, v68
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v70, v70
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v69, 0, v69, s30
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v71, v71, v139
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v142, v142, v144, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v72, v72, v139
	v_sub_f32_e32 v54, v54, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v71, v71
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cndmask_b16 v143.l, 0x7fff, v142.h, s41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v72, v72
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v70, 0, v70, s34
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v54, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_permlanex16_b32 v144, v143, s82, 0xfedcba98 op_sel:[1,0]
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v71, 0, v71, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v142, v144, v143, v106
	v_perm_b32 v143, v144, v143, v107
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v144, v148
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v72, 0, v72, s29
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v54, 0, v54, s16
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s27, v72, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v144, 0, v144, s37
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v145.l, v144.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v144, v144
	v_and_b32_e32 v145, 1, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_add3_u32 v144, v144, v145, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v145, v149
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v149.h, v140.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v145, 0, v145, s40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v140.l, v145.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v153, v147, v139
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s37, v145, v145
	v_mov_b16_e64 v147.h, v140.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v146, 1, v140
	v_add3_u32 v145, v145, v146, 0x7fff
	v_cndmask_b16 v145.l, 0x7fff, v144.h, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v145.h, 0x7fff, v145.h, s37
	v_permlanex16_b32 v146, v145, s82, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_perm_b32 v144, v146, v145, v106
	v_perm_b32 v145, v146, v145, v107
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v146, v150
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v146, 0, v146, s39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v147.l, v146.h
	v_cmp_o_f32_e64 s2, v146, v146
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v147, 1, v147
	v_add3_u32 v146, v146, v147, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v147, v151
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v147, 0, v147, s42
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v140.l, v147.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s37, v147, v147
	v_and_b32_e32 v148, 1, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v147, v147, v148, 0x7fff
	v_cndmask_b16 v147.l, 0x7fff, v146.h, s2
	v_cndmask_b16 v147.h, 0x7fff, v147.h, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v148, v147, s82, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v146, v148, v147, v106
	v_perm_b32 v147, v148, v147, v107
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v148, v152
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v148, 0, v148, s36
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v149.l, v148.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v148, v148
	v_and_b32_e32 v149, 1, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v148, v148, v149, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v149, v153
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v149, 0, v149, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v140.l, v149.h
	v_cmp_o_f32_e64 s36, v149, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v150, 1, v140
	v_mov_b16_e64 v140.l, v66.h
	v_add3_u32 v149, v149, v150, 0x7fff
	v_cndmask_b16 v149.l, 0x7fff, v148.h, s2
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v141
	.loc	1 689 74 is_stmt 0              ; attention.py:689:74
	v_sub_f32_e32 v141, v141, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cndmask_b16 v149.h, 0x7fff, v149.h, s36
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v141, v141
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 689 25 is_stmt 0              ; attention.py:689:25
	v_cndmask_b32_e64 v141, 0, v141, s2
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s2, v65, v65
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v33, v33, v141
	v_mul_f32_e32 v34, v34, v141
	v_mul_f32_e32 v35, v35, v141
	v_mul_f32_e32 v36, v36, v141
	v_mul_f32_e32 v37, v37, v141
	v_mul_f32_e32 v38, v38, v141
	v_mul_f32_e32 v39, v39, v141
	v_mul_f32_e32 v40, v40, v141
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v141.h, v140.h
	v_mov_b16_e64 v141.l, v65.h
	v_permlanex16_b32 v150, v149, s82, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v141, 1, v141
	v_perm_b32 v148, v150, v149, v106
	v_perm_b32 v149, v150, v149, v107
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v150, v108
	ds_load_u16_d16 v151, v108 offset:256
	ds_load_u16_d16 v152, v108 offset:512
	ds_load_u16_d16 v153, v108 offset:768
	ds_load_u16_d16 v154, v108 offset:1024
	ds_load_u16_d16 v155, v108 offset:1280
	ds_load_u16_d16 v156, v108 offset:1536
	ds_load_u16_d16 v157, v108 offset:1792
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v150, v108 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v151, v108 offset:384
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v152, v108 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v153, v108 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v154, v108 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v155, v108 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v156, v108 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v157, v108 offset:1920
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v65, v65, v141, 0x7fff
	v_and_b32_e32 v141, 1, v140
	v_mov_b16_e64 v140.l, v68.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v66, v66, v141, 0x7fff
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s2
	v_cmp_o_f32_e64 s2, v67, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s33
	v_permlanex16_b32 v141, v66, s82, 0xfedcba98 op_sel:[1,0]
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[150:157], v[142:149], v[33:40]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v65, v141, v66, v106
	v_perm_b32 v66, v141, v66, v107
	v_mov_b16_e64 v141.h, v140.h
	v_mov_b16_e64 v141.l, v67.h
	v_and_b32_e32 v141, 1, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v67, v67, v141, 0x7fff
	v_and_b32_e32 v141, 1, v140
	v_mov_b16_e64 v140.l, v70.h
	v_add3_u32 v68, v68, v141, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s2
	v_cmp_o_f32_e64 s2, v69, v69
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s28
	v_cmp_o_f32_e64 s28, v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v141, v68, s82, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v67, v141, v68, v106
	v_perm_b32 v68, v141, v68, v107
	v_mov_b16_e64 v141.h, v140.h
	v_mov_b16_e64 v141.l, v69.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v141, 1, v141
	v_add3_u32 v69, v69, v141, 0x7fff
	v_and_b32_e32 v141, 1, v140
	v_mov_b16_e64 v140.l, v72.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v70, v70, v141, 0x7fff
	v_cndmask_b16 v70.l, 0x7fff, v69.h, s2
	v_cmp_o_f32_e64 s2, v71, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s28
	v_permlanex16_b32 v141, v70, s82, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v69, v141, v70, v106
	v_perm_b32 v70, v141, v70, v107
	v_mov_b16_e64 v141.h, v140.h
	v_mov_b16_e64 v141.l, v71.h
	v_and_b32_e32 v141, 1, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v71, v71, v141, 0x7fff
	v_and_b32_e32 v141, 1, v140
	v_add3_u32 v72, v72, v141, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v72.l, 0x7fff, v71.h, s2
	v_cndmask_b16 v72.h, 0x7fff, v72.h, s27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v141, v72, s82, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v71, v141, v72, v106
	v_perm_b32 v72, v141, v72, v107
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	ds_load_u16_d16 v141, v108 offset:2048
	ds_load_u16_d16 v142, v108 offset:2304
	ds_load_u16_d16 v143, v108 offset:2560
	ds_load_u16_d16 v144, v108 offset:2816
	ds_load_u16_d16 v145, v108 offset:3072
	ds_load_u16_d16 v146, v108 offset:3328
	ds_load_u16_d16 v147, v108 offset:3584
	ds_load_u16_d16 v148, v108 offset:3840
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v141, v108 offset:2176
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v142, v108 offset:2432
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v143, v108 offset:2688
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v144, v108 offset:2944
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v145, v108 offset:3200
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v146, v108 offset:3456
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v147, v108 offset:3712
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v148, v108 offset:3968
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[141:148], v[65:72], v[33:40]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v68, v53, v139
	v_sub_f32_e32 v67, v55, v139
	v_sub_f32_e32 v53, v56, v139
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v55, v44, v44
	v_max_f32_e32 v56, v48, v48
.Ltmp11:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v66, v57, v139
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v57, v42, v47, v43
.Ltmp13:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v71, v49, v139
	v_sub_f32_e32 v72, v50, v139
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v55, v56, v55
	v_max3_f32 v56, v45, v41, v46
.Ltmp15:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v69, v52, v139
	v_sub_f32_e32 v52, v58, v139
	v_sub_f32_e32 v70, v51, v139
	v_sub_f32_e32 v49, v60, v139
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v56, v56, v57, v55
.Ltmp17:
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v55, v138, v138 :: v_dual_sub_f32 v60, v61, v139
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v50, v62, v139
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v62.h, v140.h
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v57, v56
.Ltmp19:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v65, v59, v139
	v_sub_f32_e32 v59, v63, v139
	v_sub_f32_e32 v51, v64, v139
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v60, v60
.Ltmp20:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v57, v57 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp21:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v53, v53
	v_exp_f32_e32 v59, v59
	v_exp_f32_e32 v52, v52
	v_exp_f32_e32 v49, v49
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v57, v57, v57
.Ltmp23:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v50, v50
	v_exp_f32_e32 v51, v51
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v60, 0, v60, s21
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp24:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v56, v56, v57
.Ltmp25:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v53, 0, v53, s13
	v_cndmask_b32_e64 v59, 0, v59, s18
	v_cndmask_b32_e64 v52, 0, v52, s15
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s21, v60, v60
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v57, v56
.Ltmp27:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s13, v53, v53
	v_cmp_o_f32_e64 s18, v59, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v57, v57 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v57, v57, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v56, v56, v57
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v57, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v57, v57 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v57, v57, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v141, v56, v57
.Ltmp32:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v138, v55, v141
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v56, v42, v138
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v42, v71
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v57, v45, v138
	v_sub_f32_e32 v45, v48, v138
	v_sub_f32_e32 v48, v43, v138
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v43, v72
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v58, v41, v138
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v41.h, v140.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v55, v46, v138
	v_sub_f32_e32 v46, v47, v138
	v_sub_f32_e32 v47, v44, v138
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v42, 0, v42, s25
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v44.h, v140.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v55, v55
	v_exp_f32_e32 v56, v56
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v43, 0, v43, s26
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v41.l, v42.h
	v_cmp_o_f32_e64 s2, v42, v42
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v46, v46
	v_exp_f32_e32 v48, v48
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v140.l, v43.h
	v_and_b32_e32 v41, 1, v41
	v_cmp_o_f32_e64 s25, v43, v43
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v45, v45
	v_exp_f32_e32 v47, v47
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v55, 0, v55, s5
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v41, v42, v41, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v56, 0, v56, s8
	v_cndmask_b32_e64 v46, 0, v46, s4
	v_cndmask_b32_e64 v48, 0, v48, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v42.l, 0x7fff, v41.h, s2
	v_and_b32_e32 v41, 1, v140
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v45, 0, v45, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v47, 0, v47, s6
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v55, v55, v56
	v_add_f32_e32 v48, v46, v48
.Ltmp34:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v41, v43, v41, 0x7fff
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v47, v45, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v42.h, 0x7fff, v41.h, s25
	v_permlanex16_b32 v43, v42, s82, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_perm_b32 v41, v43, v42, v106
	v_perm_b32 v42, v43, v42, v107
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v43, v70
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v43, 0, v43, s20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v44.l, v43.h
	v_cmp_o_f32_e64 s2, v43, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v44, 1, v44
	v_add3_u32 v43, v43, v44, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v44, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v44, 0, v44, s24
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v140.l, v44.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s20, v44, v44
	v_and_b32_e32 v61, 1, v140
	v_mov_b16_e64 v140.l, v54.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v44, v44, v61, 0x7fff
	v_cndmask_b16 v44.l, 0x7fff, v43.h, s2
	v_cmp_o_f32_e64 s2, v54, v54
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v61, v44, s82, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v43, v61, v44, v106
	v_perm_b32 v44, v61, v44, v107
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v61, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v61, 0, v61, s23
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v62.l, v61.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s20, v61, v61
	v_and_b32_e32 v62, 1, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_add3_u32 v63, v61, v62, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v61, v67
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v62.h, v140.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v61, 0, v61, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v62.l, v61.h
	v_cmp_o_f32_e64 s23, v61, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v62, 1, v62
	v_add3_u32 v64, v61, v62, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v61, v66
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v62.h, v140.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v63.l, 0x7fff, v64.h, s23
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v64, 0, v50, s14
	v_cndmask_b32_e64 v61, 0, v61, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v62.l, v61.h
	v_cmp_o_f32_e64 s19, v61, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v62, 1, v62
	v_add3_u32 v61, v61, v62, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v62, v65
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v65.h, v140.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v62, 0, v62, s17
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v65.l, v62.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s17, v62, v62
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add3_u32 v62, v62, v65, 0x7fff
	v_mov_b16_e64 v65.h, v140.h
	v_mov_b16_e32 v65.l, v60.h
	v_cndmask_b16 v62.l, 0x7fff, v61.h, s19
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v60, v60, v65, 0x7fff
	v_mov_b16_e64 v65.h, v140.h
	v_mov_b16_e32 v65.l, v59.h
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v65, v59, v65, 0x7fff
	v_mov_b32_e32 v59, v77
	v_cndmask_b16 v50.l, 0x7fff, v65.h, s18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v66, v59, v59
	v_dual_max_f32 v77, v66, v141 :: v_dual_and_b32 v66, 1, v140
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v140.l, v53.h
	v_mov_b32_e32 v141, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v54, v54, v66, 0x7fff
	v_and_b32_e32 v66, 1, v140
	v_mov_b16_e64 v140.l, v52.h
	v_cndmask_b16 v54.l, 0x7fff, v63.h, s20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v54.h, 0x7fff, v54.h, s2
	v_add3_u32 v53, v53, v66, 0x7fff
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v59
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v51, s12
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v51.l, 0x7fff, v60.h, s21
	v_permlanex16_b32 v56, v54, s82, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v63.h, 0x7fff, v53.h, s13
	v_and_b32_e32 v53, 1, v140
	v_cmp_o_f32_e64 s13, v52, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_perm_b32 v45, v56, v54, v106
	v_perm_b32 v46, v56, v54, v107
	v_add3_u32 v53, v52, v53, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v52, v57
	v_exp_f32_e32 v57, v58
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v58, 0, v49, s11
	.loc	1 689 74 is_stmt 1              ; attention.py:689:74
	v_sub_f32_e32 v49, v59, v77
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v54, v63, s82, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v53.l, 0x7fff, v62.h, s17
	v_cndmask_b16 v62.h, 0x7fff, v53.h, s13
	v_mov_b16_e64 v140.l, v58.h
	v_cmp_o_f32_e64 s11, v58, v58
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v49, v49
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v52, 0, v52, s9
	v_cndmask_b32_e64 v57, 0, v57, s10
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v59, 1, v140
	v_mov_b16_e64 v140.l, v64.h
	v_cmp_o_f32_e64 s10, v64, v64
	v_cmp_o_f32_e64 s9, v66, v66
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v57, v52, v57
.Ltmp38:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v56, v58, v59, 0x7fff
	v_and_b32_e32 v58, 1, v140
	v_mov_b16_e64 v140.l, v66.h
	v_mov_b32_e32 v52, v137
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v55, v57, v55
	v_add_f32_e32 v57, v48, v47
.Ltmp40:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v47, v54, v63, v106
	v_perm_b32 v48, v54, v63, v107
	v_add3_u32 v64, v64, v58, 0x7fff
	v_cndmask_b16 v53.h, 0x7fff, v56.h, s11
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v67, v55, v57
.Ltmp42:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v54, v108 offset:4096
	ds_load_u16_d16 v55, v108 offset:4352
	ds_load_u16_d16 v56, v108 offset:4608
	ds_load_u16_d16 v57, v108 offset:4864
	ds_load_u16_d16 v58, v108 offset:5120
	ds_load_u16_d16 v59, v108 offset:5376
	ds_load_u16_d16 v60, v108 offset:5632
	ds_load_u16_d16 v61, v108 offset:5888
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v54, v108 offset:4224
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v55, v108 offset:4480
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v56, v108 offset:4736
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v57, v108 offset:4992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v58, v108 offset:5248
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v59, v108 offset:5504
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v60, v108 offset:5760
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v61, v108 offset:6016
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v63, v62, s82, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v65, 1, v140
	v_cndmask_b16 v51.h, 0x7fff, v64.h, s10
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v49, 0, v49, s2
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[54:61], v[41:48], v[33:40]
.Ltmp43:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v43, v67
.Ltmp44:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v54, v108 offset:6144
	ds_load_u16_d16 v55, v108 offset:6400
	ds_load_u16_d16 v56, v108 offset:6656
	ds_load_u16_d16 v57, v108 offset:6912
	ds_load_u16_d16 v58, v108 offset:7168
	ds_load_u16_d16 v59, v108 offset:7424
	ds_load_u16_d16 v60, v108 offset:7680
	ds_load_u16_d16 v61, v108 offset:7936
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v41, v63, v62, v106
	v_perm_b32 v42, v63, v62, v107
	v_add3_u32 v45, v66, v65, 0x7fff
.Ltmp45:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v43, v43 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v54, v108 offset:6272
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v55, v108 offset:6528
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v56, v108 offset:6784
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v57, v108 offset:7040
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v58, v108 offset:7296
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v59, v108 offset:7552
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v60, v108 offset:7808
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v61, v108 offset:8064
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v43, v67, v43
.Ltmp48:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v50.h, 0x7fff, v45.h, s9
	v_permlanex16_b32 v44, v53, s82, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp49:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v46, v43
.Ltmp50:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v48, v50, s82, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp51:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v46, v46 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp52:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v47, v48, v50, v106
	v_perm_b32 v48, v48, v50, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v62, v43, v46
.Ltmp54:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v46, v51, s82, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v43, v44, v53, v106
	v_perm_b32 v44, v44, v53, v107
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v63, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp56:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v45, v46, v51, v106
	v_perm_b32 v46, v46, v51, v107
.Ltmp57:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v63, v63 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp58:
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[54:61], v[41:48], v[33:40]
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v137, v62, v63
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp60:
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v137, v52, v49
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v77, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v39, v40
	v_mov_b32_e32 v38, v40
	v_mov_b32_e32 v37, v40
	v_mov_b32_e32 v36, v40
	v_mov_b32_e32 v35, v40
	v_mov_b32_e32 v34, v40
	v_mov_b32_e32 v33, v40
	v_mov_b32_e32 v137, v40
.LBB0_4:                                ; %._crit_edge
	.loc	1 825 26 is_stmt 1              ; attention.py:825:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v81
	s_mov_b32 s1, 0x76543210
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp62:
	.loc	1 822 31                        ; attention.py:822:31
	s_mul_i32 s58, s58, s3
	.loc	1 825 17                        ; attention.py:825:17
	v_cndmask_b32_e32 v1, 0xff800000, v77, vcc_lo
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s0, s47, 2
	.loc	1 833 13                        ; attention.py:833:13
	s_mov_b32 s2, exec_lo
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_and_b32_e32 v4, 12, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v2, v1, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_max_f32 v1, v1, v2 :: v_dual_and_b32 v2, 12, v81
.Ltmp65:
	.loc	1 828 36                        ; attention.py:828:36
	v_cndmask_b32_e32 v3, 0, v137, vcc_lo
	.loc	1 830 26                        ; attention.py:830:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v82
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v6, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v2, 0, v2
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_permlanex16_b32 v5, v3, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp68:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v7, 0, v33 :: v_dual_add_nc_u32 v4, 0, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp70:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v8, 0, v34 :: v_dual_add_f32 v3, v3, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v5, v7
.Ltmp72:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v9, 0, v35 :: v_dual_max_f32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v11, v8 :: v_dual_mov_b32 v10, v3
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v12, v9
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v1, v1, v6
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp76:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp77:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v5, v7, v5
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	ds_store_b32 v2, v1
	s_waitcnt lgkmcnt(0)
.Ltmp80:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v3, v3, v10
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	s_barrier
	ds_load_b32 v1, v4
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v2, v4
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v4, v9, v12 :: v_dual_add_f32 v3, v8, v11
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v6, v5 :: v_dual_cndmask_b32 v11, 0, v36
.Ltmp85:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v14, 0, v39, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v8, v4 :: v_dual_mov_b32 v7, v3
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp87:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v13, 0, v38 :: v_dual_cndmask_b32 v12, 0, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v5, v5, v6
.Ltmp90:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v6, v1
.Ltmp91:
	.loc	1 822 31                        ; attention.py:822:31
	s_add_i32 s1, s45, s58
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v4, v4, v8 :: v_dual_add_f32 v3, v3, v7
.Ltmp93:
	.loc	1 822 30                        ; attention.py:822:30
	s_mul_i32 s0, s1, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp94:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v9, v5 :: v_dual_mov_b32 v16, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp96:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v15, 0, v40 :: v_dual_mov_b32 v10, v3
.Ltmp97:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp99:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v20, v15
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_dual_add_f32 v4, v4, v16 :: v_dual_mov_b32 v7, v2
.Ltmp102:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v8, v1, v6
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v1, v5, v9 :: v_dual_mov_b32 v16, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v6, v4
.Ltmp105:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp106:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v3, v3, v10 :: v_dual_mov_b32 v10, v8
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v7, v2, v7
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v2, v1 :: v_dual_mov_b32 v9, v7
	v_dual_mov_b32 v5, v3 :: v_dual_add_f32 v12, v12, v17
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v11, v11, v16 :: v_dual_add_f32 v14, v14, v19
	v_add_f32_e32 v13, v13, v18
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp112:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v16, v11
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v15, v15, v20 :: v_dual_mov_b32 v18, v13
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v17, v12
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v15
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v14
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v13, v13, v18 :: v_dual_add_f32 v12, v12, v17
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v11, v11, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v16, v15, v20
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v14, v14, v19 :: v_dual_mov_b32 v15, v11
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v20, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v11, v11, v15
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v15, v14, v19 :: v_dual_mov_b32 v14, v11
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp126:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v13, v13, v18
	v_add_f32_e32 v17, v16, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp127:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v16, v12
	v_dual_mov_b32 v18, v13 :: v_dual_mov_b32 v19, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp128:
	.loc	1 833 13                        ; attention.py:833:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp129:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v21, v8, v8
.Ltmp130:
	.loc	1 833 13                        ; attention.py:833:13
	s_ashr_i32 s1, s0, 31
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v8, v7, v9
.Ltmp132:
	.loc	1 833 13                        ; attention.py:833:13
	s_lshl_b64 s[4:5], s[0:1], 2
	v_mov_b32_e32 v9, 0
.Ltmp133:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v7, v21, v10
.Ltmp134:
	.loc	1 833 13                        ; attention.py:833:13
	s_add_u32 s4, s56, s4
	s_addc_u32 s5, s57, s5
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
	v_and_b32_e32 v3, 0xc0, v80
	v_and_b32_e32 v4, 0xe0, v78
.Ltmp137:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v11, v1, v2 :: v_dual_and_b32 v2, 32, v79
.Ltmp138:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v1, 28, v78
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
	v_cmp_gt_i32_e32 vcc_lo, s47, v5
	.loc	1 835 13                        ; attention.py:835:13
	s_and_b32 s57, s57, 0xffff
	s_mov_b32 s59, 0x31027000
	v_cmp_eq_u32_e64 s0, 0, v0
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s58, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[56:59], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp141:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
		.amdhsa_next_free_vgpr 170
		.amdhsa_next_free_sgpr 83
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_vgpr, 170
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.numbered_sgpr, 83
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10384
; TotalNumSgprs: 85
; NumVgprs: 170
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 21
; NumSGPRsForWavesPerEU: 85
; NumVGPRsForWavesPerEU: 170
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
	.quad	.Ltmp32-.Lfunc_begin0
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
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
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
.Ldebug_ranges9:
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
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
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
        .size:           1
        .value_kind:     by_value
      - .offset:         117
        .size:           1
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     85
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     170
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
