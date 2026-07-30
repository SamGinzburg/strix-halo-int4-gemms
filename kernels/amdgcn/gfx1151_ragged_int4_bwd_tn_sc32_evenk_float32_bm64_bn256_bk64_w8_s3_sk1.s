	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 856 0                         ; ragged.py:856:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[34:35], s[0:1], 0x30
.Ltmp0:
	.loc	1 883 20 prologue_end           ; ragged.py:883:20
	s_abs_i32 s9, s2
	.loc	1 888 36                        ; ragged.py:888:36
	v_and_b32_e32 v108, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:880:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:881:21 ]
	s_add_i32 s5, s35, 0xff
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
	.loc	1 991 37                        ; ragged.py:991:37
	s_mul_i32 s23, s6, s34
	.loc	1 885 17                        ; ragged.py:885:17
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
	s_lshl_b32 s7, s9, 6
	.loc	1 892 19                        ; ragged.py:892:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s10
	s_addc_u32 s5, s5, s11
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v2, s7, v108
	.loc	1 892 19                        ; ragged.py:892:19
	s_load_b32 s18, s[4:5], 0x0
	s_mov_b32 s9, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v3, 16, v2
	v_or_b32_e32 v4, 32, v2
	v_or_b32_e32 v5, 48, v2
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e64 s5, s34, v2
	v_cmp_gt_i32_e64 s4, s34, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s19, s34, v4
	v_cmp_gt_i32_e64 s2, s34, v5
	.loc	1 893 27                        ; ragged.py:893:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s18, s18, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 953 19                        ; ragged.py:953:19
	s_cmp_gt_i32 s18, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge8_crit_edge
	.loc	1 1009 22                       ; ragged.py:1009:22
	s_add_i32 s16, s7, s23
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; ragged.py:0:22
	s_mov_b32 s9, -1
                                        ; implicit-def: $sgpr16
.LBB0_3:                                ; %Flow414
	s_load_b64 s[20:21], s[0:1], 0x28
	v_dual_mov_b32 v82, 0 :: v_dual_and_b32 v137, 0x70, v1
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
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v106, 0
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
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v144, 0
	v_mov_b32_e32 v143, 0
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_lshl_b32 s17, s8, 8
	s_cbranch_vccnz .LBB0_10
