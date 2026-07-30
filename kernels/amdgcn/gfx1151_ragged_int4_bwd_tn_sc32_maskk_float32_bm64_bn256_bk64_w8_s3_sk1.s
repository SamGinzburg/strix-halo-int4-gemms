	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 856 0                         ; ragged.py:856:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[22:23], s[0:1], 0x30
.Ltmp0:
	.loc	1 883 20 prologue_end           ; ragged.py:883:20
	s_abs_i32 s9, s2
	.loc	1 888 36                        ; ragged.py:888:36
	v_and_b32_e32 v104, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:880:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s22, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:881:21 ]
	s_add_i32 s5, s23, 0xff
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
	s_ashr_i32 s8, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 882 27 is_stmt 1              ; ragged.py:882:27
	s_mul_i32 s4, s8, s4
	.loc	1 883 20                        ; ragged.py:883:20
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
	s_mul_hi_u32 s6, s9, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s10, s6, s5
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s9, s5
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s5, s10, s6
	.loc	1 885 17                        ; ragged.py:885:17
	s_abs_i32 s9, s8
	.loc	1 883 20                        ; ragged.py:883:20
	s_xor_b32 s5, s5, s7
	.loc	1 885 17                        ; ragged.py:885:17
	s_cvt_f32_u32 s6, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	.loc	1 889 36                        ; ragged.py:889:36
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 885 17                        ; ragged.py:885:17
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3)
	s_cvt_u32_f32 s10, s6
	.loc	1 883 20                        ; ragged.py:883:20
	s_sub_i32 s6, s5, s7
	.loc	1 885 17                        ; ragged.py:885:17
	s_sub_i32 s5, 0, s9
	.loc	1 884 22                        ; ragged.py:884:22
	s_mul_i32 s4, s6, s4
	.loc	1 885 17                        ; ragged.py:885:17
	s_mul_i32 s5, s5, s10
	.loc	1 884 16                        ; ragged.py:884:16
	s_sub_i32 s2, s2, s4
	.loc	1 885 17                        ; ragged.py:885:17
	s_mul_hi_u32 s4, s10, s5
	s_abs_i32 s7, s2
	s_add_i32 s10, s10, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s10, s7, s10
	s_xor_b32 s11, s2, s8
	s_mul_i32 s12, s10, s9
	s_ashr_i32 s11, s11, 31
	s_sub_i32 s7, s7, s12
	s_add_i32 s12, s10, 1
	s_sub_i32 s13, s7, s9
	s_cmp_ge_u32 s7, s9
	s_cselect_b32 s10, s12, s10
	s_cselect_b32 s7, s13, s7
	s_add_i32 s12, s10, 1
	s_cmp_ge_u32 s7, s9
	s_cselect_b32 s7, s12, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s7, s7, s11
	s_sub_i32 s9, s7, s11
	.loc	1 892 19                        ; ragged.py:892:19
	s_ashr_i32 s7, s6, 31
	.loc	1 886 24                        ; ragged.py:886:24
	s_mul_i32 s8, s9, s8
	.loc	1 892 19                        ; ragged.py:892:19
	s_lshl_b64 s[10:11], s[6:7], 2
	.loc	1 886 17                        ; ragged.py:886:17
	s_sub_i32 s8, s2, s8
	.loc	1 888 18                        ; ragged.py:888:18
	s_lshl_b32 s33, s9, 6
	.loc	1 892 19                        ; ragged.py:892:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s10
	s_addc_u32 s5, s5, s11
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v2, s33, v104
	.loc	1 892 19                        ; ragged.py:892:19
	s_load_b32 s18, s[4:5], 0x0
	s_mov_b32 s9, 0
	.loc	1 991 37                        ; ragged.py:991:37
	s_mul_i32 s7, s6, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v3, 16, v2
	v_or_b32_e32 v4, 32, v2
	v_or_b32_e32 v5, 48, v2
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e64 s5, s22, v2
	v_cmp_gt_i32_e64 s4, s22, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s19, s22, v4
	v_cmp_gt_i32_e64 s2, s22, v5
	.loc	1 893 27                        ; ragged.py:893:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s20, s18, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 953 19                        ; ragged.py:953:19
	s_cmp_gt_i32 s20, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge8_crit_edge
	.loc	1 1009 22                       ; ragged.py:1009:22
	s_add_i32 s27, s33, s7
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; ragged.py:0:22
	s_mov_b32 s9, -1
                                        ; implicit-def: $sgpr27
.LBB0_3:                                ; %Flow414
	s_load_b64 s[24:25], s[0:1], 0x28
	v_dual_mov_b32 v82, 0 :: v_dual_and_b32 v135, 0x70, v1
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v144, 0
	v_mov_b32_e32 v143, 0
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_lshl_b32 s26, s8, 8
	s_cbranch_vccnz .LBB0_10
