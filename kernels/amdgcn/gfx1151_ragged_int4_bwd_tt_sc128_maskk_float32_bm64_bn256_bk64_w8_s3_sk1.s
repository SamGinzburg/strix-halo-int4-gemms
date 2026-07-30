	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 856 0                         ; ragged.py:856:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[80:81], s[0:1], 0x30
.Ltmp0:
	.loc	1 883 20 prologue_end           ; ragged.py:883:20
	s_abs_i32 s9, s2
	.loc	1 888 36                        ; ragged.py:888:36
	v_and_b32_e32 v35, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:880:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s80, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:881:21 ]
	s_add_i32 s5, s81, 0xff
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:880:21 ]
	s_ashr_i32 s6, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:881:21 ]
	s_ashr_i32 s7, s5, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:880:21 ]
	s_lshr_b32 s6, s6, 26
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:881:21 ]
	s_lshr_b32 s7, s7, 24
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:880:21 ]
	s_add_i32 s4, s4, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:881:21 ]
	s_add_i32 s5, s5, s7
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:880:21 ]
	s_ashr_i32 s4, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:881:21 ]
	s_ashr_i32 s6, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 882 27 is_stmt 1              ; ragged.py:882:27
	s_mul_i32 s4, s6, s4
	.loc	1 883 20                        ; ragged.py:883:20
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s5
	s_sub_i32 s8, 0, s5
	v_rcp_iflag_f32_e32 v1, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s7
	s_mul_hi_u32 s8, s7, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s8
	s_xor_b32 s8, s2, s4
	s_mul_hi_u32 s7, s9, s7
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s10, s7, s5
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s7, 1
	s_sub_i32 s11, s9, s5
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s7, s10, s7
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s7, 1
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s5, s10, s7
	.loc	1 885 17                        ; ragged.py:885:17
	s_abs_i32 s7, s6
	.loc	1 883 20                        ; ragged.py:883:20
	s_xor_b32 s5, s5, s8
	.loc	1 885 17                        ; ragged.py:885:17
	s_cvt_f32_u32 s9, s7
	.loc	1 883 20                        ; ragged.py:883:20
	s_sub_i32 s42, s5, s8
	.loc	1 885 17                        ; ragged.py:885:17
	s_sub_i32 s5, 0, s7
	.loc	1 884 22                        ; ragged.py:884:22
	s_mul_i32 s4, s42, s4
	.loc	1 885 17                        ; ragged.py:885:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 884 16                        ; ragged.py:884:16
	s_sub_i32 s2, s2, s4
	.loc	1 991 37                        ; ragged.py:991:37
	s_mul_i32 s39, s42, s80
	.loc	1 885 17                        ; ragged.py:885:17
	s_abs_i32 s8, s2
	s_xor_b32 s10, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	s_ashr_i32 s10, s10, 31
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s9, s5
	s_add_i32 s9, s9, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s9, s8, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s9, s7
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s9, 1
	s_sub_i32 s12, s8, s7
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s9, s11, s9
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s9, 1
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s7, s11, s9
	.loc	1 892 19                        ; ragged.py:892:19
	s_ashr_i32 s43, s42, 31
	.loc	1 885 17                        ; ragged.py:885:17
	s_xor_b32 s7, s7, s10
	.loc	1 892 19                        ; ragged.py:892:19
	s_lshl_b64 s[8:9], s[42:43], 2
	.loc	1 885 17                        ; ragged.py:885:17
	s_sub_i32 s7, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 886 24                        ; ragged.py:886:24
	s_mul_i32 s6, s7, s6
	.loc	1 888 18                        ; ragged.py:888:18
	s_lshl_b32 s67, s7, 6
	.loc	1 886 17                        ; ragged.py:886:17
	s_sub_i32 s6, s2, s6
	.loc	1 892 19                        ; ragged.py:892:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s8
	s_addc_u32 s5, s5, s9
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v4, s67, v35
	.loc	1 892 19                        ; ragged.py:892:19
	s_load_b32 s43, s[4:5], 0x0
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v1, 16, v4
	v_or_b32_e32 v2, 32, v4
	v_or_b32_e32 v3, 48, v4
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e64 s5, s80, v4
	v_cmp_gt_i32_e64 s4, s80, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s48, s80, v2
	v_cmp_gt_i32_e64 s2, s80, v3
	.loc	1 893 27                        ; ragged.py:893:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s38, s43, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 953 19                        ; ragged.py:953:19
	s_cmp_gt_i32 s38, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge80_crit_edge
	.loc	1 1009 22                       ; ragged.py:1009:22
	s_add_i32 s58, s67, s39
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; ragged.py:0:22
	s_mov_b32 s7, -1
                                        ; implicit-def: $sgpr58
.LBB0_3:                                ; %Flow350
	s_load_b64 s[64:65], s[0:1], 0x28
	v_dual_mov_b32 v134, 0 :: v_dual_and_b32 v37, 0xe0, v0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v208, 0
	v_mov_b32_e32 v209, 0
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_lshl_b32 s66, s6, 8
	s_cbranch_vccnz .LBB0_11
