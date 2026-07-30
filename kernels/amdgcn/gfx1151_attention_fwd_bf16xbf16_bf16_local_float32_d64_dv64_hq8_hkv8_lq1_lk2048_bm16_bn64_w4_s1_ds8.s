	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
	v_lshrrev_b32_e32 v83, 3, v0
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x40
	s_load_b64 s[60:61], s[0:1], 0x0
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	s_clause 0x1
	s_load_b64 s[12:13], s[0:1], 0x78
	s_load_b32 s15, s[0:1], 0x80
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v80, 1, v0
	v_lshlrev_b32_e32 v85, 4, v0
	v_and_b32_e32 v84, 15, v0
	v_lshlrev_b32_e32 v81, 2, v0
	v_lshlrev_b32_e32 v82, 5, v0
	v_and_b32_e32 v7, 0x70, v80
	s_mov_b32 s48, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v7, v85, v7
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
	v_add_nc_u32_e32 v86, 0, v7
	.loc	1 609 32                        ; attention.py:609:32
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s4, v1
	.loc	1 571 21                        ; attention.py:571:21
	v_and_b32_e32 v1, 7, v0
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 571 21                        ; attention.py:571:21
	v_lshlrev_b32_e32 v74, 3, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 609 32                        ; attention.py:609:32
	s_cvt_u32_f32 s4, s4
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[75:76], null, s46, v83, v[74:75]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_i32 s6, s6, s4
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e32 vcc_lo, s46, v74
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
	v_or_b32_e32 v2, s14, v83
	.loc	1 598 26                        ; attention.py:598:26
	s_add_i32 s4, s14, s3
	.loc	1 560 27                        ; attention.py:560:27
	s_sub_i32 s45, s2, s7
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s4, s4, s46
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v3, s4, v75, 1
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
	ds_store_b128 v86, v[3:6]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_dual_mov_b32 v138, 0xff800000 :: v_dual_and_b32 v33, 1, v0
	v_dual_mov_b32 v141, 0xff800000 :: v_dual_and_b32 v34, 14, v0
	v_and_b32_e32 v36, 0x70, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshlrev_b32_e32 v33, 6, v33
	v_lshlrev_b32_e32 v37, 3, v84
	v_dual_mov_b32 v139, 0xff800000 :: v_dual_lshlrev_b32 v38, 2, v34
	v_lshlrev_b32_e32 v44, 3, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v33, v34, 7, v33
	v_lshrrev_b32_e32 v34, 1, v36
	v_lshl_or_b32 v36, v36, 4, v37
	v_bfe_i32 v48, v0, 2, 1
	v_and_b32_e32 v44, 16, v44
	s_load_b128 s[8:11], s[0:1], 0x64
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_lshlrev_b32_e32 v1, 4, v1
	v_xor_b32_e32 v34, v36, v34
	v_bfe_i32 v36, v0, 0, 1
	v_and_b32_e32 v48, 0x840, v48
	v_and_or_b32 v44, 0x180, v85, v44
	v_and_b32_e32 v35, 16, v0
	v_and_b32_e32 v54, 4, v0
	v_and_b32_e32 v36, 0x420, v36
	v_and_b32_e32 v56, 0x60, v82
	v_and_b32_e32 v58, 0x80, v80
	v_lshlrev_b32_e32 v39, 3, v35
	v_lshl_add_u32 v54, v54, 7, 0
	v_or3_b32 v106, v44, v36, v48
	v_bfe_i32 v36, v0, 3, 1
	v_bfe_i32 v44, v0, 5, 1
	v_mov_b32_e32 v48, 0x5410
	v_lshl_or_b32 v9, v84, 7, v1
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x8
	s_load_b64 s[64:65], s[0:1], 0x30
	v_and_b32_e32 v36, 0x420, v36
	v_and_b32_e32 v44, 0x840, v44
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v13, 64, v9
	.loc	1 566 23                        ; attention.py:566:23
	s_lshr_b32 s0, s0, 29
	v_or3_b32 v103, v33, v39, v38
	v_xor3_b32 v36, v36, v56, v44
	v_and_b32_e32 v33, 0x60, v0
	s_add_i32 s1, s3, s0
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v98, 0, v13
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s2, s1, -8
	v_add3_u32 v36, v54, v58, v36
	v_lshlrev_b32_e32 v54, 1, v84
	v_lshrrev_b32_e32 v39, 3, v33
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v14, 0x50, v9
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s2, s3, s2
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s1, s1, 3
	v_add3_u32 v109, 0, v54, v33
	v_mov_b32_e32 v33, 0
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v1, s15, v2
	v_and_b32_e32 v40, 28, v0
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v12, 48, v9
	.loc	1 676 27                        ; attention.py:676:27
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s2, s10, s2
	.loc	1 675 27                        ; attention.py:675:27
	s_mul_i32 s1, s9, s1
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v11, 32, v9
	v_xor_b32_e32 v10, 16, v9
	v_xor_b32_e32 v3, 0x70, v9
	.loc	1 674 25                        ; attention.py:674:25
	s_add_i32 s78, s2, s1
	v_cmp_eq_u32_e64 s1, 0, v35
	v_mov_b32_e32 v55, 0x7632
	v_add_nc_u32_e32 v111, 0, v34
	v_mov_b32_e32 v34, v33
	.loc	1 671 47                        ; attention.py:671:47
	v_add_nc_u32_e32 v94, s13, v1
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v2, 0x60, v9
	v_add_nc_u32_e32 v97, 0, v14
	v_xor_b32_e32 v37, 8, v103
	v_xor_b32_e32 v38, 16, v103
	v_xor_b32_e32 v104, v81, v39
	v_and_or_b32 v105, 0x3e0, v82, v40
	v_xor_b32_e32 v39, 48, v103
	v_xor_b32_e32 v40, 56, v103
	v_add_nc_u32_e32 v99, 0, v12
	v_add_nc_u32_e32 v100, 0, v11
	v_add_nc_u32_e32 v95, 0, v3
	v_dual_mov_b32 v140, v33 :: v_dual_add_nc_u32 v101, 0, v10
	v_cndmask_b32_e64 v48, 0x1054, v48, s1
	v_cndmask_b32_e64 v55, 0x3276, v55, s1
	v_add_nc_u32_e32 v96, 0, v2
	v_add_nc_u32_e32 v102, 0, v9
	v_add_nc_u32_e32 v112, 0, v37
	v_add_nc_u32_e32 v113, 0, v38
	v_add_nc_u32_e32 v117, 0, v39
	v_dual_mov_b32 v37, v33 :: v_dual_add_nc_u32 v118, 0, v40
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v39, v33
	v_mov_b32_e32 v40, v33
	ds_load_b128 v[13:16], v97
	ds_load_b128 v[9:12], v98
	ds_load_b128 v[21:24], v99
	ds_load_b128 v[17:20], v100
	ds_load_b128 v[29:32], v101
	ds_load_b128 v[25:28], v102
	.loc	1 670 47                        ; attention.py:670:47
	v_subrev_nc_u32_e32 v93, s12, v1
	v_lshl_or_b32 v44, v48, 8, v48
	v_lshl_or_b32 v48, v55, 8, v55
	v_add_nc_u32_e32 v110, v36, v35
	v_mov_b32_e32 v35, v33
	v_mov_b32_e32 v36, v33
	.loc	1 599 26                        ; attention.py:599:26
	ds_load_b128 v[5:8], v95
	ds_load_b128 v[1:4], v96
	v_and_b32_e32 v44, 0x540054, v44
	v_and_b32_e32 v48, 0x760076, v48
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[76:77], null, s11, v83, v[74:75]
	v_xor_b32_e32 v41, 24, v103
	v_xor_b32_e32 v42, 32, v103
	v_xor_b32_e32 v43, 40, v103
	v_xor_b32_e32 v45, 0x210, v104
	v_xor_b32_e32 v46, 4, v105
	v_xor_b32_e32 v47, 8, v105
	v_xor_b32_e32 v49, 12, v105
	v_xor_b32_e32 v50, 16, v105
	v_xor_b32_e32 v51, 20, v105
	v_xor_b32_e32 v52, 24, v105
	v_xor_b32_e32 v53, 28, v105
	v_xor_b32_e32 v57, 32, v106
	v_xor_b32_e32 v55, 64, v106
	v_xor_b32_e32 v56, 0x60, v106
	v_lshl_or_b32 v44, v44, 4, v44
	v_lshl_or_b32 v48, v48, 4, v48
	v_mad_u64_u32 v[77:78], null, s47, v83, v[74:75]
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v87, 1, v74
	v_or_b32_e32 v88, 2, v74
	v_or_b32_e32 v89, 3, v74
	v_or_b32_e32 v90, 4, v74
	v_or_b32_e32 v91, 5, v74
	v_or_b32_e32 v92, 6, v74
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s0, s47, v74
	v_and_b32_e32 v107, 0x5040504, v44
	v_and_b32_e32 v108, 0x7060706, v48
	v_add_nc_u32_e32 v114, 0, v41
	v_add_nc_u32_e32 v115, 0, v42
	v_add_nc_u32_e32 v116, 0, v43
	v_add_nc_u32_e32 v119, 0, v45
	v_add_nc_u32_e32 v120, 0, v46
	v_add_nc_u32_e32 v121, 0, v47
	v_add_nc_u32_e32 v122, 0, v49
	v_add_nc_u32_e32 v123, 0, v50
	v_add_nc_u32_e32 v124, 0, v51
	v_add_nc_u32_e32 v125, 0, v52
	v_add_nc_u32_e32 v126, 0, v53
	v_add_nc_u32_e32 v127, 0, v57
	v_add_nc_u32_e32 v128, 0, v55
	v_add_nc_u32_e32 v129, 0, v56
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v130, 7, v74
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v131, 1, v76
	v_add_nc_u32_e32 v132, 2, v76
	v_add_nc_u32_e32 v133, 3, v76
	v_add_nc_u32_e32 v134, 4, v76
	v_add_nc_u32_e32 v135, 5, v76
	v_add_nc_u32_e32 v136, 6, v76
	v_add_nc_u32_e32 v137, 7, v76
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
	s_add_i32 s18, s59, s73
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v73, s59, v92
	.loc	1 657 32                        ; attention.py:657:32
	v_mad_u64_u32 v[41:42], null, s18, s46, v[75:76]
	.loc	1 674 25                        ; attention.py:674:25
	s_add_i32 s19, s78, s59
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v165, s55 :: v_dual_mov_b32 v164, s54
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v73, v93
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s4, v73, v94
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v73, s59, v90
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v43, v41, s75, 1
	v_lshlrev_b32_e32 v42, 1, v41
	v_add_lshl_u32 v44, v41, s76, 1
	v_add_lshl_u32 v41, v41, s77, 1
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s2, v73, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 32                        ; attention.py:658:32
	v_dual_cndmask_b32 v45, 0x80000000, v43 :: v_dual_cndmask_b32 v42, 0x80000000, v42
	v_cndmask_b32_e32 v49, 0x80000000, v44, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v53, 0x80000000, v41, vcc_lo
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s5, v73, v94
	.loc	1 658 32                        ; attention.py:658:32
	s_clause 0x3
	buffer_load_b128 v[41:44], v42, s[60:63], 0 offen
	buffer_load_b128 v[45:48], v45, s[60:63], 0 offen
	buffer_load_b128 v[49:52], v49, s[60:63], 0 offen
	buffer_load_b128 v[53:56], v53, s[60:63], 0 offen
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v73, s59, v88
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s1, s1, s4
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v78, s19, v134, 1
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s2, s2, s5
	s_and_b32 s1, s44, s1
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s6, v73, v93
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s7, v73, v94
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v73, s59, v74
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s4, s44, s2
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt lgkmcnt(0)
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v78, 0x80000000, v78, s4
	.loc	1 658 32                        ; attention.py:658:32
	s_barrier
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s8, v73, v93
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s9, v73, v94
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v73, s59, v130
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v163, s53 :: v_dual_mov_b32 v162, s52
	v_dual_mov_b32 v161, s51 :: v_dual_mov_b32 v160, s50
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s10, v73, v93
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s11, v73, v94
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v73, s59, v91
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v159, s49 :: v_dual_mov_b32 v158, s48
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s2, s6, s7
	s_and_b32 s7, s10, s11
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s12, v73, v93
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s13, v73, v94
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v73, s59, v89
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s5, s44, s2
	s_and_b32 s2, s8, s9
	s_and_b32 s7, s44, s7
	s_and_b32 s6, s44, s2
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s14, v73, v93
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s15, v73, v94
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v73, s59, v87
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s2, s12, s13
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s59, s59, 64
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s8, s44, s2
	s_and_b32 s2, s14, s15
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s16, v73, v93
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s17, v73, v94
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v73, s19, v136, 1
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s9, s44, s2
	.loc	1 685 25                        ; attention.py:685:25
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s2, s16, s17
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v73, 0x80000000, v73, s1
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s10, s44, s2
	.loc	1 685 25                        ; attention.py:685:25
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt vmcnt(3)
	ds_store_b128 v86, v[41:44]
	s_waitcnt vmcnt(2)
	ds_store_b128 v86, v[45:48] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v86, v[49:52] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v86, v[53:56] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 683 36                        ; attention.py:683:36
	s_clause 0x1
	buffer_load_u16 v73, v73, s[64:67], 0 offen
	buffer_load_u16 v78, v78, s[64:67], 0 offen
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[45:48], v101
	ds_load_b128 v[41:44], v102
	ds_load_b128 v[49:52], v102 offset:2048
	ds_load_b128 v[53:56], v101 offset:2048
	ds_load_b128 v[146:149], v101 offset:4096
	ds_load_b128 v[142:145], v102 offset:4096
	ds_load_b128 v[150:153], v102 offset:6144
	ds_load_b128 v[154:157], v101 offset:6144
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
	ds_load_b128 v[146:149], v99
	ds_load_b128 v[142:145], v100
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[142:149], v[17:24], v[65:72]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[142:145], v100 offset:2048
	ds_load_b128 v[146:149], v99 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[142:149], v[17:24], v[57:64]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[146:149], v99 offset:4096
	ds_load_b128 v[142:145], v100 offset:4096
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[142:149], v[17:24], v[49:56]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[142:145], v100 offset:6144
	ds_load_b128 v[146:149], v99 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[142:149], v[17:24], v[41:48]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[146:149], v97
	ds_load_b128 v[142:145], v98
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[142:149], v[9:16], v[65:72]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[142:145], v98 offset:2048
	ds_load_b128 v[146:149], v97 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[142:149], v[9:16], v[57:64]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[146:149], v97 offset:4096
	ds_load_b128 v[142:145], v98 offset:4096
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[142:149], v[9:16], v[49:56]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[142:145], v98 offset:6144
	ds_load_b128 v[146:149], v97 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[142:149], v[9:16], v[41:48]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[146:149], v95
	ds_load_b128 v[142:145], v96
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[142:149], v[1:8], v[65:72]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[142:145], v96 offset:2048
	ds_load_b128 v[146:149], v95 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[142:149], v[1:8], v[57:64]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[146:149], v95 offset:4096
	ds_load_b128 v[142:145], v96 offset:4096
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[142:149], v[1:8], v[49:56]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[142:145], v96 offset:6144
	ds_load_b128 v[146:149], v95 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[142:149], v[1:8], v[41:48]
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(1)
	v_cndmask_b16 v150.h, 0xff80, v73.l, s1
	v_add_lshl_u32 v73, s19, v132, 1
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v150.l, 0xff80, v78.l, s4
	v_add_lshl_u32 v78, s19, v135, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v73, 0x80000000, v73, s5
	v_cndmask_b32_e64 v78, 0x80000000, v78, s8
	buffer_load_u16 v73, v73, s[64:67], 0 offen
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v149.h, 0xff80, v73.l, s5
	v_add_lshl_u32 v73, s19, v76, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v73, 0x80000000, v73, s6
	buffer_load_u16 v73, v73, s[64:67], 0 offen
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v149.l, 0xff80, v73.l, s6
	v_add_lshl_u32 v73, s19, v137, 1
	v_cndmask_b32_e64 v73, 0x80000000, v73, s7
	s_clause 0x1
	buffer_load_u16 v73, v73, s[64:67], 0 offen
	buffer_load_u16 v78, v78, s[64:67], 0 offen
	s_waitcnt vmcnt(1)
	v_cndmask_b16 v79.h, 0xff80, v73.l, s7
	v_add_lshl_u32 v73, s19, v133, 1
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v79.l, 0xff80, v78.l, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v73, 0x80000000, v73, s9
	buffer_load_u16 v73, v73, s[64:67], 0 offen
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v78.h, 0xff80, v73.l, s9
	v_add_lshl_u32 v73, s19, v131, 1
	v_cndmask_b32_e64 v73, 0x80000000, v73, s10
	buffer_load_u16 v73, v73, s[64:67], 0 offen
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v78.l, 0xff80, v73.l, s10
	.loc	1 684 35                        ; attention.py:684:35
	v_add_nc_u32_e32 v73, 0, v103
	ds_store_2addr_b64 v111, v[149:150], v[78:79] offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 683 36                        ; attention.py:683:36
	ds_load_b64 v[142:143], v73
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v145, 16, v143
	v_lshlrev_b32_e32 v73, 16, v142
	v_and_b32_e32 v146, 0xffff0000, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v148, 0x3fb8aa3b, v145
	v_mul_f32_e32 v147, 0x3fb8aa3b, v73
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v144, 0xffff0000, v142
	ds_load_b64 v[142:143], v112
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v145, 0x3fb8aa3b, v146 :: v_dual_fmac_f32 v148, s74, v67
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_fmac_f32_e32 v147, s74, v65
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v151, 16, v142
	v_and_b32_e32 v154, 0xffff0000, v143
	v_lshlrev_b32_e32 v153, 16, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v73, 0x3fb8aa3b, v151
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v152, 0xffff0000, v142
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v142, 0x3fb8aa3b, v144 :: v_dual_fmac_f32 v73, s74, v69
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_fmac_f32_e32 v142, s74, v66
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	ds_load_b64 v[65:66], v113
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v67, 16, v65
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v143, 0x3fb8aa3b, v152
	.loc	1 683 36                        ; attention.py:683:36
	v_lshlrev_b32_e32 v69, 16, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v143, s74, v70
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v144, 0x3fb8aa3b, v154
	v_mul_f32_e32 v146, 0x3fb8aa3b, v153
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_and_b32_e32 v70, 0xffff0000, v66
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v144, s74, v72
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v146, s74, v71 :: v_dual_fmac_f32 v145, s74, v68
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v68, 0xffff0000, v65
	ds_load_b64 v[65:66], v114
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v72, 16, v66
	v_and_b32_e32 v151, 0xffff0000, v66
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v66, 0x3fb8aa3b, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v72, 0x3fb8aa3b, v72
	v_dual_mul_f32 v67, 0x3fb8aa3b, v68 :: v_dual_mul_f32 v68, 0x3fb8aa3b, v69
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_fmac_f32_e32 v66, s74, v57
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_lshlrev_b32_e32 v71, 16, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v72, s74, v63 :: v_dual_and_b32 v65, 0xffff0000, v65
	v_fmac_f32_e32 v67, s74, v58
	.loc	1 683 36                        ; attention.py:683:36
	ds_load_b64 v[57:58], v115
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v69, 0x3fb8aa3b, v70 :: v_dual_fmac_f32 v68, s74, v59
	v_dual_mul_f32 v70, 0x3fb8aa3b, v71 :: v_dual_mul_f32 v71, 0x3fb8aa3b, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_dual_fmac_f32 v70, s74, v61 :: v_dual_fmac_f32 v69, s74, v60
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v71, s74, v62 :: v_dual_and_b32 v60, 0xffff0000, v57
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_lshlrev_b32_e32 v59, 16, v57
	v_lshlrev_b32_e32 v61, 16, v58
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v65, 0x3fb8aa3b, v151
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v62, 0xffff0000, v58
	ds_load_b64 v[57:58], v116
	.loc	1 684 25                        ; attention.py:684:25
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v65, s74, v64 :: v_dual_lshlrev_b32 v64, 16, v58
	.loc	1 683 36                        ; attention.py:683:36
	v_lshlrev_b32_e32 v63, 16, v57
	v_and_b32_e32 v151, 0xffff0000, v58
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v58, 0x3fb8aa3b, v59 :: v_dual_mul_f32 v59, 0x3fb8aa3b, v60
	v_mul_f32_e32 v60, 0x3fb8aa3b, v61
	v_dual_mul_f32 v64, 0x3fb8aa3b, v64 :: v_dual_mul_f32 v61, 0x3fb8aa3b, v62
	v_mul_f32_e32 v62, 0x3fb8aa3b, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_fmac_f32_e32 v58, s74, v49
	v_dual_fmac_f32 v60, s74, v51 :: v_dual_and_b32 v57, 0xffff0000, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v64, s74, v55
	v_dual_fmac_f32 v62, s74, v53 :: v_dual_fmac_f32 v59, s74, v50
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	ds_load_b64 v[49:50], v117
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v61, s74, v52
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v51, 16, v49
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v63, 0x3fb8aa3b, v57
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v52, 0xffff0000, v49
	v_lshlrev_b32_e32 v53, 16, v50
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v57, 0x3fb8aa3b, v151
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_fmac_f32_e32 v63, s74, v54
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_and_b32_e32 v54, 0xffff0000, v50
	ds_load_b64 v[49:50], v118
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v57, s74, v56
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 683 36                        ; attention.py:683:36
	v_lshlrev_b32_e32 v55, 16, v49
	v_and_b32_e32 v56, 0xffff0000, v49
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v49, 0x3fb8aa3b, v52 :: v_dual_mul_f32 v52, 0x3fb8aa3b, v53
	.loc	1 683 36                        ; attention.py:683:36
	v_lshlrev_b32_e32 v151, 16, v50
	v_and_b32_e32 v152, 0xffff0000, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v53, 0x3fb8aa3b, v54 :: v_dual_fmac_f32 v52, s74, v43
	v_mul_f32_e32 v54, 0x3fb8aa3b, v55
	v_dual_mul_f32 v50, 0x3fb8aa3b, v51 :: v_dual_mul_f32 v55, 0x3fb8aa3b, v56
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v43.h, v150.l
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v51, 0x3fb8aa3b, v152 :: v_dual_fmac_f32 v54, s74, v45
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_fmac_f32_e32 v50, s74, v41
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v56, 0x3fb8aa3b, v151
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v41.l, 0
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v49, s74, v42
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v42.h, v149.h
	v_mov_b16_e64 v41.h, v149.l
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v56, s74, v47 :: v_dual_fmac_f32 v53, s74, v44
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v44.h, v150.h
	v_mov_b16_e32 v44.l, v41.l
	v_mov_b16_e32 v43.l, v41.l
	v_mov_b16_e32 v42.l, v41.l
	v_mov_b16_e32 v45.h, v79.h
	v_mov_b16_e32 v45.l, v41.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s2, 0xff800000, v44
	v_cmp_neq_f32_e64 s11, 0xff800000, v43
	v_cmp_neq_f32_e64 s12, 0xff800000, v42
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v55, s74, v46
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s1, s1, s2
	s_and_b32 s4, s4, s11
	v_cndmask_b32_e64 v42, 0, 1, s1
	v_cndmask_b32_e64 v43, 0, 1, s4
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s2, 0xff800000, v41
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s5, s5, s12
	v_lshlrev_b16 v42.l, 8, v42.l
	s_and_b32 s6, s6, s2
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s2, 0xff800000, v45
	v_mad_u64_u32 v[45:46], null, s18, s47, v[77:78]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v44.h, v43.l, v42.l
	v_cndmask_b32_e64 v42, 0, 1, s5
	v_cndmask_b32_e64 v43, 0, 1, s6
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_mov_b16_e32 v43.h, v79.l
	v_mov_b16_e32 v42.h, v78.h
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s7, s7, s2
	v_lshlrev_b16 v41.h, 8, v42.l
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v42.l, v41.l
	.loc	1 685 25                        ; attention.py:685:25
	v_add_nc_u32_e32 v46, 0, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_or_b16 v44.l, v43.l, v41.h
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v43.l, v41.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s12, 0xff800000, v42
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	v_cndmask_b32_e64 v42, 0, 1, s7
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_mov_b16_e32 v41.h, v78.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v43
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s9, s9, s12
	v_lshlrev_b16 v42.l, 8, v42.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s2, 0xff800000, v41
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s8, s8, s11
	v_cndmask_b32_e64 v43, 0, 1, s8
	s_and_b32 s10, s10, s2
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	s_cmp_lt_i32 s59, s72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v47.h, v43.l, v42.l
	v_cndmask_b32_e64 v42, 0, 1, s9
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v43, v45, s79, 1
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v41.h, 8, v42.l
	v_cndmask_b32_e64 v42, 0, 1, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v43, 0x80000000, v43, s0
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v47.l, v42.l, v41.h
	v_add_nc_u32_e32 v42, 0, v104
	ds_store_b32 v119, v47
	ds_store_b32 v42, v44
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v46, v46
	ds_load_b32 v152, v124
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v51, s74, v48
	.loc	1 685 25                        ; attention.py:685:25
	ds_load_b32 v155, v125
	ds_load_b32 v156, v126
	.loc	1 694 30                        ; attention.py:694:30
	v_lshlrev_b32_e32 v42, 1, v45
	v_add_lshl_u32 v44, v45, s80, 1
	v_add_lshl_u32 v45, v45, s81, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v42, 0x80000000, v42, s0
	v_cndmask_b32_e64 v44, 0x80000000, v44, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v45, 0x80000000, v45, s0
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(3)
	v_and_b32_e32 v47, 0x10000, v46
	v_lshrrev_b16 v41.h, 8, v46.l
	v_cmp_ne_u32_e64 s37, 0, v47
	ds_load_b32 v47, v120
	v_and_b16 v41.h, 1, v41.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s43, 1, v41.h
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v48, 0x10000, v47
	v_lshrrev_b16 v41.h, 8, v47.l
	v_cmp_ne_u32_e64 s35, 0, v48
	ds_load_b32 v48, v121
	v_and_b16 v41.h, 1, v41.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v153, 0xff800000, v146, s35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s42, 1, v41.h
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v78, 0x10000, v48
	v_lshrrev_b16 v41.h, 8, v48.l
	v_cmp_ne_u32_e64 s27, 0, v78
	ds_load_b32 v78, v122
	v_and_b16 v41.h, 1, v41.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v68, 0xff800000, v68, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s36, 1, v41.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v67, 0xff800000, v67, s36
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v79, 0x10000, v78
	v_lshrrev_b16 v41.h, 8, v78.l
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_ne_u32_e64 s25, 0, v79
	ds_load_b32 v79, v123
	v_and_b16 v41.h, 1, v41.h
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v72, 0xff800000, v72, s25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s34, 1, v41.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v71, 0xff800000, v71, s34
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v149, 0x10000, v79
	v_lshrrev_b16 v41.h, 8, v79.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_ne_u32_e64 s20, 0, v149
	v_and_b32_e32 v149, 0x10000, v152
	v_and_b16 v41.h, 1, v41.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v60, 0xff800000, v60, s20
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s11, 0, v149
	v_and_b32_e32 v149, 0x10000, v155
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_eq_u16_e64 s28, 1, v41.h
	v_lshrrev_b16 v41.h, 8, v152.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v64, 0xff800000, v64, s11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s12, 0, v149
	v_and_b32_e32 v149, 0x10000, v156
	v_and_b16 v41.h, 1, v41.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v59, 0xff800000, v59, s28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v52, 0xff800000, v52, s12
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s13, 0, v149
	v_and_b32_e32 v149, 1, v46
	v_cmp_eq_u16_e64 s26, 1, v41.h
	v_lshrrev_b16 v41.h, 8, v155.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v56, 0xff800000, v56, s13
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s41, 1, v149
	v_and_b32_e32 v149, 0x1000000, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b16 v41.h, 1, v41.h
	.loc	1 686 26                        ; attention.py:686:26
	v_add_nc_u32_e32 v46, 0, v106
	v_cndmask_b32_e64 v63, 0xff800000, v63, s26
	v_cndmask_b32_e64 v147, 0xff800000, v147, s41
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s40, 0, v149
	v_and_b32_e32 v149, 1, v47
	v_cmp_eq_u16_e64 s19, 1, v41.h
	v_lshrrev_b16 v41.h, 8, v156.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v150, 0xff800000, v145, s40
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s38, 1, v149
	v_and_b32_e32 v149, 0x1000000, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b16 v41.h, 1, v41.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v151, 0xff800000, v73, s38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s39, 0, v149
	v_and_b32_e32 v149, 1, v48
	v_cmp_eq_u16_e64 s18, 1, v41.h
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v41.h, v41.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v154, 0xff800000, v144, s39
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s33, 1, v149
	v_and_b32_e32 v149, 0x1000000, v48
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v55, 0xff800000, v55, s18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v66, 0xff800000, v66, s33
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s31, 0, v149
	v_and_b32_e32 v149, 1, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v69, 0xff800000, v69, s31
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s30, 1, v149
	v_and_b32_e32 v149, 0x1000000, v78
	.loc	1 694 30                        ; attention.py:694:30
	v_add_nc_u32_e32 v78, 0, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v70, 0xff800000, v70, s30
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s29, 0, v149
	v_and_b32_e32 v149, 1, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v73, 0xff800000, v65, s29
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s24, 1, v149
	v_and_b32_e32 v149, 0x1000000, v79
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v79, v70, v71, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp2:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v58, 0xff800000, v58, s24
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s23, 0, v149
	v_and_b32_e32 v149, 1, v152
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v61, 0xff800000, v61, s23
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s22, 1, v149
	v_and_b32_e32 v149, 0x1000000, v152
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v152, 0xff800000, v143, s42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v62, 0xff800000, v62, s22
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s21, 0, v149
	v_and_b32_e32 v149, 1, v155
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v65, 0xff800000, v57, s21
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s14, 1, v149
	v_and_b32_e32 v149, 0x1000000, v155
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v50, 0xff800000, v50, s14
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s16, 0, v149
	v_and_b32_e32 v149, 1, v156
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v53, 0xff800000, v53, s16
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s15, 1, v149
	v_and_b32_e32 v149, 0x1000000, v156
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v54, 0xff800000, v54, s15
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s17, 0, v149
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v149, 0xff800000, v148, s37
	v_cndmask_b32_e64 v148, 0xff800000, v142, s43
	ds_store_b128 v46, v[147:150]
	ds_store_b128 v46, v[58:61] offset:512
	v_cndmask_b32_e64 v57, 0xff800000, v51, s17
	v_cndmask_b32_e64 v51, 0xff800000, v49, s19
	ds_store_b128 v127, v[151:154]
	ds_store_b128 v127, v[62:65] offset:512
	ds_store_b128 v128, v[66:69]
	ds_store_b128 v128, v[50:53] offset:512
	ds_store_b128 v129, v[70:73]
	ds_store_b128 v129, v[54:57] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 694 30                        ; attention.py:694:30
	s_clause 0x3
	buffer_load_b128 v[142:145], v42, s[68:71], 0 offen
	buffer_load_b128 v[155:158], v43, s[68:71], 0 offen
	buffer_load_b128 v[159:162], v44, s[68:71], 0 offen
	buffer_load_b128 v[163:166], v45, s[68:71], 0 offen
	.loc	1 686 26                        ; attention.py:686:26
	ds_load_b128 v[46:49], v110
	ds_load_b128 v[42:45], v110 offset:256
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	ds_store_b128 v78, v[142:145]
	s_waitcnt vmcnt(2)
	ds_store_b128 v78, v[155:158] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v78, v[159:162] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v78, v[163:166] offset:6144
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v78, v67, v68, v69
	v_max3_f32 v142, v73, v58, v59
	v_max3_f32 v143, v50, v51, v52