; %bb.4:                                ; %.preheader.lr.ph
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x38
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 893 26 is_stmt 1              ; ragged.py:893:26
	s_lshr_b32 s0, s20, 31
	.loc	1 972 37                        ; ragged.py:972:37
	s_and_b32 s1, s18, 0x80000001
	.loc	1 893 26                        ; ragged.py:893:26
	s_add_i32 s20, s20, s0
	.loc	1 956 23                        ; ragged.py:956:23
	s_lshl_b32 s34, s3, 4
	.loc	1 893 26                        ; ragged.py:893:26
	s_ashr_i32 s35, s20, 1
	.loc	1 972 37                        ; ragged.py:972:37
	s_cmp_eq_u32 s1, 1
	v_dual_mov_b32 v144, 0 :: v_dual_and_b32 v1, 63, v0
	s_cselect_b32 s48, -1, 0
	.loc	1 972 67 is_stmt 0              ; ragged.py:972:67
	s_add_i32 s49, s35, -1
	s_cmp_lt_i32 s34, 16
	.loc	1 951 28 is_stmt 1              ; ragged.py:951:28
	v_lshrrev_b32_e32 v145, 6, v0
	s_cselect_b32 s3, -1, 0
	s_add_i32 s27, s33, s7
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v2, s33, v1
	v_dual_mov_b32 v141, 0 :: v_dual_add_nc_u32 v4, s27, v104
	.loc	1 951 28                        ; ragged.py:951:28
	v_or_b32_e32 v146, 12, v145
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v65, s26, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[66:67], null, s22, v145, v[1:2]
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v8, 16, v4
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v152, v4, s17
	v_dual_mov_b32 v140, 0 :: v_dual_add_nc_u32 v9, 32, v4
	v_dual_mov_b32 v137, 0 :: v_dual_add_nc_u32 v4, 48, v4
	v_dual_mov_b32 v133, 0 :: v_dual_and_b32 v10, 0xf0, v0
	v_mul_lo_u32 v153, v8, s17
	v_dual_mov_b32 v131, 0 :: v_dual_lshlrev_b32 v8, 5, v0
	v_mad_u64_u32 v[67:68], null, s22, v146, v[1:2]
	v_mad_u64_u32 v[68:69], null, s23, 3, v[65:66]
	v_mad_u64_u32 v[69:70], null, s23, 5, v[65:66]
	v_mad_u64_u32 v[70:71], null, s23, 6, v[65:66]
	v_mul_lo_u32 v154, v9, s17
	v_mul_lo_u32 v155, v4, s17
	v_dual_mov_b32 v129, 0 :: v_dual_lshlrev_b32 v4, 2, v10
	v_dual_mov_b32 v138, 0 :: v_dual_lshlrev_b32 v9, 1, v0
	v_dual_mov_b32 v127, 0 :: v_dual_and_b32 v8, 32, v8
	v_mad_u64_u32 v[71:72], null, s23, 7, v[65:66]
	v_mad_u64_u32 v[72:73], null, s23, 9, v[65:66]
	v_mad_u64_u32 v[73:74], null, s23, 10, v[65:66]
	v_mad_u64_u32 v[74:75], null, s23, 11, v[65:66]
	v_mad_u64_u32 v[75:76], null, s23, 12, v[65:66]
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e64 s1, s22, v2
	v_or_b32_e32 v1, 0x300, v0
	v_or_b32_e32 v2, 0x3f0, v0
	v_or_b32_e32 v3, 0x700, v0
	v_or_b32_e32 v5, 0xb00, v0
	v_or_b32_e32 v6, 0xf00, v0
	v_dual_mov_b32 v142, 0 :: v_dual_add_nc_u32 v7, 0, v135
	v_cndmask_b32_e64 v11, 0, 1, s3
	v_dual_mov_b32 v136, 0 :: v_dual_and_b32 v9, 28, v9
	v_add3_u32 v4, 0, v4, v8
	v_dual_mov_b32 v125, 0 :: v_dual_lshlrev_b32 v8, 1, v10
	v_mad_u64_u32 v[76:77], null, s23, 13, v[65:66]
	v_mad_u64_u32 v[77:78], null, s23, 14, v[65:66]
	v_mad_u64_u32 v[78:79], null, s23, 15, v[65:66]
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s0, s23, v65
	.loc	1 960 39                        ; ragged.py:960:39
	s_mul_i32 s50, s6, s16
	.loc	1 998 37                        ; ragged.py:998:37
	s_mul_i32 s51, s6, s17
	v_lshl_add_u32 v147, s22, 3, v66
	v_dual_mov_b32 v143, 0 :: v_dual_add_nc_u32 v148, s23, v65
	v_lshl_add_u32 v149, s23, 1, v65
	v_lshl_add_u32 v150, s23, 2, v65
	v_lshl_add_u32 v151, s23, 3, v65
	v_cmp_ne_u32_e64 s6, 1, v11
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v156, 0, v0
	v_dual_mov_b32 v134, 0 :: v_dual_add_nc_u32 v157, 0, v1
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v158, 0, v2
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v159, 0, v3
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v160, 0, v5
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v161, 0, v6
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v162, v7, v104
	v_dual_mov_b32 v128, 0 :: v_dual_add_nc_u32 v163, v4, v9
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v164, 0, v8
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v79, 0
	v_mov_b32_e32 v88, 0
	v_mov_b32_e32 v86, 0
	v_mov_b32_e32 v84, 0
	v_mov_b32_e32 v80, 0
	v_mov_b32_e32 v82, 0
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s36, s10
	s_mov_b32 s52, 0
	s_and_b32 s45, s15, 0xffff
	.loc	1 953 19                        ; ragged.py:953:19
	s_lshr_b32 s53, s49, 4
	s_mov_b32 s40, s12
	s_mov_b32 s41, s13
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	s_mov_b32 s44, s14
	s_mov_b32 s46, s30
	s_mov_b32 s47, s31
	s_mov_b32 s54, 0
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 990 40                        ; ragged.py:990:40
	v_add_lshl_u32 v33, v152, s52, 1
	.loc	1 998 25                        ; ragged.py:998:25
	s_add_i32 s3, s52, s51
	.loc	1 990 40                        ; ragged.py:990:40
	v_add_lshl_u32 v34, v153, s52, 1
	v_add_lshl_u32 v35, v154, s52, 1
	.loc	1 998 25                        ; ragged.py:998:25
	s_mul_i32 s3, s3, s23
	.loc	1 990 40                        ; ragged.py:990:40
	v_add_lshl_u32 v36, v155, s52, 1
	.loc	1 997 40                        ; ragged.py:997:40
	v_add_lshl_u32 v37, v65, s3, 1
	.loc	1 990 40                        ; ragged.py:990:40
	v_cndmask_b32_e64 v33, 0x80000000, v33, s5
	v_cndmask_b32_e64 v34, 0x80000000, v34, s4
	v_cndmask_b32_e64 v35, 0x80000000, v35, s19
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	.loc	1 997 40                        ; ragged.py:997:40
	v_cndmask_b32_e64 v37, 0x80000000, v37, s0
	.loc	1 990 40                        ; ragged.py:990:40
	s_clause 0x3
	buffer_load_u16 v33, v33, s[40:43], 0 offen
	buffer_load_u16 v34, v34, s[40:43], 0 offen
	buffer_load_u16 v35, v35, s[40:43], 0 offen
	buffer_load_u16 v36, v36, s[40:43], 0 offen
	.loc	1 997 40                        ; ragged.py:997:40
	buffer_load_u16 v37, v37, s[44:47], 0 offen
	.loc	1 1002 21                       ; ragged.py:1002:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1004 17                       ; ragged.py:1004:17
	s_add_i32 s3, s52, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 953 19                        ; ragged.py:953:19
	s_lshl_b32 s54, s3, 4
	s_cmp_lg_u32 s52, s53
	s_mov_b32 s52, s3
	.loc	1 990 40                        ; ragged.py:990:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 995 21                        ; ragged.py:995:21
	v_dual_mul_f32 v54, v179, v34 :: v_dual_lshlrev_b32 v33, 16, v33
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v38, v196, v33 :: v_dual_lshlrev_b32 v35, 16, v35
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v41, v193, v33 :: v_dual_lshlrev_b32 v36, 16, v36
	v_mul_f32_e32 v39, v195, v33
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v56, v177, v34 :: v_dual_lshlrev_b32 v37, 16, v37
	v_dual_mul_f32 v40, v194, v33 :: v_dual_mul_f32 v53, v180, v34
	v_dual_mul_f32 v42, v192, v33 :: v_dual_mul_f32 v55, v178, v34
	v_dual_mul_f32 v43, v191, v33 :: v_dual_mul_f32 v60, v173, v34
	v_dual_mul_f32 v44, v190, v33 :: v_dual_mul_f32 v57, v176, v34
	v_dual_mul_f32 v45, v189, v33 :: v_dual_mul_f32 v58, v175, v34
	v_dual_mul_f32 v46, v188, v33 :: v_dual_mul_f32 v59, v174, v34
	v_dual_mul_f32 v47, v187, v33 :: v_dual_mul_f32 v64, v169, v34
	v_dual_mul_f32 v48, v186, v33 :: v_dual_mul_f32 v61, v172, v34
	v_dual_mul_f32 v49, v185, v33 :: v_dual_mul_f32 v62, v171, v34
	v_dual_mul_f32 v50, v184, v33 :: v_dual_mul_f32 v63, v170, v34
	v_dual_mul_f32 v51, v183, v33 :: v_dual_mul_f32 v168, v168, v34
	v_dual_mul_f32 v52, v182, v33 :: v_dual_mul_f32 v167, v167, v34
	v_dual_mul_f32 v33, v181, v33 :: v_dual_mul_f32 v166, v166, v34
	v_dual_mul_f32 v34, v165, v34 :: v_dual_mul_f32 v31, v31, v35
	v_dual_mul_f32 v32, v32, v35 :: v_dual_mul_f32 v15, v15, v36
	v_dual_mul_f32 v30, v30, v35 :: v_dual_mul_f32 v179, v13, v36
	v_dual_mul_f32 v29, v29, v35 :: v_dual_mul_f32 v16, v16, v36
	v_dual_mul_f32 v165, v28, v35 :: v_dual_mul_f32 v10, v10, v36
	v_dual_mul_f32 v169, v27, v35 :: v_dual_mul_f32 v180, v12, v36
	v_dual_mul_f32 v170, v26, v35 :: v_dual_mul_f32 v181, v11, v36
	v_dual_mul_f32 v171, v25, v35 :: v_dual_mul_f32 v8, v8, v36
	v_mul_f32_e32 v172, v24, v35
	v_dual_mul_f32 v173, v23, v35 :: v_dual_mul_f32 v6, v6, v36
	v_dual_mul_f32 v174, v22, v35 :: v_dual_mul_f32 v9, v9, v36
	v_dual_mul_f32 v175, v21, v35 :: v_dual_mul_f32 v4, v4, v36
	v_dual_mul_f32 v176, v20, v35 :: v_dual_mul_f32 v7, v7, v36
	v_dual_mul_f32 v177, v19, v35 :: v_dual_mul_f32 v2, v2, v36
	v_dual_mul_f32 v178, v18, v35 :: v_dual_mul_f32 v5, v5, v36
	v_mul_f32_e32 v35, v17, v35
	.loc	1 1002 21                       ; ragged.py:1002:21
	ds_store_b32 v163, v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v164
	ds_load_b128 v[21:24], v164 offset:16
	.loc	1 995 21                        ; ragged.py:995:21
	v_mul_f32_e32 v37, v14, v36
	.loc	1 1002 21                       ; ragged.py:1002:21
	ds_load_b128 v[11:14], v164 offset:512
	ds_load_b128 v[25:28], v164 offset:528
	.loc	1 995 21                        ; ragged.py:995:21
	v_mul_f32_e32 v3, v3, v36
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v1, v1, v36 :: v_dual_fmac_f32 v144, v38, v17
	.loc	1 1003 17                       ; ragged.py:1003:17
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v143, v39, v18 :: v_dual_fmac_f32 v138, v44, v23
	v_dual_fmac_f32 v142, v40, v19 :: v_dual_fmac_f32 v141, v41, v20
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v136, v46, v11
	v_dual_fmac_f32 v140, v42, v21 :: v_dual_fmac_f32 v139, v43, v22
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v128, v33, v28
	v_dual_fmac_f32 v137, v45, v24 :: v_dual_fmac_f32 v130, v51, v26
	v_dual_fmac_f32 v134, v47, v12 :: v_dual_fmac_f32 v133, v48, v13
	v_dual_fmac_f32 v132, v49, v14 :: v_dual_fmac_f32 v131, v50, v25
	v_dual_fmac_f32 v129, v52, v27 :: v_dual_fmac_f32 v126, v54, v18
	v_dual_fmac_f32 v127, v53, v17 :: v_dual_fmac_f32 v124, v56, v20
	v_dual_fmac_f32 v125, v55, v19 :: v_dual_fmac_f32 v122, v58, v22
	v_dual_fmac_f32 v123, v57, v21 :: v_dual_fmac_f32 v120, v60, v24
	v_dual_fmac_f32 v121, v59, v23 :: v_dual_fmac_f32 v118, v62, v12
	v_dual_fmac_f32 v119, v61, v11 :: v_dual_fmac_f32 v116, v64, v14
	v_dual_fmac_f32 v117, v63, v13 :: v_dual_fmac_f32 v112, v34, v28
	v_dual_fmac_f32 v115, v168, v25 :: v_dual_fmac_f32 v114, v167, v26
	v_dual_fmac_f32 v113, v166, v27 :: v_dual_fmac_f32 v110, v31, v18
	v_dual_fmac_f32 v111, v32, v17 :: v_dual_fmac_f32 v108, v29, v20
	v_dual_fmac_f32 v109, v30, v19 :: v_dual_fmac_f32 v106, v169, v22
	v_dual_fmac_f32 v107, v165, v21 :: v_dual_fmac_f32 v102, v172, v11
	v_dual_fmac_f32 v105, v170, v23 :: v_dual_fmac_f32 v98, v176, v25
	v_dual_fmac_f32 v103, v171, v24 :: v_dual_fmac_f32 v100, v174, v13
	v_dual_fmac_f32 v101, v173, v12 :: v_dual_fmac_f32 v96, v178, v27
	v_dual_fmac_f32 v99, v175, v14 :: v_dual_fmac_f32 v94, v16, v17
	v_dual_fmac_f32 v97, v177, v26 :: v_dual_fmac_f32 v90, v180, v21
	v_dual_fmac_f32 v95, v35, v28 :: v_dual_fmac_f32 v92, v37, v19
	v_dual_fmac_f32 v93, v15, v18 :: v_dual_fmac_f32 v88, v10, v23
	v_dual_fmac_f32 v91, v179, v20 :: v_dual_fmac_f32 v86, v8, v11
	v_dual_fmac_f32 v89, v181, v22 :: v_dual_fmac_f32 v84, v6, v13
	v_dual_fmac_f32 v87, v9, v24 :: v_dual_fmac_f32 v80, v4, v25
	v_dual_fmac_f32 v85, v7, v12 :: v_dual_fmac_f32 v82, v2, v27
	v_fmac_f32_e32 v81, v5, v14
	v_fmac_f32_e32 v83, v3, v26
	v_fmac_f32_e32 v79, v1, v28
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
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v196, 0
	.loc	1 957 23 is_stmt 1              ; ragged.py:957:23
	s_and_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_mov_b32_e32 v1, 0
	s_mov_b32 s55, s34
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
	.loc	1 958 26 is_stmt 1              ; ragged.py:958:26
	s_add_i32 s14, s55, s54
	s_delay_alu instid0(SALU_CYCLE_1)
	v_or_b32_e32 v165, s14, v146
	s_or_b32 s15, s14, 1
	s_or_b32 s16, s14, 2
	s_or_b32 s17, s14, 3
	s_or_b32 s18, s14, 4
	.loc	1 971 35                        ; ragged.py:971:35
	v_cmp_gt_i32_e32 vcc_lo, s35, v165
	.loc	1 972 60                        ; ragged.py:972:60
	v_cmp_eq_u32_e64 s3, s49, v165
	.loc	1 951 28                        ; ragged.py:951:28
	v_or_b32_e32 v165, 4, v145
	.loc	1 958 26                        ; ragged.py:958:26
	s_or_b32 s20, s14, 5
	s_or_b32 s21, s14, 6
	s_or_b32 s38, s14, 7
	s_or_b32 s39, s14, 8
	s_or_b32 s56, s14, 9
	s_or_b32 s57, s14, 10
	s_or_b32 s58, s14, 11
	s_or_b32 s59, s14, 12
	s_or_b32 s72, s14, 13
	s_or_b32 s73, s14, 14
	s_or_b32 s74, s14, 15
	.loc	1 971 35                        ; ragged.py:971:35
	s_cmp_lt_i32 s14, s35
	.loc	1 958 26                        ; ragged.py:958:26
	v_or_b32_e32 v165, s14, v165
	.loc	1 971 35                        ; ragged.py:971:35
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s15, s35
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s16, s35
	v_cmp_gt_i32_e64 s7, s35, v165
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s17, s35
	.loc	1 972 60                        ; ragged.py:972:60
	v_cmp_eq_u32_e64 s8, s49, v165
	.loc	1 951 28                        ; ragged.py:951:28
	v_or_b32_e32 v165, 8, v145
	.loc	1 971 35                        ; ragged.py:971:35
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s18, s35
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s20, s35
	.loc	1 958 26                        ; ragged.py:958:26
	v_or_b32_e32 v165, s14, v165
	.loc	1 971 35                        ; ragged.py:971:35
	s_cselect_b32 s80, -1, 0
	s_cmp_lt_i32 s21, s35
	s_cselect_b32 s81, -1, 0
	s_cmp_lt_i32 s38, s35
	v_cmp_gt_i32_e64 s9, s35, v165
	s_cselect_b32 s82, -1, 0
	s_cmp_lt_i32 s39, s35
	.loc	1 972 60                        ; ragged.py:972:60
	v_cmp_eq_u32_e64 s10, s49, v165
	.loc	1 958 26                        ; ragged.py:958:26
	v_or_b32_e32 v165, s14, v145
	.loc	1 971 35                        ; ragged.py:971:35
	s_cselect_b32 s83, -1, 0
	s_cmp_lt_i32 s56, s35
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s57, s35
	v_cmp_gt_i32_e64 s11, s35, v165
	.loc	1 972 60                        ; ragged.py:972:60
	v_cmp_eq_u32_e64 s12, s49, v165
	.loc	1 971 60                        ; ragged.py:971:60
	v_subrev_nc_u32_e32 v165, s54, v165
	.loc	1 971 35 is_stmt 0              ; ragged.py:971:35
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s58, s35
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s59, s35
	.loc	1 971 59                        ; ragged.py:971:59
	v_cmp_gt_i32_e64 s13, 16, v165
	.loc	1 971 35                        ; ragged.py:971:35
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s72, s35
	v_lshl_add_u32 v165, s22, 2, v66
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s73, s35
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s74, s35
	s_cselect_b32 s90, -1, 0
	.loc	1 971 34                        ; ragged.py:971:34
	s_and_b32 s11, s11, s13
	s_and_b32 s7, s7, s13
	s_and_b32 s9, s9, s13
	s_and_b32 s13, vcc_lo, s13
	.loc	1 972 60 is_stmt 1              ; ragged.py:972:60
	s_cmp_eq_u32 s14, s49
	s_cselect_b32 s71, -1, 0
	s_cmp_eq_u32 s15, s49
	s_cselect_b32 s70, -1, 0
	s_cmp_eq_u32 s16, s49
	s_cselect_b32 s69, -1, 0
	s_cmp_eq_u32 s17, s49
	s_cselect_b32 s68, -1, 0
	s_cmp_eq_u32 s18, s49
	s_cselect_b32 s67, -1, 0
	s_cmp_eq_u32 s20, s49
	s_cselect_b32 s66, -1, 0
	s_cmp_eq_u32 s21, s49
	s_cselect_b32 s65, -1, 0
	s_cmp_eq_u32 s38, s49
	.loc	1 974 38                        ; ragged.py:974:38
	s_mov_b32 s38, s30
	.loc	1 972 60                        ; ragged.py:972:60
	s_cselect_b32 s64, -1, 0
	s_cmp_eq_u32 s39, s49
	.loc	1 974 38                        ; ragged.py:974:38
	s_mov_b32 s39, s31
	.loc	1 972 60                        ; ragged.py:972:60
	s_cselect_b32 s63, -1, 0
	s_cmp_eq_u32 s56, s49
	s_cselect_b32 s62, -1, 0
	s_cmp_eq_u32 s57, s49
	s_cselect_b32 s61, -1, 0
	s_cmp_eq_u32 s58, s49
	s_cselect_b32 s60, -1, 0
	s_cmp_eq_u32 s59, s49
	s_cselect_b32 s59, -1, 0
	s_cmp_eq_u32 s72, s49
	s_cselect_b32 s58, -1, 0
	s_cmp_eq_u32 s73, s49
	s_cselect_b32 s57, -1, 0
	s_cmp_eq_u32 s74, s49
	s_cselect_b32 s56, -1, 0
	.loc	1 973 46                        ; ragged.py:973:46
	s_add_i32 s14, s14, s50
	.loc	1 973 70 is_stmt 0              ; ragged.py:973:70
	s_and_b32 s11, s1, s11
	.loc	1 973 46                        ; ragged.py:973:46
	s_mul_i32 s15, s14, s22
	.loc	1 973 70                        ; ragged.py:973:70
	s_and_b32 vcc_lo, s1, s7
	.loc	1 973 46                        ; ragged.py:973:46
	s_add_i32 s15, s15, s33
	.loc	1 973 70                        ; ragged.py:973:70
	s_and_b32 s7, s1, s9
	v_add_nc_u32_e32 v168, s15, v66
	v_add_nc_u32_e32 v165, s15, v165
	v_add_nc_u32_e32 v166, s15, v147
	v_add_nc_u32_e32 v167, s15, v67
	s_and_b32 s9, s1, s13
	.loc	1 973 38                        ; ragged.py:973:38
	v_cndmask_b32_e64 v168, 0x80000000, v168, s11
	v_cndmask_b32_e32 v165, 0x80000000, v165, vcc_lo
	v_cndmask_b32_e64 v166, 0x80000000, v166, s7
	v_cndmask_b32_e64 v167, 0x80000000, v167, s9
	s_clause 0x3
	buffer_load_u8 v168, v168, s[28:31], 0 offen
	buffer_load_u8 v169, v165, s[28:31], 0 offen
	buffer_load_u8 v170, v166, s[28:31], 0 offen
	buffer_load_u8 v167, v167, s[28:31], 0 offen
	.loc	1 974 46 is_stmt 1              ; ragged.py:974:46
	s_mul_i32 s21, s14, s23
	.loc	1 972 36                        ; ragged.py:972:36
	s_and_b32 s7, s48, s8
	s_and_b32 s3, s48, s3
	s_and_b32 s12, s48, s12
	.loc	1 974 46                        ; ragged.py:974:46
	v_add_nc_u32_e32 v182, s21, v65
	v_add_nc_u32_e32 v171, s21, v69
	v_add_nc_u32_e32 v172, s21, v70
	v_add_nc_u32_e32 v173, s21, v71
	v_add_nc_u32_e32 v174, s21, v151
	v_add_nc_u32_e32 v175, s21, v72
	v_add_nc_u32_e32 v176, s21, v73
	v_add_nc_u32_e32 v177, s21, v74
	v_add_nc_u32_e32 v178, s21, v75
	v_add_nc_u32_e32 v179, s21, v76
	v_add_nc_u32_e32 v180, s21, v77
	v_add_nc_u32_e32 v181, s21, v78
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 vcc_lo, s0, s76
	s_and_b32 s8, s0, s79
	s_and_b32 s11, s0, s82
	s_and_b32 s13, s0, s84
	s_and_b32 s14, s0, s85
	s_and_b32 s9, s0, s80
	s_and_b32 s15, s0, s86
	s_and_b32 s16, s0, s87
	s_and_b32 s17, s0, s88
	s_and_b32 s18, s0, s89
	s_and_b32 s20, s0, s90
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e64 v173, 0x80000000, v173, s11
	v_cndmask_b32_e64 v175, 0x80000000, v175, s13
	v_cndmask_b32_e64 v176, 0x80000000, v176, s14
	v_cndmask_b32_e64 v171, 0x80000000, v171, s9
	v_cndmask_b32_e64 v183, 0x80000000, v177, s15
	v_cndmask_b32_e64 v184, 0x80000000, v178, s16
	v_cndmask_b32_e64 v185, 0x80000000, v179, s17
	v_cndmask_b32_e64 v180, 0x80000000, v180, s18
	v_cndmask_b32_e64 v181, 0x80000000, v181, s20
	.loc	1 975 66 is_stmt 1              ; ragged.py:975:66
	s_waitcnt vmcnt(3)
	v_and_b16 v165.l, v168.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v165.h, v169.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v166.l, v170.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v166.h, v167.l, 15
	.loc	1 975 38 is_stmt 0              ; ragged.py:975:38
	v_cndmask_b16 v165.l, v168.l, v165.l, s12
	v_cndmask_b16 v165.h, v169.l, v165.h, s7
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s7, s48, s10
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 975 38                        ; ragged.py:975:38
	v_cndmask_b16 v166.h, v167.l, v166.h, s3
	.loc	1 974 46                        ; ragged.py:974:46
	v_add_nc_u32_e32 v167, s21, v148
	v_add_nc_u32_e32 v168, s21, v149
	.loc	1 975 38                        ; ragged.py:975:38
	v_cndmask_b16 v166.l, v170.l, v166.l, s7
	.loc	1 974 46                        ; ragged.py:974:46
	v_add_nc_u32_e32 v169, s21, v68
	v_add_nc_u32_e32 v170, s21, v150
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 s21, s0, s75
	s_and_b32 s3, s0, s77
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e64 v182, 0x80000000, v182, s21
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 s7, s0, s78
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e32 v167, 0x80000000, v167, vcc_lo
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 s10, s0, s81
	s_and_b32 s12, s0, s83
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e64 v168, 0x80000000, v168, s3
	v_cndmask_b32_e64 v169, 0x80000000, v169, s7
	v_cndmask_b32_e64 v170, 0x80000000, v170, s8
	v_cndmask_b32_e64 v172, 0x80000000, v172, s10
	v_cndmask_b32_e64 v174, 0x80000000, v174, s12
	s_clause 0xf
	buffer_load_u8 v186, v182, s[36:39], 0 offen
	buffer_load_u8 v187, v167, s[36:39], 0 offen
	buffer_load_u8 v188, v168, s[36:39], 0 offen
	buffer_load_u8 v189, v169, s[36:39], 0 offen
	buffer_load_u8 v190, v170, s[36:39], 0 offen
	buffer_load_u8 v191, v171, s[36:39], 0 offen
	buffer_load_u8 v192, v172, s[36:39], 0 offen
	buffer_load_u8 v193, v173, s[36:39], 0 offen
	buffer_load_u8 v179, v174, s[36:39], 0 offen
	buffer_load_u8 v178, v175, s[36:39], 0 offen
	buffer_load_u8 v177, v176, s[36:39], 0 offen
	buffer_load_u8 v176, v183, s[36:39], 0 offen
	buffer_load_u8 v175, v184, s[36:39], 0 offen
	buffer_load_u8 v174, v185, s[36:39], 0 offen
	buffer_load_u8 v173, v180, s[36:39], 0 offen
	buffer_load_u8 v172, v181, s[36:39], 0 offen
	.loc	1 975 38 is_stmt 1              ; ragged.py:975:38
	v_add_nc_u32_e32 v171, 0, v104
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v156, v165
	ds_store_b8_d16_hi v156, v165 offset:256
	ds_store_b8 v156, v166 offset:512
	ds_store_b8_d16_hi v157, v166
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 977 31                        ; ragged.py:977:31
	ds_load_u8 v180, v171 offset:320
	ds_load_u8 v181, v171 offset:256
	ds_load_u8 v169, v171 offset:336
	ds_load_u8 v170, v171 offset:272
	ds_load_u8 v167, v171 offset:352
	ds_load_u8 v168, v171 offset:288
	ds_load_u8 v165, v171 offset:368
	ds_load_u8 v166, v171 offset:304
	.loc	1 972 36                        ; ragged.py:972:36
	s_and_b32 s3, s48, s71
	.loc	1 977 31                        ; ragged.py:977:31
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v180, v181, v180, 0xc0c0004
	ds_load_u8 v181, v171 offset:448
	ds_load_u8 v182, v171 offset:384
	ds_load_u8 v183, v171 offset:464
	ds_load_u8 v184, v171 offset:400
	ds_load_u8 v185, v171 offset:480
	ds_load_u8 v194, v171 offset:416
	ds_load_u8 v195, v171 offset:496
	ds_load_u8 v196, v171 offset:432
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	ds_load_u8 v182, v171 offset:64
	ds_load_u8 v197, v171
	ds_load_u8 v198, v171 offset:80
	ds_load_u8 v199, v171 offset:96
	ds_load_u8 v200, v171 offset:112
	ds_load_u8 v201, v171 offset:16
	ds_load_u8 v202, v171 offset:32
	ds_load_u8 v203, v171 offset:48
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v170, v184, v183, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v168, v194, v185, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v166, v196, v195, 0xc0c0004
	v_lshl_or_b32 v170, v170, 16, v169
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v168, v168, 16, v167
	v_lshl_or_b32 v166, v166, 16, v165
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v197, v197, v182, 0xc0c0004
	ds_load_u8 v182, v171 offset:192
	ds_load_u8 v204, v171 offset:128
	ds_load_u8 v205, v171 offset:208
	ds_load_u8 v206, v171 offset:144
	ds_load_u8 v207, v171 offset:224
	ds_load_u8 v208, v171 offset:160
	ds_load_u8 v209, v171 offset:240
	ds_load_u8 v210, v171 offset:176
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v204, v204, v182, 0xc0c0004
	v_lshl_or_b32 v182, v181, 16, v180
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v181, v204, 16, v197
	.loc	1 976 66                        ; ragged.py:976:66
	s_waitcnt vmcnt(0)
	v_and_b16 v172.h, v186.l, 15
	v_and_b16 v173.h, v187.l, 15
	v_and_b16 v174.h, v188.l, 15
	v_and_b16 v175.h, v189.l, 15
	v_and_b16 v176.h, v190.l, 15
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	v_cndmask_b16 v172.h, v186.l, v172.h, s3
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s3, s48, s70
	.loc	1 976 66                        ; ragged.py:976:66
	v_and_b16 v177.h, v191.l, 15
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	v_cndmask_b16 v173.h, v187.l, v173.h, s3
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s3, s48, s69
	.loc	1 976 66                        ; ragged.py:976:66
	v_and_b16 v178.h, v192.l, 15
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	v_cndmask_b16 v174.h, v188.l, v174.h, s3
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s3, s48, s68
	.loc	1 976 66                        ; ragged.py:976:66
	v_and_b16 v179.h, v193.l, 15
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	v_cndmask_b16 v175.h, v189.l, v175.h, s3
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s3, s48, s67
	.loc	1 976 66                        ; ragged.py:976:66
	v_and_b16 v180.l, v179.l, 15
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	v_cndmask_b16 v176.h, v190.l, v176.h, s3
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s3, s48, s66
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v177.h, v191.l, v177.h, s3
	.loc	1 972 36                        ; ragged.py:972:36
	s_and_b32 s3, s48, s65
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v178.h, v192.l, v178.h, s3
	.loc	1 972 36                        ; ragged.py:972:36
	s_and_b32 s3, s48, s64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v179.h, v193.l, v179.h, s3
	.loc	1 972 36                        ; ragged.py:972:36
	s_and_b32 s3, s48, s63
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v179.l, v179.l, v180.l, s3
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	v_and_b16 v180.l, v178.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s3, s48, s62
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v178.l, v178.l, v180.l, s3
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	v_and_b16 v180.l, v177.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s3, s48, s61
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v177.l, v177.l, v180.l, s3
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	v_and_b16 v180.l, v176.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s3, s48, s60
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v176.l, v176.l, v180.l, s3
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	v_and_b16 v180.l, v175.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s3, s48, s59
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v175.l, v175.l, v180.l, s3
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	v_and_b16 v180.l, v174.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s3, s48, s58
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v174.l, v174.l, v180.l, s3
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	v_and_b16 v180.l, v173.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s3, s48, s57
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v173.l, v173.l, v180.l, s3
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	v_and_b16 v180.l, v172.l, 15
	.loc	1 972 36 is_stmt 1              ; ragged.py:972:36
	s_and_b32 s3, s48, s56
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v172.l, v172.l, v180.l, s3
	.loc	1 977 31                        ; ragged.py:977:31
	ds_load_u8 v180, v171 offset:704
	ds_load_u8 v186, v171 offset:640
	ds_load_u8 v187, v171 offset:720
	ds_load_u8 v188, v171 offset:656
	ds_load_u8 v189, v171 offset:736
	ds_load_u8 v190, v171 offset:672
	ds_load_u8 v191, v171 offset:752
	ds_load_u8 v192, v171 offset:688
	ds_load_u8 v193, v171 offset:576
	ds_load_u8 v197, v171 offset:512
	ds_load_u8 v204, v171 offset:592
	ds_load_u8 v211, v171 offset:528
	ds_load_u8 v212, v171 offset:608
	ds_load_u8 v213, v171 offset:544
	ds_load_u8 v214, v171 offset:624
	ds_load_u8 v215, v171 offset:560
	ds_load_u8 v216, v171 offset:960
	ds_load_u8 v217, v171 offset:896
	ds_load_u8 v218, v171 offset:976
	ds_load_u8 v219, v171 offset:912
	ds_load_u8 v220, v171 offset:992
	ds_load_u8 v221, v171 offset:928
	ds_load_u8 v222, v158
	ds_load_u8 v223, v171 offset:944
	ds_load_u8 v224, v171 offset:832
	ds_load_u8 v225, v171 offset:768
	ds_load_u8 v226, v171 offset:848
	ds_load_u8 v227, v171 offset:784
	ds_load_u8 v228, v171 offset:864
	ds_load_u8 v229, v171 offset:800
	ds_load_u8 v230, v171 offset:880
	ds_load_u8 v231, v171 offset:816
	.loc	1 976 38                        ; ragged.py:976:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8_d16_hi v156, v172
	ds_store_b8_d16_hi v156, v173 offset:256
	ds_store_b8_d16_hi v156, v174 offset:512
	ds_store_b8_d16_hi v156, v176 offset:1024
	ds_store_b8_d16_hi v156, v177 offset:1280
	ds_store_b8_d16_hi v156, v178 offset:1536
	ds_store_b8 v156, v179 offset:2048
	ds_store_b8 v156, v178 offset:2304
	ds_store_b8 v156, v177 offset:2560
	ds_store_b8 v156, v175 offset:3072
	ds_store_b8 v156, v174 offset:3328
	ds_store_b8_d16_hi v157, v175
	ds_store_b8_d16_hi v159, v179
	ds_store_b8 v160, v176
	ds_store_b8 v156, v173 offset:3584
	ds_store_b8 v161, v172
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 977 31                        ; ragged.py:977:31
	ds_load_u8 v171, v162 offset:1280
	ds_load_u8 v172, v162 offset:1024
	ds_load_u8 v173, v162 offset:1920
	ds_load_u8 v174, v162 offset:1664
	ds_load_u8 v175, v162 offset:1408
	ds_load_u8 v176, v162 offset:1152
	.loc	1 987 21                        ; ragged.py:987:21
	s_add_i32 s3, s55, 16
	.loc	1 957 23                        ; ragged.py:957:23
	s_cmp_lt_i32 s55, 0
	s_mov_b32 s55, s3
	.loc	1 977 31                        ; ragged.py:977:31
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	ds_load_u8 v172, v162 offset:1792
	ds_load_u8 v177, v162 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v175, v176, v175, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v174, v173, 16, v175
	v_perm_b32 v175, v201, v198, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v177, v172, 0xc0c0004
	ds_load_u8 v177, v162 offset:256
	ds_load_u8 v178, v162
	ds_load_u8 v179, v162 offset:896
	ds_load_u8 v232, v162 offset:640
	ds_load_u8 v233, v162 offset:384
	ds_load_u8 v234, v162 offset:128
	v_lshl_or_b32 v172, v172, 16, v171
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v177, v178, v177, 0xc0c0004
	ds_load_u8 v178, v162 offset:768
	ds_load_u8 v235, v162 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v176, v234, v233, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v178, v235, v178, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v171, v178, 16, v177
	v_perm_b32 v177, v232, v179, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[171:172], v[181:182], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v173, v177, 16, v176
	v_perm_b32 v176, v206, v205, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[173:174], v[181:182], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v169, v176, 16, v175
	v_perm_b32 v175, v202, v199, 0xc0c0004
	v_perm_b32 v176, v208, v207, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[171:172], v[169:170], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[173:174], v[169:170], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v167, v176, 16, v175
	v_perm_b32 v175, v203, v200, 0xc0c0004
	v_perm_b32 v176, v210, v209, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[171:172], v[167:168], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[173:174], v[167:168], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v165, v176, 16, v175
	v_perm_b32 v167, v197, v193, 0xc0c0004
	v_perm_b32 v168, v186, v180, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[49:56], v[171:172], v[165:166], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[173:174], v[165:166], v[57:64] neg_lo:[1,1,0]
	v_perm_b32 v165, v225, v224, 0xc0c0004
	v_perm_b32 v166, v217, v216, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v166, v166, 16, v165
	v_lshl_or_b32 v165, v168, 16, v167
	ds_load_u8 v167, v162 offset:3328
	ds_load_u8 v168, v162 offset:3072
	ds_load_u8 v169, v162 offset:3968
	ds_load_u8 v170, v162 offset:3712
	ds_load_u8 v171, v162 offset:3456
	ds_load_u8 v172, v162 offset:3200
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	ds_load_u8 v168, v162 offset:3840
	ds_load_u8 v173, v162 offset:3584
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v173, v168, 0xc0c0004
	ds_load_u8 v173, v162 offset:2304
	ds_load_u8 v174, v162 offset:2048
	ds_load_u8 v175, v162 offset:2816
	ds_load_u8 v176, v162 offset:2560
	ds_load_u8 v177, v162 offset:2432
	ds_load_u8 v178, v162 offset:2176
	v_lshl_or_b32 v168, v168, 16, v167
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v174, v176, v175, 0xc0c0004
	v_perm_b32 v175, v213, v212, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v178, v177, 0xc0c0004
	v_perm_b32 v176, v190, v189, 0xc0c0004
	v_perm_b32 v177, v215, v214, 0xc0c0004
	v_lshl_or_b32 v167, v174, 16, v173
	ds_load_u8 v170, v162 offset:2688
	ds_load_u8 v173, v162 offset:2944
	v_perm_b32 v174, v188, v187, 0xc0c0004
	v_perm_b32 v178, v192, v191, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[167:168], v[165:166], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v170, v173, 0xc0c0004
	v_lshl_or_b32 v170, v169, 16, v171
	v_perm_b32 v171, v227, v226, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v169, v173, 16, v172
	v_perm_b32 v172, v219, v218, 0xc0c0004
	v_perm_b32 v173, v211, v204, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[169:170], v[165:166], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v172, v172, 16, v171
	v_lshl_or_b32 v171, v174, 16, v173
	v_perm_b32 v173, v229, v228, 0xc0c0004
	v_perm_b32 v174, v221, v220, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[167:168], v[171:172], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[169:170], v[171:172], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v174, v174, 16, v173
	v_lshl_or_b32 v173, v176, 16, v175
	v_perm_b32 v175, v231, v230, 0xc0c0004
	v_perm_b32 v176, v223, v222, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[167:168], v[173:174], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[169:170], v[173:174], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v176, v176, 16, v175
	v_lshl_or_b32 v175, v178, 16, v177
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[167:168], v[175:176], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[169:170], v[175:176], v[57:64] neg_lo:[1,1,0]
	.loc	1 957 23                        ; ragged.py:957:23
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 988 27                        ; ragged.py:988:27
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
	v_cvt_f32_i32_e32 v165, v32
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
.LBB0_10:                               ; %._crit_edge8
	.loc	1 889 36                        ; ragged.py:889:36
	v_lshrrev_b32_e32 v0, 4, v0
	.loc	1 1009 22                       ; ragged.py:1009:22
	s_mul_i32 s3, s27, s23
	.loc	1 1009 13 is_stmt 0             ; ragged.py:1009:13
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	.loc	1 889 36 is_stmt 1              ; ragged.py:889:36
	v_and_or_b32 v3, v0, 1, v135
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v7, 0x88, v3
	v_or_b32_e32 v8, 0x86, v3
	v_or_b32_e32 v6, 0x8a, v3
	v_or_b32_e32 v4, 0x8e, v3
	v_or_b32_e32 v5, 0x8c, v3
	v_or_b32_e32 v9, 0x84, v3
	v_or_b32_e32 v10, 0x82, v3
	.loc	1 889 18 is_stmt 0              ; ragged.py:889:18
	v_or_b32_e32 v11, s26, v7
	v_or_b32_e32 v12, s26, v8
	v_or_b32_e32 v2, s26, v6
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v15, 12, v3
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v0, s26, v4
	v_or_b32_e32 v1, s26, v5
	v_or_b32_e32 v13, s26, v9
	v_or_b32_e32 v14, s26, v10
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e64 s6, s23, v11
	v_cmp_gt_i32_e64 s7, s23, v12
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v11, 0x80, v3
	v_or_b32_e32 v12, 14, v3
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s1, s23, v2
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v2, s26, v15
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e32 vcc_lo, s23, v0
	v_cmp_gt_i32_e64 s0, s23, v1
	v_cmp_gt_i32_e64 s8, s23, v13
	v_cmp_gt_i32_e64 s9, s23, v14
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v0, s26, v11
	v_or_b32_e32 v1, s26, v12
	.loc	1 889 36 is_stmt 0              ; ragged.py:889:36
	v_or_b32_e32 v13, 10, v3
	v_or_b32_e32 v14, 8, v3
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e64 s12, s23, v2
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_mul_lo_u32 v2, s23, v104
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s10, s23, v0
	v_cmp_gt_i32_e64 s11, s23, v1
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v0, s26, v13
	v_or_b32_e32 v1, s26, v14
	.loc	1 889 36 is_stmt 0              ; ragged.py:889:36
	v_or_b32_e32 v16, 6, v3
	v_or_b32_e32 v18, 2, v3
	v_or_b32_e32 v17, 4, v3
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v21, s26, v3
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e64 s13, s23, v0
	v_cmp_gt_i32_e64 s14, s23, v1
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v1, s26, v16
	v_or_b32_e32 v20, s26, v18
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_add3_u32 v0, s3, s26, v2
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v19, s26, v17
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s18, s23, v21
	v_cmp_gt_i32_e64 s15, s23, v1
	v_cmp_gt_i32_e64 s17, s23, v20
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v1, v0, v3, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s16, s23, v19
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v0, v18, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s18
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v21, v0, v17, 2
	v_cndmask_b32_e64 v22, 0x80000000, v1, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s17
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v23, 0x80000000, v2, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s16
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_mad_u64_u32 v[1:2], null, s23, 48, v[0:1]
	.loc	1 1009 13 is_stmt 0             ; ragged.py:1009:13
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	v_add_lshl_u32 v2, v0, v16, 2
	s_clause 0x2
	buffer_store_b32 v144, v22, s[24:27], 0 offen
	buffer_store_b32 v143, v23, s[24:27], 0 offen
	buffer_store_b32 v142, v21, s[24:27], 0 offen
	v_add_lshl_u32 v21, v0, v14, 2
	.loc	1 1007 20 is_stmt 1             ; ragged.py:1007:20
	s_and_b32 s3, s5, s15
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v22, v0, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s14
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v23, v0, v15, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s13
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v141, v2, s[24:27], 0 offen
	buffer_store_b32 v140, v21, s[24:27], 0 offen
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
	buffer_store_b32 v139, v22, s[24:27], 0 offen
	buffer_store_b32 v138, v23, s[24:27], 0 offen
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
	buffer_store_b32 v137, v2, s[24:27], 0 offen
	buffer_store_b32 v136, v21, s[24:27], 0 offen
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
	buffer_store_b32 v134, v22, s[24:27], 0 offen
	buffer_store_b32 v133, v23, s[24:27], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v0, v6, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s5, s6
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_lshl_add_u32 v19, s23, 4, v0
	.loc	1 1009 13 is_stmt 0             ; ragged.py:1009:13
	v_add_lshl_u32 v23, v0, v5, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20 is_stmt 1             ; ragged.py:1007:20
	s_and_b32 s3, s5, s1
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_lshl_add_u32 v20, s23, 5, v0
	.loc	1 1009 13 is_stmt 0             ; ragged.py:1009:13
	v_add_lshl_u32 v0, v0, v4, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1007 20 is_stmt 1             ; ragged.py:1007:20
	s_and_b32 s3, s5, s0
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v132, v2, s[24:27], 0 offen
	buffer_store_b32 v131, v21, s[24:27], 0 offen
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
	buffer_store_b32 v130, v22, s[24:27], 0 offen
	buffer_store_b32 v129, v23, s[24:27], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v17, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s17
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v128, v0, s[24:27], 0 offen
	buffer_store_b32 v127, v2, s[24:27], 0 offen
	v_add_lshl_u32 v0, v19, v16, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s16
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v19, v14, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s15
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v126, v21, s[24:27], 0 offen
	buffer_store_b32 v125, v22, s[24:27], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s14
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v21, v19, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v15, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s13
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v124, v0, s[24:27], 0 offen
	buffer_store_b32 v123, v2, s[24:27], 0 offen
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
	buffer_store_b32 v122, v21, s[24:27], 0 offen
	buffer_store_b32 v121, v22, s[24:27], 0 offen
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
	buffer_store_b32 v120, v0, s[24:27], 0 offen
	buffer_store_b32 v119, v2, s[24:27], 0 offen
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
	buffer_store_b32 v118, v21, s[24:27], 0 offen
	buffer_store_b32 v117, v22, s[24:27], 0 offen
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
	buffer_store_b32 v116, v0, s[24:27], 0 offen
	buffer_store_b32 v115, v2, s[24:27], 0 offen
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
	s_and_b32 s3, s19, s18
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v114, v21, s[24:27], 0 offen
	buffer_store_b32 v113, v22, s[24:27], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v17, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s17
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v112, v0, s[24:27], 0 offen
	buffer_store_b32 v111, v2, s[24:27], 0 offen
	v_add_lshl_u32 v0, v20, v16, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s16
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v20, v14, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s15
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v110, v19, s[24:27], 0 offen
	buffer_store_b32 v109, v21, s[24:27], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s14
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v19, v20, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v15, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s13
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v108, v0, s[24:27], 0 offen
	buffer_store_b32 v107, v2, s[24:27], 0 offen
	v_add_lshl_u32 v0, v20, v12, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s12
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v20, v11, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s11
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v106, v19, s[24:27], 0 offen
	buffer_store_b32 v105, v21, s[24:27], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s10
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v19, v20, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v9, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s9
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v103, v0, s[24:27], 0 offen
	buffer_store_b32 v102, v2, s[24:27], 0 offen
	v_add_lshl_u32 v0, v20, v8, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v20, v7, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s7
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v101, v19, s[24:27], 0 offen
	buffer_store_b32 v100, v21, s[24:27], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s6
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v19, v20, v6, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v5, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s1
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v99, v0, s[24:27], 0 offen
	buffer_store_b32 v98, v2, s[24:27], 0 offen
	v_add_lshl_u32 v0, v20, v4, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s0
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v1, v3, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, vcc_lo
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
	buffer_store_b32 v97, v19, s[24:27], 0 offen
	buffer_store_b32 v96, v21, s[24:27], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s16
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v95, v0, s[24:27], 0 offen
	buffer_store_b32 v94, v2, s[24:27], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	v_add_lshl_u32 v0, v1, v16, 2
	v_add_lshl_u32 v2, v1, v14, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s15
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v93, v3, s[24:27], 0 offen
	buffer_store_b32 v92, v17, s[24:27], 0 offen
	v_add_lshl_u32 v3, v1, v13, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s14
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v13, v1, v15, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s13
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v91, v0, s[24:27], 0 offen
	buffer_store_b32 v90, v2, s[24:27], 0 offen
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
	buffer_store_b32 v89, v3, s[24:27], 0 offen
	buffer_store_b32 v88, v13, s[24:27], 0 offen
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
	buffer_store_b32 v87, v0, s[24:27], 0 offen
	buffer_store_b32 v86, v2, s[24:27], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v0, v1, v8, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_add_lshl_u32 v2, v1, v7, 2
	s_clause 0x1
	buffer_store_b32 v85, v3, s[24:27], 0 offen
	buffer_store_b32 v84, v9, s[24:27], 0 offen
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
	buffer_store_b32 v81, v0, s[24:27], 0 offen
	buffer_store_b32 v80, v2, s[24:27], 0 offen
	buffer_store_b32 v83, v3, s[24:27], 0 offen
	buffer_store_b32 v82, v4, s[24:27], 0 offen
	buffer_store_b32 v79, v1, s[24:27], 0 offen
	.loc	1 856 5                         ; ragged.py:856:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 236
		.amdhsa_next_free_sgpr 91
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 236
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 91
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9204
; TotalNumSgprs: 93
; NumVgprs: 236
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 29
; NumSGPRsForWavesPerEU: 93
; NumVGPRsForWavesPerEU: 236
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     93
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     236
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
