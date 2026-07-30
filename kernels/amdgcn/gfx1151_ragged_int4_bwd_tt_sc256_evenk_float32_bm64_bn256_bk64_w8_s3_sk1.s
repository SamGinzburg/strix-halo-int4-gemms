	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 856 0                         ; ragged.py:856:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[60:61], s[0:1], 0x30
.Ltmp0:
	.loc	1 883 20 prologue_end           ; ragged.py:883:20
	s_abs_i32 s9, s2
	.loc	1 888 36                        ; ragged.py:888:36
	v_and_b32_e32 v35, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:880:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s60, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:881:21 ]
	s_add_i32 s5, s61, 0xff
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
	s_sub_i32 s52, s5, s8
	.loc	1 885 17                        ; ragged.py:885:17
	s_sub_i32 s5, 0, s7
	.loc	1 884 22                        ; ragged.py:884:22
	s_mul_i32 s4, s52, s4
	.loc	1 885 17                        ; ragged.py:885:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 884 16                        ; ragged.py:884:16
	s_sub_i32 s2, s2, s4
	.loc	1 991 37                        ; ragged.py:991:37
	s_mul_i32 s56, s52, s60
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
	s_ashr_i32 s53, s52, 31
	.loc	1 885 17                        ; ragged.py:885:17
	s_xor_b32 s7, s7, s10
	.loc	1 892 19                        ; ragged.py:892:19
	s_lshl_b64 s[8:9], s[52:53], 2
	.loc	1 885 17                        ; ragged.py:885:17
	s_sub_i32 s7, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 886 24                        ; ragged.py:886:24
	s_mul_i32 s6, s7, s6
	.loc	1 888 18                        ; ragged.py:888:18
	s_lshl_b32 s64, s7, 6
	.loc	1 886 17                        ; ragged.py:886:17
	s_sub_i32 s6, s2, s6
	.loc	1 892 19                        ; ragged.py:892:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s8
	s_addc_u32 s5, s5, s9
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v4, s64, v35
	.loc	1 892 19                        ; ragged.py:892:19
	s_load_b32 s53, s[4:5], 0x0
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v1, 16, v4
	v_or_b32_e32 v2, 32, v4
	v_or_b32_e32 v3, 48, v4
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e64 s5, s60, v4
	v_cmp_gt_i32_e64 s4, s60, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s39, s60, v2
	v_cmp_gt_i32_e64 s2, s60, v3
	.loc	1 893 27                        ; ragged.py:893:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s53, s53, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 953 19                        ; ragged.py:953:19
	s_cmp_gt_i32 s53, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge80_crit_edge
	.loc	1 1009 22                       ; ragged.py:1009:22
	s_add_i32 s63, s64, s56
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; ragged.py:0:22
	s_mov_b32 s7, -1
                                        ; implicit-def: $sgpr63
.LBB0_3:                                ; %Flow350
	s_load_b64 s[48:49], s[0:1], 0x28
	v_dual_mov_b32 v114, 0 :: v_dual_and_b32 v37, 0xe0, v0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v179, 0
	v_mov_b32_e32 v180, 0
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_lshl_b32 s62, s6, 8
	s_cbranch_vccnz .LBB0_11
