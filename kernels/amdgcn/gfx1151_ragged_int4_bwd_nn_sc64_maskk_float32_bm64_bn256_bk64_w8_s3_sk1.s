	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 856 0                         ; ragged.py:856:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[50:51], s[0:1], 0x30
.Ltmp0:
	.loc	1 883 20 prologue_end           ; ragged.py:883:20
	s_abs_i32 s9, s2
	.loc	1 888 36                        ; ragged.py:888:36
	v_and_b32_e32 v125, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:880:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s50, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:881:21 ]
	s_add_i32 s5, s51, 0xff
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
	s_sub_i32 s14, s5, s8
	.loc	1 885 17                        ; ragged.py:885:17
	s_sub_i32 s5, 0, s7
	.loc	1 884 22                        ; ragged.py:884:22
	s_mul_i32 s4, s14, s4
	.loc	1 885 17                        ; ragged.py:885:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 884 16                        ; ragged.py:884:16
	s_sub_i32 s2, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 885 17                        ; ragged.py:885:17
	s_abs_i32 s8, s2
	s_xor_b32 s10, s2, s6
	s_ashr_i32 s10, s10, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	.loc	1 888 36                        ; ragged.py:888:36
	v_and_b32_e32 v1, 0xe0, v0
	.loc	1 885 17                        ; ragged.py:885:17
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s5, s9
	s_mul_hi_u32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s9, s8, s9
	s_mul_i32 s11, s9, s7
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_ashr_i32 s15, s14, 31
	.loc	1 885 17                        ; ragged.py:885:17
	s_xor_b32 s7, s7, s10
	s_mov_b32 s11, 0
	s_sub_i32 s8, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 886 24                        ; ragged.py:886:24
	s_mul_i32 s9, s8, s6
	.loc	1 892 19                        ; ragged.py:892:19
	s_lshl_b64 s[6:7], s[14:15], 2
	.loc	1 886 17                        ; ragged.py:886:17
	s_sub_i32 s10, s2, s9
	.loc	1 888 18                        ; ragged.py:888:18
	s_lshl_b32 s8, s8, 6
	.loc	1 892 19                        ; ragged.py:892:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s6
	s_addc_u32 s5, s5, s7
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v2, s8, v125
	.loc	1 892 19                        ; ragged.py:892:19
	s_load_b32 s6, s[4:5], 0x0
	.loc	1 962 39                        ; ragged.py:962:39
	s_mul_i32 s9, s14, s50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v3, 16, v2
	v_or_b32_e32 v4, 32, v2
	v_or_b32_e32 v5, 48, v2
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e64 s24, s50, v2
	v_cmp_gt_i32_e64 s19, s50, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s5, s50, v4
	v_cmp_gt_i32_e64 s4, s50, v5
	.loc	1 893 27                        ; ragged.py:893:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s7, s6, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 953 19                        ; ragged.py:953:19
	s_cmp_gt_i32 s7, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge16_crit_edge
	.loc	1 1009 22                       ; ragged.py:1009:22
	s_add_i32 s2, s8, s9
	s_lshl_b32 s22, s51, 4
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; ragged.py:0:22
	s_mov_b32 s11, -1
                                        ; implicit-def: $sgpr2
                                        ; implicit-def: $sgpr22
.LBB0_3:                                ; %Flow298
	s_load_b64 s[20:21], s[0:1], 0x28
	v_lshrrev_b32_e32 v156, 1, v1
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v157, 0
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
	s_and_not1_b32 vcc_lo, exec_lo, s11
	s_lshl_b32 s15, s10, 8
	s_cbranch_vccnz .LBB0_11
