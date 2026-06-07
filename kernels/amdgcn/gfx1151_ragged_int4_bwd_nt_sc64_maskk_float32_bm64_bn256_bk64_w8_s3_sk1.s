	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 674 0                         ; ragged.py:674:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[56:57], s[0:1], 0x30
.Ltmp0:
	.loc	1 701 20 prologue_end           ; ragged.py:701:20
	s_abs_i32 s8, s2
	.loc	1 706 36                        ; ragged.py:706:36
	v_and_b32_e32 v85, 15, v0
	s_mov_b32 s14, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:698:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s56, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:699:21 ]
	s_add_i32 s5, s57, 0xff
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:698:21 ]
	s_ashr_i32 s6, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:699:21 ]
	s_ashr_i32 s7, s5, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:698:21 ]
	s_lshr_b32 s6, s6, 26
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:699:21 ]
	s_lshr_b32 s7, s7, 24
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:698:21 ]
	s_add_i32 s4, s4, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:699:21 ]
	s_add_i32 s5, s5, s7
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:698:21 ]
	s_ashr_i32 s16, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:699:21 ]
	s_ashr_i32 s9, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 700 27 is_stmt 1              ; ragged.py:700:27
	s_mul_i32 s4, s9, s16
	.loc	1 701 20                        ; ragged.py:701:20
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s7, s7, s6
	s_mul_hi_u32 s7, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s10, s6, s5
	s_sub_i32 s8, s8, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s8, s11, s8
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s10, s6
	.loc	1 703 17                        ; ragged.py:703:17
	s_abs_i32 s6, s9
	.loc	1 701 20                        ; ragged.py:701:20
	s_xor_b32 s5, s5, s7
	.loc	1 703 17                        ; ragged.py:703:17
	s_cvt_f32_u32 s8, s6
	.loc	1 701 20                        ; ragged.py:701:20
	s_sub_i32 s12, s5, s7
	.loc	1 703 17                        ; ragged.py:703:17
	s_sub_i32 s5, 0, s6
	.loc	1 702 22                        ; ragged.py:702:22
	s_mul_i32 s4, s12, s4
	.loc	1 703 17                        ; ragged.py:703:17
	v_rcp_iflag_f32_e32 v1, s8
	.loc	1 702 16                        ; ragged.py:702:16
	s_sub_i32 s7, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 703 17                        ; ragged.py:703:17
	s_abs_i32 s10, s7
	s_xor_b32 s11, s7, s9
	s_ashr_i32 s17, s11, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_cvt_u32_f32 s8, s8
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s5, s8
	s_mul_hi_u32 s4, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_add_i32 s8, s8, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s8, s10, s8
	s_mul_i32 s13, s8, s6
	s_add_i32 s11, s8, 1
	s_sub_i32 s10, s10, s13
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s13, s10, s6
	s_cmp_ge_u32 s10, s6
	s_cselect_b32 s8, s11, s8
	s_cselect_b32 s10, s13, s10
	s_add_i32 s11, s8, 1
	s_cmp_ge_u32 s10, s6
	s_cselect_b32 s6, s11, s8
	.loc	1 710 19                        ; ragged.py:710:19
	s_ashr_i32 s13, s12, 31
	.loc	1 703 17                        ; ragged.py:703:17
	s_xor_b32 s18, s6, s17
	.loc	1 710 19                        ; ragged.py:710:19
	s_lshl_b64 s[10:11], s[12:13], 2
	.loc	1 703 17                        ; ragged.py:703:17
	s_sub_i32 s8, s18, s17
	.loc	1 780 39                        ; ragged.py:780:39
	s_mul_i32 s13, s12, s56
	.loc	1 704 24                        ; ragged.py:704:24
	s_mul_i32 s6, s8, s9
	.loc	1 706 18                        ; ragged.py:706:18
	s_lshl_b32 s8, s8, 6
	.loc	1 704 17                        ; ragged.py:704:17
	s_sub_i32 s6, s7, s6
	.loc	1 710 19                        ; ragged.py:710:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s10
	s_addc_u32 s5, s5, s11
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v1, s8, v85
	.loc	1 710 19                        ; ragged.py:710:19
	s_load_b32 s19, s[4:5], 0x0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v2, 16, v1
	v_or_b32_e32 v3, 32, v1
	v_or_b32_e32 v4, 48, v1
	.loc	1 708 20                        ; ragged.py:708:20
	v_cmp_gt_i32_e64 s5, s56, v1
	v_cmp_gt_i32_e64 s4, s56, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s11, s56, v3
	v_cmp_gt_i32_e64 s10, s56, v4
	.loc	1 711 27                        ; ragged.py:711:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s7, s19, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 771 19                        ; ragged.py:771:19
	s_cmp_gt_i32 s7, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge80_crit_edge
	.loc	1 827 22                        ; ragged.py:827:22
	s_add_i32 s46, s8, s13
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; ragged.py:0:22
	s_mov_b32 s14, -1
                                        ; implicit-def: $sgpr46
.LBB0_3:                                ; %Flow179
	s_load_b64 s[44:45], s[0:1], 0x28
	v_lshrrev_b32_e32 v100, 1, v0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v135, 0
	s_and_not1_b32 vcc_lo, exec_lo, s14
	s_lshl_b32 s47, s6, 8
	s_cbranch_vccnz .LBB0_10