.Ltmp4:
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v78, v78, v79, v142
	v_max3_f32 v79, v60, v61, v62
	v_max3_f32 v142, v63, v64, v65
	v_max3_f32 v79, v79, v142, v143
	v_max_f32_e32 v142, v147, v148
	v_max3_f32 v143, v150, v151, v152
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v142, v142, v149, v143
	v_max3_f32 v143, v153, v154, v66
	v_max3_f32 v78, v142, v143, v78
	v_dual_max_f32 v142, v53, v54 :: v_dual_max_f32 v143, v56, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max3_f32 v142, v142, v55, v143
.Ltmp6:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v143.h, v41.l
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v78, v78, v79, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v79, v78, s82, 0xfedcba98 op_sel:[1,0]
.Ltmp9:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v78, v141, v78, v79
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v142, v148, v78
	v_sub_f32_e32 v79, v147, v78
	v_sub_f32_e32 v54, v54, v78
	v_sub_f32_e32 v56, v56, v78
	v_sub_f32_e32 v145, v150, v78
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v142, v142
	v_exp_f32_e32 v79, v79
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v144, v149, v78
	v_sub_f32_e32 v147, v152, v78
	v_sub_f32_e32 v146, v151, v78
	v_sub_f32_e32 v149, v154, v78
	v_sub_f32_e32 v148, v153, v78
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v144, v144
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v67, v67, v78
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v146, v146
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v142, 0, v142, s43
	v_cndmask_b32_e64 v79, 0, v79, s41
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v148, v148
	v_exp_f32_e32 v67, v67
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v66, v66, v78
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v143.l, v142.h
	v_cmp_o_f32_e64 s2, v142, v142
	v_cmp_o_f32_e64 s41, v79, v79
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v144, 0, v144, s37
	v_cndmask_b32_e64 v146, 0, v146, s38
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v143, 1, v143
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v66, v66
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v148, 0, v148, s35
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s37, v144, v144
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v67, 0, v67, s36
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v142, v142, v143, 0x7fff
	v_mov_b16_e64 v143.h, v41.l
	v_mov_b16_e64 v143.l, v79.h
	v_cmp_o_f32_e64 s35, v148, v148
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v69, v69, v78
	v_sub_f32_e32 v68, v68, v78
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v66, s33
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v143, 1, v143
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v71, v71, v78
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v68, v68
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s33, v66, v66
	v_add3_u32 v79, v79, v143, 0x7fff
	v_cndmask_b16 v143.h, 0x7fff, v142.h, s2
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v71, v71
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v70, v70, v78
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	ds_load_u16_d16 v150, v109
	ds_load_u16_d16 v151, v109 offset:256
	ds_load_u16_d16 v152, v109 offset:512
	ds_load_u16_d16 v153, v109 offset:768
	ds_load_u16_d16 v154, v109 offset:1024
	ds_load_u16_d16 v155, v109 offset:1280
	ds_load_u16_d16 v156, v109 offset:1536
	ds_load_u16_d16 v157, v109 offset:1792
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v143.l, 0x7fff, v79.h, s41
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v150, v109 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v151, v109 offset:384
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v152, v109 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v153, v109 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v154, v109 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v155, v109 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v156, v109 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v157, v109 offset:1920
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v79, v143, s82, 0xfedcba98 op_sel:[1,0]
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v69, 0, v69, s31
	v_cndmask_b32_e64 v68, 0, v68, s27
	v_cndmask_b32_e64 v71, 0, v71, s34
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v70, v70
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_perm_b32 v142, v79, v143, v107
	v_perm_b32 v143, v79, v143, v108
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v79, v145
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v145.h, v41.l
	v_cmp_o_f32_e64 s27, v68, v68
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v73, v73, v78
	v_sub_f32_e32 v72, v72, v78
	v_sub_f32_e32 v58, v58, v78
	v_sub_f32_e32 v59, v59, v78
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v70, 0, v70, s30
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v73, v73
	v_exp_f32_e32 v72, v72
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v79, 0, v79, s40
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v59, v59
	v_exp_f32_e32 v58, v58
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v61, v61, v78
	v_sub_f32_e32 v60, v60, v78
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v145.l, v79.h
	v_cmp_o_f32_e64 s2, v79, v79
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v63, v63, v78
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v73, 0, v73, s29
	v_cndmask_b32_e64 v72, 0, v72, s25
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v145, 1, v145
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v59, 0, v59, s28
	v_cndmask_b32_e64 v58, 0, v58, s24
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v61, v61
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s25, v72, v72
	v_add3_u32 v79, v79, v145, 0x7fff
	v_mov_b16_e64 v145.h, v41.l
	v_mov_b16_e64 v145.l, v144.h
	v_cmp_o_f32_e64 s24, v58, v58
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v60, v60
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v79.h, 0x7fff, v79.h, s2
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v63, v63
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v145, 1, v145
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v61, 0, v61, s23
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v62, v62, v78
	v_sub_f32_e32 v65, v65, v78
	v_sub_f32_e32 v64, v64, v78
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v144, v144, v145, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v51, v51, v78
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v60, 0, v60, s20
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v62, v62
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v63, 0, v63, s26
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cndmask_b16 v79.l, 0x7fff, v144.h, s37
	v_cmp_o_f32_e64 s37, v146, v146
	v_cmp_o_f32_e64 s20, v60, v60
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v64, v64
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v145, v79, s82, 0xfedcba98 op_sel:[1,0]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v50, v50, v78
	v_sub_f32_e32 v53, v53, v78
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v62, 0, v62, s22
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v55, v55, v78
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_perm_b32 v144, v145, v79, v107
	v_perm_b32 v145, v145, v79, v108
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v79, v147
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v147.h, v41.l
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v65, 0, v65, s21
	v_cndmask_b32_e64 v64, 0, v64, s11
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v57, v57, v78
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v51, v51
	v_exp_f32_e32 v50, v50
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s21, v65, v65
	v_cmp_o_f32_e64 s11, v64, v64
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v53, v53
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v79, 0, v79, s42
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v55, v55
	v_exp_f32_e32 v57, v57
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v52, v52, v78
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v54, v54
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v147.l, v79.h
	v_cmp_o_f32_e64 s2, v79, v79
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v51, 0, v51, s19
	v_cndmask_b32_e64 v50, 0, v50, s14
	v_cndmask_b32_e64 v53, 0, v53, s16
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v147, 1, v147
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v55, 0, v55, s18
	v_cndmask_b32_e64 v57, 0, v57, s17
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v52, v52
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s16, v51, v51
	v_add3_u32 v79, v79, v147, 0x7fff
	v_mov_b16_e64 v147.h, v41.l
	v_mov_b16_e64 v147.l, v146.h
	v_cmp_o_f32_e64 s17, v50, v50
	v_cmp_o_f32_e64 s18, v53, v53
	v_cndmask_b16 v79.h, 0x7fff, v79.h, s2
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v54, 0, v54, s15
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v147, 1, v147
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v52, 0, v52, s12
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s12, v55, v55
	v_cmp_o_f32_e64 s14, v57, v57
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v56, v56
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v146, v146, v147, 0x7fff
	v_cmp_o_f32_e64 s19, v52, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v79.l, 0x7fff, v146.h, s37
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v56, 0, v56, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v147, v79, s82, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s13, v54, v54
	v_cmp_o_f32_e64 s15, v56, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_perm_b32 v146, v147, v79, v107
	v_perm_b32 v147, v147, v79, v108
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v79, v149
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v149.h, v41.l
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v79, 0, v79, s39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v149.l, v79.h
	v_cmp_o_f32_e64 s2, v79, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v149, 1, v149
	v_add3_u32 v79, v79, v149, 0x7fff
	v_mov_b16_e64 v149.h, v41.l
	v_mov_b16_e64 v149.l, v148.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v79.h, 0x7fff, v79.h, s2
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v141
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v149, 1, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v148, v148, v149, 0x7fff
	v_cndmask_b16 v79.l, 0x7fff, v148.h, s35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v149, v79, s82, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v148, v149, v79, v107
	v_perm_b32 v149, v149, v79, v108
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v79, v141, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v79, v79
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v79, 0, v79, s2
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s2, v67, v67
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v33, v33, v79
	v_mul_f32_e32 v34, v34, v79
	v_mul_f32_e32 v35, v35, v79
	v_mul_f32_e32 v36, v36, v79
	v_mul_f32_e32 v37, v37, v79
	v_mul_f32_e32 v38, v38, v79
	v_mul_f32_e32 v39, v39, v79
	v_mul_f32_e32 v40, v40, v79
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v79.h, v41.l
	v_mov_b16_e32 v79.l, v67.h
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[150:157], v[142:149], v[33:40]
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	ds_load_u16_d16 v141, v109 offset:2048
	ds_load_u16_d16 v142, v109 offset:2304
	ds_load_u16_d16 v143, v109 offset:2560
	ds_load_u16_d16 v144, v109 offset:2816
	ds_load_u16_d16 v145, v109 offset:3072
	ds_load_u16_d16 v146, v109 offset:3328
	ds_load_u16_d16 v147, v109 offset:3584
	ds_load_u16_d16 v148, v109 offset:3840
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v79, 1, v79
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v141, v109 offset:2176
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v142, v109 offset:2432
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v143, v109 offset:2688
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v144, v109 offset:2944
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v145, v109 offset:3200
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v146, v109 offset:3456
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v147, v109 offset:3712
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v148, v109 offset:3968
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v67, v67, v79, 0x7fff
	v_mov_b16_e32 v79.h, v41.l
	v_mov_b16_e32 v79.l, v66.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v67.h, 0x7fff, v67.h, s2
	v_cmp_o_f32_e64 s2, v69, v69
	v_and_b32_e32 v79, 1, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v66, v66, v79, 0x7fff
	v_cndmask_b16 v67.l, 0x7fff, v66.h, s33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v79, v67, s82, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v66, v79, v67, v107
	v_perm_b32 v67, v79, v67, v108
	v_mov_b16_e32 v79.h, v41.l
	v_mov_b16_e32 v79.l, v69.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v79, 1, v79
	v_add3_u32 v69, v69, v79, 0x7fff
	v_mov_b16_e32 v79.h, v41.l
	v_mov_b16_e32 v79.l, v68.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v69.h, 0x7fff, v69.h, s2
	v_cmp_o_f32_e64 s2, v71, v71
	v_and_b32_e32 v79, 1, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v68, v68, v79, 0x7fff
	v_cndmask_b16 v69.l, 0x7fff, v68.h, s27
	v_cmp_o_f32_e64 s27, v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v79, v69, s82, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v68, v79, v69, v107
	v_perm_b32 v69, v79, v69, v108
	v_mov_b16_e32 v79.h, v41.l
	v_mov_b16_e32 v79.l, v71.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v79, 1, v79
	v_add3_u32 v71, v71, v79, 0x7fff
	v_mov_b16_e32 v79.h, v41.l
	v_mov_b16_e32 v79.l, v70.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v71.h, 0x7fff, v71.h, s2
	v_cmp_o_f32_e64 s2, v73, v73
	v_and_b32_e32 v79, 1, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v70, v70, v79, 0x7fff
	v_cndmask_b16 v71.l, 0x7fff, v70.h, s27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v79, v71, s82, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v70, v79, v71, v107
	v_perm_b32 v71, v79, v71, v108
	v_mov_b16_e32 v79.h, v41.l
	v_mov_b16_e32 v79.l, v73.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v79, 1, v79
	v_add3_u32 v73, v73, v79, 0x7fff
	v_mov_b16_e32 v79.h, v41.l
	v_mov_b16_e32 v79.l, v72.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v73.h, 0x7fff, v73.h, s2
	v_cmp_o_f32_e64 s2, v59, v59
	v_and_b32_e32 v79, 1, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v72, v72, v79, 0x7fff
	v_cndmask_b16 v73.l, 0x7fff, v72.h, s25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v79, v73, s82, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v72, v79, v73, v107
	v_perm_b32 v73, v79, v73, v108
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[141:148], v[66:73], v[33:40]
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v66.h, v41.l
	v_mov_b16_e32 v67.h, v41.l
	v_mov_b16_e32 v66.l, v59.h
	v_mov_b16_e32 v67.l, v58.h
	v_dual_mov_b32 v141, v78 :: v_dual_and_b32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v67, 1, v67
	v_add3_u32 v59, v59, v66, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v58, v58, v67, 0x7fff
	v_cndmask_b16 v59.h, 0x7fff, v59.h, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v59.l, 0x7fff, v58.h, s24
	v_cmp_o_f32_e64 s2, v61, v61
	v_permlanex16_b32 v66, v59, s82, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v58, v66, v59, v107
	v_perm_b32 v59, v66, v59, v108
	v_mov_b16_e32 v66.h, v41.l
	v_mov_b16_e32 v66.l, v61.h
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v61, v61, v66, 0x7fff
	v_mov_b16_e32 v66.h, v41.l
	v_mov_b16_e32 v66.l, v60.h
	v_cndmask_b16 v61.h, 0x7fff, v61.h, s2
	v_cmp_o_f32_e64 s2, v63, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v66, 1, v66
	v_add3_u32 v60, v60, v66, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v61.l, 0x7fff, v60.h, s20
	v_cmp_o_f32_e64 s20, v62, v62
	v_permlanex16_b32 v66, v61, s82, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v60, v66, v61, v107
	v_perm_b32 v61, v66, v61, v108
	v_mov_b16_e32 v66.h, v41.l
	v_mov_b16_e32 v66.l, v63.h
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v63, v63, v66, 0x7fff
	v_mov_b16_e32 v66.h, v41.l
	v_mov_b16_e32 v66.l, v62.h
	v_cndmask_b16 v63.h, 0x7fff, v63.h, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v66, 1, v66
	v_add3_u32 v62, v62, v66, 0x7fff
	v_mov_b16_e32 v66.h, v41.l
	v_mov_b16_e32 v66.l, v65.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v63.l, 0x7fff, v62.h, s20
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v65, v65, v66, 0x7fff
	v_mov_b16_e32 v66.h, v41.l
	v_mov_b16_e32 v66.l, v64.h
	v_cndmask_b16 v65.h, 0x7fff, v65.h, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v66, 1, v66
	v_add3_u32 v64, v64, v66, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v65.l, 0x7fff, v64.h, s11
	v_permlanex16_b32 v64, v63, s82, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v66, v65, s82, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v62, v64, v63, v107
	v_perm_b32 v63, v64, v63, v108
	s_delay_alu instid0(VALU_DEP_3)
	v_perm_b32 v64, v66, v65, v107
	v_perm_b32 v65, v66, v65, v108
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	ds_load_u16_d16 v66, v109 offset:4096
	ds_load_u16_d16 v67, v109 offset:4352
	ds_load_u16_d16 v68, v109 offset:4608
	ds_load_u16_d16 v69, v109 offset:4864
	ds_load_u16_d16 v70, v109 offset:5120
	ds_load_u16_d16 v71, v109 offset:5376
	ds_load_u16_d16 v72, v109 offset:5632
	ds_load_u16_d16 v73, v109 offset:5888
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v66, v109 offset:4224
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v67, v109 offset:4480
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v68, v109 offset:4736
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v69, v109 offset:4992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v70, v109 offset:5248
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v71, v109 offset:5504
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v72, v109 offset:5760
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v73, v109 offset:6016
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[66:73], v[58:65], v[33:40]
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v45, v45
	v_max_f32_e32 v70, v49, v49
	v_max3_f32 v71, v46, v42, v47