; %bb.4:                                ; %.preheader.lr.ph
                                        ; implicit-def: $vgpr242 : SGPR spill to VGPR lane
	s_load_b256 s[36:43], s[0:1], 0x0
	.loc	1 888 36 is_stmt 1              ; ragged.py:888:36
	s_waitcnt lgkmcnt(0)
	v_writelane_b32 v242, s20, 0
	s_load_b64 s[16:17], s[0:1], 0x38
	.loc	1 893 26                        ; ragged.py:893:26
	s_lshr_b32 s0, s7, 31
	.loc	1 888 36                        ; ragged.py:888:36
	v_lshrrev_b32_e32 v1, 5, v1
	.loc	1 893 26                        ; ragged.py:893:26
	s_add_i32 s7, s7, s0
	.loc	1 888 36                        ; ragged.py:888:36
	v_writelane_b32 v242, s21, 1
	.loc	1 972 37                        ; ragged.py:972:37
	s_and_b32 s6, s6, 0x80000001
	.loc	1 893 26                        ; ragged.py:893:26
	s_ashr_i32 s71, s7, 1
	.loc	1 956 23                        ; ragged.py:956:23
	s_lshl_b32 s0, s3, 5
	.loc	1 972 37                        ; ragged.py:972:37
	s_cmp_eq_u32 s6, 1
	.loc	1 888 36                        ; ragged.py:888:36
	v_writelane_b32 v242, s22, 2
	.loc	1 888 18 is_stmt 0              ; ragged.py:888:18
	v_or_b32_e32 v2, s8, v1
	.loc	1 889 18 is_stmt 1              ; ragged.py:889:18
	v_or_b32_e32 v89, s15, v0
	.loc	1 972 37                        ; ragged.py:972:37
	s_cselect_b32 s73, -1, 0
	.loc	1 972 67 is_stmt 0              ; ragged.py:972:67
	s_add_i32 s74, s71, -1
	.loc	1 888 36 is_stmt 1              ; ragged.py:888:36
	v_writelane_b32 v242, s23, 3
	s_cmp_lt_i32 s0, 32
	.loc	1 888 18 is_stmt 0              ; ragged.py:888:18
	v_or_b32_e32 v3, 8, v2
	s_cselect_b32 s3, -1, 0
	s_lshl_b32 s1, s51, 4
	v_writelane_b32 v242, s15, 4
	v_mad_u64_u32 v[90:91], null, s51, 3, v[89:90]
	v_or_b32_e32 v4, 16, v2
	v_or_b32_e32 v5, 24, v2
	v_writelane_b32 v242, s0, 5
	s_add_i32 s0, s8, s9
	v_or_b32_e32 v6, 32, v2
	v_dual_mov_b32 v180, 0 :: v_dual_add_nc_u32 v1, s0, v1
	v_writelane_b32 v242, s1, 6
	v_or_b32_e32 v7, 40, v2
	v_or_b32_e32 v8, 48, v2
	v_or_b32_e32 v9, 56, v2
	.loc	1 890 20 is_stmt 1              ; ragged.py:890:20
	v_cmp_gt_i32_e64 s2, s50, v2
	v_cmp_gt_i32_e64 s13, s50, v3
	v_dual_mov_b32 v181, 0 :: v_dual_add_nc_u32 v2, 8, v1
	v_dual_mov_b32 v178, 0 :: v_dual_add_nc_u32 v3, 16, v1
	v_writelane_b32 v242, s0, 7
	v_mad_u64_u32 v[91:92], null, s51, 5, v[89:90]
	v_mad_u64_u32 v[92:93], null, s51, 6, v[89:90]
	v_cmp_gt_i32_e64 s6, s50, v4
	v_cmp_gt_i32_e64 s7, s50, v5
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v182, v1, s16
	v_mul_lo_u32 v183, v2, s16
	v_mul_lo_u32 v184, v3, s16
	v_dual_mov_b32 v179, 0 :: v_dual_add_nc_u32 v2, 24, v1
	v_dual_mov_b32 v176, 0 :: v_dual_add_nc_u32 v3, 32, v1
	v_dual_mov_b32 v177, 0 :: v_dual_add_nc_u32 v4, 40, v1
	v_dual_mov_b32 v174, 0 :: v_dual_add_nc_u32 v5, 48, v1
	v_dual_mov_b32 v172, 0 :: v_dual_add_nc_u32 v1, 56, v1
	v_mad_u64_u32 v[93:94], null, s51, 7, v[89:90]
	.loc	1 953 19                        ; ragged.py:953:19
	v_writelane_b32 v242, s4, 8
	v_mad_u64_u32 v[94:95], null, s51, 9, v[89:90]
	v_mad_u64_u32 v[95:96], null, s51, 10, v[89:90]
	v_mad_u64_u32 v[96:97], null, s51, 11, v[89:90]
	v_mad_u64_u32 v[97:98], null, s51, 12, v[89:90]
	v_mul_lo_u32 v185, v2, s16
	v_mul_lo_u32 v189, v1, s16
	v_bfe_i32 v1, v0, 7, 1
	v_dual_mov_b32 v175, 0 :: v_dual_lshlrev_b32 v2, 1, v0
	v_dual_mov_b32 v166, 0 :: v_dual_add_nc_u32 v11, s0, v125
	v_mad_u64_u32 v[98:99], null, s51, 13, v[89:90]
	v_writelane_b32 v242, s5, 9
	v_mad_u64_u32 v[99:100], null, s51, 14, v[89:90]
	v_mad_u64_u32 v[100:101], null, s51, 15, v[89:90]
	v_mad_u64_u32 v[101:102], null, s51, 17, v[89:90]
	v_mad_u64_u32 v[102:103], null, s51, 18, v[89:90]
	v_mul_lo_u32 v186, v3, s16
	v_mul_lo_u32 v187, v4, s16
	v_dual_mov_b32 v170, 0 :: v_dual_and_b32 v3, 0x7f, v0
	v_dual_mov_b32 v168, 0 :: v_dual_and_b32 v1, 0x88, v1
	v_dual_mov_b32 v173, 0 :: v_dual_and_b32 v4, 24, v2
	v_dual_mov_b32 v164, 0 :: v_dual_add_nc_u32 v15, 16, v11
	v_mul_lo_u32 v196, v11, s17
	v_dual_mov_b32 v169, 0 :: v_dual_add_nc_u32 v16, 32, v11
	v_dual_mov_b32 v162, 0 :: v_dual_add_nc_u32 v11, 48, v11
	v_dual_mov_b32 v160, 0 :: v_dual_and_b32 v17, 0xf0, v0
	v_dual_mov_b32 v167, 0 :: v_dual_lshlrev_b32 v18, 5, v0
	v_mad_u64_u32 v[103:104], null, s51, 19, v[89:90]
	v_writelane_b32 v242, s19, 10
	v_mad_u64_u32 v[104:105], null, s51, 20, v[89:90]
	v_mad_u64_u32 v[105:106], null, s51, 21, v[89:90]
	v_mad_u64_u32 v[106:107], null, s51, 22, v[89:90]
	v_mad_u64_u32 v[107:108], null, s51, 23, v[89:90]
	v_xor_b32_e32 v192, v1, v3
	v_lshl_or_b32 v193, v125, 5, v4
	v_mul_lo_u32 v197, v15, s17
	v_mul_lo_u32 v198, v16, s17
	v_mul_lo_u32 v199, v11, s17
	v_dual_mov_b32 v158, 0 :: v_dual_lshlrev_b32 v11, 2, v17
	v_dual_mov_b32 v154, 0 :: v_dual_and_b32 v15, 32, v18
	v_cndmask_b32_e64 v16, 0, 1, s3
	v_mad_u64_u32 v[108:109], null, s51, 24, v[89:90]
	v_writelane_b32 v242, s24, 11
	v_mad_u64_u32 v[109:110], null, s51, 25, v[89:90]
	v_mad_u64_u32 v[110:111], null, s51, 26, v[89:90]
	.loc	1 966 39                        ; ragged.py:966:39
	s_mul_i32 s49, s14, s16
	.loc	1 998 37                        ; ragged.py:998:37
	s_mul_i32 s14, s14, s17
	v_mad_u64_u32 v[111:112], null, s51, 27, v[89:90]
	v_mad_u64_u32 v[112:113], null, s51, 28, v[89:90]
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e64 s8, s50, v6
	v_cmp_gt_i32_e64 s68, s50, v7
	v_cmp_gt_i32_e64 s48, s50, v8
	v_cmp_gt_i32_e64 s69, s50, v9
	v_mul_lo_u32 v188, v5, s16
	v_xor_b32_e32 v1, 0x110, v192
	v_xor_b32_e32 v3, 8, v193
	v_xor_b32_e32 v4, 16, v193
	v_xor_b32_e32 v5, 24, v193
	v_or_b32_e32 v6, 0x300, v0
	v_or_b32_e32 v7, 0x700, v0
	v_or_b32_e32 v8, 0xb00, v0
	v_or_b32_e32 v9, 0xf00, v0
	v_or_b32_e32 v10, 0x1300, v0
	v_or_b32_e32 v12, 0x1700, v0
	v_or_b32_e32 v13, 0x1b00, v0
	v_or_b32_e32 v14, 0x1f00, v0
	v_dual_mov_b32 v165, 0 :: v_dual_and_b32 v2, 28, v2
	v_add3_u32 v11, 0, v11, v15
	v_dual_mov_b32 v152, 0 :: v_dual_lshlrev_b32 v15, 1, v17
	v_cmp_ne_u32_e64 s3, 1, v16
	v_mad_u64_u32 v[113:114], null, s51, 29, v[89:90]
	.loc	1 953 19                        ; ragged.py:953:19
	v_writelane_b32 v242, s14, 12
	v_mad_u64_u32 v[114:115], null, s51, 30, v[89:90]
	v_mad_u64_u32 v[115:116], null, s51, 31, v[89:90]
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s12, s51, v89
	v_lshl_add_u32 v190, s51, 2, v89
	v_lshl_add_u32 v191, s51, 3, v89
	v_dual_mov_b32 v171, 0 :: v_dual_add_nc_u32 v194, s1, v89
	v_add3_u32 v195, 0, v156, v125
	v_dual_mov_b32 v163, 0 :: v_dual_add_nc_u32 v200, 0, v1
	v_dual_mov_b32 v150, 0 :: v_dual_add_nc_u32 v201, 0, v3
	v_dual_mov_b32 v161, 0 :: v_dual_add_nc_u32 v202, 0, v4
	v_dual_mov_b32 v148, 0 :: v_dual_add_nc_u32 v203, 0, v5
	v_dual_mov_b32 v159, 0 :: v_dual_add_nc_u32 v204, 0, v0
	v_dual_mov_b32 v146, 0 :: v_dual_add_nc_u32 v205, 0, v6
	v_dual_mov_b32 v157, 0 :: v_dual_add_nc_u32 v206, 0, v7
	v_dual_mov_b32 v144, 0 :: v_dual_add_nc_u32 v207, 0, v8
	v_dual_mov_b32 v155, 0 :: v_dual_add_nc_u32 v208, 0, v9
	v_dual_mov_b32 v142, 0 :: v_dual_add_nc_u32 v209, 0, v10
	v_dual_mov_b32 v153, 0 :: v_dual_add_nc_u32 v210, 0, v12
	v_dual_mov_b32 v140, 0 :: v_dual_add_nc_u32 v211, 0, v13
	v_dual_mov_b32 v151, 0 :: v_dual_add_nc_u32 v212, 0, v14
	v_dual_mov_b32 v138, 0 :: v_dual_add_nc_u32 v213, v11, v2
	v_dual_mov_b32 v149, 0 :: v_dual_add_nc_u32 v214, 0, v15
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v116, 0
	v_mov_b32_e32 v123, 0
	v_mov_b32_e32 v119, 0
	v_mov_b32_e32 v117, 0
	v_mov_b32_e32 v121, 0
	.loc	1 953 19                        ; ragged.py:953:19
	v_writelane_b32 v242, s3, 13
	s_and_b32 s57, s37, 0xffff
	s_mov_b32 s56, s36
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	s_and_b32 s61, s39, 0xffff
	s_mov_b32 s60, s38
	s_mov_b32 s1, 0
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s21, s43, 0xffff
	s_mov_b32 s20, s42
	s_lshr_b32 s15, s74, 5
	s_mov_b32 s50, 0
	v_writelane_b32 v242, s15, 14
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 990 40                        ; ragged.py:990:40
	v_add_lshl_u32 v33, v196, s1, 1
	.loc	1 998 25                        ; ragged.py:998:25
	s_add_i32 s0, s1, s14
	.loc	1 990 40                        ; ragged.py:990:40
	v_add_lshl_u32 v34, v197, s1, 1
	v_add_lshl_u32 v35, v198, s1, 1
	.loc	1 998 25                        ; ragged.py:998:25
	s_mul_i32 s0, s0, s51
	.loc	1 990 40                        ; ragged.py:990:40
	v_add_lshl_u32 v36, v199, s1, 1
	.loc	1 997 40                        ; ragged.py:997:40
	v_add_lshl_u32 v37, v89, s0, 1
	.loc	1 990 40                        ; ragged.py:990:40
	v_cndmask_b32_e64 v33, 0x80000000, v33, s24
	v_cndmask_b32_e64 v34, 0x80000000, v34, s19
	v_cndmask_b32_e64 v35, 0x80000000, v35, s5
	s_mov_b32 s42, s58
	s_mov_b32 s43, s59
	v_cndmask_b32_e64 v36, 0x80000000, v36, s4
	.loc	1 997 40                        ; ragged.py:997:40
	v_cndmask_b32_e64 v37, 0x80000000, v37, s12
	s_mov_b32 s22, s58
	s_mov_b32 s23, s59
	.loc	1 990 40                        ; ragged.py:990:40
	s_clause 0x3
	buffer_load_u16 v33, v33, s[40:43], 0 offen
	buffer_load_u16 v34, v34, s[40:43], 0 offen
	buffer_load_u16 v35, v35, s[40:43], 0 offen
	buffer_load_u16 v36, v36, s[40:43], 0 offen
	.loc	1 997 40                        ; ragged.py:997:40
	buffer_load_u16 v37, v37, s[20:23], 0 offen
	.loc	1 1002 21                       ; ragged.py:1002:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1004 17                       ; ragged.py:1004:17
	s_add_i32 s0, s1, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 953 19                        ; ragged.py:953:19
	s_lshl_b32 s50, s0, 5
	s_cmp_lg_u32 s1, s15
	s_mov_b32 s1, s0
	.loc	1 990 40                        ; ragged.py:990:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 995 21                        ; ragged.py:995:21
	v_dual_mul_f32 v54, v79, v34 :: v_dual_lshlrev_b32 v33, 16, v33
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v38, v222, v33 :: v_dual_lshlrev_b32 v35, 16, v35
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v41, v219, v33 :: v_dual_lshlrev_b32 v36, 16, v36
	v_mul_f32_e32 v39, v221, v33
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v56, v77, v34 :: v_dual_lshlrev_b32 v37, 16, v37
	v_dual_mul_f32 v40, v220, v33 :: v_dual_mul_f32 v55, v78, v34
	v_dual_mul_f32 v42, v218, v33 :: v_dual_mul_f32 v53, v80, v34
	v_dual_mul_f32 v43, v217, v33 :: v_dual_mul_f32 v58, v75, v34
	v_dual_mul_f32 v44, v216, v33 :: v_dual_mul_f32 v59, v74, v34
	v_dual_mul_f32 v45, v215, v33 :: v_dual_mul_f32 v60, v73, v34
	v_dual_mul_f32 v46, v88, v33 :: v_dual_mul_f32 v63, v70, v34
	v_dual_mul_f32 v47, v87, v33 :: v_dual_mul_f32 v64, v69, v34
	v_dual_mul_f32 v48, v86, v33 :: v_dual_mul_f32 v57, v76, v34
	v_dual_mul_f32 v49, v85, v33 :: v_dual_mul_f32 v62, v71, v34
	v_dual_mul_f32 v50, v84, v33 :: v_dual_mul_f32 v67, v67, v34
	v_dual_mul_f32 v51, v83, v33 :: v_dual_mul_f32 v68, v68, v34
	v_dual_mul_f32 v52, v82, v33 :: v_dual_mul_f32 v61, v72, v34
	v_dual_mul_f32 v33, v81, v33 :: v_dual_mul_f32 v66, v66, v34
	v_dual_mul_f32 v34, v65, v34 :: v_dual_mul_f32 v31, v31, v35
	v_dual_mul_f32 v32, v32, v35 :: v_dual_mul_f32 v15, v15, v36
	v_dual_mul_f32 v30, v30, v35 :: v_dual_mul_f32 v79, v13, v36
	v_dual_mul_f32 v29, v29, v35 :: v_dual_mul_f32 v16, v16, v36
	v_dual_mul_f32 v65, v28, v35 :: v_dual_mul_f32 v10, v10, v36
	v_dual_mul_f32 v69, v27, v35 :: v_dual_mul_f32 v80, v12, v36
	v_dual_mul_f32 v70, v26, v35 :: v_dual_mul_f32 v81, v11, v36
	v_dual_mul_f32 v71, v25, v35 :: v_dual_mul_f32 v8, v8, v36
	v_mul_f32_e32 v72, v24, v35
	v_dual_mul_f32 v73, v23, v35 :: v_dual_mul_f32 v6, v6, v36
	v_dual_mul_f32 v74, v22, v35 :: v_dual_mul_f32 v9, v9, v36
	v_dual_mul_f32 v75, v21, v35 :: v_dual_mul_f32 v4, v4, v36
	v_dual_mul_f32 v76, v20, v35 :: v_dual_mul_f32 v7, v7, v36
	v_dual_mul_f32 v77, v19, v35 :: v_dual_mul_f32 v2, v2, v36
	v_dual_mul_f32 v78, v18, v35 :: v_dual_mul_f32 v5, v5, v36
	v_mul_f32_e32 v35, v17, v35
	.loc	1 1002 21                       ; ragged.py:1002:21
	ds_store_b32 v213, v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v214
	ds_load_b128 v[21:24], v214 offset:16
	.loc	1 995 21                        ; ragged.py:995:21
	v_mul_f32_e32 v37, v14, v36
	.loc	1 1002 21                       ; ragged.py:1002:21
	ds_load_b128 v[11:14], v214 offset:512
	ds_load_b128 v[25:28], v214 offset:528
	.loc	1 995 21                        ; ragged.py:995:21
	v_mul_f32_e32 v3, v3, v36
	v_mul_f32_e32 v1, v1, v36
	.loc	1 1003 17                       ; ragged.py:1003:17
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v181, v38, v17 :: v_dual_fmac_f32 v178, v41, v20
	v_dual_fmac_f32 v180, v39, v18 :: v_dual_fmac_f32 v179, v40, v19
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v174, v45, v24 :: v_dual_fmac_f32 v177, v42, v21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v172, v47, v12
	v_dual_fmac_f32 v176, v43, v22 :: v_dual_fmac_f32 v175, v44, v23
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v168, v51, v26 :: v_dual_fmac_f32 v173, v46, v11
	v_dual_fmac_f32 v166, v33, v28 :: v_dual_fmac_f32 v171, v48, v13
	v_fmac_f32_e32 v164, v54, v18
	v_dual_fmac_f32 v170, v49, v14 :: v_dual_fmac_f32 v169, v50, v25
	v_fmac_f32_e32 v162, v56, v20
	v_dual_fmac_f32 v167, v52, v27 :: v_dual_fmac_f32 v160, v58, v22
	v_dual_fmac_f32 v165, v53, v17 :: v_dual_fmac_f32 v158, v60, v24
	v_dual_fmac_f32 v163, v55, v19 :: v_dual_fmac_f32 v152, v68, v25
	v_dual_fmac_f32 v161, v57, v21 :: v_dual_fmac_f32 v150, v66, v27
	v_dual_fmac_f32 v159, v59, v23 :: v_dual_fmac_f32 v148, v32, v17
	v_dual_fmac_f32 v157, v61, v11 :: v_dual_fmac_f32 v154, v63, v13
	v_dual_fmac_f32 v155, v62, v12 :: v_dual_fmac_f32 v144, v65, v21
	v_dual_fmac_f32 v153, v64, v14 :: v_dual_fmac_f32 v146, v30, v19
	v_dual_fmac_f32 v151, v67, v26 :: v_dual_fmac_f32 v142, v70, v23
	v_dual_fmac_f32 v149, v34, v28 :: v_dual_fmac_f32 v140, v72, v11
	v_dual_fmac_f32 v147, v31, v18 :: v_dual_fmac_f32 v138, v74, v13
	v_dual_fmac_f32 v145, v29, v20 :: v_dual_fmac_f32 v136, v76, v25
	v_dual_fmac_f32 v143, v69, v22 :: v_dual_fmac_f32 v134, v78, v27
	v_dual_fmac_f32 v141, v71, v24 :: v_dual_fmac_f32 v132, v16, v17
	v_dual_fmac_f32 v139, v73, v12 :: v_dual_fmac_f32 v128, v80, v21
	v_dual_fmac_f32 v137, v75, v14 :: v_dual_fmac_f32 v130, v37, v19
	v_dual_fmac_f32 v135, v77, v26 :: v_dual_fmac_f32 v126, v10, v23
	v_dual_fmac_f32 v133, v35, v28 :: v_dual_fmac_f32 v118, v5, v14
	v_dual_fmac_f32 v131, v15, v18 :: v_dual_fmac_f32 v124, v9, v24
	v_fmac_f32_e32 v129, v79, v20
	v_dual_fmac_f32 v127, v81, v22 :: v_dual_fmac_f32 v120, v7, v12
	v_dual_fmac_f32 v123, v8, v11 :: v_dual_fmac_f32 v122, v3, v26
	v_dual_fmac_f32 v119, v6, v13 :: v_dual_fmac_f32 v116, v1, v28
	v_fmac_f32_e32 v117, v4, v25
	v_fmac_f32_e32 v121, v2, v27
	.loc	1 953 19                        ; ragged.py:953:19
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
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v222, 0
	.loc	1 957 23 is_stmt 1              ; ragged.py:957:23
	s_and_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_writelane_b32 v242, s20, 15
	v_mov_b32_e32 v1, 0
	v_writelane_b32 v242, s21, 16
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_writelane_b32 v242, s22, 17
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v9, v1
	v_writelane_b32 v242, s23, 18
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_writelane_b32 v242, s1, 19
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v17, v1
	v_writelane_b32 v242, s36, 20
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v21, v1
	v_writelane_b32 v242, s37, 21
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v25, v1
	v_writelane_b32 v242, s38, 22
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_writelane_b32 v242, s39, 23
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v33, v1
	v_writelane_b32 v242, s40, 24
	v_mov_b32_e32 v34, v1
	v_mov_b32_e32 v35, v1
	v_mov_b32_e32 v36, v1
	v_mov_b32_e32 v37, v1
	v_writelane_b32 v242, s41, 25
	v_mov_b32_e32 v38, v1
	v_mov_b32_e32 v39, v1
	v_mov_b32_e32 v40, v1
	v_mov_b32_e32 v41, v1
	v_writelane_b32 v242, s42, 26
	v_mov_b32_e32 v42, v1
	v_mov_b32_e32 v43, v1
	v_mov_b32_e32 v44, v1
	v_mov_b32_e32 v45, v1
	v_writelane_b32 v242, s43, 27
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
	v_readlane_b32 s0, v242, 5