; %bb.4:                                ; %.preheader.lr.ph
	.loc	1 706 36 is_stmt 1              ; ragged.py:706:36
	v_lshrrev_b32_e32 v1, 2, v0
	s_clause 0x1
	s_load_b256 s[36:43], s[0:1], 0x0
	s_load_b64 s[14:15], s[0:1], 0x38
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v2, s47, v100
	.loc	1 711 26                        ; ragged.py:711:26
	s_lshr_b32 s20, s7, 31
	.loc	1 790 37                        ; ragged.py:790:37
	s_and_b32 s19, s19, 0x80000001
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v3, s8, v1
	.loc	1 711 26                        ; ragged.py:711:26
	s_add_i32 s20, s7, s20
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v4, 0x80, v2
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e64 s0, s57, v2
	.loc	1 774 23                        ; ragged.py:774:23
	s_lshl_b32 s3, s3, 5
	.loc	1 708 20                        ; ragged.py:708:20
	v_cmp_gt_i32_e64 s1, s56, v3
	.loc	1 769 28                        ; ragged.py:769:28
	v_lshlrev_b32_e32 v3, 3, v0
	.loc	1 711 26                        ; ragged.py:711:26
	s_ashr_i32 s56, s20, 1
	.loc	1 790 37                        ; ragged.py:790:37
	s_cmp_eq_u32 s19, 1
	v_dual_mov_b32 v130, 0 :: v_dual_and_b32 v7, 24, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v135, 0 :: v_dual_and_b32 v66, 24, v3
	.loc	1 769 28                        ; ragged.py:769:28
	v_and_b32_e32 v2, 1, v0
	.loc	1 790 37                        ; ragged.py:790:37
	s_cselect_b32 s58, -1, 0
	.loc	1 790 67 is_stmt 0              ; ragged.py:790:67
	s_add_i32 s19, s56, -1
	v_mov_b32_e32 v153, v66
	s_cmp_lt_i32 s3, 32
	v_dual_mov_b32 v134, 0 :: v_dual_lshlrev_b32 v65, 4, v2
	s_cselect_b32 s21, -1, 0
	s_add_i32 s46, s8, s13
	.loc	1 771 19 is_stmt 1              ; ragged.py:771:19
	s_mul_i32 s16, s16, s12
	.loc	1 816 37                        ; ragged.py:816:37
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s59, s12, s15
	.loc	1 782 39                        ; ragged.py:782:39
	s_mul_i32 s20, s12, s57
	.loc	1 771 19                        ; ragged.py:771:19
	s_sub_i32 s12, s17, s16
	v_mov_b32_e32 v152, v65
	v_xor_b32_e32 v3, v3, v7
	v_dual_mov_b32 v128, 0 :: v_dual_add_nc_u32 v7, s46, v85
	s_sub_i32 s12, s12, s18
	v_dual_mov_b32 v126, 0 :: v_dual_and_b32 v9, 16, v0
	s_mul_i32 s9, s9, s12
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v10, 16, v7
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v11, 32, v7
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v12, 48, v7
	v_mul_lo_u32 v140, v7, s15
	v_dual_mov_b32 v122, 0 :: v_dual_and_b32 v7, 0xf0, v0
	s_lshl_b32 s9, s9, 8
	s_lshl_b32 s2, s2, 8
	s_add_i32 s9, s9, s20
	v_cmp_eq_u32_e64 s8, 0, v9
	v_mul_lo_u32 v141, v10, s15
	v_dual_mov_b32 v120, 0 :: v_dual_lshlrev_b32 v9, 2, v7
	v_dual_mov_b32 v125, 0 :: v_dual_lshlrev_b32 v2, 5, v2
	v_add3_u32 v10, s9, s2, v100
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e64 s6, s57, v4
	v_dual_mov_b32 v133, 0 :: v_dual_lshlrev_b32 v4, 1, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v2, 0, v9, v2
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v9, 0x80, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v132, 0 :: v_dual_and_b32 v5, 24, v4
	v_bfe_u32 v6, v0, 4, 1
	.loc	1 771 19                        ; ragged.py:771:19
	s_lshl_b32 s2, s18, 6
	v_mad_u64_u32 v[67:68], null, s14, v9, v[65:66]
	v_add3_u32 v1, s13, s2, v1
	v_lshl_or_b32 v137, v85, 5, v5
	v_and_or_b32 v5, v4, 30, v6
	s_lshl_b32 s2, s17, 6
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v136, s47, v0
	.loc	1 771 19                        ; ragged.py:771:19
	v_subrev_nc_u32_e32 v1, s2, v1
	v_xor_b32_e32 v6, 8, v137
	v_dual_mov_b32 v131, 0 :: v_dual_lshlrev_b32 v138, 2, v5
	v_xor_b32_e32 v5, 16, v137
	v_xor_b32_e32 v8, 24, v137
	v_dual_mov_b32 v123, 0 :: v_dual_and_b32 v4, 28, v4
	v_dual_mov_b32 v116, 0 :: v_dual_lshlrev_b32 v7, 1, v7
	v_cndmask_b32_e64 v9, 0, 1, s21
	v_mad_u64_u32 v[68:69], null, s14, v10, v[65:66]
	v_mul_lo_u32 v142, v11, s15
	v_mul_lo_u32 v143, v12, s15
	v_mad_u64_u32 v[69:70], null, s14, v1, v[66:67]
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e64 s7, s57, v136
	v_xor_b32_e32 v139, 4, v138
	.loc	1 771 19                        ; ragged.py:771:19
	v_subrev_nc_u32_e32 v144, s56, v66
	v_subrev_nc_u32_e32 v145, s56, v65
	v_cmp_ne_u32_e64 s9, 1, v9
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v146, 0, v3
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v147, 0, v6
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v148, 0, v5
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v149, 0, v8
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v150, v2, v4
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v151, 0, v7
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v70, 0
	v_mov_b32_e32 v75, 0
	v_mov_b32_e32 v73, 0
	v_mov_b32_e32 v71, 0
	s_and_b32 s49, s37, 0xffff
	s_mov_b32 s48, s36
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	s_and_b32 s37, s39, 0xffff
	s_mov_b32 s36, s38
	s_mov_b32 s60, 0
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s53, s43, 0xffff
	s_mov_b32 s52, s42
	s_lshr_b32 s61, s19, 5
	s_sub_i32 s62, s3, 32
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 808 40                        ; ragged.py:808:40
	v_add_lshl_u32 v33, v140, s60, 1
	.loc	1 816 25                        ; ragged.py:816:25
	s_add_i32 s2, s60, s59
	.loc	1 808 40                        ; ragged.py:808:40
	v_add_lshl_u32 v34, v141, s60, 1
	v_add_lshl_u32 v35, v142, s60, 1
	.loc	1 816 25                        ; ragged.py:816:25
	s_mul_i32 s2, s2, s57
	.loc	1 808 40                        ; ragged.py:808:40
	v_add_lshl_u32 v36, v143, s60, 1
	.loc	1 815 40                        ; ragged.py:815:40
	v_add_lshl_u32 v37, v136, s2, 1
	.loc	1 808 40                        ; ragged.py:808:40
	v_cndmask_b32_e64 v33, 0x80000000, v33, s5
	v_cndmask_b32_e64 v34, 0x80000000, v34, s4
	v_cndmask_b32_e64 v35, 0x80000000, v35, s11
	s_mov_b32 s42, s50
	s_mov_b32 s43, s51
	v_cndmask_b32_e64 v36, 0x80000000, v36, s10
	.loc	1 815 40                        ; ragged.py:815:40
	v_cndmask_b32_e64 v37, 0x80000000, v37, s7
	s_mov_b32 s54, s50
	s_mov_b32 s55, s51
	.loc	1 808 40                        ; ragged.py:808:40
	s_clause 0x3
	buffer_load_u16 v33, v33, s[40:43], 0 offen
	buffer_load_u16 v34, v34, s[40:43], 0 offen
	buffer_load_u16 v35, v35, s[40:43], 0 offen
	buffer_load_u16 v36, v36, s[40:43], 0 offen
	.loc	1 815 40                        ; ragged.py:815:40
	buffer_load_u16 v37, v37, s[52:55], 0 offen
	.loc	1 820 21                        ; ragged.py:820:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 822 17                        ; ragged.py:822:17
	s_add_i32 s2, s60, 1
	.loc	1 771 19                        ; ragged.py:771:19
	s_cmp_lg_u32 s60, s61
	s_mov_b32 s60, s2
	v_add_nc_u32_e32 v152, 32, v152
	.loc	1 808 40                        ; ragged.py:808:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v34, 16, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 813 21                        ; ragged.py:813:21
	v_dual_mul_f32 v60, v162, v34 :: v_dual_lshlrev_b32 v33, 16, v33
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v40, v183, v33 :: v_dual_lshlrev_b32 v35, 16, v35
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v45, v178, v33 :: v_dual_lshlrev_b32 v36, 16, v36
	v_mul_f32_e32 v43, v180, v33
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v62, v160, v34 :: v_dual_lshlrev_b32 v37, 16, v37
	v_dual_mul_f32 v38, v185, v33 :: v_dual_add_nc_u32 v67, 32, v67
	v_dual_mul_f32 v39, v184, v33 :: v_dual_add_nc_u32 v68, 32, v68
	v_dual_mul_f32 v54, v168, v34 :: v_dual_add_nc_u32 v69, 32, v69
	v_dual_mul_f32 v41, v182, v33 :: v_dual_add_nc_u32 v144, 32, v144
	v_dual_mul_f32 v56, v166, v34 :: v_dual_add_nc_u32 v153, 32, v153
	v_dual_mul_f32 v58, v164, v34 :: v_dual_add_nc_u32 v145, 32, v145
	v_dual_mul_f32 v42, v181, v33 :: v_dual_mul_f32 v55, v167, v34
	v_dual_mul_f32 v44, v179, v33 :: v_dual_mul_f32 v53, v169, v34
	v_dual_mul_f32 v46, v177, v33 :: v_dual_mul_f32 v59, v163, v34
	v_dual_mul_f32 v47, v176, v33 :: v_dual_mul_f32 v64, v158, v34
	v_dual_mul_f32 v48, v175, v33 :: v_dual_mul_f32 v57, v165, v34
	v_dual_mul_f32 v49, v174, v33 :: v_dual_mul_f32 v156, v156, v34
	v_dual_mul_f32 v50, v173, v33 :: v_dual_mul_f32 v63, v159, v34
	v_mul_f32_e32 v51, v172, v33
	v_dual_mul_f32 v52, v171, v33 :: v_dual_mul_f32 v61, v161, v34
	v_dual_mul_f32 v33, v170, v33 :: v_dual_mul_f32 v32, v32, v35
	v_dual_mul_f32 v157, v157, v34 :: v_dual_mul_f32 v30, v30, v35
	v_mul_f32_e32 v155, v155, v34
	v_dual_mul_f32 v34, v154, v34 :: v_dual_mul_f32 v31, v31, v35
	v_dual_mul_f32 v16, v16, v36 :: v_dual_mul_f32 v29, v29, v35
	v_mul_f32_e32 v170, v11, v36
	v_mul_f32_e32 v154, v28, v35
	v_mul_f32_e32 v158, v27, v35
	v_dual_mul_f32 v159, v26, v35 :: v_dual_mul_f32 v168, v13, v36
	v_dual_mul_f32 v160, v25, v35 :: v_dual_mul_f32 v15, v15, v36
	v_dual_mul_f32 v161, v24, v35 :: v_dual_mul_f32 v10, v10, v36
	v_dual_mul_f32 v162, v23, v35 :: v_dual_mul_f32 v169, v12, v36
	v_dual_mul_f32 v163, v22, v35 :: v_dual_mul_f32 v8, v8, v36
	v_dual_mul_f32 v164, v21, v35 :: v_dual_mul_f32 v7, v7, v36
	v_dual_mul_f32 v165, v20, v35 :: v_dual_mul_f32 v6, v6, v36
	v_dual_mul_f32 v166, v19, v35 :: v_dual_mul_f32 v9, v9, v36
	v_dual_mul_f32 v167, v18, v35 :: v_dual_mul_f32 v4, v4, v36
	v_dual_mul_f32 v35, v17, v35 :: v_dual_mul_f32 v2, v2, v36
	.loc	1 820 21                        ; ragged.py:820:21
	ds_store_b32 v150, v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v151
	ds_load_b128 v[21:24], v151 offset:16
	.loc	1 813 21                        ; ragged.py:813:21
	v_mul_f32_e32 v37, v14, v36
	.loc	1 820 21                        ; ragged.py:820:21
	ds_load_b128 v[11:14], v151 offset:512
	ds_load_b128 v[25:28], v151 offset:528
	.loc	1 813 21                        ; ragged.py:813:21
	v_mul_f32_e32 v5, v5, v36
	v_mul_f32_e32 v3, v3, v36
	v_mul_f32_e32 v1, v1, v36
	.loc	1 821 17                        ; ragged.py:821:17
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v135, v38, v17 :: v_dual_fmac_f32 v132, v41, v20
	v_dual_fmac_f32 v134, v39, v18 :: v_dual_fmac_f32 v133, v40, v19
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v128, v45, v24 :: v_dual_fmac_f32 v131, v42, v21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v126, v47, v12
	v_dual_fmac_f32 v130, v43, v22 :: v_dual_fmac_f32 v129, v44, v23
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v122, v51, v26 :: v_dual_fmac_f32 v127, v46, v11
	v_dual_fmac_f32 v120, v33, v28 :: v_dual_fmac_f32 v125, v48, v13
	v_fmac_f32_e32 v118, v54, v18
	v_dual_fmac_f32 v124, v49, v14 :: v_dual_fmac_f32 v123, v50, v25
	v_fmac_f32_e32 v116, v56, v20
	v_dual_fmac_f32 v121, v52, v27 :: v_dual_fmac_f32 v114, v58, v22
	v_dual_fmac_f32 v119, v53, v17 :: v_dual_fmac_f32 v112, v60, v24
	v_dual_fmac_f32 v117, v55, v19 :: v_dual_fmac_f32 v110, v62, v12
	v_dual_fmac_f32 v115, v57, v21 :: v_dual_fmac_f32 v108, v64, v14
	v_dual_fmac_f32 v113, v59, v23 :: v_dual_fmac_f32 v106, v156, v26
	v_dual_fmac_f32 v111, v61, v11 :: v_dual_fmac_f32 v104, v34, v28
	v_dual_fmac_f32 v109, v63, v13 :: v_dual_fmac_f32 v94, v161, v11
	v_dual_fmac_f32 v107, v157, v25 :: v_dual_fmac_f32 v102, v31, v18
	v_dual_fmac_f32 v105, v155, v27 :: v_dual_fmac_f32 v98, v154, v21
	v_dual_fmac_f32 v103, v32, v17 :: v_dual_fmac_f32 v96, v159, v23
	v_dual_fmac_f32 v101, v30, v19 :: v_dual_fmac_f32 v92, v163, v13
	v_dual_fmac_f32 v99, v29, v20 :: v_dual_fmac_f32 v88, v167, v27
	v_dual_fmac_f32 v97, v158, v22 :: v_dual_fmac_f32 v90, v165, v25
	v_dual_fmac_f32 v95, v160, v24 :: v_dual_fmac_f32 v84, v15, v18
	v_dual_fmac_f32 v93, v162, v12 :: v_dual_fmac_f32 v86, v16, v17
	v_dual_fmac_f32 v91, v164, v14 :: v_dual_fmac_f32 v78, v9, v24
	v_dual_fmac_f32 v89, v166, v26 :: v_dual_fmac_f32 v82, v168, v20
	v_dual_fmac_f32 v87, v35, v28 :: v_dual_fmac_f32 v80, v170, v22
	v_dual_fmac_f32 v83, v37, v19 :: v_dual_fmac_f32 v76, v7, v12
	v_dual_fmac_f32 v81, v169, v21 :: v_dual_fmac_f32 v72, v3, v26
	v_dual_fmac_f32 v79, v10, v23 :: v_dual_fmac_f32 v74, v5, v14
	v_dual_fmac_f32 v77, v8, v11 :: v_dual_fmac_f32 v70, v1, v28
	v_fmac_f32_e32 v75, v6, v13
	v_fmac_f32_e32 v73, v4, v25
	v_fmac_f32_e32 v71, v2, v27
	.loc	1 771 19                        ; ragged.py:771:19
	s_cbranch_scc0 .LBB0_10
