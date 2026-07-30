	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 856 0                         ; ragged.py:856:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[68:69], s[0:1], 0x30
.Ltmp0:
	.loc	1 883 20 prologue_end           ; ragged.py:883:20
	s_abs_i32 s9, s2
	.loc	1 888 36                        ; ragged.py:888:36
	v_and_b32_e32 v91, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:880:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s68, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:881:21 ]
	s_add_i32 s5, s69, 0xff
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
	s_sub_i32 s46, s5, s8
	.loc	1 885 17                        ; ragged.py:885:17
	s_sub_i32 s5, 0, s7
	.loc	1 884 22                        ; ragged.py:884:22
	s_mul_i32 s4, s46, s4
	.loc	1 885 17                        ; ragged.py:885:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 884 16                        ; ragged.py:884:16
	s_sub_i32 s2, s2, s4
	.loc	1 962 39                        ; ragged.py:962:39
	s_mul_i32 s61, s46, s68
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
	s_ashr_i32 s47, s46, 31
	.loc	1 885 17                        ; ragged.py:885:17
	s_xor_b32 s7, s7, s10
	.loc	1 892 19                        ; ragged.py:892:19
	s_lshl_b64 s[8:9], s[46:47], 2
	.loc	1 885 17                        ; ragged.py:885:17
	s_sub_i32 s7, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 886 24                        ; ragged.py:886:24
	s_mul_i32 s6, s7, s6
	.loc	1 888 18                        ; ragged.py:888:18
	s_lshl_b32 s60, s7, 6
	.loc	1 886 17                        ; ragged.py:886:17
	s_sub_i32 s6, s2, s6
	.loc	1 892 19                        ; ragged.py:892:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s8
	s_addc_u32 s5, s5, s9
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v1, s60, v91
	.loc	1 892 19                        ; ragged.py:892:19
	s_load_b32 s62, s[4:5], 0x0
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v2, 16, v1
	v_or_b32_e32 v3, 32, v1
	v_or_b32_e32 v4, 48, v1
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e64 s5, s68, v1
	v_cmp_gt_i32_e64 s4, s68, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s47, s68, v3
	v_cmp_gt_i32_e64 s2, s68, v4
	.loc	1 893 27                        ; ragged.py:893:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s45, s62, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 953 19                        ; ragged.py:953:19
	s_cmp_gt_i32 s45, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge80_crit_edge
	.loc	1 1009 22                       ; ragged.py:1009:22
	s_add_i32 s71, s60, s61
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; ragged.py:0:22
	s_mov_b32 s7, -1
                                        ; implicit-def: $sgpr71
.LBB0_3:                                ; %Flow238
	s_load_b64 s[56:57], s[0:1], 0x28
	v_dual_mov_b32 v93, 0 :: v_dual_and_b32 v122, 0xe0, v0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v97, 0
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
	v_mov_b32_e32 v152, 0
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_lshl_b32 s70, s6, 8
	s_cbranch_vccnz .LBB0_10
