	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 856 0                         ; ragged.py:856:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[28:29], s[0:1], 0x30
.Ltmp0:
	.loc	1 883 20 prologue_end           ; ragged.py:883:20
	s_abs_i32 s9, s2
	.loc	1 888 36                        ; ragged.py:888:36
	v_and_b32_e32 v97, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:880:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s28, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:881:21 ]
	s_add_i32 s5, s29, 0xff
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
	s_sub_i32 s10, s5, s8
	.loc	1 885 17                        ; ragged.py:885:17
	s_sub_i32 s5, 0, s7
	.loc	1 884 22                        ; ragged.py:884:22
	s_mul_i32 s4, s10, s4
	.loc	1 885 17                        ; ragged.py:885:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 884 16                        ; ragged.py:884:16
	s_sub_i32 s2, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 885 17                        ; ragged.py:885:17
	s_abs_i32 s8, s2
	s_xor_b32 s11, s2, s6
	s_ashr_i32 s11, s11, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	.loc	1 889 36                        ; ragged.py:889:36
	v_lshrrev_b32_e32 v1, 1, v0
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
	s_mul_i32 s12, s9, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s12
	s_add_i32 s12, s9, 1
	s_sub_i32 s13, s8, s7
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s9, s12, s9
	s_cselect_b32 s8, s13, s8
	s_add_i32 s12, s9, 1
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s7, s12, s9
	s_mov_b32 s12, 0
	s_xor_b32 s7, s7, s11
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s11
	.loc	1 892 19                        ; ragged.py:892:19
	s_ashr_i32 s11, s10, 31
	.loc	1 886 24                        ; ragged.py:886:24
	s_mul_i32 s6, s7, s6
	.loc	1 892 19                        ; ragged.py:892:19
	s_lshl_b64 s[8:9], s[10:11], 2
	.loc	1 886 17                        ; ragged.py:886:17
	s_sub_i32 s11, s2, s6
	.loc	1 888 18                        ; ragged.py:888:18
	s_lshl_b32 s6, s7, 6
	.loc	1 892 19                        ; ragged.py:892:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s8
	s_addc_u32 s5, s5, s9
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v2, s6, v97
	.loc	1 892 19                        ; ragged.py:892:19
	s_load_b32 s7, s[4:5], 0x0
	.loc	1 962 39                        ; ragged.py:962:39
	s_mul_i32 s8, s10, s28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v3, 16, v2
	v_or_b32_e32 v4, 32, v2
	v_or_b32_e32 v5, 48, v2
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e64 s5, s28, v2
	v_cmp_gt_i32_e64 s4, s28, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s25, s28, v4
	v_cmp_gt_i32_e64 s2, s28, v5
	.loc	1 893 27                        ; ragged.py:893:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s9, s7, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 953 19                        ; ragged.py:953:19
	s_cmp_gt_i32 s9, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge8_crit_edge
	.loc	1 1009 22                       ; ragged.py:1009:22
	s_add_i32 s30, s6, s8
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; ragged.py:0:22
	s_mov_b32 s12, -1
                                        ; implicit-def: $sgpr30
.LBB0_3:                                ; %Flow247
	s_load_b64 s[36:37], s[0:1], 0x28
	v_dual_mov_b32 v79, 0 :: v_dual_and_b32 v126, 0x70, v1
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_lshrrev_b32_e32 v127, 4, v0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v141, 0
	v_mov_b32_e32 v138, 0
	v_mov_b32_e32 v140, 0
	v_mov_b32_e32 v142, 0
	s_and_not1_b32 vcc_lo, exec_lo, s12
	s_lshl_b32 s31, s11, 8
	s_cbranch_vccnz .LBB0_10