; %bb.4:                                ; %.preheader.lr.ph
	s_clause 0x1
	s_load_b256 s[56:63], s[0:1], 0x0
	s_load_b64 s[40:41], s[0:1], 0x38
	.loc	1 889 36 is_stmt 1              ; ragged.py:889:36
	v_lshrrev_b32_e32 v1, 5, v37
	v_dual_mov_b32 v208, 0 :: v_dual_and_b32 v211, 31, v0
	.loc	1 893 26                        ; ragged.py:893:26
	s_lshr_b32 s44, s38, 31
	v_dual_mov_b32 v209, 0 :: v_dual_and_b32 v36, 63, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v2, s66, v1
	.loc	1 893 26                        ; ragged.py:893:26
	s_add_i32 s44, s38, s44
	.loc	1 972 37                        ; ragged.py:972:37
	s_and_b32 s43, s43, 0x80000001
	.loc	1 893 26                        ; ragged.py:893:26
	s_ashr_i32 s82, s44, 1
	.loc	1 956 23                        ; ragged.py:956:23
	s_lshl_b32 s83, s3, 5
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v5, 16, v2
	v_or_b32_e32 v4, 8, v2
	v_or_b32_e32 v9, 48, v2
	.loc	1 972 37                        ; ragged.py:972:37
	s_cmp_eq_u32 s43, 1
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v3, s67, v36
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s7, s81, v5
	v_bfe_i32 v5, v0, 7, 1
	v_cmp_gt_i32_e64 s6, s81, v4
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[216:217], null, s40, v1, v[211:212]
	v_cmp_gt_i32_e64 s11, s81, v9
	.loc	1 972 37                        ; ragged.py:972:37
	s_cselect_b32 s85, -1, 0
	.loc	1 972 67 is_stmt 0              ; ragged.py:972:67
	s_add_i32 s86, s82, -1
	v_dual_mov_b32 v207, 0 :: v_dual_and_b32 v4, 0x7f, v0
	v_dual_mov_b32 v204, 0 :: v_dual_and_b32 v9, 0x88, v5
	s_cmp_lt_i32 s83, 64
	s_mov_b32 s72, s58
	s_cselect_b32 s88, -1, 0
	s_add_i32 s58, s67, s39
	.loc	1 951 28 is_stmt 1              ; ragged.py:951:28
	v_lshrrev_b32_e32 v165, 6, v0
	v_mad_u64_u32 v[78:79], null, s40, 40, v[216:217]
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v6, 24, v2
	v_or_b32_e32 v7, 32, v2
	v_or_b32_e32 v10, 56, v2
	v_or_b32_e32 v11, 64, v2
	v_or_b32_e32 v12, 0x48, v2
	v_or_b32_e32 v13, 0x50, v2
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e64 s0, s80, v3
	v_dual_mov_b32 v206, 0 :: v_dual_lshlrev_b32 v3, 1, v0
	v_xor_b32_e32 v186, v9, v4
	v_dual_mov_b32 v203, 0 :: v_dual_add_nc_u32 v4, s58, v35
	v_mad_u64_u32 v[79:80], null, 0x48, s40, v[216:217]
	v_mad_u64_u32 v[80:81], null, 0x50, s40, v[216:217]
	v_mad_u64_u32 v[81:82], null, 0x58, s40, v[216:217]
	v_mad_u64_u32 v[82:83], null, 0x60, s40, v[216:217]
	.loc	1 951 28                        ; ragged.py:951:28
	v_or_b32_e32 v170, 28, v165
	v_mad_u64_u32 v[83:84], null, 0x68, s40, v[216:217]
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s8, s81, v6
	v_cmp_gt_i32_e64 s9, s81, v7
	v_cmp_gt_i32_e64 s12, s81, v10
	v_cmp_gt_i32_e64 s13, s81, v11
	v_cmp_gt_i32_e64 s14, s81, v12
	v_cmp_gt_i32_e64 s15, s81, v13
	v_dual_mov_b32 v202, 0 :: v_dual_lshlrev_b32 v5, 5, v35
	v_dual_mov_b32 v205, 0 :: v_dual_lshlrev_b32 v6, 4, v37
	v_dual_mov_b32 v200, 0 :: v_dual_and_b32 v7, 24, v3
	v_dual_mov_b32 v201, 0 :: v_dual_add_nc_u32 v10, 16, v4
	v_dual_mov_b32 v196, 0 :: v_dual_add_nc_u32 v11, 32, v4
	v_dual_mov_b32 v199, 0 :: v_dual_and_b32 v12, 0xf0, v0
	v_dual_mov_b32 v194, 0 :: v_dual_lshlrev_b32 v13, 5, v0
	v_mad_u64_u32 v[84:85], null, 0x70, s40, v[216:217]
	v_mad_u64_u32 v[85:86], null, 0x78, s40, v[216:217]
	v_mad_u64_u32 v[66:67], null, s80, v165, v[36:37]
	v_mad_u64_u32 v[86:87], null, 0x88, s40, v[216:217]
	v_mad_u64_u32 v[87:88], null, 0x90, s40, v[216:217]
	v_mad_u64_u32 v[212:213], null, s80, v170, v[36:37]
	v_mad_u64_u32 v[88:89], null, 0x98, s40, v[216:217]
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v8, 40, v2
	v_or_b32_e32 v14, 0x58, v2
	v_or3_b32 v187, v5, v7, v6
	v_mul_lo_u32 v183, v4, s41
	v_dual_mov_b32 v197, 0 :: v_dual_add_nc_u32 v4, 48, v4
	v_mul_lo_u32 v184, v10, s41
	v_mul_lo_u32 v213, v11, s41
	v_dual_mov_b32 v195, 0 :: v_dual_lshlrev_b32 v10, 2, v12
	v_dual_mov_b32 v192, 0 :: v_dual_and_b32 v11, 32, v13
	v_mad_u64_u32 v[89:90], null, 0xa0, s40, v[216:217]
	v_mad_u64_u32 v[90:91], null, 0xa8, s40, v[216:217]
	.loc	1 951 28                        ; ragged.py:951:28
	v_or_b32_e32 v169, 12, v165
	v_mad_u64_u32 v[91:92], null, 0xb0, s40, v[216:217]
	v_mad_u64_u32 v[92:93], null, 0xb8, s40, v[216:217]
	v_mad_u64_u32 v[93:94], null, 0xc0, s40, v[216:217]
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v15, 0x60, v2
	v_or_b32_e32 v16, 0x68, v2
	v_or_b32_e32 v17, 0x70, v2
	v_or_b32_e32 v18, 0x78, v2
	v_or_b32_e32 v19, 0x80, v2
	v_or_b32_e32 v20, 0x88, v2
	v_or_b32_e32 v21, 0x90, v2
	v_or_b32_e32 v22, 0x98, v2
	v_or_b32_e32 v23, 0xa0, v2
	v_or_b32_e32 v24, 0xa8, v2
	v_or_b32_e32 v25, 0xb0, v2
	v_or_b32_e32 v26, 0xb8, v2
	v_or_b32_e32 v27, 0xc0, v2
	v_or_b32_e32 v28, 0xc8, v2
	v_or_b32_e32 v29, 0xd0, v2
	v_or_b32_e32 v30, 0xd8, v2
	v_or_b32_e32 v31, 0xe0, v2
	v_or_b32_e32 v32, 0xe8, v2
	v_or_b32_e32 v33, 0xf0, v2
	v_or_b32_e32 v34, 0xf8, v2
	v_or_b32_e32 v210, s66, v0
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s1, s81, v2
	v_cmp_gt_i32_e64 s10, s81, v8
	v_cmp_gt_i32_e64 s16, s81, v14
	v_or_b32_e32 v1, 0x300, v0
	v_or_b32_e32 v2, 0x700, v0
	v_or_b32_e32 v8, 0x3f0, v0
	v_or_b32_e32 v14, 0x7f0, v0
	v_xor_b32_e32 v5, 0x110, v186
	v_xor_b32_e32 v6, 8, v187
	v_xor_b32_e32 v7, 16, v187
	v_xor_b32_e32 v9, 24, v187
	v_mul_lo_u32 v214, v4, s41
	v_dual_mov_b32 v190, 0 :: v_dual_and_b32 v3, 28, v3
	v_add3_u32 v4, 0, v10, v11
	v_dual_mov_b32 v193, 0 :: v_dual_lshlrev_b32 v10, 1, v12
	v_mad_u64_u32 v[74:75], null, s80, 20, v[66:67]
	v_mad_u64_u32 v[94:95], null, 0xc8, s40, v[216:217]
	v_mad_u64_u32 v[75:76], null, s80, 24, v[66:67]
	v_mad_u64_u32 v[95:96], null, 0xd0, s40, v[216:217]
	v_mad_u64_u32 v[223:224], null, 0xe0, s40, v[216:217]
	v_mad_u64_u32 v[171:172], null, s80, v169, v[36:37]
	v_mad_u64_u32 v[226:227], null, s40, 24, v[216:217]
	v_mad_u64_u32 v[230:231], null, s40, 48, v[216:217]
	v_mad_u64_u32 v[220:221], null, s40, 56, v[216:217]
	v_mad_u64_u32 v[96:97], null, 0xd8, s40, v[216:217]
	v_mad_u64_u32 v[224:225], null, 0xe8, s40, v[216:217]
	v_mad_u64_u32 v[76:77], null, 0xf0, s40, v[216:217]
	v_mad_u64_u32 v[217:218], null, 0xf8, s40, v[216:217]
	.loc	1 964 39                        ; ragged.py:964:39
	s_mul_i32 s3, s42, s81
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s17, s81, v15
	v_cmp_gt_i32_e64 s18, s81, v16
	v_cmp_gt_i32_e64 s19, s81, v17
	v_cmp_gt_i32_e64 s20, s81, v18
	v_cmp_gt_i32_e64 s21, s81, v19
	v_cmp_gt_i32_e64 s22, s81, v20
	v_cmp_gt_i32_e64 s23, s81, v21
	v_cmp_gt_i32_e64 s24, s81, v22
	v_cmp_gt_i32_e64 s25, s81, v23
	v_cmp_gt_i32_e64 s26, s81, v24
	v_cmp_gt_i32_e64 s27, s81, v25
	v_cmp_gt_i32_e64 s28, s81, v26
	v_cmp_gt_i32_e64 s29, s81, v27
	v_cmp_gt_i32_e64 s30, s81, v28
	v_cmp_gt_i32_e64 s31, s81, v29
	v_cmp_gt_i32_e64 s33, s81, v30
	v_cmp_gt_i32_e64 s34, s81, v31
	v_cmp_gt_i32_e64 s35, s81, v32
	v_cmp_gt_i32_e64 s36, s81, v33
	v_cmp_gt_i32_e64 s37, s81, v34
	v_cmp_gt_i32_e64 s38, s81, v210
	v_lshl_add_u32 v174, s40, 3, v216
	v_lshl_add_u32 v172, s40, 4, v216
	v_lshl_add_u32 v181, s40, 5, v216
	v_lshl_add_u32 v175, s40, 6, v216
	v_lshl_add_u32 v182, s40, 7, v216
	v_dual_mov_b32 v198, 0 :: v_dual_add_nc_u32 v173, 0, v35
	v_dual_mov_b32 v191, 0 :: v_dual_add_nc_u32 v180, 0, v0
	v_dual_mov_b32 v178, 0 :: v_dual_add_nc_u32 v215, 0, v1
	v_dual_mov_b32 v189, 0 :: v_dual_add_nc_u32 v188, 0, v2
	v_dual_mov_b32 v176, 0 :: v_dual_add_nc_u32 v219, 0, v8
	v_dual_mov_b32 v168, 0 :: v_dual_add_nc_u32 v71, 0, v14
	v_dual_mov_b32 v166, 0 :: v_dual_add_nc_u32 v185, 0, v5
	v_dual_mov_b32 v179, 0 :: v_dual_add_nc_u32 v222, 0, v6
	v_dual_mov_b32 v177, 0 :: v_dual_add_nc_u32 v68, 0, v7
	v_dual_mov_b32 v167, 0 :: v_dual_add_nc_u32 v70, 0, v9
	v_dual_mov_b32 v163, 0 :: v_dual_add_nc_u32 v72, v4, v3
	v_dual_mov_b32 v164, 0 :: v_dual_add_nc_u32 v73, 0, v10
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v131, 0
	s_add_i32 s89, s66, s3
	.loc	1 960 39                        ; ragged.py:960:39
	s_mul_i32 s84, s42, s40
	.loc	1 998 37                        ; ragged.py:998:37
	s_mul_i32 s87, s42, s41
	s_and_b32 s69, s57, 0xffff
	s_mov_b32 s68, s56
	s_mov_b32 s71, 0x31027000
	s_mov_b32 s70, 0x7ffffffe
	s_mul_i32 s89, s89, s40
	s_and_b32 s73, s59, 0xffff
	s_mov_b32 s59, 0
	s_and_b32 s61, s61, 0xffff
	s_and_b32 s77, s63, 0xffff
	s_mov_b32 s76, s62
	.loc	1 953 19                        ; ragged.py:953:19
	s_lshr_b32 s90, s86, 6
	s_mov_b32 s62, 0
	s_clause 0xa                            ; 44-byte Folded Spill
	scratch_store_b32 off, v37, off offset:328
	scratch_store_b32 off, v0, off offset:324
	scratch_store_b32 off, v210, off offset:296
	scratch_store_b32 off, v183, off offset:300
	scratch_store_b32 off, v184, off offset:304
	scratch_store_b32 off, v213, off offset:308
	scratch_store_b32 off, v214, off offset:312
	scratch_store_b32 off, v72, off offset:316
	scratch_store_b32 off, v73, off offset:320
	scratch_store_b32 off, v186, off offset:32
	scratch_store_b32 off, v187, off offset:36
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 990 40                        ; ragged.py:990:40
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v33, v183, s59, 1
	.loc	1 998 25                        ; ragged.py:998:25
	s_add_i32 s3, s59, s87
	.loc	1 990 40                        ; ragged.py:990:40
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v34, v184, s59, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v35, v213, s59, 1
	.loc	1 998 25                        ; ragged.py:998:25
	s_mul_i32 s3, s3, s81
	.loc	1 990 40                        ; ragged.py:990:40
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v36, v214, s59, 1
	.loc	1 997 40                        ; ragged.py:997:40
	v_add_lshl_u32 v37, v210, s3, 1
	.loc	1 990 40                        ; ragged.py:990:40
	v_cndmask_b32_e64 v33, 0x80000000, v33, s5
	v_cndmask_b32_e64 v34, 0x80000000, v34, s4
	v_cndmask_b32_e64 v35, 0x80000000, v35, s48
	s_mov_b32 s62, s70
	s_mov_b32 s63, s71
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	.loc	1 997 40                        ; ragged.py:997:40
	v_cndmask_b32_e64 v37, 0x80000000, v37, s38
	s_mov_b32 s78, s70
	s_mov_b32 s79, s71
	.loc	1 990 40                        ; ragged.py:990:40
	s_clause 0x3
	buffer_load_u16 v33, v33, s[60:63], 0 offen
	buffer_load_u16 v34, v34, s[60:63], 0 offen
	buffer_load_u16 v35, v35, s[60:63], 0 offen
	buffer_load_u16 v36, v36, s[60:63], 0 offen
	.loc	1 997 40                        ; ragged.py:997:40
	buffer_load_u16 v37, v37, s[76:79], 0 offen
	.loc	1 1002 21                       ; ragged.py:1002:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1004 17                       ; ragged.py:1004:17
	s_add_i32 s3, s59, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 953 19                        ; ragged.py:953:19
	s_lshl_b32 s62, s3, 6
	s_cmp_lg_u32 s59, s90
	s_mov_b32 s59, s3
	.loc	1 990 40                        ; ragged.py:990:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 995 21                        ; ragged.py:995:21
	v_dual_mul_f32 v54, v111, v34 :: v_dual_lshlrev_b32 v33, 16, v33
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v38, v128, v33 :: v_dual_lshlrev_b32 v35, 16, v35
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v41, v125, v33 :: v_dual_lshlrev_b32 v36, 16, v36
	v_mul_f32_e32 v39, v127, v33
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v56, v109, v34 :: v_dual_lshlrev_b32 v37, 16, v37
	v_dual_mul_f32 v40, v126, v33 :: v_dual_mul_f32 v53, v112, v34
	v_dual_mul_f32 v42, v124, v33 :: v_dual_mul_f32 v55, v110, v34
	v_dual_mul_f32 v43, v123, v33 :: v_dual_mul_f32 v60, v105, v34
	v_dual_mul_f32 v44, v122, v33 :: v_dual_mul_f32 v57, v108, v34
	v_dual_mul_f32 v45, v121, v33 :: v_dual_mul_f32 v58, v107, v34
	v_dual_mul_f32 v46, v120, v33 :: v_dual_mul_f32 v59, v106, v34
	v_dual_mul_f32 v47, v119, v33 :: v_dual_mul_f32 v64, v101, v34
	v_dual_mul_f32 v48, v118, v33 :: v_dual_mul_f32 v61, v104, v34
	v_dual_mul_f32 v49, v117, v33 :: v_dual_mul_f32 v62, v103, v34
	v_dual_mul_f32 v50, v116, v33 :: v_dual_mul_f32 v63, v102, v34
	v_dual_mul_f32 v51, v115, v33 :: v_dual_mul_f32 v32, v32, v34
	v_dual_mul_f32 v52, v114, v33 :: v_dual_mul_f32 v65, v100, v34
	v_dual_mul_f32 v33, v113, v33 :: v_dual_mul_f32 v30, v30, v35
	v_dual_mul_f32 v67, v99, v34 :: v_dual_mul_f32 v28, v28, v35
	v_dual_mul_f32 v69, v98, v34 :: v_dual_mul_f32 v34, v27, v35
	v_dual_mul_f32 v31, v31, v35 :: v_dual_mul_f32 v14, v14, v36
	v_dual_mul_f32 v29, v29, v35 :: v_dual_mul_f32 v108, v12, v36
	v_dual_mul_f32 v98, v26, v35 :: v_dual_mul_f32 v15, v15, v36
	v_dual_mul_f32 v99, v25, v35 :: v_dual_mul_f32 v110, v10, v36
	v_mul_f32_e32 v100, v24, v35
	v_dual_mul_f32 v101, v23, v35 :: v_dual_mul_f32 v8, v8, v36
	v_dual_mul_f32 v102, v22, v35 :: v_dual_mul_f32 v109, v11, v36
	v_dual_mul_f32 v103, v21, v35 :: v_dual_mul_f32 v6, v6, v36
	v_dual_mul_f32 v104, v20, v35 :: v_dual_mul_f32 v9, v9, v36
	v_dual_mul_f32 v105, v19, v35 :: v_dual_mul_f32 v4, v4, v36
	v_dual_mul_f32 v106, v18, v35 :: v_dual_mul_f32 v7, v7, v36
	v_dual_mul_f32 v107, v17, v35 :: v_dual_mul_f32 v2, v2, v36
	v_mul_f32_e32 v35, v16, v35
	.loc	1 1002 21                       ; ragged.py:1002:21
	ds_store_b32 v72, v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[16:19], v73
	ds_load_b128 v[20:23], v73 offset:16
	.loc	1 995 21                        ; ragged.py:995:21
	v_mul_f32_e32 v37, v13, v36
	.loc	1 1002 21                       ; ragged.py:1002:21
	ds_load_b128 v[10:13], v73 offset:512
	ds_load_b128 v[24:27], v73 offset:528
	.loc	1 995 21                        ; ragged.py:995:21
	v_mul_f32_e32 v5, v5, v36
	v_mul_f32_e32 v3, v3, v36
	v_mul_f32_e32 v1, v1, v36
	v_mul_f32_e32 v0, v0, v36
	.loc	1 1003 17                       ; ragged.py:1003:17
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v209, v38, v16 :: v_dual_fmac_f32 v202, v45, v23
	v_dual_fmac_f32 v208, v39, v17 :: v_dual_fmac_f32 v207, v40, v18
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v198, v49, v13
	v_dual_fmac_f32 v206, v41, v19 :: v_dual_fmac_f32 v205, v42, v20
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v196, v51, v25
	v_dual_fmac_f32 v204, v43, v21 :: v_dual_fmac_f32 v203, v44, v22
	v_dual_fmac_f32 v194, v33, v27 :: v_dual_fmac_f32 v201, v46, v10
	v_dual_fmac_f32 v200, v47, v11 :: v_dual_fmac_f32 v199, v48, v12
	v_fmac_f32_e32 v192, v54, v17
	v_dual_fmac_f32 v197, v50, v24 :: v_dual_fmac_f32 v190, v56, v19
	v_dual_fmac_f32 v195, v52, v26 :: v_dual_fmac_f32 v168, v62, v11
	v_dual_fmac_f32 v193, v53, v16 :: v_dual_fmac_f32 v178, v59, v22
	v_dual_fmac_f32 v191, v55, v18 :: v_dual_fmac_f32 v166, v64, v13
	v_dual_fmac_f32 v189, v57, v20 :: v_dual_fmac_f32 v154, v99, v22
	v_dual_fmac_f32 v179, v58, v21 :: v_dual_fmac_f32 v176, v61, v10
	v_dual_fmac_f32 v177, v60, v23 :: v_dual_fmac_f32 v164, v65, v24
	v_dual_fmac_f32 v167, v63, v12 :: v_dual_fmac_f32 v162, v69, v26
	v_dual_fmac_f32 v163, v67, v25 :: v_dual_fmac_f32 v158, v29, v18
	v_dual_fmac_f32 v161, v32, v27 :: v_dual_fmac_f32 v160, v31, v16
	v_dual_fmac_f32 v159, v30, v17 :: v_dual_fmac_f32 v152, v101, v10
	v_dual_fmac_f32 v157, v28, v19 :: v_dual_fmac_f32 v156, v34, v20
	v_dual_fmac_f32 v155, v98, v21 :: v_dual_fmac_f32 v150, v103, v12
	v_dual_fmac_f32 v153, v100, v23 :: v_dual_fmac_f32 v148, v105, v24
	v_dual_fmac_f32 v151, v102, v11 :: v_dual_fmac_f32 v146, v107, v26
	v_dual_fmac_f32 v149, v104, v13 :: v_dual_fmac_f32 v144, v15, v16
	v_dual_fmac_f32 v147, v106, v25 :: v_dual_fmac_f32 v142, v37, v18
	v_dual_fmac_f32 v145, v35, v27 :: v_dual_fmac_f32 v140, v109, v20
	v_dual_fmac_f32 v143, v14, v17 :: v_dual_fmac_f32 v138, v9, v22
	v_dual_fmac_f32 v141, v108, v19 :: v_dual_fmac_f32 v132, v5, v12
	v_dual_fmac_f32 v139, v110, v21 :: v_dual_fmac_f32 v136, v8, v23
	v_dual_fmac_f32 v135, v7, v10 :: v_dual_fmac_f32 v130, v4, v13
	v_dual_fmac_f32 v133, v6, v11 :: v_dual_fmac_f32 v134, v1, v26
	v_fmac_f32_e32 v129, v3, v24
	v_fmac_f32_e32 v137, v2, v25
	v_fmac_f32_e32 v131, v0, v27
	.loc	1 953 19                        ; ragged.py:953:19
	s_cbranch_scc0 .LBB0_10