.Ltmp11:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v62.h, v41.l
	v_mov_b16_e32 v63.h, v41.l
	v_mov_b16_e32 v64.h, v41.l
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v70, v69
	v_max3_f32 v70, v43, v48, v44
.Ltmp13:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v65.h, v41.l
	v_mov_b16_e32 v66.h, v41.l
	v_mov_b16_e32 v67.h, v41.l
	v_mov_b16_e32 v68.h, v41.l
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v69, v71, v70, v69
.Ltmp15:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v41.l, v51.h
	v_mov_b16_e32 v62.l, v50.h
	v_mov_b16_e32 v63.l, v53.h
	v_mov_b16_e32 v65.l, v55.h
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v70, v69
.Ltmp17:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v67.l, v57.h
	v_and_b32_e32 v41, 1, v41
	v_and_b32_e32 v62, 1, v62
	v_and_b32_e32 v63, 1, v63
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v70, v70 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp19:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v65, 1, v65
	v_and_b32_e32 v67, 1, v67
	v_add3_u32 v41, v51, v41, 0x7fff
	v_add3_u32 v50, v50, v62, 0x7fff
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v70, v70, v70
.Ltmp21:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v51, v53, v63, 0x7fff
	v_add3_u32 v53, v55, v65, 0x7fff
	v_add3_u32 v55, v57, v67, 0x7fff
	v_cndmask_b16 v67.h, 0x7fff, v41.h, s16
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v70
.Ltmp23:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v67.l, 0x7fff, v50.h, s17
	v_cndmask_b16 v57.h, 0x7fff, v51.h, s18
	v_mov_b16_e32 v66.l, v54.h
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v60, v139, v139
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_dual_mov_b32 v70, v69 :: v_dual_mov_b32 v59, v138
.Ltmp25:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v64.l, v52.h
	v_mov_b16_e32 v68.l, v56.h
	v_cndmask_b16 v63.h, 0x7fff, v53.h, s12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v70, v70 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v61, v59, v59 :: v_dual_and_b32 v64, 1, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v68, 1, v68
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s11, 0xff800000, v59
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v41, v70, v70
.Ltmp29:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v62.h, 0x7fff, v55.h, s14
	v_add3_u32 v52, v52, v64, 0x7fff
	v_add3_u32 v56, v56, v68, 0x7fff
	v_permlanex16_b32 v68, v67, s82, 0xfedcba98 op_sel:[1,0]
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v50, v69, v41
	v_mov_b32_e32 v58, v140