; %bb.4:                                ; %.preheader.lr.ph
	s_clause 0x1
	s_load_b256 s[12:19], s[0:1], 0x0
	s_load_b64 s[20:21], s[0:1], 0x38
	.loc	1 893 26 is_stmt 1              ; ragged.py:893:26
	s_lshr_b32 s0, s9, 31
	.loc	1 956 23                        ; ragged.py:956:23
	s_lshl_b32 s34, s3, 4
	.loc	1 893 26                        ; ragged.py:893:26
	s_add_i32 s9, s9, s0
	.loc	1 972 37                        ; ragged.py:972:37
	s_and_b32 s0, s7, 0x80000001
	.loc	1 893 26                        ; ragged.py:893:26
	s_ashr_i32 s33, s9, 1
	.loc	1 972 37                        ; ragged.py:972:37
	s_cmp_eq_u32 s0, 1
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v1, s6, v127
	.loc	1 972 37                        ; ragged.py:972:37
	s_cselect_b32 s35, -1, 0
	.loc	1 972 67 is_stmt 0              ; ragged.py:972:67
	s_add_i32 s38, s33, -1
	s_cmp_lt_i32 s34, 16
	.loc	1 889 18 is_stmt 1              ; ragged.py:889:18
	v_or_b32_e32 v64, s31, v0
	s_cselect_b32 s3, -1, 0
	s_add_i32 s30, s6, s8
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v3, 16, v1
	v_or_b32_e32 v4, 32, v1
	v_or_b32_e32 v5, 48, v1
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e64 s0, s28, v1
	v_dual_mov_b32 v142, 0 :: v_dual_add_nc_u32 v1, s30, v127
	v_cmp_gt_i32_e64 s1, s28, v3
	v_cmp_gt_i32_e64 s6, s28, v4
	v_cmp_gt_i32_e64 s7, s28, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v140, 0 :: v_dual_add_nc_u32 v3, 16, v1
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v4, 32, v1
	v_dual_mov_b32 v138, 0 :: v_dual_add_nc_u32 v5, 48, v1
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v143, v1, s20
	v_mul_lo_u32 v144, v3, s20
	v_dual_mov_b32 v136, 0 :: v_dual_lshlrev_b32 v1, 4, v0
	v_bfe_i32 v3, v0, 7, 1
	v_mul_lo_u32 v145, v4, s20
	v_mul_lo_u32 v146, v5, s20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v132, 0 :: v_dual_and_b32 v1, 0x70, v1
	v_bfe_i32 v4, v0, 3, 1
	v_dual_mov_b32 v130, 0 :: v_dual_and_b32 v5, 0x7f, v0
	v_dual_mov_b32 v128, 0 :: v_dual_and_b32 v3, 0x88, v3
	v_and_or_b32 v150, 0x88, v4, v1
	v_mad_u64_u32 v[65:66], null, s29, 3, v[64:65]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v1, v3, v5
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v5, s30, v97
	v_dual_mov_b32 v141, 0 :: v_dual_and_b32 v2, 0xf0, v0
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v9, 16, v5
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v11, 32, v5
	v_dual_mov_b32 v135, 0 :: v_dual_add_nc_u32 v12, 48, v5
	v_mul_lo_u32 v152, v5, s21
	v_dual_mov_b32 v118, 0 :: v_dual_lshlrev_b32 v5, 5, v0
	v_mad_u64_u32 v[66:67], null, s29, 5, v[64:65]
	v_mad_u64_u32 v[67:68], null, s29, 6, v[64:65]
	v_mul_lo_u32 v153, v9, s21
	v_mul_lo_u32 v154, v11, s21
	v_dual_mov_b32 v116, 0 :: v_dual_lshlrev_b32 v9, 2, v2
	v_dual_mov_b32 v114, 0 :: v_dual_lshlrev_b32 v11, 1, v0
	v_dual_mov_b32 v112, 0 :: v_dual_and_b32 v5, 32, v5
	v_mad_u64_u32 v[68:69], null, s29, 7, v[64:65]
	v_mad_u64_u32 v[69:70], null, s29, 9, v[64:65]
	v_mad_u64_u32 v[70:71], null, s29, 10, v[64:65]
	v_mad_u64_u32 v[71:72], null, s29, 11, v[64:65]
	v_mad_u64_u32 v[72:73], null, s29, 12, v[64:65]
	v_xor_b32_e32 v3, 8, v150
	v_or_b32_e32 v4, 0x300, v0
	v_or_b32_e32 v6, 0x700, v0
	v_or_b32_e32 v7, 0xb00, v0
	v_or_b32_e32 v8, 0xf00, v0
	v_dual_mov_b32 v137, 0 :: v_dual_add_nc_u32 v10, 0, v126
	v_mul_lo_u32 v155, v12, s21
	v_cndmask_b32_e64 v12, 0, 1, s3
	v_dual_mov_b32 v110, 0 :: v_dual_and_b32 v11, 28, v11
	v_add3_u32 v5, 0, v9, v5
	v_dual_mov_b32 v133, 0 :: v_dual_lshlrev_b32 v2, 1, v2
	v_mad_u64_u32 v[73:74], null, s29, 13, v[64:65]
	v_mad_u64_u32 v[74:75], null, s29, 14, v[64:65]
	v_mad_u64_u32 v[75:76], null, s29, 15, v[64:65]
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s8, s29, v64
	v_dual_mov_b32 v134, 0 :: v_dual_add_nc_u32 v147, s29, v64
	v_lshl_add_u32 v148, s29, 1, v64
	v_lshl_add_u32 v149, s29, 2, v64
	v_lshl_add_u32 v151, s29, 3, v64
	v_cmp_ne_u32_e64 s9, 1, v12
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v156, 0, v1
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v157, 0, v3
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v158, 0, v0
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v159, 0, v4
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v160, 0, v6
	v_dual_mov_b32 v104, 0 :: v_dual_add_nc_u32 v161, 0, v7
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v162, 0, v8
	v_dual_mov_b32 v102, 0 :: v_dual_add_nc_u32 v163, v10, v97
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v164, v5, v11
	v_dual_mov_b32 v100, 0 :: v_dual_add_nc_u32 v165, 0, v2
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v76, 0
	v_mov_b32_e32 v93, 0
	v_mov_b32_e32 v91, 0
	v_mov_b32_e32 v89, 0
	v_mov_b32_e32 v87, 0
	v_mov_b32_e32 v85, 0
	v_mov_b32_e32 v83, 0
	v_mov_b32_e32 v81, 0
	v_mov_b32_e32 v77, 0
	v_mov_b32_e32 v79, 0
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	s_and_b32 s17, s17, 0xffff
	.loc	1 966 39                        ; ragged.py:966:39
	s_mul_i32 s39, s10, s20
	.loc	1 998 37                        ; ragged.py:998:37
	s_mul_i32 s56, s10, s21
	s_and_b32 s41, s13, 0xffff
	s_mov_b32 s40, s12
	s_and_b32 s45, s15, 0xffff
	s_mov_b32 s44, s14
	s_mov_b32 s57, 0
	s_and_b32 s53, s19, 0xffff
	.loc	1 953 19                        ; ragged.py:953:19
	s_lshr_b32 s58, s38, 4
	s_mov_b32 s48, s16
	s_mov_b32 s49, s17
	s_mov_b32 s50, s42
	s_mov_b32 s51, s43
	s_mov_b32 s52, s18
	s_mov_b32 s54, s42
	s_mov_b32 s55, s43
	s_mov_b32 s59, 0
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 990 40                        ; ragged.py:990:40
	v_add_lshl_u32 v32, v152, s57, 1
	.loc	1 998 25                        ; ragged.py:998:25
	s_add_i32 s3, s57, s56
	.loc	1 990 40                        ; ragged.py:990:40
	v_add_lshl_u32 v33, v153, s57, 1
	v_add_lshl_u32 v34, v154, s57, 1
	.loc	1 998 25                        ; ragged.py:998:25
	s_mul_i32 s3, s3, s29
	.loc	1 990 40                        ; ragged.py:990:40
	v_add_lshl_u32 v35, v155, s57, 1
	.loc	1 997 40                        ; ragged.py:997:40
	v_add_lshl_u32 v36, v64, s3, 1
	.loc	1 990 40                        ; ragged.py:990:40
	v_cndmask_b32_e64 v32, 0x80000000, v32, s5
	v_cndmask_b32_e64 v33, 0x80000000, v33, s4
	v_cndmask_b32_e64 v34, 0x80000000, v34, s25
	v_cndmask_b32_e64 v35, 0x80000000, v35, s2
	.loc	1 997 40                        ; ragged.py:997:40
	v_cndmask_b32_e64 v36, 0x80000000, v36, s8
	.loc	1 990 40                        ; ragged.py:990:40
	s_clause 0x3
	buffer_load_u16 v32, v32, s[48:51], 0 offen
	buffer_load_u16 v33, v33, s[48:51], 0 offen
	buffer_load_u16 v34, v34, s[48:51], 0 offen
	buffer_load_u16 v35, v35, s[48:51], 0 offen
	.loc	1 997 40                        ; ragged.py:997:40
	buffer_load_u16 v36, v36, s[52:55], 0 offen
	.loc	1 1002 21                       ; ragged.py:1002:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1004 17                       ; ragged.py:1004:17
	s_add_i32 s3, s57, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 953 19                        ; ragged.py:953:19
	s_lshl_b32 s59, s3, 4
	s_cmp_lg_u32 s57, s58
	s_mov_b32 s57, s3
	.loc	1 990 40                        ; ragged.py:990:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 995 21                        ; ragged.py:995:21
	v_dual_mul_f32 v53, v180, v33 :: v_dual_lshlrev_b32 v32, 16, v32
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v37, v197, v32 :: v_dual_lshlrev_b32 v34, 16, v34
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v40, v194, v32 :: v_dual_lshlrev_b32 v35, 16, v35
	v_mul_f32_e32 v38, v196, v32
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v55, v178, v33 :: v_dual_lshlrev_b32 v36, 16, v36
	v_dual_mul_f32 v39, v195, v32 :: v_dual_mul_f32 v52, v181, v33
	v_dual_mul_f32 v41, v193, v32 :: v_dual_mul_f32 v54, v179, v33
	v_dual_mul_f32 v42, v192, v32 :: v_dual_mul_f32 v59, v174, v33
	v_dual_mul_f32 v43, v191, v32 :: v_dual_mul_f32 v56, v177, v33
	v_dual_mul_f32 v44, v190, v32 :: v_dual_mul_f32 v57, v176, v33
	v_dual_mul_f32 v45, v189, v32 :: v_dual_mul_f32 v58, v175, v33
	v_dual_mul_f32 v46, v188, v32 :: v_dual_mul_f32 v63, v170, v33
	v_dual_mul_f32 v47, v187, v32 :: v_dual_mul_f32 v60, v173, v33
	v_dual_mul_f32 v48, v186, v32 :: v_dual_mul_f32 v61, v172, v33
	v_dual_mul_f32 v49, v185, v32 :: v_dual_mul_f32 v62, v171, v33
	v_dual_mul_f32 v50, v184, v32 :: v_dual_mul_f32 v169, v169, v33
	v_dual_mul_f32 v51, v183, v32 :: v_dual_mul_f32 v168, v168, v33
	v_dual_mul_f32 v32, v182, v32 :: v_dual_mul_f32 v167, v167, v33
	v_dual_mul_f32 v33, v166, v33 :: v_dual_mul_f32 v28, v28, v34
	v_dual_mul_f32 v31, v31, v34 :: v_dual_mul_f32 v14, v14, v35
	v_dual_mul_f32 v30, v30, v34 :: v_dual_mul_f32 v15, v15, v35
	v_dual_mul_f32 v29, v29, v34 :: v_dual_mul_f32 v180, v12, v35
	v_dual_mul_f32 v166, v27, v34 :: v_dual_mul_f32 v9, v9, v35
	v_dual_mul_f32 v170, v26, v34 :: v_dual_mul_f32 v181, v11, v35
	v_dual_mul_f32 v171, v25, v34 :: v_dual_mul_f32 v182, v10, v35
	v_dual_mul_f32 v172, v24, v34 :: v_dual_mul_f32 v7, v7, v35
	v_mul_f32_e32 v173, v23, v34
	v_dual_mul_f32 v174, v22, v34 :: v_dual_mul_f32 v5, v5, v35
	v_dual_mul_f32 v175, v21, v34 :: v_dual_mul_f32 v8, v8, v35
	v_dual_mul_f32 v176, v20, v34 :: v_dual_mul_f32 v3, v3, v35
	v_dual_mul_f32 v177, v19, v34 :: v_dual_mul_f32 v6, v6, v35
	v_dual_mul_f32 v178, v18, v34 :: v_dual_mul_f32 v1, v1, v35
	v_dual_mul_f32 v179, v17, v34 :: v_dual_mul_f32 v4, v4, v35
	v_mul_f32_e32 v34, v16, v34
	.loc	1 1002 21                       ; ragged.py:1002:21
	ds_store_b32 v164, v36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[16:19], v165
	ds_load_b128 v[20:23], v165 offset:16
	.loc	1 995 21                        ; ragged.py:995:21
	v_mul_f32_e32 v36, v13, v35
	.loc	1 1002 21                       ; ragged.py:1002:21
	ds_load_b128 v[10:13], v165 offset:512
	ds_load_b128 v[24:27], v165 offset:528
	.loc	1 995 21                        ; ragged.py:995:21
	v_mul_f32_e32 v2, v2, v35
	v_mul_f32_e32 v0, v0, v35
	.loc	1 1003 17                       ; ragged.py:1003:17
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v142, v37, v16 :: v_dual_fmac_f32 v139, v40, v19
	v_dual_fmac_f32 v141, v38, v17 :: v_dual_fmac_f32 v140, v39, v18
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v135, v44, v23 :: v_dual_fmac_f32 v138, v41, v20
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v133, v46, v11
	v_dual_fmac_f32 v137, v42, v21 :: v_dual_fmac_f32 v136, v43, v22
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v129, v50, v25 :: v_dual_fmac_f32 v134, v45, v10
	v_dual_fmac_f32 v125, v32, v27 :: v_dual_fmac_f32 v132, v47, v12
	v_fmac_f32_e32 v123, v53, v17
	v_dual_fmac_f32 v131, v48, v13 :: v_dual_fmac_f32 v130, v49, v24
	v_fmac_f32_e32 v121, v55, v19
	v_dual_fmac_f32 v128, v51, v26 :: v_dual_fmac_f32 v119, v57, v21
	v_dual_fmac_f32 v124, v52, v16 :: v_dual_fmac_f32 v117, v59, v23
	v_dual_fmac_f32 v122, v54, v18 :: v_dual_fmac_f32 v115, v61, v11
	v_dual_fmac_f32 v120, v56, v20 :: v_dual_fmac_f32 v113, v63, v13
	v_dual_fmac_f32 v118, v58, v22 :: v_dual_fmac_f32 v111, v168, v25
	v_dual_fmac_f32 v116, v60, v10 :: v_dual_fmac_f32 v109, v33, v27
	v_dual_fmac_f32 v114, v62, v12 :: v_dual_fmac_f32 v105, v28, v19
	v_dual_fmac_f32 v112, v169, v24 :: v_dual_fmac_f32 v107, v30, v17
	v_dual_fmac_f32 v110, v167, v26 :: v_dual_fmac_f32 v103, v170, v21
	v_dual_fmac_f32 v108, v31, v16 :: v_dual_fmac_f32 v101, v172, v23
	v_dual_fmac_f32 v106, v29, v18 :: v_dual_fmac_f32 v99, v174, v11
	v_dual_fmac_f32 v104, v166, v20 :: v_dual_fmac_f32 v93, v179, v26
	v_dual_fmac_f32 v102, v171, v22 :: v_dual_fmac_f32 v95, v177, v24
	v_dual_fmac_f32 v100, v173, v10 :: v_dual_fmac_f32 v91, v15, v16
	v_dual_fmac_f32 v98, v175, v12 :: v_dual_fmac_f32 v89, v36, v18
	v_dual_fmac_f32 v96, v176, v13 :: v_dual_fmac_f32 v87, v181, v20
	v_dual_fmac_f32 v94, v178, v25 :: v_dual_fmac_f32 v85, v9, v22
	v_dual_fmac_f32 v92, v34, v27 :: v_dual_fmac_f32 v83, v7, v10
	v_dual_fmac_f32 v90, v14, v17 :: v_dual_fmac_f32 v81, v5, v12
	v_dual_fmac_f32 v88, v180, v19 :: v_dual_fmac_f32 v77, v3, v24
	v_dual_fmac_f32 v86, v182, v21 :: v_dual_fmac_f32 v79, v1, v26
	v_fmac_f32_e32 v84, v8, v23
	v_fmac_f32_e32 v82, v6, v11
	v_fmac_f32_e32 v78, v4, v13
	v_fmac_f32_e32 v80, v2, v25
	v_fmac_f32_e32 v76, v0, v27
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
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v197, 0
	.loc	1 957 23 is_stmt 1              ; ragged.py:957:23
	s_and_b32 vcc_lo, exec_lo, s9
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_mov_b32_e32 v0, 0
	s_mov_b32 s60, s34
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v1, v0
	v_mov_b32_e32 v2, v0
	v_mov_b32_e32 v3, v0
	v_mov_b32_e32 v4, v0
	v_mov_b32_e32 v5, v0
	v_mov_b32_e32 v6, v0
	v_mov_b32_e32 v7, v0
	v_mov_b32_e32 v8, v0
	v_mov_b32_e32 v9, v0
	v_mov_b32_e32 v10, v0
	v_mov_b32_e32 v11, v0
	v_mov_b32_e32 v12, v0
	v_mov_b32_e32 v13, v0
	v_mov_b32_e32 v14, v0
	v_mov_b32_e32 v15, v0
	v_mov_b32_e32 v16, v0
	v_mov_b32_e32 v17, v0
	v_mov_b32_e32 v18, v0
	v_mov_b32_e32 v19, v0
	v_mov_b32_e32 v20, v0
	v_mov_b32_e32 v21, v0
	v_mov_b32_e32 v22, v0
	v_mov_b32_e32 v23, v0
	v_mov_b32_e32 v24, v0
	v_mov_b32_e32 v25, v0
	v_mov_b32_e32 v26, v0
	v_mov_b32_e32 v27, v0
	v_mov_b32_e32 v28, v0
	v_mov_b32_e32 v29, v0
	v_mov_b32_e32 v30, v0
	v_mov_b32_e32 v31, v0
	v_mov_b32_e32 v32, v0
	v_mov_b32_e32 v33, v0
	v_mov_b32_e32 v34, v0
	v_mov_b32_e32 v35, v0
	v_mov_b32_e32 v36, v0
	v_mov_b32_e32 v37, v0
	v_mov_b32_e32 v38, v0
	v_mov_b32_e32 v39, v0
	v_mov_b32_e32 v40, v0
	v_mov_b32_e32 v41, v0
	v_mov_b32_e32 v42, v0
	v_mov_b32_e32 v43, v0
	v_mov_b32_e32 v44, v0
	v_mov_b32_e32 v45, v0
	v_mov_b32_e32 v46, v0
	v_mov_b32_e32 v47, v0
	v_mov_b32_e32 v48, v0
	v_mov_b32_e32 v49, v0
	v_mov_b32_e32 v50, v0
	v_mov_b32_e32 v51, v0
	v_mov_b32_e32 v52, v0
	v_mov_b32_e32 v53, v0
	v_mov_b32_e32 v54, v0
	v_mov_b32_e32 v55, v0
	v_mov_b32_e32 v56, v0
	v_mov_b32_e32 v57, v0
	v_mov_b32_e32 v58, v0
	v_mov_b32_e32 v59, v0
	v_mov_b32_e32 v60, v0
	v_mov_b32_e32 v61, v0
	v_mov_b32_e32 v62, v0
	v_mov_b32_e32 v63, v0