.LBB0_8:                                ; %.lr.ph
                                        ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 958 26 is_stmt 1              ; ragged.py:958:26
	s_add_i32 s15, s0, s50
	v_writelane_b32 v242, s0, 28
	s_or_b32 s55, s15, 1
	s_or_b32 s62, s15, 2
	s_or_b32 s63, s15, 3
	s_or_b32 s66, s15, 4
	s_or_b32 s67, s15, 5
	s_or_b32 s76, s15, 6
	s_or_b32 s77, s15, 7
	s_or_b32 s78, s15, 8
	s_or_b32 s79, s15, 9
	s_or_b32 s80, s15, 10
	s_or_b32 s81, s15, 11
	s_or_b32 s82, s15, 12
	s_or_b32 s83, s15, 13
	s_or_b32 s84, s15, 14
	s_or_b32 s85, s15, 15
	s_or_b32 s86, s15, 16
	s_or_b32 s87, s15, 17
	s_mov_b32 s11, s8
	s_mov_b32 s8, s13
	s_or_b32 s13, s15, 18
	s_or_b32 s47, s15, 19
	s_mov_b32 s10, s7
	s_mov_b32 s7, s2
	s_or_b32 s2, s15, 20
	s_or_b32 s19, s15, 21
	s_or_b32 s4, s15, 22
	s_or_b32 s5, s15, 23
	s_or_b32 s52, s15, 24
	s_or_b32 s53, s15, 25
	s_or_b32 s46, s15, 26
	s_or_b32 s64, s15, 27
	s_or_b32 s65, s15, 28
	s_or_b32 s0, s15, 29
	s_or_b32 s1, s15, 30
	s_mov_b32 s9, s6
	s_or_b32 s6, s15, 31
	.loc	1 971 35                        ; ragged.py:971:35
	s_cmp_lt_i32 s15, s71
	.loc	1 951 28                        ; ragged.py:951:28
	v_and_b32_e32 v65, 31, v0
	.loc	1 971 35                        ; ragged.py:971:35
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s55, s71
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s62, s71
	.loc	1 958 26                        ; ragged.py:958:26
	v_or_b32_e32 v65, s15, v65
	.loc	1 971 35                        ; ragged.py:971:35
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s63, s71
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s66, s71
	.loc	1 971 60 is_stmt 0              ; ragged.py:971:60
	v_subrev_nc_u32_e32 v66, s50, v65
	.loc	1 971 35                        ; ragged.py:971:35
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s67, s71
	v_cmp_gt_i32_e64 s3, s71, v65
	s_cselect_b32 s21, -1, 0
	s_cmp_lt_i32 s76, s71
	.loc	1 971 59                        ; ragged.py:971:59
	v_cmp_gt_i32_e32 vcc_lo, 32, v66
	.loc	1 971 35                        ; ragged.py:971:35
	s_cselect_b32 s22, -1, 0
	s_cmp_lt_i32 s77, s71
	v_add_nc_u32_e32 v68, v65, v185
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s78, s71
	v_add_nc_u32_e32 v67, v65, v183
	s_cselect_b32 s24, -1, 0
	s_cmp_lt_i32 s79, s71
	v_add_nc_u32_e32 v66, v65, v182
	s_cselect_b32 s25, -1, 0
	s_cmp_lt_i32 s80, s71
	v_add_nc_u32_e32 v70, v65, v189
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s81, s71
	v_add_nc_u32_e32 v69, v65, v187
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s82, s71
	.loc	1 972 60 is_stmt 1              ; ragged.py:972:60
	v_cmp_eq_u32_e64 s14, s74, v65
	.loc	1 971 35                        ; ragged.py:971:35
	s_cselect_b32 s28, -1, 0
	s_cmp_lt_i32 s83, s71
	s_cselect_b32 s29, -1, 0
	s_cmp_lt_i32 s84, s71
	s_cselect_b32 s30, -1, 0
	s_cmp_lt_i32 s85, s71
	s_cselect_b32 s31, -1, 0
	s_cmp_lt_i32 s86, s71
	s_cselect_b32 s33, -1, 0
	s_cmp_lt_i32 s87, s71
	s_cselect_b32 s34, -1, 0
	s_cmp_lt_i32 s13, s71
	s_cselect_b32 s35, -1, 0
	s_cmp_lt_i32 s47, s71
	s_cselect_b32 s36, -1, 0
	s_cmp_lt_i32 s2, s71
	s_cselect_b32 s37, -1, 0
	s_cmp_lt_i32 s19, s71
	s_cselect_b32 s38, -1, 0
	s_cmp_lt_i32 s4, s71
	s_cselect_b32 s39, -1, 0
	s_cmp_lt_i32 s5, s71
	s_cselect_b32 s40, -1, 0
	s_cmp_lt_i32 s52, s71
	s_cselect_b32 s41, -1, 0
	s_cmp_lt_i32 s53, s71
	s_cselect_b32 s42, -1, 0
	s_cmp_lt_i32 s46, s71
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s64, s71
	s_cselect_b32 s44, -1, 0
	s_cmp_lt_i32 s65, s71
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s0, s71
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s1, s71
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s6, s71
	s_cselect_b32 s75, -1, 0
	.loc	1 971 34 is_stmt 0              ; ragged.py:971:34
	s_and_b32 s3, s3, vcc_lo
	.loc	1 972 60 is_stmt 1              ; ragged.py:972:60
	s_cmp_eq_u32 s15, s74
	s_cselect_b32 vcc_hi, -1, 0
	s_cmp_eq_u32 s55, s74
	s_cselect_b32 s104, -1, 0
	s_cmp_eq_u32 s62, s74
	.loc	1 974 38                        ; ragged.py:974:38
	s_mov_b32 s62, s58
	.loc	1 972 60                        ; ragged.py:972:60
	s_cselect_b32 s103, -1, 0
	s_cmp_eq_u32 s63, s74
	.loc	1 974 38                        ; ragged.py:974:38
	s_mov_b32 s63, s59
	.loc	1 972 60                        ; ragged.py:972:60
	s_cselect_b32 s102, -1, 0
	s_cmp_eq_u32 s66, s74
	s_cselect_b32 s101, -1, 0
	s_cmp_eq_u32 s67, s74
	s_cselect_b32 s100, -1, 0
	s_cmp_eq_u32 s76, s74
	s_cselect_b32 s99, -1, 0
	s_cmp_eq_u32 s77, s74
	s_cselect_b32 s98, -1, 0
	s_cmp_eq_u32 s78, s74
	s_cselect_b32 s97, -1, 0
	s_cmp_eq_u32 s79, s74
	s_cselect_b32 s96, -1, 0
	s_cmp_eq_u32 s80, s74
	s_cselect_b32 s95, -1, 0
	s_cmp_eq_u32 s81, s74
	s_cselect_b32 s94, -1, 0
	s_cmp_eq_u32 s82, s74
	s_cselect_b32 s93, -1, 0
	s_cmp_eq_u32 s83, s74
	s_cselect_b32 s92, -1, 0
	s_cmp_eq_u32 s84, s74
	s_cselect_b32 s91, -1, 0
	s_cmp_eq_u32 s85, s74
	s_cselect_b32 s90, -1, 0
	s_cmp_eq_u32 s86, s74
	s_cselect_b32 s89, -1, 0
	s_cmp_eq_u32 s87, s74
	s_cselect_b32 s88, -1, 0
	s_cmp_eq_u32 s13, s74
	s_mov_b32 s13, s8
	s_cselect_b32 s87, -1, 0
	s_cmp_eq_u32 s47, s74
	s_mov_b32 s8, s11
	s_cselect_b32 s86, -1, 0
	s_cmp_eq_u32 s2, s74
	s_mov_b32 s2, s7
	s_cselect_b32 s85, -1, 0
	s_cmp_eq_u32 s19, s74
	s_mov_b32 s7, s10
	s_cselect_b32 s84, -1, 0
	s_cmp_eq_u32 s4, s74
	s_cselect_b32 s83, -1, 0
	s_cmp_eq_u32 s5, s74
	s_cselect_b32 s82, -1, 0
	s_cmp_eq_u32 s52, s74
	s_cselect_b32 s81, -1, 0
	s_cmp_eq_u32 s53, s74
	s_cselect_b32 s80, -1, 0
	s_cmp_eq_u32 s46, s74
	s_cselect_b32 s79, -1, 0
	s_cmp_eq_u32 s64, s74
	s_cselect_b32 s78, -1, 0
	s_cmp_eq_u32 s65, s74
	s_cselect_b32 s77, -1, 0
	s_cmp_eq_u32 s0, s74
	s_cselect_b32 s76, -1, 0
	s_cmp_eq_u32 s1, s74
	v_readlane_b32 s1, v242, 28
	s_cselect_b32 s67, -1, 0
	s_cmp_eq_u32 s6, s74
	s_mov_b32 s6, s9
	s_cselect_b32 s66, -1, 0
	.loc	1 973 70                        ; ragged.py:973:70
	s_and_b32 vcc_lo, s2, s3
	.loc	1 972 36                        ; ragged.py:972:36
	s_and_b32 s55, s73, s14
	.loc	1 973 38                        ; ragged.py:973:38
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 973 70 is_stmt 0              ; ragged.py:973:70
	s_and_b32 vcc_lo, s13, s3
	.loc	1 974 46 is_stmt 1              ; ragged.py:974:46
	s_add_i32 s0, s15, s49
	.loc	1 973 38                        ; ragged.py:973:38
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 973 70 is_stmt 0              ; ragged.py:973:70
	s_and_b32 vcc_lo, s10, s3
	.loc	1 974 46 is_stmt 1              ; ragged.py:974:46
	s_mul_i32 s0, s0, s51
	.loc	1 973 38                        ; ragged.py:973:38
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 973 70 is_stmt 0              ; ragged.py:973:70
	s_and_b32 vcc_lo, s68, s3
	.loc	1 974 46 is_stmt 1              ; ragged.py:974:46
	v_add_nc_u32_e32 v228, s0, v89
	.loc	1 973 38                        ; ragged.py:973:38
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 973 70 is_stmt 0              ; ragged.py:973:70
	s_and_b32 vcc_lo, s69, s3
	.loc	1 974 46 is_stmt 1              ; ragged.py:974:46
	v_add_nc_u32_e32 v73, s0, v90
	.loc	1 973 38                        ; ragged.py:973:38
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	s_clause 0x4
	buffer_load_u8 v71, v66, s[56:59], 0 offen
	buffer_load_u8 v70, v70, s[56:59], 0 offen
	buffer_load_u8 v69, v69, s[56:59], 0 offen
	buffer_load_u8 v68, v68, s[56:59], 0 offen
	buffer_load_u8 v72, v67, s[56:59], 0 offen
	v_add_nc_u32_e32 v67, v65, v184
	.loc	1 973 70 is_stmt 0              ; ragged.py:973:70
	s_and_b32 vcc_lo, s9, s3
	.loc	1 974 70 is_stmt 1              ; ragged.py:974:70
	s_and_b32 s45, s12, s45
	.loc	1 974 46 is_stmt 0              ; ragged.py:974:46
	v_add_nc_u32_e32 v74, s0, v190
	v_add_nc_u32_e32 v75, s0, v91
	.loc	1 973 38 is_stmt 1              ; ragged.py:973:38
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 973 70 is_stmt 0              ; ragged.py:973:70
	s_and_b32 vcc_lo, s11, s3
	.loc	1 974 46 is_stmt 1              ; ragged.py:974:46
	v_add_nc_u32_e32 v76, s0, v92
	v_add_nc_u32_e32 v77, s0, v93
	v_add_nc_u32_e32 v78, s0, v191
	.loc	1 973 38                        ; ragged.py:973:38
	buffer_load_u8 v67, v67, s[56:59], 0 offen
	.loc	1 974 46                        ; ragged.py:974:46
	v_add_nc_u32_e32 v79, s0, v94
	v_add_nc_u32_e32 v80, s0, v95
	v_add_nc_u32_e32 v81, s0, v96
	v_add_nc_u32_e32 v82, s0, v97
	v_add_nc_u32_e32 v83, s0, v98
	v_add_nc_u32_e32 v84, s0, v99
	v_add_nc_u32_e32 v85, s0, v100
	v_add_nc_u32_e32 v86, s0, v194
	v_add_nc_u32_e32 v87, s0, v101
	v_add_nc_u32_e32 v88, s0, v102
	v_add_nc_u32_e32 v215, s0, v103
	v_add_nc_u32_e32 v216, s0, v104
	v_add_nc_u32_e32 v217, s0, v105
	v_add_nc_u32_e32 v218, s0, v106
	v_add_nc_u32_e32 v219, s0, v107
	v_add_nc_u32_e32 v220, s0, v108
	v_add_nc_u32_e32 v221, s0, v109
	v_add_nc_u32_e32 v222, s0, v110
	v_add_nc_u32_e32 v223, s0, v111
	v_add_nc_u32_e32 v224, s0, v112
	v_add_nc_u32_e32 v225, s0, v113
	v_add_nc_u32_e32 v226, s0, v114
	v_add_nc_u32_e32 v227, s0, v115
	.loc	1 974 38 is_stmt 0              ; ragged.py:974:38
	v_cndmask_b32_e64 v228, 0x80000000, v228, s45
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 s14, s12, s18
	s_and_b32 s15, s12, s20
	s_and_b32 s18, s12, s23
	s_and_b32 s20, s12, s24
	s_and_b32 s23, s12, s27
	s_and_b32 s24, s12, s28
	s_and_b32 s27, s12, s31
	s_and_b32 s28, s12, s33
	s_and_b32 s31, s12, s36
	s_and_b32 s33, s12, s37
	s_and_b32 s36, s12, s40
	s_and_b32 s37, s12, s41
	s_and_b32 s40, s12, s44
	s_and_b32 s41, s12, s70
	s_and_b32 s44, s12, s75
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e64 v73, 0x80000000, v73, s14
	v_cndmask_b32_e64 v74, 0x80000000, v74, s15
	v_cndmask_b32_e64 v77, 0x80000000, v77, s18
	v_cndmask_b32_e64 v78, 0x80000000, v78, s20
	v_cndmask_b32_e64 v81, 0x80000000, v81, s23
	v_cndmask_b32_e64 v82, 0x80000000, v82, s24
	v_cndmask_b32_e64 v85, 0x80000000, v85, s27
	v_cndmask_b32_e64 v86, 0x80000000, v86, s28
	v_cndmask_b32_e64 v215, 0x80000000, v215, s31
	v_cndmask_b32_e64 v216, 0x80000000, v216, s33
	v_cndmask_b32_e64 v219, 0x80000000, v219, s36
	v_cndmask_b32_e64 v220, 0x80000000, v220, s37
	v_cndmask_b32_e64 v223, 0x80000000, v223, s40
	v_cndmask_b32_e64 v224, 0x80000000, v224, s41
	v_cndmask_b32_e64 v227, 0x80000000, v227, s44
	.loc	1 975 66 is_stmt 1              ; ragged.py:975:66
	s_waitcnt vmcnt(5)
	v_and_b16 v66.l, v71.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 975 38 is_stmt 0              ; ragged.py:975:38
	v_cndmask_b16 v66.l, v71.l, v66.l, s55
	.loc	1 975 66                        ; ragged.py:975:66
	s_waitcnt vmcnt(0)
	v_and_b16 v66.h, v67.l, 15
	.loc	1 975 38                        ; ragged.py:975:38
	v_cndmask_b16 v66.h, v67.l, v66.h, s55
	v_add_nc_u32_e32 v67, v65, v186
	v_add_nc_u32_e32 v65, v65, v188
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 973 38 is_stmt 1              ; ragged.py:973:38
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 973 70 is_stmt 0              ; ragged.py:973:70
	s_and_b32 vcc_lo, s48, s3
	.loc	1 974 70 is_stmt 1              ; ragged.py:974:70
	s_and_b32 s3, s12, s17
	.loc	1 973 38                        ; ragged.py:973:38
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 vcc_lo, s12, s16
	.loc	1 973 38                        ; ragged.py:973:38
	buffer_load_u8 v71, v67, s[56:59], 0 offen
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 s16, s12, s21
	s_and_b32 s17, s12, s22
	s_and_b32 s21, s12, s25
	s_and_b32 s22, s12, s26
	s_and_b32 s25, s12, s29
	s_and_b32 s26, s12, s30
	s_and_b32 s29, s12, s34
	s_and_b32 s30, s12, s35
	s_and_b32 s34, s12, s38
	s_and_b32 s35, s12, s39
	s_and_b32 s38, s12, s42
	s_and_b32 s39, s12, s43
	s_and_b32 s42, s12, s54
	s_and_b32 s43, s12, s72
	.loc	1 974 38 is_stmt 0              ; ragged.py:974:38
	v_cndmask_b32_e64 v75, 0x80000000, v75, s16
	v_cndmask_b32_e64 v76, 0x80000000, v76, s17
	v_cndmask_b32_e64 v79, 0x80000000, v79, s21
	v_cndmask_b32_e64 v80, 0x80000000, v80, s22
	v_cndmask_b32_e64 v83, 0x80000000, v83, s25
	v_cndmask_b32_e64 v84, 0x80000000, v84, s26
	v_cndmask_b32_e64 v87, 0x80000000, v87, s29
	v_cndmask_b32_e64 v88, 0x80000000, v88, s30
	v_cndmask_b32_e64 v217, 0x80000000, v217, s34
	v_cndmask_b32_e64 v218, 0x80000000, v218, s35
	v_cndmask_b32_e64 v221, 0x80000000, v221, s38
	v_cndmask_b32_e64 v222, 0x80000000, v222, s39
	v_cndmask_b32_e64 v225, 0x80000000, v225, s42
	v_cndmask_b32_e64 v226, 0x80000000, v226, s43
	.loc	1 975 66 is_stmt 1              ; ragged.py:975:66
	s_waitcnt vmcnt(0)
	v_and_b16 v67.l, v71.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 975 38 is_stmt 0              ; ragged.py:975:38
	v_cndmask_b16 v67.l, v71.l, v67.l, s55
	.loc	1 973 38 is_stmt 1              ; ragged.py:973:38
	buffer_load_u8 v71, v65, s[56:59], 0 offen
	.loc	1 975 66                        ; ragged.py:975:66
	v_and_b16 v65.h, v72.l, 15
	.loc	1 975 38 is_stmt 0              ; ragged.py:975:38
	v_cndmask_b16 v65.h, v72.l, v65.h, s55
	v_lshl_add_u32 v72, s51, 1, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 974 46 is_stmt 1              ; ragged.py:974:46
	v_add_nc_u32_e32 v72, s0, v72
	.loc	1 974 38 is_stmt 0              ; ragged.py:974:38
	v_cndmask_b32_e64 v72, 0x80000000, v72, s3
	.loc	1 975 66 is_stmt 1              ; ragged.py:975:66
	s_waitcnt vmcnt(0)
	v_and_b16 v65.l, v71.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 975 38 is_stmt 0              ; ragged.py:975:38
	v_cndmask_b16 v65.l, v71.l, v65.l, s55
	v_add_nc_u32_e32 v71, s51, v89
	.loc	1 974 46 is_stmt 1              ; ragged.py:974:46
	v_add_nc_u32_e32 v71, s0, v71
	.loc	1 972 36                        ; ragged.py:972:36
	s_and_b32 s0, s73, vcc_hi
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	s_clause 0x1f
	buffer_load_u8 v228, v228, s[60:63], 0 offen
	buffer_load_u8 v71, v71, s[60:63], 0 offen
	buffer_load_u8 v72, v72, s[60:63], 0 offen
	buffer_load_u8 v73, v73, s[60:63], 0 offen
	buffer_load_u8 v74, v74, s[60:63], 0 offen
	buffer_load_u8 v75, v75, s[60:63], 0 offen
	buffer_load_u8 v76, v76, s[60:63], 0 offen
	buffer_load_u8 v77, v77, s[60:63], 0 offen
	buffer_load_u8 v78, v78, s[60:63], 0 offen
	buffer_load_u8 v79, v79, s[60:63], 0 offen
	buffer_load_u8 v80, v80, s[60:63], 0 offen
	buffer_load_u8 v81, v81, s[60:63], 0 offen
	buffer_load_u8 v82, v82, s[60:63], 0 offen
	buffer_load_u8 v83, v83, s[60:63], 0 offen
	buffer_load_u8 v84, v84, s[60:63], 0 offen
	buffer_load_u8 v85, v85, s[60:63], 0 offen
	buffer_load_u8 v86, v86, s[60:63], 0 offen
	buffer_load_u8 v87, v87, s[60:63], 0 offen
	buffer_load_u8 v88, v88, s[60:63], 0 offen
	buffer_load_u8 v215, v215, s[60:63], 0 offen
	buffer_load_u8 v216, v216, s[60:63], 0 offen
	buffer_load_u8 v217, v217, s[60:63], 0 offen
	buffer_load_u8 v218, v218, s[60:63], 0 offen
	buffer_load_u8 v219, v219, s[60:63], 0 offen
	buffer_load_u8 v220, v220, s[60:63], 0 offen
	buffer_load_u8 v221, v221, s[60:63], 0 offen
	buffer_load_u8 v222, v222, s[60:63], 0 offen
	buffer_load_u8 v237, v223, s[60:63], 0 offen
	buffer_load_u8 v238, v224, s[60:63], 0 offen
	buffer_load_u8 v239, v225, s[60:63], 0 offen
	buffer_load_u8 v240, v226, s[60:63], 0 offen
	buffer_load_u8 v241, v227, s[60:63], 0 offen
	.loc	1 975 38                        ; ragged.py:975:38
	v_add_nc_u32_e32 v223, 0, v192
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v223, v66
	ds_store_b8_d16_hi v223, v66 offset:512
	ds_store_b8 v223, v67 offset:1024
	ds_store_b8 v223, v65 offset:1536
	.loc	1 975 66 is_stmt 0              ; ragged.py:975:66
	v_and_b16 v65.l, v68.l, 15
	v_and_b16 v66.l, v69.l, 15
	v_and_b16 v66.h, v70.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 975 38                        ; ragged.py:975:38
	v_cndmask_b16 v65.l, v68.l, v65.l, s55
	v_cndmask_b16 v66.l, v69.l, v66.l, s55
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b16 v66.h, v70.l, v66.h, s55
	ds_store_b8_d16_hi v200, v65
	ds_store_b8 v200, v65 offset:512
	ds_store_b8 v200, v66 offset:1024
	ds_store_b8_d16_hi v200, v66 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 976 66 is_stmt 1              ; ragged.py:976:66
	s_waitcnt vmcnt(31)
	v_and_b16 v65.l, v228.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	v_cndmask_b16 v223.l, v228.l, v65.l, s0
	.loc	1 976 66                        ; ragged.py:976:66
	s_waitcnt vmcnt(30)
	v_and_b16 v65.l, v71.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s0, s73, s104
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v223.h, v71.l, v65.l, s0
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(29)
	v_and_b16 v65.l, v72.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s0, s73, s103
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v224.l, v72.l, v65.l, s0
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(28)
	v_and_b16 v65.l, v73.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s0, s73, s102
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v224.h, v73.l, v65.l, s0
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(27)
	v_and_b16 v65.l, v74.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s0, s73, s101
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v225.l, v74.l, v65.l, s0
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(26)
	v_and_b16 v65.l, v75.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s0, s73, s100
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v225.h, v75.l, v65.l, s0
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(25)
	v_and_b16 v65.l, v76.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s0, s73, s99
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v226.l, v76.l, v65.l, s0
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(24)
	v_and_b16 v65.l, v77.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s0, s73, s98
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v226.h, v77.l, v65.l, s0
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(23)
	v_and_b16 v65.l, v78.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s0, s73, s97
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v227.l, v78.l, v65.l, s0
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(22)
	v_and_b16 v65.l, v79.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s0, s73, s96
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v227.h, v79.l, v65.l, s0
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(21)
	v_and_b16 v65.l, v80.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s0, s73, s95
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v228.l, v80.l, v65.l, s0
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(20)
	v_and_b16 v65.l, v81.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s0, s73, s94
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v228.h, v81.l, v65.l, s0
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(19)
	v_and_b16 v65.l, v82.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s0, s73, s93
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v229.l, v82.l, v65.l, s0
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(18)
	v_and_b16 v65.l, v83.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s0, s73, s92
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v229.h, v83.l, v65.l, s0
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(17)
	v_and_b16 v65.l, v84.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s0, s73, s91
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v230.l, v84.l, v65.l, s0
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(16)
	v_and_b16 v65.l, v85.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s0, s73, s90
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v230.h, v85.l, v65.l, s0
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(15)
	v_and_b16 v65.l, v86.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s0, s73, s89
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v231.l, v86.l, v65.l, s0
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(14)
	v_and_b16 v65.l, v87.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s0, s73, s88
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v231.h, v87.l, v65.l, s0
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(13)
	v_and_b16 v65.l, v88.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s0, s73, s87
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v232.l, v88.l, v65.l, s0
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(12)
	v_and_b16 v65.l, v215.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s0, s73, s86
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v232.h, v215.l, v65.l, s0
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(11)
	v_and_b16 v65.l, v216.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s0, s73, s85
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v233.l, v216.l, v65.l, s0
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(10)
	v_and_b16 v65.l, v217.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s0, s73, s84
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v233.h, v217.l, v65.l, s0
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(9)
	v_and_b16 v65.l, v218.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s0, s73, s83
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v234.l, v218.l, v65.l, s0
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(8)
	v_and_b16 v65.l, v219.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s0, s73, s82
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v234.h, v219.l, v65.l, s0
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(7)
	v_and_b16 v65.l, v220.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s0, s73, s81
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v235.l, v220.l, v65.l, s0
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(6)
	v_and_b16 v65.l, v221.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s0, s73, s80
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v235.h, v221.l, v65.l, s0
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(5)
	v_and_b16 v65.l, v222.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s0, s73, s79
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v236.l, v222.l, v65.l, s0
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(4)
	v_and_b16 v65.l, v237.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s0, s73, s78
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v236.h, v237.l, v65.l, s0
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(3)
	v_and_b16 v65.l, v238.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s0, s73, s77
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v237.l, v238.l, v65.l, s0
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(2)
	v_and_b16 v65.l, v239.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s0, s73, s76
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v237.h, v239.l, v65.l, s0
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(1)
	v_and_b16 v65.l, v240.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s0, s73, s67
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v238.l, v240.l, v65.l, s0
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(0)
	v_and_b16 v65.l, v241.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s0, s73, s66
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v238.h, v241.l, v65.l, s0
	.loc	1 975 38                        ; ragged.py:975:38
	v_add_nc_u32_e32 v65, 0, v193
	ds_load_2addr_stride64_b64 v[215:218], v65 offset1:1
	ds_load_2addr_stride64_b64 v[219:222], v65 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[85:88], v201 offset1:1
	ds_load_2addr_stride64_b64 v[81:84], v201 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[77:80], v202 offset1:1
	ds_load_2addr_stride64_b64 v[73:76], v202 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[69:72], v203 offset1:1
	ds_load_2addr_stride64_b64 v[65:68], v203 offset0:2 offset1:3
	.loc	1 976 38                        ; ragged.py:976:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v204, v223
	ds_store_b8_d16_hi v204, v223 offset:256
	ds_store_b8 v204, v224 offset:512
	ds_store_b8 v204, v225 offset:1024
	ds_store_b8_d16_hi v204, v225 offset:1280
	ds_store_b8 v204, v226 offset:1536
	ds_store_b8 v204, v227 offset:2048
	ds_store_b8_d16_hi v204, v227 offset:2304
	ds_store_b8 v204, v228 offset:2560
	ds_store_b8 v204, v229 offset:3072
	ds_store_b8_d16_hi v204, v229 offset:3328
	ds_store_b8 v204, v230 offset:3584
	ds_store_b8 v204, v231 offset:4096
	ds_store_b8_d16_hi v204, v231 offset:4352
	ds_store_b8 v204, v232 offset:4608
	ds_store_b8 v204, v233 offset:5120
	ds_store_b8_d16_hi v204, v233 offset:5376
	ds_store_b8 v204, v234 offset:5632
	ds_store_b8 v204, v235 offset:6144
	ds_store_b8_d16_hi v204, v235 offset:6400
	ds_store_b8 v204, v236 offset:6656
	ds_store_b8 v204, v237 offset:7168
	ds_store_b8_d16_hi v204, v237 offset:7424
	ds_store_b8 v204, v238 offset:7680
	ds_store_b8_d16_hi v205, v224
	ds_store_b8_d16_hi v206, v226
	ds_store_b8_d16_hi v207, v228
	ds_store_b8_d16_hi v208, v230
	ds_store_b8_d16_hi v209, v232
	ds_store_b8_d16_hi v210, v234
	ds_store_b8_d16_hi v211, v236
	ds_store_b8_d16_hi v212, v238
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 977 31                        ; ragged.py:977:31
	ds_load_u8 v223, v195 offset:1280
	ds_load_u8 v224, v195 offset:1024
	ds_load_u8 v225, v195 offset:1920
	ds_load_u8 v226, v195 offset:1664
	ds_load_u8 v227, v195 offset:1408
	ds_load_u8 v228, v195 offset:1152
	.loc	1 987 21                        ; ragged.py:987:21
	s_add_i32 s0, s1, 32
	.loc	1 957 23                        ; ragged.py:957:23
	s_cmp_lt_i32 s1, 0
	.loc	1 977 31                        ; ragged.py:977:31
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v223, v224, v223, 0xc0c0004
	ds_load_u8 v224, v195 offset:1792
	ds_load_u8 v229, v195 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v225, v226, v225, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v227, v228, v227, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v226, v225, 16, v227
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v224, v229, v224, 0xc0c0004
	ds_load_u8 v229, v195 offset:256
	ds_load_u8 v230, v195
	ds_load_u8 v231, v195 offset:896
	ds_load_u8 v232, v195 offset:640
	ds_load_u8 v233, v195 offset:384
	ds_load_u8 v234, v195 offset:128
	v_lshl_or_b32 v224, v224, 16, v223
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v229, v230, v229, 0xc0c0004
	ds_load_u8 v230, v195 offset:768
	ds_load_u8 v235, v195 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v228, v234, v233, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v230, v235, v230, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v223, v230, 16, v229
	v_perm_b32 v229, v232, v231, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[223:224], v[215:216], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v225, v229, 16, v228
	v_wmma_i32_16x16x16_iu4 v[17:24], v[223:224], v[217:218], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[223:224], v[219:220], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[223:224], v[221:222], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[225:226], v[215:216], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[225:226], v[217:218], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[225:226], v[219:220], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v215, v195 offset:3328
	ds_load_u8 v216, v195 offset:3072
	ds_load_u8 v217, v195 offset:3968
	ds_load_u8 v218, v195 offset:3712
	ds_load_u8 v219, v195 offset:3456
	ds_load_u8 v220, v195 offset:3200
	v_wmma_i32_16x16x16_iu4 v[57:64], v[225:226], v[221:222], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v215, v216, v215, 0xc0c0004
	ds_load_u8 v216, v195 offset:3840
	ds_load_u8 v221, v195 offset:3584
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v217, v218, v217, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v219, v220, v219, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v218, v217, 16, v219
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v216, v221, v216, 0xc0c0004
	ds_load_u8 v221, v195 offset:2304
	ds_load_u8 v222, v195 offset:2048
	ds_load_u8 v223, v195 offset:2944
	ds_load_u8 v224, v195 offset:2688
	ds_load_u8 v225, v195 offset:2432
	ds_load_u8 v226, v195 offset:2176
	v_lshl_or_b32 v216, v216, 16, v215
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v221, v222, v221, 0xc0c0004
	ds_load_u8 v222, v195 offset:2816
	ds_load_u8 v227, v195 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v220, v226, v225, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v222, v227, v222, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v215, v222, 16, v221
	v_perm_b32 v221, v224, v223, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[215:216], v[85:86], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v217, v221, 16, v220
	v_wmma_i32_16x16x16_iu4 v[33:40], v[215:216], v[81:82], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[215:216], v[83:84], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[215:216], v[87:88], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[217:218], v[85:86], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[217:218], v[81:82], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[217:218], v[83:84], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v81, v195 offset:5376
	ds_load_u8 v82, v195 offset:5120
	ds_load_u8 v83, v195 offset:6016
	ds_load_u8 v84, v195 offset:5760
	ds_load_u8 v85, v195 offset:5504
	ds_load_u8 v86, v195 offset:5248
	v_wmma_i32_16x16x16_iu4 v[25:32], v[217:218], v[87:88], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v195 offset:5888
	ds_load_u8 v87, v195 offset:5632
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v85
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v87, v82, 0xc0c0004
	ds_load_u8 v87, v195 offset:4352
	ds_load_u8 v88, v195 offset:4096
	ds_load_u8 v215, v195 offset:4992
	ds_load_u8 v216, v195 offset:4736
	ds_load_u8 v217, v195 offset:4480
	ds_load_u8 v218, v195 offset:4224
	v_lshl_or_b32 v82, v82, 16, v81
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v195 offset:4864
	ds_load_u8 v219, v195 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v86, v218, v217, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v219, v88, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v81, v88, 16, v87
	v_perm_b32 v87, v216, v215, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[81:82], v[77:78], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v83, v87, 16, v86
	v_wmma_i32_16x16x16_iu4 v[33:40], v[81:82], v[73:74], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[81:82], v[75:76], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[81:82], v[79:80], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[83:84], v[77:78], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[83:84], v[73:74], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[83:84], v[75:76], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v73, v195 offset:7424
	ds_load_u8 v74, v195 offset:7168
	ds_load_u8 v75, v195 offset:8064
	ds_load_u8 v76, v195 offset:7808
	ds_load_u8 v77, v195 offset:7552
	ds_load_u8 v78, v195 offset:7296
	v_wmma_i32_16x16x16_iu4 v[25:32], v[83:84], v[79:80], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v195 offset:7936
	ds_load_u8 v79, v195 offset:7680
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v75, 16, v77
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v79, v74, 0xc0c0004
	ds_load_u8 v79, v195 offset:6400
	ds_load_u8 v80, v195 offset:6144
	ds_load_u8 v81, v195 offset:7040
	ds_load_u8 v82, v195 offset:6784
	ds_load_u8 v83, v195 offset:6528
	ds_load_u8 v84, v195 offset:6272
	v_lshl_or_b32 v74, v74, 16, v73
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v195 offset:6912
	ds_load_u8 v85, v195 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v78, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v85, v80, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v73, v80, 16, v79
	v_perm_b32 v79, v82, v81, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[73:74], v[69:70], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v75, v79, 16, v78
	v_wmma_i32_16x16x16_iu4 v[17:24], v[73:74], v[71:72], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[73:74], v[65:66], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[73:74], v[67:68], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[75:76], v[69:70], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[75:76], v[71:72], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[75:76], v[65:66], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[75:76], v[67:68], v[57:64] neg_lo:[1,1,0]
	.loc	1 957 23                        ; ragged.py:957:23
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_readlane_b32 s36, v242, 20
	v_readlane_b32 s20, v242, 15
	.loc	1 988 27 is_stmt 1              ; ragged.py:988:27
	v_cvt_f32_i32_e32 v222, v1
	v_cvt_f32_i32_e32 v221, v2
	v_cvt_f32_i32_e32 v220, v3
	v_cvt_f32_i32_e32 v219, v4
	v_cvt_f32_i32_e32 v218, v5
	v_cvt_f32_i32_e32 v217, v6
	v_cvt_f32_i32_e32 v216, v7
	v_cvt_f32_i32_e32 v215, v8
	v_cvt_f32_i32_e32 v88, v9
	v_cvt_f32_i32_e32 v87, v10
	v_cvt_f32_i32_e32 v86, v11
	v_cvt_f32_i32_e32 v85, v12
	v_cvt_f32_i32_e32 v84, v13
	v_cvt_f32_i32_e32 v83, v14
	v_cvt_f32_i32_e32 v82, v15
	v_cvt_f32_i32_e32 v81, v16
	v_cvt_f32_i32_e32 v80, v17
	v_cvt_f32_i32_e32 v79, v18
	v_cvt_f32_i32_e32 v78, v19
	v_cvt_f32_i32_e32 v77, v20
	v_cvt_f32_i32_e32 v76, v21
	v_cvt_f32_i32_e32 v75, v22
	v_cvt_f32_i32_e32 v74, v23
	v_cvt_f32_i32_e32 v73, v24
	v_cvt_f32_i32_e32 v72, v25
	v_cvt_f32_i32_e32 v71, v26
	v_cvt_f32_i32_e32 v70, v27
	v_cvt_f32_i32_e32 v69, v28
	v_cvt_f32_i32_e32 v68, v29
	v_cvt_f32_i32_e32 v67, v30
	v_cvt_f32_i32_e32 v66, v31
	v_cvt_f32_i32_e32 v65, v32
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
	v_readlane_b32 s4, v242, 8
	v_readlane_b32 s5, v242, 9
	v_readlane_b32 s19, v242, 10
	v_readlane_b32 s24, v242, 11
	v_readlane_b32 s40, v242, 24
	v_readlane_b32 s41, v242, 25
	v_readlane_b32 s14, v242, 12
	v_readlane_b32 s1, v242, 19
	v_readlane_b32 s21, v242, 16
	v_readlane_b32 s3, v242, 13
	v_readlane_b32 s15, v242, 14
	v_readlane_b32 s37, v242, 21
	v_readlane_b32 s38, v242, 22
	v_readlane_b32 s39, v242, 23
	v_readlane_b32 s42, v242, 26
	v_readlane_b32 s43, v242, 27
	v_readlane_b32 s22, v242, 17
	v_readlane_b32 s23, v242, 18
	s_branch .LBB0_5