.LBB0_6:                                ; %.preheader
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v127, 0
	v_mov_b32_e32 v126, 0
	v_mov_b32_e32 v128, 0
	.loc	1 957 23 is_stmt 1              ; ragged.py:957:23
	s_and_not1_b32 vcc_lo, exec_lo, s88
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_mov_b32_e32 v1, 0
	s_mov_b32 s63, s83
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v209, off offset:292
	scratch_store_b32 off, v208, off offset:288
	scratch_store_b32 off, v207, off offset:284
	scratch_store_b32 off, v206, off offset:280
	scratch_store_b32 off, v205, off offset:276
	scratch_store_b32 off, v204, off offset:272
	scratch_store_b32 off, v203, off offset:268
	scratch_store_b32 off, v202, off offset:264
	scratch_store_b32 off, v201, off offset:260
	scratch_store_b32 off, v200, off offset:256
	scratch_store_b32 off, v199, off offset:252
	scratch_store_b32 off, v198, off offset:248
	scratch_store_b32 off, v197, off offset:244
	scratch_store_b32 off, v196, off offset:240
	scratch_store_b32 off, v195, off offset:236
	scratch_store_b32 off, v194, off offset:232
	scratch_store_b32 off, v193, off offset:228
	scratch_store_b32 off, v192, off offset:224
	scratch_store_b32 off, v191, off offset:220
	scratch_store_b32 off, v190, off offset:216
	scratch_store_b32 off, v189, off offset:212
	scratch_store_b32 off, v179, off offset:208
	scratch_store_b32 off, v178, off offset:204
	scratch_store_b32 off, v177, off offset:200
	scratch_store_b32 off, v176, off offset:196
	scratch_store_b32 off, v168, off offset:192
	scratch_store_b32 off, v167, off offset:188
	scratch_store_b32 off, v166, off offset:184
	scratch_store_b32 off, v164, off offset:180
	scratch_store_b32 off, v163, off offset:176
	scratch_store_b32 off, v162, off offset:172
	scratch_store_b32 off, v161, off offset:168
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v160, off offset:164
	scratch_store_b32 off, v159, off offset:160
	scratch_store_b32 off, v158, off offset:156
	scratch_store_b32 off, v157, off offset:152
	scratch_store_b32 off, v156, off offset:148
	scratch_store_b32 off, v155, off offset:144
	scratch_store_b32 off, v154, off offset:140
	scratch_store_b32 off, v153, off offset:136
	scratch_store_b32 off, v152, off offset:132
	scratch_store_b32 off, v151, off offset:128
	scratch_store_b32 off, v150, off offset:124
	scratch_store_b32 off, v149, off offset:120
	scratch_store_b32 off, v148, off offset:116
	scratch_store_b32 off, v147, off offset:112
	scratch_store_b32 off, v146, off offset:108
	scratch_store_b32 off, v145, off offset:104
	scratch_store_b32 off, v144, off offset:100
	scratch_store_b32 off, v143, off offset:96
	scratch_store_b32 off, v142, off offset:92
	scratch_store_b32 off, v141, off offset:88
	scratch_store_b32 off, v140, off offset:84
	scratch_store_b32 off, v139, off offset:80
	scratch_store_b32 off, v138, off offset:76
	scratch_store_b32 off, v137, off offset:72
	scratch_store_b32 off, v136, off offset:68
	scratch_store_b32 off, v135, off offset:64
	scratch_store_b32 off, v134, off offset:60
	scratch_store_b32 off, v133, off offset:56
	scratch_store_b32 off, v132, off offset:52
	scratch_store_b32 off, v131, off offset:48
	scratch_store_b32 off, v130, off offset:44
	scratch_store_b32 off, v129, off offset:40
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
	.loc	1 951 28 is_stmt 1              ; ragged.py:951:28
	v_or_b32_e32 v0, 4, v165
	.loc	1 958 26                        ; ragged.py:958:26
	s_add_i32 s78, s63, s62
	v_lshl_add_u32 v98, s80, 2, v66
	.loc	1 973 46                        ; ragged.py:973:46
	s_add_i32 s74, s78, s84
	v_lshl_add_u32 v99, s80, 3, v66
	.loc	1 958 26                        ; ragged.py:958:26
	v_or_b32_e32 v0, s78, v0
	.loc	1 973 46                        ; ragged.py:973:46
	s_mul_i32 s74, s74, s80
	v_lshl_add_u32 v101, s80, 4, v66
	s_add_i32 s74, s74, s67
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v187, v95 :: v_dual_add_nc_u32 v98, s74, v98
	.loc	1 971 35                        ; ragged.py:971:35
	v_cmp_gt_i32_e64 s3, s82, v0
	.loc	1 972 60                        ; ragged.py:972:60
	v_cmp_eq_u32_e32 vcc_lo, s86, v0
	.loc	1 951 28                        ; ragged.py:951:28
	v_or_b32_e32 v0, 8, v165
	v_dual_mov_b32 v186, v91 :: v_dual_add_nc_u32 v99, s74, v99
	v_add_nc_u32_e32 v100, s74, v171
	v_add_nc_u32_e32 v101, s74, v101
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 958 26                        ; ragged.py:958:26
	v_or_b32_e32 v0, s78, v0
	v_add_nc_u32_e32 v102, s74, v74
	s_clause 0x3                            ; 32-byte Folded Spill
	scratch_store_b64 off, v[93:94], off offset:24
	scratch_store_b64 off, v[224:225], off offset:16
	scratch_store_b64 off, v[223:224], off offset:8
	scratch_store_b64 off, v[96:97], off
	v_mov_b32_e32 v97, v94
	v_add_nc_u32_e32 v103, s74, v75
	.loc	1 971 35                        ; ragged.py:971:35
	v_cmp_gt_i32_e64 s49, s82, v0
	.loc	1 972 60                        ; ragged.py:972:60
	v_cmp_eq_u32_e64 s39, s86, v0
	.loc	1 958 26                        ; ragged.py:958:26
	v_or_b32_e32 v0, s78, v169
	v_dual_mov_b32 v183, v175 :: v_dual_add_nc_u32 v104, s74, v212
	v_dual_mov_b32 v77, v220 :: v_dual_mov_b32 v184, v182
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 971 35                        ; ragged.py:971:35
	v_cmp_gt_i32_e64 s50, s82, v0
	.loc	1 972 60                        ; ragged.py:972:60
	v_cmp_eq_u32_e64 s40, s86, v0
	.loc	1 951 28                        ; ragged.py:951:28
	v_or_b32_e32 v0, 16, v165
	.loc	1 958 26                        ; ragged.py:958:26
	v_or_b32_e32 v0, s78, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 971 35                        ; ragged.py:971:35
	v_cmp_gt_i32_e64 s51, s82, v0
	.loc	1 972 60                        ; ragged.py:972:60
	v_cmp_eq_u32_e64 s41, s86, v0
	.loc	1 951 28                        ; ragged.py:951:28
	v_or_b32_e32 v0, 20, v165
	.loc	1 958 26                        ; ragged.py:958:26
	v_or_b32_e32 v0, s78, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 971 35                        ; ragged.py:971:35
	v_cmp_gt_i32_e64 s52, s82, v0
	.loc	1 972 60                        ; ragged.py:972:60
	v_cmp_eq_u32_e64 s42, s86, v0
	.loc	1 951 28                        ; ragged.py:951:28
	v_or_b32_e32 v0, 24, v165
	.loc	1 958 26                        ; ragged.py:958:26
	v_or_b32_e32 v0, s78, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 971 35                        ; ragged.py:971:35
	v_cmp_gt_i32_e64 s53, s82, v0
	.loc	1 972 60                        ; ragged.py:972:60
	v_cmp_eq_u32_e64 s43, s86, v0
	.loc	1 958 26                        ; ragged.py:958:26
	v_or_b32_e32 v0, s78, v170
	.loc	1 971 35                        ; ragged.py:971:35
	v_cmp_gt_i32_e64 s54, s82, v0
	.loc	1 972 60                        ; ragged.py:972:60
	v_cmp_eq_u32_e64 s44, s86, v0
	.loc	1 958 26                        ; ragged.py:958:26
	v_or_b32_e32 v0, s78, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 971 35                        ; ragged.py:971:35
	v_cmp_gt_i32_e64 s55, s82, v0
	.loc	1 972 60                        ; ragged.py:972:60
	v_cmp_eq_u32_e64 s56, s86, v0
	.loc	1 971 60                        ; ragged.py:971:60
	v_subrev_nc_u32_e32 v0, s62, v0
	.loc	1 972 36                        ; ragged.py:972:36
	s_and_b32 s56, s85, s56
	.loc	1 971 59                        ; ragged.py:971:59
	v_cmp_gt_i32_e64 s57, 64, v0
	.loc	1 958 26                        ; ragged.py:958:26
	v_or_b32_e32 v0, s78, v211
	.loc	1 974 46                        ; ragged.py:974:46
	s_add_i32 s78, s78, s89
	.loc	1 971 34                        ; ragged.py:971:34
	s_and_b32 s92, s55, s57
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 971 35 is_stmt 0              ; ragged.py:971:35
	v_cmp_gt_i32_e64 s45, s82, v0
	.loc	1 972 60 is_stmt 1              ; ragged.py:972:60
	v_cmp_eq_u32_e64 s46, s86, v0
	.loc	1 971 60                        ; ragged.py:971:60
	v_subrev_nc_u32_e32 v0, s62, v0
	.loc	1 971 34 is_stmt 0              ; ragged.py:971:34
	s_and_b32 s91, s3, s57
	.loc	1 973 70 is_stmt 1              ; ragged.py:973:70
	s_and_b32 s3, s0, s92
	.loc	1 971 34                        ; ragged.py:971:34
	s_and_b32 s79, s49, s57
	s_and_b32 s75, s50, s57
	.loc	1 971 59 is_stmt 0              ; ragged.py:971:59
	v_cmp_gt_i32_e64 s47, 64, v0
	v_add_nc_u32_e32 v0, s74, v66
	.loc	1 971 34                        ; ragged.py:971:34
	s_and_b32 s55, s51, s57
	s_and_b32 s51, s52, s57
	s_and_b32 s50, s53, s57
	s_and_b32 s49, s54, s57
	.loc	1 973 38 is_stmt 1              ; ragged.py:973:38
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 973 70 is_stmt 0              ; ragged.py:973:70
	s_and_b32 s3, s0, s91
	.loc	1 974 38 is_stmt 1              ; ragged.py:974:38
	s_mov_b32 s74, s70
	.loc	1 973 38                        ; ragged.py:973:38
	v_cndmask_b32_e64 v98, 0x80000000, v98, s3
	.loc	1 973 70 is_stmt 0              ; ragged.py:973:70
	s_and_b32 s3, s0, s79
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 973 38                        ; ragged.py:973:38
	v_cndmask_b32_e64 v99, 0x80000000, v99, s3
	.loc	1 973 70                        ; ragged.py:973:70
	s_and_b32 s3, s0, s75
	.loc	1 974 38 is_stmt 1              ; ragged.py:974:38
	s_mov_b32 s75, s71
	.loc	1 973 38                        ; ragged.py:973:38
	v_cndmask_b32_e64 v100, 0x80000000, v100, s3
	.loc	1 973 70 is_stmt 0              ; ragged.py:973:70
	s_and_b32 s3, s0, s55
	.loc	1 973 38                        ; ragged.py:973:38
	v_cndmask_b32_e64 v101, 0x80000000, v101, s3
	.loc	1 973 70                        ; ragged.py:973:70
	s_and_b32 s3, s0, s51
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 973 38                        ; ragged.py:973:38
	v_cndmask_b32_e64 v102, 0x80000000, v102, s3
	.loc	1 973 70                        ; ragged.py:973:70
	s_and_b32 s3, s0, s50
	.loc	1 973 38                        ; ragged.py:973:38
	v_cndmask_b32_e64 v103, 0x80000000, v103, s3
	.loc	1 973 70                        ; ragged.py:973:70
	s_and_b32 s3, s0, s49
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 973 38                        ; ragged.py:973:38
	v_cndmask_b32_e64 v104, 0x80000000, v104, s3
	s_clause 0x7
	buffer_load_u8 v105, v0, s[68:71], 0 offen
	buffer_load_u8 v98, v98, s[68:71], 0 offen
	buffer_load_u8 v99, v99, s[68:71], 0 offen
	buffer_load_u8 v100, v100, s[68:71], 0 offen
	buffer_load_u8 v101, v101, s[68:71], 0 offen
	buffer_load_u8 v102, v102, s[68:71], 0 offen
	buffer_load_u8 v103, v103, s[68:71], 0 offen
	buffer_load_u8 v104, v104, s[68:71], 0 offen
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s3, s85, vcc_lo
	.loc	1 975 66                        ; ragged.py:975:66
	s_waitcnt vmcnt(7)
	v_and_b16 v0.l, v105.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v0.h, v98.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v98.h, v100.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v99.h, v102.l, 15
	.loc	1 975 38 is_stmt 0              ; ragged.py:975:38
	v_cndmask_b16 v0.h, v98.l, v0.h, s3
	.loc	1 975 66                        ; ragged.py:975:66
	v_and_b16 v98.l, v99.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s3, s85, s39
	.loc	1 975 66                        ; ragged.py:975:66
	s_waitcnt vmcnt(0)
	v_and_b16 v100.h, v104.l, 15
	.loc	1 971 34                        ; ragged.py:971:34
	s_and_b32 s39, s45, s47
	.loc	1 975 38                        ; ragged.py:975:38
	v_cndmask_b16 v0.l, v105.l, v0.l, s56
	v_cndmask_b16 v98.l, v99.l, v98.l, s3
	.loc	1 975 66 is_stmt 0              ; ragged.py:975:66
	v_and_b16 v99.l, v101.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s3, s85, s40
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 vcc_lo, s1, s39
	.loc	1 975 38                        ; ragged.py:975:38
	v_cndmask_b16 v98.h, v100.l, v98.h, s3
	.loc	1 972 36                        ; ragged.py:972:36
	s_and_b32 s3, s85, s41
	.loc	1 975 66                        ; ragged.py:975:66
	v_and_b16 v100.l, v103.l, 15
	.loc	1 975 38 is_stmt 0              ; ragged.py:975:38
	v_cndmask_b16 v99.l, v101.l, v99.l, s3
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s3, s85, s42
	v_add_nc_u32_e32 v101, s78, v216
	.loc	1 975 38                        ; ragged.py:975:38
	v_cndmask_b16 v99.h, v102.l, v99.h, s3
	.loc	1 972 36                        ; ragged.py:972:36
	s_and_b32 s3, s85, s43
	v_add_nc_u32_e32 v102, s78, v174
	.loc	1 975 38                        ; ragged.py:975:38
	v_cndmask_b16 v100.l, v103.l, v100.l, s3
	.loc	1 972 36                        ; ragged.py:972:36
	s_and_b32 s3, s85, s44
	v_add_nc_u32_e32 v103, s78, v226
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e32 v101, 0x80000000, v101, vcc_lo
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 vcc_lo, s6, s39
	.loc	1 975 38 is_stmt 1              ; ragged.py:975:38
	v_cndmask_b16 v100.h, v104.l, v100.h, s3
	v_add_nc_u32_e32 v104, s78, v78
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e32 v102, 0x80000000, v102, vcc_lo
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 vcc_lo, s8, s39
	v_add_nc_u32_e32 v105, s78, v220
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e32 v103, 0x80000000, v103, vcc_lo
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 vcc_lo, s10, s39
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s3, s85, s46
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e32 v104, 0x80000000, v104, vcc_lo
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 vcc_lo, s12, s39
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e32 v105, 0x80000000, v105, vcc_lo
	s_clause 0x4
	buffer_load_u8 v106, v101, s[72:75], 0 offen
	buffer_load_u8 v191, v105, s[72:75], 0 offen
	buffer_load_u8 v192, v104, s[72:75], 0 offen
	buffer_load_u8 v193, v103, s[72:75], 0 offen
	buffer_load_u8 v194, v102, s[72:75], 0 offen
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 vcc_lo, s7, s39
	v_add_nc_u32_e32 v104, s78, v83
	v_add_nc_u32_e32 v103, s78, v81
	v_add_nc_u32_e32 v105, s78, v85
	.loc	1 976 66 is_stmt 1              ; ragged.py:976:66
	s_waitcnt vmcnt(4)
	v_and_b16 v101.l, v106.l, 15
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b16 v191.h, v106.l, v101.l, s3
	v_add_nc_u32_e32 v101, s78, v172
	.loc	1 974 38 is_stmt 1              ; ragged.py:974:38
	v_cndmask_b32_e32 v101, 0x80000000, v101, vcc_lo
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 vcc_lo, s9, s39
	.loc	1 974 38                        ; ragged.py:974:38
	buffer_load_u8 v102, v101, s[72:75], 0 offen
	.loc	1 976 66 is_stmt 1              ; ragged.py:976:66
	s_waitcnt vmcnt(0)
	v_and_b16 v101.l, v102.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	v_cndmask_b16 v192.h, v102.l, v101.l, s3
	v_add_nc_u32_e32 v101, s78, v181
	.loc	1 974 38 is_stmt 1              ; ragged.py:974:38
	v_cndmask_b32_e32 v101, 0x80000000, v101, vcc_lo
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 vcc_lo, s11, s39
	.loc	1 974 38                        ; ragged.py:974:38
	buffer_load_u8 v102, v101, s[72:75], 0 offen
	.loc	1 976 66 is_stmt 1              ; ragged.py:976:66
	s_waitcnt vmcnt(0)
	v_and_b16 v101.l, v102.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	v_cndmask_b16 v193.h, v102.l, v101.l, s3
	v_add_nc_u32_e32 v101, s78, v230
	.loc	1 974 38 is_stmt 1              ; ragged.py:974:38
	v_cndmask_b32_e32 v101, 0x80000000, v101, vcc_lo
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 vcc_lo, s13, s39
	.loc	1 974 38                        ; ragged.py:974:38
	buffer_load_u8 v102, v101, s[72:75], 0 offen
	.loc	1 976 66 is_stmt 1              ; ragged.py:976:66
	s_waitcnt vmcnt(0)
	v_and_b16 v101.l, v102.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	v_cndmask_b16 v194.h, v102.l, v101.l, s3
	v_add_nc_u32_e32 v101, s78, v175
	v_dual_mov_b32 v175, v181 :: v_dual_add_nc_u32 v102, s78, v79
	v_mov_b32_e32 v181, v212
	.loc	1 974 38 is_stmt 1              ; ragged.py:974:38
	v_cndmask_b32_e32 v101, 0x80000000, v101, vcc_lo
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 vcc_lo, s14, s39
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e32 v102, 0x80000000, v102, vcc_lo
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 vcc_lo, s16, s39
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e32 v103, 0x80000000, v103, vcc_lo
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 vcc_lo, s18, s39
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e32 v104, 0x80000000, v104, vcc_lo
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 vcc_lo, s20, s39
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e32 v105, 0x80000000, v105, vcc_lo
	s_clause 0x4
	buffer_load_u8 v106, v101, s[72:75], 0 offen
	buffer_load_u8 v195, v105, s[72:75], 0 offen
	buffer_load_u8 v196, v104, s[72:75], 0 offen
	buffer_load_u8 v197, v103, s[72:75], 0 offen
	buffer_load_u8 v198, v102, s[72:75], 0 offen
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 vcc_lo, s15, s39
	v_add_nc_u32_e32 v103, s78, v88
	v_add_nc_u32_e32 v104, s78, v90
	v_add_nc_u32_e32 v105, s78, v92
	.loc	1 976 66 is_stmt 1              ; ragged.py:976:66
	s_waitcnt vmcnt(4)
	v_and_b16 v101.l, v106.l, 15
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b16 v195.h, v106.l, v101.l, s3
	v_add_nc_u32_e32 v101, s78, v80
	.loc	1 974 38 is_stmt 1              ; ragged.py:974:38
	v_cndmask_b32_e32 v101, 0x80000000, v101, vcc_lo
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 vcc_lo, s17, s39
	.loc	1 974 38                        ; ragged.py:974:38
	buffer_load_u8 v102, v101, s[72:75], 0 offen
	.loc	1 976 66 is_stmt 1              ; ragged.py:976:66
	s_waitcnt vmcnt(0)
	v_and_b16 v101.l, v102.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	v_cndmask_b16 v196.h, v102.l, v101.l, s3
	v_add_nc_u32_e32 v101, s78, v82
	.loc	1 974 38 is_stmt 1              ; ragged.py:974:38
	v_cndmask_b32_e32 v101, 0x80000000, v101, vcc_lo
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 vcc_lo, s19, s39
	.loc	1 974 38                        ; ragged.py:974:38
	buffer_load_u8 v102, v101, s[72:75], 0 offen
	.loc	1 976 66 is_stmt 1              ; ragged.py:976:66
	s_waitcnt vmcnt(0)
	v_and_b16 v101.l, v102.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	v_cndmask_b16 v197.h, v102.l, v101.l, s3
	v_add_nc_u32_e32 v101, s78, v84
	.loc	1 974 38 is_stmt 1              ; ragged.py:974:38
	v_cndmask_b32_e32 v101, 0x80000000, v101, vcc_lo
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 vcc_lo, s21, s39
	.loc	1 974 38                        ; ragged.py:974:38
	buffer_load_u8 v102, v101, s[72:75], 0 offen
	.loc	1 976 66 is_stmt 1              ; ragged.py:976:66
	s_waitcnt vmcnt(0)
	v_and_b16 v101.l, v102.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	v_cndmask_b16 v198.h, v102.l, v101.l, s3
	v_add_nc_u32_e32 v101, s78, v182
	v_add_nc_u32_e32 v102, s78, v86
	v_mov_b32_e32 v182, v172
	v_mov_b32_e32 v172, v174
	v_dual_mov_b32 v174, v171 :: v_dual_cndmask_b32 v101, 0x80000000, v101
	.loc	1 974 70 is_stmt 1              ; ragged.py:974:70
	s_and_b32 vcc_lo, s22, s39
	.loc	1 974 38 is_stmt 0              ; ragged.py:974:38
	v_cndmask_b32_e32 v102, 0x80000000, v102, vcc_lo
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 vcc_lo, s24, s39
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e32 v103, 0x80000000, v103, vcc_lo
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 vcc_lo, s26, s39
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e32 v104, 0x80000000, v104, vcc_lo
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 vcc_lo, s28, s39
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e32 v105, 0x80000000, v105, vcc_lo
	s_clause 0x4
	buffer_load_u8 v106, v101, s[72:75], 0 offen
	buffer_load_u8 v199, v105, s[72:75], 0 offen
	buffer_load_u8 v200, v104, s[72:75], 0 offen
	buffer_load_u8 v201, v103, s[72:75], 0 offen
	buffer_load_u8 v202, v102, s[72:75], 0 offen
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 vcc_lo, s23, s39
	v_add_nc_u32_e32 v103, s78, v96
	v_add_nc_u32_e32 v104, s78, v224
	v_dual_mov_b32 v96, v89 :: v_dual_add_nc_u32 v105, s78, v217
	.loc	1 976 66 is_stmt 1              ; ragged.py:976:66
	s_waitcnt vmcnt(4)
	v_and_b16 v101.l, v106.l, 15
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b16 v199.h, v106.l, v101.l, s3
	v_add_nc_u32_e32 v101, s78, v87
	.loc	1 974 38 is_stmt 1              ; ragged.py:974:38
	v_cndmask_b32_e32 v101, 0x80000000, v101, vcc_lo
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 vcc_lo, s25, s39
	.loc	1 974 38                        ; ragged.py:974:38
	buffer_load_u8 v102, v101, s[72:75], 0 offen
	.loc	1 976 66 is_stmt 1              ; ragged.py:976:66
	s_waitcnt vmcnt(0)
	v_and_b16 v101.l, v102.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	v_cndmask_b16 v200.h, v102.l, v101.l, s3
	v_add_nc_u32_e32 v101, s78, v89
	v_dual_mov_b32 v89, v86 :: v_dual_mov_b32 v86, v79
	v_mov_b32_e32 v79, v216
	.loc	1 974 38 is_stmt 1              ; ragged.py:974:38
	v_cndmask_b32_e32 v101, 0x80000000, v101, vcc_lo
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 vcc_lo, s27, s39
	.loc	1 974 38                        ; ragged.py:974:38
	buffer_load_u8 v102, v101, s[72:75], 0 offen
	.loc	1 976 66 is_stmt 1              ; ragged.py:976:66
	s_waitcnt vmcnt(0)
	v_and_b16 v101.l, v102.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	v_cndmask_b16 v201.h, v102.l, v101.l, s3
	v_add_nc_u32_e32 v101, s78, v91
	v_dual_mov_b32 v91, v88 :: v_dual_mov_b32 v88, v81
	v_mov_b32_e32 v81, v75
	v_mov_b32_e32 v75, v217
	.loc	1 974 38 is_stmt 1              ; ragged.py:974:38
	v_cndmask_b32_e32 v101, 0x80000000, v101, vcc_lo
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 vcc_lo, s29, s39
	.loc	1 974 38                        ; ragged.py:974:38
	buffer_load_u8 v102, v101, s[72:75], 0 offen
	.loc	1 976 66 is_stmt 1              ; ragged.py:976:66
	s_waitcnt vmcnt(0)
	v_and_b16 v101.l, v102.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	v_cndmask_b16 v202.h, v102.l, v101.l, s3
	v_add_nc_u32_e32 v101, s78, v93
	v_dual_mov_b32 v93, v90 :: v_dual_add_nc_u32 v102, s78, v94
	v_dual_mov_b32 v94, v87 :: v_dual_mov_b32 v87, v84
	.loc	1 974 38 is_stmt 1              ; ragged.py:974:38
	v_cndmask_b32_e32 v101, 0x80000000, v101, vcc_lo
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 vcc_lo, s30, s39
	v_mov_b32_e32 v90, v83
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e32 v102, 0x80000000, v102, vcc_lo
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 vcc_lo, s33, s39
	v_mov_b32_e32 v83, v80
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e32 v103, 0x80000000, v103, vcc_lo
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 vcc_lo, s35, s39
	v_mov_b32_e32 v80, v230
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e32 v104, 0x80000000, v104, vcc_lo
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 vcc_lo, s37, s39
	v_dual_mov_b32 v84, v78 :: v_dual_cndmask_b32 v105, 0x80000000, v105
	.loc	1 974 38                        ; ragged.py:974:38
	s_clause 0x4
	buffer_load_u8 v106, v101, s[72:75], 0 offen
	buffer_load_u8 v203, v105, s[72:75], 0 offen
	buffer_load_u8 v204, v104, s[72:75], 0 offen
	buffer_load_u8 v205, v103, s[72:75], 0 offen
	buffer_load_u8 v206, v102, s[72:75], 0 offen
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 vcc_lo, s31, s39
	v_mov_b32_e32 v78, v226
	.loc	1 976 66 is_stmt 1              ; ragged.py:976:66
	s_waitcnt vmcnt(4)
	v_and_b16 v101.l, v106.l, 15
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b16 v203.h, v106.l, v101.l, s3
	v_add_nc_u32_e32 v101, s78, v95
	v_dual_mov_b32 v95, v92 :: v_dual_mov_b32 v92, v85
	v_mov_b32_e32 v85, v82
	v_dual_mov_b32 v82, v74 :: v_dual_cndmask_b32 v101, 0x80000000, v101
	.loc	1 974 70 is_stmt 1              ; ragged.py:974:70
	s_and_b32 vcc_lo, s34, s39
	.loc	1 974 38 is_stmt 0              ; ragged.py:974:38
	buffer_load_u8 v102, v101, s[72:75], 0 offen
	.loc	1 976 66 is_stmt 1              ; ragged.py:976:66
	s_waitcnt vmcnt(0)
	v_and_b16 v101.l, v102.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	v_cndmask_b16 v204.h, v102.l, v101.l, s3
	v_add_nc_u32_e32 v101, s78, v223
	.loc	1 974 38 is_stmt 1              ; ragged.py:974:38
	v_cndmask_b32_e32 v101, 0x80000000, v101, vcc_lo
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 vcc_lo, s36, s39
	.loc	1 974 38                        ; ragged.py:974:38
	buffer_load_u8 v102, v101, s[72:75], 0 offen
	.loc	1 976 66 is_stmt 1              ; ragged.py:976:66
	s_waitcnt vmcnt(0)
	v_and_b16 v101.l, v102.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	v_cndmask_b16 v205.h, v102.l, v101.l, s3
	v_add_nc_u32_e32 v101, s78, v76
	.loc	1 974 38 is_stmt 1              ; ragged.py:974:38
	v_cndmask_b32_e32 v101, 0x80000000, v101, vcc_lo
	buffer_load_u8 v102, v101, s[72:75], 0 offen
	.loc	1 975 38                        ; ragged.py:975:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v180, v0
	ds_store_b8_d16_hi v180, v0 offset:256
	ds_store_b8 v180, v98 offset:512
	ds_store_b8 v180, v99 offset:1024
	ds_store_b8_d16_hi v180, v99 offset:1280
	ds_store_b8_d16_hi v215, v98
	ds_store_b8 v180, v100 offset:1536
	ds_store_b8_d16_hi v188, v100
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 977 31                        ; ragged.py:977:31
	ds_load_u8 v220, v173 offset:1232
	ds_load_u8 v224, v173 offset:1168
	ds_load_u8 v74, v173 offset:1248
	ds_load_u8 v217, v173 offset:1184
	.loc	1 976 66                        ; ragged.py:976:66
	s_waitcnt vmcnt(0)
	v_and_b16 v101.l, v102.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	v_cndmask_b16 v206.h, v102.l, v101.l, s3
	.loc	1 977 31 is_stmt 1              ; ragged.py:977:31
	ds_load_u8 v139, v173 offset:192
	ds_load_u8 v140, v173 offset:128
	ds_load_u8 v141, v173 offset:208
	ds_load_u8 v142, v173 offset:144
	ds_load_u8 v143, v173 offset:224
	ds_load_u8 v144, v173 offset:160
	ds_load_u8 v137, v173 offset:240
	ds_load_u8 v138, v173 offset:176
	ds_load_u8 v145, v173 offset:448
	ds_load_u8 v146, v173 offset:384
	ds_load_u8 v147, v173 offset:464
	ds_load_u8 v148, v173 offset:400
	ds_load_u8 v149, v173 offset:480
	ds_load_u8 v150, v173 offset:416
	ds_load_u8 v151, v173 offset:496
	ds_load_u8 v152, v173 offset:432
	ds_load_u8 v153, v173 offset:320
	ds_load_u8 v154, v173 offset:256
	ds_load_u8 v155, v173 offset:336
	ds_load_u8 v156, v173 offset:272
	ds_load_u8 v157, v173 offset:352
	ds_load_u8 v158, v173 offset:288
	ds_load_u8 v159, v173 offset:368
	ds_load_u8 v160, v173 offset:304
	ds_load_u8 v161, v173 offset:64
	ds_load_u8 v162, v173 offset:80
	ds_load_u8 v163, v173 offset:96
	ds_load_u8 v65, v173 offset:112
	ds_load_u8 v166, v173
	ds_load_u8 v167, v173 offset:16
	ds_load_u8 v67, v173 offset:32
	ds_load_u8 v69, v173 offset:48
	ds_load_u8 v238, v173 offset:960
	ds_load_u8 v239, v173 offset:896
	ds_load_u8 v207, v173 offset:1024
	ds_load_u8 v231, v173 offset:976
	ds_load_u8 v233, v173 offset:912
	ds_load_u8 v73, v173 offset:992
	ds_load_u8 v225, v173 offset:928
	ds_load_u8 v214, v173 offset:944
	ds_load_u8 v100, v173 offset:832
	ds_load_u8 v101, v173 offset:768
	ds_load_u8 v136, v173 offset:848
	ds_load_u8 v176, v173 offset:784
	ds_load_u8 v244, v173 offset:864
	ds_load_u8 v248, v173 offset:800
	ds_load_u8 v228, v173 offset:880
	ds_load_u8 v232, v173 offset:816
	ds_load_u8 v114, v173 offset:704
	ds_load_u8 v118, v173 offset:640
	ds_load_u8 v104, v173 offset:720
	ds_load_u8 v107, v173 offset:656
	ds_load_u8 v178, v173 offset:736
	ds_load_u8 v190, v173 offset:672
	ds_load_u8 v255, v173 offset:752
	ds_load_u8 v103, v173 offset:688
	ds_load_u8 v132, v173 offset:576
	ds_load_u8 v133, v173 offset:512
	ds_load_u8 v126, v173 offset:592
	ds_load_u8 v129, v173 offset:528
	ds_load_u8 v120, v173 offset:608
	ds_load_u8 v123, v173 offset:544
	ds_load_u8 v113, v173 offset:624
	ds_load_u8 v117, v173 offset:560
	ds_load_u8 v229, v173 offset:1216
	ds_load_u8 v240, v173 offset:1280
	ds_load_u8 v212, v173 offset:1264
	ds_load_u8 v171, v173 offset:1200
	ds_load_u8 v253, v173 offset:1152
	ds_load_u8 v164, v173 offset:1088
	ds_load_u8 v242, v173 offset:1104
	ds_load_u8 v246, v173 offset:1040
	ds_load_u8 v234, v173 offset:1120
	ds_load_u8 v236, v173 offset:1056
	ds_load_u8 v226, v173 offset:1136
	ds_load_u8 v227, v173 offset:1072
	ds_load_u8 v115, v173 offset:1472
	ds_load_u8 v208, v173 offset:1536
	ds_load_u8 v105, v173 offset:1488
	ds_load_u8 v108, v173 offset:1424
	ds_load_u8 v179, v173 offset:1504
	ds_load_u8 v99, v173 offset:1440
	ds_load_u8 v250, v173 offset:1520
	ds_load_u8 v252, v173 offset:1456
	ds_load_u8 v131, v173 offset:1408
	ds_load_u8 v134, v173 offset:1344
	ds_load_u8 v127, v173 offset:1360
	ds_load_u8 v130, v173 offset:1296
	ds_load_u8 v121, v173 offset:1376
	ds_load_u8 v124, v173 offset:1312
	ds_load_u8 v110, v173 offset:1392
	ds_load_u8 v112, v173 offset:1328
	ds_load_u8 v230, v173 offset:1984
	ds_load_u8 v218, v173 offset:2000
	ds_load_u8 v221, v173 offset:1936
	ds_load_u8 v213, v173 offset:2016
	ds_load_u8 v216, v173 offset:1952
	ds_load_u8 v135, v219
	ds_load_u8 v209, v71
	ds_load_u8 v210, v173 offset:1968
	ds_load_u8 v254, v173 offset:1920
	ds_load_u8 v0, v173 offset:1856
	ds_load_u8 v243, v173 offset:1872
	ds_load_u8 v247, v173 offset:1808
	ds_load_u8 v235, v173 offset:1888
	ds_load_u8 v237, v173 offset:1824
	ds_load_u8 v72, v173 offset:1904
	ds_load_u8 v223, v173 offset:1840
	ds_load_u8 v102, v173 offset:1728
	ds_load_u8 v116, v173 offset:1792
	ds_load_u8 v177, v173 offset:1744
	ds_load_u8 v189, v173 offset:1680
	ds_load_u8 v249, v173 offset:1760
	ds_load_u8 v251, v173 offset:1696
	ds_load_u8 v241, v173 offset:1776
	ds_load_u8 v245, v173 offset:1712
	ds_load_u8 v125, v173 offset:1664
	ds_load_u8 v128, v173 offset:1600
	ds_load_u8 v119, v173 offset:1616
	ds_load_u8 v122, v173 offset:1552
	ds_load_u8 v109, v173 offset:1632
	ds_load_u8 v111, v173 offset:1568
	ds_load_u8 v98, v173 offset:1648
	ds_load_u8 v106, v173 offset:1584
	.loc	1 976 38                        ; ragged.py:976:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v168, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 977 31                        ; ragged.py:977:31
	v_perm_b32 v153, v154, v153, 0xc0c0004
	v_perm_b32 v145, v146, v145, 0xc0c0004
	v_perm_b32 v146, v166, v161, 0xc0c0004
	v_perm_b32 v139, v140, v139, 0xc0c0004
	v_perm_b32 v65, v69, v65, 0xc0c0004
	v_perm_b32 v69, v138, v137, 0xc0c0004
	v_lshl_or_b32 v140, v145, 16, v153
	v_perm_b32 v145, v156, v155, 0xc0c0004
	v_lshl_or_b32 v139, v139, 16, v146
	v_perm_b32 v146, v148, v147, 0xc0c0004
	.loc	1 976 66                        ; ragged.py:976:66
	v_and_b16 v138.l, v192.l, 15
	v_and_b16 v138.h, v191.l, 15
	.loc	1 977 31                        ; ragged.py:977:31
	v_perm_b32 v141, v142, v141, 0xc0c0004
	v_perm_b32 v67, v67, v163, 0xc0c0004
	v_lshl_or_b32 v142, v146, 16, v145
	v_perm_b32 v145, v158, v157, 0xc0c0004
	v_perm_b32 v146, v150, v149, 0xc0c0004
	v_perm_b32 v143, v144, v143, 0xc0c0004
	.loc	1 976 66                        ; ragged.py:976:66
	v_and_b16 v137.l, v194.l, 15
	v_and_b16 v137.h, v193.l, 15
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	v_cndmask_b16 v138.l, v192.l, v138.l, s3
	.loc	1 976 66                        ; ragged.py:976:66
	v_and_b16 v192.l, v196.l, 15
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v138.h, v191.l, v138.h, s3
	.loc	1 976 66                        ; ragged.py:976:66
	v_and_b16 v191.l, v198.l, 15
	.loc	1 977 31 is_stmt 1              ; ragged.py:977:31
	v_lshl_or_b32 v144, v146, 16, v145
	v_lshl_or_b32 v143, v143, 16, v67
	v_perm_b32 v67, v160, v159, 0xc0c0004
	v_perm_b32 v145, v152, v151, 0xc0c0004
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v137.l, v194.l, v137.l, s3
	v_cndmask_b16 v137.h, v193.l, v137.h, s3
	v_cndmask_b16 v192.l, v196.l, v192.l, s3
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	v_and_b16 v193.l, v202.l, 15
	v_and_b16 v194.l, v200.l, 15
	v_and_b16 v196.l, v204.l, 15
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v191.l, v198.l, v191.l, s3
	.loc	1 977 31 is_stmt 1              ; ragged.py:977:31
	v_lshl_or_b32 v146, v145, 16, v67
	v_lshl_or_b32 v145, v69, 16, v65
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v193.l, v202.l, v193.l, s3
	v_cndmask_b16 v194.l, v200.l, v194.l, s3
	v_cndmask_b16 v196.l, v204.l, v196.l, s3
	.loc	1 977 31                        ; ragged.py:977:31
	v_perm_b32 v69, v133, v132, 0xc0c0004
	v_perm_b32 v104, v107, v104, 0xc0c0004
	v_perm_b32 v67, v239, v238, 0xc0c0004
	v_perm_b32 v147, v167, v162, 0xc0c0004
	v_perm_b32 v0, v116, v0, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v141, v141, 16, v147
	.loc	1 976 38                        ; ragged.py:976:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v168, 0, v168
	ds_store_b8_d16_hi v168, v191
	ds_store_b8_d16_hi v168, v192 offset:512
	ds_store_b8_d16_hi v168, v193 offset:1024
	ds_store_b8_d16_hi v168, v194 offset:1536
	ds_store_b8_d16_hi v168, v195 offset:2048
	ds_store_b8_d16_hi v168, v196 offset:2560
	ds_store_b8_d16_hi v168, v197 offset:3072
	ds_store_b8_d16_hi v168, v198 offset:3584
	ds_store_b8_d16_hi v168, v199 offset:4096
	ds_store_b8_d16_hi v168, v200 offset:4608
	ds_store_b8_d16_hi v168, v201 offset:5120
	ds_store_b8_d16_hi v168, v202 offset:5632
	ds_store_b8_d16_hi v168, v203 offset:6144
	ds_store_b8_d16_hi v168, v204 offset:6656
	ds_store_b8_d16_hi v168, v205 offset:7168
	ds_store_b8_d16_hi v168, v206 offset:7680
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	v_and_b16 v192.h, v195.l, 15
	v_and_b16 v191.h, v197.l, 15
	v_and_b16 v193.h, v201.l, 15
	v_and_b16 v194.h, v199.l, 15
	v_and_b16 v195.h, v205.l, 15
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v192.h, v195.l, v192.h, s3
	.loc	1 976 66                        ; ragged.py:976:66
	v_and_b16 v195.l, v206.l, 15
	v_and_b16 v196.h, v203.l, 15
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v191.h, v197.l, v191.h, s3
	v_cndmask_b16 v193.h, v201.l, v193.h, s3
	v_cndmask_b16 v194.h, v199.l, v194.h, s3
	v_cndmask_b16 v195.l, v206.l, v195.l, s3
	v_cndmask_b16 v195.h, v205.l, v195.h, s3
	v_cndmask_b16 v196.h, v203.l, v196.h, s3
	ds_store_b8 v185, v137
	ds_store_b8_d16_hi v185, v137 offset:512
	ds_store_b8 v185, v138 offset:1024
	ds_store_b8_d16_hi v185, v138 offset:1536
	ds_store_b8 v185, v191 offset:2048
	ds_store_b8_d16_hi v185, v191 offset:2560
	ds_store_b8 v185, v192 offset:3072
	ds_store_b8_d16_hi v185, v192 offset:3584
	ds_store_b8 v185, v193 offset:4096
	ds_store_b8_d16_hi v185, v193 offset:4608
	ds_store_b8 v185, v194 offset:5120
	ds_store_b8_d16_hi v185, v194 offset:5632
	ds_store_b8 v185, v195 offset:6144
	ds_store_b8_d16_hi v185, v195 offset:6656
	ds_store_b8 v185, v196 offset:7168
	ds_store_b8_d16_hi v185, v196 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v65, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 987 21 is_stmt 1              ; ragged.py:987:21
	s_add_i32 s3, s63, 32
	.loc	1 957 23                        ; ragged.py:957:23
	s_cmp_lt_i32 s63, 32
	s_mov_b32 s63, s3
	.loc	1 976 38                        ; ragged.py:976:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v65, 0, v65
	ds_load_2addr_stride64_b64 v[191:194], v65 offset1:8
	.loc	1 977 31                        ; ragged.py:977:31
	v_perm_b32 v65, v101, v100, 0xc0c0004
	v_perm_b32 v100, v118, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v101, v67, 16, v65
	v_lshl_or_b32 v100, v100, 16, v69
	v_perm_b32 v69, v129, v126, 0xc0c0004
	v_perm_b32 v65, v176, v136, 0xc0c0004
	v_perm_b32 v67, v233, v231, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v132, v104, 16, v69
	v_perm_b32 v69, v123, v120, 0xc0c0004
	v_perm_b32 v104, v190, v178, 0xc0c0004
	v_lshl_or_b32 v133, v67, 16, v65
	v_perm_b32 v65, v248, v244, 0xc0c0004
	v_perm_b32 v67, v225, v73, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[191:192], v[139:140], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[193:194], v[139:140], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v139, v104, 16, v69
	v_perm_b32 v104, v214, v135, 0xc0c0004
	.loc	1 976 38                        ; ragged.py:976:38
	ds_load_2addr_stride64_b64 v[135:138], v222 offset1:8
	.loc	1 977 31                        ; ragged.py:977:31
	v_lshl_or_b32 v140, v67, 16, v65
	v_perm_b32 v65, v117, v113, 0xc0c0004
	v_perm_b32 v67, v103, v255, 0xc0c0004
	v_perm_b32 v69, v232, v228, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[49:56], v[191:192], v[145:146], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[193:194], v[145:146], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[191:192], v[141:142], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v103, v67, 16, v65
	v_perm_b32 v65, v240, v134, 0xc0c0004
	v_perm_b32 v67, v131, v115, 0xc0c0004
	v_lshl_or_b32 v104, v104, 16, v69
	v_perm_b32 v69, v207, v164, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[193:194], v[141:142], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[191:192], v[143:144], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[193:194], v[143:144], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[135:136], v[100:101], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[137:138], v[100:101], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v100, v253, v229, 0xc0c0004
	v_lshl_or_b32 v101, v67, 16, v65
	v_perm_b32 v65, v130, v127, 0xc0c0004
	v_perm_b32 v67, v108, v105, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[49:56], v[135:136], v[103:104], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[137:138], v[103:104], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v100, v100, 16, v69
	v_perm_b32 v69, v246, v242, 0xc0c0004
	v_perm_b32 v103, v224, v220, 0xc0c0004
	v_lshl_or_b32 v104, v67, 16, v65
	v_perm_b32 v65, v124, v121, 0xc0c0004
	v_perm_b32 v67, v99, v179, 0xc0c0004
	v_perm_b32 v99, v217, v74, 0xc0c0004
	v_lshl_or_b32 v103, v103, 16, v69
	v_perm_b32 v69, v236, v234, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[135:136], v[132:133], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v108, v67, 16, v65
	v_perm_b32 v65, v112, v110, 0xc0c0004
	.loc	1 976 38                        ; ragged.py:976:38
	ds_load_2addr_stride64_b64 v[112:115], v68 offset1:8
	.loc	1 977 31                        ; ragged.py:977:31
	v_lshl_or_b32 v107, v99, 16, v69
	v_perm_b32 v67, v252, v250, 0xc0c0004
	v_perm_b32 v69, v227, v226, 0xc0c0004
	v_perm_b32 v99, v171, v212, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[137:138], v[132:133], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[135:136], v[139:140], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v118, v67, 16, v65
	v_perm_b32 v67, v208, v128, 0xc0c0004
	v_lshl_or_b32 v117, v99, 16, v69
	v_perm_b32 v69, v125, v102, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[137:138], v[139:140], v[41:48] neg_lo:[1,1,0]
	v_perm_b32 v65, v254, v230, 0xc0c0004
	v_mov_b32_e32 v226, v78
	v_mov_b32_e32 v78, v84
	v_lshl_or_b32 v102, v69, 16, v67
	v_perm_b32 v67, v122, v119, 0xc0c0004
	v_perm_b32 v69, v189, v177, 0xc0c0004
	v_mov_b32_e32 v230, v80
	v_mov_b32_e32 v80, v83
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[112:113], v[103:104], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[114:115], v[103:104], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v104, v69, 16, v67
	v_perm_b32 v67, v111, v109, 0xc0c0004
	v_perm_b32 v69, v251, v249, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[112:113], v[107:108], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[114:115], v[107:108], v[41:48] neg_lo:[1,1,0]
	v_dual_mov_b32 v83, v90 :: v_dual_mov_b32 v84, v87
	v_dual_mov_b32 v87, v94 :: v_dual_mov_b32 v90, v93
	scratch_load_b64 v[93:94], off, off offset:24 ; 8-byte Folded Reload
	v_lshl_or_b32 v107, v69, 16, v67
	v_perm_b32 v67, v223, v72, 0xc0c0004
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[223:224], off, off offset:8
	scratch_load_b64 v[224:225], off, off offset:16
	scratch_load_b64 v[72:73], off, off
	v_lshl_or_b32 v103, v65, 16, v0
	v_perm_b32 v0, v247, v243, 0xc0c0004
	v_perm_b32 v65, v221, v218, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[112:113], v[100:101], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[114:115], v[100:101], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v69, v210, v209, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[49:56], v[112:113], v[117:118], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v105, v65, 16, v0
	v_perm_b32 v0, v237, v235, 0xc0c0004
	v_perm_b32 v65, v216, v213, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[114:115], v[117:118], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v110, v69, 16, v67
	v_dual_mov_b32 v217, v75 :: v_dual_mov_b32 v220, v77
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v108, v65, 16, v0
	v_perm_b32 v0, v106, v98, 0xc0c0004
	.loc	1 976 38                        ; ragged.py:976:38
	ds_load_2addr_stride64_b64 v[98:101], v70 offset1:8
	.loc	1 977 31                        ; ragged.py:977:31
	v_perm_b32 v65, v245, v241, 0xc0c0004
	v_mov_b32_e32 v216, v79
	v_dual_mov_b32 v74, v82 :: v_dual_mov_b32 v75, v81
	v_mov_b32_e32 v79, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v109, v65, 16, v0
	v_dual_mov_b32 v81, v88 :: v_dual_mov_b32 v82, v85
	v_dual_mov_b32 v85, v92 :: v_dual_mov_b32 v86, v89
	v_dual_mov_b32 v88, v91 :: v_dual_mov_b32 v89, v96
	v_dual_mov_b32 v91, v186 :: v_dual_mov_b32 v92, v95
	s_waitcnt vmcnt(3)
	v_dual_mov_b32 v94, v97 :: v_dual_mov_b32 v95, v187
	v_dual_mov_b32 v212, v181 :: v_dual_mov_b32 v181, v175
	v_mov_b32_e32 v175, v183
	v_dual_mov_b32 v171, v174 :: v_dual_mov_b32 v174, v172
	v_mov_b32_e32 v172, v182
	v_mov_b32_e32 v182, v184
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[98:99], v[102:103], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[100:101], v[102:103], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[98:99], v[104:105], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[100:101], v[104:105], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[98:99], v[107:108], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[100:101], v[107:108], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[98:99], v[109:110], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[100:101], v[109:110], v[57:64] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v96, v72
	.loc	1 957 23                        ; ragged.py:957:23
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	s_clause 0x1f                           ; 128-byte Folded Reload
	scratch_load_b32 v129, off, off offset:40
	scratch_load_b32 v130, off, off offset:44
	scratch_load_b32 v131, off, off offset:48
	scratch_load_b32 v132, off, off offset:52
	scratch_load_b32 v133, off, off offset:56
	scratch_load_b32 v134, off, off offset:60
	scratch_load_b32 v135, off, off offset:64
	scratch_load_b32 v136, off, off offset:68
	scratch_load_b32 v137, off, off offset:72
	scratch_load_b32 v138, off, off offset:76
	scratch_load_b32 v139, off, off offset:80
	scratch_load_b32 v140, off, off offset:84
	scratch_load_b32 v141, off, off offset:88
	scratch_load_b32 v142, off, off offset:92
	scratch_load_b32 v143, off, off offset:96
	scratch_load_b32 v144, off, off offset:100
	scratch_load_b32 v145, off, off offset:104
	scratch_load_b32 v146, off, off offset:108
	scratch_load_b32 v147, off, off offset:112
	scratch_load_b32 v148, off, off offset:116
	scratch_load_b32 v149, off, off offset:120
	scratch_load_b32 v150, off, off offset:124
	scratch_load_b32 v151, off, off offset:128
	scratch_load_b32 v152, off, off offset:132
	scratch_load_b32 v153, off, off offset:136
	scratch_load_b32 v154, off, off offset:140
	scratch_load_b32 v155, off, off offset:144
	scratch_load_b32 v156, off, off offset:148
	scratch_load_b32 v157, off, off offset:152
	scratch_load_b32 v158, off, off offset:156
	scratch_load_b32 v159, off, off offset:160
	scratch_load_b32 v160, off, off offset:164
	s_clause 0x1f                           ; 128-byte Folded Reload
	scratch_load_b32 v161, off, off offset:168
	scratch_load_b32 v162, off, off offset:172
	scratch_load_b32 v163, off, off offset:176
	scratch_load_b32 v164, off, off offset:180
	scratch_load_b32 v166, off, off offset:184
	scratch_load_b32 v167, off, off offset:188
	scratch_load_b32 v168, off, off offset:192
	scratch_load_b32 v176, off, off offset:196
	scratch_load_b32 v177, off, off offset:200
	scratch_load_b32 v178, off, off offset:204
	scratch_load_b32 v179, off, off offset:208
	scratch_load_b32 v189, off, off offset:212
	scratch_load_b32 v190, off, off offset:216
	scratch_load_b32 v191, off, off offset:220
	scratch_load_b32 v192, off, off offset:224
	scratch_load_b32 v193, off, off offset:228
	scratch_load_b32 v194, off, off offset:232
	scratch_load_b32 v195, off, off offset:236
	scratch_load_b32 v196, off, off offset:240
	scratch_load_b32 v197, off, off offset:244
	scratch_load_b32 v198, off, off offset:248
	scratch_load_b32 v199, off, off offset:252
	scratch_load_b32 v200, off, off offset:256
	scratch_load_b32 v201, off, off offset:260
	scratch_load_b32 v202, off, off offset:264
	scratch_load_b32 v203, off, off offset:268
	scratch_load_b32 v204, off, off offset:272
	scratch_load_b32 v205, off, off offset:276
	scratch_load_b32 v206, off, off offset:280
	scratch_load_b32 v207, off, off offset:284
	scratch_load_b32 v208, off, off offset:288
	scratch_load_b32 v209, off, off offset:292
	s_clause 0x8                            ; 36-byte Folded Reload
	scratch_load_b32 v210, off, off offset:296
	scratch_load_b32 v186, off, off offset:32
	scratch_load_b32 v187, off, off offset:36
	scratch_load_b32 v183, off, off offset:300
	scratch_load_b32 v184, off, off offset:304
	scratch_load_b32 v213, off, off offset:308
	scratch_load_b32 v214, off, off offset:312
	scratch_load_b32 v72, off, off offset:316
	scratch_load_b32 v73, off, off offset:320
	.loc	1 988 27 is_stmt 1              ; ragged.py:988:27
	v_cvt_f32_i32_e32 v128, v1
	v_cvt_f32_i32_e32 v127, v2
	v_cvt_f32_i32_e32 v126, v3
	v_cvt_f32_i32_e32 v125, v4
	v_cvt_f32_i32_e32 v124, v5
	v_cvt_f32_i32_e32 v123, v6
	v_cvt_f32_i32_e32 v122, v7
	v_cvt_f32_i32_e32 v121, v8
	v_cvt_f32_i32_e32 v120, v9
	v_cvt_f32_i32_e32 v119, v10
	v_cvt_f32_i32_e32 v118, v11
	v_cvt_f32_i32_e32 v117, v12
	v_cvt_f32_i32_e32 v116, v13
	v_cvt_f32_i32_e32 v115, v14
	v_cvt_f32_i32_e32 v114, v15
	v_cvt_f32_i32_e32 v113, v16
	v_cvt_f32_i32_e32 v112, v17
	v_cvt_f32_i32_e32 v111, v18
	v_cvt_f32_i32_e32 v110, v19
	v_cvt_f32_i32_e32 v109, v20
	v_cvt_f32_i32_e32 v108, v21
	v_cvt_f32_i32_e32 v107, v22
	v_cvt_f32_i32_e32 v106, v23
	v_cvt_f32_i32_e32 v105, v24
	v_cvt_f32_i32_e32 v104, v25
	v_cvt_f32_i32_e32 v103, v26
	v_cvt_f32_i32_e32 v102, v27
	v_cvt_f32_i32_e32 v101, v28
	v_cvt_f32_i32_e32 v100, v29
	v_cvt_f32_i32_e32 v99, v30
	v_cvt_f32_i32_e32 v98, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v31, v33
	v_cvt_f32_i32_e32 v30, v34
	v_cvt_f32_i32_e32 v29, v35
	v_cvt_f32_i32_e32 v28, v36
	v_cvt_f32_i32_e32 v27, v37
	v_cvt_f32_i32_e32 v26, v38
	v_cvt_f32_i32_e32 v25, v39
	v_cvt_f32_i32_e32 v24, v40
	v_cvt_f32_i32_e32 v23, v41
	v_cvt_f32_i32_e32 v22, v42
	v_cvt_f32_i32_e32 v21, v43
	v_cvt_f32_i32_e32 v20, v44
	v_cvt_f32_i32_e32 v19, v45
	v_cvt_f32_i32_e32 v18, v46
	v_cvt_f32_i32_e32 v17, v47
	v_cvt_f32_i32_e32 v16, v48
	v_cvt_f32_i32_e32 v15, v49
	v_cvt_f32_i32_e32 v14, v50
	v_cvt_f32_i32_e32 v13, v51
	v_cvt_f32_i32_e32 v12, v52
	v_cvt_f32_i32_e32 v11, v53
	v_cvt_f32_i32_e32 v10, v54
	v_cvt_f32_i32_e32 v9, v55
	v_cvt_f32_i32_e32 v8, v56
	v_cvt_f32_i32_e32 v7, v57
	v_cvt_f32_i32_e32 v6, v58
	v_cvt_f32_i32_e32 v5, v59
	v_cvt_f32_i32_e32 v4, v60
	v_cvt_f32_i32_e32 v3, v61
	v_cvt_f32_i32_e32 v2, v62
	v_cvt_f32_i32_e32 v1, v63
	v_cvt_f32_i32_e32 v0, v64
	s_branch .LBB0_5