.LBB0_8:                                ; %.lr.ph
                                        ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 958 26 is_stmt 1              ; ragged.py:958:26
	s_add_i32 s10, s60, s59
	.loc	1 974 38                        ; ragged.py:974:38
	s_mov_b32 s46, s42
	.loc	1 958 26                        ; ragged.py:958:26
	s_or_b32 s11, s10, 1
	s_or_b32 s12, s10, 2
	s_or_b32 s13, s10, 3
	s_or_b32 s14, s10, 4
	s_or_b32 s15, s10, 5
	s_or_b32 s16, s10, 6
	s_or_b32 s17, s10, 7
	s_or_b32 s18, s10, 8
	s_or_b32 s19, s10, 9
	s_or_b32 s20, s10, 10
	s_or_b32 s21, s10, 11
	s_or_b32 s22, s10, 12
	s_or_b32 s23, s10, 13
	s_or_b32 s24, s10, 14
	s_or_b32 s26, s10, 15
	.loc	1 971 35                        ; ragged.py:971:35
	s_cmp_lt_i32 s10, s33
	.loc	1 958 26                        ; ragged.py:958:26
	v_or_b32_e32 v166, s10, v97
	.loc	1 971 35                        ; ragged.py:971:35
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s11, s33
	.loc	1 974 38                        ; ragged.py:974:38
	s_mov_b32 s47, s43
	.loc	1 971 35                        ; ragged.py:971:35
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s12, s33
	.loc	1 971 60 is_stmt 0              ; ragged.py:971:60
	v_subrev_nc_u32_e32 v167, s59, v166
	.loc	1 971 35                        ; ragged.py:971:35
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s13, s33
	v_cmp_gt_i32_e32 vcc_lo, s33, v166
	s_cselect_b32 s80, -1, 0
	s_cmp_lt_i32 s14, s33
	.loc	1 971 59                        ; ragged.py:971:59
	v_cmp_gt_i32_e64 s3, 16, v167
	.loc	1 971 35                        ; ragged.py:971:35
	s_cselect_b32 s81, -1, 0
	s_cmp_lt_i32 s15, s33
	v_add_nc_u32_e32 v169, v166, v144
	s_cselect_b32 s82, -1, 0
	s_cmp_lt_i32 s16, s33
	v_add_nc_u32_e32 v170, v166, v145
	s_cselect_b32 s83, -1, 0
	s_cmp_lt_i32 s17, s33
	v_add_nc_u32_e32 v171, v166, v146
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s18, s33
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s19, s33
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s20, s33
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s21, s33
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s22, s33
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s23, s33
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s24, s33
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s26, s33
	s_cselect_b32 s92, -1, 0
	.loc	1 971 34                        ; ragged.py:971:34
	s_and_b32 s28, vcc_lo, s3
	.loc	1 972 60 is_stmt 1              ; ragged.py:972:60
	s_cmp_eq_u32 s10, s38
	s_cselect_b32 s61, -1, 0
	s_cmp_eq_u32 s11, s38
	s_cselect_b32 s62, -1, 0
	s_cmp_eq_u32 s12, s38
	s_cselect_b32 s63, -1, 0
	s_cmp_eq_u32 s13, s38
	s_cselect_b32 s64, -1, 0
	s_cmp_eq_u32 s14, s38
	s_cselect_b32 s65, -1, 0
	s_cmp_eq_u32 s15, s38
	s_cselect_b32 s66, -1, 0
	s_cmp_eq_u32 s16, s38
	s_cselect_b32 s67, -1, 0
	s_cmp_eq_u32 s17, s38
	s_cselect_b32 s68, -1, 0
	s_cmp_eq_u32 s18, s38
	s_cselect_b32 s69, -1, 0
	s_cmp_eq_u32 s19, s38
	s_cselect_b32 s70, -1, 0
	s_cmp_eq_u32 s20, s38
	s_cselect_b32 s71, -1, 0
	s_cmp_eq_u32 s21, s38
	s_cselect_b32 s72, -1, 0
	s_cmp_eq_u32 s22, s38
	s_cselect_b32 s73, -1, 0
	s_cmp_eq_u32 s23, s38
	s_cselect_b32 s74, -1, 0
	s_cmp_eq_u32 s24, s38
	s_cselect_b32 s75, -1, 0
	s_cmp_eq_u32 s26, s38
	s_cselect_b32 s76, -1, 0
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 vcc_lo, s8, s92
	v_add_nc_u32_e32 v168, v166, v143
	.loc	1 973 70                        ; ragged.py:973:70
	s_and_b32 s3, s0, s28
	.loc	1 974 46                        ; ragged.py:974:46
	s_add_i32 s93, s10, s39
	.loc	1 973 70                        ; ragged.py:973:70
	s_and_b32 s26, s1, s28
	s_and_b32 s27, s6, s28
	s_and_b32 s28, s7, s28
	.loc	1 973 38 is_stmt 0              ; ragged.py:973:38
	v_cndmask_b32_e64 v167, 0x80000000, v168, s3
	.loc	1 974 46 is_stmt 1              ; ragged.py:974:46
	s_mul_i32 s3, s93, s29
	.loc	1 973 38                        ; ragged.py:973:38
	v_cndmask_b32_e64 v168, 0x80000000, v169, s26
	v_cndmask_b32_e64 v169, 0x80000000, v170, s27
	v_cndmask_b32_e64 v170, 0x80000000, v171, s28
	.loc	1 974 46                        ; ragged.py:974:46
	v_add_nc_u32_e32 v171, s3, v64
	v_add_nc_u32_e32 v172, s3, v147
	v_add_nc_u32_e32 v173, s3, v148
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 s24, s8, s77
	.loc	1 974 46                        ; ragged.py:974:46
	v_add_nc_u32_e32 v174, s3, v65
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 s23, s8, s78
	.loc	1 974 46                        ; ragged.py:974:46
	v_add_nc_u32_e32 v175, s3, v149
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 s22, s8, s79
	.loc	1 974 46                        ; ragged.py:974:46
	v_add_nc_u32_e32 v176, s3, v66
	v_add_nc_u32_e32 v177, s3, v67
	v_add_nc_u32_e32 v178, s3, v68
	v_add_nc_u32_e32 v179, s3, v151
	v_add_nc_u32_e32 v180, s3, v69
	v_add_nc_u32_e32 v181, s3, v70
	v_add_nc_u32_e32 v182, s3, v71
	v_add_nc_u32_e32 v183, s3, v72
	v_add_nc_u32_e32 v184, s3, v73
	v_add_nc_u32_e32 v185, s3, v74
	v_add_nc_u32_e32 v186, s3, v75
	.loc	1 973 38 is_stmt 1              ; ragged.py:973:38
	s_clause 0x3
	buffer_load_u8 v187, v167, s[40:43], 0 offen
	buffer_load_u8 v168, v168, s[40:43], 0 offen
	buffer_load_u8 v169, v169, s[40:43], 0 offen
	buffer_load_u8 v170, v170, s[40:43], 0 offen
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e64 v167, 0x80000000, v171, s24
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 s21, s8, s80
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e64 v171, 0x80000000, v172, s23
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 s20, s8, s81
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e64 v172, 0x80000000, v173, s22
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 s19, s8, s82
	s_and_b32 s18, s8, s83
	s_and_b32 s17, s8, s84
	s_and_b32 s16, s8, s85
	s_and_b32 s15, s8, s86
	s_and_b32 s14, s8, s87
	s_and_b32 s13, s8, s88
	s_and_b32 s12, s8, s89
	s_and_b32 s11, s8, s90
	s_and_b32 s10, s8, s91
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e64 v173, 0x80000000, v174, s21
	v_cndmask_b32_e64 v174, 0x80000000, v175, s20
	v_cndmask_b32_e64 v175, 0x80000000, v176, s19
	v_cndmask_b32_e64 v176, 0x80000000, v177, s18
	v_cndmask_b32_e64 v177, 0x80000000, v178, s17
	v_cndmask_b32_e64 v178, 0x80000000, v179, s16
	v_cndmask_b32_e64 v179, 0x80000000, v180, s15
	v_cndmask_b32_e64 v180, 0x80000000, v181, s14
	v_cndmask_b32_e64 v181, 0x80000000, v182, s13
	v_cndmask_b32_e64 v182, 0x80000000, v183, s12
	v_cndmask_b32_e64 v183, 0x80000000, v184, s11
	v_cndmask_b32_e64 v184, 0x80000000, v185, s10
	v_cndmask_b32_e32 v185, 0x80000000, v186, vcc_lo
	s_clause 0xf
	buffer_load_u8 v190, v167, s[44:47], 0 offen
	buffer_load_u8 v191, v171, s[44:47], 0 offen
	buffer_load_u8 v192, v172, s[44:47], 0 offen
	buffer_load_u8 v193, v173, s[44:47], 0 offen
	buffer_load_u8 v194, v174, s[44:47], 0 offen
	buffer_load_u8 v195, v175, s[44:47], 0 offen
	buffer_load_u8 v196, v176, s[44:47], 0 offen
	buffer_load_u8 v197, v177, s[44:47], 0 offen
	buffer_load_u8 v198, v178, s[44:47], 0 offen
	buffer_load_u8 v199, v179, s[44:47], 0 offen
	buffer_load_u8 v200, v180, s[44:47], 0 offen
	buffer_load_u8 v201, v181, s[44:47], 0 offen
	buffer_load_u8 v202, v182, s[44:47], 0 offen
	buffer_load_u8 v203, v183, s[44:47], 0 offen
	buffer_load_u8 v204, v184, s[44:47], 0 offen
	buffer_load_u8 v205, v185, s[44:47], 0 offen
	.loc	1 972 60 is_stmt 1              ; ragged.py:972:60
	v_cmp_eq_u32_e32 vcc_lo, s38, v166
	.loc	1 972 36 is_stmt 0              ; ragged.py:972:36
	s_and_b32 s3, s35, s61
	s_and_b32 s10, s35, s62
	.loc	1 975 38 is_stmt 1              ; ragged.py:975:38
	v_add_nc_u32_e32 v171, 0, v150
	.loc	1 972 36                        ; ragged.py:972:36
	s_and_b32 s11, s35, s63
	s_and_b32 s24, s35, vcc_lo
	s_and_b32 s13, s35, s65
	s_and_b32 s12, s35, s64
	s_and_b32 s14, s35, s66
	s_and_b32 s15, s35, s67
	s_and_b32 s16, s35, s68
	s_and_b32 s17, s35, s69
	s_and_b32 s18, s35, s70
	s_and_b32 s19, s35, s71
	s_and_b32 s20, s35, s72
	s_and_b32 s21, s35, s73
	s_and_b32 s22, s35, s74
	s_and_b32 s23, s35, s75
	s_and_b32 s26, s35, s76
	.loc	1 975 38                        ; ragged.py:975:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 975 66 is_stmt 0              ; ragged.py:975:66
	s_waitcnt vmcnt(19)
	v_and_b16 v166.l, v187.l, 15
	s_waitcnt vmcnt(18)
	v_and_b16 v166.h, v168.l, 15
	s_waitcnt vmcnt(17)
	v_and_b16 v167.l, v169.l, 15
	s_waitcnt vmcnt(16)
	v_and_b16 v167.h, v170.l, 15
	.loc	1 975 38                        ; ragged.py:975:38
	v_cndmask_b16 v166.l, v187.l, v166.l, s24
	v_cndmask_b16 v166.h, v168.l, v166.h, s24
	v_cndmask_b16 v167.l, v169.l, v167.l, s24
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v167.h, v170.l, v167.h, s24
	ds_store_b8 v156, v166
	ds_store_b8_d16_hi v156, v166 offset:256
	ds_store_b8 v156, v167 offset:512
	ds_store_b8_d16_hi v156, v167 offset:768
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[166:169], v171 offset1:32
	ds_load_2addr_b64 v[170:173], v171 offset0:64 offset1:96
	ds_load_2addr_b64 v[174:177], v157 offset1:32
	ds_load_2addr_b64 v[178:181], v157 offset0:64 offset1:96
	.loc	1 976 38 is_stmt 1              ; ragged.py:976:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	s_waitcnt vmcnt(15)
	v_and_b16 v182.l, v190.l, 15
	s_waitcnt vmcnt(14)
	v_and_b16 v182.h, v191.l, 15
	s_waitcnt vmcnt(13)
	v_and_b16 v183.l, v192.l, 15
	s_waitcnt vmcnt(12)
	v_and_b16 v183.h, v193.l, 15
	s_waitcnt vmcnt(11)
	v_and_b16 v184.l, v194.l, 15
	s_waitcnt vmcnt(10)
	v_and_b16 v184.h, v195.l, 15
	s_waitcnt vmcnt(9)
	v_and_b16 v185.l, v196.l, 15
	s_waitcnt vmcnt(8)
	v_and_b16 v185.h, v197.l, 15
	s_waitcnt vmcnt(7)
	v_and_b16 v186.l, v198.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v186.h, v199.l, 15
	s_waitcnt vmcnt(5)
	v_and_b16 v187.l, v200.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v187.h, v201.l, 15
	s_waitcnt vmcnt(3)
	v_and_b16 v188.l, v202.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v188.h, v203.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v189.l, v204.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v189.h, v205.l, 15
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v182.l, v190.l, v182.l, s3
	v_cndmask_b16 v182.h, v191.l, v182.h, s10
	v_cndmask_b16 v183.l, v192.l, v183.l, s11
	v_cndmask_b16 v184.l, v194.l, v184.l, s13
	v_cndmask_b16 v183.h, v193.l, v183.h, s12
	v_cndmask_b16 v184.h, v195.l, v184.h, s14
	v_cndmask_b16 v185.l, v196.l, v185.l, s15
	v_cndmask_b16 v185.h, v197.l, v185.h, s16
	v_cndmask_b16 v186.l, v198.l, v186.l, s17
	v_cndmask_b16 v186.h, v199.l, v186.h, s18
	v_cndmask_b16 v187.l, v200.l, v187.l, s19
	v_cndmask_b16 v187.h, v201.l, v187.h, s20
	v_cndmask_b16 v188.l, v202.l, v188.l, s21
	v_cndmask_b16 v188.h, v203.l, v188.h, s22
	v_cndmask_b16 v189.l, v204.l, v189.l, s23
	v_cndmask_b16 v189.h, v205.l, v189.h, s26
	ds_store_b8 v158, v182
	ds_store_b8_d16_hi v158, v182 offset:256
	ds_store_b8 v158, v183 offset:512
	ds_store_b8 v158, v184 offset:1024
	ds_store_b8_d16_hi v158, v184 offset:1280
	ds_store_b8 v158, v185 offset:1536
	ds_store_b8 v158, v186 offset:2048
	ds_store_b8_d16_hi v158, v186 offset:2304
	ds_store_b8 v158, v187 offset:2560
	ds_store_b8 v158, v188 offset:3072
	ds_store_b8_d16_hi v158, v188 offset:3328
	ds_store_b8_d16_hi v159, v183
	ds_store_b8_d16_hi v160, v185
	ds_store_b8_d16_hi v161, v187
	ds_store_b8 v158, v189 offset:3584
	ds_store_b8_d16_hi v162, v189
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 977 31 is_stmt 1              ; ragged.py:977:31
	ds_load_u8 v182, v163 offset:3328
	ds_load_u8 v183, v163 offset:3072
	ds_load_u8 v184, v163 offset:3840
	ds_load_u8 v185, v163 offset:3584
	ds_load_u8 v186, v163 offset:2304
	ds_load_u8 v187, v163 offset:2048
	ds_load_u8 v188, v163 offset:2816
	ds_load_u8 v189, v163 offset:2560
	ds_load_u8 v190, v163 offset:1280
	ds_load_u8 v191, v163 offset:1024
	ds_load_u8 v192, v163 offset:1792
	ds_load_u8 v193, v163 offset:1536
	ds_load_u8 v194, v163 offset:1920
	ds_load_u8 v195, v163 offset:1664
	ds_load_u8 v196, v163 offset:1408
	ds_load_u8 v197, v163 offset:1152
	ds_load_u8 v198, v163 offset:256
	ds_load_u8 v199, v163
	ds_load_u8 v200, v163 offset:768
	ds_load_u8 v201, v163 offset:512
	ds_load_u8 v202, v163 offset:896
	ds_load_u8 v203, v163 offset:640
	ds_load_u8 v204, v163 offset:384
	ds_load_u8 v205, v163 offset:128
	ds_load_u8 v206, v163 offset:3968
	ds_load_u8 v207, v163 offset:3712
	ds_load_u8 v208, v163 offset:3456
	ds_load_u8 v209, v163 offset:3200
	ds_load_u8 v210, v163 offset:2944
	ds_load_u8 v211, v163 offset:2432
	ds_load_u8 v212, v163 offset:2176
	ds_load_u8 v213, v163 offset:2688
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v190, v191, v190, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v191, v193, v192, 0xc0c0004
	v_perm_b32 v188, v189, v188, 0xc0c0004
	v_perm_b32 v184, v185, v184, 0xc0c0004
	.loc	1 987 21                        ; ragged.py:987:21
	s_add_i32 s3, s60, 16
	.loc	1 977 31                        ; ragged.py:977:31
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v192, v199, v198, 0xc0c0004
	v_perm_b32 v199, v187, v186, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v193, v201, v200, 0xc0c0004
	v_perm_b32 v186, v197, v196, 0xc0c0004
	v_perm_b32 v187, v195, v194, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v194, v203, v202, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v189, v205, v204, 0xc0c0004
	v_perm_b32 v198, v183, v182, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v196, v207, v206, 0xc0c0004
	v_lshl_or_b32 v183, v191, 16, v190
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v195, v209, v208, 0xc0c0004
	v_lshl_or_b32 v182, v193, 16, v192
	v_lshl_or_b32 v187, v187, 16, v186
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v197, v212, v211, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v200, v213, v210, 0xc0c0004
	v_lshl_or_b32 v186, v194, 16, v189
	v_lshl_or_b32 v185, v184, 16, v198
	v_lshl_or_b32 v184, v188, 16, v199
	v_lshl_or_b32 v189, v196, 16, v195
	v_lshl_or_b32 v188, v200, 16, v197
	v_wmma_i32_16x16x16_iu4 v[0:7], v[182:183], v[166:167], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[186:187], v[166:167], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[182:183], v[168:169], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[186:187], v[168:169], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[182:183], v[170:171], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[186:187], v[170:171], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[182:183], v[172:173], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[186:187], v[172:173], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[184:185], v[174:175], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[188:189], v[174:175], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[184:185], v[176:177], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[188:189], v[176:177], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[184:185], v[178:179], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[188:189], v[178:179], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[184:185], v[180:181], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[188:189], v[180:181], v[56:63] neg_lo:[1,1,0]
	.loc	1 957 23                        ; ragged.py:957:23
	s_cmp_lt_i32 s60, 0
	s_mov_b32 s60, s3
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 988 27                        ; ragged.py:988:27
	v_cvt_f32_i32_e32 v197, v0
	v_cvt_f32_i32_e32 v196, v1
	v_cvt_f32_i32_e32 v195, v2
	v_cvt_f32_i32_e32 v194, v3
	v_cvt_f32_i32_e32 v193, v4
	v_cvt_f32_i32_e32 v192, v5
	v_cvt_f32_i32_e32 v191, v6
	v_cvt_f32_i32_e32 v190, v7
	v_cvt_f32_i32_e32 v189, v8
	v_cvt_f32_i32_e32 v188, v9
	v_cvt_f32_i32_e32 v187, v10
	v_cvt_f32_i32_e32 v186, v11
	v_cvt_f32_i32_e32 v185, v12
	v_cvt_f32_i32_e32 v184, v13
	v_cvt_f32_i32_e32 v183, v14
	v_cvt_f32_i32_e32 v182, v15
	v_cvt_f32_i32_e32 v181, v16
	v_cvt_f32_i32_e32 v180, v17
	v_cvt_f32_i32_e32 v179, v18
	v_cvt_f32_i32_e32 v178, v19
	v_cvt_f32_i32_e32 v177, v20
	v_cvt_f32_i32_e32 v176, v21
	v_cvt_f32_i32_e32 v175, v22
	v_cvt_f32_i32_e32 v174, v23
	v_cvt_f32_i32_e32 v173, v24
	v_cvt_f32_i32_e32 v172, v25
	v_cvt_f32_i32_e32 v171, v26
	v_cvt_f32_i32_e32 v170, v27
	v_cvt_f32_i32_e32 v169, v28
	v_cvt_f32_i32_e32 v168, v29
	v_cvt_f32_i32_e32 v167, v30
	v_cvt_f32_i32_e32 v166, v31
	v_cvt_f32_i32_e32 v31, v32
	v_cvt_f32_i32_e32 v30, v33
	v_cvt_f32_i32_e32 v29, v34
	v_cvt_f32_i32_e32 v28, v35
	v_cvt_f32_i32_e32 v27, v36
	v_cvt_f32_i32_e32 v26, v37
	v_cvt_f32_i32_e32 v25, v38
	v_cvt_f32_i32_e32 v24, v39
	v_cvt_f32_i32_e32 v23, v40
	v_cvt_f32_i32_e32 v22, v41
	v_cvt_f32_i32_e32 v21, v42
	v_cvt_f32_i32_e32 v20, v43
	v_cvt_f32_i32_e32 v19, v44
	v_cvt_f32_i32_e32 v18, v45
	v_cvt_f32_i32_e32 v17, v46
	v_cvt_f32_i32_e32 v16, v47
	v_cvt_f32_i32_e32 v15, v48
	v_cvt_f32_i32_e32 v14, v49
	v_cvt_f32_i32_e32 v13, v50
	v_cvt_f32_i32_e32 v12, v51
	v_cvt_f32_i32_e32 v11, v52
	v_cvt_f32_i32_e32 v10, v53
	v_cvt_f32_i32_e32 v9, v54
	v_cvt_f32_i32_e32 v8, v55
	v_cvt_f32_i32_e32 v7, v56
	v_cvt_f32_i32_e32 v6, v57
	v_cvt_f32_i32_e32 v5, v58
	v_cvt_f32_i32_e32 v4, v59
	v_cvt_f32_i32_e32 v3, v60
	v_cvt_f32_i32_e32 v2, v61
	v_cvt_f32_i32_e32 v1, v62
	v_cvt_f32_i32_e32 v0, v63
	s_branch .LBB0_5