.LBB0_10:                               ; %Flow297
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_readlane_b32 s20, v242, 0
	v_readlane_b32 s22, v242, 2
	v_readlane_b32 s21, v242, 1
	v_readlane_b32 s2, v242, 7
	v_readlane_b32 s15, v242, 4
	v_readlane_b32 s22, v242, 6
	v_readlane_b32 s23, v242, 3
.LBB0_11:                               ; %._crit_edge16
	.loc	1 889 36 is_stmt 1              ; ragged.py:889:36
	v_lshrrev_b32_e32 v0, 4, v0
	.loc	1 1009 22                       ; ragged.py:1009:22
	s_mul_i32 s2, s2, s51
	.loc	1 1009 13 is_stmt 0             ; ragged.py:1009:13
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	.loc	1 889 36 is_stmt 1              ; ragged.py:889:36
	v_and_or_b32 v4, v0, 1, v156
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v7, 0x88, v4
	v_or_b32_e32 v8, 0x86, v4
	v_or_b32_e32 v6, 0x8a, v4
	v_or_b32_e32 v0, 0x8e, v4
	v_or_b32_e32 v5, 0x8c, v4
	v_or_b32_e32 v9, 0x84, v4
	v_or_b32_e32 v10, 0x82, v4
	.loc	1 889 18 is_stmt 0              ; ragged.py:889:18
	v_or_b32_e32 v11, s15, v7
	v_or_b32_e32 v12, s15, v8
	v_or_b32_e32 v3, s15, v6
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v15, 12, v4
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v1, s15, v0
	v_or_b32_e32 v2, s15, v5
	v_or_b32_e32 v13, s15, v9
	v_or_b32_e32 v14, s15, v10
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e64 s6, s51, v11
	v_cmp_gt_i32_e64 s7, s51, v12
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v11, 0x80, v4
	v_or_b32_e32 v12, 14, v4
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s1, s51, v3
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v3, s15, v15
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e32 vcc_lo, s51, v1
	v_cmp_gt_i32_e64 s0, s51, v2
	v_cmp_gt_i32_e64 s8, s51, v13
	v_cmp_gt_i32_e64 s9, s51, v14
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v1, s15, v11
	v_or_b32_e32 v2, s15, v12
	.loc	1 889 36 is_stmt 0              ; ragged.py:889:36
	v_or_b32_e32 v13, 10, v4
	v_or_b32_e32 v14, 8, v4
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e64 s12, s51, v3
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_mul_lo_u32 v3, s51, v125
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s10, s51, v1
	v_cmp_gt_i32_e64 s11, s51, v2
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v1, s15, v13
	v_or_b32_e32 v2, s15, v14
	.loc	1 889 36 is_stmt 0              ; ragged.py:889:36
	v_or_b32_e32 v16, 6, v4
	v_or_b32_e32 v18, 2, v4
	v_or_b32_e32 v17, 4, v4
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v21, s15, v4
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e64 s13, s51, v1
	v_cmp_gt_i32_e64 s14, s51, v2
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v2, s15, v16
	v_or_b32_e32 v20, s15, v18
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_add3_u32 v1, s2, s15, v3
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v19, s15, v17
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s18, s51, v21
	v_cmp_gt_i32_e64 s15, s51, v2
	v_cmp_gt_i32_e64 s17, s51, v20
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v1, v4, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s16, s51, v19
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v3, v1, v18, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s24, s18
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v21, v1, v17, 2
	v_cndmask_b32_e64 v22, 0x80000000, v2, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s24, s17
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_add_nc_u32_e32 v19, s22, v1
	.loc	1 1009 13 is_stmt 0             ; ragged.py:1009:13
	v_cndmask_b32_e64 v23, 0x80000000, v3, s3
	.loc	1 1007 20 is_stmt 1             ; ragged.py:1007:20
	s_and_b32 s3, s24, s16
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_mad_u64_u32 v[2:3], null, s51, 48, v[1:2]
	.loc	1 1009 13 is_stmt 0             ; ragged.py:1009:13
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	s_mov_b32 s22, 0x7ffffffe
	v_add_lshl_u32 v3, v1, v16, 2
	s_clause 0x2
	buffer_store_b32 v181, v22, s[20:23], 0 offen
	buffer_store_b32 v180, v23, s[20:23], 0 offen
	buffer_store_b32 v179, v21, s[20:23], 0 offen
	v_add_lshl_u32 v21, v1, v14, 2
	.loc	1 1007 20 is_stmt 1             ; ragged.py:1007:20
	s_and_b32 s3, s24, s15
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v22, v1, v13, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s24, s14
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v23, v1, v15, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s24, s13
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v178, v3, s[20:23], 0 offen
	buffer_store_b32 v177, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s24, s12
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v3, v1, v12, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_add_lshl_u32 v21, v1, v11, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s24, s11
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v176, v22, s[20:23], 0 offen
	buffer_store_b32 v175, v23, s[20:23], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v22, v1, v10, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s24, s10
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v23, v1, v9, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s24, s9
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v174, v3, s[20:23], 0 offen
	buffer_store_b32 v173, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s24, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v3, v1, v8, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_add_lshl_u32 v21, v1, v7, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s24, s7
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v172, v22, s[20:23], 0 offen
	buffer_store_b32 v171, v23, s[20:23], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v22, v1, v6, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s24, s6
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v23, v1, v5, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s24, s1
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_lshl_add_u32 v20, s51, 5, v1
	.loc	1 1009 13 is_stmt 0             ; ragged.py:1009:13
	v_add_lshl_u32 v1, v1, v0, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1007 20 is_stmt 1             ; ragged.py:1007:20
	s_and_b32 s3, s24, s0
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v170, v3, s[20:23], 0 offen
	buffer_store_b32 v169, v21, s[20:23], 0 offen
	v_add_lshl_u32 v3, v19, v4, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s24, vcc_lo
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v21, v19, v18, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s18
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v168, v22, s[20:23], 0 offen
	buffer_store_b32 v167, v23, s[20:23], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v22, v19, v17, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s17
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v166, v1, s[20:23], 0 offen
	buffer_store_b32 v165, v3, s[20:23], 0 offen
	v_add_lshl_u32 v1, v19, v16, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s16
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v3, v19, v14, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s15
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v164, v21, s[20:23], 0 offen
	buffer_store_b32 v163, v22, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s14
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v21, v19, v13, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v22, v19, v15, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s13
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v162, v1, s[20:23], 0 offen
	buffer_store_b32 v161, v3, s[20:23], 0 offen
	v_add_lshl_u32 v1, v19, v12, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s12
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v3, v19, v11, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s11
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v160, v21, s[20:23], 0 offen
	buffer_store_b32 v159, v22, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s10
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v21, v19, v10, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v22, v19, v9, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s9
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v158, v1, s[20:23], 0 offen
	buffer_store_b32 v157, v3, s[20:23], 0 offen
	v_add_lshl_u32 v1, v19, v8, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v3, v19, v7, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s7
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v155, v21, s[20:23], 0 offen
	buffer_store_b32 v154, v22, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s6
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v21, v19, v6, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v22, v19, v5, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s1
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v153, v1, s[20:23], 0 offen
	buffer_store_b32 v152, v3, s[20:23], 0 offen
	v_add_lshl_u32 v1, v19, v0, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s0
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v3, v20, v4, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, vcc_lo
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v19, v20, v18, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s18
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v151, v21, s[20:23], 0 offen
	buffer_store_b32 v150, v22, s[20:23], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v21, v20, v17, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s17
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v149, v1, s[20:23], 0 offen
	buffer_store_b32 v148, v3, s[20:23], 0 offen
	v_add_lshl_u32 v1, v20, v16, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s16
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v3, v20, v14, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s15
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v147, v19, s[20:23], 0 offen
	buffer_store_b32 v146, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s14
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v19, v20, v13, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v21, v20, v15, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s13
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v145, v1, s[20:23], 0 offen
	buffer_store_b32 v144, v3, s[20:23], 0 offen
	v_add_lshl_u32 v1, v20, v12, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s12
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v3, v20, v11, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s11
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v143, v19, s[20:23], 0 offen
	buffer_store_b32 v142, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s10
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v19, v20, v10, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v21, v20, v9, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s9
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v141, v1, s[20:23], 0 offen
	buffer_store_b32 v140, v3, s[20:23], 0 offen
	v_add_lshl_u32 v1, v20, v8, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v3, v20, v7, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s7
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v139, v19, s[20:23], 0 offen
	buffer_store_b32 v138, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s6
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v19, v20, v6, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v21, v20, v5, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s1
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v137, v1, s[20:23], 0 offen
	buffer_store_b32 v136, v3, s[20:23], 0 offen
	v_add_lshl_u32 v1, v20, v0, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s0
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v3, v2, v4, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, vcc_lo
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v4, v2, v18, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s18
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v17, v2, v17, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s17
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v135, v19, s[20:23], 0 offen
	buffer_store_b32 v134, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s16
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v133, v1, s[20:23], 0 offen
	buffer_store_b32 v132, v3, s[20:23], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	v_add_lshl_u32 v1, v2, v16, 2
	v_add_lshl_u32 v3, v2, v14, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s15
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v131, v4, s[20:23], 0 offen
	buffer_store_b32 v130, v17, s[20:23], 0 offen
	v_add_lshl_u32 v4, v2, v13, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s14
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v13, v2, v15, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s13
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v129, v1, s[20:23], 0 offen
	buffer_store_b32 v128, v3, s[20:23], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s12
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v1, v2, v12, 2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	v_add_lshl_u32 v3, v2, v11, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s11
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v127, v4, s[20:23], 0 offen
	buffer_store_b32 v126, v13, s[20:23], 0 offen
	v_add_lshl_u32 v4, v2, v10, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s10
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v9, v2, v9, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s9
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v124, v1, s[20:23], 0 offen
	buffer_store_b32 v123, v3, s[20:23], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v1, v2, v8, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_add_lshl_u32 v3, v2, v7, 2
	s_clause 0x1
	buffer_store_b32 v120, v4, s[20:23], 0 offen
	buffer_store_b32 v119, v9, s[20:23], 0 offen
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s7
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v4, v2, v6, 2
	v_add_lshl_u32 v5, v2, v5, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s6
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v0, v2, v0, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s4, s1
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, s4, s0
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v2, 0x80000000, v4, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v4, 0x80000000, v5, s0
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b32 v118, v1, s[20:23], 0 offen
	buffer_store_b32 v117, v3, s[20:23], 0 offen
	buffer_store_b32 v122, v2, s[20:23], 0 offen
	buffer_store_b32 v121, v4, s[20:23], 0 offen
	buffer_store_b32 v116, v0, s[20:23], 0 offen
	.loc	1 856 5                         ; ragged.py:856:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 243
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 243
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11312
; TotalNumSgprs: 107
; NumVgprs: 243
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 107
; NumVGPRsForWavesPerEU: 243
; Occupancy: 5
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     107
    .sgpr_spill_count: 29
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc64_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     243
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