; %bb.4:                                ; %.preheader.lr.ph
	s_clause 0x1
	s_load_b256 s[48:55], s[0:1], 0x0
	s_load_b64 s[58:59], s[0:1], 0x38
	.loc	1 888 36 is_stmt 1              ; ragged.py:888:36
	v_lshrrev_b32_e32 v1, 5, v122
	v_dual_mov_b32 v152, 0 :: v_dual_and_b32 v155, 31, v0
	.loc	1 893 26                        ; ragged.py:893:26
	s_lshr_b32 s63, s45, 31
	.loc	1 972 37                        ; ragged.py:972:37
	s_and_b32 s62, s62, 0x80000001
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 888 36                        ; ragged.py:888:36
	v_or_b32_e32 v2, 8, v1
	v_or_b32_e32 v3, 16, v1
	v_or_b32_e32 v4, 24, v1
	v_or_b32_e32 v5, 32, v1
	v_or_b32_e32 v6, 40, v1
	v_or_b32_e32 v7, 48, v1
	v_or_b32_e32 v8, 56, v1
	.loc	1 888 18 is_stmt 0              ; ragged.py:888:18
	v_or_b32_e32 v9, s60, v1
	.loc	1 889 18 is_stmt 1              ; ragged.py:889:18
	v_or_b32_e32 v17, s70, v1
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v10, s60, v2
	v_or_b32_e32 v11, s60, v3
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v2, s70, v2
	v_or_b32_e32 v3, s70, v3
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v12, s60, v4
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s58, v1
	v_or_b32_e32 v13, s60, v5
	v_or_b32_e32 v14, s60, v6
	v_or_b32_e32 v15, s60, v7
	v_or_b32_e32 v16, s60, v8
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s13, s69, v2
	v_cmp_gt_i32_e64 s14, s69, v3
	.loc	1 893 26                        ; ragged.py:893:26
	s_add_i32 s63, s45, s63
	v_mad_u64_u32 v[2:3], null, s58, 24, v[1:2]
	v_dual_mov_b32 v142, 0 :: v_dual_add_nc_u32 v65, v155, v1
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e64 s0, s68, v9
	v_cmp_gt_i32_e64 s1, s68, v10
	v_cmp_gt_i32_e64 s6, s68, v11
	v_cmp_gt_i32_e64 s7, s68, v12
	v_cmp_gt_i32_e64 s8, s68, v13
	v_cmp_gt_i32_e64 s9, s68, v14
	v_cmp_gt_i32_e64 s10, s68, v15
	v_cmp_gt_i32_e64 s11, s68, v16
	.loc	1 893 26                        ; ragged.py:893:26
	s_ashr_i32 s68, s63, 1
	.loc	1 956 23                        ; ragged.py:956:23
	s_lshl_b32 s72, s3, 5
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v4, s70, v4
	.loc	1 972 37                        ; ragged.py:972:37
	s_cmp_eq_u32 s62, 1
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v5, s70, v5
	.loc	1 972 37                        ; ragged.py:972:37
	s_cselect_b32 s73, -1, 0
	.loc	1 972 67 is_stmt 0              ; ragged.py:972:67
	s_add_i32 s74, s68, -1
	s_cmp_lt_i32 s72, 64
	v_mad_u64_u32 v[66:67], null, 0x48, s58, v[65:66]
	.loc	1 889 18 is_stmt 1              ; ragged.py:889:18
	v_or_b32_e32 v6, s70, v6
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s15, s69, v4
	s_cselect_b32 s76, -1, 0
	v_mad_u64_u32 v[3:4], null, s58, 40, v[1:2]
	s_add_i32 s71, s60, s61
	v_cmp_gt_i32_e64 s16, s69, v5
	v_mad_u64_u32 v[4:5], null, s58, 48, v[1:2]
	.loc	1 998 37                        ; ragged.py:998:37
	s_mul_i32 s75, s46, s59
	.loc	1 964 39                        ; ragged.py:964:39
	s_mul_i32 s3, s46, s69
	s_mul_i32 s46, s71, s58
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v7, s70, v7
	v_or_b32_e32 v8, s70, v8
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s17, s69, v6
	v_mad_u64_u32 v[5:6], null, s58, 56, v[1:2]
	v_dual_mov_b32 v148, 0 :: v_dual_add_nc_u32 v159, s46, v2
	v_dual_mov_b32 v143, 0 :: v_dual_add_nc_u32 v166, v155, v2
	v_dual_mov_b32 v141, 0 :: v_dual_lshlrev_b32 v2, 1, v0
	v_mad_u64_u32 v[67:68], null, 0x50, s58, v[65:66]
	v_mad_u64_u32 v[68:69], null, 0x58, s58, v[65:66]
	v_mad_u64_u32 v[69:70], null, 0x60, s58, v[65:66]
	v_cmp_gt_i32_e64 s18, s69, v7
	v_cmp_gt_i32_e64 s19, s69, v8
	v_lshl_add_u32 v7, s58, 3, v1
	v_lshl_add_u32 v8, s58, 4, v1
	v_lshl_add_u32 v9, s58, 5, v1
	v_dual_mov_b32 v153, 0 :: v_dual_add_nc_u32 v156, s46, v1
	v_dual_mov_b32 v147, 0 :: v_dual_add_nc_u32 v162, s46, v4
	v_bfe_i32 v1, v0, 7, 1
	v_dual_mov_b32 v137, 0 :: v_dual_and_b32 v6, 24, v2
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v169, v155, v4
	v_dual_mov_b32 v133, 0 :: v_dual_add_nc_u32 v4, s71, v91
	v_mad_u64_u32 v[70:71], null, 0x68, s58, v[65:66]
	v_mad_u64_u32 v[71:72], null, 0x70, s58, v[65:66]
	v_mad_u64_u32 v[72:73], null, 0x78, s58, v[65:66]
	v_mad_u64_u32 v[73:74], null, 0x88, s58, v[65:66]
	v_mad_u64_u32 v[74:75], null, 0x90, s58, v[65:66]
	v_dual_mov_b32 v149, 0 :: v_dual_add_nc_u32 v160, s46, v9
	v_dual_mov_b32 v146, 0 :: v_dual_add_nc_u32 v161, s46, v3
	v_dual_mov_b32 v138, 0 :: v_dual_add_nc_u32 v167, v155, v9
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v168, v155, v3
	v_dual_mov_b32 v136, 0 :: v_dual_and_b32 v3, 0x7f, v0
	v_dual_mov_b32 v134, 0 :: v_dual_and_b32 v1, 0x88, v1
	v_lshl_or_b32 v173, v91, 5, v6
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v9, 16, v4
	v_mul_lo_u32 v176, v4, s59
	v_dual_mov_b32 v128, 0 :: v_dual_add_nc_u32 v11, 32, v4
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v4, 48, v4
	v_dual_mov_b32 v129, 0 :: v_dual_and_b32 v12, 0xf0, v0
	v_dual_mov_b32 v126, 0 :: v_dual_lshlrev_b32 v13, 5, v0
	v_mad_u64_u32 v[75:76], null, 0x98, s58, v[65:66]
	v_mad_u64_u32 v[76:77], null, 0xa0, s58, v[65:66]
	v_mad_u64_u32 v[77:78], null, 0xa8, s58, v[65:66]
	v_mad_u64_u32 v[78:79], null, 0xb0, s58, v[65:66]
	v_mad_u64_u32 v[79:80], null, 0xb8, s58, v[65:66]
	v_xor_b32_e32 v172, v1, v3
	v_lshl_or_b32 v175, v122, 4, v173
	v_mul_lo_u32 v177, v9, s59
	v_mul_lo_u32 v179, v4, s59
	v_dual_mov_b32 v127, 0 :: v_dual_lshlrev_b32 v4, 2, v12
	v_dual_mov_b32 v124, 0 :: v_dual_and_b32 v9, 32, v13
	v_mad_u64_u32 v[80:81], null, 0xc0, s58, v[65:66]
	v_mad_u64_u32 v[81:82], null, 0xc8, s58, v[65:66]
	v_mad_u64_u32 v[82:83], null, 0xd0, s58, v[65:66]
	v_mad_u64_u32 v[83:84], null, 0xd8, s58, v[65:66]
	v_mad_u64_u32 v[84:85], null, 0xe0, s58, v[65:66]
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v18, 64, v17
	v_or_b32_e32 v19, 0x48, v17
	v_or_b32_e32 v20, 0x50, v17
	v_or_b32_e32 v21, 0x58, v17
	v_or_b32_e32 v22, 0x60, v17
	v_or_b32_e32 v23, 0x68, v17
	v_or_b32_e32 v24, 0x70, v17
	v_or_b32_e32 v25, 0x78, v17
	v_or_b32_e32 v26, 0x80, v17
	v_or_b32_e32 v27, 0x88, v17
	v_or_b32_e32 v28, 0x90, v17
	v_or_b32_e32 v29, 0x98, v17
	v_or_b32_e32 v30, 0xa0, v17
	v_or_b32_e32 v31, 0xa8, v17
	v_or_b32_e32 v32, 0xb0, v17
	v_or_b32_e32 v33, 0xb8, v17
	v_or_b32_e32 v34, 0xc0, v17
	v_or_b32_e32 v35, 0xc8, v17
	v_or_b32_e32 v36, 0xd0, v17
	v_or_b32_e32 v37, 0xd8, v17
	v_or_b32_e32 v38, 0xe0, v17
	v_or_b32_e32 v39, 0xe8, v17
	v_or_b32_e32 v40, 0xf0, v17
	v_or_b32_e32 v41, 0xf8, v17
	v_or_b32_e32 v154, s70, v0
	v_dual_mov_b32 v150, 0 :: v_dual_add_nc_u32 v157, s46, v7
	v_dual_mov_b32 v151, 0 :: v_dual_add_nc_u32 v158, s46, v8
	v_dual_mov_b32 v144, 0 :: v_dual_add_nc_u32 v163, s46, v5
	v_dual_mov_b32 v145, 0 :: v_dual_add_nc_u32 v164, v155, v7
	v_dual_mov_b32 v140, 0 :: v_dual_add_nc_u32 v165, v155, v8
	v_dual_mov_b32 v135, 0 :: v_dual_add_nc_u32 v170, v155, v5
	v_xor_b32_e32 v1, 0x110, v172
	v_xor_b32_e32 v3, 8, v173
	v_xor_b32_e32 v5, 16, v173
	v_xor_b32_e32 v6, 24, v173
	v_xor_b32_e32 v7, 8, v175
	v_xor_b32_e32 v8, 16, v175
	v_xor_b32_e32 v10, 24, v175
	v_dual_mov_b32 v125, 0 :: v_dual_and_b32 v2, 28, v2
	v_add3_u32 v4, 0, v4, v9
	v_dual_mov_b32 v120, 0 :: v_dual_lshlrev_b32 v9, 1, v12
	v_mad_u64_u32 v[85:86], null, 0xe8, s58, v[65:66]
	v_mad_u64_u32 v[86:87], null, 0xf0, s58, v[65:66]
	v_mul_lo_u32 v178, v11, s59
	v_mad_u64_u32 v[87:88], null, 0xf8, s58, v[65:66]
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s12, s69, v17
	v_cmp_gt_i32_e64 s20, s69, v18
	v_cmp_gt_i32_e64 s21, s69, v19
	v_cmp_gt_i32_e64 s22, s69, v20
	v_cmp_gt_i32_e64 s23, s69, v21
	v_cmp_gt_i32_e64 s24, s69, v22
	v_cmp_gt_i32_e64 s25, s69, v23
	v_cmp_gt_i32_e64 s26, s69, v24
	v_cmp_gt_i32_e64 s27, s69, v25
	v_cmp_gt_i32_e64 s28, s69, v26
	v_cmp_gt_i32_e64 s29, s69, v27
	v_cmp_gt_i32_e64 s30, s69, v28
	v_cmp_gt_i32_e64 s31, s69, v29
	v_cmp_gt_i32_e64 s33, s69, v30
	v_cmp_gt_i32_e64 s34, s69, v31
	v_cmp_gt_i32_e64 s35, s69, v32
	v_cmp_gt_i32_e64 s36, s69, v33
	v_cmp_gt_i32_e64 s37, s69, v34
	v_cmp_gt_i32_e64 s38, s69, v35
	v_cmp_gt_i32_e64 s39, s69, v36
	v_cmp_gt_i32_e64 s40, s69, v37
	v_cmp_gt_i32_e64 s41, s69, v38
	v_cmp_gt_i32_e64 s42, s69, v39
	v_cmp_gt_i32_e64 s43, s69, v40
	v_cmp_gt_i32_e64 s44, s69, v41
	v_cmp_gt_i32_e64 s45, s69, v154
	v_lshl_add_u32 v171, s58, 6, v65
	v_lshl_add_u32 v174, s58, 7, v65
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v180, 0, v1
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v181, 0, v3
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v182, 0, v5
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v183, 0, v6
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v184, 0, v7
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v185, 0, v8
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v186, 0, v10
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v187, v4, v2
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v188, 0, v9
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v88, 0
	s_add_i32 s77, s70, s3
	s_and_b32 s61, s49, 0xffff
	s_mov_b32 s60, s48
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	s_mul_i32 s77, s77, s58
	s_and_b32 s49, s51, 0xffff
	s_mov_b32 s48, s50
	s_and_b32 s53, s53, 0xffff
	s_and_b32 s65, s55, 0xffff
	s_mov_b32 s64, s54
	s_mov_b32 s59, 0
	.loc	1 953 19                        ; ragged.py:953:19
	s_lshr_b32 s58, s74, 6
	s_mov_b32 s54, 0
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 990 40                        ; ragged.py:990:40
	v_add_lshl_u32 v33, v176, s59, 1
	.loc	1 998 25                        ; ragged.py:998:25
	s_add_i32 s3, s59, s75
	.loc	1 990 40                        ; ragged.py:990:40
	v_add_lshl_u32 v34, v177, s59, 1
	v_add_lshl_u32 v35, v178, s59, 1
	.loc	1 998 25                        ; ragged.py:998:25
	s_mul_i32 s3, s3, s69
	.loc	1 990 40                        ; ragged.py:990:40
	v_add_lshl_u32 v36, v179, s59, 1
	.loc	1 997 40                        ; ragged.py:997:40
	v_add_lshl_u32 v37, v154, s3, 1
	.loc	1 990 40                        ; ragged.py:990:40
	v_cndmask_b32_e64 v33, 0x80000000, v33, s5
	v_cndmask_b32_e64 v34, 0x80000000, v34, s4
	v_cndmask_b32_e64 v35, 0x80000000, v35, s47
	s_mov_b32 s54, s62
	s_mov_b32 s55, s63
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	.loc	1 997 40                        ; ragged.py:997:40
	v_cndmask_b32_e64 v37, 0x80000000, v37, s45
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	.loc	1 990 40                        ; ragged.py:990:40
	s_clause 0x3
	buffer_load_u16 v33, v33, s[52:55], 0 offen
	buffer_load_u16 v34, v34, s[52:55], 0 offen
	buffer_load_u16 v35, v35, s[52:55], 0 offen
	buffer_load_u16 v36, v36, s[52:55], 0 offen
	.loc	1 997 40                        ; ragged.py:997:40
	buffer_load_u16 v37, v37, s[64:67], 0 offen
	.loc	1 1002 21                       ; ragged.py:1002:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1004 17                       ; ragged.py:1004:17
	s_add_i32 s3, s59, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 953 19                        ; ragged.py:953:19
	s_lshl_b32 s54, s3, 6
	s_cmp_lg_u32 s59, s58
	s_mov_b32 s59, s3
	.loc	1 990 40                        ; ragged.py:990:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 995 21                        ; ragged.py:995:21
	v_dual_mul_f32 v54, v203, v34 :: v_dual_lshlrev_b32 v33, 16, v33
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v38, v220, v33 :: v_dual_lshlrev_b32 v35, 16, v35
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v41, v217, v33 :: v_dual_lshlrev_b32 v36, 16, v36
	v_mul_f32_e32 v39, v219, v33
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v56, v201, v34 :: v_dual_lshlrev_b32 v37, 16, v37
	v_dual_mul_f32 v40, v218, v33 :: v_dual_mul_f32 v53, v204, v34
	v_dual_mul_f32 v42, v216, v33 :: v_dual_mul_f32 v55, v202, v34
	v_dual_mul_f32 v43, v215, v33 :: v_dual_mul_f32 v60, v197, v34
	v_dual_mul_f32 v44, v214, v33 :: v_dual_mul_f32 v57, v200, v34
	v_dual_mul_f32 v45, v213, v33 :: v_dual_mul_f32 v58, v199, v34
	v_dual_mul_f32 v46, v212, v33 :: v_dual_mul_f32 v59, v198, v34
	v_dual_mul_f32 v47, v211, v33 :: v_dual_mul_f32 v64, v193, v34
	v_dual_mul_f32 v48, v210, v33 :: v_dual_mul_f32 v61, v196, v34
	v_dual_mul_f32 v49, v209, v33 :: v_dual_mul_f32 v62, v195, v34
	v_dual_mul_f32 v50, v208, v33 :: v_dual_mul_f32 v63, v194, v34
	v_dual_mul_f32 v51, v207, v33 :: v_dual_mul_f32 v192, v192, v34
	v_dual_mul_f32 v52, v206, v33 :: v_dual_mul_f32 v191, v191, v34
	v_dual_mul_f32 v33, v205, v33 :: v_dual_mul_f32 v190, v190, v34
	v_dual_mul_f32 v34, v189, v34 :: v_dual_mul_f32 v31, v31, v35
	v_dual_mul_f32 v32, v32, v35 :: v_dual_mul_f32 v15, v15, v36
	v_dual_mul_f32 v30, v30, v35 :: v_dual_mul_f32 v203, v13, v36
	v_dual_mul_f32 v29, v29, v35 :: v_dual_mul_f32 v16, v16, v36
	v_dual_mul_f32 v189, v28, v35 :: v_dual_mul_f32 v10, v10, v36
	v_dual_mul_f32 v193, v27, v35 :: v_dual_mul_f32 v204, v12, v36
	v_dual_mul_f32 v194, v26, v35 :: v_dual_mul_f32 v205, v11, v36
	v_dual_mul_f32 v195, v25, v35 :: v_dual_mul_f32 v8, v8, v36
	v_mul_f32_e32 v196, v24, v35
	v_dual_mul_f32 v197, v23, v35 :: v_dual_mul_f32 v6, v6, v36
	v_dual_mul_f32 v198, v22, v35 :: v_dual_mul_f32 v9, v9, v36
	v_dual_mul_f32 v199, v21, v35 :: v_dual_mul_f32 v4, v4, v36
	v_dual_mul_f32 v200, v20, v35 :: v_dual_mul_f32 v7, v7, v36
	v_dual_mul_f32 v201, v19, v35 :: v_dual_mul_f32 v2, v2, v36
	v_dual_mul_f32 v202, v18, v35 :: v_dual_mul_f32 v5, v5, v36
	v_mul_f32_e32 v35, v17, v35
	.loc	1 1002 21                       ; ragged.py:1002:21
	ds_store_b32 v187, v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v188
	ds_load_b128 v[21:24], v188 offset:16
	.loc	1 995 21                        ; ragged.py:995:21
	v_mul_f32_e32 v37, v14, v36
	.loc	1 1002 21                       ; ragged.py:1002:21
	ds_load_b128 v[11:14], v188 offset:512
	ds_load_b128 v[25:28], v188 offset:528
	.loc	1 995 21                        ; ragged.py:995:21
	v_mul_f32_e32 v3, v3, v36
	v_mul_f32_e32 v1, v1, v36
	.loc	1 1003 17                       ; ragged.py:1003:17
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v153, v38, v17 :: v_dual_fmac_f32 v150, v41, v20
	v_dual_fmac_f32 v152, v39, v18 :: v_dual_fmac_f32 v151, v40, v19
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v146, v45, v24 :: v_dual_fmac_f32 v149, v42, v21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v144, v47, v12
	v_dual_fmac_f32 v148, v43, v22 :: v_dual_fmac_f32 v147, v44, v23
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v140, v51, v26 :: v_dual_fmac_f32 v145, v46, v11
	v_dual_fmac_f32 v138, v33, v28 :: v_dual_fmac_f32 v143, v48, v13
	v_fmac_f32_e32 v136, v54, v18
	v_dual_fmac_f32 v142, v49, v14 :: v_dual_fmac_f32 v141, v50, v25
	v_fmac_f32_e32 v134, v56, v20
	v_dual_fmac_f32 v139, v52, v27 :: v_dual_fmac_f32 v132, v58, v22
	v_dual_fmac_f32 v137, v53, v17 :: v_dual_fmac_f32 v130, v60, v24
	v_dual_fmac_f32 v135, v55, v19 :: v_dual_fmac_f32 v128, v62, v12
	v_dual_fmac_f32 v133, v57, v21 :: v_dual_fmac_f32 v126, v64, v14
	v_dual_fmac_f32 v131, v59, v23 :: v_dual_fmac_f32 v120, v32, v17
	v_dual_fmac_f32 v129, v61, v11 :: v_dual_fmac_f32 v124, v191, v26
	v_dual_fmac_f32 v127, v63, v13 :: v_dual_fmac_f32 v118, v30, v19
	v_dual_fmac_f32 v125, v192, v25 :: v_dual_fmac_f32 v114, v194, v23
	v_dual_fmac_f32 v123, v190, v27 :: v_dual_fmac_f32 v116, v189, v21
	v_dual_fmac_f32 v121, v34, v28 :: v_dual_fmac_f32 v112, v196, v11
	v_dual_fmac_f32 v119, v31, v18 :: v_dual_fmac_f32 v110, v198, v13
	v_dual_fmac_f32 v117, v29, v20 :: v_dual_fmac_f32 v108, v200, v25
	v_dual_fmac_f32 v115, v193, v22 :: v_dual_fmac_f32 v106, v202, v27
	v_dual_fmac_f32 v113, v195, v24 :: v_dual_fmac_f32 v104, v16, v17
	v_dual_fmac_f32 v111, v197, v12 :: v_dual_fmac_f32 v100, v204, v21
	v_dual_fmac_f32 v109, v199, v14 :: v_dual_fmac_f32 v102, v37, v19
	v_dual_fmac_f32 v107, v201, v26 :: v_dual_fmac_f32 v98, v10, v23
	v_dual_fmac_f32 v105, v35, v28 :: v_dual_fmac_f32 v96, v8, v11
	v_dual_fmac_f32 v103, v15, v18 :: v_dual_fmac_f32 v94, v6, v13
	v_dual_fmac_f32 v101, v203, v20 :: v_dual_fmac_f32 v90, v5, v14
	v_dual_fmac_f32 v99, v205, v22 :: v_dual_fmac_f32 v92, v2, v27
	v_fmac_f32_e32 v97, v9, v24
	v_fmac_f32_e32 v95, v7, v12
	v_dual_fmac_f32 v89, v4, v25 :: v_dual_fmac_f32 v88, v1, v28
	v_fmac_f32_e32 v93, v3, v26
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
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v220, 0
	.loc	1 957 23 is_stmt 1              ; ragged.py:957:23
	s_and_not1_b32 vcc_lo, exec_lo, s76
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_mov_b32_e32 v1, 0
	s_mov_b32 s55, s72
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
	s_add_i32 s66, s55, s54
	.loc	1 974 38                        ; ragged.py:974:38
	s_mov_b32 s50, s62
	.loc	1 958 26                        ; ragged.py:958:26
	v_or_b32_e32 v189, s66, v155
	.loc	1 974 46                        ; ragged.py:974:46
	s_add_i32 s66, s66, s77
	.loc	1 974 38 is_stmt 0              ; ragged.py:974:38
	s_mov_b32 s51, s63
	.loc	1 975 38 is_stmt 1              ; ragged.py:975:38
	v_add_nc_u32_e32 v245, 0, v172
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 971 60                        ; ragged.py:971:60
	v_subrev_nc_u32_e32 v190, s54, v189
	.loc	1 971 35 is_stmt 0              ; ragged.py:971:35
	v_cmp_gt_i32_e64 s46, s68, v189
	v_add_nc_u32_e32 v196, v189, v162
	.loc	1 972 60 is_stmt 1              ; ragged.py:972:60
	v_cmp_eq_u32_e64 s3, s74, v189
	.loc	1 971 59                        ; ragged.py:971:59
	v_cmp_gt_i32_e32 vcc_lo, 64, v190
	.loc	1 972 36                        ; ragged.py:972:36
	s_and_b32 s3, s73, s3
	.loc	1 971 34                        ; ragged.py:971:34
	s_and_b32 s46, s46, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 973 70                        ; ragged.py:973:70
	s_and_b32 vcc_lo, s0, s46
	v_add_nc_u32_e32 v191, v189, v157
	v_add_nc_u32_e32 v190, v189, v156
	.loc	1 973 38 is_stmt 0              ; ragged.py:973:38
	v_cndmask_b32_e32 v190, 0x80000000, v190, vcc_lo
	.loc	1 973 70                        ; ragged.py:973:70
	s_and_b32 vcc_lo, s1, s46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 973 38                        ; ragged.py:973:38
	v_cndmask_b32_e32 v191, 0x80000000, v191, vcc_lo
	.loc	1 973 70                        ; ragged.py:973:70
	s_and_b32 vcc_lo, s6, s46
	v_add_nc_u32_e32 v193, v189, v159
	v_add_nc_u32_e32 v192, v189, v158
	.loc	1 973 38                        ; ragged.py:973:38
	v_cndmask_b32_e32 v192, 0x80000000, v192, vcc_lo
	.loc	1 973 70                        ; ragged.py:973:70
	s_and_b32 vcc_lo, s7, s46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 973 38                        ; ragged.py:973:38
	v_cndmask_b32_e32 v193, 0x80000000, v193, vcc_lo
	.loc	1 973 70                        ; ragged.py:973:70
	s_and_b32 vcc_lo, s8, s46
	v_add_nc_u32_e32 v195, v189, v161
	v_add_nc_u32_e32 v194, v189, v160
	.loc	1 973 38                        ; ragged.py:973:38
	v_cndmask_b32_e32 v194, 0x80000000, v194, vcc_lo
	.loc	1 973 70                        ; ragged.py:973:70
	s_and_b32 vcc_lo, s9, s46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 973 38                        ; ragged.py:973:38
	v_cndmask_b32_e32 v195, 0x80000000, v195, vcc_lo
	.loc	1 973 70                        ; ragged.py:973:70
	s_and_b32 vcc_lo, s10, s46
	.loc	1 973 38                        ; ragged.py:973:38
	v_dual_cndmask_b32 v196, 0x80000000, v196 :: v_dual_add_nc_u32 v189, v189, v163
	.loc	1 973 70                        ; ragged.py:973:70
	s_and_b32 vcc_lo, s11, s46
	.loc	1 973 38                        ; ragged.py:973:38
	v_cndmask_b32_e32 v189, 0x80000000, v189, vcc_lo
	s_clause 0x7
	buffer_load_u8 v190, v190, s[60:63], 0 offen
	buffer_load_u8 v191, v191, s[60:63], 0 offen
	buffer_load_u8 v192, v192, s[60:63], 0 offen
	buffer_load_u8 v193, v193, s[60:63], 0 offen
	buffer_load_u8 v194, v194, s[60:63], 0 offen
	buffer_load_u8 v195, v195, s[60:63], 0 offen
	buffer_load_u8 v196, v196, s[60:63], 0 offen
	buffer_load_u8 v197, v189, s[60:63], 0 offen
	.loc	1 974 70 is_stmt 1              ; ragged.py:974:70
	s_and_b32 vcc_lo, s12, s46
	.loc	1 975 66                        ; ragged.py:975:66
	s_waitcnt vmcnt(7)
	v_and_b16 v189.l, v190.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v189.h, v191.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v190.h, v193.l, 15
	.loc	1 975 38 is_stmt 0              ; ragged.py:975:38
	v_cndmask_b16 v189.l, v190.l, v189.l, s3
	.loc	1 975 66                        ; ragged.py:975:66
	v_and_b16 v190.l, v192.l, 15
	.loc	1 975 38                        ; ragged.py:975:38
	v_cndmask_b16 v189.h, v191.l, v189.h, s3
	.loc	1 975 66                        ; ragged.py:975:66
	s_waitcnt vmcnt(3)
	v_and_b16 v191.l, v194.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v191.h, v195.l, 15
	.loc	1 975 38                        ; ragged.py:975:38
	v_cndmask_b16 v190.h, v193.l, v190.h, s3
	v_add_nc_u32_e32 v193, s66, v65
	v_cndmask_b16 v190.l, v192.l, v190.l, s3
	.loc	1 975 66                        ; ragged.py:975:66
	s_waitcnt vmcnt(1)
	v_and_b16 v192.l, v196.l, 15
	.loc	1 975 38                        ; ragged.py:975:38
	v_cndmask_b16 v191.l, v194.l, v191.l, s3
	v_add_nc_u32_e32 v194, s66, v164
	.loc	1 975 66                        ; ragged.py:975:66
	s_waitcnt vmcnt(0)
	v_and_b16 v192.h, v197.l, 15
	.loc	1 975 38                        ; ragged.py:975:38
	v_cndmask_b16 v191.h, v195.l, v191.h, s3
	v_add_nc_u32_e32 v195, s66, v166
	.loc	1 974 38 is_stmt 1              ; ragged.py:974:38
	v_cndmask_b32_e32 v193, 0x80000000, v193, vcc_lo
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 vcc_lo, s13, s46
	.loc	1 975 38 is_stmt 1              ; ragged.py:975:38
	v_cndmask_b16 v192.l, v196.l, v192.l, s3
	v_add_nc_u32_e32 v196, s66, v168
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e32 v194, 0x80000000, v194, vcc_lo
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 vcc_lo, s15, s46
	.loc	1 975 38 is_stmt 1              ; ragged.py:975:38
	v_cndmask_b16 v192.h, v197.l, v192.h, s3
	v_add_nc_u32_e32 v197, s66, v170
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e32 v195, 0x80000000, v195, vcc_lo
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 vcc_lo, s17, s46
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e32 v196, 0x80000000, v196, vcc_lo
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 vcc_lo, s19, s46
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e32 v197, 0x80000000, v197, vcc_lo
	s_clause 0x4
	buffer_load_u8 v198, v193, s[48:51], 0 offen
	buffer_load_u8 v229, v197, s[48:51], 0 offen
	buffer_load_u8 v230, v196, s[48:51], 0 offen
	buffer_load_u8 v231, v195, s[48:51], 0 offen
	buffer_load_u8 v232, v194, s[48:51], 0 offen
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 vcc_lo, s14, s46
	v_add_nc_u32_e32 v196, s66, v70
	v_add_nc_u32_e32 v195, s66, v68
	v_add_nc_u32_e32 v197, s66, v72
	.loc	1 976 66 is_stmt 1              ; ragged.py:976:66
	s_waitcnt vmcnt(4)
	v_and_b16 v193.l, v198.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	v_cndmask_b16 v221.l, v198.l, v193.l, s3
	v_add_nc_u32_e32 v193, s66, v165
	.loc	1 974 38 is_stmt 1              ; ragged.py:974:38
	v_cndmask_b32_e32 v193, 0x80000000, v193, vcc_lo
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 vcc_lo, s16, s46
	.loc	1 974 38                        ; ragged.py:974:38
	buffer_load_u8 v194, v193, s[48:51], 0 offen
	.loc	1 976 66 is_stmt 1              ; ragged.py:976:66
	s_waitcnt vmcnt(0)
	v_and_b16 v193.l, v194.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	v_cndmask_b16 v221.h, v194.l, v193.l, s3
	v_add_nc_u32_e32 v193, s66, v167
	.loc	1 974 38 is_stmt 1              ; ragged.py:974:38
	v_cndmask_b32_e32 v193, 0x80000000, v193, vcc_lo
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 vcc_lo, s18, s46
	.loc	1 974 38                        ; ragged.py:974:38
	buffer_load_u8 v194, v193, s[48:51], 0 offen
	.loc	1 976 66 is_stmt 1              ; ragged.py:976:66
	s_waitcnt vmcnt(0)
	v_and_b16 v193.l, v194.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	v_cndmask_b16 v222.l, v194.l, v193.l, s3
	v_add_nc_u32_e32 v193, s66, v169
	.loc	1 974 38 is_stmt 1              ; ragged.py:974:38
	v_cndmask_b32_e32 v193, 0x80000000, v193, vcc_lo
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 vcc_lo, s20, s46
	.loc	1 974 38                        ; ragged.py:974:38
	buffer_load_u8 v194, v193, s[48:51], 0 offen
	.loc	1 976 66 is_stmt 1              ; ragged.py:976:66
	s_waitcnt vmcnt(0)
	v_and_b16 v193.l, v194.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	v_cndmask_b16 v222.h, v194.l, v193.l, s3
	v_add_nc_u32_e32 v193, s66, v171
	v_add_nc_u32_e32 v194, s66, v66
	.loc	1 974 38 is_stmt 1              ; ragged.py:974:38
	v_cndmask_b32_e32 v193, 0x80000000, v193, vcc_lo
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 vcc_lo, s21, s46
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e32 v194, 0x80000000, v194, vcc_lo
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 vcc_lo, s23, s46
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e32 v195, 0x80000000, v195, vcc_lo
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 vcc_lo, s25, s46
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e32 v196, 0x80000000, v196, vcc_lo
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 vcc_lo, s27, s46
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e32 v197, 0x80000000, v197, vcc_lo
	s_clause 0x4
	buffer_load_u8 v198, v193, s[48:51], 0 offen
	buffer_load_u8 v233, v197, s[48:51], 0 offen
	buffer_load_u8 v234, v196, s[48:51], 0 offen
	buffer_load_u8 v235, v195, s[48:51], 0 offen
	buffer_load_u8 v236, v194, s[48:51], 0 offen
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 vcc_lo, s22, s46
	v_add_nc_u32_e32 v195, s66, v75
	v_add_nc_u32_e32 v196, s66, v77
	v_add_nc_u32_e32 v197, s66, v79
	.loc	1 976 66 is_stmt 1              ; ragged.py:976:66
	s_waitcnt vmcnt(4)
	v_and_b16 v193.l, v198.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	v_cndmask_b16 v223.l, v198.l, v193.l, s3
	v_add_nc_u32_e32 v193, s66, v67
	.loc	1 974 38 is_stmt 1              ; ragged.py:974:38
	v_cndmask_b32_e32 v193, 0x80000000, v193, vcc_lo
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 vcc_lo, s24, s46
	.loc	1 974 38                        ; ragged.py:974:38
	buffer_load_u8 v194, v193, s[48:51], 0 offen
	.loc	1 976 66 is_stmt 1              ; ragged.py:976:66
	s_waitcnt vmcnt(0)
	v_and_b16 v193.l, v194.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	v_cndmask_b16 v223.h, v194.l, v193.l, s3
	v_add_nc_u32_e32 v193, s66, v69
	.loc	1 974 38 is_stmt 1              ; ragged.py:974:38
	v_cndmask_b32_e32 v193, 0x80000000, v193, vcc_lo
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 vcc_lo, s26, s46
	.loc	1 974 38                        ; ragged.py:974:38
	buffer_load_u8 v194, v193, s[48:51], 0 offen
	.loc	1 976 66 is_stmt 1              ; ragged.py:976:66
	s_waitcnt vmcnt(0)
	v_and_b16 v193.l, v194.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	v_cndmask_b16 v224.l, v194.l, v193.l, s3
	v_add_nc_u32_e32 v193, s66, v71
	.loc	1 974 38 is_stmt 1              ; ragged.py:974:38
	v_cndmask_b32_e32 v193, 0x80000000, v193, vcc_lo
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 vcc_lo, s28, s46
	.loc	1 974 38                        ; ragged.py:974:38
	buffer_load_u8 v194, v193, s[48:51], 0 offen
	.loc	1 976 66 is_stmt 1              ; ragged.py:976:66
	s_waitcnt vmcnt(0)
	v_and_b16 v193.l, v194.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	v_cndmask_b16 v224.h, v194.l, v193.l, s3
	v_add_nc_u32_e32 v193, s66, v174
	v_add_nc_u32_e32 v194, s66, v73
	.loc	1 974 38 is_stmt 1              ; ragged.py:974:38
	v_cndmask_b32_e32 v193, 0x80000000, v193, vcc_lo
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 vcc_lo, s29, s46
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e32 v194, 0x80000000, v194, vcc_lo
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 vcc_lo, s31, s46
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e32 v195, 0x80000000, v195, vcc_lo
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 vcc_lo, s34, s46
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e32 v196, 0x80000000, v196, vcc_lo
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 vcc_lo, s36, s46
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e32 v197, 0x80000000, v197, vcc_lo
	s_clause 0x4
	buffer_load_u8 v198, v193, s[48:51], 0 offen
	buffer_load_u8 v237, v197, s[48:51], 0 offen
	buffer_load_u8 v238, v196, s[48:51], 0 offen
	buffer_load_u8 v239, v195, s[48:51], 0 offen
	buffer_load_u8 v240, v194, s[48:51], 0 offen
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 vcc_lo, s30, s46
	v_add_nc_u32_e32 v195, s66, v83
	v_add_nc_u32_e32 v196, s66, v85
	v_add_nc_u32_e32 v197, s66, v87
	.loc	1 976 66 is_stmt 1              ; ragged.py:976:66
	s_waitcnt vmcnt(4)
	v_and_b16 v193.l, v198.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	v_cndmask_b16 v225.l, v198.l, v193.l, s3
	v_add_nc_u32_e32 v193, s66, v74
	.loc	1 974 38 is_stmt 1              ; ragged.py:974:38
	v_cndmask_b32_e32 v193, 0x80000000, v193, vcc_lo
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 vcc_lo, s33, s46
	.loc	1 974 38                        ; ragged.py:974:38
	buffer_load_u8 v194, v193, s[48:51], 0 offen
	.loc	1 976 66 is_stmt 1              ; ragged.py:976:66
	s_waitcnt vmcnt(0)
	v_and_b16 v193.l, v194.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	v_cndmask_b16 v225.h, v194.l, v193.l, s3
	v_add_nc_u32_e32 v193, s66, v76
	.loc	1 974 38 is_stmt 1              ; ragged.py:974:38
	v_cndmask_b32_e32 v193, 0x80000000, v193, vcc_lo
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 vcc_lo, s35, s46
	.loc	1 974 38                        ; ragged.py:974:38
	buffer_load_u8 v194, v193, s[48:51], 0 offen
	.loc	1 976 66 is_stmt 1              ; ragged.py:976:66
	s_waitcnt vmcnt(0)
	v_and_b16 v193.l, v194.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	v_cndmask_b16 v226.l, v194.l, v193.l, s3
	v_add_nc_u32_e32 v193, s66, v78
	.loc	1 974 38 is_stmt 1              ; ragged.py:974:38
	v_cndmask_b32_e32 v193, 0x80000000, v193, vcc_lo
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 vcc_lo, s37, s46
	.loc	1 974 38                        ; ragged.py:974:38
	buffer_load_u8 v194, v193, s[48:51], 0 offen
	.loc	1 976 66 is_stmt 1              ; ragged.py:976:66
	s_waitcnt vmcnt(0)
	v_and_b16 v193.l, v194.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	v_cndmask_b16 v226.h, v194.l, v193.l, s3
	v_add_nc_u32_e32 v193, s66, v80
	v_add_nc_u32_e32 v194, s66, v81
	.loc	1 974 38 is_stmt 1              ; ragged.py:974:38
	v_cndmask_b32_e32 v193, 0x80000000, v193, vcc_lo
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 vcc_lo, s38, s46
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e32 v194, 0x80000000, v194, vcc_lo
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 vcc_lo, s40, s46
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e32 v195, 0x80000000, v195, vcc_lo
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 vcc_lo, s42, s46
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e32 v196, 0x80000000, v196, vcc_lo
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 vcc_lo, s44, s46
	.loc	1 974 38                        ; ragged.py:974:38
	v_cndmask_b32_e32 v197, 0x80000000, v197, vcc_lo
	s_clause 0x4
	buffer_load_u8 v198, v193, s[48:51], 0 offen
	buffer_load_u8 v241, v197, s[48:51], 0 offen
	buffer_load_u8 v242, v196, s[48:51], 0 offen
	buffer_load_u8 v243, v195, s[48:51], 0 offen
	buffer_load_u8 v244, v194, s[48:51], 0 offen
	.loc	1 974 70                        ; ragged.py:974:70
	s_and_b32 vcc_lo, s39, s46
	.loc	1 976 66 is_stmt 1              ; ragged.py:976:66
	s_waitcnt vmcnt(4)
	v_and_b16 v193.l, v198.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	v_cndmask_b16 v227.l, v198.l, v193.l, s3
	v_add_nc_u32_e32 v193, s66, v82
	.loc	1 974 38 is_stmt 1              ; ragged.py:974:38
	v_cndmask_b32_e32 v193, 0x80000000, v193, vcc_lo
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 vcc_lo, s41, s46
	.loc	1 974 38                        ; ragged.py:974:38
	buffer_load_u8 v194, v193, s[48:51], 0 offen
	.loc	1 976 66 is_stmt 1              ; ragged.py:976:66
	s_waitcnt vmcnt(0)
	v_and_b16 v193.l, v194.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	v_cndmask_b16 v227.h, v194.l, v193.l, s3
	v_add_nc_u32_e32 v193, s66, v84
	.loc	1 974 38 is_stmt 1              ; ragged.py:974:38
	v_cndmask_b32_e32 v193, 0x80000000, v193, vcc_lo
	.loc	1 974 70 is_stmt 0              ; ragged.py:974:70
	s_and_b32 vcc_lo, s43, s46
	.loc	1 974 38                        ; ragged.py:974:38
	buffer_load_u8 v194, v193, s[48:51], 0 offen
	.loc	1 976 66 is_stmt 1              ; ragged.py:976:66
	s_waitcnt vmcnt(0)
	v_and_b16 v193.l, v194.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	v_cndmask_b16 v228.l, v194.l, v193.l, s3
	v_add_nc_u32_e32 v193, s66, v86
	.loc	1 974 38 is_stmt 1              ; ragged.py:974:38
	v_cndmask_b32_e32 v193, 0x80000000, v193, vcc_lo
	buffer_load_u8 v194, v193, s[48:51], 0 offen
	.loc	1 975 38                        ; ragged.py:975:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v245, v189
	ds_store_b8 v245, v190 offset:512
	ds_store_b8 v245, v191 offset:1024
	ds_store_b8 v245, v192 offset:1536
	ds_store_b8_d16_hi v180, v189
	ds_store_b8_d16_hi v180, v190 offset:512
	ds_store_b8_d16_hi v180, v191 offset:1024
	ds_store_b8_d16_hi v180, v192 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 976 66                        ; ragged.py:976:66
	s_waitcnt vmcnt(0)
	v_and_b16 v193.l, v194.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 976 38 is_stmt 0              ; ragged.py:976:38
	v_cndmask_b16 v228.h, v194.l, v193.l, s3
	.loc	1 975 38 is_stmt 1              ; ragged.py:975:38
	v_add_nc_u32_e32 v193, 0, v173
	ds_load_2addr_stride64_b64 v[189:192], v193 offset1:1
	ds_load_2addr_stride64_b64 v[193:196], v193 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[197:200], v181 offset1:1
	ds_load_2addr_stride64_b64 v[201:204], v181 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[205:208], v182 offset1:1
	ds_load_2addr_stride64_b64 v[209:212], v182 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[213:216], v183 offset1:1
	ds_load_2addr_stride64_b64 v[217:220], v183 offset0:2 offset1:3
	.loc	1 976 38                        ; ragged.py:976:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v245, v221
	ds_store_b8_d16_hi v245, v221 offset:512
	ds_store_b8 v245, v222 offset:1024
	ds_store_b8_d16_hi v245, v222 offset:1536
	ds_store_b8 v245, v223 offset:2048
	ds_store_b8_d16_hi v245, v223 offset:2560
	ds_store_b8 v245, v224 offset:3072
	ds_store_b8_d16_hi v245, v224 offset:3584
	ds_store_b8 v245, v225 offset:4096
	ds_store_b8_d16_hi v245, v225 offset:4608
	ds_store_b8 v245, v226 offset:5120
	ds_store_b8_d16_hi v245, v226 offset:5632
	ds_store_b8 v245, v227 offset:6144
	ds_store_b8_d16_hi v245, v227 offset:6656
	ds_store_b8 v245, v228 offset:7168
	ds_store_b8_d16_hi v245, v228 offset:7680
	.loc	1 976 66 is_stmt 0              ; ragged.py:976:66
	v_and_b16 v221.l, v232.l, 15
	v_and_b16 v221.h, v231.l, 15
	v_and_b16 v222.l, v230.l, 15
	v_and_b16 v222.h, v229.l, 15
	v_and_b16 v223.l, v236.l, 15
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v221.l, v232.l, v221.l, s3
	.loc	1 976 66                        ; ragged.py:976:66
	v_and_b16 v223.h, v235.l, 15
	v_and_b16 v224.l, v234.l, 15
	v_and_b16 v224.h, v233.l, 15
	v_and_b16 v225.l, v240.l, 15
	v_and_b16 v225.h, v239.l, 15
	v_and_b16 v226.l, v238.l, 15
	v_and_b16 v226.h, v237.l, 15
	v_and_b16 v227.l, v244.l, 15
	v_and_b16 v227.h, v243.l, 15
	v_and_b16 v228.l, v242.l, 15
	v_and_b16 v228.h, v241.l, 15
	.loc	1 976 38                        ; ragged.py:976:38
	v_cndmask_b16 v221.h, v231.l, v221.h, s3
	v_cndmask_b16 v222.l, v230.l, v222.l, s3
	v_cndmask_b16 v222.h, v229.l, v222.h, s3
	v_cndmask_b16 v223.l, v236.l, v223.l, s3
	v_cndmask_b16 v223.h, v235.l, v223.h, s3
	v_cndmask_b16 v224.l, v234.l, v224.l, s3
	v_cndmask_b16 v224.h, v233.l, v224.h, s3
	v_cndmask_b16 v225.l, v240.l, v225.l, s3
	v_cndmask_b16 v225.h, v239.l, v225.h, s3
	v_cndmask_b16 v226.l, v238.l, v226.l, s3
	v_cndmask_b16 v226.h, v237.l, v226.h, s3
	v_cndmask_b16 v227.l, v244.l, v227.l, s3
	v_cndmask_b16 v227.h, v243.l, v227.h, s3
	v_cndmask_b16 v228.l, v242.l, v228.l, s3
	v_cndmask_b16 v228.h, v241.l, v228.h, s3
	ds_store_b8 v180, v221
	ds_store_b8_d16_hi v180, v221 offset:512
	ds_store_b8 v180, v222 offset:1024
	ds_store_b8_d16_hi v180, v222 offset:1536
	ds_store_b8 v180, v223 offset:2048
	ds_store_b8_d16_hi v180, v223 offset:2560
	ds_store_b8 v180, v224 offset:3072
	ds_store_b8_d16_hi v180, v224 offset:3584
	ds_store_b8 v180, v225 offset:4096
	ds_store_b8_d16_hi v180, v225 offset:4608
	ds_store_b8 v180, v226 offset:5120
	ds_store_b8_d16_hi v180, v226 offset:5632
	ds_store_b8 v180, v227 offset:6144
	ds_store_b8_d16_hi v180, v227 offset:6656
	ds_store_b8 v180, v228 offset:7168
	ds_store_b8_d16_hi v180, v228 offset:7680
	v_add_nc_u32_e32 v221, 0, v175
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 987 21 is_stmt 1              ; ragged.py:987:21
	s_add_i32 s3, s55, 32
	.loc	1 957 23                        ; ragged.py:957:23
	s_cmp_lt_i32 s55, 32
	.loc	1 976 38                        ; ragged.py:976:38
	ds_load_2addr_stride64_b64 v[221:224], v221 offset1:8
	s_mov_b32 s55, s3
	.loc	1 977 31                        ; ragged.py:977:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[221:222], v[189:190], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[223:224], v[189:190], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[221:222], v[191:192], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[223:224], v[191:192], v[25:32] neg_lo:[1,1,0]
	.loc	1 976 38                        ; ragged.py:976:38
	ds_load_2addr_stride64_b64 v[189:192], v184 offset1:8
	.loc	1 977 31                        ; ragged.py:977:31
	v_wmma_i32_16x16x16_iu4 v[33:40], v[221:222], v[193:194], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[223:224], v[193:194], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[221:222], v[195:196], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[223:224], v[195:196], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[189:190], v[197:198], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[191:192], v[197:198], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[189:190], v[199:200], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[191:192], v[199:200], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[189:190], v[201:202], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[191:192], v[201:202], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[189:190], v[203:204], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[191:192], v[203:204], v[57:64] neg_lo:[1,1,0]
	.loc	1 976 38                        ; ragged.py:976:38
	ds_load_2addr_stride64_b64 v[189:192], v185 offset1:8
	.loc	1 977 31                        ; ragged.py:977:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[189:190], v[205:206], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[191:192], v[205:206], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[189:190], v[207:208], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[191:192], v[207:208], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[189:190], v[209:210], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[191:192], v[209:210], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[189:190], v[211:212], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[191:192], v[211:212], v[57:64] neg_lo:[1,1,0]
	.loc	1 976 38                        ; ragged.py:976:38
	ds_load_2addr_stride64_b64 v[189:192], v186 offset1:8
	.loc	1 977 31                        ; ragged.py:977:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[189:190], v[213:214], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[191:192], v[213:214], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[189:190], v[215:216], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[191:192], v[215:216], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[189:190], v[217:218], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[191:192], v[217:218], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[189:190], v[219:220], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[191:192], v[219:220], v[57:64] neg_lo:[1,1,0]
	.loc	1 957 23                        ; ragged.py:957:23
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 988 27                        ; ragged.py:988:27
	v_cvt_f32_i32_e32 v220, v1
	v_cvt_f32_i32_e32 v219, v2
	v_cvt_f32_i32_e32 v218, v3
	v_cvt_f32_i32_e32 v217, v4
	v_cvt_f32_i32_e32 v216, v5
	v_cvt_f32_i32_e32 v215, v6
	v_cvt_f32_i32_e32 v214, v7
	v_cvt_f32_i32_e32 v213, v8
	v_cvt_f32_i32_e32 v212, v9
	v_cvt_f32_i32_e32 v211, v10
	v_cvt_f32_i32_e32 v210, v11
	v_cvt_f32_i32_e32 v209, v12
	v_cvt_f32_i32_e32 v208, v13
	v_cvt_f32_i32_e32 v207, v14
	v_cvt_f32_i32_e32 v206, v15
	v_cvt_f32_i32_e32 v205, v16
	v_cvt_f32_i32_e32 v204, v17
	v_cvt_f32_i32_e32 v203, v18
	v_cvt_f32_i32_e32 v202, v19
	v_cvt_f32_i32_e32 v201, v20
	v_cvt_f32_i32_e32 v200, v21
	v_cvt_f32_i32_e32 v199, v22
	v_cvt_f32_i32_e32 v198, v23
	v_cvt_f32_i32_e32 v197, v24
	v_cvt_f32_i32_e32 v196, v25
	v_cvt_f32_i32_e32 v195, v26
	v_cvt_f32_i32_e32 v194, v27
	v_cvt_f32_i32_e32 v193, v28
	v_cvt_f32_i32_e32 v192, v29
	v_cvt_f32_i32_e32 v191, v30
	v_cvt_f32_i32_e32 v190, v31
	v_cvt_f32_i32_e32 v189, v32
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
	.loc	1 889 36                        ; ragged.py:889:36
	v_lshrrev_b32_e32 v0, 4, v0
	v_lshrrev_b32_e32 v1, 1, v122
	.loc	1 1009 22                       ; ragged.py:1009:22
	s_mul_i32 s3, s71, s69
	.loc	1 1009 13 is_stmt 0             ; ragged.py:1009:13
	s_waitcnt lgkmcnt(0)
	s_and_b32 s57, s57, 0xffff
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
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
	v_or_b32_e32 v0, s70, v4
	v_or_b32_e32 v11, s70, v7
	v_or_b32_e32 v12, s70, v8
	v_or_b32_e32 v2, s70, v6
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v14, 12, v3
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v1, s70, v5
	v_or_b32_e32 v13, s70, v9
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e32 vcc_lo, s69, v0
	v_cmp_gt_i32_e64 s6, s69, v11
	v_cmp_gt_i32_e64 s7, s69, v12
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v0, s70, v10
	.loc	1 889 36 is_stmt 0              ; ragged.py:889:36
	v_or_b32_e32 v11, 0x80, v3
	v_or_b32_e32 v12, 14, v3
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e64 s1, s69, v2
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v2, s70, v14
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s0, s69, v1
	v_cmp_gt_i32_e64 s8, s69, v13
	v_cmp_gt_i32_e64 s9, s69, v0
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v0, s70, v11
	v_or_b32_e32 v1, s70, v12
	.loc	1 889 36 is_stmt 0              ; ragged.py:889:36
	v_or_b32_e32 v13, 10, v3
	v_or_b32_e32 v15, 8, v3
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e64 s12, s69, v2
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_mul_lo_u32 v2, s69, v91
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s10, s69, v0
	v_cmp_gt_i32_e64 s11, s69, v1
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v0, s70, v13
	v_or_b32_e32 v1, s70, v15
	.loc	1 889 36 is_stmt 0              ; ragged.py:889:36
	v_or_b32_e32 v16, 6, v3
	v_or_b32_e32 v18, 2, v3
	v_or_b32_e32 v17, 4, v3
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v21, s70, v3
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e64 s13, s69, v0
	v_cmp_gt_i32_e64 s14, s69, v1
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v1, s70, v16
	v_or_b32_e32 v20, s70, v18
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_add3_u32 v0, s3, s70, v2
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v19, s70, v17
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s17, s69, v21
	v_cmp_gt_i32_e64 s3, s69, v1
	v_cmp_gt_i32_e64 s16, s69, v20
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v1, v0, v3, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s15, s69, v19
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
	v_lshl_add_u32 v19, s69, 4, v0
	.loc	1 1009 13 is_stmt 0             ; ragged.py:1009:13
	v_cndmask_b32_e64 v23, 0x80000000, v2, s18
	.loc	1 1007 20 is_stmt 1             ; ragged.py:1007:20
	s_and_b32 s18, s5, s15
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_mad_u64_u32 v[1:2], null, s69, 48, v[0:1]
	.loc	1 1009 13 is_stmt 0             ; ragged.py:1009:13
	v_cndmask_b32_e64 v21, 0x80000000, v21, s18
	v_add_lshl_u32 v2, v0, v16, 2
	s_clause 0x2
	buffer_store_b32 v153, v22, s[56:59], 0 offen
	buffer_store_b32 v152, v23, s[56:59], 0 offen
	buffer_store_b32 v151, v21, s[56:59], 0 offen
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
	buffer_store_b32 v150, v2, s[56:59], 0 offen
	buffer_store_b32 v149, v21, s[56:59], 0 offen
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
	buffer_store_b32 v148, v22, s[56:59], 0 offen
	buffer_store_b32 v147, v23, s[56:59], 0 offen
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
	buffer_store_b32 v146, v2, s[56:59], 0 offen
	buffer_store_b32 v145, v21, s[56:59], 0 offen
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
	buffer_store_b32 v144, v22, s[56:59], 0 offen
	buffer_store_b32 v143, v23, s[56:59], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s18
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s18, s5, s6
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v22, v0, v6, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s18
	.loc	1 1009 22 is_stmt 0             ; ragged.py:1009:22
	v_lshl_add_u32 v20, s69, 5, v0
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v23, v0, v5, 2
	v_add_lshl_u32 v0, v0, v4, 2
	.loc	1 1007 20 is_stmt 1             ; ragged.py:1007:20
	s_and_b32 s18, s5, s1
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v142, v2, s[56:59], 0 offen
	buffer_store_b32 v141, v21, s[56:59], 0 offen
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
	buffer_store_b32 v140, v22, s[56:59], 0 offen
	buffer_store_b32 v139, v23, s[56:59], 0 offen
	v_add_lshl_u32 v22, v19, v17, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s5, s4, s16
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v138, v0, s[56:59], 0 offen
	buffer_store_b32 v137, v2, s[56:59], 0 offen
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
	buffer_store_b32 v136, v21, s[56:59], 0 offen
	buffer_store_b32 v135, v22, s[56:59], 0 offen
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
	buffer_store_b32 v134, v0, s[56:59], 0 offen
	buffer_store_b32 v133, v2, s[56:59], 0 offen
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
	buffer_store_b32 v132, v21, s[56:59], 0 offen
	buffer_store_b32 v131, v22, s[56:59], 0 offen
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
	buffer_store_b32 v130, v0, s[56:59], 0 offen
	buffer_store_b32 v129, v2, s[56:59], 0 offen
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
	buffer_store_b32 v128, v21, s[56:59], 0 offen
	buffer_store_b32 v127, v22, s[56:59], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s5, s4, s6
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v21, v19, v6, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	v_add_lshl_u32 v22, v19, v5, 2
	s_clause 0x1
	buffer_store_b32 v126, v0, s[56:59], 0 offen
	buffer_store_b32 v125, v2, s[56:59], 0 offen
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
	s_and_b32 s4, s47, s17
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v19, v20, v18, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	s_clause 0x1
	buffer_store_b32 v124, v21, s[56:59], 0 offen
	buffer_store_b32 v123, v22, s[56:59], 0 offen
	v_add_lshl_u32 v21, v20, v17, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s47, s16
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v121, v0, s[56:59], 0 offen
	buffer_store_b32 v120, v2, s[56:59], 0 offen
	v_add_lshl_u32 v0, v20, v16, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s47, s15
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v20, v15, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s47, s3
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v119, v19, s[56:59], 0 offen
	buffer_store_b32 v118, v21, s[56:59], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s47, s14
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v19, v20, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_add_lshl_u32 v21, v20, v14, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s47, s13
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v117, v0, s[56:59], 0 offen
	buffer_store_b32 v116, v2, s[56:59], 0 offen
	v_add_lshl_u32 v0, v20, v12, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s47, s12
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v20, v11, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s47, s11
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v115, v19, s[56:59], 0 offen
	buffer_store_b32 v114, v21, s[56:59], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s47, s10
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v19, v20, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_add_lshl_u32 v21, v20, v9, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s47, s9
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v113, v0, s[56:59], 0 offen
	buffer_store_b32 v112, v2, s[56:59], 0 offen
	v_add_lshl_u32 v0, v20, v8, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s47, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v20, v7, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s47, s7
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v111, v19, s[56:59], 0 offen
	buffer_store_b32 v110, v21, s[56:59], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s47, s6
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v19, v20, v6, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_add_lshl_u32 v21, v20, v5, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s47, s1
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v109, v0, s[56:59], 0 offen
	buffer_store_b32 v108, v2, s[56:59], 0 offen
	v_add_lshl_u32 v0, v20, v4, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s47, s0
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v2, v1, v3, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s47, vcc_lo
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
	buffer_store_b32 v107, v19, s[56:59], 0 offen
	buffer_store_b32 v106, v21, s[56:59], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s4, s2, s15
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v105, v0, s[56:59], 0 offen
	buffer_store_b32 v104, v2, s[56:59], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v17, s4
	v_add_lshl_u32 v0, v1, v16, 2
	v_add_lshl_u32 v2, v1, v15, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s3
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v103, v3, s[56:59], 0 offen
	buffer_store_b32 v102, v17, s[56:59], 0 offen
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
	buffer_store_b32 v101, v0, s[56:59], 0 offen
	buffer_store_b32 v100, v2, s[56:59], 0 offen
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
	buffer_store_b32 v99, v3, s[56:59], 0 offen
	buffer_store_b32 v98, v13, s[56:59], 0 offen
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
	buffer_store_b32 v97, v0, s[56:59], 0 offen
	buffer_store_b32 v96, v2, s[56:59], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s2, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v0, v1, v8, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_add_lshl_u32 v2, v1, v7, 2
	s_clause 0x1
	buffer_store_b32 v95, v3, s[56:59], 0 offen
	buffer_store_b32 v94, v9, s[56:59], 0 offen
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
	buffer_store_b32 v90, v0, s[56:59], 0 offen
	buffer_store_b32 v89, v2, s[56:59], 0 offen
	buffer_store_b32 v93, v3, s[56:59], 0 offen
	buffer_store_b32 v92, v4, s[56:59], 0 offen
	buffer_store_b32 v88, v1, s[56:59], 0 offen
	.loc	1 856 5                         ; ragged.py:856:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 246
		.amdhsa_next_free_sgpr 78
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 246
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 78
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9176
; TotalNumSgprs: 80
; NumVgprs: 246
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 80
; NumVGPRsForWavesPerEU: 246
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     80
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     246
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