.Ltmp31:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v57.l, 0x7fff, v52.h, s19
	v_cndmask_b16 v62.l, 0x7fff, v56.h, s15
	v_perm_b32 v41, v68, v67, v107
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v51, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp33:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v64, v62, s82, 0xfedcba98 op_sel:[1,0]
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v51, v51 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v51, v51, v51 :: v_dual_and_b32 v66, 1, v66
.Ltmp36:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v54, v54, v66, 0x7fff
	v_permlanex16_b32 v66, v57, s82, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v50, v50, v51
.Ltmp38:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v63.l, 0x7fff, v54.h, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v139, v60, v50
	v_max_f32_e32 v138, v61, v50
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v65, v63, s82, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v46, v46, v139
	v_sub_f32_e32 v47, v47, v139
	v_sub_f32_e32 v48, v48, v139
	v_sub_f32_e32 v49, v49, v139
	v_sub_f32_e32 v42, v42, v139
	v_sub_f32_e32 v43, v43, v139
	v_sub_f32_e32 v50, v44, v139
	v_sub_f32_e32 v45, v45, v139
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v46, v46
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v43, v43
	v_exp_f32_e32 v48, v48
	v_exp_f32_e32 v50, v50
	v_exp_f32_e32 v49, v49
	v_exp_f32_e32 v45, v45
	.loc	1 689 74 is_stmt 1              ; attention.py:689:74
	v_sub_f32_e32 v44, v59, v138
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v46, 0, v46, s6
	v_cndmask_b32_e64 v42, 0, v42, s10
	v_cndmask_b32_e64 v47, 0, v47, s5
	v_cndmask_b32_e64 v43, 0, v43, s9
	v_cndmask_b32_e64 v48, 0, v48, s4
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v50, 0, v50, s8
	v_cndmask_b32_e64 v49, 0, v49, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v45, 0, v45, s7
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v42, v46, v42 :: v_dual_add_f32 v43, v47, v43
	v_add_f32_e32 v46, v48, v50