.LBB0_10:                               ; %._crit_edge8
	.loc	1 889 36                        ; ragged.py:889:36
	v_and_or_b32 v3, v127, 1, v126
	.loc	1 1009 22                       ; ragged.py:1009:22
	s_mul_i32 s3, s30, s29
	.loc	1 1009 13 is_stmt 0             ; ragged.py:1009:13
	s_waitcnt lgkmcnt(0)
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 889 36 is_stmt 1              ; ragged.py:889:36
	v_or_b32_e32 v4, 0x8e, v3
	v_or_b32_e32 v5, 0x8c, v3
	v_or_b32_e32 v7, 0x88, v3
	v_or_b32_e32 v8, 0x86, v3
	v_or_b32_e32 v6, 0x8a, v3
	v_or_b32_e32 v9, 0x84, v3
	v_or_b32_e32 v10, 0x82, v3
	.loc	1 889 18 is_stmt 0              ; ragged.py:889:18
	v_or_b32_e32 v0, s31, v4
	v_or_b32_e32 v1, s31, v5
	v_or_b32_e32 v11, s31, v7
	v_or_b32_e32 v12, s31, v8
	v_or_b32_e32 v2, s31, v6
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v13, 12, v3
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e32 vcc_lo, s29, v0
	v_cmp_gt_i32_e64 s0, s29, v1
	v_cmp_gt_i32_e64 s6, s29, v11
	v_cmp_gt_i32_e64 s7, s29, v12
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v0, s31, v9
	v_or_b32_e32 v1, s31, v10
	.loc	1 889 36 is_stmt 0              ; ragged.py:889:36
	v_or_b32_e32 v11, 0x80, v3
	v_or_b32_e32 v12, 14, v3
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e64 s1, s29, v2
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v2, s31, v13
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s8, s29, v0
	v_cmp_gt_i32_e64 s9, s29, v1
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v0, s31, v11
	v_or_b32_e32 v1, s31, v12
	.loc	1 889 36 is_stmt 0              ; ragged.py:889:36
	v_or_b32_e32 v14, 10, v3
	v_or_b32_e32 v15, 8, v3
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e64 s12, s29, v2
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_mul_lo_u32 v2, s29, v97
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s10, s29, v0
	v_cmp_gt_i32_e64 s11, s29, v1
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v0, s31, v14
	v_or_b32_e32 v1, s31, v15
	.loc	1 889 36 is_stmt 0              ; ragged.py:889:36
	v_or_b32_e32 v16, 6, v3
	v_or_b32_e32 v18, 2, v3
	v_or_b32_e32 v17, 4, v3
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v21, s31, v3
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e64 s13, s29, v0
	v_cmp_gt_i32_e64 s14, s29, v1
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v1, s31, v16
	v_or_b32_e32 v20, s31, v18
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_add3_u32 v0, s3, s31, v2
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v19, s31, v17
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s18, s29, v21
	v_cmp_gt_i32_e64 s15, s29, v1
	v_cmp_gt_i32_e64 s17, s29, v20
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v1, v0, v3, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s16, s29, v19
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v0, v18, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s18
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v21, v0, v17, 2
	v_cndmask_b32_e64 v22, 0x80000000, v1, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s17
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_lshl_add_u32 v19, s29, 4, v0
	.loc	1 1009 13 is_stmt 0             ; ragged.py:1009:13
	v_cndmask_b32_e64 v23, 0x80000000, v2, s3
	.loc	1 1007 20 is_stmt 1             ; ragged.py:1007:20
	s_and_b32 s3, s5, s16
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_mad_u64_u32 v[1:2], null, s29, 48, v[0:1]
	.loc	1 1009 13 is_stmt 0             ; ragged.py:1009:13
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	v_add_lshl_u32 v2, v0, v16, 2
	s_clause 0x2
	buffer_store_b32 v142, v22, s[36:39], 0 offen
	buffer_store_b32 v141, v23, s[36:39], 0 offen
	buffer_store_b32 v140, v21, s[36:39], 0 offen
	v_add_lshl_u32 v21, v0, v15, 2
	.loc	1 1007 20 is_stmt 1             ; ragged.py:1007:20
	s_and_b32 s3, s5, s15
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v22, v0, v14, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s14
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v23, v0, v13, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s13
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v139, v2, s[36:39], 0 offen
	buffer_store_b32 v138, v21, s[36:39], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s12
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v0, v12, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_add_lshl_u32 v21, v0, v11, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s11
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v137, v22, s[36:39], 0 offen
	buffer_store_b32 v136, v23, s[36:39], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v0, v10, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s10
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v23, v0, v9, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s9
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v135, v2, s[36:39], 0 offen
	buffer_store_b32 v134, v21, s[36:39], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v0, v8, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_add_lshl_u32 v21, v0, v7, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s7
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v133, v22, s[36:39], 0 offen
	buffer_store_b32 v132, v23, s[36:39], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v0, v6, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s6
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v23, v0, v5, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s1
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_lshl_add_u32 v20, s29, 5, v0
	.loc	1 1009 13 is_stmt 0             ; ragged.py:1009:13
	v_add_lshl_u32 v0, v0, v4, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1007 20 is_stmt 1             ; ragged.py:1007:20
	s_and_b32 s3, s5, s0
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v131, v2, s[36:39], 0 offen
	buffer_store_b32 v130, v21, s[36:39], 0 offen
	v_add_lshl_u32 v2, v19, v3, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, vcc_lo
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v21, v19, v18, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s18
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v129, v22, s[36:39], 0 offen
	buffer_store_b32 v128, v23, s[36:39], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v17, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s17
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v125, v0, s[36:39], 0 offen
	buffer_store_b32 v124, v2, s[36:39], 0 offen
	v_add_lshl_u32 v0, v19, v16, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s16
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v19, v15, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s15
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v123, v21, s[36:39], 0 offen
	buffer_store_b32 v122, v22, s[36:39], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s14
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v21, v19, v14, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v13, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s13
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v121, v0, s[36:39], 0 offen
	buffer_store_b32 v120, v2, s[36:39], 0 offen
	v_add_lshl_u32 v0, v19, v12, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s12
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v19, v11, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s11
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v119, v21, s[36:39], 0 offen
	buffer_store_b32 v118, v22, s[36:39], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s10
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v21, v19, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v9, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s9
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v117, v0, s[36:39], 0 offen
	buffer_store_b32 v116, v2, s[36:39], 0 offen
	v_add_lshl_u32 v0, v19, v8, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v19, v7, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s7
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v115, v21, s[36:39], 0 offen
	buffer_store_b32 v114, v22, s[36:39], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s6
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v21, v19, v6, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v5, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s1
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v113, v0, s[36:39], 0 offen
	buffer_store_b32 v112, v2, s[36:39], 0 offen
	v_add_lshl_u32 v0, v19, v4, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s0
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v20, v3, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, vcc_lo
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v19, v20, v18, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s25, s18
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v111, v21, s[36:39], 0 offen
	buffer_store_b32 v110, v22, s[36:39], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v17, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s25, s17
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v109, v0, s[36:39], 0 offen
	buffer_store_b32 v108, v2, s[36:39], 0 offen
	v_add_lshl_u32 v0, v20, v16, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s25, s16
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v20, v15, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s25, s15
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v107, v19, s[36:39], 0 offen
	buffer_store_b32 v106, v21, s[36:39], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s25, s14
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v19, v20, v14, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v13, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s25, s13
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v105, v0, s[36:39], 0 offen
	buffer_store_b32 v104, v2, s[36:39], 0 offen
	v_add_lshl_u32 v0, v20, v12, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s25, s12
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v20, v11, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s25, s11
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v103, v19, s[36:39], 0 offen
	buffer_store_b32 v102, v21, s[36:39], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s25, s10
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v19, v20, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v9, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s25, s9
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v101, v0, s[36:39], 0 offen
	buffer_store_b32 v100, v2, s[36:39], 0 offen
	v_add_lshl_u32 v0, v20, v8, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s25, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v20, v7, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s25, s7
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v99, v19, s[36:39], 0 offen
	buffer_store_b32 v98, v21, s[36:39], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s25, s6
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v19, v20, v6, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v5, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s25, s1
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v96, v0, s[36:39], 0 offen
	buffer_store_b32 v95, v2, s[36:39], 0 offen
	v_add_lshl_u32 v0, v20, v4, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s25, s0
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v1, v3, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s25, vcc_lo
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v3, v1, v18, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s18
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v17, v1, v17, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s17
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v94, v19, s[36:39], 0 offen
	buffer_store_b32 v93, v21, s[36:39], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s16
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v92, v0, s[36:39], 0 offen
	buffer_store_b32 v91, v2, s[36:39], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	v_add_lshl_u32 v0, v1, v16, 2
	v_add_lshl_u32 v2, v1, v15, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s15
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v90, v3, s[36:39], 0 offen
	buffer_store_b32 v89, v17, s[36:39], 0 offen
	v_add_lshl_u32 v3, v1, v14, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s14
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v13, v1, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s13
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v88, v0, s[36:39], 0 offen
	buffer_store_b32 v87, v2, s[36:39], 0 offen
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
	buffer_store_b32 v86, v3, s[36:39], 0 offen
	buffer_store_b32 v85, v13, s[36:39], 0 offen
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
	buffer_store_b32 v84, v0, s[36:39], 0 offen
	buffer_store_b32 v83, v2, s[36:39], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v0, v1, v8, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_add_lshl_u32 v2, v1, v7, 2
	s_clause 0x1
	buffer_store_b32 v82, v3, s[36:39], 0 offen
	buffer_store_b32 v81, v9, s[36:39], 0 offen
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
	buffer_store_b32 v78, v0, s[36:39], 0 offen
	buffer_store_b32 v77, v2, s[36:39], 0 offen
	buffer_store_b32 v80, v3, s[36:39], 0 offen
	buffer_store_b32 v79, v4, s[36:39], 0 offen
	buffer_store_b32 v76, v1, s[36:39], 0 offen
	.loc	1 856 5                         ; ragged.py:856:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 214
		.amdhsa_next_free_sgpr 94
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 214
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 94
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8132
; TotalNumSgprs: 96
; NumVgprs: 214
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 96
; NumVGPRsForWavesPerEU: 214
; Occupancy: 7
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     96
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     214
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
