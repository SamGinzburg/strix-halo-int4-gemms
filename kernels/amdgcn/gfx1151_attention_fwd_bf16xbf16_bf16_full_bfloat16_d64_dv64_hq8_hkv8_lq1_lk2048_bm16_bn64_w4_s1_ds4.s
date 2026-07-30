	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
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
	v_lshrrev_b32_e32 v103, 3, v0
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x40
	s_load_b64 s[60:61], s[0:1], 0x0
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v100, 1, v0
	v_lshlrev_b32_e32 v105, 4, v0
	v_and_b32_e32 v104, 15, v0
	v_lshlrev_b32_e32 v102, 2, v0
	v_lshlrev_b32_e32 v101, 5, v0
	v_and_b32_e32 v6, 0x70, v100
	s_mov_b32 s48, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v6, v105, v6
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
	v_add_nc_u32_e32 v106, 0, v6
	.loc	1 609 32                        ; attention.py:609:32
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s4, v1
	.loc	1 571 21                        ; attention.py:571:21
	v_and_b32_e32 v1, 7, v0
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 571 21                        ; attention.py:571:21
	v_lshlrev_b32_e32 v33, 3, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 609 32                        ; attention.py:609:32
	s_cvt_u32_f32 s4, s4
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[97:98], null, s46, v103, v[33:34]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_i32 s6, s6, s4
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e32 vcc_lo, s46, v33
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
	s_lshl_b32 s4, s7, 4
	.loc	1 560 27                        ; attention.py:560:27
	s_mul_i32 s7, s7, s58
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v34, s4, v103
	.loc	1 598 26                        ; attention.py:598:26
	s_add_i32 s4, s4, s3
	.loc	1 560 27                        ; attention.py:560:27
	s_sub_i32 s45, s2, s7
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s4, s4, s46
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v2, s4, v97, 1
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s44, 1, v34
	.loc	1 601 22 is_stmt 0              ; attention.py:601:22
	s_and_b32 s4, vcc_lo, s44
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s58, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 609 32 is_stmt 1              ; attention.py:609:32
	s_xor_b32 s8, s4, s58
	s_abs_i32 s4, s4
	.loc	1 599 26                        ; attention.py:599:26
	buffer_load_b128 v[2:5], v2, s[60:63], 0 offen
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s8
	s_sub_i32 s2, s2, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 610 18                        ; attention.py:610:18
	s_mul_i32 s4, s45, s2
	.loc	1 611 33                        ; attention.py:611:33
	s_lshl_b32 s2, s2, 6
	.loc	1 610 18                        ; attention.py:610:18
	s_lshl_b32 s59, s4, 6
	.loc	1 611 33                        ; attention.py:611:33
	s_add_i32 s2, s59, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 611 18 is_stmt 0              ; attention.py:611:18
	s_min_i32 s72, s2, 0x800
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	s_cmp_ge_i32 s59, s72
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v106, v[2:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b128 s[8:11], s[0:1], 0x64
	.loc	1 566 23 is_stmt 1              ; attention.py:566:23
	s_ashr_i32 s2, s3, 31
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x8
	s_load_b64 s[64:65], s[0:1], 0x30
	s_lshr_b32 s0, s2, 29
	v_dual_mov_b32 v56, 0x5410 :: v_dual_lshlrev_b32 v1, 4, v1
	s_add_i32 s1, s3, s0
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s0, s47, v33
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s2, s1, -8
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s1, s1, 3
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s2, s3, s2
	.loc	1 599 26                        ; attention.py:599:26
	v_lshl_or_b32 v9, v104, 7, v1
	.loc	1 629 13                        ; attention.py:629:13
	v_sub_nc_u32_e32 v107, 0x800, v33
	v_lshlrev_b32_e32 v39, 3, v104
	v_lshlrev_b32_e32 v45, 3, v0
	v_bfe_i32 v49, v0, 2, 1
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v14, 0x50, v9
	v_xor_b32_e32 v1, 0x70, v9
	v_mov_b32_e32 v57, 0x7632
	v_and_b32_e32 v45, 16, v45
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v34, v34, s11
	.loc	1 676 27                        ; attention.py:676:27
	s_mul_i32 s2, s10, s2
	.loc	1 675 27                        ; attention.py:675:27
	s_mul_i32 s1, s9, s1
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v110, 0, v14
	s_add_i32 s2, s2, s1
	v_and_b32_e32 v49, 0x840, v49
	v_and_or_b32 v45, 0x180, v105, v45
	v_add_nc_u32_e32 v108, 0, v1
	v_add3_u32 v116, s2, v33, v34
	v_and_b32_e32 v34, 0x60, v0
	v_and_b32_e32 v55, 4, v0
	v_and_b32_e32 v59, 0x80, v100
	v_xor_b32_e32 v13, 64, v9
	v_xor_b32_e32 v12, 48, v9
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[98:99], null, s47, v103, v[33:34]
	v_mov_b32_e32 v33, 0
	v_and_b32_e32 v35, 1, v0
	v_and_b32_e32 v36, 14, v0
	v_and_b32_e32 v37, 16, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v145, v33 :: v_dual_and_b32 v38, 0x70, v0
	v_lshlrev_b32_e32 v35, 6, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v129, 0xff800000 :: v_dual_lshlrev_b32 v40, 2, v36
	v_lshlrev_b32_e32 v41, 3, v37
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v11, 32, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v35, v36, 7, v35
	v_lshrrev_b32_e32 v36, 1, v38
	v_lshl_or_b32 v38, v38, 4, v39
	v_xor_b32_e32 v10, 16, v9
	v_xor_b32_e32 v2, 0x60, v9
	v_or3_b32 v117, v35, v41, v40
	v_lshrrev_b32_e32 v40, 3, v34
	v_xor_b32_e32 v35, v38, v36
	v_bfe_i32 v36, v0, 0, 1
	v_dual_mov_b32 v144, 0xff800000 :: v_dual_add_nc_u32 v111, 0, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v118, v102, v40
	v_xor_b32_e32 v40, 48, v117
	v_and_b32_e32 v36, 0x420, v36
	v_add_nc_u32_e32 v112, 0, v12
	v_add_nc_u32_e32 v113, 0, v11
	v_add_nc_u32_e32 v114, 0, v10
	v_add_nc_u32_e32 v130, 0, v40
	v_or3_b32 v120, v45, v36, v49
	v_bfe_i32 v45, v0, 3, 1
	v_bfe_i32 v49, v0, 5, 1
	v_mov_b32_e32 v40, v33
	v_cmp_eq_u32_e64 s1, 0, v37
	v_and_b32_e32 v36, 0x60, v101
	v_and_b32_e32 v45, 0x420, v45
	v_and_b32_e32 v49, 0x840, v49
	v_dual_mov_b32 v146, 0xff800000 :: v_dual_add_nc_u32 v109, 0, v2
	v_cndmask_b32_e64 v56, 0x1054, v56, s1
	v_cndmask_b32_e64 v57, 0x3276, v57, s1
	s_delay_alu instid0(VALU_DEP_4)
	v_xor3_b32 v36, v45, v36, v49
	v_lshl_add_u32 v45, v55, 7, 0
	v_add_nc_u32_e32 v115, 0, v9
	v_lshl_or_b32 v49, v56, 8, v56
	v_lshl_or_b32 v55, v57, 8, v57
	v_add_nc_u32_e32 v123, 0, v35
	v_add3_u32 v36, v45, v59, v36
	v_mov_b32_e32 v35, v33
	v_and_b32_e32 v45, 0x540054, v49
	v_and_b32_e32 v49, 0x760076, v55
	v_lshlrev_b32_e32 v55, 1, v104
	v_add_nc_u32_e32 v143, v36, v37
	v_mov_b32_e32 v36, v33
	v_mov_b32_e32 v37, v33
	ds_load_b128 v[5:8], v108
	ds_load_b128 v[1:4], v109
	v_add3_u32 v122, 0, v55, v34
	v_mov_b32_e32 v34, v33
	ds_load_b128 v[13:16], v110
	ds_load_b128 v[9:12], v111
	ds_load_b128 v[21:24], v112
	ds_load_b128 v[17:20], v113
	ds_load_b128 v[29:32], v114
	ds_load_b128 v[25:28], v115
	v_and_b32_e32 v41, 28, v0
	v_xor_b32_e32 v38, 8, v117
	v_xor_b32_e32 v39, 16, v117
	v_xor_b32_e32 v42, 24, v117
	v_xor_b32_e32 v43, 32, v117
	v_and_or_b32 v119, 0x3e0, v101, v41
	v_xor_b32_e32 v44, 40, v117
	v_xor_b32_e32 v41, 56, v117
	v_xor_b32_e32 v46, 0x210, v118
	v_xor_b32_e32 v58, 32, v120
	v_xor_b32_e32 v47, 4, v119
	v_xor_b32_e32 v48, 8, v119
	v_xor_b32_e32 v50, 12, v119
	v_xor_b32_e32 v51, 16, v119
	v_xor_b32_e32 v52, 20, v119
	v_xor_b32_e32 v53, 24, v119
	v_xor_b32_e32 v54, 28, v119
	v_xor_b32_e32 v56, 64, v120
	v_xor_b32_e32 v57, 0x60, v120
	v_lshl_or_b32 v45, v45, 4, v45
	v_lshl_or_b32 v49, v49, 4, v49
	v_add_nc_u32_e32 v124, 0, v38
	v_add_nc_u32_e32 v125, 0, v39
	v_add_nc_u32_e32 v126, 0, v42
	v_and_b32_e32 v99, 0x5040504, v45
	v_and_b32_e32 v121, 0x7060706, v49
	v_add_nc_u32_e32 v127, 0, v43
	v_add_nc_u32_e32 v128, 0, v44
	v_add_nc_u32_e32 v131, 0, v41
	v_add_nc_u32_e32 v132, 0, v46
	v_add_nc_u32_e32 v133, 0, v47
	v_add_nc_u32_e32 v134, 0, v48
	v_add_nc_u32_e32 v135, 0, v50
	v_add_nc_u32_e32 v136, 0, v51
	v_add_nc_u32_e32 v137, 0, v52
	v_add_nc_u32_e32 v138, 0, v53
	v_add_nc_u32_e32 v139, 0, v54
	v_add_nc_u32_e32 v140, 0, v58
	v_add_nc_u32_e32 v141, 0, v56
	v_add_nc_u32_e32 v142, 0, v57
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v39, v33
	v_mov_b16_e64 v147.l, 0
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s74, s8, 0x3fb8aa3b
	s_and_b32 s5, s5, 0xffff
	.loc	1 656 32                        ; attention.py:656:32
	s_lshl_b32 s73, s3, 11
	s_lshl_b32 s75, s46, 4
	s_lshl_b32 s76, s46, 5
	s_mul_i32 s77, s46, 48
	s_and_b32 s65, s65, 0xffff
	s_lshl_b32 s78, s47, 4
	s_lshl_b32 s79, s47, 5
	s_mul_i32 s80, s47, 48
	s_and_b32 s69, s7, 0xffff
	s_mov_b32 s49, s48
	s_mov_b32 s50, s48
	s_mov_b32 s51, s48
	s_mov_b32 s52, s48
	s_mov_b32 s53, s48
	s_mov_b32 s54, s48
	s_mov_b32 s55, s48
	s_mov_b32 s81, 0x76543210
	s_mov_b32 s60, s4
	s_mov_b32 s61, s5
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	s_mov_b32 s68, s6
	s_mov_b32 s70, s62
	s_mov_b32 s71, s63
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 657 32                        ; attention.py:657:32
	s_add_i32 s4, s59, s73
	.loc	1 629 13                        ; attention.py:629:13
	v_sub_nc_u32_e32 v41, 0x800, v103
	.loc	1 657 32                        ; attention.py:657:32
	v_mad_u64_u32 v[42:43], null, s4, s46, v[97:98]
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v72, s55 :: v_dual_mov_b32 v71, s54
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_lt_i32_e64 s24, s59, v41
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v70, s53 :: v_dual_mov_b32 v69, s52
	v_dual_mov_b32 v68, s51 :: v_dual_mov_b32 v67, s50
	.loc	1 658 32                        ; attention.py:658:32
	v_lshlrev_b32_e32 v41, 1, v42
	v_add_lshl_u32 v43, v42, s75, 1
	v_add_lshl_u32 v44, v42, s76, 1
	v_add_lshl_u32 v42, v42, s77, 1
	.loc	1 660 30                        ; attention.py:660:30
	s_and_b32 s2, vcc_lo, s24
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v66, s49 :: v_dual_mov_b32 v65, s48
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	v_cndmask_b32_e64 v45, 0x80000000, v43, s2
	v_cndmask_b32_e64 v49, 0x80000000, v44, s2
	v_cndmask_b32_e64 v53, 0x80000000, v42, s2
	s_clause 0x3
	buffer_load_b128 v[41:44], v41, s[60:63], 0 offen
	buffer_load_b128 v[45:48], v45, s[60:63], 0 offen
	buffer_load_b128 v[49:52], v49, s[60:63], 0 offen
	buffer_load_b128 v[53:56], v53, s[60:63], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 660 65                        ; attention.py:660:65
	v_cmp_lt_i32_e64 s1, s59, v107
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v81, v116, s59, 1
	.loc	1 684 35                        ; attention.py:684:35
	v_add_nc_u32_e32 v82, 0, v117
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s59, s59, 64
	.loc	1 685 25                        ; attention.py:685:25
	.loc	1 665 25                        ; attention.py:665:25
	s_and_b32 s7, s44, s1
	.loc	1 685 25                        ; attention.py:685:25
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v81, 0x80000000, v81, s7
	.loc	1 685 25                        ; attention.py:685:25
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt vmcnt(3)
	ds_store_b128 v106, v[41:44]
	s_waitcnt vmcnt(2)
	ds_store_b128 v106, v[45:48] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v106, v[49:52] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v106, v[53:56] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[45:48], v114
	ds_load_b128 v[41:44], v115
	ds_load_b128 v[49:52], v115 offset:2048
	ds_load_b128 v[53:56], v114 offset:2048
	ds_load_b128 v[88:91], v114 offset:4096
	ds_load_b128 v[84:87], v115 offset:4096
	ds_load_b128 v[148:151], v115 offset:6144
	ds_load_b128 v[152:155], v114 offset:6144
	ds_load_b128 v[160:163], v112
	ds_load_b128 v[156:159], v113
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[41:48], v[25:32], v[65:72]
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[49:56], v[25:32], v[65:72]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[84:91], v[25:32], v[65:72]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[88:91], v112 offset:4096
	ds_load_b128 v[84:87], v113 offset:4096
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[148:155], v[25:32], v[65:72]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[156:163], v[17:24], v[73:80]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[65:68], v113 offset:2048
	ds_load_b128 v[69:72], v112 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[84:91], v[17:24], v[49:56]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[88:91], v110
	ds_load_b128 v[84:87], v111
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[65:72], v[17:24], v[57:64]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[65:68], v113 offset:6144
	ds_load_b128 v[69:72], v112 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[84:91], v[9:16], v[73:80]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[88:91], v110 offset:4096
	ds_load_b128 v[84:87], v111 offset:4096
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[65:72], v[17:24], v[41:48]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[65:68], v111 offset:2048
	ds_load_b128 v[69:72], v110 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[84:91], v[9:16], v[49:56]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[88:91], v108
	ds_load_b128 v[84:87], v109
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[65:72], v[9:16], v[57:64]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[65:68], v111 offset:6144
	ds_load_b128 v[69:72], v110 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[84:91], v[1:8], v[73:80]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[88:91], v108 offset:4096
	ds_load_b128 v[84:87], v109 offset:4096
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[65:72], v[9:16], v[41:48]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[65:68], v109 offset:2048
	ds_load_b128 v[69:72], v108 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[84:91], v[1:8], v[49:56]
	.loc	1 683 36                        ; attention.py:683:36
	buffer_load_b128 v[85:88], v81, s[64:67], 0 offen
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[65:72], v[1:8], v[57:64]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[65:68], v109 offset:6144
	ds_load_b128 v[69:72], v108 offset:6144
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 663 30                        ; attention.py:663:30
	v_wmma_f32_16x16x16_bf16 v[41:48], v[65:72], v[1:8], v[41:48]
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v87, 0xff80ff80, v87, s7
	v_cndmask_b32_e64 v88, 0xff80ff80, v88, s7
	v_cndmask_b32_e64 v89, 0xff80ff80, v85, s7
	v_cndmask_b32_e64 v90, 0xff80ff80, v86, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 684 35                        ; attention.py:684:35
	v_mov_b16_e32 v66.l, v87.l
	v_mov_b16_e32 v66.h, v88.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v65.l, v89.l
	v_mov_b16_e32 v65.h, v90.l
	v_mov_b16_e32 v68.l, v87.h
	v_mov_b16_e32 v68.h, v88.h
	v_mov_b16_e32 v67.l, v89.h
	v_mov_b16_e32 v67.h, v90.h
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v147.h, v89.l
	.loc	1 684 35                        ; attention.py:684:35
	ds_store_2addr_b64 v123, v[65:66], v[67:68] offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 683 36                        ; attention.py:683:36
	ds_load_b64 v[65:66], v82
	ds_load_b64 v[67:68], v124
	ds_load_b64 v[81:82], v125
	ds_load_b64 v[85:86], v126
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s8, 0xff800000, v147
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s9, s7, s8
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	s_waitcnt lgkmcnt(2)
	v_and_b32_e32 v92, 0xffff0000, v67
	v_lshlrev_b32_e32 v91, 16, v67
	v_lshlrev_b32_e32 v93, 16, v68
	v_lshlrev_b32_e32 v72, 16, v66
	v_and_b32_e32 v66, 0xffff0000, v66
	v_lshlrev_b32_e32 v69, 16, v65
	v_and_b32_e32 v94, 0xffff0000, v68
	v_and_b32_e32 v65, 0xffff0000, v65
	.loc	1 685 25                        ; attention.py:685:25
	v_add_nc_u32_e32 v83, 0, v118
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v68, 0x3fb8aa3b, v66
	v_dual_mul_f32 v66, 0x3fb8aa3b, v92 :: v_dual_mul_f32 v67, 0x3fb8aa3b, v91
	v_dual_mul_f32 v71, 0x3fb8aa3b, v69 :: v_dual_add_nc_u32 v84, 0, v119
	v_mul_f32_e32 v69, 0x3fb8aa3b, v93
	v_mul_f32_e32 v70, 0x3fb8aa3b, v65
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_fmac_f32_e32 v67, s74, v77
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v68, s74, v76 :: v_dual_and_b32 v77, 0xffff0000, v81
	v_fmac_f32_e32 v69, s74, v79
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v65, 0x3fb8aa3b, v94
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v66, s74, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v91, 0x3fb8aa3b, v77 :: v_dual_lshlrev_b32 v78, 16, v82
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v65, s74, v80 :: v_dual_lshlrev_b32 v76, 16, v81
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v77, 0x3fb8aa3b, v78 :: v_dual_lshlrev_b32 v80, 16, v85
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v91, s74, v58 :: v_dual_mul_f32 v76, 0x3fb8aa3b, v76
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_and_b32_e32 v79, 0xffff0000, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v77, s74, v59 :: v_dual_lshlrev_b32 v82, 16, v86
	v_fmac_f32_e32 v71, s74, v73
	v_fmac_f32_e32 v76, s74, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_dual_mul_f32 v78, 0x3fb8aa3b, v79 :: v_dual_mul_f32 v79, 0x3fb8aa3b, v80
	v_mul_f32_e32 v80, 0x3fb8aa3b, v82
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v70, s74, v74
	v_mad_u64_u32 v[73:74], null, s4, s47, v[98:99]
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v79, s74, v61 :: v_dual_fmac_f32 v78, s74, v60
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	ds_load_b64 v[57:58], v127
	ds_load_b64 v[59:60], v128
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v72, 0x3fb8aa3b, v72
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v74.l, v147.l
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v80, s74, v63 :: v_dual_and_b32 v81, 0xffff0000, v85
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v85, 0xffff0000, v86
	v_mov_b16_e32 v74.h, v87.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v72, s74, v75
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v75.l, v147.l
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v81, 0x3fb8aa3b, v81
	v_mul_f32_e32 v82, 0x3fb8aa3b, v85
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v92, v73, s78, 1
	v_add_lshl_u32 v93, v73, s79, 1
	v_add_lshl_u32 v94, v73, s80, 1
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v75.h, v88.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v74
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v86.l, v147.l
	v_mov_b16_e32 v86.h, v90.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v81, s74, v62
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt lgkmcnt(1)
	v_lshlrev_b32_e32 v74, 16, v58
	v_and_b32_e32 v58, 0xffff0000, v58
	.loc	1 694 30                        ; attention.py:694:30
	v_lshlrev_b32_e32 v85, 1, v73
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v73, 0xffff0000, v87
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s2, 0xff800000, v75
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v75, 16, v59
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v86
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v82, s74, v64
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v73
	.loc	1 683 36                        ; attention.py:683:36
	v_lshlrev_b32_e32 v73, 16, v57
	v_and_b32_e32 v57, 0xffff0000, v57
	ds_load_b64 v[61:62], v130
	ds_load_b64 v[63:64], v131
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s4, s7, s1
	s_and_b32 s1, s7, s2
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v73, 0x3fb8aa3b, v73
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v88, 0xffff0000, v88
	v_lshlrev_b32_e32 v86, 16, v60
	v_and_b32_e32 v60, 0xffff0000, v60
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s6, s7, s5
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v73, s74, v49
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s13, 0xff800000, v88
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v88, 0x3fb8aa3b, v57 :: v_dual_mul_f32 v57, 0x3fb8aa3b, v74
	v_mul_f32_e32 v74, 0x3fb8aa3b, v75
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v59, 0xffff0000, v59
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v60, 0x3fb8aa3b, v60
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v89, 0xffff0000, v89
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v57, s74, v51 :: v_dual_mul_f32 v58, 0x3fb8aa3b, v58
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v87, 0xffff0000, v90
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v88, s74, v50
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v50, 0, 1, s6
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v74, s74, v53
	v_fmac_f32_e32 v58, s74, v52
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s10, 0xff800000, v87
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	v_cndmask_b32_e64 v87, 0, 1, s1
	.loc	1 684 25 is_stmt 1              ; attention.py:684:25
	v_fmac_f32_e32 v60, s74, v56
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s12, 0xff800000, v89
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v89, 0x3fb8aa3b, v59
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v51, 0, 1, s4
	v_mov_b16_e32 v49.l, v87.l
	v_cndmask_b32_e64 v52, 0, 1, s9
	v_lshlrev_b16 v49.h, 8, v50.l
	s_and_b32 s5, s7, s13
	s_and_b32 s8, s7, s10
	v_lshlrev_b16 v49.l, 8, v49.l
	v_cndmask_b32_e64 v53, 0, 1, s8
	s_and_b32 s10, s7, s12
	s_and_b32 s7, s7, s11
	s_waitcnt lgkmcnt(0)
	v_or_b16 v51.h, v51.l, v49.l
	v_or_b16 v51.l, v52.l, v49.h
	.loc	1 683 36                        ; attention.py:683:36
	v_lshlrev_b32_e32 v52, 16, v62
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v89, s74, v54
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v54, 0, 1, s5
	v_lshlrev_b16 v50.l, 8, v53.l
	v_cndmask_b32_e64 v56, 0, 1, s7
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v75, 0x3fb8aa3b, v52
	.loc	1 685 25                        ; attention.py:685:25
	s_barrier
	v_lshlrev_b16 v50.h, 8, v54.l
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v54, 0xffff0000, v62
	v_lshlrev_b32_e32 v53, 16, v61
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v75, s74, v43 :: v_dual_and_b32 v62, 0xffff0000, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v50.h, v56.l, v50.h
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v54, 0x3fb8aa3b, v54
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v49, 0xffff0000, v61
	v_lshlrev_b32_e32 v61, 16, v64
	v_and_b32_e32 v56, 0xffff0000, v63
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v62, 0x3fb8aa3b, v62
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_dual_fmac_f32 v54, s74, v44 :: v_dual_mul_f32 v59, 0x3fb8aa3b, v86
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v64, 0x3fb8aa3b, v49
	.loc	1 696 26 is_stmt 1              ; attention.py:696:26
	s_and_b32 s2, s0, s24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v62, s74, v48
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s59, s72
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v59, s74, v55
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v55, 0, 1, s10
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v64, s74, v42
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v50.l, v55.l, v50.l
	ds_store_b32 v83, v51
	ds_store_b32 v132, v50
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v50, v84
	ds_load_b32 v83, v133
	ds_load_b32 v84, v134
	ds_load_b32 v90, v135
	ds_load_b32 v95, v136
	ds_load_b32 v96, v137
	ds_load_b32 v148, v138
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v87, 0x3fb8aa3b, v56
	.loc	1 683 36                        ; attention.py:683:36
	v_lshlrev_b32_e32 v55, 16, v63
	.loc	1 685 25                        ; attention.py:685:25
	ds_load_b32 v149, v139
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v63, 0x3fb8aa3b, v53
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v86, 0x3fb8aa3b, v55 :: v_dual_mul_f32 v61, 0x3fb8aa3b, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_fmac_f32_e32 v63, s74, v41
	v_fmac_f32_e32 v86, s74, v45
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	v_and_b32_e32 v42, 0x10000, v83
	v_and_b32_e32 v44, 0x10000, v90
	v_and_b32_e32 v53, 1, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_ne_u32_e64 s29, 0, v42
	v_and_b32_e32 v42, 1, v50
	v_cmp_ne_u32_e64 s22, 0, v44
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v87, s74, v46
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s27, 1, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_eq_u32_e64 s36, 1, v42
	v_and_b32_e32 v42, 0x1000000, v84
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v55, 0xff800000, v80, s22
	v_cndmask_b32_e64 v53, 0xff800000, v79, s27
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v51, 1, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_ne_u32_e64 s28, 0, v42
	v_and_b32_e32 v42, 1, v95
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v61, s74, v47
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s30, 1, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v52, 0xff800000, v78, s28
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s23, 1, v42
	v_and_b32_e32 v42, 1, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_eq_u32_e64 s21, 1, v42
	v_and_b32_e32 v42, 0x1000000, v96
	v_cmp_ne_u32_e64 s19, 0, v42
	v_and_b32_e32 v42, 1, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_eq_u32_e64 s17, 1, v42
	v_and_b32_e32 v42, 0x1000000, v148
	v_cmp_ne_u32_e64 s15, 0, v42
	v_and_b32_e32 v42, 1, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_eq_u32_e64 s14, 1, v42
	v_and_b32_e32 v42, 0x1000000, v149
	v_cmp_ne_u32_e64 s13, 0, v42
	v_lshrrev_b16 v42.l, 8, v50.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v80, 0xff800000, v62, s13
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v41, 0x10000, v50
	v_and_b16 v42.l, 1, v42.l
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v62, 0x80000000, v92, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s33, 0, v41
	v_and_b32_e32 v41, 0x10000, v149
	v_cmp_eq_u16_e64 s37, 1, v42.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_ne_u32_e64 s11, 0, v41
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v41, 0xff800000, v71, s36
	v_cndmask_b32_e64 v42, 0xff800000, v70, s37
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v46, 0x10000, v96
	v_and_b32_e32 v48, 0x1000000, v50
	v_and_b32_e32 v43, 0x10000, v84
	v_lshrrev_b16 v50.h, 8, v95.l
	v_lshrrev_b16 v50.l, 8, v90.l
	v_cmp_ne_u32_e64 s16, 0, v46
	v_and_b32_e32 v46, 0x1000000, v83
	v_cmp_ne_u32_e64 s35, 0, v48
	v_cmp_ne_u32_e64 s25, 0, v43
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v79, 0xff800000, v61, s11
	v_cndmask_b32_e64 v71, 0xff800000, v59, s16
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s31, 0, v46
	v_and_b32_e32 v46, 0x1000000, v90
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v44, 0xff800000, v68, s35
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v45, 0x10000, v95
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v61, 0x80000000, v85, s2
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v48, 0xff800000, v65, s31
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v49, 1, v83
	v_cmp_ne_u32_e64 s26, 0, v46
	v_lshrrev_b16 v46.l, 8, v83.l
	v_cmp_ne_u32_e64 s18, 0, v45
	v_lshrrev_b16 v46.h, 8, v84.l
	v_cmp_eq_u32_e64 s34, 1, v49
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v49, 0xff800000, v76, s30
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v43, 0x1000000, v95
	v_and_b16 v46.l, 1, v46.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v76, 0xff800000, v54, s15
	.loc	1 685 25                        ; attention.py:685:25
	v_lshrrev_b16 v54.l, 8, v96.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v45, 0xff800000, v67, s34
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s20, 0, v43
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v67, 0xff800000, v57, s18
	.loc	1 685 25                        ; attention.py:685:25
	v_lshrrev_b16 v54.h, 8, v148.l
	v_lshrrev_b16 v57.l, 8, v149.l
	v_cmp_eq_u16_e64 s43, 1, v46.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v68, 0xff800000, v58, s20
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v58.h, 1, v50.h
	v_and_b16 v59.l, 1, v54.l
	v_and_b16 v57.h, 1, v46.h
	v_and_b16 v58.l, 1, v50.l
	v_and_b16 v59.h, 1, v54.h
	v_and_b16 v57.l, 1, v57.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v46, 0xff800000, v66, s43
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v47, 0x10000, v148
	v_cmp_eq_u16_e64 s40, 1, v58.h
	v_cmp_eq_u16_e64 s39, 1, v59.l
	v_cmp_eq_u16_e64 s42, 1, v57.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v43, 0xff800000, v72, s33
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s12, 0, v47
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v72, 0xff800000, v60, s19
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s41, 1, v58.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v66, 0xff800000, v88, s40
	v_add_nc_u32_e32 v60, 0, v120
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s38, 1, v59.h
	v_cmp_eq_u16_e64 s24, 1, v57.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v65, 0xff800000, v73, s23
	v_cndmask_b32_e64 v47, 0xff800000, v69, s29
	v_cndmask_b32_e64 v73, 0xff800000, v63, s17
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v63, 0x80000000, v93, s2
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v56, 0xff800000, v82, s26
	v_cndmask_b32_e64 v69, 0xff800000, v74, s21
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v82, 0x80000000, v94, s2
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v70, 0xff800000, v89, s39
	v_cndmask_b32_e64 v51, 0xff800000, v77, s25
	v_cndmask_b32_e64 v50, 0xff800000, v91, s42
	v_cndmask_b32_e64 v75, 0xff800000, v75, s12
	v_cndmask_b32_e64 v77, 0xff800000, v86, s14
	v_cndmask_b32_e64 v54, 0xff800000, v81, s41
	v_cndmask_b32_e64 v74, 0xff800000, v64, s38
	v_cndmask_b32_e64 v78, 0xff800000, v87, s24
	ds_store_b128 v60, v[41:44]
	ds_store_b128 v60, v[65:68] offset:512
	ds_store_b128 v140, v[45:48]
	ds_store_b128 v140, v[69:72] offset:512
	ds_store_b128 v141, v[49:52]
	ds_store_b128 v141, v[73:76] offset:512
	ds_store_b128 v142, v[53:56]
	ds_store_b128 v142, v[77:80] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 694 30                        ; attention.py:694:30
	s_clause 0x3
	buffer_load_b128 v[89:92], v61, s[68:71], 0 offen
	buffer_load_b128 v[93:96], v62, s[68:71], 0 offen
	buffer_load_b128 v[57:60], v63, s[68:71], 0 offen
	buffer_load_b128 v[61:64], v82, s[68:71], 0 offen
	v_add_nc_u32_e32 v148, 0, v105
	.loc	1 686 26                        ; attention.py:686:26
	ds_load_b128 v[85:88], v143
	ds_load_b128 v[81:84], v143 offset:256
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	ds_store_b128 v148, v[89:92]
	s_waitcnt vmcnt(2)
	ds_store_b128 v148, v[93:96] offset:2048
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v89, v50, v51, v52
	v_max3_f32 v90, v53, v54, v55
	v_max3_f32 v91, v56, v65, v66
	v_max3_f32 v92, v73, v74, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v89, v89, v90, v91
	v_max3_f32 v90, v67, v68, v69
	v_max3_f32 v91, v70, v71, v72
	v_max3_f32 v90, v90, v91, v92
	v_max_f32_e32 v91, v41, v42
	v_max3_f32 v92, v44, v45, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v91, v91, v43, v92
	v_max3_f32 v92, v47, v48, v49
	v_max3_f32 v89, v91, v92, v89
	v_dual_max_f32 v91, v76, v77 :: v_dual_max_f32 v92, v79, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v91, v91, v78, v92
	v_max3_f32 v89, v89, v90, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp2:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v90, v89, s81, 0xfedcba98 op_sel:[1,0]
.Ltmp3:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v89, v146, v89, v90
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v90, v49, v89
	v_sub_f32_e32 v91, v50, v89
.Ltmp4:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v49, v84, v84
	v_max_f32_e32 v50, v88, v88
.Ltmp5:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v92, v51, v89
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v51, v82, v87, v83
.Ltmp7:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v42, v42, v89
	v_sub_f32_e32 v41, v41, v89
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v49, v50, v49
	v_max3_f32 v50, v85, v81, v86
.Ltmp9:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v96, v55, v89
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v41, v41
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v44, v44, v89
.Ltmp10:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v49, v50, v51, v49
.Ltmp11:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v153, v68, v89
	v_sub_f32_e32 v43, v43, v89
	v_sub_f32_e32 v46, v46, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_dual_sub_f32 v93, v52, v89 :: v_dual_mov_b32 v50, v49
	v_sub_f32_e32 v45, v45, v89
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v42, 0, v42, s37
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v41, 0, v41, s36
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v48, v48, v89
.Ltmp12:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v50, v50 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp13:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v157, v72, v89
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s2, v42, v42
	v_cmp_o_f32_e64 s36, v41, v41
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v94, v53, v89
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v50, v50, v50
.Ltmp15:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v95, v54, v89
	v_sub_f32_e32 v47, v47, v89
	v_sub_f32_e32 v149, v56, v89
	v_sub_f32_e32 v151, v66, v89
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v49, v49, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v155, v70, v89 :: v_dual_mov_b32 v50, v49
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v50, v50 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v50, v50, v50
	v_max_f32_e32 v49, v49, v50
.Ltmp20:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v159, v74, v89
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(1)
	ds_store_b128 v148, v[57:60] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v148, v[61:64] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v50, v49
.Ltmp22:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v57, v122
	ds_load_u16_d16 v58, v122 offset:256
	ds_load_u16_d16 v59, v122 offset:512
	ds_load_u16_d16 v60, v122 offset:768
	ds_load_u16_d16 v61, v122 offset:1024
	ds_load_u16_d16 v62, v122 offset:1280
	ds_load_u16_d16 v63, v122 offset:1536
	ds_load_u16_d16 v64, v122 offset:1792
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v57, v122 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v58, v122 offset:384
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v59, v122 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v60, v122 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v61, v122 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v62, v122 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v63, v122 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v64, v122 offset:1920
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v50, v50 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v50, v50, v50
	v_dual_max_f32 v160, v49, v50 :: v_dual_max_f32 v49, v144, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
.Ltmp25:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v144, v49, v160
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v49.h, v147.l
	v_mov_b16_e32 v49.l, v42.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v156, v71, v89
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v42, v42, v49, 0x7fff
	v_mov_b16_e64 v49.h, v147.l
	v_mov_b16_e32 v49.l, v41.h
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v49, 1, v49
	v_add3_u32 v41, v41, v49, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v42.l, 0x7fff, v41.h, s36
	v_permlanex16_b32 v41, v42, s81, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_perm_b32 v49, v41, v42, v99
	v_perm_b32 v50, v41, v42, v121
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v41, v44
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v42.h, v147.l
	v_mov_b16_e64 v44.h, v147.l
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v41, 0, v41, s35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v42.l, v41.h
	v_cmp_o_f32_e64 s2, v41, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v41, v41, v42, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v42, v43
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v43.h, v147.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s2
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v42, 0, v42, s33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v43.l, v42.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v158, v73, v89
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s33, v42, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v43, 1, v43
	v_add3_u32 v42, v42, v43, 0x7fff
	v_mov_b16_e64 v43.h, v147.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v41.l, 0x7fff, v42.h, s33
	v_permlanex16_b32 v42, v41, s81, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_perm_b32 v51, v42, v41, v99
	v_perm_b32 v52, v42, v41, v121
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v41, v46
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v42.h, v147.l
	v_mov_b16_e64 v46.h, v147.l
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v41, 0, v41, s43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v42.l, v41.h
	v_cmp_o_f32_e64 s2, v41, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v41, v41, v42, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v42, v45
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v45.h, v147.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s2
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v42, 0, v42, s34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v43.l, v42.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v70, v76, v89
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s33, v42, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v43, 1, v43
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v42, v42, v43, 0x7fff
	v_mov_b16_e64 v43.h, v147.l
	v_cndmask_b16 v41.l, 0x7fff, v42.h, s33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v70, 0, v70, s15
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v42, v41, s81, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_perm_b32 v53, v42, v41, v99
	v_perm_b32 v54, v42, v41, v121
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v41, v48
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v42.h, v147.l
	v_mov_b16_e64 v48.h, v147.l
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v41, 0, v41, s31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v42.l, v41.h
	v_cmp_o_f32_e64 s2, v41, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v41, v41, v42, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v42, v47
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v47.h, v147.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s2
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v42, 0, v42, s29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v43.l, v42.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v68, v78, v89
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s29, v42, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v43, 1, v43
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v42, v42, v43, 0x7fff
	v_mov_b16_e64 v43.h, v147.l
	v_cndmask_b16 v41.l, 0x7fff, v42.h, s29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v68, 0, v68, s24
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v42, v41, s81, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s15, v68, v68
	v_perm_b32 v55, v42, v41, v99
	v_perm_b32 v56, v42, v41, v121
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v41, v91
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v42.h, v147.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v41, 0, v41, s42
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v42.l, v41.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v41, v41
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v41, v41, v42, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v42, v90
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v90.h, v147.l
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v42, 0, v42, s30
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v43.l, v42.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v66, v80, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s29, v42, v42
	v_mov_b16_e64 v80.h, v147.l
	v_and_b32_e32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v66, v66
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v42, v42, v43, 0x7fff
	v_mov_b16_e64 v43.h, v147.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v41.l, 0x7fff, v42.h, s29
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v66, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v42, v41, s81, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s13, v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_perm_b32 v71, v42, v41, v99
	v_perm_b32 v72, v42, v41, v121
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v41, v93
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v42.h, v147.l
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v41, 0, v41, s28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v42.l, v41.h
	v_cmp_o_f32_e64 s2, v41, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v41, v41, v42, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v42, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s2
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v42, 0, v42, s25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v43.l, v42.h
	v_cmp_o_f32_e64 s25, v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v43, 1, v43
	v_add3_u32 v42, v42, v43, 0x7fff
	v_mov_b16_e64 v43.h, v147.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v41.l, 0x7fff, v42.h, s25
	v_permlanex16_b32 v42, v41, s81, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_perm_b32 v73, v42, v41, v99
	v_perm_b32 v74, v42, v41, v121
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v41, v95
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v42.h, v147.l
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v41, 0, v41, s41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v42.l, v41.h
	v_cmp_o_f32_e64 s2, v41, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v41, v41, v42, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v42, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s2
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v42, 0, v42, s27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v43.l, v42.h
	v_cmp_o_f32_e64 s25, v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v154, v69, v89 :: v_dual_and_b32 v43, 1, v43
	v_sub_f32_e32 v83, v83, v144
	v_dual_sub_f32 v69, v75, v89 :: v_dual_sub_f32 v86, v86, v144
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v42, v42, v43, 0x7fff
	v_mov_b16_e64 v43.h, v147.l
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v152, v67, v89 :: v_dual_sub_f32 v85, v85, v144
	v_dual_sub_f32 v67, v77, v89 :: v_dual_sub_f32 v88, v88, v144
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v41.l, 0x7fff, v42.h, s25
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v150, v65, v89 :: v_dual_sub_f32 v87, v87, v144
	v_sub_f32_e32 v81, v81, v144
	v_dual_sub_f32 v65, v79, v89 :: v_dual_sub_f32 v82, v82, v144
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v42, v41, s81, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e64 v79.h, v147.l
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v84, v84, v144
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v67, v67
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_perm_b32 v75, v42, v41, v99
	v_perm_b32 v76, v42, v41, v121
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v41, v149
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v42.h, v147.l
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v84, v84
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v82, v82
	v_exp_f32_e32 v83, v83
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v69, 0, v69, s12
	v_cndmask_b32_e64 v67, 0, v67, s14
	v_cndmask_b32_e64 v41, 0, v41, s26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s12, v69, v69
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v84, 0, v84, s5
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s14, v67, v67
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v65, 0, v65, s11
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v42.l, v41.h
	v_cmp_o_f32_e64 s2, v41, v41
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v82, 0, v82, s8
	v_cndmask_b32_e64 v83, 0, v83, s7
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s11, v65, v65
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v41, v41, v42, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v42, v96
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v42, 0, v42, s22
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v43.l, v42.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s22, v42, v42
	v_and_b32_e32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v42, v42, v43, 0x7fff
	v_mov_b16_e64 v43.h, v147.l
	v_cndmask_b16 v41.l, 0x7fff, v42.h, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v42, v41, s81, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v77, v42, v41, v99
	v_perm_b32 v78, v42, v41, v121
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v41, v151
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v42.h, v147.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v41, 0, v41, s40
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v42.l, v41.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v41, v41
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v41, v41, v42, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v42, v150
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v42, 0, v42, s23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v43.l, v42.h
	v_cmp_o_f32_e64 s22, v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v43, 1, v43
	v_add3_u32 v42, v42, v43, 0x7fff
	v_cndmask_b16 v43.h, 0x7fff, v41.h, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v43.l, 0x7fff, v42.h, s22
	v_permlanex16_b32 v42, v43, s81, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_perm_b32 v41, v42, v43, v99
	v_perm_b32 v42, v42, v43, v121
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v43, v153
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
	v_exp_f32_e32 v44, v152
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v44, 0, v44, s18
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v45.l, v44.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s18, v44, v44
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v44, v44, v45, 0x7fff
	v_cndmask_b16 v45.h, 0x7fff, v43.h, s2
	v_cndmask_b16 v45.l, 0x7fff, v44.h, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v44, v45, s81, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v43, v44, v45, v99
	v_perm_b32 v44, v44, v45, v121
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v45, v155
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v45, 0, v45, s39
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v46.l, v45.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v45, v45
	v_and_b32_e32 v46, 1, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v45, v45, v46, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v46, v154
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v46, 0, v46, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v47.l, v46.h
	v_cmp_o_f32_e64 s18, v46, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v47, 1, v47
	v_add3_u32 v46, v46, v47, 0x7fff
	v_cndmask_b16 v47.h, 0x7fff, v45.h, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v47.l, 0x7fff, v46.h, s18
	v_permlanex16_b32 v46, v47, s81, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_perm_b32 v45, v46, v47, v99
	v_perm_b32 v46, v46, v47, v121
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v47, v157
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v47, 0, v47, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v48.l, v47.h
	v_cmp_o_f32_e64 s2, v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v48, 1, v48
	v_add3_u32 v47, v47, v48, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v48, v156
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v48, 0, v48, s16
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v79.l, v48.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s16, v48, v48
	v_and_b32_e32 v79, 1, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v48, v48, v79, 0x7fff
	v_cndmask_b16 v79.h, 0x7fff, v47.h, s2
	v_cndmask_b16 v79.l, 0x7fff, v48.h, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v48, v79, s81, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v47, v48, v79, v99
	v_perm_b32 v48, v48, v79, v121
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v79, v159
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v79, 0, v79, s38
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v80.l, v79.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v79, v79
	v_and_b32_e32 v80, 1, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v79, v79, v80, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v80, v158
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v80, 0, v80, s17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v90.l, v80.h
	v_cmp_o_f32_e64 s16, v80, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v90, 1, v90
	v_add3_u32 v80, v80, v90, 0x7fff
	v_cndmask_b16 v90.h, 0x7fff, v79.h, s2
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v146
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v90.l, 0x7fff, v80.h, s16
	v_permlanex16_b32 v80, v90, s81, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v79, v80, v90, v99
	v_perm_b32 v80, v80, v90, v121
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v90, v146, v89
	v_mov_b32_e32 v146, v89
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v90, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v90, 0, v90, s2
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s2, v70, v70
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v33, v33, v90
	v_mul_f32_e32 v34, v34, v90
	v_mul_f32_e32 v35, v35, v90
	v_mul_f32_e32 v36, v36, v90
	v_mul_f32_e32 v37, v37, v90
	v_mul_f32_e32 v38, v38, v90
	v_mul_f32_e32 v39, v39, v90
	v_mul_f32_e32 v40, v40, v90
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v90.h, v147.l
	v_mov_b16_e32 v90.l, v70.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v90, 1, v90
	v_add3_u32 v70, v70, v90, 0x7fff
	v_mov_b16_e64 v90.h, v147.l
	v_mov_b16_e32 v90.l, v69.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s2
	v_and_b32_e32 v90, 1, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v69, v69, v90, 0x7fff
	v_mov_b16_e64 v90.h, v147.l
	v_mov_b16_e32 v90.l, v68.h
	v_cndmask_b16 v70.l, 0x7fff, v69.h, s12
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v69, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v90, 1, v90
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v81, v86
	v_exp_f32_e32 v86, v88
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v68, v68, v90, 0x7fff
	v_mov_b16_e64 v90.h, v147.l
	v_mov_b16_e32 v90.l, v67.h
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v69, 0, v69, s10
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s15
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v81, 0, v81, s6
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v90, 1, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v86, 0, v86, s1
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v81, v81, v82
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp27:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v67, v67, v90, 0x7fff
	v_mov_b16_e64 v90.h, v147.l
	v_mov_b16_e32 v90.l, v66.h
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v84, v86, v84
.Ltmp29:
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[57:64], v[49:56], v[33:40]
	.loc	1 700 30 is_stmt 0              ; attention.py:700:30
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s14
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	ds_load_u16_d16 v49, v122 offset:2048
	ds_load_u16_d16 v50, v122 offset:2304
	ds_load_u16_d16 v51, v122 offset:2560
	ds_load_u16_d16 v52, v122 offset:2816
	ds_load_u16_d16 v53, v122 offset:3072
	ds_load_u16_d16 v54, v122 offset:3328
	ds_load_u16_d16 v55, v122 offset:3584
	ds_load_u16_d16 v56, v122 offset:3840
	ds_load_u16_d16 v57, v122 offset:4096
	ds_load_u16_d16 v58, v122 offset:4352
	ds_load_u16_d16 v59, v122 offset:4608
	ds_load_u16_d16 v60, v122 offset:4864
	ds_load_u16_d16 v61, v122 offset:5120
	ds_load_u16_d16 v62, v122 offset:5376
	ds_load_u16_d16 v63, v122 offset:5632
	ds_load_u16_d16 v64, v122 offset:5888
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v90, 1, v90
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v49, v122 offset:2176
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v50, v122 offset:2432
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v51, v122 offset:2688
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v52, v122 offset:2944
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v53, v122 offset:3200
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v54, v122 offset:3456
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v55, v122 offset:3712
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v56, v122 offset:3968
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v66, v66, v90, 0x7fff
	v_mov_b16_e64 v90.h, v147.l
	v_mov_b16_e32 v90.l, v65.h
	v_permlanex16_b32 v82, v70, s81, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s13
	v_and_b32_e32 v90, 1, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v65, v65, v90, 0x7fff
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s11
	v_mov_b32_e32 v65, v129
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[49:56], v[71:78], v[33:40]
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	ds_load_u16_d16 v49, v122 offset:6144
	ds_load_u16_d16 v50, v122 offset:6400
	ds_load_u16_d16 v51, v122 offset:6656
	ds_load_u16_d16 v52, v122 offset:6912
	ds_load_u16_d16 v53, v122 offset:7168
	ds_load_u16_d16 v54, v122 offset:7424
	ds_load_u16_d16 v55, v122 offset:7680
	ds_load_u16_d16 v56, v122 offset:7936
	ds_load_u16_d16_hi v57, v122 offset:4224
	ds_load_u16_d16_hi v58, v122 offset:4480
	ds_load_u16_d16_hi v59, v122 offset:4736
	ds_load_u16_d16_hi v60, v122 offset:4992
	ds_load_u16_d16_hi v61, v122 offset:5248
	ds_load_u16_d16_hi v62, v122 offset:5504
	ds_load_u16_d16_hi v63, v122 offset:5760
	ds_load_u16_d16_hi v64, v122 offset:6016
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v49, v122 offset:6272
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v50, v122 offset:6528
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v51, v122 offset:6784
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v52, v122 offset:7040
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v53, v122 offset:7296
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v54, v122 offset:7552
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v55, v122 offset:7808
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v56, v122 offset:8064
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v67, v65, v65
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v86, v66, s81, 0xfedcba98 op_sel:[1,0]
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v129, v67, v160
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v67, v85
	v_exp_f32_e32 v85, v87
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v87, v65, v129
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[57:64], v[41:48], v[33:40]
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v67, 0, v67, s9
	v_cndmask_b32_e64 v85, 0, v85, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v67, v67, v69
	v_add_f32_e32 v83, v85, v83
.Ltmp31:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v85, v68, s81, 0xfedcba98 op_sel:[1,0]
	v_mov_b32_e32 v69, v145
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v67, v67, v81
	v_add_f32_e32 v81, v83, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
.Ltmp33:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v83, v85, v68, v99
	v_perm_b32 v84, v85, v68, v121
	v_perm_b32 v85, v86, v66, v99
	v_perm_b32 v86, v86, v66, v121
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v67, v67, v81
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v81, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v81, v81 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v67, v67, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v81, v67
	v_mov_b32_dpp v81, v81 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v67, v67, v81
.Ltmp39:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v81, v82, v70, v99
	v_perm_b32 v82, v82, v70, v121
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v70, v87
.Ltmp40:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v71, v67
.Ltmp41:
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[49:56], v[79:86], v[33:40]
.Ltmp42:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v71, v71 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp43:
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v65, 0, v70, s1
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v145, v67, v71
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp45:
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v145, v69, v65
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v129, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v39, v40
	v_mov_b32_e32 v38, v40
	v_mov_b32_e32 v37, v40
	v_mov_b32_e32 v36, v40
	v_mov_b32_e32 v35, v40
	v_mov_b32_e32 v34, v40
	v_mov_b32_e32 v33, v40
	v_mov_b32_e32 v145, v40
.LBB0_4:                                ; %._crit_edge
	.loc	1 825 26 is_stmt 1              ; attention.py:825:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v103
	s_mov_b32 s1, 0x76543210
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp47:
	.loc	1 822 31                        ; attention.py:822:31
	s_mul_i32 s58, s58, s3
	.loc	1 825 17                        ; attention.py:825:17
	v_cndmask_b32_e32 v1, 0xff800000, v129, vcc_lo
	.loc	1 828 36                        ; attention.py:828:36
	v_dual_cndmask_b32 v3, 0, v145 :: v_dual_and_b32 v4, 12, v102
	.loc	1 830 26                        ; attention.py:830:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v104
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s0, s47, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_permlanex16_b32 v2, v1, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp49:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_permlanex16_b32 v5, v3, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp50:
	.loc	1 822 31                        ; attention.py:822:31
	s_add_i32 s1, s45, s58
	.loc	1 833 13                        ; attention.py:833:13
	s_mov_b32 s2, exec_lo
	.loc	1 822 30                        ; attention.py:822:30
	s_mul_i32 s0, s1, s0
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v1, v1, v1
.Ltmp52:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v7, 0, v33 :: v_dual_add_nc_u32 v4, 0, v4
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v3, v3, v5
.Ltmp54:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v9, 0, v35, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v1, v1, v2 :: v_dual_and_b32 v2, 12, v103
.Ltmp56:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v5, v7 :: v_dual_cndmask_b32 v8, 0, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp57:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v10, v3
.Ltmp58:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v6, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v2, 0, v2
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v12, v9
.Ltmp60:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp61:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v11, v8
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v5, v7, v5
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v3, v3, v10
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v6, v6, v6
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp68:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v14, 0, v39 :: v_dual_max_f32 v1, v1, v6
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v6, v5
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	ds_store_b32 v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v4
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v2, v4
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v4, v9, v12 :: v_dual_add_f32 v3, v8, v11
.Ltmp73:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v11, 0, v36, vcc_lo
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp75:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v13, 0, v38 :: v_dual_mov_b32 v8, v4
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v7, v3 :: v_dual_cndmask_b32 v12, 0, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v5, v5, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v17, v12
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v4, v4, v8 :: v_dual_add_f32 v3, v3, v7
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v18, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v9, v5 :: v_dual_mov_b32 v16, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp83:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v15, 0, v40 :: v_dual_mov_b32 v10, v3
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp86:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v20, v15
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_dual_add_f32 v4, v4, v16 :: v_dual_mov_b32 v7, v2
.Ltmp89:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v8, v1, v6
.Ltmp90:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v1, v5, v9 :: v_dual_mov_b32 v16, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v6, v4
.Ltmp92:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp93:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v3, v3, v10 :: v_dual_mov_b32 v10, v8
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v7, v2, v7
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v2, v1 :: v_dual_mov_b32 v5, v3
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_mov_b32 v9, v7
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v11, v11, v16 :: v_dual_add_f32 v14, v14, v19
	v_add_f32_e32 v13, v13, v18
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp101:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v16, v11
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v15, v15, v20 :: v_dual_mov_b32 v18, v13
.Ltmp104:
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
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v13, v13, v18 :: v_dual_add_f32 v12, v12, v17
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v11, v11, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v16, v15, v20
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v14, v14, v19 :: v_dual_mov_b32 v15, v11
.Ltmp110:
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
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v11, v11, v15
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v15, v14, v19 :: v_dual_mov_b32 v14, v11
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v13, v13, v18
	v_add_f32_e32 v17, v16, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp116:
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
.Ltmp117:
	.loc	1 833 13                        ; attention.py:833:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp118:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v21, v8, v8
.Ltmp119:
	.loc	1 833 13                        ; attention.py:833:13
	s_ashr_i32 s1, s0, 31
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v8, v7, v9
.Ltmp121:
	.loc	1 833 13                        ; attention.py:833:13
	s_lshl_b64 s[4:5], s[0:1], 2
	v_mov_b32_e32 v9, 0
.Ltmp122:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v7, v21, v10
.Ltmp123:
	.loc	1 833 13                        ; attention.py:833:13
	s_add_u32 s4, s56, s4
	s_addc_u32 s5, s57, s5
	.loc	1 834 13                        ; attention.py:834:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp124:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v8, v13, v18 :: v_dual_add_f32 v7, v12, v16
	v_dual_add_f32 v13, v4, v6 :: v_dual_add_f32 v12, v3, v5
.Ltmp125:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v3, 0xc0, v102
.Ltmp126:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v14, v11, v14
	v_dual_add_f32 v11, v1, v2 :: v_dual_and_b32 v4, 0xe0, v100
.Ltmp127:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v1, 28, v100
	v_and_b32_e32 v2, 32, v101
	v_add_nc_u32_e32 v3, 0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v4, 0, v4
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
.Ltmp129:
	.loc	1 571 21                        ; attention.py:571:21
	v_and_b32_e32 v5, 63, v0
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
.Ltmp130:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
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
		.amdhsa_next_free_vgpr 164
		.amdhsa_next_free_sgpr 82
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.num_vgpr, 164
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.numbered_sgpr, 82
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10132
; TotalNumSgprs: 84
; NumVgprs: 164
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 20
; NumSGPRsForWavesPerEU: 84
; NumVGPRsForWavesPerEU: 164
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
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
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
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     84
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     164
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