; %bb.4:                                ; %.preheader.lr.ph
	.loc	1 889 36 is_stmt 1              ; ragged.py:889:36
	v_lshrrev_b32_e32 v2, 5, v37
	s_clause 0x1
	s_load_b256 s[40:47], s[0:1], 0x0
	s_load_b64 s[50:51], s[0:1], 0x38
	v_dual_mov_b32 v179, 0 :: v_dual_and_b32 v36, 63, v0
	.loc	1 956 23                        ; ragged.py:956:23
	s_lshl_b32 s3, s3, 5
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v1, s62, v2
	.loc	1 893 26                        ; ragged.py:893:26
	s_lshr_b32 s58, s53, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v3, s64, v36
	s_cmpk_lt_i32 s3, 0x80
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v182, s62, v0
	v_or_b32_e32 v4, 8, v1
	v_or_b32_e32 v5, 16, v1
	v_or_b32_e32 v6, 24, v1
	v_or_b32_e32 v7, 32, v1
	v_or_b32_e32 v8, 40, v1
	v_or_b32_e32 v9, 48, v1
	v_or_b32_e32 v10, 56, v1
	v_or_b32_e32 v11, 64, v1
	v_or_b32_e32 v12, 0x48, v1
	v_or_b32_e32 v13, 0x50, v1
	v_or_b32_e32 v14, 0x58, v1
	v_or_b32_e32 v15, 0x60, v1
	v_or_b32_e32 v16, 0x68, v1
	v_or_b32_e32 v17, 0x70, v1
	v_or_b32_e32 v18, 0x78, v1
	v_or_b32_e32 v19, 0x80, v1
	v_or_b32_e32 v20, 0x88, v1
	v_or_b32_e32 v21, 0x90, v1
	v_or_b32_e32 v22, 0x98, v1
	v_or_b32_e32 v23, 0xa0, v1
	v_or_b32_e32 v24, 0xa8, v1
	v_or_b32_e32 v25, 0xb0, v1
	v_or_b32_e32 v26, 0xb8, v1
	v_or_b32_e32 v27, 0xc0, v1
	v_or_b32_e32 v28, 0xc8, v1
	v_or_b32_e32 v29, 0xd0, v1
	v_or_b32_e32 v30, 0xd8, v1
	v_or_b32_e32 v31, 0xe0, v1
	v_or_b32_e32 v32, 0xe8, v1
	v_or_b32_e32 v33, 0xf0, v1
	v_or_b32_e32 v34, 0xf8, v1
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s1, s61, v1
	.loc	1 951 28                        ; ragged.py:951:28
	v_lshrrev_b32_e32 v1, 6, v0
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s6, s61, v4
	v_cmp_gt_i32_e64 s7, s61, v5
	v_bfe_i32 v5, v0, 7, 1
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e64 s0, s60, v3
	.loc	1 951 28                        ; ragged.py:951:28
	v_or_b32_e32 v4, 12, v1
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s11, s61, v9
	v_mad_u64_u32 v[65:66], null, s60, v1, v[36:37]
	.loc	1 951 28                        ; ragged.py:951:28
	v_or_b32_e32 v3, 28, v1
	v_dual_mov_b32 v180, 0 :: v_dual_and_b32 v1, 31, v0
	v_mad_u64_u32 v[183:184], null, s60, v4, v[36:37]
	v_dual_mov_b32 v177, 0 :: v_dual_and_b32 v4, 0x7f, v0
	v_dual_mov_b32 v170, 0 :: v_dual_and_b32 v9, 0x88, v5
	s_cselect_b32 s67, -1, 0
	s_add_i32 s63, s64, s56
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[184:185], null, s50, v2, v[1:2]
	v_mad_u64_u32 v[79:80], null, s60, v3, v[36:37]
	v_dual_mov_b32 v178, 0 :: v_dual_lshlrev_b32 v3, 1, v0
	v_xor_b32_e32 v78, v9, v4
	v_dual_mov_b32 v167, 0 :: v_dual_add_nc_u32 v4, s63, v35
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s8, s61, v6
	v_cmp_gt_i32_e64 s9, s61, v7
	v_cmp_gt_i32_e64 s12, s61, v10
	v_cmp_gt_i32_e64 s13, s61, v11
	v_cmp_gt_i32_e64 s14, s61, v12
	v_cmp_gt_i32_e64 s15, s61, v13
	v_dual_mov_b32 v168, 0 :: v_dual_lshlrev_b32 v5, 5, v35
	v_dual_mov_b32 v171, 0 :: v_dual_lshlrev_b32 v6, 4, v37
	v_dual_mov_b32 v166, 0 :: v_dual_and_b32 v7, 24, v3
	v_dual_mov_b32 v165, 0 :: v_dual_add_nc_u32 v10, 16, v4
	v_dual_mov_b32 v162, 0 :: v_dual_add_nc_u32 v11, 32, v4
	v_dual_mov_b32 v161, 0 :: v_dual_and_b32 v12, 0xf0, v0
	v_dual_mov_b32 v160, 0 :: v_dual_lshlrev_b32 v13, 5, v0
	v_mad_u64_u32 v[86:87], null, s60, 24, v[65:66]
	v_mad_u64_u32 v[87:88], null, s50, 24, v[184:185]
	v_mad_u64_u32 v[88:89], null, s50, 40, v[184:185]
	v_or3_b32 v210, v5, v7, v6
	v_mul_lo_u32 v76, v4, s51
	v_dual_mov_b32 v159, 0 :: v_dual_add_nc_u32 v4, 48, v4
	v_mul_lo_u32 v77, v10, s51
	v_mul_lo_u32 v208, v11, s51
	v_dual_mov_b32 v157, 0 :: v_dual_lshlrev_b32 v10, 2, v12
	v_dual_mov_b32 v158, 0 :: v_dual_and_b32 v11, 32, v13
	v_mad_u64_u32 v[89:90], null, s50, 48, v[184:185]
	v_mad_u64_u32 v[226:227], null, 0xb8, s50, v[184:185]
	v_mad_u64_u32 v[90:91], null, s50, 56, v[184:185]
	v_mad_u64_u32 v[227:228], null, 0xc0, s50, v[184:185]
	v_mad_u64_u32 v[91:92], null, 0x48, s50, v[184:185]
	v_mad_u64_u32 v[228:229], null, 0xc8, s50, v[184:185]
	v_mad_u64_u32 v[92:93], null, 0x50, s50, v[184:185]
	v_mad_u64_u32 v[229:230], null, 0xd0, s50, v[184:185]
	v_mad_u64_u32 v[93:94], null, 0x58, s50, v[184:185]
	v_mad_u64_u32 v[230:231], null, 0xd8, s50, v[184:185]
	v_cmp_gt_i32_e64 s10, s61, v8
	v_cmp_gt_i32_e64 s16, s61, v14
	v_or_b32_e32 v1, 0x300, v0
	v_or_b32_e32 v2, 0x700, v0
	v_or_b32_e32 v8, 0x3f0, v0
	v_or_b32_e32 v14, 0x7f0, v0
	v_xor_b32_e32 v5, 0x110, v78
	v_xor_b32_e32 v6, 8, v210
	v_xor_b32_e32 v7, 16, v210
	v_xor_b32_e32 v9, 24, v210
	v_mul_lo_u32 v209, v4, s51
	v_dual_mov_b32 v156, 0 :: v_dual_and_b32 v3, 28, v3
	v_add3_u32 v4, 0, v10, v11
	v_dual_mov_b32 v155, 0 :: v_dual_lshlrev_b32 v10, 1, v12
	v_mad_u64_u32 v[94:95], null, 0x60, s50, v[184:185]
	v_mad_u64_u32 v[211:212], null, 0x70, s50, v[184:185]
	v_mad_u64_u32 v[220:221], null, 0xa0, s50, v[184:185]
	v_mad_u64_u32 v[231:232], null, 0xe0, s50, v[184:185]
	v_mad_u64_u32 v[215:216], null, s60, 20, v[65:66]
	v_mad_u64_u32 v[95:96], null, 0x68, s50, v[184:185]
	v_mad_u64_u32 v[212:213], null, 0x78, s50, v[184:185]
	v_mad_u64_u32 v[221:222], null, 0xa8, s50, v[184:185]
	v_mad_u64_u32 v[232:233], null, 0xe8, s50, v[184:185]
	v_mad_u64_u32 v[96:97], null, 0x88, s50, v[184:185]
	v_mad_u64_u32 v[213:214], null, 0x90, s50, v[184:185]
	v_mad_u64_u32 v[216:217], null, 0x98, s50, v[184:185]
	v_mad_u64_u32 v[222:223], null, 0xb0, s50, v[184:185]
	v_mad_u64_u32 v[233:234], null, 0xf0, s50, v[184:185]
	v_mad_u64_u32 v[71:72], null, 0xf8, s50, v[184:185]
	.loc	1 964 39                        ; ragged.py:964:39
	s_mul_i32 s54, s52, s61
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s17, s61, v15
	v_cmp_gt_i32_e64 s18, s61, v16
	v_cmp_gt_i32_e64 s19, s61, v17
	v_cmp_gt_i32_e64 s20, s61, v18
	v_cmp_gt_i32_e64 s21, s61, v19
	v_cmp_gt_i32_e64 s22, s61, v20
	v_cmp_gt_i32_e64 s23, s61, v21
	v_cmp_gt_i32_e64 s24, s61, v22
	v_cmp_gt_i32_e64 s25, s61, v23
	v_cmp_gt_i32_e64 s26, s61, v24
	v_cmp_gt_i32_e64 s27, s61, v25
	v_cmp_gt_i32_e64 s28, s61, v26
	v_cmp_gt_i32_e64 s29, s61, v27
	v_cmp_gt_i32_e64 s30, s61, v28
	v_cmp_gt_i32_e64 s31, s61, v29
	v_cmp_gt_i32_e64 s33, s61, v30
	v_cmp_gt_i32_e64 s34, s61, v31
	v_cmp_gt_i32_e64 s35, s61, v32
	v_cmp_gt_i32_e64 s36, s61, v33
	v_cmp_gt_i32_e64 s37, s61, v34
	v_cmp_gt_i32_e64 s38, s61, v182
	v_lshl_add_u32 v236, s50, 3, v184
	v_lshl_add_u32 v176, s50, 4, v184
	v_lshl_add_u32 v73, s50, 5, v184
	v_lshl_add_u32 v74, s50, 6, v184
	v_lshl_add_u32 v75, s50, 7, v184
	v_dual_mov_b32 v164, 0 :: v_dual_add_nc_u32 v169, 0, v35
	v_dual_mov_b32 v154, 0 :: v_dual_add_nc_u32 v219, 0, v0
	v_dual_mov_b32 v153, 0 :: v_dual_add_nc_u32 v218, 0, v1
	v_dual_mov_b32 v151, 0 :: v_dual_add_nc_u32 v80, 0, v2
	v_dual_mov_b32 v149, 0 :: v_dual_add_nc_u32 v224, 0, v8
	v_dual_mov_b32 v147, 0 :: v_dual_add_nc_u32 v82, 0, v14
	v_dual_mov_b32 v152, 0 :: v_dual_add_nc_u32 v181, 0, v5
	v_dual_mov_b32 v150, 0 :: v_dual_add_nc_u32 v225, 0, v6
	v_dual_mov_b32 v148, 0 :: v_dual_add_nc_u32 v81, 0, v7
	v_dual_mov_b32 v146, 0 :: v_dual_add_nc_u32 v83, 0, v9
	v_dual_mov_b32 v145, 0 :: v_dual_add_nc_u32 v84, v4, v3
	v_dual_mov_b32 v144, 0 :: v_dual_add_nc_u32 v85, 0, v10
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v111, 0
	s_add_i32 s68, s62, s54
	.loc	1 953 19                        ; ragged.py:953:19
	s_add_i32 s58, s58, -1
	.loc	1 960 39                        ; ragged.py:960:39
	s_mul_i32 s65, s52, s50
	.loc	1 998 37                        ; ragged.py:998:37
	s_mul_i32 s66, s52, s51
	s_and_b32 s53, s41, 0xffff
	s_mov_b32 s52, s40
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	s_mul_i32 s68, s68, s50
	s_and_b32 s41, s43, 0xffff
	s_mov_b32 s40, s42
	s_mov_b32 s69, 0
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s57, s47, 0xffff
	s_mov_b32 s56, s46
	.loc	1 953 19                        ; ragged.py:953:19
	s_lshr_b32 s50, s58, 7
	s_mov_b32 s46, 0
	s_clause 0xd                            ; 56-byte Folded Spill
	scratch_store_b32 off, v37, off offset:412
	scratch_store_b32 off, v0, off offset:408
	scratch_store_b32 off, v182, off offset:380
	scratch_store_b32 off, v76, off offset:384
	scratch_store_b32 off, v77, off offset:388
	scratch_store_b32 off, v208, off offset:392
	scratch_store_b32 off, v209, off offset:396
	scratch_store_b32 off, v84, off offset:400
	scratch_store_b32 off, v85, off offset:404
	scratch_store_b32 off, v75, off offset:112
	scratch_store_b32 off, v74, off offset:116
	scratch_store_b32 off, v73, off offset:120
	scratch_store_b32 off, v78, off offset:104
	scratch_store_b32 off, v210, off offset:108
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 990 40                        ; ragged.py:990:40
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v33, v76, s69, 1
	.loc	1 998 25                        ; ragged.py:998:25
	s_add_i32 s42, s69, s66
	.loc	1 990 40                        ; ragged.py:990:40
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v34, v77, s69, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v35, v208, s69, 1
	.loc	1 998 25                        ; ragged.py:998:25
	s_mul_i32 s42, s42, s61
	.loc	1 990 40                        ; ragged.py:990:40
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v36, v209, s69, 1
	.loc	1 997 40                        ; ragged.py:997:40
	v_add_lshl_u32 v37, v182, s42, 1
	.loc	1 990 40                        ; ragged.py:990:40
	v_cndmask_b32_e64 v33, 0x80000000, v33, s5
	v_cndmask_b32_e64 v34, 0x80000000, v34, s4
	v_cndmask_b32_e64 v35, 0x80000000, v35, s39
	s_mov_b32 s46, s54
	s_mov_b32 s47, s55
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	.loc	1 997 40                        ; ragged.py:997:40
	v_cndmask_b32_e64 v37, 0x80000000, v37, s38
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	.loc	1 990 40                        ; ragged.py:990:40
	s_clause 0x3
	buffer_load_u16 v33, v33, s[44:47], 0 offen
	buffer_load_u16 v34, v34, s[44:47], 0 offen
	buffer_load_u16 v35, v35, s[44:47], 0 offen
	buffer_load_u16 v36, v36, s[44:47], 0 offen
	.loc	1 997 40                        ; ragged.py:997:40
	buffer_load_u16 v37, v37, s[56:59], 0 offen
	.loc	1 1002 21                       ; ragged.py:1002:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1004 17                       ; ragged.py:1004:17
	s_add_i32 s42, s69, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 953 19                        ; ragged.py:953:19
	s_lshl_b32 s46, s42, 7
	s_cmp_lg_u32 s69, s50
	s_mov_b32 s69, s42
	.loc	1 990 40                        ; ragged.py:990:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 995 21                        ; ragged.py:995:21
	v_dual_mul_f32 v54, v190, v34 :: v_dual_lshlrev_b32 v33, 16, v33
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v38, v207, v33 :: v_dual_lshlrev_b32 v35, 16, v35
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v41, v204, v33 :: v_dual_lshlrev_b32 v36, 16, v36
	v_mul_f32_e32 v39, v206, v33
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v56, v188, v34 :: v_dual_lshlrev_b32 v37, 16, v37
	v_dual_mul_f32 v40, v205, v33 :: v_dual_mul_f32 v53, v191, v34
	v_dual_mul_f32 v42, v203, v33 :: v_dual_mul_f32 v55, v189, v34
	v_dual_mul_f32 v43, v202, v33 :: v_dual_mul_f32 v60, v175, v34
	v_dual_mul_f32 v44, v201, v33 :: v_dual_mul_f32 v57, v187, v34
	v_dual_mul_f32 v45, v200, v33 :: v_dual_mul_f32 v58, v186, v34
	v_dual_mul_f32 v46, v199, v33 :: v_dual_mul_f32 v59, v185, v34
	v_dual_mul_f32 v47, v198, v33 :: v_dual_mul_f32 v62, v173, v34
	v_dual_mul_f32 v48, v197, v33 :: v_dual_mul_f32 v61, v174, v34
	v_dual_mul_f32 v49, v196, v33 :: v_dual_mul_f32 v64, v163, v34
	v_dual_mul_f32 v50, v195, v33 :: v_dual_mul_f32 v63, v172, v34
	v_dual_mul_f32 v51, v194, v33 :: v_dual_mul_f32 v66, v135, v34
	v_dual_mul_f32 v52, v193, v33 :: v_dual_mul_f32 v67, v106, v34
	v_dual_mul_f32 v33, v192, v33 :: v_dual_mul_f32 v68, v98, v34
	v_dual_mul_f32 v32, v32, v34 :: v_dual_mul_f32 v31, v31, v35
	v_dual_mul_f32 v30, v30, v35 :: v_dual_mul_f32 v15, v15, v36
	v_dual_mul_f32 v29, v29, v35 :: v_dual_mul_f32 v14, v14, v36
	v_mul_f32_e32 v28, v28, v35
	v_dual_mul_f32 v34, v27, v35 :: v_dual_mul_f32 v9, v9, v36
	v_dual_mul_f32 v69, v26, v35 :: v_dual_mul_f32 v106, v12, v36
	v_dual_mul_f32 v97, v25, v35 :: v_dual_mul_f32 v108, v10, v36
	v_dual_mul_f32 v98, v24, v35 :: v_dual_mul_f32 v107, v11, v36
	v_dual_mul_f32 v99, v23, v35 :: v_dual_mul_f32 v8, v8, v36
	v_dual_mul_f32 v100, v22, v35 :: v_dual_mul_f32 v7, v7, v36
	v_dual_mul_f32 v101, v21, v35 :: v_dual_mul_f32 v6, v6, v36
	v_dual_mul_f32 v102, v20, v35 :: v_dual_mul_f32 v5, v5, v36
	v_dual_mul_f32 v103, v19, v35 :: v_dual_mul_f32 v4, v4, v36
	v_dual_mul_f32 v104, v18, v35 :: v_dual_mul_f32 v3, v3, v36
	v_dual_mul_f32 v105, v17, v35 :: v_dual_mul_f32 v0, v0, v36
	v_dual_mul_f32 v35, v16, v35 :: v_dual_mul_f32 v2, v2, v36
	.loc	1 1002 21                       ; ragged.py:1002:21
	ds_store_b32 v84, v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[16:19], v85
	ds_load_b128 v[20:23], v85 offset:16
	.loc	1 995 21                        ; ragged.py:995:21
	v_mul_f32_e32 v37, v13, v36
	.loc	1 1002 21                       ; ragged.py:1002:21
	ds_load_b128 v[10:13], v85 offset:512
	ds_load_b128 v[24:27], v85 offset:528
	.loc	1 995 21                        ; ragged.py:995:21
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v1, v1, v36 :: v_dual_fmac_f32 v178, v40, v18
	.loc	1 1003 17                       ; ragged.py:1003:17
	v_dual_fmac_f32 v180, v38, v16 :: v_dual_fmac_f32 v179, v39, v17
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v177, v41, v19 :: v_dual_fmac_f32 v170, v43, v21
	v_dual_fmac_f32 v171, v42, v20 :: v_dual_fmac_f32 v168, v44, v22
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v167, v45, v23 :: v_dual_fmac_f32 v166, v46, v10
	v_dual_fmac_f32 v165, v47, v11 :: v_dual_fmac_f32 v164, v48, v12
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v162, v49, v13 :: v_dual_fmac_f32 v161, v50, v24
	v_dual_fmac_f32 v160, v51, v25 :: v_dual_fmac_f32 v159, v52, v26
	v_dual_fmac_f32 v158, v33, v27 :: v_dual_fmac_f32 v155, v55, v18
	v_dual_fmac_f32 v157, v53, v16 :: v_dual_fmac_f32 v156, v54, v17
	v_dual_fmac_f32 v154, v56, v19 :: v_dual_fmac_f32 v153, v57, v20
	v_dual_fmac_f32 v152, v58, v21 :: v_dual_fmac_f32 v151, v59, v22
	v_dual_fmac_f32 v150, v60, v23 :: v_dual_fmac_f32 v149, v61, v10
	v_dual_fmac_f32 v148, v62, v11 :: v_dual_fmac_f32 v147, v63, v12
	v_dual_fmac_f32 v146, v64, v13 :: v_dual_fmac_f32 v145, v66, v24
	v_dual_fmac_f32 v144, v67, v25 :: v_dual_fmac_f32 v143, v68, v26
	v_dual_fmac_f32 v142, v32, v27 :: v_dual_fmac_f32 v141, v31, v16
	v_dual_fmac_f32 v140, v30, v17 :: v_dual_fmac_f32 v139, v29, v18
	v_dual_fmac_f32 v138, v28, v19 :: v_dual_fmac_f32 v137, v34, v20
	v_dual_fmac_f32 v136, v69, v21 :: v_dual_fmac_f32 v133, v98, v23
	v_dual_fmac_f32 v134, v97, v22 :: v_dual_fmac_f32 v131, v100, v11
	v_dual_fmac_f32 v132, v99, v10 :: v_dual_fmac_f32 v129, v102, v13
	v_dual_fmac_f32 v130, v101, v12 :: v_dual_fmac_f32 v127, v104, v25
	v_dual_fmac_f32 v128, v103, v24 :: v_dual_fmac_f32 v123, v14, v17
	v_dual_fmac_f32 v126, v105, v26 :: v_dual_fmac_f32 v125, v35, v27
	v_dual_fmac_f32 v124, v15, v16 :: v_dual_fmac_f32 v121, v106, v19
	v_dual_fmac_f32 v122, v37, v18 :: v_dual_fmac_f32 v119, v108, v21
	v_dual_fmac_f32 v120, v107, v20 :: v_dual_fmac_f32 v113, v6, v11
	v_dual_fmac_f32 v118, v9, v22 :: v_dual_fmac_f32 v109, v3, v24
	v_dual_fmac_f32 v116, v8, v23 :: v_dual_fmac_f32 v115, v7, v10
	v_dual_fmac_f32 v112, v5, v12 :: v_dual_fmac_f32 v117, v0, v25
	v_dual_fmac_f32 v110, v4, v13 :: v_dual_fmac_f32 v111, v1, v27
	v_fmac_f32_e32 v114, v2, v26
	.loc	1 953 19                        ; ragged.py:953:19
	s_cbranch_scc0 .LBB0_10