.LBB0_6:                                ; %.preheader
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v185, 0
	.loc	1 775 23 is_stmt 1              ; ragged.py:775:23
	s_and_b32 vcc_lo, exec_lo, s9
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_mov_b32_e32 v1, 0
	s_mov_b32 s43, s62
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v33, v1
	v_mov_b32_e32 v34, v1
	v_mov_b32_e32 v35, v1
	v_mov_b32_e32 v36, v1
	v_mov_b32_e32 v37, v1
	v_mov_b32_e32 v38, v1
	v_mov_b32_e32 v39, v1
	v_mov_b32_e32 v40, v1
	v_mov_b32_e32 v41, v1
	v_mov_b32_e32 v42, v1
	v_mov_b32_e32 v43, v1
	v_mov_b32_e32 v44, v1
	v_mov_b32_e32 v45, v1
	v_mov_b32_e32 v46, v1
	v_mov_b32_e32 v47, v1
	v_mov_b32_e32 v48, v1
	v_mov_b32_e32 v49, v1
	v_mov_b32_e32 v50, v1
	v_mov_b32_e32 v51, v1
	v_mov_b32_e32 v52, v1
	v_mov_b32_e32 v53, v1
	v_mov_b32_e32 v54, v1
	v_mov_b32_e32 v55, v1
	v_mov_b32_e32 v56, v1
	v_mov_b32_e32 v57, v1
	v_mov_b32_e32 v58, v1
	v_mov_b32_e32 v59, v1
	v_mov_b32_e32 v60, v1
	v_mov_b32_e32 v61, v1
	v_mov_b32_e32 v62, v1
	v_mov_b32_e32 v63, v1
	v_mov_b32_e32 v64, v1