; %bb.4:                                ; %.preheader.lr.ph
	v_dual_mov_b32 v144, 0 :: v_dual_and_b32 v1, 63, v0
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x38
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 956 23 is_stmt 1              ; ragged.py:956:23
	s_lshl_b32 s3, s3, 4
	.loc	1 893 26                        ; ragged.py:893:26
	s_lshr_b32 s30, s18, 1
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v3, s7, v1
	s_cmp_lt_i32 s3, 16
	.loc	1 951 28                        ; ragged.py:951:28
	v_lshrrev_b32_e32 v2, 6, v0
	s_cselect_b32 s31, -1, 0
	s_add_i32 s16, s7, s23
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e64 s1, s34, v3
	v_dual_mov_b32 v140, 0 :: v_dual_add_nc_u32 v3, s16, v108
	v_mad_u64_u32 v[66:67], null, s34, v2, v[1:2]
	.loc	1 951 28                        ; ragged.py:951:28
	v_or_b32_e32 v2, 12, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v138, 0 :: v_dual_add_nc_u32 v7, 16, v3
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v65, s17, v0
	v_dual_mov_b32 v136, 0 :: v_dual_add_nc_u32 v9, 32, v3
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v151, v3, s29
	v_dual_mov_b32 v134, 0 :: v_dual_add_nc_u32 v3, 48, v3
	v_mul_lo_u32 v152, v7, s29
	v_dual_mov_b32 v132, 0 :: v_dual_and_b32 v7, 0xf0, v0
	v_dual_mov_b32 v141, 0 :: v_dual_lshlrev_b32 v10, 5, v0
	v_mad_u64_u32 v[67:68], null, s34, v2, v[1:2]
	v_mad_u64_u32 v[68:69], null, s35, 3, v[65:66]
	v_mad_u64_u32 v[69:70], null, s35, 5, v[65:66]
	v_mad_u64_u32 v[70:71], null, s35, 6, v[65:66]
	v_mul_lo_u32 v153, v9, s29
	v_mul_lo_u32 v154, v3, s29
	v_dual_mov_b32 v130, 0 :: v_dual_lshlrev_b32 v3, 1, v0
	v_dual_mov_b32 v128, 0 :: v_dual_lshlrev_b32 v9, 2, v7
	v_dual_mov_b32 v139, 0 :: v_dual_and_b32 v10, 32, v10
	v_mad_u64_u32 v[71:72], null, s35, 7, v[65:66]
	v_mad_u64_u32 v[72:73], null, s35, 9, v[65:66]
	v_mad_u64_u32 v[73:74], null, s35, 10, v[65:66]
	v_mad_u64_u32 v[74:75], null, s35, 11, v[65:66]
	v_mad_u64_u32 v[75:76], null, s35, 12, v[65:66]
	v_or_b32_e32 v1, 0x300, v0
	v_or_b32_e32 v2, 0x3f0, v0
	v_or_b32_e32 v4, 0x700, v0
	v_or_b32_e32 v5, 0xb00, v0
	v_or_b32_e32 v6, 0xf00, v0
	v_dual_mov_b32 v143, 0 :: v_dual_add_nc_u32 v8, 0, v137
	v_dual_mov_b32 v126, 0 :: v_dual_and_b32 v3, 28, v3
	v_cndmask_b32_e64 v11, 0, 1, s31
	v_add3_u32 v9, 0, v9, v10
	v_dual_mov_b32 v124, 0 :: v_dual_lshlrev_b32 v7, 1, v7
	v_mad_u64_u32 v[76:77], null, s35, 13, v[65:66]
	v_mad_u64_u32 v[77:78], null, s35, 14, v[65:66]
	v_mad_u64_u32 v[78:79], null, s35, 15, v[65:66]
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s0, s35, v65
	v_lshl_add_u32 v145, s34, 2, v66
	v_lshl_add_u32 v146, s34, 3, v66
	.loc	1 960 39                        ; ragged.py:960:39
	s_mul_i32 s18, s6, s28
	.loc	1 998 37                        ; ragged.py:998:37
	s_mul_i32 s22, s6, s29
	v_dual_mov_b32 v142, 0 :: v_dual_add_nc_u32 v147, s35, v65
	v_lshl_add_u32 v148, s35, 1, v65
	v_lshl_add_u32 v149, s35, 2, v65
	v_lshl_add_u32 v150, s35, 3, v65
	v_cmp_ne_u32_e64 s6, 1, v11
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v155, 0, v0
	v_dual_mov_b32 v135, 0 :: v_dual_add_nc_u32 v156, 0, v1
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v157, 0, v2
	v_dual_mov_b32 v133, 0 :: v_dual_add_nc_u32 v158, 0, v4
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v159, 0, v5
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v160, 0, v6
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v161, v8, v108
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v162, v9, v3
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v163, 0, v7
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v82, 0
	v_mov_b32_e32 v95, 0
	v_mov_b32_e32 v93, 0
	v_mov_b32_e32 v91, 0
	v_mov_b32_e32 v89, 0
	v_mov_b32_e32 v87, 0
	v_mov_b32_e32 v85, 0
	v_mov_b32_e32 v81, 0
	v_mov_b32_e32 v83, 0
	v_mov_b32_e32 v79, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	.loc	1 953 19                        ; ragged.py:953:19
	s_add_i32 s30, s30, -1
	s_and_b32 s25, s9, 0xffff
	s_mov_b32 s24, s8
	s_and_b32 s9, s11, 0xffff
	s_mov_b32 s8, s10
	s_mov_b32 s23, 0
	s_lshr_b32 s33, s30, 4
	s_mov_b32 s28, s12
	s_mov_b32 s29, s13
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s26
	s_mov_b32 s15, s27
	s_mov_b32 s10, 0
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 990 40                        ; ragged.py:990:40
	v_add_lshl_u32 v33, v151, s23, 1
	.loc	1 998 25                        ; ragged.py:998:25
	s_add_i32 s10, s23, s22
	.loc	1 990 40                        ; ragged.py:990:40
	v_add_lshl_u32 v34, v152, s23, 1
	v_add_lshl_u32 v35, v153, s23, 1
	.loc	1 998 25                        ; ragged.py:998:25
	s_mul_i32 s10, s10, s35
	.loc	1 990 40                        ; ragged.py:990:40
	v_add_lshl_u32 v36, v154, s23, 1
	.loc	1 997 40                        ; ragged.py:997:40
	v_add_lshl_u32 v37, v65, s10, 1
	.loc	1 990 40                        ; ragged.py:990:40
	v_cndmask_b32_e64 v33, 0x80000000, v33, s5
	v_cndmask_b32_e64 v34, 0x80000000, v34, s4
	v_cndmask_b32_e64 v35, 0x80000000, v35, s19
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	.loc	1 997 40                        ; ragged.py:997:40
	v_cndmask_b32_e64 v37, 0x80000000, v37, s0
	.loc	1 990 40                        ; ragged.py:990:40
	s_clause 0x3
	buffer_load_u16 v33, v33, s[28:31], 0 offen
	buffer_load_u16 v34, v34, s[28:31], 0 offen
	buffer_load_u16 v35, v35, s[28:31], 0 offen
	buffer_load_u16 v36, v36, s[28:31], 0 offen
	.loc	1 997 40                        ; ragged.py:997:40
	buffer_load_u16 v37, v37, s[12:15], 0 offen
	.loc	1 1002 21                       ; ragged.py:1002:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1004 17                       ; ragged.py:1004:17
	s_add_i32 s11, s23, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 953 19                        ; ragged.py:953:19
	s_lshl_b32 s10, s11, 4
	s_cmp_lg_u32 s23, s33
	s_mov_b32 s23, s11
	.loc	1 990 40                        ; ragged.py:990:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 995 21                        ; ragged.py:995:21
	v_dual_mul_f32 v54, v178, v34 :: v_dual_lshlrev_b32 v33, 16, v33
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v38, v195, v33 :: v_dual_lshlrev_b32 v35, 16, v35
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v41, v192, v33 :: v_dual_lshlrev_b32 v36, 16, v36
	v_mul_f32_e32 v39, v194, v33
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v56, v176, v34 :: v_dual_lshlrev_b32 v37, 16, v37
	v_dual_mul_f32 v40, v193, v33 :: v_dual_mul_f32 v53, v179, v34
	v_dual_mul_f32 v42, v191, v33 :: v_dual_mul_f32 v55, v177, v34
	v_dual_mul_f32 v43, v190, v33 :: v_dual_mul_f32 v60, v172, v34
	v_dual_mul_f32 v44, v189, v33 :: v_dual_mul_f32 v57, v175, v34
	v_dual_mul_f32 v45, v188, v33 :: v_dual_mul_f32 v58, v174, v34
	v_dual_mul_f32 v46, v187, v33 :: v_dual_mul_f32 v59, v173, v34
	v_dual_mul_f32 v47, v186, v33 :: v_dual_mul_f32 v64, v168, v34
	v_dual_mul_f32 v48, v185, v33 :: v_dual_mul_f32 v61, v171, v34
	v_dual_mul_f32 v49, v184, v33 :: v_dual_mul_f32 v62, v170, v34
	v_dual_mul_f32 v50, v183, v33 :: v_dual_mul_f32 v63, v169, v34
	v_mul_f32_e32 v51, v182, v33
	v_dual_mul_f32 v52, v181, v33 :: v_dual_mul_f32 v167, v167, v34
	v_dual_mul_f32 v33, v180, v33 :: v_dual_mul_f32 v166, v166, v34
	v_dual_mul_f32 v165, v165, v34 :: v_dual_mul_f32 v32, v32, v35
	v_dual_mul_f32 v34, v164, v34 :: v_dual_mul_f32 v31, v31, v35
	v_mul_f32_e32 v16, v16, v36
	v_dual_mul_f32 v30, v30, v35 :: v_dual_mul_f32 v15, v15, v36
	v_dual_mul_f32 v29, v29, v35 :: v_dual_mul_f32 v180, v11, v36
	v_mul_f32_e32 v164, v28, v35
	v_dual_mul_f32 v168, v27, v35 :: v_dual_mul_f32 v179, v12, v36
	v_dual_mul_f32 v169, v26, v35 :: v_dual_mul_f32 v178, v13, v36
	v_dual_mul_f32 v170, v25, v35 :: v_dual_mul_f32 v7, v7, v36
	v_dual_mul_f32 v171, v24, v35 :: v_dual_mul_f32 v10, v10, v36
	v_dual_mul_f32 v172, v23, v35 :: v_dual_mul_f32 v9, v9, v36
	v_dual_mul_f32 v173, v22, v35 :: v_dual_mul_f32 v8, v8, v36
	v_dual_mul_f32 v174, v21, v35 :: v_dual_mul_f32 v3, v3, v36
	v_dual_mul_f32 v175, v20, v35 :: v_dual_mul_f32 v6, v6, v36
	v_dual_mul_f32 v176, v19, v35 :: v_dual_mul_f32 v5, v5, v36
	v_dual_mul_f32 v177, v18, v35 :: v_dual_mul_f32 v4, v4, v36
	v_dual_mul_f32 v35, v17, v35 :: v_dual_mul_f32 v2, v2, v36
	.loc	1 1002 21                       ; ragged.py:1002:21
	ds_store_b32 v162, v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v163
	ds_load_b128 v[21:24], v163 offset:16
	.loc	1 995 21                        ; ragged.py:995:21
	v_mul_f32_e32 v37, v14, v36
	.loc	1 1002 21                       ; ragged.py:1002:21
	ds_load_b128 v[11:14], v163 offset:512
	ds_load_b128 v[25:28], v163 offset:528
	.loc	1 995 21                        ; ragged.py:995:21
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v1, v1, v36 :: v_dual_fmac_f32 v144, v38, v17
	.loc	1 1003 17                       ; ragged.py:1003:17
	v_dual_fmac_f32 v143, v39, v18 :: v_dual_fmac_f32 v142, v40, v19
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v141, v41, v20 :: v_dual_fmac_f32 v140, v42, v21
	v_dual_fmac_f32 v139, v43, v22 :: v_dual_fmac_f32 v138, v44, v23
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v136, v45, v24 :: v_dual_fmac_f32 v135, v46, v11
	v_dual_fmac_f32 v134, v47, v12 :: v_dual_fmac_f32 v133, v48, v13
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v132, v49, v14 :: v_dual_fmac_f32 v131, v50, v25
	v_dual_fmac_f32 v130, v51, v26 :: v_dual_fmac_f32 v129, v52, v27
	v_dual_fmac_f32 v128, v33, v28 :: v_dual_fmac_f32 v125, v55, v19
	v_dual_fmac_f32 v127, v53, v17 :: v_dual_fmac_f32 v126, v54, v18
	v_dual_fmac_f32 v124, v56, v20 :: v_dual_fmac_f32 v123, v57, v21
	v_dual_fmac_f32 v122, v58, v22 :: v_dual_fmac_f32 v121, v59, v23
	v_dual_fmac_f32 v120, v60, v24 :: v_dual_fmac_f32 v119, v61, v11
	v_dual_fmac_f32 v118, v62, v12 :: v_dual_fmac_f32 v117, v63, v13
	v_dual_fmac_f32 v116, v64, v14 :: v_dual_fmac_f32 v115, v167, v25
	v_dual_fmac_f32 v114, v166, v26 :: v_dual_fmac_f32 v113, v165, v27
	v_dual_fmac_f32 v112, v34, v28 :: v_dual_fmac_f32 v111, v32, v17
	v_dual_fmac_f32 v110, v31, v18 :: v_dual_fmac_f32 v109, v30, v19
	v_dual_fmac_f32 v107, v29, v20 :: v_dual_fmac_f32 v106, v164, v21
	v_dual_fmac_f32 v105, v168, v22 :: v_dual_fmac_f32 v104, v169, v23
	v_dual_fmac_f32 v103, v170, v24 :: v_dual_fmac_f32 v102, v171, v11
	v_dual_fmac_f32 v101, v172, v12 :: v_dual_fmac_f32 v100, v173, v13
	v_dual_fmac_f32 v99, v174, v14 :: v_dual_fmac_f32 v98, v175, v25
	v_dual_fmac_f32 v97, v176, v26 :: v_dual_fmac_f32 v96, v177, v27
	v_dual_fmac_f32 v95, v35, v28 :: v_dual_fmac_f32 v94, v16, v17
	v_dual_fmac_f32 v93, v15, v18 :: v_dual_fmac_f32 v92, v37, v19
	v_dual_fmac_f32 v91, v178, v20 :: v_dual_fmac_f32 v90, v179, v21
	v_dual_fmac_f32 v89, v180, v22 :: v_dual_fmac_f32 v88, v10, v23
	v_dual_fmac_f32 v87, v9, v24 :: v_dual_fmac_f32 v86, v8, v11
	v_dual_fmac_f32 v85, v7, v12 :: v_dual_fmac_f32 v84, v6, v13
	v_dual_fmac_f32 v81, v5, v14 :: v_dual_fmac_f32 v80, v4, v25
	v_dual_fmac_f32 v83, v3, v26 :: v_dual_fmac_f32 v82, v2, v27
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
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v195, 0
	.loc	1 957 23 is_stmt 1              ; ragged.py:957:23
	s_and_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_mov_b32_e32 v1, 0
	s_add_i32 s36, s10, s18
	s_mov_b32 s37, s3
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
.LBB0_8:                                ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 968 46 is_stmt 1              ; ragged.py:968:46
	s_add_i32 s38, s36, s37
	.loc	1 969 38                        ; ragged.py:969:38
	s_mov_b32 s10, s26
	.loc	1 968 46                        ; ragged.py:968:46
	s_mul_i32 s39, s38, s34
	.loc	1 969 46                        ; ragged.py:969:46
	s_mul_i32 s38, s38, s35
	.loc	1 968 46                        ; ragged.py:968:46
	s_add_i32 s39, s39, s7
	.loc	1 969 46                        ; ragged.py:969:46
	v_add_nc_u32_e32 v167, s38, v68
	v_add_nc_u32_e32 v164, s38, v65
	v_add_nc_u32_e32 v165, s38, v147
	v_add_nc_u32_e32 v166, s38, v148
	.loc	1 969 38 is_stmt 0              ; ragged.py:969:38
	s_mov_b32 s11, s27
	v_cndmask_b32_e64 v170, 0x80000000, v167, s0
	.loc	1 969 46                        ; ragged.py:969:46
	v_add_nc_u32_e32 v167, s38, v149
	.loc	1 969 38                        ; ragged.py:969:38
	v_cndmask_b32_e64 v164, 0x80000000, v164, s0
	v_cndmask_b32_e64 v165, 0x80000000, v165, s0
	v_cndmask_b32_e64 v166, 0x80000000, v166, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v171, 0x80000000, v167, s0
	.loc	1 969 46                        ; ragged.py:969:46
	v_add_nc_u32_e32 v167, s38, v69
	.loc	1 969 38                        ; ragged.py:969:38
	v_cndmask_b32_e64 v173, 0x80000000, v167, s0
	.loc	1 969 46                        ; ragged.py:969:46
	v_add_nc_u32_e32 v167, s38, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 969 38                        ; ragged.py:969:38
	v_cndmask_b32_e64 v174, 0x80000000, v167, s0
	.loc	1 969 46                        ; ragged.py:969:46
	v_add_nc_u32_e32 v167, s38, v71
	.loc	1 969 38                        ; ragged.py:969:38
	v_cndmask_b32_e64 v175, 0x80000000, v167, s0
	.loc	1 969 46                        ; ragged.py:969:46
	v_add_nc_u32_e32 v167, s38, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 969 38                        ; ragged.py:969:38
	v_cndmask_b32_e64 v176, 0x80000000, v167, s0
	.loc	1 969 46                        ; ragged.py:969:46
	v_add_nc_u32_e32 v167, s38, v72
	.loc	1 969 38                        ; ragged.py:969:38
	v_cndmask_b32_e64 v177, 0x80000000, v167, s0
	.loc	1 969 46                        ; ragged.py:969:46
	v_add_nc_u32_e32 v167, s38, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 969 38                        ; ragged.py:969:38
	v_cndmask_b32_e64 v178, 0x80000000, v167, s0
	.loc	1 969 46                        ; ragged.py:969:46
	v_add_nc_u32_e32 v167, s38, v74
	.loc	1 969 38                        ; ragged.py:969:38
	v_cndmask_b32_e64 v179, 0x80000000, v167, s0
	.loc	1 969 46                        ; ragged.py:969:46
	v_add_nc_u32_e32 v167, s38, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 969 38                        ; ragged.py:969:38
	v_cndmask_b32_e64 v180, 0x80000000, v167, s0
	.loc	1 969 46                        ; ragged.py:969:46
	v_add_nc_u32_e32 v167, s38, v76
	.loc	1 969 38                        ; ragged.py:969:38
	v_cndmask_b32_e64 v181, 0x80000000, v167, s0
	.loc	1 969 46                        ; ragged.py:969:46
	v_add_nc_u32_e32 v167, s38, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 969 38                        ; ragged.py:969:38
	v_cndmask_b32_e64 v182, 0x80000000, v167, s0
	.loc	1 969 46                        ; ragged.py:969:46
	v_add_nc_u32_e32 v167, s38, v78
	.loc	1 969 38                        ; ragged.py:969:38
	v_cndmask_b32_e64 v183, 0x80000000, v167, s0
	v_add_nc_u32_e32 v167, s39, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 968 38 is_stmt 1              ; ragged.py:968:38
	v_cndmask_b32_e64 v184, 0x80000000, v167, s1
	v_add_nc_u32_e32 v167, s39, v145
	v_cndmask_b32_e64 v185, 0x80000000, v167, s1
	v_add_nc_u32_e32 v167, s39, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v186, 0x80000000, v167, s1
	v_add_nc_u32_e32 v167, s39, v67
	v_cndmask_b32_e64 v187, 0x80000000, v167, s1
	.loc	1 969 38                        ; ragged.py:969:38
	s_clause 0xf
	buffer_load_u8 v167, v164, s[8:11], 0 offen
	buffer_load_u8 v168, v165, s[8:11], 0 offen
	buffer_load_u8 v169, v166, s[8:11], 0 offen
	buffer_load_u8 v164, v170, s[8:11], 0 offen
	buffer_load_u8 v172, v171, s[8:11], 0 offen
	buffer_load_u8 v173, v173, s[8:11], 0 offen
	buffer_load_u8 v174, v174, s[8:11], 0 offen
	buffer_load_u8 v165, v175, s[8:11], 0 offen
	buffer_load_u8 v175, v176, s[8:11], 0 offen
	buffer_load_u8 v176, v177, s[8:11], 0 offen
	buffer_load_u8 v177, v178, s[8:11], 0 offen
	buffer_load_u8 v166, v179, s[8:11], 0 offen
	buffer_load_u8 v178, v180, s[8:11], 0 offen
	buffer_load_u8 v179, v181, s[8:11], 0 offen
	buffer_load_u8 v170, v182, s[8:11], 0 offen
	buffer_load_u8 v171, v183, s[8:11], 0 offen
	.loc	1 968 38                        ; ragged.py:968:38
	s_clause 0x3
	buffer_load_u8 v180, v184, s[24:27], 0 offen
	buffer_load_u8 v181, v185, s[24:27], 0 offen
	buffer_load_u8 v182, v186, s[24:27], 0 offen
	buffer_load_u8 v183, v187, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 987 21                        ; ragged.py:987:21
	s_add_i32 s10, s37, 16
	.loc	1 957 23                        ; ragged.py:957:23
	s_cmp_lt_i32 s37, 0
	s_mov_b32 s37, s10
	.loc	1 968 38                        ; ragged.py:968:38
	s_waitcnt vmcnt(3)
	ds_store_b8 v155, v180
	s_waitcnt vmcnt(2)
	ds_store_b8 v155, v181 offset:256
	s_waitcnt vmcnt(1)
	ds_store_b8 v155, v182 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v156, v183
	v_add_nc_u32_e32 v182, 0, v108
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 977 31                        ; ragged.py:977:31
	ds_load_u8 v180, v182 offset:320
	ds_load_u8 v181, v182 offset:256
	ds_load_u8 v183, v182 offset:336
	ds_load_u8 v184, v182 offset:272
	ds_load_u8 v185, v182 offset:352
	ds_load_u8 v186, v182 offset:288
	ds_load_u8 v187, v182 offset:368
	ds_load_u8 v188, v182 offset:304
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v180, v181, v180, 0xc0c0004
	ds_load_u8 v181, v182 offset:448
	ds_load_u8 v189, v182 offset:384
	ds_load_u8 v190, v182 offset:464
	ds_load_u8 v191, v182 offset:400
	ds_load_u8 v192, v182 offset:480
	ds_load_u8 v193, v182 offset:416
	ds_load_u8 v194, v182 offset:496
	ds_load_u8 v195, v182 offset:432
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v181, v189, v181, 0xc0c0004
	ds_load_u8 v189, v182 offset:64
	ds_load_u8 v196, v182
	ds_load_u8 v197, v182 offset:80
	ds_load_u8 v198, v182 offset:96
	ds_load_u8 v199, v182 offset:112
	ds_load_u8 v200, v182 offset:16
	ds_load_u8 v201, v182 offset:32
	ds_load_u8 v202, v182 offset:48
	v_lshl_or_b32 v181, v181, 16, v180
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v189, v196, v189, 0xc0c0004
	ds_load_u8 v196, v182 offset:192
	ds_load_u8 v203, v182 offset:128
	ds_load_u8 v204, v182 offset:208
	ds_load_u8 v205, v182 offset:144
	ds_load_u8 v206, v182 offset:224
	ds_load_u8 v207, v182 offset:160
	ds_load_u8 v208, v182 offset:240
	ds_load_u8 v209, v182 offset:176
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v196, v203, v196, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v180, v196, 16, v189
	ds_load_u8 v189, v182 offset:704
	ds_load_u8 v196, v182 offset:640
	ds_load_u8 v203, v182 offset:720
	ds_load_u8 v210, v182 offset:656
	ds_load_u8 v211, v182 offset:736
	ds_load_u8 v212, v182 offset:672
	ds_load_u8 v213, v182 offset:752
	ds_load_u8 v214, v182 offset:688
	ds_load_u8 v215, v182 offset:576
	ds_load_u8 v216, v182 offset:512
	ds_load_u8 v217, v182 offset:592
	ds_load_u8 v218, v182 offset:528
	ds_load_u8 v219, v182 offset:608
	ds_load_u8 v220, v182 offset:544
	ds_load_u8 v221, v182 offset:624
	ds_load_u8 v222, v182 offset:560
	ds_load_u8 v223, v182 offset:960
	ds_load_u8 v224, v182 offset:896
	ds_load_u8 v225, v182 offset:976
	ds_load_u8 v226, v182 offset:912
	ds_load_u8 v227, v182 offset:992
	ds_load_u8 v228, v182 offset:928
	ds_load_u8 v229, v157
	ds_load_u8 v230, v182 offset:944
	ds_load_u8 v231, v182 offset:832
	ds_load_u8 v232, v182 offset:768
	ds_load_u8 v233, v182 offset:848
	ds_load_u8 v234, v182 offset:784
	ds_load_u8 v235, v182 offset:864
	ds_load_u8 v236, v182 offset:800
	ds_load_u8 v237, v182 offset:880
	ds_load_u8 v182, v182 offset:816
	.loc	1 969 38                        ; ragged.py:969:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v155, v167
	ds_store_b8 v155, v168 offset:256
	ds_store_b8 v155, v169 offset:512
	ds_store_b8 v155, v172 offset:1024
	ds_store_b8 v155, v173 offset:1280
	ds_store_b8 v155, v174 offset:1536
	ds_store_b8 v155, v175 offset:2048
	ds_store_b8 v155, v176 offset:2304
	ds_store_b8 v155, v177 offset:2560
	ds_store_b8 v155, v178 offset:3072
	ds_store_b8 v155, v179 offset:3328
	ds_store_b8 v156, v164
	ds_store_b8 v158, v165
	ds_store_b8 v159, v166
	ds_store_b8 v155, v170 offset:3584
	ds_store_b8 v160, v171
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 977 31                        ; ragged.py:977:31
	ds_load_u8 v164, v161 offset:1280
	ds_load_u8 v165, v161 offset:1024
	ds_load_u8 v166, v161 offset:1792
	ds_load_u8 v167, v161 offset:1536
	ds_load_u8 v168, v161 offset:1408
	ds_load_u8 v169, v161 offset:1152
	v_perm_b32 v174, v202, v199, 0xc0c0004
	v_perm_b32 v175, v209, v208, 0xc0c0004
	v_perm_b32 v177, v214, v213, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v165, v167, v166, 0xc0c0004
	ds_load_u8 v166, v161 offset:256
	ds_load_u8 v167, v161
	ds_load_u8 v170, v161 offset:768
	ds_load_u8 v171, v161 offset:512
	ds_load_u8 v172, v161 offset:384
	ds_load_u8 v173, v161 offset:128
	v_lshl_or_b32 v165, v165, 16, v164
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v167, v171, v170, 0xc0c0004
	v_perm_b32 v171, v205, v204, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v164, v167, 16, v166
	v_perm_b32 v166, v169, v168, 0xc0c0004
	ds_load_u8 v167, v161 offset:1664
	ds_load_u8 v168, v161 offset:1920
	ds_load_u8 v169, v161 offset:640
	ds_load_u8 v170, v161 offset:896
	v_wmma_i32_16x16x16_iu4 v[1:8], v[164:165], v[180:181], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v167, v167, v168, 0xc0c0004
	v_perm_b32 v168, v173, v172, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v169, v170, 0xc0c0004
	v_perm_b32 v170, v200, v197, 0xc0c0004
	v_perm_b32 v172, v201, v198, 0xc0c0004
	v_lshl_or_b32 v167, v167, 16, v166
	v_perm_b32 v173, v207, v206, 0xc0c0004
	v_lshl_or_b32 v166, v169, 16, v168
	v_perm_b32 v168, v184, v183, 0xc0c0004
	v_perm_b32 v169, v191, v190, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[166:167], v[180:181], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v169, v169, 16, v168
	v_lshl_or_b32 v168, v171, 16, v170
	v_perm_b32 v170, v186, v185, 0xc0c0004
	v_perm_b32 v171, v193, v192, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[164:165], v[168:169], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[166:167], v[168:169], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v171, v171, 16, v170
	v_lshl_or_b32 v170, v173, 16, v172
	v_perm_b32 v172, v188, v187, 0xc0c0004
	v_perm_b32 v173, v195, v194, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[164:165], v[170:171], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[166:167], v[170:171], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v173, v173, 16, v172
	v_lshl_or_b32 v172, v175, 16, v174
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[164:165], v[172:173], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[166:167], v[172:173], v[57:64] neg_lo:[1,1,0]
	v_perm_b32 v164, v232, v231, 0xc0c0004
	v_perm_b32 v165, v224, v223, 0xc0c0004
	v_perm_b32 v166, v216, v215, 0xc0c0004
	v_perm_b32 v167, v196, v189, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v165, v165, 16, v164
	v_lshl_or_b32 v164, v167, 16, v166
	ds_load_u8 v166, v161 offset:3328
	ds_load_u8 v167, v161 offset:3072
	ds_load_u8 v168, v161 offset:3840
	ds_load_u8 v169, v161 offset:3584
	ds_load_u8 v170, v161 offset:3456
	ds_load_u8 v171, v161 offset:3200
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v167, v169, v168, 0xc0c0004
	ds_load_u8 v168, v161 offset:2304
	ds_load_u8 v169, v161 offset:2048
	ds_load_u8 v172, v161 offset:2944
	ds_load_u8 v173, v161 offset:2688
	ds_load_u8 v174, v161 offset:2432
	ds_load_u8 v175, v161 offset:2176
	v_lshl_or_b32 v167, v167, 16, v166
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	ds_load_u8 v169, v161 offset:2816
	ds_load_u8 v176, v161 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v176, v169, 0xc0c0004
	v_perm_b32 v176, v222, v221, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v166, v169, 16, v168
	v_perm_b32 v168, v171, v170, 0xc0c0004
	ds_load_u8 v169, v161 offset:3712
	ds_load_u8 v170, v161 offset:3968
	v_perm_b32 v171, v173, v172, 0xc0c0004
	v_perm_b32 v172, v218, v217, 0xc0c0004
	v_perm_b32 v173, v210, v203, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[166:167], v[164:165], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v169, v170, 0xc0c0004
	v_perm_b32 v170, v175, v174, 0xc0c0004
	v_perm_b32 v174, v220, v219, 0xc0c0004
	v_perm_b32 v175, v212, v211, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v169, v169, 16, v168
	v_lshl_or_b32 v168, v171, 16, v170
	v_perm_b32 v170, v234, v233, 0xc0c0004
	v_perm_b32 v171, v226, v225, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[168:169], v[164:165], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v171, v171, 16, v170
	v_lshl_or_b32 v170, v173, 16, v172
	v_perm_b32 v172, v236, v235, 0xc0c0004
	v_perm_b32 v173, v228, v227, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[166:167], v[170:171], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[168:169], v[170:171], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v173, v173, 16, v172
	v_lshl_or_b32 v172, v175, 16, v174
	v_perm_b32 v174, v182, v237, 0xc0c0004
	v_perm_b32 v175, v230, v229, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[166:167], v[172:173], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[168:169], v[172:173], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v175, v175, 16, v174
	v_lshl_or_b32 v174, v177, 16, v176
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[166:167], v[174:175], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[168:169], v[174:175], v[57:64] neg_lo:[1,1,0]
	.loc	1 957 23                        ; ragged.py:957:23
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 988 27                        ; ragged.py:988:27
	v_cvt_f32_i32_e32 v195, v1
	v_cvt_f32_i32_e32 v194, v2
	v_cvt_f32_i32_e32 v193, v3
	v_cvt_f32_i32_e32 v192, v4
	v_cvt_f32_i32_e32 v191, v5
	v_cvt_f32_i32_e32 v190, v6
	v_cvt_f32_i32_e32 v189, v7
	v_cvt_f32_i32_e32 v188, v8
	v_cvt_f32_i32_e32 v187, v9
	v_cvt_f32_i32_e32 v186, v10
	v_cvt_f32_i32_e32 v185, v11
	v_cvt_f32_i32_e32 v184, v12
	v_cvt_f32_i32_e32 v183, v13
	v_cvt_f32_i32_e32 v182, v14
	v_cvt_f32_i32_e32 v181, v15
	v_cvt_f32_i32_e32 v180, v16
	v_cvt_f32_i32_e32 v179, v17
	v_cvt_f32_i32_e32 v178, v18
	v_cvt_f32_i32_e32 v177, v19
	v_cvt_f32_i32_e32 v176, v20
	v_cvt_f32_i32_e32 v175, v21
	v_cvt_f32_i32_e32 v174, v22
	v_cvt_f32_i32_e32 v173, v23
	v_cvt_f32_i32_e32 v172, v24
	v_cvt_f32_i32_e32 v171, v25
	v_cvt_f32_i32_e32 v170, v26
	v_cvt_f32_i32_e32 v169, v27
	v_cvt_f32_i32_e32 v168, v28
	v_cvt_f32_i32_e32 v167, v29
	v_cvt_f32_i32_e32 v166, v30
	v_cvt_f32_i32_e32 v165, v31
	v_cvt_f32_i32_e32 v164, v32
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
	s_mul_i32 s3, s16, s35
	.loc	1 1009 13 is_stmt 0             ; ragged.py:1009:13
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 889 36 is_stmt 1              ; ragged.py:889:36
	v_and_or_b32 v3, v0, 1, v137
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v7, 0x88, v3
	v_or_b32_e32 v8, 0x86, v3
	v_or_b32_e32 v6, 0x8a, v3
	v_or_b32_e32 v4, 0x8e, v3
	v_or_b32_e32 v5, 0x8c, v3
	v_or_b32_e32 v9, 0x84, v3
	v_or_b32_e32 v10, 0x82, v3
	.loc	1 889 18 is_stmt 0              ; ragged.py:889:18
	v_or_b32_e32 v11, s17, v7
	v_or_b32_e32 v12, s17, v8
	v_or_b32_e32 v2, s17, v6
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v15, 12, v3
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v0, s17, v4
	v_or_b32_e32 v1, s17, v5
	v_or_b32_e32 v13, s17, v9
	v_or_b32_e32 v14, s17, v10
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e64 s6, s35, v11
	v_cmp_gt_i32_e64 s7, s35, v12
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v11, 0x80, v3
	v_or_b32_e32 v12, 14, v3
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s1, s35, v2
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v2, s17, v15
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v0
	v_cmp_gt_i32_e64 s0, s35, v1
	v_cmp_gt_i32_e64 s8, s35, v13
	v_cmp_gt_i32_e64 s9, s35, v14
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v0, s17, v11
	v_or_b32_e32 v1, s17, v12
	.loc	1 889 36 is_stmt 0              ; ragged.py:889:36
	v_or_b32_e32 v13, 10, v3
	v_or_b32_e32 v14, 8, v3
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e64 s12, s35, v2
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_mul_lo_u32 v2, s35, v108
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s10, s35, v0
	v_cmp_gt_i32_e64 s11, s35, v1
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v0, s17, v13
	v_or_b32_e32 v1, s17, v14
	.loc	1 889 36 is_stmt 0              ; ragged.py:889:36
	v_or_b32_e32 v16, 6, v3
	v_or_b32_e32 v18, 2, v3
	v_or_b32_e32 v17, 4, v3
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v21, s17, v3
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e64 s13, s35, v0
	v_cmp_gt_i32_e64 s14, s35, v1
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v1, s17, v16
	v_or_b32_e32 v20, s17, v18
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_add3_u32 v0, s3, s17, v2
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v19, s17, v17
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s18, s35, v21
	v_cmp_gt_i32_e64 s15, s35, v1
	v_cmp_gt_i32_e64 s17, s35, v20
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v1, v0, v3, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s16, s35, v19
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
	v_lshl_add_u32 v19, s35, 4, v0
	.loc	1 1009 13 is_stmt 0             ; ragged.py:1009:13
	v_cndmask_b32_e64 v23, 0x80000000, v2, s3
	.loc	1 1007 20 is_stmt 1             ; ragged.py:1007:20
	s_and_b32 s3, s5, s16
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_mad_u64_u32 v[1:2], null, s35, 48, v[0:1]
	.loc	1 1009 13 is_stmt 0             ; ragged.py:1009:13
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	v_add_lshl_u32 v2, v0, v16, 2
	s_clause 0x2
	buffer_store_b32 v144, v22, s[20:23], 0 offen
	buffer_store_b32 v143, v23, s[20:23], 0 offen
	buffer_store_b32 v142, v21, s[20:23], 0 offen
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
	buffer_store_b32 v141, v2, s[20:23], 0 offen
	buffer_store_b32 v140, v21, s[20:23], 0 offen
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
	buffer_store_b32 v139, v22, s[20:23], 0 offen
	buffer_store_b32 v138, v23, s[20:23], 0 offen
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
	buffer_store_b32 v136, v2, s[20:23], 0 offen
	buffer_store_b32 v135, v21, s[20:23], 0 offen
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
	buffer_store_b32 v134, v22, s[20:23], 0 offen
	buffer_store_b32 v133, v23, s[20:23], 0 offen
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
	v_lshl_add_u32 v20, s35, 5, v0
	.loc	1 1009 13 is_stmt 0             ; ragged.py:1009:13
	v_add_lshl_u32 v0, v0, v4, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1007 20 is_stmt 1             ; ragged.py:1007:20
	s_and_b32 s3, s5, s0
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v132, v2, s[20:23], 0 offen
	buffer_store_b32 v131, v21, s[20:23], 0 offen
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
	buffer_store_b32 v130, v22, s[20:23], 0 offen
	buffer_store_b32 v129, v23, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v17, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s4, s17
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v128, v0, s[20:23], 0 offen
	buffer_store_b32 v127, v2, s[20:23], 0 offen
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
	buffer_store_b32 v126, v21, s[20:23], 0 offen
	buffer_store_b32 v125, v22, s[20:23], 0 offen
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
	buffer_store_b32 v124, v0, s[20:23], 0 offen
	buffer_store_b32 v123, v2, s[20:23], 0 offen
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
	buffer_store_b32 v122, v21, s[20:23], 0 offen
	buffer_store_b32 v121, v22, s[20:23], 0 offen
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
	buffer_store_b32 v120, v0, s[20:23], 0 offen
	buffer_store_b32 v119, v2, s[20:23], 0 offen
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
	buffer_store_b32 v118, v21, s[20:23], 0 offen
	buffer_store_b32 v117, v22, s[20:23], 0 offen
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
	buffer_store_b32 v116, v0, s[20:23], 0 offen
	buffer_store_b32 v115, v2, s[20:23], 0 offen
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
	buffer_store_b32 v114, v21, s[20:23], 0 offen
	buffer_store_b32 v113, v22, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v17, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s19, s17
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v112, v0, s[20:23], 0 offen
	buffer_store_b32 v111, v2, s[20:23], 0 offen
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
	buffer_store_b32 v110, v19, s[20:23], 0 offen
	buffer_store_b32 v109, v21, s[20:23], 0 offen
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
	buffer_store_b32 v107, v0, s[20:23], 0 offen
	buffer_store_b32 v106, v2, s[20:23], 0 offen
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
	buffer_store_b32 v105, v19, s[20:23], 0 offen
	buffer_store_b32 v104, v21, s[20:23], 0 offen
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
	buffer_store_b32 v103, v0, s[20:23], 0 offen
	buffer_store_b32 v102, v2, s[20:23], 0 offen
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
	buffer_store_b32 v101, v19, s[20:23], 0 offen
	buffer_store_b32 v100, v21, s[20:23], 0 offen
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
	buffer_store_b32 v99, v0, s[20:23], 0 offen
	buffer_store_b32 v98, v2, s[20:23], 0 offen
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
	buffer_store_b32 v97, v19, s[20:23], 0 offen
	buffer_store_b32 v96, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s16
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v95, v0, s[20:23], 0 offen
	buffer_store_b32 v94, v2, s[20:23], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	v_add_lshl_u32 v0, v1, v16, 2
	v_add_lshl_u32 v2, v1, v14, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s15
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v93, v3, s[20:23], 0 offen
	buffer_store_b32 v92, v17, s[20:23], 0 offen
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
	buffer_store_b32 v91, v0, s[20:23], 0 offen
	buffer_store_b32 v90, v2, s[20:23], 0 offen
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
	buffer_store_b32 v89, v3, s[20:23], 0 offen
	buffer_store_b32 v88, v13, s[20:23], 0 offen
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
	buffer_store_b32 v87, v0, s[20:23], 0 offen
	buffer_store_b32 v86, v2, s[20:23], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v0, v1, v8, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_add_lshl_u32 v2, v1, v7, 2
	s_clause 0x1
	buffer_store_b32 v85, v3, s[20:23], 0 offen
	buffer_store_b32 v84, v9, s[20:23], 0 offen
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
	buffer_store_b32 v81, v0, s[20:23], 0 offen
	buffer_store_b32 v80, v2, s[20:23], 0 offen
	buffer_store_b32 v83, v3, s[20:23], 0 offen
	buffer_store_b32 v82, v4, s[20:23], 0 offen
	buffer_store_b32 v79, v1, s[20:23], 0 offen
	.loc	1 856 5                         ; ragged.py:856:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 238
		.amdhsa_next_free_sgpr 40
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 238
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8224
; TotalNumSgprs: 42
; NumVgprs: 238
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 29
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 238
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     238
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