.LBB0_6:                                ; %.preheader
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v3, 0
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
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v207, 0
	.loc	1 957 23 is_stmt 1              ; ragged.py:957:23
	s_and_not1_b32 vcc_lo, exec_lo, s67
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_mov_b32_e32 v1, 0
	s_mov_b32 s47, s3
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v180, off offset:376
	scratch_store_b32 off, v179, off offset:372
	scratch_store_b32 off, v178, off offset:368
	scratch_store_b32 off, v177, off offset:364
	scratch_store_b32 off, v171, off offset:360
	scratch_store_b32 off, v170, off offset:356
	scratch_store_b32 off, v168, off offset:352
	scratch_store_b32 off, v167, off offset:348
	scratch_store_b32 off, v166, off offset:344
	scratch_store_b32 off, v165, off offset:340
	scratch_store_b32 off, v164, off offset:336
	scratch_store_b32 off, v162, off offset:332
	scratch_store_b32 off, v161, off offset:328
	scratch_store_b32 off, v160, off offset:324
	scratch_store_b32 off, v159, off offset:320
	scratch_store_b32 off, v158, off offset:316
	scratch_store_b32 off, v157, off offset:312
	scratch_store_b32 off, v156, off offset:308
	scratch_store_b32 off, v155, off offset:304
	scratch_store_b32 off, v154, off offset:300
	scratch_store_b32 off, v153, off offset:296
	scratch_store_b32 off, v152, off offset:292
	scratch_store_b32 off, v151, off offset:288
	scratch_store_b32 off, v150, off offset:284
	scratch_store_b32 off, v149, off offset:280
	scratch_store_b32 off, v148, off offset:276
	scratch_store_b32 off, v147, off offset:272
	scratch_store_b32 off, v146, off offset:268
	scratch_store_b32 off, v145, off offset:264
	scratch_store_b32 off, v144, off offset:260
	scratch_store_b32 off, v143, off offset:256
	scratch_store_b32 off, v142, off offset:252
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v141, off offset:248
	scratch_store_b32 off, v140, off offset:244
	scratch_store_b32 off, v139, off offset:240
	scratch_store_b32 off, v138, off offset:236
	scratch_store_b32 off, v137, off offset:232
	scratch_store_b32 off, v136, off offset:228
	scratch_store_b32 off, v134, off offset:224
	scratch_store_b32 off, v133, off offset:220
	scratch_store_b32 off, v132, off offset:216
	scratch_store_b32 off, v131, off offset:212
	scratch_store_b32 off, v130, off offset:208
	scratch_store_b32 off, v129, off offset:204
	scratch_store_b32 off, v128, off offset:200
	scratch_store_b32 off, v127, off offset:196
	scratch_store_b32 off, v126, off offset:192
	scratch_store_b32 off, v125, off offset:188
	scratch_store_b32 off, v124, off offset:184
	scratch_store_b32 off, v123, off offset:180
	scratch_store_b32 off, v122, off offset:176
	scratch_store_b32 off, v121, off offset:172
	scratch_store_b32 off, v120, off offset:168
	scratch_store_b32 off, v119, off offset:164
	scratch_store_b32 off, v118, off offset:160
	scratch_store_b32 off, v117, off offset:156
	scratch_store_b32 off, v116, off offset:152
	scratch_store_b32 off, v115, off offset:148
	scratch_store_b32 off, v114, off offset:144
	scratch_store_b32 off, v113, off offset:140
	scratch_store_b32 off, v112, off offset:136
	scratch_store_b32 off, v111, off offset:132
	scratch_store_b32 off, v110, off offset:128
	scratch_store_b32 off, v109, off offset:124
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
	.loc	1 958 26 is_stmt 1              ; ragged.py:958:26
	s_add_i32 s51, s47, s46
	s_clause 0xc                            ; 104-byte Folded Spill
	scratch_store_b64 off, v[93:94], off offset:96
	scratch_store_b64 off, v[86:87], off offset:88
	scratch_store_b64 off, v[91:92], off offset:80
	scratch_store_b64 off, v[88:89], off offset:72
	scratch_store_b64 off, v[90:91], off offset:64
	scratch_store_b64 off, v[92:93], off offset:56
	scratch_store_b64 off, v[94:95], off offset:48
	scratch_store_b64 off, v[212:213], off offset:40
	scratch_store_b64 off, v[95:96], off offset:32
	scratch_store_b64 off, v[184:185], off offset:24
	scratch_store_b64 off, v[213:214], off offset:16
	scratch_store_b64 off, v[96:97], off offset:8
	scratch_store_b64 off, v[211:212], off
	.loc	1 969 46                        ; ragged.py:969:46
	s_add_i32 s59, s51, s68
	.loc	1 968 46                        ; ragged.py:968:46
	s_add_i32 s58, s51, s65
	v_dual_mov_b32 v70, v183 :: v_dual_add_nc_u32 v187, s59, v216
	v_add_nc_u32_e32 v98, s59, v236
	v_add_nc_u32_e32 v101, s59, v73
	v_mov_b32_e32 v73, v220
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 969 38                        ; ragged.py:969:38
	v_cndmask_b32_e64 v193, 0x80000000, v187, s24
	v_dual_mov_b32 v76, v231 :: v_dual_add_nc_u32 v187, s59, v220
	v_dual_mov_b32 v77, v222 :: v_dual_add_nc_u32 v108, s59, v92
	v_add_nc_u32_e32 v100, s59, v87
	v_cndmask_b32_e64 v198, 0x80000000, v187, s25
	v_add_nc_u32_e32 v187, s59, v221
	v_dual_mov_b32 v92, v87 :: v_dual_add_nc_u32 v103, s59, v89
	v_dual_mov_b32 v87, v230 :: v_dual_add_nc_u32 v106, s59, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v199, 0x80000000, v187, s26
	v_add_nc_u32_e32 v187, s59, v222
	v_dual_mov_b32 v72, v65 :: v_dual_add_nc_u32 v163, s59, v94
	v_add_nc_u32_e32 v172, s59, v95
	v_mov_b32_e32 v94, v89
	v_cndmask_b32_e64 v200, 0x80000000, v187, s27
	v_add_nc_u32_e32 v187, s59, v226
	v_mov_b32_e32 v89, v226
	v_add_nc_u32_e32 v99, s59, v176
	v_dual_mov_b32 v74, v233 :: v_dual_add_nc_u32 v185, s59, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v201, 0x80000000, v187, s28
	v_dual_mov_b32 v96, v236 :: v_dual_add_nc_u32 v187, s59, v227
	v_add_nc_u32_e32 v102, s59, v88
	v_dual_mov_b32 v88, v232 :: v_dual_add_nc_u32 v175, s59, v75
	v_cndmask_b32_e64 v202, 0x80000000, v187, s29
	v_add_nc_u32_e32 v187, s59, v228
	v_add_nc_u32_e32 v104, s59, v90
	v_dual_mov_b32 v84, v225 :: v_dual_add_nc_u32 v135, s59, v93
	v_mov_b32_e32 v93, v228
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v203, 0x80000000, v187, s30
	v_add_nc_u32_e32 v187, s59, v229
	v_dual_mov_b32 v90, v216 :: v_dual_add_nc_u32 v107, s59, v91
	.loc	1 968 46                        ; ragged.py:968:46
	s_mul_i32 s51, s58, s60
	v_dual_mov_b32 v78, v229 :: v_dual_add_nc_u32 v173, s59, v211
	.loc	1 969 38                        ; ragged.py:969:38
	v_cndmask_b32_e64 v204, 0x80000000, v187, s31
	v_add_nc_u32_e32 v187, s59, v230
	.loc	1 968 46                        ; ragged.py:968:46
	s_add_i32 s51, s51, s64
	v_add_nc_u32_e32 v174, s59, v212
	v_add_nc_u32_e32 v186, s59, v213
	v_dual_mov_b32 v95, v215 :: v_dual_add_nc_u32 v0, s59, v184
	.loc	1 969 38                        ; ragged.py:969:38
	v_cndmask_b32_e64 v205, 0x80000000, v187, s33
	v_add_nc_u32_e32 v187, s59, v231
	v_cndmask_b32_e64 v98, 0x80000000, v98, s6
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	v_cndmask_b32_e64 v99, 0x80000000, v99, s7
	s_mov_b32 s42, s54
	v_cndmask_b32_e64 v206, 0x80000000, v187, s34
	v_add_nc_u32_e32 v187, s59, v232
	s_mov_b32 s43, s55
	v_mov_b32_e32 v75, v221
	v_cndmask_b32_e64 v100, 0x80000000, v100, s8
	v_cndmask_b32_e64 v101, 0x80000000, v101, s9
	v_cndmask_b32_e64 v207, 0x80000000, v187, s35
	v_add_nc_u32_e32 v187, s59, v233
	v_cndmask_b32_e64 v103, 0x80000000, v103, s11
	v_cndmask_b32_e64 v104, 0x80000000, v104, s12
	v_cndmask_b32_e64 v106, 0x80000000, v106, s13
	v_cndmask_b32_e64 v107, 0x80000000, v107, s14
	v_cndmask_b32_e64 v208, 0x80000000, v187, s36
	v_add_nc_u32_e32 v187, s59, v71
	v_cndmask_b32_e64 v108, 0x80000000, v108, s15
	v_cndmask_b32_e64 v135, 0x80000000, v135, s16
	v_cndmask_b32_e64 v163, 0x80000000, v163, s17
	v_cndmask_b32_e64 v172, 0x80000000, v172, s18
	v_cndmask_b32_e64 v209, 0x80000000, v187, s37
	v_add_nc_u32_e32 v187, s51, v65
	v_cndmask_b32_e64 v173, 0x80000000, v173, s19
	v_cndmask_b32_e64 v174, 0x80000000, v174, s20
	v_mov_b32_e32 v91, v227
	v_cndmask_b32_e64 v102, 0x80000000, v102, s10
	.loc	1 968 38                        ; ragged.py:968:38
	v_cndmask_b32_e64 v210, 0x80000000, v187, s0
	v_lshl_add_u32 v187, s60, 2, v65
	.loc	1 969 38                        ; ragged.py:969:38
	v_cndmask_b32_e64 v175, 0x80000000, v175, s21
	v_cndmask_b32_e64 v185, 0x80000000, v185, s22
	v_cndmask_b32_e64 v186, 0x80000000, v186, s23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v187, s51, v187
	.loc	1 968 38                        ; ragged.py:968:38
	v_cndmask_b32_e64 v211, 0x80000000, v187, s0
	v_lshl_add_u32 v187, s60, 3, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v187, s51, v187
	v_cndmask_b32_e64 v212, 0x80000000, v187, s0
	v_add_nc_u32_e32 v187, s51, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v213, 0x80000000, v187, s0
	v_lshl_add_u32 v187, s60, 4, v65
	v_add_nc_u32_e32 v187, s51, v187
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v214, 0x80000000, v187, s0
	v_add_nc_u32_e32 v187, s51, v215
	v_cndmask_b32_e64 v215, 0x80000000, v187, s0
	v_add_nc_u32_e32 v187, s51, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v216, 0x80000000, v187, s0
	v_add_nc_u32_e32 v187, s51, v79
	v_cndmask_b32_e64 v217, 0x80000000, v187, s0
	.loc	1 969 38                        ; ragged.py:969:38
	s_clause 0x1f
	buffer_load_u8 v97, v0, s[40:43], 0 offen
	buffer_load_u8 v187, v98, s[40:43], 0 offen
	buffer_load_u8 v99, v99, s[40:43], 0 offen
	buffer_load_u8 v188, v100, s[40:43], 0 offen
	buffer_load_u8 v100, v101, s[40:43], 0 offen
	buffer_load_u8 v189, v102, s[40:43], 0 offen
	buffer_load_u8 v101, v103, s[40:43], 0 offen
	buffer_load_u8 v190, v104, s[40:43], 0 offen
	buffer_load_u8 v102, v106, s[40:43], 0 offen
	buffer_load_u8 v191, v107, s[40:43], 0 offen
	buffer_load_u8 v103, v108, s[40:43], 0 offen
	buffer_load_u8 v192, v135, s[40:43], 0 offen
	buffer_load_u8 v104, v163, s[40:43], 0 offen
	buffer_load_u8 v194, v172, s[40:43], 0 offen
	buffer_load_u8 v107, v173, s[40:43], 0 offen
	buffer_load_u8 v195, v174, s[40:43], 0 offen
	buffer_load_u8 v108, v175, s[40:43], 0 offen
	buffer_load_u8 v196, v185, s[40:43], 0 offen
	buffer_load_u8 v105, v186, s[40:43], 0 offen
	buffer_load_u8 v197, v193, s[40:43], 0 offen
	buffer_load_u8 v109, v198, s[40:43], 0 offen
	buffer_load_u8 v198, v199, s[40:43], 0 offen
	buffer_load_u8 v110, v200, s[40:43], 0 offen
	buffer_load_u8 v199, v201, s[40:43], 0 offen
	buffer_load_u8 v111, v202, s[40:43], 0 offen
	buffer_load_u8 v200, v203, s[40:43], 0 offen
	buffer_load_u8 v112, v204, s[40:43], 0 offen
	buffer_load_u8 v201, v205, s[40:43], 0 offen
	buffer_load_u8 v113, v206, s[40:43], 0 offen
	buffer_load_u8 v202, v207, s[40:43], 0 offen
	buffer_load_u8 v114, v208, s[40:43], 0 offen
	buffer_load_u8 v203, v209, s[40:43], 0 offen
	.loc	1 968 38                        ; ragged.py:968:38
	s_clause 0x7
	buffer_load_u8 v0, v210, s[52:55], 0 offen
	buffer_load_u8 v98, v211, s[52:55], 0 offen
	buffer_load_u8 v106, v212, s[52:55], 0 offen
	buffer_load_u8 v135, v214, s[52:55], 0 offen
	buffer_load_u8 v163, v215, s[52:55], 0 offen
	buffer_load_u8 v172, v216, s[52:55], 0 offen
	buffer_load_u8 v173, v217, s[52:55], 0 offen
	buffer_load_u8 v174, v213, s[52:55], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 987 21                        ; ragged.py:987:21
	s_add_i32 s42, s47, 32
	.loc	1 957 23                        ; ragged.py:957:23
	s_cmpk_lt_i32 s47, 0x60
	s_mov_b32 s47, s42
	.loc	1 968 38                        ; ragged.py:968:38
	s_waitcnt vmcnt(7)
	ds_store_b8 v219, v0
	s_waitcnt vmcnt(6)
	ds_store_b8 v219, v98 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v219, v106 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v219, v135 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v219, v163 offset:1280
	s_waitcnt vmcnt(0)
	ds_store_b8 v218, v174
	ds_store_b8 v219, v172 offset:1536
	ds_store_b8 v80, v173
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 977 31                        ; ragged.py:977:31
	ds_load_u8 v115, v169 offset:192
	ds_load_u8 v116, v169 offset:128
	ds_load_u8 v117, v169 offset:208
	ds_load_u8 v118, v169 offset:144
	ds_load_u8 v119, v169 offset:224
	ds_load_u8 v120, v169 offset:160
	ds_load_u8 v121, v169 offset:240
	ds_load_u8 v122, v169 offset:176
	ds_load_u8 v123, v169 offset:448
	ds_load_u8 v124, v169 offset:384
	ds_load_u8 v125, v169 offset:464
	ds_load_u8 v126, v169 offset:400
	ds_load_u8 v127, v169 offset:480
	ds_load_u8 v128, v169 offset:416
	ds_load_u8 v129, v169 offset:496
	ds_load_u8 v130, v169 offset:432
	ds_load_u8 v131, v169 offset:320
	ds_load_u8 v132, v169 offset:256
	ds_load_u8 v133, v169 offset:336
	ds_load_u8 v134, v169 offset:272
	ds_load_u8 v136, v169 offset:352
	ds_load_u8 v137, v169 offset:288
	ds_load_u8 v138, v169 offset:368
	ds_load_u8 v139, v169 offset:304
	ds_load_u8 v140, v169 offset:64
	ds_load_u8 v141, v169 offset:80
	ds_load_u8 v142, v169 offset:96
	ds_load_u8 v143, v169 offset:112
	ds_load_u8 v144, v169
	ds_load_u8 v145, v169 offset:16
	ds_load_u8 v146, v169 offset:32
	ds_load_u8 v147, v169 offset:48
	ds_load_u8 v148, v169 offset:960
	ds_load_u8 v149, v169 offset:896
	ds_load_u8 v193, v169 offset:1024
	ds_load_u8 v150, v169 offset:976
	ds_load_u8 v151, v169 offset:912
	ds_load_u8 v152, v169 offset:992
	ds_load_u8 v153, v169 offset:928
	ds_load_u8 v225, v169 offset:944
	ds_load_u8 v154, v169 offset:832
	ds_load_u8 v155, v169 offset:768
	ds_load_u8 v156, v169 offset:848
	ds_load_u8 v157, v169 offset:784
	ds_load_u8 v158, v169 offset:864
	ds_load_u8 v159, v169 offset:800
	ds_load_u8 v241, v169 offset:880
	ds_load_u8 v246, v169 offset:816
	ds_load_u8 v160, v169 offset:704
	ds_load_u8 v161, v169 offset:640
	ds_load_u8 v162, v169 offset:720
	ds_load_u8 v66, v169 offset:656
	ds_load_u8 v68, v169 offset:736
	ds_load_u8 v164, v169 offset:672
	ds_load_u8 v172, v169 offset:752
	ds_load_u8 v175, v169 offset:688
	ds_load_u8 v165, v169 offset:576
	ds_load_u8 v166, v169 offset:512
	ds_load_u8 v167, v169 offset:592
	ds_load_u8 v168, v169 offset:528
	ds_load_u8 v170, v169 offset:608
	ds_load_u8 v171, v169 offset:544
	ds_load_u8 v177, v169 offset:624
	ds_load_u8 v178, v169 offset:560
	ds_load_u8 v221, v169 offset:1216
	ds_load_u8 v230, v169 offset:1104
	ds_load_u8 v223, v169 offset:1120
	ds_load_u8 v233, v169 offset:1040
	ds_load_u8 v228, v169 offset:1280
	ds_load_u8 v215, v169 offset:1232
	ds_load_u8 v85, v169 offset:1168
	ds_load_u8 v210, v169 offset:1248
	ds_load_u8 v212, v169 offset:1184
	ds_load_u8 v207, v169 offset:1264
	ds_load_u8 v208, v169 offset:1200
	ds_load_u8 v239, v169 offset:1152
	ds_load_u8 v242, v169 offset:1088
	ds_load_u8 v226, v169 offset:1056
	ds_load_u8 v65, v169 offset:1136
	ds_load_u8 v220, v169 offset:1072
	ds_load_u8 v163, v169 offset:1472
	ds_load_u8 v204, v169 offset:1536
	ds_load_u8 v251, v169 offset:1488
	ds_load_u8 v253, v169 offset:1424
	ds_load_u8 v245, v169 offset:1504
	ds_load_u8 v248, v169 offset:1440
	ds_load_u8 v236, v169 offset:1520
	ds_load_u8 v238, v169 offset:1456
	ds_load_u8 v179, v169 offset:1408
	ds_load_u8 v180, v169 offset:1344
	ds_load_u8 v182, v169 offset:1360
	ds_load_u8 v183, v169 offset:1296
	ds_load_u8 v174, v169 offset:1376
	ds_load_u8 v186, v169 offset:1312
	ds_load_u8 v255, v169 offset:1392
	ds_load_u8 v106, v169 offset:1328
	ds_load_u8 v222, v169 offset:1984
	ds_load_u8 v213, v169 offset:2000
	ds_load_u8 v216, v169 offset:1936
	ds_load_u8 v209, v169 offset:2016
	ds_load_u8 v211, v169 offset:1952
	ds_load_u8 v184, v224
	ds_load_u8 v205, v82
	ds_load_u8 v206, v169 offset:1968
	ds_load_u8 v240, v169 offset:1920
	ds_load_u8 v243, v169 offset:1856
	ds_load_u8 v231, v169 offset:1872
	ds_load_u8 v234, v169 offset:1808
	ds_load_u8 v86, v169 offset:1888
	ds_load_u8 v227, v169 offset:1824
	ds_load_u8 v214, v169 offset:1904
	ds_load_u8 v217, v169 offset:1840
	ds_load_u8 v250, v169 offset:1728
	ds_load_u8 v0, v169 offset:1792
	ds_load_u8 v244, v169 offset:1744
	ds_load_u8 v247, v169 offset:1680
	ds_load_u8 v235, v169 offset:1760
	ds_load_u8 v237, v169 offset:1696
	ds_load_u8 v229, v169 offset:1776
	ds_load_u8 v232, v169 offset:1712
	ds_load_u8 v98, v169 offset:1664
	ds_load_u8 v67, v169 offset:1600
	ds_load_u8 v173, v169 offset:1616
	ds_load_u8 v185, v169 offset:1552
	ds_load_u8 v254, v169 offset:1632
	ds_load_u8 v135, v169 offset:1568
	ds_load_u8 v249, v169 offset:1648
	ds_load_u8 v252, v169 offset:1584
	.loc	1 969 38                        ; ragged.py:969:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v69, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 977 31                        ; ragged.py:977:31
	v_perm_b32 v66, v66, v162, 0xc0c0004
	v_perm_b32 v68, v164, v68, 0xc0c0004
	v_perm_b32 v67, v204, v67, 0xc0c0004
	v_perm_b32 v0, v0, v243, 0xc0c0004
	.loc	1 969 38                        ; ragged.py:969:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, 0, v69
	ds_store_b8 v69, v97
	ds_store_b8 v69, v99 offset:512
	ds_store_b8 v69, v100 offset:1024
	ds_store_b8 v69, v101 offset:1536
	ds_store_b8 v69, v102 offset:2048
	ds_store_b8 v69, v103 offset:2560
	ds_store_b8 v69, v104 offset:3072
	ds_store_b8 v69, v107 offset:3584
	ds_store_b8 v69, v108 offset:4096
	ds_store_b8 v69, v105 offset:4608
	ds_store_b8 v69, v109 offset:5120
	ds_store_b8 v69, v110 offset:5632
	ds_store_b8 v69, v111 offset:6144
	ds_store_b8 v69, v112 offset:6656
	ds_store_b8 v69, v113 offset:7168
	ds_store_b8 v69, v114 offset:7680
	.loc	1 977 31                        ; ragged.py:977:31
	v_perm_b32 v69, v132, v131, 0xc0c0004
	v_perm_b32 v97, v124, v123, 0xc0c0004
	.loc	1 969 38                        ; ragged.py:969:38
	ds_store_b8 v181, v187
	ds_store_b8 v181, v188 offset:512
	ds_store_b8 v181, v189 offset:1024
	ds_store_b8 v181, v190 offset:1536
	ds_store_b8 v181, v191 offset:2048
	ds_store_b8 v181, v192 offset:2560
	ds_store_b8 v181, v194 offset:3072
	ds_store_b8 v181, v195 offset:3584
	ds_store_b8 v181, v196 offset:4096
	ds_store_b8 v181, v197 offset:4608
	ds_store_b8 v181, v198 offset:5120
	ds_store_b8 v181, v199 offset:5632
	ds_store_b8 v181, v200 offset:6144
	ds_store_b8 v181, v201 offset:6656
	ds_store_b8 v181, v202 offset:7168
	ds_store_b8 v181, v203 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 977 31                        ; ragged.py:977:31
	v_perm_b32 v99, v144, v140, 0xc0c0004
	v_lshl_or_b32 v100, v97, 16, v69
	v_perm_b32 v69, v134, v133, 0xc0c0004
	v_perm_b32 v97, v126, v125, 0xc0c0004
	v_perm_b32 v101, v116, v115, 0xc0c0004
	v_perm_b32 v103, v118, v117, 0xc0c0004
	v_perm_b32 v105, v120, v119, 0xc0c0004
	v_perm_b32 v107, v122, v121, 0xc0c0004
	v_lshl_or_b32 v102, v97, 16, v69
	v_perm_b32 v69, v137, v136, 0xc0c0004
	v_perm_b32 v97, v128, v127, 0xc0c0004
	v_lshl_or_b32 v99, v101, 16, v99
	v_perm_b32 v101, v145, v141, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v104, v97, 16, v69
	v_perm_b32 v69, v139, v138, 0xc0c0004
	v_perm_b32 v97, v130, v129, 0xc0c0004
	v_lshl_or_b32 v101, v103, 16, v101
	v_perm_b32 v103, v146, v142, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v108, v97, 16, v69
	.loc	1 969 38                        ; ragged.py:969:38
	scratch_load_b32 v69, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 977 31                        ; ragged.py:977:31
	v_lshl_or_b32 v103, v105, 16, v103
	v_perm_b32 v105, v147, v143, 0xc0c0004
	v_perm_b32 v97, v149, v148, 0xc0c0004
	v_lshl_or_b32 v107, v107, 16, v105
	.loc	1 969 38                        ; ragged.py:969:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, 0, v69
	ds_load_2addr_stride64_b64 v[187:190], v69 offset1:8
	.loc	1 977 31                        ; ragged.py:977:31
	v_perm_b32 v69, v155, v154, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[187:188], v[99:100], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[189:190], v[99:100], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[187:188], v[101:102], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[189:190], v[101:102], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v99, v166, v165, 0xc0c0004
	v_perm_b32 v101, v161, v160, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[187:188], v[103:104], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[189:190], v[103:104], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[187:188], v[107:108], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[189:190], v[107:108], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v100, v97, 16, v69
	v_lshl_or_b32 v99, v101, 16, v99
	v_perm_b32 v69, v157, v156, 0xc0c0004
	v_perm_b32 v97, v151, v150, 0xc0c0004
	v_perm_b32 v101, v168, v167, 0xc0c0004
	.loc	1 969 38                        ; ragged.py:969:38
	ds_load_2addr_stride64_b64 v[187:190], v84 offset1:8
	.loc	1 977 31                        ; ragged.py:977:31
	v_lshl_or_b32 v102, v97, 16, v69
	v_lshl_or_b32 v101, v66, 16, v101
	v_perm_b32 v66, v159, v158, 0xc0c0004
	v_perm_b32 v69, v153, v152, 0xc0c0004
	v_perm_b32 v97, v171, v170, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v104, v69, 16, v66
	v_lshl_or_b32 v103, v68, 16, v97
	v_perm_b32 v66, v178, v177, 0xc0c0004
	v_perm_b32 v68, v175, v172, 0xc0c0004
	v_perm_b32 v69, v246, v241, 0xc0c0004
	v_perm_b32 v97, v225, v184, 0xc0c0004
	v_mov_b32_e32 v225, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v107, v68, 16, v66
	v_perm_b32 v66, v228, v180, 0xc0c0004
	v_perm_b32 v68, v179, v163, 0xc0c0004
	v_lshl_or_b32 v108, v97, 16, v69
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[187:188], v[99:100], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[189:190], v[99:100], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[187:188], v[101:102], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v100, v68, 16, v66
	v_perm_b32 v66, v183, v182, 0xc0c0004
	v_perm_b32 v68, v253, v251, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[189:190], v[101:102], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[187:188], v[103:104], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[189:190], v[103:104], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[187:188], v[107:108], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[189:190], v[107:108], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v102, v68, 16, v66
	v_perm_b32 v66, v186, v174, 0xc0c0004
	v_perm_b32 v68, v248, v245, 0xc0c0004
	.loc	1 969 38                        ; ragged.py:969:38
	ds_load_2addr_stride64_b64 v[186:189], v81 offset1:8
	.loc	1 977 31                        ; ragged.py:977:31
	v_perm_b32 v69, v193, v242, 0xc0c0004
	v_perm_b32 v97, v239, v221, 0xc0c0004
	v_mov_b32_e32 v228, v93
	v_lshl_or_b32 v104, v68, 16, v66
	v_perm_b32 v66, v106, v255, 0xc0c0004
	v_perm_b32 v68, v238, v236, 0xc0c0004
	v_lshl_or_b32 v99, v97, 16, v69
	v_perm_b32 v69, v233, v230, 0xc0c0004
	v_perm_b32 v97, v85, v215, 0xc0c0004
	v_mov_b32_e32 v230, v87
	v_lshl_or_b32 v107, v68, 16, v66
	v_perm_b32 v68, v98, v250, 0xc0c0004
	v_perm_b32 v66, v240, v222, 0xc0c0004
	v_lshl_or_b32 v101, v97, 16, v69
	v_perm_b32 v69, v226, v223, 0xc0c0004
	v_perm_b32 v97, v212, v210, 0xc0c0004
	v_lshl_or_b32 v98, v68, 16, v67
	v_perm_b32 v67, v185, v173, 0xc0c0004
	v_perm_b32 v68, v247, v244, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[186:187], v[99:100], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[188:189], v[99:100], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v99, v66, 16, v0
	v_perm_b32 v0, v234, v231, 0xc0c0004
	v_lshl_or_b32 v100, v68, 16, v67
	scratch_load_b64 v[67:68], off, off     ; 8-byte Folded Reload
	v_perm_b32 v66, v216, v213, 0xc0c0004
	v_lshl_or_b32 v103, v97, 16, v69
	v_perm_b32 v69, v220, v65, 0xc0c0004
	v_perm_b32 v97, v208, v207, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[186:187], v[101:102], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[188:189], v[101:102], v[25:32] neg_lo:[1,1,0]
	scratch_load_b64 v[212:213], off, off offset:40 ; 8-byte Folded Reload
	v_lshl_or_b32 v101, v66, 16, v0
	v_perm_b32 v0, v227, v86, 0xc0c0004
	v_mov_b32_e32 v227, v91
	v_perm_b32 v66, v211, v209, 0xc0c0004
	v_mov_b32_e32 v216, v90
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[90:91], off, off offset:64
	scratch_load_b64 v[184:185], off, off offset:24
	s_waitcnt vmcnt(3)
	v_perm_b32 v68, v237, v235, 0xc0c0004
	v_lshl_or_b32 v106, v97, 16, v69
	v_mov_b32_e32 v236, v96
	v_wmma_i32_16x16x16_iu4 v[33:40], v[186:187], v[103:104], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[188:189], v[103:104], v[41:48] neg_lo:[1,1,0]
	v_mov_b32_e32 v226, v89
	v_lshl_or_b32 v103, v66, 16, v0
	v_perm_b32 v66, v232, v229, 0xc0c0004
	v_mov_b32_e32 v232, v88
	scratch_load_b64 v[88:89], off, off offset:72 ; 8-byte Folded Reload
	v_dual_mov_b32 v215, v95 :: v_dual_mov_b32 v220, v73
	v_mov_b32_e32 v221, v75
	v_mov_b32_e32 v233, v74
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v73, off, off offset:120
	scratch_load_b32 v75, off, off offset:112
	.loc	1 969 38                        ; ragged.py:969:38
	ds_load_2addr_stride64_b64 v[172:175], v83 offset1:8
	.loc	1 977 31                        ; ragged.py:977:31
	v_perm_b32 v0, v252, v249, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[49:56], v[186:187], v[106:107], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[188:189], v[106:107], v[57:64] neg_lo:[1,1,0]
	v_mov_b32_e32 v183, v70
	v_mov_b32_e32 v65, v72
	v_lshl_or_b32 v106, v66, 16, v0
	v_dual_mov_b32 v222, v77 :: v_dual_mov_b32 v231, v76
	v_mov_b32_e32 v229, v78
	scratch_load_b32 v74, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[172:173], v[98:99], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[174:175], v[98:99], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[172:173], v[100:101], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[174:175], v[100:101], v[25:32] neg_lo:[1,1,0]
	v_mov_b32_e32 v211, v67
	v_perm_b32 v67, v135, v254, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v102, v68, 16, v67
	v_perm_b32 v67, v217, v214, 0xc0c0004
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[213:214], off, off offset:16
	scratch_load_b64 v[96:97], off, off offset:8
	scratch_load_b64 v[86:87], off, off offset:88
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v87, v92
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[91:92], off, off offset:80
	scratch_load_b64 v[92:93], off, off offset:56
	v_mov_b32_e32 v89, v94
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[93:94], off, off offset:96
	scratch_load_b64 v[68:69], off, off offset:32
	v_wmma_i32_16x16x16_iu4 v[33:40], v[172:173], v[102:103], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[174:175], v[102:103], v[41:48] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v95, v68
	scratch_load_b64 v[68:69], off, off offset:48 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v94, v68
	v_perm_b32 v68, v206, v205, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v107, v68, 16, v67
	v_wmma_i32_16x16x16_iu4 v[49:56], v[172:173], v[106:107], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[174:175], v[106:107], v[57:64] neg_lo:[1,1,0]
	.loc	1 957 23                        ; ragged.py:957:23
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	s_clause 0x1f                           ; 128-byte Folded Reload
	scratch_load_b32 v109, off, off offset:124
	scratch_load_b32 v110, off, off offset:128
	scratch_load_b32 v111, off, off offset:132
	scratch_load_b32 v112, off, off offset:136
	scratch_load_b32 v113, off, off offset:140
	scratch_load_b32 v114, off, off offset:144
	scratch_load_b32 v115, off, off offset:148
	scratch_load_b32 v116, off, off offset:152
	scratch_load_b32 v117, off, off offset:156
	scratch_load_b32 v118, off, off offset:160
	scratch_load_b32 v119, off, off offset:164
	scratch_load_b32 v120, off, off offset:168
	scratch_load_b32 v121, off, off offset:172
	scratch_load_b32 v122, off, off offset:176
	scratch_load_b32 v123, off, off offset:180
	scratch_load_b32 v124, off, off offset:184
	scratch_load_b32 v125, off, off offset:188
	scratch_load_b32 v126, off, off offset:192
	scratch_load_b32 v127, off, off offset:196
	scratch_load_b32 v128, off, off offset:200
	scratch_load_b32 v129, off, off offset:204
	scratch_load_b32 v130, off, off offset:208
	scratch_load_b32 v131, off, off offset:212
	scratch_load_b32 v132, off, off offset:216
	scratch_load_b32 v133, off, off offset:220
	scratch_load_b32 v134, off, off offset:224
	scratch_load_b32 v136, off, off offset:228
	scratch_load_b32 v137, off, off offset:232
	scratch_load_b32 v138, off, off offset:236
	scratch_load_b32 v139, off, off offset:240
	scratch_load_b32 v140, off, off offset:244
	scratch_load_b32 v141, off, off offset:248
	s_clause 0x1f                           ; 128-byte Folded Reload
	scratch_load_b32 v142, off, off offset:252
	scratch_load_b32 v143, off, off offset:256
	scratch_load_b32 v144, off, off offset:260
	scratch_load_b32 v145, off, off offset:264
	scratch_load_b32 v146, off, off offset:268
	scratch_load_b32 v147, off, off offset:272
	scratch_load_b32 v148, off, off offset:276
	scratch_load_b32 v149, off, off offset:280
	scratch_load_b32 v150, off, off offset:284
	scratch_load_b32 v151, off, off offset:288
	scratch_load_b32 v152, off, off offset:292
	scratch_load_b32 v153, off, off offset:296
	scratch_load_b32 v154, off, off offset:300
	scratch_load_b32 v155, off, off offset:304
	scratch_load_b32 v156, off, off offset:308
	scratch_load_b32 v157, off, off offset:312
	scratch_load_b32 v158, off, off offset:316
	scratch_load_b32 v159, off, off offset:320
	scratch_load_b32 v160, off, off offset:324
	scratch_load_b32 v161, off, off offset:328
	scratch_load_b32 v162, off, off offset:332
	scratch_load_b32 v164, off, off offset:336
	scratch_load_b32 v165, off, off offset:340
	scratch_load_b32 v166, off, off offset:344
	scratch_load_b32 v167, off, off offset:348
	scratch_load_b32 v168, off, off offset:352
	scratch_load_b32 v170, off, off offset:356
	scratch_load_b32 v171, off, off offset:360
	scratch_load_b32 v177, off, off offset:364
	scratch_load_b32 v178, off, off offset:368
	scratch_load_b32 v179, off, off offset:372
	scratch_load_b32 v180, off, off offset:376
	s_clause 0x8                            ; 36-byte Folded Reload
	scratch_load_b32 v182, off, off offset:380
	scratch_load_b32 v78, off, off offset:104
	scratch_load_b32 v210, off, off offset:108
	scratch_load_b32 v76, off, off offset:384
	scratch_load_b32 v77, off, off offset:388
	scratch_load_b32 v208, off, off offset:392
	scratch_load_b32 v209, off, off offset:396
	scratch_load_b32 v84, off, off offset:400
	scratch_load_b32 v85, off, off offset:404
	.loc	1 988 27 is_stmt 1              ; ragged.py:988:27
	v_cvt_f32_i32_e32 v207, v1
	v_cvt_f32_i32_e32 v206, v2
	v_cvt_f32_i32_e32 v205, v3
	v_cvt_f32_i32_e32 v204, v4
	v_cvt_f32_i32_e32 v203, v5
	v_cvt_f32_i32_e32 v202, v6
	v_cvt_f32_i32_e32 v201, v7
	v_cvt_f32_i32_e32 v200, v8
	v_cvt_f32_i32_e32 v199, v9
	v_cvt_f32_i32_e32 v198, v10
	v_cvt_f32_i32_e32 v197, v11
	v_cvt_f32_i32_e32 v196, v12
	v_cvt_f32_i32_e32 v195, v13
	v_cvt_f32_i32_e32 v194, v14
	v_cvt_f32_i32_e32 v193, v15
	v_cvt_f32_i32_e32 v192, v16
	v_cvt_f32_i32_e32 v191, v17
	v_cvt_f32_i32_e32 v190, v18
	v_cvt_f32_i32_e32 v189, v19
	v_cvt_f32_i32_e32 v188, v20
	v_cvt_f32_i32_e32 v187, v21
	v_cvt_f32_i32_e32 v186, v22
	v_cvt_f32_i32_e32 v185, v23
	v_cvt_f32_i32_e32 v175, v24
	v_cvt_f32_i32_e32 v174, v25
	v_cvt_f32_i32_e32 v173, v26
	v_cvt_f32_i32_e32 v172, v27
	v_cvt_f32_i32_e32 v163, v28
	v_cvt_f32_i32_e32 v135, v29
	v_cvt_f32_i32_e32 v106, v30
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
	v_cvt_f32_i32_e32 v0, v62
	v_cvt_f32_i32_e32 v2, v63
	v_cvt_f32_i32_e32 v1, v64
	s_branch .LBB0_5