.LBB0_8:                                ; %.lr.ph
                                        ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 776 26 is_stmt 1              ; ragged.py:776:26
	v_add_nc_u32_e32 v155, s43, v153
	v_add_nc_u32_e32 v157, s43, v68
	v_add_nc_u32_e32 v156, s43, v69
	v_add_nc_u32_e32 v158, s43, v67
	.loc	1 775 23                        ; ragged.py:775:23
	s_add_i32 s42, s43, 32
	.loc	1 776 26                        ; ragged.py:776:26
	v_add_nc_u32_e32 v154, s43, v152
	.loc	1 789 60                        ; ragged.py:789:60
	v_add_nc_u32_e32 v159, s42, v66
	v_add_nc_u32_e32 v201, 43, v157
	.loc	1 776 26                        ; ragged.py:776:26
	v_add_nc_u32_e32 v176, 32, v155
	v_add_nc_u32_e32 v194, 36, v157
	v_add_nc_u32_e32 v181, 37, v155
	v_add_nc_u32_e32 v196, 38, v157
	v_add_nc_u32_e32 v198, 40, v157
	v_add_nc_u32_e32 v199, 41, v157
	v_add_nc_u32_e32 v200, 42, v157
	v_add_nc_u32_e32 v202, 44, v157
	v_add_nc_u32_e32 v203, 45, v157
	v_add_nc_u32_e32 v186, 35, v156
	v_add_nc_u32_e32 v177, 33, v155
	v_add_nc_u32_e32 v204, 46, v157
	v_add_nc_u32_e32 v205, 32, v158
	v_add_nc_u32_e32 v180, 36, v155
	v_add_nc_u32_e32 v207, 34, v158
	v_add_nc_u32_e32 v209, 36, v158
	v_add_nc_u32_e32 v182, 38, v155
	v_add_nc_u32_e32 v210, 37, v158
	v_add_nc_u32_e32 v211, 38, v158
	v_add_nc_u32_e32 v212, 39, v158
	v_add_nc_u32_e32 v191, 33, v157
	v_add_nc_u32_e32 v213, 40, v158
	v_add_nc_u32_e32 v206, 33, v158
	v_add_nc_u32_e32 v214, 41, v158
	v_add_nc_u32_e32 v215, 42, v158
	v_add_nc_u32_e32 v190, 32, v157
	v_add_nc_u32_e32 v179, 35, v155
	v_add_nc_u32_e32 v216, 43, v158
	v_add_nc_u32_e32 v193, 35, v157
	v_add_nc_u32_e32 v217, 44, v158
	v_add_nc_u32_e32 v208, 35, v158
	v_add_nc_u32_e32 v218, 45, v158
	v_add_nc_u32_e32 v195, 37, v157
	v_add_nc_u32_e32 v219, 46, v158
	v_add_nc_u32_e32 v192, 34, v157
	.loc	1 792 38                        ; ragged.py:792:38
	v_add_nc_u32_e32 v158, 47, v158
	v_add_nc_u32_e32 v197, 39, v157
	v_add_nc_u32_e32 v157, 47, v157
	.loc	1 776 26                        ; ragged.py:776:26
	v_add_nc_u32_e32 v178, 34, v155
	.loc	1 789 35                        ; ragged.py:789:35
	v_add_nc_u32_e32 v155, 39, v155
	.loc	1 789 59 is_stmt 0              ; ragged.py:789:59
	v_cmp_gt_i32_e32 vcc_lo, 32, v159
	.loc	1 789 35                        ; ragged.py:789:35
	v_cmp_gt_i32_e64 s3, s56, v176
	v_cmp_gt_i32_e64 s12, s56, v177
	v_cmp_gt_i32_e64 s13, s56, v178
	v_cmp_gt_i32_e64 s14, s56, v179
	v_cmp_gt_i32_e64 s15, s56, v180
	v_cmp_gt_i32_e64 s16, s56, v181
	v_cmp_gt_i32_e64 s17, s56, v182
	v_cmp_gt_i32_e64 s18, s56, v155
	.loc	1 789 34                        ; ragged.py:789:34
	s_and_b32 s3, s3, vcc_lo
	.loc	1 776 26 is_stmt 1              ; ragged.py:776:26
	v_add_nc_u32_e32 v167, 38, v154
	v_add_nc_u32_e32 v169, 40, v154
	v_add_nc_u32_e32 v170, 41, v154
	v_add_nc_u32_e32 v171, 42, v154
	v_add_nc_u32_e32 v172, 43, v154
	v_add_nc_u32_e32 v173, 44, v154
	v_add_nc_u32_e32 v174, 45, v154
	v_add_nc_u32_e32 v175, 46, v154
	v_add_nc_u32_e32 v183, 32, v156
	v_add_nc_u32_e32 v184, 33, v156
	v_add_nc_u32_e32 v162, 33, v154
	v_add_nc_u32_e32 v185, 34, v156
	v_add_nc_u32_e32 v164, 35, v154
	v_add_nc_u32_e32 v187, 36, v156
	v_add_nc_u32_e32 v166, 37, v154
	v_add_nc_u32_e32 v188, 37, v156
	v_add_nc_u32_e32 v163, 34, v154
	v_add_nc_u32_e32 v189, 38, v156
	v_add_nc_u32_e32 v168, 39, v154
	.loc	1 791 38                        ; ragged.py:791:38
	v_add_nc_u32_e32 v156, 39, v156
	.loc	1 776 26                        ; ragged.py:776:26
	v_add_nc_u32_e32 v165, 36, v154
	.loc	1 789 34                        ; ragged.py:789:34
	s_and_b32 s12, s12, vcc_lo
	s_and_b32 s13, s13, vcc_lo
	s_and_b32 s14, s14, vcc_lo
	s_and_b32 s15, s15, vcc_lo
	s_and_b32 s16, s16, vcc_lo
	s_and_b32 s17, s17, vcc_lo
	s_and_b32 s18, s18, vcc_lo
	.loc	1 791 70                        ; ragged.py:791:70
	s_and_b32 vcc_lo, s1, s3
	.loc	1 776 26                        ; ragged.py:776:26
	v_add_nc_u32_e32 v161, 32, v154
	v_add_nc_u32_e32 v154, 47, v154
	.loc	1 789 59                        ; ragged.py:789:59
	v_add_nc_u32_e32 v160, s42, v65
	.loc	1 789 35 is_stmt 0              ; ragged.py:789:35
	v_cmp_gt_i32_e64 s27, s56, v169
	v_cmp_gt_i32_e64 s29, s56, v171
	v_cmp_gt_i32_e64 s31, s56, v173
	v_cmp_gt_i32_e64 s35, s56, v154
	.loc	1 791 38 is_stmt 1              ; ragged.py:791:38
	v_cndmask_b32_e32 v154, 0x80000000, v183, vcc_lo
	.loc	1 791 70 is_stmt 0              ; ragged.py:791:70
	s_and_b32 vcc_lo, s1, s12
	.loc	1 789 59 is_stmt 1              ; ragged.py:789:59
	v_cmp_gt_i32_e64 s2, 32, v160
	.loc	1 791 38                        ; ragged.py:791:38
	v_cndmask_b32_e32 v155, 0x80000000, v184, vcc_lo
	.loc	1 791 70 is_stmt 0              ; ragged.py:791:70
	s_and_b32 vcc_lo, s1, s13
	.loc	1 789 35 is_stmt 1              ; ragged.py:789:35
	v_cmp_gt_i32_e64 s19, s56, v161
	.loc	1 791 38                        ; ragged.py:791:38
	v_cndmask_b32_e32 v159, 0x80000000, v185, vcc_lo
	.loc	1 791 70 is_stmt 0              ; ragged.py:791:70
	s_and_b32 vcc_lo, s1, s14
	.loc	1 789 35 is_stmt 1              ; ragged.py:789:35
	v_cmp_gt_i32_e64 s20, s56, v162
	.loc	1 791 38                        ; ragged.py:791:38
	v_cndmask_b32_e32 v160, 0x80000000, v186, vcc_lo
	.loc	1 791 70 is_stmt 0              ; ragged.py:791:70
	s_and_b32 vcc_lo, s1, s15
	.loc	1 789 34 is_stmt 1              ; ragged.py:789:34
	s_and_b32 s19, s19, s2
	.loc	1 791 38                        ; ragged.py:791:38
	v_cndmask_b32_e32 v161, 0x80000000, v187, vcc_lo
	.loc	1 791 70 is_stmt 0              ; ragged.py:791:70
	s_and_b32 vcc_lo, s1, s16
	.loc	1 789 35 is_stmt 1              ; ragged.py:789:35
	v_cmp_gt_i32_e64 s22, s56, v164
	.loc	1 791 38                        ; ragged.py:791:38
	v_cndmask_b32_e32 v162, 0x80000000, v188, vcc_lo
	.loc	1 791 70 is_stmt 0              ; ragged.py:791:70
	s_and_b32 vcc_lo, s1, s17
	.loc	1 789 35 is_stmt 1              ; ragged.py:789:35
	v_cmp_gt_i32_e64 s21, s56, v163
	.loc	1 791 38                        ; ragged.py:791:38
	v_cndmask_b32_e32 v163, 0x80000000, v189, vcc_lo
	.loc	1 791 70 is_stmt 0              ; ragged.py:791:70
	s_and_b32 vcc_lo, s1, s18
	.loc	1 789 34 is_stmt 1              ; ragged.py:789:34
	s_and_b32 s20, s20, s2
	.loc	1 791 38                        ; ragged.py:791:38
	v_cndmask_b32_e32 v156, 0x80000000, v156, vcc_lo
	.loc	1 792 70                        ; ragged.py:792:70
	s_and_b32 vcc_lo, s0, s19
	.loc	1 789 35                        ; ragged.py:789:35
	v_cmp_gt_i32_e64 s23, s56, v165
	.loc	1 789 34 is_stmt 0              ; ragged.py:789:34
	s_and_b32 s21, s21, s2
	.loc	1 792 38 is_stmt 1              ; ragged.py:792:38
	v_cndmask_b32_e32 v164, 0x80000000, v190, vcc_lo
	.loc	1 792 70 is_stmt 0              ; ragged.py:792:70
	s_and_b32 vcc_lo, s0, s20
	.loc	1 789 35 is_stmt 1              ; ragged.py:789:35
	v_cmp_gt_i32_e64 s24, s56, v166
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v165, 0x80000000, v191, vcc_lo
	.loc	1 792 70 is_stmt 0              ; ragged.py:792:70
	s_and_b32 vcc_lo, s0, s21
	.loc	1 789 34 is_stmt 1              ; ragged.py:789:34
	s_and_b32 s22, s22, s2
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v166, 0x80000000, v192, vcc_lo
	.loc	1 789 35                        ; ragged.py:789:35
	v_cmp_gt_i32_e64 s25, s56, v167
	.loc	1 789 34 is_stmt 0              ; ragged.py:789:34
	s_and_b32 s23, s23, s2
	.loc	1 792 70 is_stmt 1              ; ragged.py:792:70
	s_and_b32 vcc_lo, s0, s22
	.loc	1 789 35                        ; ragged.py:789:35
	v_cmp_gt_i32_e64 s26, s56, v168
	.loc	1 789 34 is_stmt 0              ; ragged.py:789:34
	s_and_b32 s24, s24, s2
	.loc	1 792 38 is_stmt 1              ; ragged.py:792:38
	v_cndmask_b32_e32 v167, 0x80000000, v193, vcc_lo
	.loc	1 792 70 is_stmt 0              ; ragged.py:792:70
	s_and_b32 vcc_lo, s0, s23
	.loc	1 789 34 is_stmt 1              ; ragged.py:789:34
	s_and_b32 s25, s25, s2
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v168, 0x80000000, v194, vcc_lo
	.loc	1 792 70 is_stmt 0              ; ragged.py:792:70
	s_and_b32 vcc_lo, s0, s24
	.loc	1 789 35 is_stmt 1              ; ragged.py:789:35
	v_cmp_gt_i32_e64 s28, s56, v170
	.loc	1 789 34 is_stmt 0              ; ragged.py:789:34
	s_and_b32 s26, s26, s2
	.loc	1 792 38 is_stmt 1              ; ragged.py:792:38
	v_cndmask_b32_e32 v169, 0x80000000, v195, vcc_lo
	.loc	1 792 70 is_stmt 0              ; ragged.py:792:70
	s_and_b32 vcc_lo, s0, s25
	.loc	1 789 34 is_stmt 1              ; ragged.py:789:34
	s_and_b32 s27, s27, s2
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v170, 0x80000000, v196, vcc_lo
	.loc	1 792 70 is_stmt 0              ; ragged.py:792:70
	s_and_b32 vcc_lo, s0, s26
	.loc	1 789 35 is_stmt 1              ; ragged.py:789:35
	v_cmp_gt_i32_e64 s30, s56, v172
	.loc	1 789 34 is_stmt 0              ; ragged.py:789:34
	s_and_b32 s28, s28, s2
	.loc	1 792 38 is_stmt 1              ; ragged.py:792:38
	v_cndmask_b32_e32 v171, 0x80000000, v197, vcc_lo
	.loc	1 792 70 is_stmt 0              ; ragged.py:792:70
	s_and_b32 vcc_lo, s0, s27
	.loc	1 789 34 is_stmt 1              ; ragged.py:789:34
	s_and_b32 s29, s29, s2
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v172, 0x80000000, v198, vcc_lo
	.loc	1 792 70 is_stmt 0              ; ragged.py:792:70
	s_and_b32 vcc_lo, s0, s28
	.loc	1 789 35 is_stmt 1              ; ragged.py:789:35
	v_cmp_gt_i32_e64 s33, s56, v174
	.loc	1 789 34 is_stmt 0              ; ragged.py:789:34
	s_and_b32 s30, s30, s2
	.loc	1 792 38 is_stmt 1              ; ragged.py:792:38
	v_cndmask_b32_e32 v173, 0x80000000, v199, vcc_lo
	.loc	1 792 70 is_stmt 0              ; ragged.py:792:70
	s_and_b32 vcc_lo, s0, s29
	.loc	1 789 35 is_stmt 1              ; ragged.py:789:35
	v_cmp_gt_i32_e64 s34, s56, v175
	.loc	1 789 34 is_stmt 0              ; ragged.py:789:34
	s_and_b32 s31, s31, s2
	.loc	1 792 38 is_stmt 1              ; ragged.py:792:38
	v_cndmask_b32_e32 v174, 0x80000000, v200, vcc_lo
	.loc	1 792 70 is_stmt 0              ; ragged.py:792:70
	s_and_b32 vcc_lo, s0, s30
	.loc	1 789 34 is_stmt 1              ; ragged.py:789:34
	s_and_b32 s33, s33, s2
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v175, 0x80000000, v201, vcc_lo
	.loc	1 792 70 is_stmt 0              ; ragged.py:792:70
	s_and_b32 vcc_lo, s0, s31
	.loc	1 789 34 is_stmt 1              ; ragged.py:789:34
	s_and_b32 s34, s34, s2
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v176, 0x80000000, v202, vcc_lo
	.loc	1 792 70 is_stmt 0              ; ragged.py:792:70
	s_and_b32 vcc_lo, s0, s33
	.loc	1 789 34 is_stmt 1              ; ragged.py:789:34
	s_and_b32 s2, s35, s2
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v177, 0x80000000, v203, vcc_lo
	.loc	1 792 70 is_stmt 0              ; ragged.py:792:70
	s_and_b32 vcc_lo, s0, s34
	.loc	1 792 38                        ; ragged.py:792:38
	s_mov_b32 s38, s50
	v_cndmask_b32_e32 v178, 0x80000000, v204, vcc_lo
	.loc	1 792 70                        ; ragged.py:792:70
	s_and_b32 vcc_lo, s0, s2
	.loc	1 792 38                        ; ragged.py:792:38
	s_mov_b32 s39, s51
	v_cndmask_b32_e32 v157, 0x80000000, v157, vcc_lo
	.loc	1 792 70                        ; ragged.py:792:70
	s_and_b32 vcc_lo, s6, s19
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v179, 0x80000000, v205, vcc_lo
	.loc	1 792 70                        ; ragged.py:792:70
	s_and_b32 vcc_lo, s6, s20
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v180, 0x80000000, v206, vcc_lo
	.loc	1 792 70                        ; ragged.py:792:70
	s_and_b32 vcc_lo, s6, s21
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v181, 0x80000000, v207, vcc_lo
	.loc	1 792 70                        ; ragged.py:792:70
	s_and_b32 vcc_lo, s6, s22
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v182, 0x80000000, v208, vcc_lo
	.loc	1 792 70                        ; ragged.py:792:70
	s_and_b32 vcc_lo, s6, s23
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v183, 0x80000000, v209, vcc_lo
	.loc	1 792 70                        ; ragged.py:792:70
	s_and_b32 vcc_lo, s6, s24
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v184, 0x80000000, v210, vcc_lo
	.loc	1 792 70                        ; ragged.py:792:70
	s_and_b32 vcc_lo, s6, s25
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v185, 0x80000000, v211, vcc_lo
	.loc	1 792 70                        ; ragged.py:792:70
	s_and_b32 vcc_lo, s6, s26
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v186, 0x80000000, v212, vcc_lo
	.loc	1 792 70                        ; ragged.py:792:70
	s_and_b32 vcc_lo, s6, s27
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v187, 0x80000000, v213, vcc_lo
	.loc	1 792 70                        ; ragged.py:792:70
	s_and_b32 vcc_lo, s6, s28
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v188, 0x80000000, v214, vcc_lo
	.loc	1 792 70                        ; ragged.py:792:70
	s_and_b32 vcc_lo, s6, s29
	.loc	1 792 38                        ; ragged.py:792:38
	v_dual_cndmask_b32 v189, 0x80000000, v215 :: v_dual_add_nc_u32 v214, 0, v137
	.loc	1 792 70                        ; ragged.py:792:70
	s_and_b32 vcc_lo, s6, s30
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v190, 0x80000000, v216, vcc_lo
	.loc	1 792 70                        ; ragged.py:792:70
	s_and_b32 vcc_lo, s6, s31
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v191, 0x80000000, v217, vcc_lo
	.loc	1 792 70                        ; ragged.py:792:70
	s_and_b32 vcc_lo, s6, s33
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v192, 0x80000000, v218, vcc_lo
	.loc	1 792 70                        ; ragged.py:792:70
	s_and_b32 vcc_lo, s6, s34
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v193, 0x80000000, v219, vcc_lo
	.loc	1 792 70                        ; ragged.py:792:70
	s_and_b32 vcc_lo, s6, s2
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v158, 0x80000000, v158, vcc_lo
	.loc	1 791 38 is_stmt 1              ; ragged.py:791:38
	s_clause 0x7
	buffer_load_u8 v194, v154, s[48:51], 0 offen
	buffer_load_u8 v195, v155, s[48:51], 0 offen
	buffer_load_u8 v196, v159, s[48:51], 0 offen
	buffer_load_u8 v197, v160, s[48:51], 0 offen
	buffer_load_u8 v198, v161, s[48:51], 0 offen
	buffer_load_u8 v199, v162, s[48:51], 0 offen
	buffer_load_u8 v200, v163, s[48:51], 0 offen
	buffer_load_u8 v201, v156, s[48:51], 0 offen
	.loc	1 792 38                        ; ragged.py:792:38
	s_clause 0x1f
	buffer_load_u8 v202, v164, s[36:39], 0 offen
	buffer_load_u8 v203, v165, s[36:39], 0 offen
	buffer_load_u8 v204, v166, s[36:39], 0 offen
	buffer_load_u8 v205, v167, s[36:39], 0 offen
	buffer_load_u8 v206, v168, s[36:39], 0 offen
	buffer_load_u8 v207, v169, s[36:39], 0 offen
	buffer_load_u8 v208, v170, s[36:39], 0 offen
	buffer_load_u8 v209, v171, s[36:39], 0 offen
	buffer_load_u8 v210, v172, s[36:39], 0 offen
	buffer_load_u8 v211, v173, s[36:39], 0 offen
	buffer_load_u8 v174, v174, s[36:39], 0 offen
	buffer_load_u8 v175, v175, s[36:39], 0 offen
	buffer_load_u8 v176, v176, s[36:39], 0 offen
	buffer_load_u8 v177, v177, s[36:39], 0 offen
	buffer_load_u8 v178, v178, s[36:39], 0 offen
	buffer_load_u8 v212, v157, s[36:39], 0 offen
	buffer_load_u8 v179, v179, s[36:39], 0 offen
	buffer_load_u8 v180, v180, s[36:39], 0 offen
	buffer_load_u8 v181, v181, s[36:39], 0 offen
	buffer_load_u8 v182, v182, s[36:39], 0 offen
	buffer_load_u8 v183, v183, s[36:39], 0 offen
	buffer_load_u8 v184, v184, s[36:39], 0 offen
	buffer_load_u8 v185, v185, s[36:39], 0 offen
	buffer_load_u8 v186, v186, s[36:39], 0 offen
	buffer_load_u8 v187, v187, s[36:39], 0 offen
	buffer_load_u8 v188, v188, s[36:39], 0 offen
	buffer_load_u8 v189, v189, s[36:39], 0 offen
	buffer_load_u8 v190, v190, s[36:39], 0 offen
	buffer_load_u8 v191, v191, s[36:39], 0 offen
	buffer_load_u8 v192, v192, s[36:39], 0 offen
	buffer_load_u8 v213, v158, s[36:39], 0 offen
	buffer_load_u8 v193, v193, s[36:39], 0 offen
	.loc	1 776 26                        ; ragged.py:776:26
	v_add_nc_u32_e32 v155, s43, v145
	v_add_nc_u32_e32 v154, s43, v144
	.loc	1 793 38                        ; ragged.py:793:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s43, s42
	.loc	1 790 60                        ; ragged.py:790:60
	v_cmp_eq_u32_e64 s18, 0xffffffde, v155
	v_cmp_eq_u32_e64 s20, 0xffffffdc, v155
	v_cmp_eq_u32_e64 s22, 0xffffffda, v155
	v_cmp_eq_u32_e64 s24, 0xffffffd8, v155
	v_cmp_eq_u32_e64 s26, 0xffffffd6, v155
	v_cmp_eq_u32_e64 s28, 0xffffffd4, v155
	v_cmp_eq_u32_e64 s30, 0xffffffd2, v155
	v_cmp_eq_u32_e64 s33, 0xffffffd0, v155
	v_cmp_eq_u32_e64 s2, 0xffffffde, v154
	v_cmp_eq_u32_e64 s12, 0xffffffdc, v154
	v_cmp_eq_u32_e64 s14, 0xffffffda, v154
	v_cmp_eq_u32_e64 s16, 0xffffffd8, v154
	v_cmp_eq_u32_e64 s17, 0xffffffdf, v155
	v_cmp_eq_u32_e64 s19, 0xffffffdd, v155
	v_cmp_eq_u32_e64 s21, 0xffffffdb, v155
	v_cmp_eq_u32_e64 s23, 0xffffffd9, v155
	v_cmp_eq_u32_e64 s25, 0xffffffd7, v155
	v_cmp_eq_u32_e64 s27, 0xffffffd5, v155
	v_cmp_eq_u32_e64 s29, 0xffffffd3, v155
	v_cmp_eq_u32_e64 s31, 0xffffffd1, v155
	.loc	1 790 36 is_stmt 0              ; ragged.py:790:36
	s_and_b32 s18, s58, s18
	s_and_b32 s20, s58, s20
	s_and_b32 s22, s58, s22
	s_and_b32 s24, s58, s24
	s_and_b32 s26, s58, s26
	s_and_b32 s28, s58, s28
	s_and_b32 s30, s58, s30
	s_and_b32 s33, s58, s33
	.loc	1 790 60                        ; ragged.py:790:60
	v_cmp_eq_u32_e32 vcc_lo, 0xffffffdf, v154
	v_cmp_eq_u32_e64 s3, 0xffffffdd, v154
	v_cmp_eq_u32_e64 s13, 0xffffffdb, v154
	v_cmp_eq_u32_e64 s15, 0xffffffd9, v154
	.loc	1 790 36                        ; ragged.py:790:36
	s_and_b32 s2, s58, s2
	s_and_b32 s12, s58, s12
	s_and_b32 s14, s58, s14
	s_and_b32 s16, s58, s16
	s_and_b32 s17, s58, s17
	s_and_b32 s19, s58, s19
	s_and_b32 s21, s58, s21
	s_and_b32 s23, s58, s23
	s_and_b32 s25, s58, s25
	s_and_b32 s27, s58, s27
	s_and_b32 s29, s58, s29
	s_and_b32 s31, s58, s31
	s_and_b32 s34, s58, vcc_lo
	s_and_b32 s3, s58, s3
	s_and_b32 s13, s58, s13
	s_and_b32 s15, s58, s15
	.loc	1 775 23 is_stmt 1              ; ragged.py:775:23
	s_cmp_lt_i32 s42, 0
	.loc	1 793 66                        ; ragged.py:793:66
	s_waitcnt vmcnt(39)
	v_and_b16 v154.l, v194.l, 15
	s_waitcnt vmcnt(38)
	v_and_b16 v154.h, v195.l, 15
	s_waitcnt vmcnt(37)
	v_and_b16 v155.l, v196.l, 15
	s_waitcnt vmcnt(36)
	v_and_b16 v155.h, v197.l, 15
	s_waitcnt vmcnt(35)
	v_and_b16 v156.l, v198.l, 15
	s_waitcnt vmcnt(34)
	v_and_b16 v156.h, v199.l, 15
	s_waitcnt vmcnt(33)
	v_and_b16 v157.l, v200.l, 15
	s_waitcnt vmcnt(32)
	v_and_b16 v157.h, v201.l, 15
	.loc	1 794 66                        ; ragged.py:794:66
	s_waitcnt vmcnt(31)
	v_and_b16 v158.l, v202.l, 15
	s_waitcnt vmcnt(30)
	v_and_b16 v158.h, v203.l, 15
	s_waitcnt vmcnt(29)
	v_and_b16 v159.l, v204.l, 15
	s_waitcnt vmcnt(28)
	v_and_b16 v159.h, v205.l, 15
	s_waitcnt vmcnt(27)
	v_and_b16 v160.l, v206.l, 15
	s_waitcnt vmcnt(26)
	v_and_b16 v160.h, v207.l, 15
	s_waitcnt vmcnt(25)
	v_and_b16 v161.l, v208.l, 15
	s_waitcnt vmcnt(24)
	v_and_b16 v161.h, v209.l, 15
	s_waitcnt vmcnt(23)
	v_and_b16 v162.l, v210.l, 15
	s_waitcnt vmcnt(22)
	v_and_b16 v162.h, v211.l, 15
	s_waitcnt vmcnt(21)
	v_and_b16 v163.l, v174.l, 15
	s_waitcnt vmcnt(20)
	v_and_b16 v163.h, v175.l, 15
	s_waitcnt vmcnt(19)
	v_and_b16 v164.l, v176.l, 15
	s_waitcnt vmcnt(18)
	v_and_b16 v164.h, v177.l, 15
	s_waitcnt vmcnt(17)
	v_and_b16 v165.l, v178.l, 15
	s_waitcnt vmcnt(16)
	v_and_b16 v165.h, v212.l, 15
	s_waitcnt vmcnt(15)
	v_and_b16 v166.l, v179.l, 15
	s_waitcnt vmcnt(14)
	v_and_b16 v166.h, v180.l, 15
	s_waitcnt vmcnt(13)
	v_and_b16 v167.l, v181.l, 15
	s_waitcnt vmcnt(12)
	v_and_b16 v167.h, v182.l, 15
	s_waitcnt vmcnt(11)
	v_and_b16 v168.l, v183.l, 15
	s_waitcnt vmcnt(10)
	v_and_b16 v168.h, v184.l, 15
	s_waitcnt vmcnt(9)
	v_and_b16 v169.l, v185.l, 15
	s_waitcnt vmcnt(8)
	v_and_b16 v169.h, v186.l, 15
	.loc	1 794 38 is_stmt 0              ; ragged.py:794:38
	v_cndmask_b16 v158.h, v203.l, v158.h, s18
	.loc	1 794 66                        ; ragged.py:794:66
	s_waitcnt vmcnt(6)
	v_and_b16 v170.h, v188.l, 15
	.loc	1 794 38                        ; ragged.py:794:38
	v_cndmask_b16 v159.h, v205.l, v159.h, s20
	.loc	1 794 66                        ; ragged.py:794:66
	s_waitcnt vmcnt(4)
	v_and_b16 v171.h, v190.l, 15
	.loc	1 794 38                        ; ragged.py:794:38
	v_cndmask_b16 v160.h, v207.l, v160.h, s22
	.loc	1 794 66                        ; ragged.py:794:66
	s_waitcnt vmcnt(2)
	v_and_b16 v172.h, v192.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v173.h, v213.l, 15
	.loc	1 794 38                        ; ragged.py:794:38
	v_cndmask_b16 v161.h, v209.l, v161.h, s24
	v_cndmask_b16 v162.h, v211.l, v162.h, s26
	v_cndmask_b16 v163.h, v175.l, v163.h, s28
	v_cndmask_b16 v164.h, v177.l, v164.h, s30
	v_cndmask_b16 v165.h, v212.l, v165.h, s33
	v_cndmask_b16 v166.h, v180.l, v166.h, s18
	v_cndmask_b16 v167.h, v182.l, v167.h, s20
	v_cndmask_b16 v168.h, v184.l, v168.h, s22
	v_cndmask_b16 v169.h, v186.l, v169.h, s24
	.loc	1 794 66                        ; ragged.py:794:66
	v_and_b16 v170.l, v187.l, 15
	v_and_b16 v171.l, v189.l, 15
	v_and_b16 v172.l, v191.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v173.l, v193.l, 15
	.loc	1 793 38 is_stmt 1              ; ragged.py:793:38
	v_cndmask_b16 v154.h, v195.l, v154.h, s2
	v_cndmask_b16 v155.h, v197.l, v155.h, s12
	v_cndmask_b16 v156.h, v199.l, v156.h, s14
	v_cndmask_b16 v157.h, v201.l, v157.h, s16
	.loc	1 794 38                        ; ragged.py:794:38
	v_cndmask_b16 v158.l, v202.l, v158.l, s17
	v_cndmask_b16 v159.l, v204.l, v159.l, s19
	v_cndmask_b16 v160.l, v206.l, v160.l, s21
	v_cndmask_b16 v161.l, v208.l, v161.l, s23
	v_cndmask_b16 v162.l, v210.l, v162.l, s25
	v_cndmask_b16 v163.l, v174.l, v163.l, s27
	v_cndmask_b16 v164.l, v176.l, v164.l, s29
	v_cndmask_b16 v165.l, v178.l, v165.l, s31
	v_cndmask_b16 v166.l, v179.l, v166.l, s17
	v_cndmask_b16 v167.l, v181.l, v167.l, s19
	v_cndmask_b16 v168.l, v183.l, v168.l, s21
	v_cndmask_b16 v169.l, v185.l, v169.l, s23
	v_cndmask_b16 v170.h, v188.l, v170.h, s26
	v_cndmask_b16 v171.h, v190.l, v171.h, s28
	v_cndmask_b16 v172.h, v192.l, v172.h, s30
	v_cndmask_b16 v173.h, v213.l, v173.h, s33
	v_lshlrev_b16 v159.h, 8, v159.h
	v_lshlrev_b16 v158.h, 8, v158.h
	v_lshlrev_b16 v161.h, 8, v161.h
	v_lshlrev_b16 v160.h, 8, v160.h
	v_lshlrev_b16 v163.h, 8, v163.h
	v_lshlrev_b16 v162.h, 8, v162.h
	v_lshlrev_b16 v165.h, 8, v165.h
	v_lshlrev_b16 v164.h, 8, v164.h
	v_lshlrev_b16 v167.h, 8, v167.h
	v_lshlrev_b16 v166.h, 8, v166.h
	v_lshlrev_b16 v169.h, 8, v169.h
	v_lshlrev_b16 v168.h, 8, v168.h
	.loc	1 793 38                        ; ragged.py:793:38
	v_cndmask_b16 v154.l, v194.l, v154.l, s34
	v_cndmask_b16 v155.l, v196.l, v155.l, s3
	v_cndmask_b16 v156.l, v198.l, v156.l, s13
	v_cndmask_b16 v157.l, v200.l, v157.l, s15
	.loc	1 794 38                        ; ragged.py:794:38
	v_cndmask_b16 v170.l, v187.l, v170.l, s25
	v_cndmask_b16 v171.l, v189.l, v171.l, s27
	v_cndmask_b16 v172.l, v191.l, v172.l, s29
	v_cndmask_b16 v173.l, v193.l, v173.l, s31
	.loc	1 793 38                        ; ragged.py:793:38
	v_lshlrev_b16 v157.h, 8, v157.h
	v_lshlrev_b16 v156.h, 8, v156.h
	v_lshlrev_b16 v155.h, 8, v155.h
	v_lshlrev_b16 v154.h, 8, v154.h
	.loc	1 794 38                        ; ragged.py:794:38
	v_lshlrev_b16 v171.h, 8, v171.h
	v_lshlrev_b16 v170.h, 8, v170.h
	v_lshlrev_b16 v173.h, 8, v173.h
	v_lshlrev_b16 v172.h, 8, v172.h
	v_or_b16 v174.h, v159.l, v159.h
	v_or_b16 v174.l, v158.l, v158.h
	v_or_b16 v175.h, v161.l, v161.h
	v_or_b16 v175.l, v160.l, v160.h
	v_or_b16 v163.h, v163.l, v163.h
	v_or_b16 v163.l, v162.l, v162.h
	v_or_b16 v162.h, v165.l, v165.h
	v_or_b16 v162.l, v164.l, v164.h
	v_or_b16 v164.h, v167.l, v167.h
	v_or_b16 v164.l, v166.l, v166.h
	v_or_b16 v165.h, v169.l, v169.h
	v_or_b16 v165.l, v168.l, v168.h
	.loc	1 793 38                        ; ragged.py:793:38
	v_or_b16 v157.h, v157.l, v157.h
	v_or_b16 v157.l, v156.l, v156.h
	v_or_b16 v156.h, v155.l, v155.h
	v_or_b16 v156.l, v154.l, v154.h
	.loc	1 794 38                        ; ragged.py:794:38
	v_or_b16 v166.h, v171.l, v171.h
	v_or_b16 v166.l, v170.l, v170.h
	v_or_b16 v167.h, v173.l, v173.h
	v_or_b16 v167.l, v172.l, v172.h
	ds_bpermute_b32 v187, v138, v174
	ds_bpermute_b32 v189, v138, v175
	ds_bpermute_b32 v188, v139, v174
	ds_bpermute_b32 v191, v138, v163
	ds_bpermute_b32 v190, v139, v175
	ds_bpermute_b32 v193, v138, v162
	ds_bpermute_b32 v192, v139, v163
	ds_bpermute_b32 v194, v139, v162
	ds_bpermute_b32 v195, v138, v164
	ds_bpermute_b32 v197, v138, v165
	ds_bpermute_b32 v196, v139, v164
	ds_bpermute_b32 v198, v139, v165
	.loc	1 793 38                        ; ragged.py:793:38
	ds_store_b64 v146, v[156:157]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[154:157], v214 offset1:1
	ds_load_2addr_stride64_b64 v[158:161], v214 offset0:2 offset1:3
	.loc	1 794 38                        ; ragged.py:794:38
	ds_bpermute_b32 v199, v138, v166
	ds_bpermute_b32 v201, v138, v167
	ds_bpermute_b32 v200, v139, v166
	ds_bpermute_b32 v202, v139, v167
	.loc	1 793 38                        ; ragged.py:793:38
	ds_load_2addr_stride64_b64 v[162:165], v147 offset1:1
	ds_load_2addr_stride64_b64 v[166:169], v147 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[170:173], v148 offset1:1
	ds_load_2addr_stride64_b64 v[174:177], v148 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[178:181], v149 offset1:1
	ds_load_2addr_stride64_b64 v[182:185], v149 offset0:2 offset1:3
	.loc	1 794 38                        ; ragged.py:794:38
	v_cndmask_b32_e64 v186, v188, v187, s8
	v_cndmask_b32_e64 v188, v187, v188, s8
	v_cndmask_b32_e64 v187, v190, v189, s8
	v_cndmask_b32_e64 v189, v189, v190, s8
	v_cndmask_b32_e64 v190, v192, v191, s8
	v_cndmask_b32_e64 v192, v191, v192, s8
	v_cndmask_b32_e64 v191, v194, v193, s8
	v_cndmask_b32_e64 v193, v193, v194, s8
	v_cndmask_b32_e64 v194, v196, v195, s8
	v_cndmask_b32_e64 v196, v195, v196, s8
	v_cndmask_b32_e64 v195, v198, v197, s8
	v_cndmask_b32_e64 v197, v197, v198, s8
	.loc	1 795 31                        ; ragged.py:795:31
	s_waitcnt lgkmcnt(11)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[186:187], v[154:155], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[186:187], v[156:157], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[186:187], v[158:159], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[194:195], v[154:155], v[9:16] neg_lo:[1,1,0]
	.loc	1 794 38                        ; ragged.py:794:38
	s_waitcnt lgkmcnt(7)
	v_cndmask_b32_e64 v198, v200, v199, s8
	v_cndmask_b32_e64 v200, v199, v200, s8
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v199, v202, v201, s8
	.loc	1 795 31                        ; ragged.py:795:31
	v_wmma_i32_16x16x16_iu4 v[25:32], v[194:195], v[156:157], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[194:195], v[158:159], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[186:187], v[160:161], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[194:195], v[160:161], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[190:191], v[162:163], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[198:199], v[162:163], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[190:191], v[164:165], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[198:199], v[164:165], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[190:191], v[166:167], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[198:199], v[166:167], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[190:191], v[168:169], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[198:199], v[168:169], v[57:64] neg_lo:[1,1,0]
	.loc	1 794 38                        ; ragged.py:794:38
	v_cndmask_b32_e64 v201, v201, v202, s8
	.loc	1 795 31                        ; ragged.py:795:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[188:189], v[170:171], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[196:197], v[170:171], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[188:189], v[172:173], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[196:197], v[172:173], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[188:189], v[174:175], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[196:197], v[174:175], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[188:189], v[176:177], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[196:197], v[176:177], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[192:193], v[178:179], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[200:201], v[178:179], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[192:193], v[180:181], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[200:201], v[180:181], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[192:193], v[182:183], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[200:201], v[182:183], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[192:193], v[184:185], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[200:201], v[184:185], v[57:64] neg_lo:[1,1,0]
	.loc	1 775 23                        ; ragged.py:775:23
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 806 27                        ; ragged.py:806:27
	v_cvt_f32_i32_e32 v185, v1
	v_cvt_f32_i32_e32 v184, v2
	v_cvt_f32_i32_e32 v183, v3
	v_cvt_f32_i32_e32 v182, v4
	v_cvt_f32_i32_e32 v181, v5
	v_cvt_f32_i32_e32 v180, v6
	v_cvt_f32_i32_e32 v179, v7
	v_cvt_f32_i32_e32 v178, v8
	v_cvt_f32_i32_e32 v177, v9
	v_cvt_f32_i32_e32 v176, v10
	v_cvt_f32_i32_e32 v175, v11
	v_cvt_f32_i32_e32 v174, v12
	v_cvt_f32_i32_e32 v173, v13
	v_cvt_f32_i32_e32 v172, v14
	v_cvt_f32_i32_e32 v171, v15
	v_cvt_f32_i32_e32 v170, v16
	v_cvt_f32_i32_e32 v169, v17
	v_cvt_f32_i32_e32 v168, v18
	v_cvt_f32_i32_e32 v167, v19
	v_cvt_f32_i32_e32 v166, v20
	v_cvt_f32_i32_e32 v165, v21
	v_cvt_f32_i32_e32 v164, v22
	v_cvt_f32_i32_e32 v163, v23
	v_cvt_f32_i32_e32 v162, v24
	v_cvt_f32_i32_e32 v161, v25
	v_cvt_f32_i32_e32 v160, v26
	v_cvt_f32_i32_e32 v159, v27
	v_cvt_f32_i32_e32 v158, v28
	v_cvt_f32_i32_e32 v157, v29
	v_cvt_f32_i32_e32 v156, v30
	v_cvt_f32_i32_e32 v155, v31
	v_cvt_f32_i32_e32 v154, v32
	v_cvt_f32_i32_e32 v32, v33
	v_cvt_f32_i32_e32 v31, v34
	v_cvt_f32_i32_e32 v30, v35
	v_cvt_f32_i32_e32 v29, v36
	v_cvt_f32_i32_e32 v28, v37
	v_cvt_f32_i32_e32 v27, v38
	v_cvt_f32_i32_e32 v26, v39
	v_cvt_f32_i32_e32 v25, v40
	v_cvt_f32_i32_e32 v24, v41
	v_cvt_f32_i32_e32 v23, v42
	v_cvt_f32_i32_e32 v22, v43
	v_cvt_f32_i32_e32 v21, v44
	v_cvt_f32_i32_e32 v20, v45
	v_cvt_f32_i32_e32 v19, v46
	v_cvt_f32_i32_e32 v18, v47
	v_cvt_f32_i32_e32 v17, v48
	v_cvt_f32_i32_e32 v16, v49
	v_cvt_f32_i32_e32 v15, v50
	v_cvt_f32_i32_e32 v14, v51
	v_cvt_f32_i32_e32 v13, v52
	v_cvt_f32_i32_e32 v12, v53
	v_cvt_f32_i32_e32 v11, v54
	v_cvt_f32_i32_e32 v10, v55
	v_cvt_f32_i32_e32 v9, v56
	v_cvt_f32_i32_e32 v8, v57
	v_cvt_f32_i32_e32 v7, v58
	v_cvt_f32_i32_e32 v6, v59
	v_cvt_f32_i32_e32 v5, v60
	v_cvt_f32_i32_e32 v4, v61
	v_cvt_f32_i32_e32 v3, v62
	v_cvt_f32_i32_e32 v2, v63
	v_cvt_f32_i32_e32 v1, v64
	s_branch .LBB0_5