.Ltmp40:
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v60, v44
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v45, v49, v45
.Ltmp42:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v49, v109 offset:6144
	ds_load_u16_d16 v50, v109 offset:6400
	ds_load_u16_d16 v51, v109 offset:6656
	ds_load_u16_d16 v52, v109 offset:6912
	ds_load_u16_d16 v53, v109 offset:7168
	ds_load_u16_d16 v54, v109 offset:7424
	ds_load_u16_d16 v55, v109 offset:7680
	ds_load_u16_d16 v56, v109 offset:7936
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v42, v42, v43
.Ltmp44:
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v49, v109 offset:6272
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v50, v109 offset:6528
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v51, v109 offset:6784
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v52, v109 offset:7040
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v53, v109 offset:7296
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v54, v109 offset:7552
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v55, v109 offset:7808
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v56, v109 offset:8064
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v43, v46, v45
.Ltmp46:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v44, v66, v57, v108
	v_perm_b32 v45, v65, v63, v107
	v_perm_b32 v46, v65, v63, v108
	v_perm_b32 v47, v64, v62, v107
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v42, v42, v43
.Ltmp48:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v48, v64, v62, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v43, v42
	v_mov_b32_dpp v43, v43 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v42, v42, v43
.Ltmp51:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v59, v42, v43
.Ltmp53:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v42, v68, v67, v108
	v_perm_b32 v43, v66, v57, v107
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v57, 0, v60, s11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp54:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v61, v59
.Ltmp55:
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[49:56], v[41:48], v[33:40]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v61, v61 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v140, v59, v61
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp58:
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v140, v58, v57
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v40, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v138, 0xff800000 :: v_dual_mov_b32 v39, v40
	v_mov_b32_e32 v38, v40
	v_mov_b32_e32 v37, v40
	v_mov_b32_e32 v36, v40
	v_mov_b32_e32 v35, v40
	v_mov_b32_e32 v34, v40
	v_mov_b32_e32 v33, v40
	v_mov_b32_e32 v140, v40