.LBB0_10:                               ; %Flow349
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:408
	scratch_load_b32 v37, off, off offset:412
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v35, 15, v0
.LBB0_11:                               ; %._crit_edge80
	.loc	1 889 36 is_stmt 1              ; ragged.py:889:36
	v_lshrrev_b32_e32 v0, 4, v0
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v1, 1, v37
	.loc	1 1009 22                       ; ragged.py:1009:22
	s_mul_i32 s3, s63, s61
	.loc	1 1009 13 is_stmt 0             ; ragged.py:1009:13
	s_waitcnt lgkmcnt(0)
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
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
	v_or_b32_e32 v0, s62, v4
	v_or_b32_e32 v11, s62, v7
	v_or_b32_e32 v12, s62, v8
	v_or_b32_e32 v2, s62, v6
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v14, 12, v3
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v1, s62, v5
	v_or_b32_e32 v13, s62, v9
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e32 vcc_lo, s61, v0
	v_cmp_gt_i32_e64 s6, s61, v11
	v_cmp_gt_i32_e64 s7, s61, v12
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v0, s62, v10
	.loc	1 889 36 is_stmt 0              ; ragged.py:889:36
	v_or_b32_e32 v11, 0x80, v3
	v_or_b32_e32 v12, 14, v3
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e64 s1, s61, v2
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v2, s62, v14
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s0, s61, v1
	v_cmp_gt_i32_e64 s8, s61, v13
	v_cmp_gt_i32_e64 s9, s61, v0
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v0, s62, v11
	v_or_b32_e32 v1, s62, v12
	.loc	1 889 36 is_stmt 0              ; ragged.py:889:36
	v_or_b32_e32 v13, 10, v3
	v_or_b32_e32 v15, 8, v3
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e64 s12, s61, v2
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_mul_lo_u32 v2, s61, v35
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s10, s61, v0
	v_cmp_gt_i32_e64 s11, s61, v1
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v0, s62, v13
	v_or_b32_e32 v1, s62, v15
	.loc	1 889 36 is_stmt 0              ; ragged.py:889:36
	v_or_b32_e32 v16, 6, v3
	v_or_b32_e32 v18, 2, v3
	v_or_b32_e32 v17, 4, v3
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v21, s62, v3
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e64 s13, s61, v0
	v_cmp_gt_i32_e64 s14, s61, v1
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v1, s62, v16
	v_or_b32_e32 v20, s62, v18
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_add3_u32 v0, s3, s62, v2
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v19, s62, v17
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s17, s61, v21
	v_cmp_gt_i32_e64 s15, s61, v1
	v_cmp_gt_i32_e64 s16, s61, v20
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v1, v0, v3, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s3, s61, v19
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v0, v18, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s18, s5, s17
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v21, v0, v17, 2
	v_cndmask_b32_e64 v22, 0x80000000, v1, s18
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s18, s5, s16
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_lshl_add_u32 v19, s61, 4, v0
	.loc	1 1009 13 is_stmt 0             ; ragged.py:1009:13
	v_cndmask_b32_e64 v23, 0x80000000, v2, s18
	.loc	1 1007 20 is_stmt 1             ; ragged.py:1007:20
	s_and_b32 s18, s5, s3
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_mad_u64_u32 v[1:2], null, s61, 48, v[0:1]
	.loc	1 1009 13 is_stmt 0             ; ragged.py:1009:13
	v_cndmask_b32_e64 v21, 0x80000000, v21, s18
	v_add_lshl_u32 v2, v0, v16, 2
	s_clause 0x2
	buffer_store_b32 v180, v22, s[48:51], 0 offen
	buffer_store_b32 v179, v23, s[48:51], 0 offen
	buffer_store_b32 v178, v21, s[48:51], 0 offen
	v_add_lshl_u32 v21, v0, v15, 2
	.loc	1 1007 20 is_stmt 1             ; ragged.py:1007:20
	s_and_b32 s18, s5, s15
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
	buffer_store_b32 v177, v2, s[48:51], 0 offen
	buffer_store_b32 v171, v21, s[48:51], 0 offen
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
	buffer_store_b32 v170, v22, s[48:51], 0 offen
	buffer_store_b32 v168, v23, s[48:51], 0 offen
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
	buffer_store_b32 v167, v2, s[48:51], 0 offen
	buffer_store_b32 v166, v21, s[48:51], 0 offen
	v_add_lshl_u32 v2, v0, v8, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s18
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s18, s5, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v21, v0, v7, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s18
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s18, s5, s7
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v165, v22, s[48:51], 0 offen
	buffer_store_b32 v164, v23, s[48:51], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s18
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s18, s5, s6
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v22, v0, v6, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s18
	.loc	1 1009 22 is_stmt 0             ; ragged.py:1009:22
	v_lshl_add_u32 v20, s61, 5, v0
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v23, v0, v5, 2
	v_add_lshl_u32 v0, v0, v4, 2
	.loc	1 1007 20 is_stmt 1             ; ragged.py:1007:20
	s_and_b32 s18, s5, s1
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v162, v2, s[48:51], 0 offen
	buffer_store_b32 v161, v21, s[48:51], 0 offen
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
	buffer_store_b32 v160, v22, s[48:51], 0 offen
	buffer_store_b32 v159, v23, s[48:51], 0 offen
	v_add_lshl_u32 v22, v19, v17, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s5, s4, s16
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v158, v0, s[48:51], 0 offen
	buffer_store_b32 v157, v2, s[48:51], 0 offen
	v_add_lshl_u32 v0, v19, v16, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s5, s4, s3
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v19, v15, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s5, s4, s15
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v156, v21, s[48:51], 0 offen
	buffer_store_b32 v155, v22, s[48:51], 0 offen
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
	buffer_store_b32 v154, v0, s[48:51], 0 offen
	buffer_store_b32 v153, v2, s[48:51], 0 offen
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
	buffer_store_b32 v152, v21, s[48:51], 0 offen
	buffer_store_b32 v151, v22, s[48:51], 0 offen
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
	buffer_store_b32 v150, v0, s[48:51], 0 offen
	buffer_store_b32 v149, v2, s[48:51], 0 offen
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
	buffer_store_b32 v148, v21, s[48:51], 0 offen
	buffer_store_b32 v147, v22, s[48:51], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s5, s4, s6
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v21, v19, v6, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	v_add_lshl_u32 v22, v19, v5, 2
	s_clause 0x1
	buffer_store_b32 v146, v0, s[48:51], 0 offen
	buffer_store_b32 v145, v2, s[48:51], 0 offen
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
	s_and_b32 s4, s39, s17
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v19, v20, v18, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	s_clause 0x1
	buffer_store_b32 v144, v21, s[48:51], 0 offen
	buffer_store_b32 v143, v22, s[48:51], 0 offen
	v_add_lshl_u32 v21, v20, v17, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s39, s16
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v142, v0, s[48:51], 0 offen
	buffer_store_b32 v141, v2, s[48:51], 0 offen
	v_add_lshl_u32 v0, v20, v16, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s39, s3
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v20, v15, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s39, s15
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v140, v19, s[48:51], 0 offen
	buffer_store_b32 v139, v21, s[48:51], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s39, s14
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v19, v20, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_add_lshl_u32 v21, v20, v14, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s39, s13
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v138, v0, s[48:51], 0 offen
	buffer_store_b32 v137, v2, s[48:51], 0 offen
	v_add_lshl_u32 v0, v20, v12, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s39, s12
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v20, v11, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s39, s11
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v136, v19, s[48:51], 0 offen
	buffer_store_b32 v134, v21, s[48:51], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s39, s10
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v19, v20, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_add_lshl_u32 v21, v20, v9, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s39, s9
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v133, v0, s[48:51], 0 offen
	buffer_store_b32 v132, v2, s[48:51], 0 offen
	v_add_lshl_u32 v0, v20, v8, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s39, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v20, v7, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s39, s7
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v131, v19, s[48:51], 0 offen
	buffer_store_b32 v130, v21, s[48:51], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s39, s6
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v19, v20, v6, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_add_lshl_u32 v21, v20, v5, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s39, s1
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v129, v0, s[48:51], 0 offen
	buffer_store_b32 v128, v2, s[48:51], 0 offen
	v_add_lshl_u32 v0, v20, v4, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s39, s0
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v1, v3, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s39, vcc_lo
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
	s_and_b32 s3, s2, s3
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	s_clause 0x1
	buffer_store_b32 v127, v19, s[48:51], 0 offen
	buffer_store_b32 v126, v21, s[48:51], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	s_clause 0x1
	buffer_store_b32 v125, v0, s[48:51], 0 offen
	buffer_store_b32 v124, v2, s[48:51], 0 offen
	v_add_lshl_u32 v0, v1, v16, 2
	v_add_lshl_u32 v2, v1, v15, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s15
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v123, v3, s[48:51], 0 offen
	buffer_store_b32 v122, v17, s[48:51], 0 offen
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
	buffer_store_b32 v121, v0, s[48:51], 0 offen
	buffer_store_b32 v120, v2, s[48:51], 0 offen
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
	buffer_store_b32 v119, v3, s[48:51], 0 offen
	buffer_store_b32 v118, v13, s[48:51], 0 offen
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
	buffer_store_b32 v116, v0, s[48:51], 0 offen
	buffer_store_b32 v115, v2, s[48:51], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v0, v1, v8, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_add_lshl_u32 v2, v1, v7, 2
	s_clause 0x1
	buffer_store_b32 v113, v3, s[48:51], 0 offen
	buffer_store_b32 v112, v9, s[48:51], 0 offen
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
	buffer_store_b32 v110, v0, s[48:51], 0 offen
	buffer_store_b32 v109, v2, s[48:51], 0 offen
	buffer_store_b32 v117, v3, s[48:51], 0 offen
	buffer_store_b32 v114, v4, s[48:51], 0 offen
	buffer_store_b32 v111, v1, s[48:51], 0 offen
	.loc	1 856 5                         ; ragged.py:856:5
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 420
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
		.amdhsa_next_free_sgpr 70
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 70
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 420
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12020
; TotalNumSgprs: 72
; NumVgprs: 256
; ScratchSize: 420
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 72
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 420
    .sgpr_count:     72
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 104
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