.LBB0_10:                               ; %._crit_edge80
	.loc	1 707 36                        ; ragged.py:707:36
	v_lshrrev_b32_e32 v0, 4, v0
	v_and_b32_e32 v1, 0x70, v100
	.loc	1 827 22                        ; ragged.py:827:22
	v_mul_lo_u32 v2, s57, v85
	s_mul_i32 s0, s46, s57
	.loc	1 827 13 is_stmt 0              ; ragged.py:827:13
	s_waitcnt lgkmcnt(0)
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s46, 0x7ffffffe
	.loc	1 707 36 is_stmt 1              ; ragged.py:707:36
	v_and_or_b32 v3, v0, 1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 827 22                        ; ragged.py:827:22
	v_add3_u32 v0, s0, s47, v2
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v1, s47, v3
	.loc	1 707 36 is_stmt 0              ; ragged.py:707:36
	v_or_b32_e32 v4, 0x80, v3
	v_or_b32_e32 v18, 2, v3
	v_or_b32_e32 v16, 6, v3
	v_or_b32_e32 v17, 4, v3
	.loc	1 709 20 is_stmt 1              ; ragged.py:709:20
	v_cmp_gt_i32_e64 s0, s57, v1
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v1, v0, v3, 2
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v2, s47, v4
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v22, v0, v18, 2
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v15, 8, v3
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s1, s5, s0
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v14, 10, v3
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v21, 0x80000000, v1, s1
	s_mov_b32 s47, 0x31027000
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e32 vcc_lo, s57, v2
	.loc	1 827 22                        ; ragged.py:827:22
	v_mad_u64_u32 v[1:2], null, s57, 48, v[0:1]
	.loc	1 827 13 is_stmt 0              ; ragged.py:827:13
	buffer_store_b32 v135, v21, s[44:47], 0 offen
	v_add_lshl_u32 v2, v0, v17, 2
	v_cndmask_b32_e64 v21, 0x80000000, v22, s1
	v_add_lshl_u32 v22, v0, v16, 2
	v_add_lshl_u32 v23, v0, v15, 2
	v_add_lshl_u32 v24, v0, v14, 2
	.loc	1 707 36 is_stmt 1              ; ragged.py:707:36
	v_or_b32_e32 v12, 14, v3
	v_or_b32_e32 v13, 12, v3
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	buffer_store_b32 v134, v21, s[44:47], 0 offen
	v_cndmask_b32_e64 v21, 0x80000000, v22, s1
	v_cndmask_b32_e64 v22, 0x80000000, v23, s1
	v_cndmask_b32_e64 v23, 0x80000000, v24, s1
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v11, 0x82, v3
	v_or_b32_e32 v10, 0x84, v3
	.loc	1 827 13                        ; ragged.py:827:13
	buffer_store_b32 v133, v2, s[44:47], 0 offen
	v_add_lshl_u32 v2, v0, v13, 2
	s_clause 0x2
	buffer_store_b32 v132, v21, s[44:47], 0 offen
	buffer_store_b32 v131, v22, s[44:47], 0 offen
	buffer_store_b32 v130, v23, s[44:47], 0 offen
	v_add_lshl_u32 v21, v0, v12, 2
	v_add_lshl_u32 v22, v0, v4, 2
	v_add_lshl_u32 v23, v0, v11, 2
	v_add_lshl_u32 v24, v0, v10, 2
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v9, 0x86, v3
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s1, s5, vcc_lo
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v8, 0x88, v3
	v_or_b32_e32 v7, 0x8a, v3
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v22, 0x80000000, v22, s1
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v6, 0x8c, v3
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v23, 0x80000000, v23, s1
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v5, 0x8e, v3
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v24, 0x80000000, v24, s1
	s_clause 0x4
	buffer_store_b32 v129, v2, s[44:47], 0 offen
	buffer_store_b32 v128, v21, s[44:47], 0 offen
	buffer_store_b32 v127, v22, s[44:47], 0 offen
	buffer_store_b32 v126, v23, s[44:47], 0 offen
	buffer_store_b32 v125, v24, s[44:47], 0 offen
	v_add_lshl_u32 v2, v0, v9, 2
	v_add_lshl_u32 v21, v0, v8, 2
	v_add_lshl_u32 v22, v0, v7, 2
	v_add_lshl_u32 v23, v0, v6, 2
	.loc	1 827 22 is_stmt 0              ; ragged.py:827:22
	v_lshl_add_u32 v19, s57, 4, v0
	v_lshl_add_u32 v20, s57, 5, v0
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v0, v0, v5, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	s_clause 0x4
	buffer_store_b32 v124, v2, s[44:47], 0 offen
	buffer_store_b32 v123, v21, s[44:47], 0 offen
	buffer_store_b32 v122, v22, s[44:47], 0 offen
	buffer_store_b32 v121, v23, s[44:47], 0 offen
	buffer_store_b32 v120, v0, s[44:47], 0 offen
	v_add_lshl_u32 v0, v19, v3, 2
	v_add_lshl_u32 v2, v19, v18, 2
	v_add_lshl_u32 v21, v19, v17, 2
	.loc	1 825 20 is_stmt 1              ; ragged.py:825:20
	s_and_b32 s1, s4, s0
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v22, v19, v16, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	v_add_lshl_u32 v23, v19, v15, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s1
	s_clause 0x2
	buffer_store_b32 v119, v0, s[44:47], 0 offen
	buffer_store_b32 v118, v2, s[44:47], 0 offen
	buffer_store_b32 v117, v21, s[44:47], 0 offen
	v_add_lshl_u32 v2, v19, v14, 2
	v_add_lshl_u32 v21, v19, v13, 2
	v_cndmask_b32_e64 v0, 0x80000000, v23, s1
	buffer_store_b32 v116, v22, s[44:47], 0 offen
	v_add_lshl_u32 v22, v19, v12, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	buffer_store_b32 v115, v0, s[44:47], 0 offen
	v_add_lshl_u32 v0, v19, v4, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s1
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s1, s4, vcc_lo
	.loc	1 827 13                        ; ragged.py:827:13
	buffer_store_b32 v114, v2, s[44:47], 0 offen
	v_add_lshl_u32 v2, v19, v11, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	s_clause 0x2
	buffer_store_b32 v113, v21, s[44:47], 0 offen
	buffer_store_b32 v112, v22, s[44:47], 0 offen
	buffer_store_b32 v111, v0, s[44:47], 0 offen
	v_add_lshl_u32 v0, v19, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_add_lshl_u32 v21, v19, v9, 2
	v_add_lshl_u32 v22, v19, v8, 2
	v_add_lshl_u32 v23, v19, v7, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	buffer_store_b32 v110, v2, s[44:47], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v21, s1
	v_cndmask_b32_e64 v21, 0x80000000, v22, s1
	v_cndmask_b32_e64 v22, 0x80000000, v23, s1
	buffer_store_b32 v109, v0, s[44:47], 0 offen
	v_add_lshl_u32 v0, v19, v6, 2
	s_clause 0x2
	buffer_store_b32 v108, v2, s[44:47], 0 offen
	buffer_store_b32 v107, v21, s[44:47], 0 offen
	buffer_store_b32 v106, v22, s[44:47], 0 offen
	v_add_lshl_u32 v2, v19, v5, 2
	v_add_lshl_u32 v19, v20, v3, 2
	v_add_lshl_u32 v21, v20, v18, 2
	v_add_lshl_u32 v22, v20, v17, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s1, s11, s0
	s_and_b32 s0, s10, s0
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s1
	s_clause 0x4
	buffer_store_b32 v105, v0, s[44:47], 0 offen
	buffer_store_b32 v104, v2, s[44:47], 0 offen
	buffer_store_b32 v103, v19, s[44:47], 0 offen
	buffer_store_b32 v102, v21, s[44:47], 0 offen
	buffer_store_b32 v101, v22, s[44:47], 0 offen
	v_add_lshl_u32 v0, v20, v16, 2
	v_add_lshl_u32 v2, v20, v15, 2
	v_add_lshl_u32 v19, v20, v14, 2
	v_add_lshl_u32 v21, v20, v13, 2
	v_add_lshl_u32 v22, v20, v12, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s1
	s_clause 0x4
	buffer_store_b32 v99, v0, s[44:47], 0 offen
	buffer_store_b32 v98, v2, s[44:47], 0 offen
	buffer_store_b32 v97, v19, s[44:47], 0 offen
	buffer_store_b32 v96, v21, s[44:47], 0 offen
	buffer_store_b32 v95, v22, s[44:47], 0 offen
	v_add_lshl_u32 v0, v20, v4, 2
	v_add_lshl_u32 v2, v20, v11, 2
	v_add_lshl_u32 v19, v20, v10, 2
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s1, s11, vcc_lo
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v21, v20, v9, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_add_lshl_u32 v22, v20, v8, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	s_clause 0x2
	buffer_store_b32 v94, v0, s[44:47], 0 offen
	buffer_store_b32 v93, v2, s[44:47], 0 offen
	buffer_store_b32 v92, v19, s[44:47], 0 offen
	v_add_lshl_u32 v2, v20, v7, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	v_cndmask_b32_e64 v0, 0x80000000, v22, s1
	v_add_lshl_u32 v19, v20, v6, 2
	v_add_lshl_u32 v20, v20, v5, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	s_clause 0x1
	buffer_store_b32 v91, v21, s[44:47], 0 offen
	buffer_store_b32 v90, v0, s[44:47], 0 offen
	v_add_lshl_u32 v0, v1, v3, 2
	v_cndmask_b32_e64 v3, 0x80000000, v19, s1
	v_cndmask_b32_e64 v19, 0x80000000, v20, s1
	buffer_store_b32 v89, v2, s[44:47], 0 offen
	v_add_lshl_u32 v2, v1, v18, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	s_clause 0x2
	buffer_store_b32 v88, v3, s[44:47], 0 offen
	buffer_store_b32 v87, v19, s[44:47], 0 offen
	buffer_store_b32 v86, v0, s[44:47], 0 offen
	v_add_lshl_u32 v0, v1, v17, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_add_lshl_u32 v3, v1, v16, 2
	v_add_lshl_u32 v15, v1, v15, 2
	v_add_lshl_u32 v14, v1, v14, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_store_b32 v84, v2, s[44:47], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v3, s0
	v_cndmask_b32_e64 v3, 0x80000000, v15, s0
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	buffer_store_b32 v83, v0, s[44:47], 0 offen
	v_add_lshl_u32 v0, v1, v13, 2
	s_clause 0x2
	buffer_store_b32 v82, v2, s[44:47], 0 offen
	buffer_store_b32 v81, v3, s[44:47], 0 offen
	buffer_store_b32 v80, v14, s[44:47], 0 offen
	v_add_lshl_u32 v2, v1, v12, 2
	v_add_lshl_u32 v3, v1, v4, 2
	v_add_lshl_u32 v4, v1, v11, 2
	v_add_lshl_u32 v10, v1, v10, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 vcc_lo, s10, vcc_lo
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	s_clause 0x4
	buffer_store_b32 v79, v0, s[44:47], 0 offen
	buffer_store_b32 v78, v2, s[44:47], 0 offen
	buffer_store_b32 v77, v3, s[44:47], 0 offen
	buffer_store_b32 v76, v4, s[44:47], 0 offen
	buffer_store_b32 v75, v10, s[44:47], 0 offen
	v_add_lshl_u32 v0, v1, v9, 2
	v_add_lshl_u32 v2, v1, v8, 2
	v_add_lshl_u32 v3, v1, v7, 2
	v_add_lshl_u32 v4, v1, v6, 2
	v_add_lshl_u32 v1, v1, v5, 2
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	s_clause 0x4
	buffer_store_b32 v74, v0, s[44:47], 0 offen
	buffer_store_b32 v73, v2, s[44:47], 0 offen
	buffer_store_b32 v72, v3, s[44:47], 0 offen
	buffer_store_b32 v71, v4, s[44:47], 0 offen
	buffer_store_b32 v70, v1, s[44:47], 0 offen
	.loc	1 674 5                         ; ragged.py:674:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 80
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
		.amdhsa_next_free_vgpr 220
		.amdhsa_next_free_sgpr 63
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 220
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 63
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8788
; TotalNumSgprs: 65
; NumVgprs: 220
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 65
; NumVGPRsForWavesPerEU: 220
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
	.byte	1                               ; Abbrev [1] 0xb:0x52 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x2c DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	698                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	699                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
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
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .offset:         60
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     65
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     220
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