.LBB0_4:                                ; %._crit_edge
	.loc	1 825 26 is_stmt 1              ; attention.py:825:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v83
	s_mov_b32 s1, 0x76543210
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp60:
	.loc	1 822 31                        ; attention.py:822:31
	s_mul_i32 s58, s58, s3
	.loc	1 825 17                        ; attention.py:825:17
	v_cndmask_b32_e32 v1, 0xff800000, v138, vcc_lo
	.loc	1 828 36                        ; attention.py:828:36
	v_dual_cndmask_b32 v3, 0, v140 :: v_dual_and_b32 v4, 12, v81
	.loc	1 830 26                        ; attention.py:830:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v84
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s0, s47, 2
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_permlanex16_b32 v2, v1, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_permlanex16_b32 v5, v3, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp64:
	.loc	1 822 31                        ; attention.py:822:31
	s_add_i32 s1, s45, s58
	.loc	1 833 13                        ; attention.py:833:13
	s_mov_b32 s2, exec_lo
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v2, v2, v2
.Ltmp66:
	.loc	1 822 30                        ; attention.py:822:30
	s_mul_i32 s0, s1, s0
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v7, 0, v33 :: v_dual_add_nc_u32 v4, 0, v4
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v3, v3, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v1, v1, v2 :: v_dual_and_b32 v2, 12, v83
.Ltmp69:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v9, 0, v35, vcc_lo
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v5, v7 :: v_dual_cndmask_b32 v8, 0, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v6, v1
	v_add_nc_u32_e32 v2, 0, v2
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v10, v3
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp73:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v12, v9
.Ltmp74:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v11, v8
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
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v6, v6, v6
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_dual_add_f32 v3, v3, v10 :: v_dual_cndmask_b32 v14, 0, v39
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v1, v1, v6
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v6, v5
.Ltmp84:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	ds_store_b32 v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v4
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v2, v4
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v4, v9, v12 :: v_dual_add_f32 v3, v8, v11
.Ltmp87:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v11, 0, v36, vcc_lo
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp89:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v13, 0, v38 :: v_dual_mov_b32 v8, v4
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v7, v3 :: v_dual_cndmask_b32 v12, 0, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp91:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v5, v5, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp92:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v17, v12
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v4, v4, v8 :: v_dual_add_f32 v3, v3, v7
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v18, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp95:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v9, v5 :: v_dual_mov_b32 v16, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp97:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v15, 0, v40 :: v_dual_mov_b32 v10, v3
.Ltmp98:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp100:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v20, v15
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_dual_add_f32 v4, v4, v16 :: v_dual_mov_b32 v7, v2
.Ltmp103:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v8, v1, v6
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v1, v5, v9 :: v_dual_mov_b32 v16, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v6, v4
.Ltmp106:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp107:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v3, v3, v10 :: v_dual_mov_b32 v10, v8
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v7, v2, v7
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v2, v1 :: v_dual_mov_b32 v5, v3
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_mov_b32 v9, v7
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v11, v11, v16 :: v_dual_add_f32 v14, v14, v19
	v_add_f32_e32 v13, v13, v18
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp115:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v16, v11
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v15, v15, v20 :: v_dual_mov_b32 v18, v13
.Ltmp118:
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
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v13, v13, v18 :: v_dual_add_f32 v12, v12, v17
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v11, v11, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v16, v15, v20
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v14, v14, v19 :: v_dual_mov_b32 v15, v11
.Ltmp124:
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
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v11, v11, v15
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v15, v14, v19 :: v_dual_mov_b32 v14, v11
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v13, v13, v18
	v_add_f32_e32 v17, v16, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp130:
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
.Ltmp131:
	.loc	1 833 13                        ; attention.py:833:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp132:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v21, v8, v8