.LBB0_10:                               ; %Flow349
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:324
	scratch_load_b32 v37, off, off offset:328
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v35, 15, v0
.LBB0_11:                               ; %._crit_edge80
	.loc	1 889 36 is_stmt 1              ; ragged.py:889:36
	v_lshrrev_b32_e32 v0, 4, v0
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v1, 1, v37
	.loc	1 1009 22                       ; ragged.py:1009:22
	s_mul_i32 s3, s58, s81
	.loc	1 1009 13 is_stmt 0             ; ragged.py:1009:13
	s_waitcnt lgkmcnt(0)
	s_and_b32 s65, s65, 0xffff
	s_mov_b32 s67, 0x31027000
	.loc	1 889 36 is_stmt 1              ; ragged.py:889:36
	v_and_or_b32 v3, v0, 1, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v4, 0x8e, v3
	v_or_b32_e32 v7, 0x88, v3
	v_or_b32_e32 v8, 0x86, v3
	v_or_b32_e32 v6, 0x8a, v3
	v_or_b32_e32 v5, 0x8c, v3
	v_or_b32_e32 v9, 0x84, v3
	v_or_b32_e32 v10, 0x82, v3
	.loc	1 889 18 is_stmt 0              ; ragged.py:889:18
	v_or_b32_e32 v0, s66, v4
	v_or_b32_e32 v11, s66, v7
	v_or_b32_e32 v12, s66, v8
	v_or_b32_e32 v2, s66, v6
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v14, 12, v3
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v1, s66, v5
	v_or_b32_e32 v13, s66, v9
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e32 vcc_lo, s81, v0
	v_cmp_gt_i32_e64 s6, s81, v11
	v_cmp_gt_i32_e64 s7, s81, v12
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v0, s66, v10
	.loc	1 889 36 is_stmt 0              ; ragged.py:889:36
	v_or_b32_e32 v11, 0x80, v3
	v_or_b32_e32 v12, 14, v3
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e64 s1, s81, v2
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v2, s66, v14
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s0, s81, v1
	v_cmp_gt_i32_e64 s8, s81, v13
	v_cmp_gt_i32_e64 s9, s81, v0
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v0, s66, v11
	v_or_b32_e32 v1, s66, v12
	.loc	1 889 36 is_stmt 0              ; ragged.py:889:36
	v_or_b32_e32 v13, 10, v3
	v_or_b32_e32 v15, 8, v3
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e64 s12, s81, v2
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_mul_lo_u32 v2, s81, v35
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s10, s81, v0
	v_cmp_gt_i32_e64 s11, s81, v1
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v0, s66, v13
	v_or_b32_e32 v1, s66, v15
	.loc	1 889 36 is_stmt 0              ; ragged.py:889:36
	v_or_b32_e32 v16, 6, v3
	v_or_b32_e32 v18, 2, v3
	v_or_b32_e32 v17, 4, v3
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v21, s66, v3
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e64 s13, s81, v0
	v_cmp_gt_i32_e64 s14, s81, v1
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v1, s66, v16
	v_or_b32_e32 v20, s66, v18
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_add3_u32 v0, s3, s66, v2
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v19, s66, v17
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s17, s81, v21
	v_cmp_gt_i32_e64 s3, s81, v1
	v_cmp_gt_i32_e64 s16, s81, v20
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v1, v0, v3, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s15, s81, v19
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v0, v18, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s18, s5, s17
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v21, v0, v17, 2
	v_cndmask_b32_e64 v22, 0x80000000, v1, s18
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s18, s5, s16
	s_mov_b32 s66, 0x7ffffffe
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v23, 0x80000000, v2, s18
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s18, s5, s15
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_mad_u64_u32 v[1:2], null, s81, 48, v[0:1]
	.loc	1 1009 13 is_stmt 0             ; ragged.py:1009:13
	v_cndmask_b32_e64 v21, 0x80000000, v21, s18
	v_add_lshl_u32 v2, v0, v16, 2
	s_clause 0x2
	buffer_store_b32 v209, v22, s[64:67], 0 offen
	buffer_store_b32 v208, v23, s[64:67], 0 offen
	buffer_store_b32 v207, v21, s[64:67], 0 offen
	v_add_lshl_u32 v21, v0, v15, 2
	.loc	1 1007 20 is_stmt 1             ; ragged.py:1007:20
	s_and_b32 s18, s5, s3
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v22, v0, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s18
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s18, s5, s14
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v23, v0, v14, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s18
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s18, s5, s13
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v206, v2, s[64:67], 0 offen
	buffer_store_b32 v205, v21, s[64:67], 0 offen
	v_add_lshl_u32 v2, v0, v12, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s18
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s18, s5, s12
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v21, v0, v11, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s18
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s18, s5, s11
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v204, v22, s[64:67], 0 offen
	buffer_store_b32 v203, v23, s[64:67], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s18
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s18, s5, s10
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v22, v0, v10, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s18
	v_add_lshl_u32 v23, v0, v9, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s18, s5, s9
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v202, v2, s[64:67], 0 offen
	buffer_store_b32 v201, v21, s[64:67], 0 offen
	v_add_lshl_u32 v2, v0, v8, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s18
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s18, s5, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v21, v0, v7, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s18
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s18, s5, s7
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_lshl_add_u32 v19, s81, 4, v0
	.loc	1 1009 13 is_stmt 0             ; ragged.py:1009:13
	v_cndmask_b32_e64 v2, 0x80000000, v2, s18
	.loc	1 1007 20 is_stmt 1             ; ragged.py:1007:20
	s_and_b32 s18, s5, s6
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v200, v22, s[64:67], 0 offen
	buffer_store_b32 v199, v23, s[64:67], 0 offen
	v_add_lshl_u32 v22, v0, v6, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s18
	.loc	1 1009 22 is_stmt 0             ; ragged.py:1009:22
	v_lshl_add_u32 v20, s81, 5, v0
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v23, v0, v5, 2
	v_add_lshl_u32 v0, v0, v4, 2
	.loc	1 1007 20 is_stmt 1             ; ragged.py:1007:20
	s_and_b32 s18, s5, s1
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v198, v2, s[64:67], 0 offen
	buffer_store_b32 v197, v21, s[64:67], 0 offen
	v_add_lshl_u32 v2, v19, v3, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s18
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s18, s5, s0
	s_and_b32 s5, s5, vcc_lo
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v23, 0x80000000, v23, s18
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s5, s4, s17
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v21, v19, v18, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	s_clause 0x1
	buffer_store_b32 v196, v22, s[64:67], 0 offen
	buffer_store_b32 v195, v23, s[64:67], 0 offen
	v_add_lshl_u32 v22, v19, v17, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s5, s4, s16
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v194, v0, s[64:67], 0 offen
	buffer_store_b32 v193, v2, s[64:67], 0 offen
	v_add_lshl_u32 v0, v19, v16, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s5, s4, s15
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v19, v15, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s5, s4, s3
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v192, v21, s[64:67], 0 offen
	buffer_store_b32 v191, v22, s[64:67], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s5, s4, s14
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v21, v19, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	v_add_lshl_u32 v22, v19, v14, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s5, s4, s13
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v190, v0, s[64:67], 0 offen
	buffer_store_b32 v189, v2, s[64:67], 0 offen
	v_add_lshl_u32 v0, v19, v12, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s5, s4, s12
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v19, v11, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s5, s4, s11
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v179, v21, s[64:67], 0 offen
	buffer_store_b32 v178, v22, s[64:67], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s5, s4, s10
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v21, v19, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	v_add_lshl_u32 v22, v19, v9, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s5, s4, s9
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v177, v0, s[64:67], 0 offen
	buffer_store_b32 v176, v2, s[64:67], 0 offen
	v_add_lshl_u32 v0, v19, v8, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s5, s4, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v19, v7, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s5, s4, s7
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v168, v21, s[64:67], 0 offen
	buffer_store_b32 v167, v22, s[64:67], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s5, s4, s6
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v21, v19, v6, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	v_add_lshl_u32 v22, v19, v5, 2
	s_clause 0x1
	buffer_store_b32 v166, v0, s[64:67], 0 offen
	buffer_store_b32 v164, v2, s[64:67], 0 offen
	v_add_lshl_u32 v0, v19, v4, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s5, s4, s1
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v20, v3, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s5, s4, s0
	s_and_b32 s4, s4, vcc_lo
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s48, s17
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v19, v20, v18, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	s_clause 0x1
	buffer_store_b32 v163, v21, s[64:67], 0 offen
	buffer_store_b32 v162, v22, s[64:67], 0 offen
	v_add_lshl_u32 v21, v20, v17, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s48, s16
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v161, v0, s[64:67], 0 offen
	buffer_store_b32 v160, v2, s[64:67], 0 offen
	v_add_lshl_u32 v0, v20, v16, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s48, s15
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v20, v15, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s48, s3
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v159, v19, s[64:67], 0 offen
	buffer_store_b32 v158, v21, s[64:67], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s48, s14
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v19, v20, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_add_lshl_u32 v21, v20, v14, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s48, s13
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v157, v0, s[64:67], 0 offen
	buffer_store_b32 v156, v2, s[64:67], 0 offen
	v_add_lshl_u32 v0, v20, v12, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s48, s12
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v20, v11, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s48, s11
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v155, v19, s[64:67], 0 offen
	buffer_store_b32 v154, v21, s[64:67], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s48, s10
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v19, v20, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_add_lshl_u32 v21, v20, v9, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s48, s9
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v153, v0, s[64:67], 0 offen
	buffer_store_b32 v152, v2, s[64:67], 0 offen
	v_add_lshl_u32 v0, v20, v8, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s48, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v20, v7, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s48, s7
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v151, v19, s[64:67], 0 offen
	buffer_store_b32 v150, v21, s[64:67], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s48, s6
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v19, v20, v6, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_add_lshl_u32 v21, v20, v5, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s48, s1
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v149, v0, s[64:67], 0 offen
	buffer_store_b32 v148, v2, s[64:67], 0 offen
	v_add_lshl_u32 v0, v20, v4, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s48, s0
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v1, v3, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s48, vcc_lo
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v3, v1, v18, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s2, s17
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v17, v1, v17, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s2, s16
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v147, v19, s[64:67], 0 offen
	buffer_store_b32 v146, v21, s[64:67], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s2, s15
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v145, v0, s[64:67], 0 offen
	buffer_store_b32 v144, v2, s[64:67], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v17, s4
	v_add_lshl_u32 v0, v1, v16, 2
	v_add_lshl_u32 v2, v1, v15, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s3
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v143, v3, s[64:67], 0 offen
	buffer_store_b32 v142, v17, s[64:67], 0 offen
	v_add_lshl_u32 v3, v1, v13, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s14
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v13, v1, v14, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s13
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v141, v0, s[64:67], 0 offen
	buffer_store_b32 v140, v2, s[64:67], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s12
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v0, v1, v12, 2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	v_add_lshl_u32 v2, v1, v11, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s11
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v139, v3, s[64:67], 0 offen
	buffer_store_b32 v138, v13, s[64:67], 0 offen
	v_add_lshl_u32 v3, v1, v10, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s10
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v9, v1, v9, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s9
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v136, v0, s[64:67], 0 offen
	buffer_store_b32 v135, v2, s[64:67], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v0, v1, v8, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_add_lshl_u32 v2, v1, v7, 2
	s_clause 0x1
	buffer_store_b32 v133, v3, s[64:67], 0 offen
	buffer_store_b32 v132, v9, s[64:67], 0 offen
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s7
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v3, v1, v6, 2
	v_add_lshl_u32 v5, v1, v5, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s6
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v1, v1, v4, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s2, s1
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, s2, s0
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v4, 0x80000000, v5, s0
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b32 v130, v0, s[64:67], 0 offen
	buffer_store_b32 v129, v2, s[64:67], 0 offen
	buffer_store_b32 v137, v3, s[64:67], 0 offen
	buffer_store_b32 v134, v4, s[64:67], 0 offen
	buffer_store_b32 v131, v1, s[64:67], 0 offen
	.loc	1 856 5                         ; ragged.py:856:5
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 336
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 93
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 93
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 336
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13032
; TotalNumSgprs: 95
; NumVgprs: 256
; ScratchSize: 336
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 95
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.short	880                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	881                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 336
    .sgpr_count:     95
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 83
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