.Ltmp133:
	.loc	1 833 13                        ; attention.py:833:13
	s_ashr_i32 s1, s0, 31
.Ltmp134:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v8, v7, v9
.Ltmp135:
	.loc	1 833 13                        ; attention.py:833:13
	s_lshl_b64 s[4:5], s[0:1], 2
	v_mov_b32_e32 v9, 0
.Ltmp136:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v7, v21, v10
.Ltmp137:
	.loc	1 833 13                        ; attention.py:833:13
	s_add_u32 s4, s56, s4
	s_addc_u32 s5, s57, s5
	.loc	1 834 13                        ; attention.py:834:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp138:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v8, v13, v18 :: v_dual_add_f32 v7, v12, v16
	v_add_f32_e32 v14, v11, v14
	v_dual_add_f32 v13, v4, v6 :: v_dual_add_f32 v12, v3, v5
.Ltmp139:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v3, 0xc0, v81
.Ltmp140:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v11, v1, v2 :: v_dual_and_b32 v4, 0xe0, v80
.Ltmp141:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v1, 28, v80
	v_and_b32_e32 v2, 32, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 0, v3
	v_add_nc_u32_e32 v4, 0, v4
.Ltmp142:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
.Ltmp143:
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
.Ltmp144:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
		.amdhsa_next_free_vgpr 167
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_vgpr, 167
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.numbered_sgpr, 83
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10548
; TotalNumSgprs: 85
; NumVgprs: 167
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 20
; NumSGPRsForWavesPerEU: 85
; NumVGPRsForWavesPerEU: 167
; Occupancy: 9
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
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
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
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
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
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     85
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     167
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
