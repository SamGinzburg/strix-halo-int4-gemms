	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 856 0                         ; ragged.py:856:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[28:29], s[0:1], 0x30
.Ltmp0:
	.loc	1 883 20 prologue_end           ; ragged.py:883:20
	s_abs_i32 s10, s2
	.loc	1 888 36                        ; ragged.py:888:36
	v_and_b32_e32 v36, 0xe0, v0
	v_lshlrev_b32_e32 v97, 1, v0
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
	s_add_i32 s6, s5, s7
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:880:21 ]
	s_ashr_i32 s5, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:881:21 ]
	s_ashr_i32 s4, s6, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 882 27 is_stmt 1              ; ragged.py:882:27
	s_mul_i32 s6, s4, s5
	.loc	1 883 20                        ; ragged.py:883:20
	s_abs_i32 s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s8, s7
	s_sub_i32 s9, 0, s7
	v_rcp_iflag_f32_e32 v1, s8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_cvt_u32_f32 s8, s8
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s8
	s_mul_hi_u32 s9, s8, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s8, s8, s9
	s_xor_b32 s9, s2, s6
	s_mul_hi_u32 s8, s10, s8
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s11, s8, s7
	s_sub_i32 s10, s10, s11
	s_add_i32 s11, s8, 1
	s_sub_i32 s12, s10, s7
	s_cmp_ge_u32 s10, s7
	s_cselect_b32 s8, s11, s8
	s_cselect_b32 s10, s12, s10
	s_add_i32 s11, s8, 1
	s_cmp_ge_u32 s10, s7
	s_cselect_b32 s7, s11, s8
	.loc	1 885 17                        ; ragged.py:885:17
	s_abs_i32 s10, s4
	.loc	1 883 20                        ; ragged.py:883:20
	s_xor_b32 s7, s7, s9
	.loc	1 885 17                        ; ragged.py:885:17
	s_cvt_f32_u32 s8, s10
	.loc	1 883 20                        ; ragged.py:883:20
	s_sub_i32 s16, s7, s9
	.loc	1 885 17                        ; ragged.py:885:17
	s_sub_i32 s7, 0, s10
	.loc	1 884 22                        ; ragged.py:884:22
	s_mul_i32 s6, s16, s6
	.loc	1 885 17                        ; ragged.py:885:17
	v_rcp_iflag_f32_e32 v1, s8
	.loc	1 884 16                        ; ragged.py:884:16
	s_sub_i32 s12, s2, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 885 17                        ; ragged.py:885:17
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_cvt_u32_f32 s8, s8
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s7, s7, s8
	s_mul_hi_u32 s6, s8, s7
	s_abs_i32 s7, s12
	s_add_i32 s6, s8, s6
	s_load_b64 s[8:9], s[0:1], 0x20
	s_mul_hi_u32 s11, s7, s6
	s_xor_b32 s6, s12, s4
	s_mul_i32 s13, s11, s10
	s_ashr_i32 s6, s6, 31
	s_sub_i32 s7, s7, s13
	s_add_i32 s13, s11, 1
	s_sub_i32 s14, s7, s10
	s_cmp_ge_u32 s7, s10
	s_cselect_b32 s11, s13, s11
	s_cselect_b32 s7, s14, s7
	s_add_i32 s13, s11, 1
	s_cmp_ge_u32 s7, s10
	s_cselect_b32 s7, s13, s11
	.loc	1 892 19                        ; ragged.py:892:19
	s_ashr_i32 s17, s16, 31
	.loc	1 885 17                        ; ragged.py:885:17
	s_xor_b32 s7, s7, s6
	.loc	1 892 19                        ; ragged.py:892:19
	s_lshl_b64 s[10:11], s[16:17], 2
	.loc	1 885 17                        ; ragged.py:885:17
	s_sub_i32 s13, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 886 24                        ; ragged.py:886:24
	s_mul_i32 s14, s13, s4
	.loc	1 886 17 is_stmt 0              ; ragged.py:886:17
	s_sub_i32 s12, s12, s14
	.loc	1 888 18 is_stmt 1              ; ragged.py:888:18
	s_lshl_b32 s14, s13, 6
	.loc	1 889 18                        ; ragged.py:889:18
	s_lshl_b32 s13, s12, 8
	.loc	1 892 19                        ; ragged.py:892:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s8, s8, s10
	s_addc_u32 s9, s9, s11
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v1, s13, v0
	.loc	1 892 19                        ; ragged.py:892:19
	s_load_b32 s9, s[8:9], 0x0
	.loc	1 901 22                        ; ragged.py:901:22
	s_lshl_b32 s30, s3, 5
	.loc	1 893 27                        ; ragged.py:893:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s8, s9, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 893 26 is_stmt 0              ; ragged.py:893:26
	s_lshr_b32 s10, s8, 31
	s_add_i32 s3, s8, s10
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e64 s8, s29, v1
	.loc	1 893 26                        ; ragged.py:893:26
	s_ashr_i32 s31, s3, 1
	s_mov_b32 s10, 0
	.loc	1 902 19                        ; ragged.py:902:19
	s_cmp_lt_i32 s30, s31
	.loc	1 907 35                        ; ragged.py:907:35
	s_mul_i32 s3, s16, s28
	.loc	1 902 19                        ; ragged.py:902:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1009 22                       ; ragged.py:1009:22
	s_lshl_b32 s11, s29, 5
	s_lshl_b32 s12, s29, 4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v34, s12 :: v_dual_lshlrev_b32 v35, 1, v0
	v_mov_b32_e32 v1, s11
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; ragged.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr35
                                        ; implicit-def: $vgpr34
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x10
	s_load_b64 s[20:21], s[0:1], 0x28
	v_dual_mov_b32 v3, 0 :: v_dual_and_b32 v96, 15, v0
	v_lshrrev_b32_e32 v95, 1, v36
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v99, 0
	v_mov_b32_e32 v98, 0
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_add_i32 s10, s14, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
                                        ; implicit-def: $vgpr142 : SGPR spill to VGPR lane
	.loc	1 888 36 is_stmt 1              ; ragged.py:888:36
	v_lshrrev_b32_e32 v1, 5, v36
	s_waitcnt lgkmcnt(0)
	v_writelane_b32 v142, s24, 0
	.loc	1 902 19                        ; ragged.py:902:19
	s_mul_i32 s5, s5, s16
	v_or_b32_e32 v10, 0xb00, v0
	v_or_b32_e32 v12, 0x1300, v0
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v2, s14, v1
	v_writelane_b32 v142, s25, 1
	.loc	1 902 19                        ; ragged.py:902:19
	v_add_nc_u32_e32 v65, s10, v1
	v_bfe_i32 v1, v0, 7, 1
	v_or_b32_e32 v11, 0xf00, v0
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v3, 8, v2
	v_writelane_b32 v142, s26, 2
	v_or_b32_e32 v4, 16, v2
	v_or_b32_e32 v5, 24, v2
	v_or_b32_e32 v6, 32, v2
	v_or_b32_e32 v7, 40, v2
	v_writelane_b32 v142, s27, 3
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x0
	s_load_b32 s0, s[0:1], 0x38
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e64 s1, s28, v2
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v8, 48, v2
	v_or_b32_e32 v9, 56, v2
	v_writelane_b32 v142, s13, 4
	v_and_b32_e32 v2, 0x7f, v0
	v_and_b32_e32 v1, 0x88, v1
	v_or_b32_e32 v13, 0x1700, v0
	v_or_b32_e32 v14, 0x1b00, v0
	.loc	1 888 36 is_stmt 0              ; ragged.py:888:36
	v_writelane_b32 v142, s20, 5
	v_or_b32_e32 v15, 0x1f00, v0
	v_xor_b32_e32 v2, v1, v2
	v_mov_b32_e32 v1, 0
	.loc	1 896 18 is_stmt 1              ; ragged.py:896:18
	v_and_b32_e32 v85, 31, v0
	.loc	1 888 36                        ; ragged.py:888:36
	v_writelane_b32 v142, s21, 6
	v_add_nc_u32_e32 v106, 0, v10
	v_add_nc_u32_e32 v98, 0, v2
	v_dual_mov_b32 v21, v1 :: v_dual_add_nc_u32 v108, 0, v12
	v_writelane_b32 v142, s22, 7
	v_dual_mov_b32 v22, v1 :: v_dual_add_nc_u32 v107, 0, v11
	v_dual_mov_b32 v24, v1 :: v_dual_add_nc_u32 v109, 0, v13
	v_writelane_b32 v142, s23, 8
	v_dual_mov_b32 v23, v1 :: v_dual_add_nc_u32 v110, 0, v14
	v_dual_mov_b32 v26, v1 :: v_dual_add_nc_u32 v111, 0, v15
	v_writelane_b32 v142, s14, 9
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v27, v1
	.loc	1 890 20                        ; ragged.py:890:20
	v_writelane_b32 v142, s1, 10
	v_cmp_gt_i32_e64 s1, s28, v3
	v_dual_mov_b32 v10, v1 :: v_dual_and_b32 v3, 24, v97
	v_dual_mov_b32 v28, v1 :: v_dual_add_nc_u32 v113, 0, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_writelane_b32 v142, s1, 11
	v_cmp_gt_i32_e64 s1, s28, v4
	v_xor_b32_e32 v4, 0x110, v2
	v_mov_b32_e32 v2, v1
	.loc	1 902 19                        ; ragged.py:902:19
	v_add_nc_u32_e32 v72, 56, v65
	v_lshl_or_b32 v3, v96, 5, v3
	.loc	1 890 20                        ; ragged.py:890:20
	v_writelane_b32 v142, s1, 12
	v_cmp_gt_i32_e64 s1, s28, v5
	v_dual_mov_b32 v14, v1 :: v_dual_add_nc_u32 v99, 0, v4
	v_dual_mov_b32 v4, v1 :: v_dual_add_nc_u32 v71, 48, v65
	v_mov_b32_e32 v12, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_writelane_b32 v142, s1, 13
	v_cmp_gt_i32_e64 s1, s28, v6
	.loc	1 902 19                        ; ragged.py:902:19
	v_add_nc_u32_e32 v70, 40, v65
	v_add_nc_u32_e32 v69, 32, v65
	v_add_nc_u32_e32 v68, 24, v65
	v_xor_b32_e32 v5, 8, v3
	.loc	1 890 20                        ; ragged.py:890:20
	v_writelane_b32 v142, s1, 14
	v_cmp_gt_i32_e64 s1, s28, v7
	v_xor_b32_e32 v7, 24, v3
	.loc	1 902 19                        ; ragged.py:902:19
	v_add_nc_u32_e32 v67, 16, v65
	v_xor_b32_e32 v6, 16, v3
	v_add_nc_u32_e32 v66, 8, v65
	.loc	1 890 20                        ; ragged.py:890:20
	v_writelane_b32 v142, s1, 15
	v_cmp_gt_i32_e64 s1, s28, v8
	v_or_b32_e32 v8, 0x300, v0
	v_dual_mov_b32 v18, v1 :: v_dual_add_nc_u32 v103, 0, v7
	v_mov_b32_e32 v7, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_writelane_b32 v142, s1, 16
	v_cmp_gt_i32_e64 s1, s28, v9
	v_or_b32_e32 v9, 0x700, v0
	v_dual_mov_b32 v17, v1 :: v_dual_add_nc_u32 v104, 0, v8
	v_mov_b32_e32 v8, v1
	.loc	1 917 33                        ; ragged.py:917:33
	v_writelane_b32 v142, s1, 17
	s_and_b32 s1, s9, 0x80000001
	v_dual_mov_b32 v20, v1 :: v_dual_add_nc_u32 v105, 0, v9
	s_cmp_eq_u32 s1, 1
	.loc	1 911 35                        ; ragged.py:911:35
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s1, s16, s0
	.loc	1 917 33                        ; ragged.py:917:33
	s_cselect_b32 s33, -1, 0
	.loc	1 902 19                        ; ragged.py:902:19
	s_sub_i32 s3, s6, s5
	s_add_i32 s1, s1, s30
	s_sub_i32 s3, s3, s7
	s_lshl_b32 s2, s2, 8
	s_mul_i32 s4, s4, s3
	s_add_i32 s3, s1, 31
	s_lshl_b32 s4, s4, 8
	s_mul_i32 s3, s29, s3
	s_add_i32 s5, s1, 30
	s_add_i32 s3, s4, s3
	v_writelane_b32 v142, s10, 18
	s_add_i32 s69, s3, s2
	s_mul_i32 s3, s29, s5
	s_add_i32 s5, s1, 29
	s_add_i32 s3, s4, s3
	s_mov_b32 s10, s16
	s_add_i32 s36, s3, s2
	s_mul_i32 s3, s29, s5
	s_add_i32 s5, s1, 28
	s_add_i32 s3, s4, s3
	s_mul_i32 s5, s29, s5
	s_add_i32 s37, s3, s2
	s_add_i32 s3, s4, s5
	s_add_i32 s5, s1, 27
	s_add_i32 s38, s3, s2
	s_mul_i32 s3, s29, s5
	s_add_i32 s5, s1, 26
	s_add_i32 s3, s4, s3
	s_mul_i32 s5, s29, s5
	s_add_i32 s39, s3, s2
	s_add_i32 s3, s4, s5
	s_add_i32 s5, s1, 25
	s_add_i32 s40, s3, s2
	s_mul_i32 s3, s29, s5
	s_add_i32 s5, s1, 24
	s_add_i32 s3, s4, s3
	s_mul_i32 s5, s29, s5
	s_add_i32 s41, s3, s2
	s_add_i32 s3, s4, s5
	s_add_i32 s5, s1, 23
	s_add_i32 s42, s3, s2
	s_mul_i32 s3, s29, s5
	s_add_i32 s5, s1, 22
	s_add_i32 s3, s4, s3
	s_mul_i32 s5, s29, s5
	s_add_i32 s43, s3, s2
	s_add_i32 s3, s4, s5
	s_add_i32 s5, s1, 21
	s_add_i32 s44, s3, s2
	s_mul_i32 s3, s29, s5
	s_add_i32 s5, s1, 20
	s_add_i32 s3, s4, s3
	s_mul_i32 s5, s29, s5
	s_add_i32 s45, s3, s2
	s_add_i32 s3, s4, s5
	s_add_i32 s5, s1, 19
	s_add_i32 s46, s3, s2
	s_mul_i32 s3, s29, s5
	s_add_i32 s5, s1, 18
	s_add_i32 s3, s4, s3
	s_mul_i32 s5, s29, s5
	s_add_i32 s47, s3, s2
	s_add_i32 s3, s4, s5
	s_add_i32 s5, s1, 17
	s_add_i32 s48, s3, s2
	s_mul_i32 s3, s29, s5
	s_add_i32 s5, s1, 16
	s_add_i32 s3, s4, s3
	s_mul_i32 s5, s29, s5
	s_add_i32 s49, s3, s2
	s_add_i32 s3, s4, s5
	s_add_i32 s5, s1, 15
	s_add_i32 s50, s3, s2
	s_mul_i32 s3, s29, s5
	s_add_i32 s5, s1, 14
	s_add_i32 s3, s4, s3
	s_mul_i32 s5, s29, s5
	s_add_i32 s51, s3, s2
	s_add_i32 s3, s4, s5
	s_add_i32 s5, s1, 13
	s_add_i32 s52, s3, s2
	s_mul_i32 s3, s29, s5
	s_add_i32 s5, s1, 12
	s_add_i32 s3, s4, s3
	s_mul_i32 s5, s29, s5
	s_add_i32 s53, s3, s2
	s_add_i32 s3, s4, s5
	s_add_i32 s5, s1, 11
	s_add_i32 s54, s3, s2
	s_mul_i32 s3, s29, s5
	s_add_i32 s5, s1, 10
	s_add_i32 s3, s4, s3
	s_mul_i32 s5, s29, s5
	s_add_i32 s55, s3, s2
	s_add_i32 s3, s4, s5
	s_add_i32 s5, s1, 9
	s_add_i32 s56, s3, s2
	s_mul_i32 s3, s29, s5
	s_add_i32 s5, s1, 8
	s_add_i32 s3, s4, s3
	s_mul_i32 s5, s29, s5
	s_add_i32 s57, s3, s2
	s_add_i32 s3, s4, s5
	s_add_i32 s5, s1, 7
	s_add_i32 s58, s3, s2
	s_mul_i32 s3, s29, s5
	s_add_i32 s5, s1, 6
	s_add_i32 s3, s4, s3
	s_mul_i32 s5, s29, s5
	s_add_i32 s59, s3, s2
	s_add_i32 s3, s4, s5
	s_add_i32 s5, s1, 5
	s_add_i32 s60, s3, s2
	s_mul_i32 s3, s29, s5
	s_add_i32 s5, s1, 4
	v_mov_b32_e32 v9, v1
	v_mad_u64_u32 v[86:87], null, s0, v72, v[85:86]
	v_writelane_b32 v142, s10, 19
	s_add_i32 s3, s4, s3
	s_mul_i32 s5, s29, s5
	s_add_i32 s61, s3, s2
	s_add_i32 s3, s4, s5
	s_add_i32 s5, s1, 3
	s_add_i32 s62, s3, s2
	s_mul_i32 s3, s29, s5
	s_add_i32 s5, s1, 2
	v_writelane_b32 v142, s11, 20
	s_add_i32 s3, s4, s3
	s_mul_i32 s5, s29, s5
	v_mad_u64_u32 v[87:88], null, s0, v71, v[85:86]
	v_mad_u64_u32 v[88:89], null, s0, v70, v[85:86]
	s_add_i32 s63, s3, s2
	s_add_i32 s3, s4, s5
	s_add_i32 s5, s1, 1
	v_mad_u64_u32 v[89:90], null, s0, v69, v[85:86]
	v_dual_mov_b32 v16, v1 :: v_dual_add_nc_u32 v101, 0, v5
	v_mov_b32_e32 v5, v1
	v_mad_u64_u32 v[90:91], null, s0, v68, v[85:86]
	s_lshl_b32 s34, s29, 5
	s_add_i32 s64, s3, s2
	s_mul_i32 s3, s29, s5
	v_writelane_b32 v142, s28, 21
	v_dual_mov_b32 v15, v1 :: v_dual_add_nc_u32 v102, 0, v6
	v_mov_b32_e32 v6, v1
	v_mad_u64_u32 v[91:92], null, s0, v67, v[85:86]
	v_dual_mov_b32 v13, v1 :: v_dual_add_nc_u32 v100, 0, v3
	v_mov_b32_e32 v3, v1
	v_mad_u64_u32 v[92:93], null, s0, v66, v[85:86]
	v_mad_u64_u32 v[93:94], null, v65, s0, v[85:86]
	s_mul_i32 s1, s29, s1
	v_writelane_b32 v142, s29, 22
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
	v_add3_u32 v94, 0, v95, v96
	.loc	1 916 30                        ; ragged.py:916:30
	v_subrev_nc_u32_e32 v112, s31, v85
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s27, s27, 0xffff
	.loc	1 902 19                        ; ragged.py:902:19
	s_add_i32 s3, s4, s3
	s_add_i32 s1, s4, s1
	s_add_i32 s65, s3, s2
	s_add_i32 s66, s1, s2
	s_sub_i32 s1, 0, s31
	s_mov_b32 s16, s24
	s_mov_b32 s17, s25
	s_mov_b32 s24, s26
	s_mov_b32 s25, s27
	s_mov_b32 s26, s18
	s_mov_b32 s27, s19
	v_writelane_b32 v142, s1, 23
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v72, s66, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 903 22                        ; ragged.py:903:22
	v_readlane_b32 s0, v142, 23
	s_add_i32 s1, s30, 2
	s_add_i32 s3, s30, 3
	s_add_i32 s4, s30, 4
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v72, 0x80000000, v72, s8
	.loc	1 903 22                        ; ragged.py:903:22
	s_add_i32 vcc_lo, s0, s30
	s_add_i32 s0, s30, 1
	s_add_i32 s5, s30, 5
	s_add_i32 s6, s30, 6
	.loc	1 919 34                        ; ragged.py:919:34
	buffer_load_u8 v72, v72, s[24:27], 0 offen
	.loc	1 903 22                        ; ragged.py:903:22
	s_add_i32 s7, s30, 7
	s_add_i32 s10, s30, 8
	s_add_i32 s12, s30, 9
	s_add_i32 s13, s30, 10
	s_add_i32 s14, s30, 11
	s_add_i32 s15, s30, 12
	s_add_i32 s22, s30, 13
	s_add_i32 s67, s30, 14
	s_add_i32 s68, s30, 15
	s_add_i32 s70, s30, 16
	s_add_i32 s71, s30, 17
	s_add_i32 s72, s30, 18
	s_add_i32 s73, s30, 19
	s_add_i32 s74, s30, 20
	s_add_i32 s75, s30, 21
	s_add_i32 s76, s30, 22
	s_add_i32 s77, s30, 23
	s_add_i32 s78, s30, 24
	s_add_i32 s79, s30, 25
	s_add_i32 s80, s30, 26
	s_add_i32 s88, s30, 27
	s_add_i32 s89, s30, 28
	s_add_i32 s91, s30, 29
	s_add_i32 s92, s30, 30
	s_add_i32 s93, s30, 31
	.loc	1 916 30                        ; ragged.py:916:30
	s_cmp_lt_i32 s0, s31
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v65, s65, v0
	.loc	1 916 30                        ; ragged.py:916:30
	s_cselect_b32 s2, -1, 0
	s_cmp_lt_i32 s1, s31
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v66, s64, v0
	.loc	1 916 30                        ; ragged.py:916:30
	s_cselect_b32 s35, -1, 0
	s_cmp_lt_i32 s3, s31
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v67, s63, v0
	.loc	1 916 30                        ; ragged.py:916:30
	s_cselect_b32 s21, -1, 0
	s_cmp_lt_i32 s4, s31
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v68, s62, v0
	.loc	1 916 30                        ; ragged.py:916:30
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s5, s31
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v69, s61, v0
	.loc	1 916 30                        ; ragged.py:916:30
	s_cselect_b32 s29, -1, 0
	s_cmp_lt_i32 s6, s31
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v70, s60, v0
	.loc	1 916 30                        ; ragged.py:916:30
	s_cselect_b32 s28, -1, 0
	s_cmp_lt_i32 s7, s31
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v71, s59, v0
	.loc	1 916 30                        ; ragged.py:916:30
	s_cselect_b32 s9, -1, 0
	s_cmp_lt_i32 s10, s31
	v_add_nc_u32_e32 v78, s30, v87
	s_cselect_b32 s11, -1, 0
	s_cmp_lt_i32 s12, s31
	.loc	1 918 34                        ; ragged.py:918:34
	v_add_nc_u32_e32 v79, s30, v86
	.loc	1 916 30                        ; ragged.py:916:30
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s13, s31
	v_add_nc_u32_e32 v80, s30, v112
	s_cselect_b32 s103, -1, 0
	s_cmp_lt_i32 s14, s31
	s_cselect_b32 s102, -1, 0
	s_cmp_lt_i32 s15, s31
	s_cselect_b32 s101, -1, 0
	s_cmp_lt_i32 s22, s31
	s_cselect_b32 s100, -1, 0
	s_cmp_lt_i32 s67, s31
	s_cselect_b32 s99, -1, 0
	s_cmp_lt_i32 s68, s31
	s_cselect_b32 s98, -1, 0
	s_cmp_lt_i32 s70, s31
	s_cselect_b32 s97, -1, 0
	s_cmp_lt_i32 s71, s31
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s72, s31
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s73, s31
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s74, s31
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s75, s31
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s76, s31
	s_cselect_b32 s83, -1, 0
	s_cmp_lt_i32 s77, s31
	s_cselect_b32 s82, -1, 0
	s_cmp_lt_i32 s78, s31
	s_cselect_b32 s81, -1, 0
	s_cmp_lt_i32 s79, s31
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s80, s31
	s_cselect_b32 s73, -1, 0
	s_cmp_lt_i32 s88, s31
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s89, s31
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s91, s31
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s92, s31
	s_cselect_b32 s0, -1, 0
	s_cmp_lt_i32 s93, s31
	v_writelane_b32 v142, s0, 24
	s_cselect_b32 s0, -1, 0
	.loc	1 917 56                        ; ragged.py:917:56
	s_cmp_eq_u32 vcc_lo, -1
	s_cselect_b32 s68, -1, 0
	s_cmp_eq_u32 vcc_lo, -2
	v_writelane_b32 v142, s0, 25
	s_cselect_b32 s67, -1, 0
	s_cmp_eq_u32 vcc_lo, -3
	s_cselect_b32 s7, -1, 0
	s_cmp_eq_u32 vcc_lo, -4
	s_cselect_b32 s6, -1, 0
	s_cmp_eq_u32 vcc_lo, -5
	s_cselect_b32 s5, -1, 0
	s_cmp_eq_u32 vcc_lo, -6
	s_cselect_b32 s4, -1, 0
	s_cmp_eq_u32 vcc_lo, -7
	s_cselect_b32 s3, -1, 0
	s_cmp_eq_u32 vcc_lo, -8
	s_cselect_b32 s1, -1, 0
	s_cmp_eq_u32 vcc_lo, -9
	s_cselect_b32 s0, -1, 0
	s_cmp_eq_u32 vcc_lo, -10
	s_cselect_b32 s10, -1, 0
	s_cmp_eq_u32 vcc_lo, -11
	s_cselect_b32 s15, -1, 0
	s_cmp_eq_u32 vcc_lo, -12
	s_cselect_b32 s14, -1, 0
	s_cmp_eq_u32 vcc_lo, -13
	s_cselect_b32 s13, -1, 0
	s_cmp_eq_u32 vcc_lo, -14
	s_cselect_b32 s12, -1, 0
	s_cmp_eq_u32 vcc_lo, -15
	s_cselect_b32 s22, -1, 0
	s_cmp_eq_u32 vcc_lo, -16
	s_cselect_b32 vcc_hi, -1, 0
	s_cmpk_eq_i32 vcc_lo, 0xffef
	s_cselect_b32 s104, -1, 0
	s_cmpk_eq_i32 vcc_lo, 0xffee
	s_cselect_b32 s96, -1, 0
	s_cmpk_eq_i32 vcc_lo, 0xffed
	s_cselect_b32 s95, -1, 0
	s_cmpk_eq_i32 vcc_lo, 0xffec
	s_cselect_b32 s94, -1, 0
	s_cmpk_eq_i32 vcc_lo, 0xffeb
	s_cselect_b32 s93, -1, 0
	s_cmpk_eq_i32 vcc_lo, 0xffea
	s_cselect_b32 s92, -1, 0
	s_cmpk_eq_i32 vcc_lo, 0xffe9
	s_cselect_b32 s91, -1, 0
	s_cmpk_eq_i32 vcc_lo, 0xffe8
	s_cselect_b32 s89, -1, 0
	s_cmpk_eq_i32 vcc_lo, 0xffe7
	s_cselect_b32 s88, -1, 0
	s_cmpk_eq_i32 vcc_lo, 0xffe6
	s_cselect_b32 s80, -1, 0
	s_cmpk_eq_i32 vcc_lo, 0xffe5
	s_cselect_b32 s79, -1, 0
	s_cmpk_eq_i32 vcc_lo, 0xffe4
	s_cselect_b32 s78, -1, 0
	s_cmpk_eq_i32 vcc_lo, 0xffe3
	s_cselect_b32 s77, -1, 0
	s_cmpk_eq_i32 vcc_lo, 0xffe2
	s_cselect_b32 s76, -1, 0
	s_cmpk_eq_i32 vcc_lo, 0xffe1
	s_cselect_b32 s75, -1, 0
	s_cmpk_eq_i32 vcc_lo, 0xffe0
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s2, s8, s2
	.loc	1 917 32                        ; ragged.py:917:32
	s_and_b32 s1, s33, s1
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v65, 0x80000000, v65, s2
	.loc	1 919 66 is_stmt 0              ; ragged.py:919:66
	s_and_b32 s2, s8, s35
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s33, s0
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v66, 0x80000000, v66, s2
	.loc	1 919 66 is_stmt 0              ; ragged.py:919:66
	s_and_b32 s2, s8, s21
	.loc	1 902 19 is_stmt 1              ; ragged.py:902:19
	s_add_i32 s59, s59, s34
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v67, 0x80000000, v67, s2
	.loc	1 919 66 is_stmt 0              ; ragged.py:919:66
	s_and_b32 s2, s8, s20
	.loc	1 902 19 is_stmt 1              ; ragged.py:902:19
	s_add_i32 s60, s60, s34
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v68, 0x80000000, v68, s2
	.loc	1 919 66 is_stmt 0              ; ragged.py:919:66
	s_and_b32 s2, s8, s29
	.loc	1 902 19 is_stmt 1              ; ragged.py:902:19
	s_add_i32 s61, s61, s34
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v69, 0x80000000, v69, s2
	.loc	1 919 66 is_stmt 0              ; ragged.py:919:66
	s_and_b32 s2, s8, s28
	.loc	1 902 19 is_stmt 1              ; ragged.py:902:19
	s_add_i32 s62, s62, s34
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v70, 0x80000000, v70, s2
	.loc	1 919 66 is_stmt 0              ; ragged.py:919:66
	s_and_b32 s2, s8, s9
	.loc	1 918 66 is_stmt 1              ; ragged.py:918:66
	v_readlane_b32 s9, v142, 10
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v71, 0x80000000, v71, s2
	s_clause 0x6
	buffer_load_u8 v73, v65, s[24:27], 0 offen
	buffer_load_u8 v74, v66, s[24:27], 0 offen
	buffer_load_u8 v75, v67, s[24:27], 0 offen
	buffer_load_u8 v76, v68, s[24:27], 0 offen
	buffer_load_u8 v77, v69, s[24:27], 0 offen
	buffer_load_u8 v70, v70, s[24:27], 0 offen
	buffer_load_u8 v71, v71, s[24:27], 0 offen
	.loc	1 917 32                        ; ragged.py:917:32
	s_and_b32 s2, s33, s68
	v_add_nc_u32_e32 v66, s30, v93
	v_add_nc_u32_e32 v67, s30, v91
	v_add_nc_u32_e32 v68, s30, v90
	v_add_nc_u32_e32 v69, s30, v89
	.loc	1 902 19                        ; ragged.py:902:19
	s_add_i32 s63, s63, s34
	s_add_i32 s64, s64, s34
	s_add_i32 s65, s65, s34
	s_add_i32 s66, s66, s34
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(7)
	v_and_b16 v65.l, v72.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 921 34 is_stmt 0              ; ragged.py:921:34
	v_cndmask_b16 v126.l, v72.l, v65.l, s2
	.loc	1 916 30 is_stmt 1              ; ragged.py:916:30
	v_add_nc_u32_e32 v65, s30, v85
	v_add_nc_u32_e32 v72, s30, v88
	v_cmp_gt_i32_e64 s2, s31, v65
	.loc	1 918 66                        ; ragged.py:918:66
	s_and_b32 s9, s9, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 918 34 is_stmt 0              ; ragged.py:918:34
	v_cndmask_b32_e64 v65, 0x80000000, v66, s9
	.loc	1 918 66                        ; ragged.py:918:66
	v_readlane_b32 s9, v142, 11
	v_add_nc_u32_e32 v66, s30, v92
	.loc	1 932 17 is_stmt 1              ; ragged.py:932:17
	s_add_i32 s30, s30, 32
	.loc	1 918 66                        ; ragged.py:918:66
	s_and_b32 s9, s9, s2
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 918 34 is_stmt 0              ; ragged.py:918:34
	v_cndmask_b32_e64 v66, 0x80000000, v66, s9
	.loc	1 918 66                        ; ragged.py:918:66
	v_readlane_b32 s9, v142, 12
	s_and_b32 s9, s9, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 918 34                        ; ragged.py:918:34
	v_cndmask_b32_e64 v67, 0x80000000, v67, s9
	.loc	1 918 66                        ; ragged.py:918:66
	v_readlane_b32 s9, v142, 13
	s_and_b32 s9, s9, s2
	.loc	1 918 34                        ; ragged.py:918:34
	v_cndmask_b32_e64 v68, 0x80000000, v68, s9
	.loc	1 918 66                        ; ragged.py:918:66
	v_readlane_b32 s9, v142, 14
	s_and_b32 s9, s9, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 918 34                        ; ragged.py:918:34
	v_cndmask_b32_e64 v69, 0x80000000, v69, s9
	.loc	1 918 66                        ; ragged.py:918:66
	v_readlane_b32 s9, v142, 15
	s_and_b32 s9, s9, s2
	.loc	1 918 34                        ; ragged.py:918:34
	v_cndmask_b32_e64 v72, 0x80000000, v72, s9
	.loc	1 918 66                        ; ragged.py:918:66
	v_readlane_b32 s9, v142, 16
	s_and_b32 s9, s9, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 918 34                        ; ragged.py:918:34
	v_cndmask_b32_e64 v78, 0x80000000, v78, s9
	.loc	1 918 66                        ; ragged.py:918:66
	v_readlane_b32 s9, v142, 17
	s_and_b32 s2, s9, s2
	.loc	1 918 34                        ; ragged.py:918:34
	v_cndmask_b32_e64 v79, 0x80000000, v79, s2
	.loc	1 917 56 is_stmt 1              ; ragged.py:917:56
	v_cmp_eq_u32_e64 s2, -1, v80
	.loc	1 918 34                        ; ragged.py:918:34
	s_clause 0x7
	buffer_load_u8 v80, v65, s[16:19], 0 offen
	buffer_load_u8 v66, v66, s[16:19], 0 offen
	buffer_load_u8 v67, v67, s[16:19], 0 offen
	buffer_load_u8 v68, v68, s[16:19], 0 offen
	buffer_load_u8 v69, v69, s[16:19], 0 offen
	buffer_load_u8 v72, v72, s[16:19], 0 offen
	buffer_load_u8 v78, v78, s[16:19], 0 offen
	buffer_load_u8 v79, v79, s[16:19], 0 offen
	.loc	1 917 32                        ; ragged.py:917:32
	s_and_b32 s2, s33, s2
	.loc	1 920 62                        ; ragged.py:920:62
	s_waitcnt vmcnt(7)
	v_and_b16 v65.l, v80.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v65.h, v66.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v66.h, v68.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v67.h, v72.l, 15
	.loc	1 920 34 is_stmt 0              ; ragged.py:920:34
	v_cndmask_b16 v65.h, v66.l, v65.h, s2
	.loc	1 920 62                        ; ragged.py:920:62
	v_and_b16 v66.l, v67.l, 15
	.loc	1 920 34                        ; ragged.py:920:34
	v_cndmask_b16 v66.h, v68.l, v66.h, s2
	.loc	1 920 62                        ; ragged.py:920:62
	s_waitcnt vmcnt(1)
	v_and_b16 v68.l, v78.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v68.h, v79.l, 15
	.loc	1 920 34                        ; ragged.py:920:34
	v_cndmask_b16 v65.l, v80.l, v65.l, s2
	v_cndmask_b16 v66.l, v67.l, v66.l, s2
	.loc	1 920 62                        ; ragged.py:920:62
	v_and_b16 v67.l, v69.l, 15
	.loc	1 920 34                        ; ragged.py:920:34
	v_cndmask_b16 v67.h, v72.l, v67.h, s2
	v_cndmask_b16 v68.l, v78.l, v68.l, s2
	v_cndmask_b16 v68.h, v79.l, v68.h, s2
	.loc	1 919 42 is_stmt 1              ; ragged.py:919:42
	v_add_nc_u32_e32 v72, s55, v0
	.loc	1 920 34                        ; ragged.py:920:34
	v_cndmask_b16 v67.l, v69.l, v67.l, s2
	.loc	1 921 62                        ; ragged.py:921:62
	v_and_b16 v69.l, v73.l, 15
	.loc	1 917 32                        ; ragged.py:917:32
	s_and_b32 s2, s33, s67
	.loc	1 902 19                        ; ragged.py:902:19
	s_add_i32 s55, s55, s34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v126.h, v73.l, v69.l, s2
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	v_and_b16 v69.l, v74.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s2, s33, s7
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v73, s54, v0
	.loc	1 902 19                        ; ragged.py:902:19
	s_add_i32 s54, s54, s34
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v127.l, v74.l, v69.l, s2
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	v_and_b16 v69.l, v75.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s2, s33, s6
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v74, s53, v0
	.loc	1 902 19                        ; ragged.py:902:19
	s_add_i32 s53, s53, s34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v127.h, v75.l, v69.l, s2
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	v_and_b16 v69.l, v76.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s2, s33, s5
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v75, s52, v0
	.loc	1 902 19                        ; ragged.py:902:19
	s_add_i32 s52, s52, s34
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v128.l, v76.l, v69.l, s2
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	v_and_b16 v69.l, v77.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s2, s33, s4
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v76, s51, v0
	.loc	1 902 19                        ; ragged.py:902:19
	s_add_i32 s51, s51, s34
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v128.h, v77.l, v69.l, s2
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	v_and_b16 v69.l, v70.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s2, s33, s3
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v129.l, v70.l, v69.l, s2
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	v_and_b16 v69.l, v71.l, 15
	.loc	1 919 42 is_stmt 1              ; ragged.py:919:42
	v_add_nc_u32_e32 v70, s57, v0
	.loc	1 919 66 is_stmt 0              ; ragged.py:919:66
	s_and_b32 s2, s8, s11
	.loc	1 902 19 is_stmt 1              ; ragged.py:902:19
	s_add_i32 s57, s57, s34
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v129.h, v71.l, v69.l, s1
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v69, s58, v0
	v_add_nc_u32_e32 v71, s56, v0
	.loc	1 919 66 is_stmt 0              ; ragged.py:919:66
	v_readlane_b32 s1, v142, 24
	.loc	1 902 19 is_stmt 1              ; ragged.py:902:19
	s_add_i32 s56, s56, s34
	s_add_i32 s58, s58, s34
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v69, 0x80000000, v69, s2
	.loc	1 919 66 is_stmt 0              ; ragged.py:919:66
	s_and_b32 s2, s8, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v70, 0x80000000, v70, s2
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s2, s8, s103
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v71, 0x80000000, v71, s2
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s2, s8, s102
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v72, 0x80000000, v72, s2
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s2, s8, s101
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v73, 0x80000000, v73, s2
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s2, s8, s100
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v74, 0x80000000, v74, s2
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s2, s8, s99
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v75, 0x80000000, v75, s2
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s2, s8, s98
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v76, 0x80000000, v76, s2
	s_clause 0x7
	buffer_load_u8 v77, v69, s[24:27], 0 offen
	buffer_load_u8 v70, v70, s[24:27], 0 offen
	buffer_load_u8 v71, v71, s[24:27], 0 offen
	buffer_load_u8 v72, v72, s[24:27], 0 offen
	buffer_load_u8 v73, v73, s[24:27], 0 offen
	buffer_load_u8 v74, v74, s[24:27], 0 offen
	buffer_load_u8 v75, v75, s[24:27], 0 offen
	buffer_load_u8 v76, v76, s[24:27], 0 offen
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s2, s8, s97
	.loc	1 921 62 is_stmt 1              ; ragged.py:921:62
	s_waitcnt vmcnt(7)
	v_and_b16 v69.l, v77.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 921 34 is_stmt 0              ; ragged.py:921:34
	v_cndmask_b16 v130.l, v77.l, v69.l, s0
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(6)
	v_and_b16 v69.l, v70.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s33, s10
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v130.h, v70.l, v69.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(5)
	v_and_b16 v69.l, v71.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s33, s15
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v70, s49, v0
	.loc	1 902 19                        ; ragged.py:902:19
	s_add_i32 s49, s49, s34
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v131.l, v71.l, v69.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(4)
	v_and_b16 v69.l, v72.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s33, s14
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v71, s48, v0
	.loc	1 902 19                        ; ragged.py:902:19
	s_add_i32 s48, s48, s34
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v131.h, v72.l, v69.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(3)
	v_and_b16 v69.l, v73.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s33, s13
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v72, s47, v0
	.loc	1 902 19                        ; ragged.py:902:19
	s_add_i32 s47, s47, s34
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v132.l, v73.l, v69.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(2)
	v_and_b16 v69.l, v74.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s33, s12
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v73, s46, v0
	.loc	1 902 19                        ; ragged.py:902:19
	s_add_i32 s46, s46, s34
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v132.h, v74.l, v69.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(1)
	v_and_b16 v69.l, v75.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s33, s22
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v74, s45, v0
	.loc	1 902 19                        ; ragged.py:902:19
	s_add_i32 s45, s45, s34
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v133.l, v75.l, v69.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(0)
	v_and_b16 v69.l, v76.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s33, vcc_hi
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v75, s44, v0
	.loc	1 902 19                        ; ragged.py:902:19
	s_add_i32 s44, s44, s34
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v133.h, v76.l, v69.l, s0
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v69, s50, v0
	v_add_nc_u32_e32 v76, s43, v0
	.loc	1 917 32                        ; ragged.py:917:32
	s_and_b32 s0, s33, s104
	.loc	1 902 19                        ; ragged.py:902:19
	s_add_i32 s43, s43, s34
	s_add_i32 s50, s50, s34
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v69, 0x80000000, v69, s2
	.loc	1 919 66 is_stmt 0              ; ragged.py:919:66
	s_and_b32 s2, s8, s90
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v70, 0x80000000, v70, s2
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s2, s8, s87
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v71, 0x80000000, v71, s2
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s2, s8, s86
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v72, 0x80000000, v72, s2
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s2, s8, s85
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v73, 0x80000000, v73, s2
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s2, s8, s84
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v74, 0x80000000, v74, s2
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s2, s8, s83
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v75, 0x80000000, v75, s2
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s2, s8, s82
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v76, 0x80000000, v76, s2
	s_clause 0x7
	buffer_load_u8 v77, v69, s[24:27], 0 offen
	buffer_load_u8 v70, v70, s[24:27], 0 offen
	buffer_load_u8 v71, v71, s[24:27], 0 offen
	buffer_load_u8 v72, v72, s[24:27], 0 offen
	buffer_load_u8 v73, v73, s[24:27], 0 offen
	buffer_load_u8 v74, v74, s[24:27], 0 offen
	buffer_load_u8 v75, v75, s[24:27], 0 offen
	buffer_load_u8 v76, v76, s[24:27], 0 offen
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s2, s8, s81
	.loc	1 921 62 is_stmt 1              ; ragged.py:921:62
	s_waitcnt vmcnt(7)
	v_and_b16 v69.l, v77.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 921 34 is_stmt 0              ; ragged.py:921:34
	v_cndmask_b16 v134.l, v77.l, v69.l, s0
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(6)
	v_and_b16 v69.l, v70.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s33, s96
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v134.h, v70.l, v69.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(5)
	v_and_b16 v69.l, v71.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s33, s95
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v70, s41, v0
	.loc	1 902 19                        ; ragged.py:902:19
	s_add_i32 s41, s41, s34
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v135.l, v71.l, v69.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(4)
	v_and_b16 v69.l, v72.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s33, s94
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v71, s40, v0
	.loc	1 902 19                        ; ragged.py:902:19
	s_add_i32 s40, s40, s34
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v135.h, v72.l, v69.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(3)
	v_and_b16 v69.l, v73.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s33, s93
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v72, s39, v0
	.loc	1 902 19                        ; ragged.py:902:19
	s_add_i32 s39, s39, s34
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v136.l, v73.l, v69.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(2)
	v_and_b16 v69.l, v74.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s33, s92
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v73, s38, v0
	.loc	1 902 19                        ; ragged.py:902:19
	s_add_i32 s38, s38, s34
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v136.h, v74.l, v69.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(1)
	v_and_b16 v69.l, v75.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s33, s91
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v74, s37, v0
	.loc	1 902 19                        ; ragged.py:902:19
	s_add_i32 s37, s37, s34
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v137.l, v75.l, v69.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(0)
	v_and_b16 v69.l, v76.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s33, s89
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v75, s36, v0
	.loc	1 902 19                        ; ragged.py:902:19
	s_add_i32 s36, s36, s34
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v137.h, v76.l, v69.l, s0
	.loc	1 919 42                        ; ragged.py:919:42
	v_add_nc_u32_e32 v69, s42, v0
	.loc	1 919 34 is_stmt 0              ; ragged.py:919:34
	v_add_nc_u32_e32 v76, s69, v0
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s33, s88
	.loc	1 902 19                        ; ragged.py:902:19
	s_add_i32 s69, s69, s34
	s_add_i32 s42, s42, s34
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v69, 0x80000000, v69, s2
	.loc	1 919 66 is_stmt 0              ; ragged.py:919:66
	s_and_b32 s2, s8, s74
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v70, 0x80000000, v70, s2
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s2, s8, s73
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v71, 0x80000000, v71, s2
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s2, s8, s72
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v72, 0x80000000, v72, s2
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s2, s8, s71
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v73, 0x80000000, v73, s2
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s2, s8, s70
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v74, 0x80000000, v74, s2
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s2, s8, s1
	v_readlane_b32 s1, v142, 25
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v75, 0x80000000, v75, s2
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s2, s8, s1
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v76, 0x80000000, v76, s2
	s_clause 0x7
	buffer_load_u8 v77, v69, s[24:27], 0 offen
	buffer_load_u8 v70, v70, s[24:27], 0 offen
	buffer_load_u8 v71, v71, s[24:27], 0 offen
	buffer_load_u8 v72, v72, s[24:27], 0 offen
	buffer_load_u8 v73, v73, s[24:27], 0 offen
	buffer_load_u8 v74, v74, s[24:27], 0 offen
	buffer_load_u8 v75, v75, s[24:27], 0 offen
	buffer_load_u8 v76, v76, s[24:27], 0 offen
	.loc	1 920 34 is_stmt 1              ; ragged.py:920:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v98, v65
	ds_store_b8 v98, v66 offset:512
	ds_store_b8 v98, v67 offset:1024
	ds_store_b8 v98, v68 offset:1536
	ds_store_b8_d16_hi v99, v65
	ds_store_b8_d16_hi v99, v66 offset:512
	ds_store_b8_d16_hi v99, v67 offset:1024
	ds_store_b8_d16_hi v99, v68 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(7)
	v_and_b16 v69.l, v77.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 921 34 is_stmt 0              ; ragged.py:921:34
	v_cndmask_b16 v138.l, v77.l, v69.l, s0
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(6)
	v_and_b16 v69.l, v70.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s33, s80
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v138.h, v70.l, v69.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(5)
	v_and_b16 v69.l, v71.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s33, s79
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v139.l, v71.l, v69.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(4)
	v_and_b16 v69.l, v72.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s33, s78
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v139.h, v72.l, v69.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(3)
	v_and_b16 v69.l, v73.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s33, s77
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v140.l, v73.l, v69.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(2)
	v_and_b16 v69.l, v74.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s33, s76
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v140.h, v74.l, v69.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(1)
	v_and_b16 v69.l, v75.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s33, s75
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v141.l, v75.l, v69.l, s0
	.loc	1 921 62 is_stmt 0              ; ragged.py:921:62
	s_waitcnt vmcnt(0)
	v_and_b16 v69.l, v76.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s0, s33, vcc_lo
	.loc	1 902 19                        ; ragged.py:902:19
	s_cmp_lt_i32 s30, s31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v141.h, v76.l, v69.l, s0
	.loc	1 920 34                        ; ragged.py:920:34
	ds_load_2addr_stride64_b64 v[114:117], v100 offset1:1
	ds_load_2addr_stride64_b64 v[118:121], v100 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[122:125], v101 offset1:1
	ds_load_2addr_stride64_b64 v[81:84], v101 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[77:80], v102 offset1:1
	ds_load_2addr_stride64_b64 v[73:76], v102 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[69:72], v103 offset1:1
	ds_load_2addr_stride64_b64 v[65:68], v103 offset0:2 offset1:3
	.loc	1 921 34                        ; ragged.py:921:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v113, v126
	ds_store_b8_d16_hi v113, v126 offset:256
	ds_store_b8 v113, v127 offset:512
	ds_store_b8 v113, v128 offset:1024
	ds_store_b8_d16_hi v113, v128 offset:1280
	ds_store_b8 v113, v129 offset:1536
	ds_store_b8 v113, v130 offset:2048
	ds_store_b8_d16_hi v113, v130 offset:2304
	ds_store_b8 v113, v131 offset:2560
	ds_store_b8 v113, v132 offset:3072
	ds_store_b8_d16_hi v113, v132 offset:3328
	ds_store_b8 v113, v133 offset:3584
	ds_store_b8 v113, v134 offset:4096
	ds_store_b8_d16_hi v113, v134 offset:4352
	ds_store_b8 v113, v135 offset:4608
	ds_store_b8 v113, v136 offset:5120
	ds_store_b8_d16_hi v113, v136 offset:5376
	ds_store_b8 v113, v137 offset:5632
	ds_store_b8 v113, v138 offset:6144
	ds_store_b8_d16_hi v113, v138 offset:6400
	ds_store_b8 v113, v139 offset:6656
	ds_store_b8 v113, v140 offset:7168
	ds_store_b8_d16_hi v113, v140 offset:7424
	ds_store_b8 v113, v141 offset:7680
	ds_store_b8_d16_hi v104, v127
	ds_store_b8_d16_hi v105, v129
	ds_store_b8_d16_hi v106, v131
	ds_store_b8_d16_hi v107, v133
	ds_store_b8_d16_hi v108, v135
	ds_store_b8_d16_hi v109, v137
	ds_store_b8_d16_hi v110, v139
	ds_store_b8_d16_hi v111, v141
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 922 27                        ; ragged.py:922:27
	ds_load_u8 v126, v94 offset:1280
	ds_load_u8 v127, v94 offset:1024
	ds_load_u8 v128, v94 offset:1920
	ds_load_u8 v129, v94 offset:1664
	ds_load_u8 v130, v94 offset:1408
	ds_load_u8 v131, v94 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	ds_load_u8 v127, v94 offset:1792
	ds_load_u8 v132, v94 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v128, v129, v128, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v129, v128, 16, v130
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v132, v127, 0xc0c0004
	ds_load_u8 v132, v94 offset:256
	ds_load_u8 v133, v94
	ds_load_u8 v134, v94 offset:896
	ds_load_u8 v135, v94 offset:640
	ds_load_u8 v136, v94 offset:384
	ds_load_u8 v137, v94 offset:128
	v_lshl_or_b32 v127, v127, 16, v126
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	ds_load_u8 v133, v94 offset:768
	ds_load_u8 v138, v94 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v131, v137, v136, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v138, v133, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v126, v133, 16, v132
	v_perm_b32 v132, v135, v134, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[126:127], v[114:115], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v128, v132, 16, v131
	v_wmma_i32_16x16x16_iu4 v[17:24], v[126:127], v[116:117], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[126:127], v[118:119], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[126:127], v[120:121], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[128:129], v[114:115], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[128:129], v[116:117], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[128:129], v[118:119], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v114, v94 offset:3328
	ds_load_u8 v115, v94 offset:3072
	ds_load_u8 v116, v94 offset:3968
	ds_load_u8 v117, v94 offset:3712
	ds_load_u8 v118, v94 offset:3456
	ds_load_u8 v119, v94 offset:3200
	v_wmma_i32_16x16x16_iu4 v[57:64], v[128:129], v[120:121], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v94 offset:3840
	ds_load_u8 v120, v94 offset:3584
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v117, v116, 16, v118
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v120, v115, 0xc0c0004
	ds_load_u8 v120, v94 offset:2304
	ds_load_u8 v121, v94 offset:2048
	ds_load_u8 v126, v94 offset:2944
	ds_load_u8 v127, v94 offset:2688
	ds_load_u8 v128, v94 offset:2432
	ds_load_u8 v129, v94 offset:2176
	v_lshl_or_b32 v115, v115, 16, v114
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	ds_load_u8 v121, v94 offset:2816
	ds_load_u8 v130, v94 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v119, v129, v128, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v130, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v114, v121, 16, v120
	v_perm_b32 v120, v127, v126, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[114:115], v[122:123], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v116, v120, 16, v119
	v_wmma_i32_16x16x16_iu4 v[17:24], v[114:115], v[124:125], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[114:115], v[81:82], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[114:115], v[83:84], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[116:117], v[81:82], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[116:117], v[83:84], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v81, v94 offset:5376
	ds_load_u8 v82, v94 offset:5120
	ds_load_u8 v83, v94 offset:6016
	ds_load_u8 v84, v94 offset:5760
	ds_load_u8 v114, v94 offset:5504
	ds_load_u8 v115, v94 offset:5248
	v_wmma_i32_16x16x16_iu4 v[9:16], v[116:117], v[122:123], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[116:117], v[124:125], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v94 offset:5888
	ds_load_u8 v116, v94 offset:5632
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v83, 16, v114
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v116, v82, 0xc0c0004
	ds_load_u8 v116, v94 offset:4352
	ds_load_u8 v117, v94 offset:4096
	ds_load_u8 v118, v94 offset:4992
	ds_load_u8 v119, v94 offset:4736
	ds_load_u8 v120, v94 offset:4480
	ds_load_u8 v121, v94 offset:4224
	v_lshl_or_b32 v82, v82, 16, v81
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	ds_load_u8 v117, v94 offset:4864
	ds_load_u8 v122, v94 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v115, v121, v120, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v122, v117, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v81, v117, 16, v116
	v_perm_b32 v116, v119, v118, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[81:82], v[77:78], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v83, v116, 16, v115
	v_wmma_i32_16x16x16_iu4 v[33:40], v[81:82], v[73:74], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[81:82], v[75:76], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[81:82], v[79:80], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[83:84], v[77:78], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[83:84], v[73:74], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[83:84], v[75:76], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v73, v94 offset:7424
	ds_load_u8 v74, v94 offset:7168
	ds_load_u8 v75, v94 offset:8064
	ds_load_u8 v76, v94 offset:7808
	ds_load_u8 v77, v94 offset:7552
	ds_load_u8 v78, v94 offset:7296
	v_wmma_i32_16x16x16_iu4 v[25:32], v[83:84], v[79:80], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v94 offset:7936
	ds_load_u8 v79, v94 offset:7680
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v75, 16, v77
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v79, v74, 0xc0c0004
	ds_load_u8 v79, v94 offset:6400
	ds_load_u8 v80, v94 offset:6144
	ds_load_u8 v81, v94 offset:7040
	ds_load_u8 v82, v94 offset:6784
	ds_load_u8 v83, v94 offset:6528
	ds_load_u8 v84, v94 offset:6272
	v_lshl_or_b32 v74, v74, 16, v73
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v94 offset:6912
	ds_load_u8 v114, v94 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v78, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v114, v80, 0xc0c0004
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
	.loc	1 902 19                        ; ragged.py:902:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_readlane_b32 s28, v142, 21
	v_readlane_b32 s29, v142, 22
	v_readlane_b32 s20, v142, 5
	v_readlane_b32 s24, v142, 0
	.loc	1 933 19 is_stmt 1              ; ragged.py:933:19
	v_cvt_f32_i32_e32 v99, v1
	v_cvt_f32_i32_e32 v98, v2
	s_lshl_b32 s0, s29, 4
	v_cvt_f32_i32_e32 v94, v3
	v_cvt_f32_i32_e32 v93, v4
	v_cvt_f32_i32_e32 v92, v5
	v_cvt_f32_i32_e32 v91, v6
	v_cvt_f32_i32_e32 v90, v7
	v_cvt_f32_i32_e32 v89, v8
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
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v32, v34
	v_cvt_f32_i32_e32 v31, v35
	v_cvt_f32_i32_e32 v30, v36
	v_cvt_f32_i32_e32 v29, v37
	v_cvt_f32_i32_e32 v28, v38
	v_cvt_f32_i32_e32 v27, v39
	v_cvt_f32_i32_e32 v26, v40
	v_cvt_f32_i32_e32 v25, v41
	v_cvt_f32_i32_e32 v24, v42
	v_cvt_f32_i32_e32 v23, v43
	v_cvt_f32_i32_e32 v22, v44
	v_cvt_f32_i32_e32 v21, v45
	v_cvt_f32_i32_e32 v20, v46
	v_cvt_f32_i32_e32 v19, v47
	v_cvt_f32_i32_e32 v18, v48
	v_cvt_f32_i32_e32 v17, v49
	v_cvt_f32_i32_e32 v16, v50
	v_cvt_f32_i32_e32 v15, v51
	v_cvt_f32_i32_e32 v14, v52
	v_cvt_f32_i32_e32 v13, v53
	v_cvt_f32_i32_e32 v12, v54
	v_cvt_f32_i32_e32 v11, v55
	v_cvt_f32_i32_e32 v10, v56
	v_cvt_f32_i32_e32 v9, v57
	v_cvt_f32_i32_e32 v8, v58
	v_cvt_f32_i32_e32 v7, v59
	v_cvt_f32_i32_e32 v6, v60
	v_cvt_f32_i32_e32 v5, v61
	v_cvt_f32_i32_e32 v4, v62
	v_cvt_f32_i32_e32 v3, v63
	v_cvt_f32_i32_e32 v2, v64
	v_dual_mov_b32 v1, s34 :: v_dual_mov_b32 v34, s0
	v_mov_b32_e32 v35, v97
	v_readlane_b32 s21, v142, 6
	v_readlane_b32 s13, v142, 4
	v_readlane_b32 s16, v142, 19
	v_readlane_b32 s10, v142, 18
	v_readlane_b32 s25, v142, 1
	v_readlane_b32 s26, v142, 2
	v_readlane_b32 s27, v142, 3
	v_readlane_b32 s14, v142, 9
	v_readlane_b32 s22, v142, 7
	v_readlane_b32 s23, v142, 8
	v_readlane_b32 s17, v142, 20
.LBB0_7:                                ; %._crit_edge
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 888 18 is_stmt 1              ; ragged.py:888:18
	v_or_b32_e32 v36, s14, v96
	.loc	1 936 21                        ; ragged.py:936:21
	v_add_lshl_u32 v37, s10, v96, 1
	.loc	1 935 36                        ; ragged.py:935:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s25, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v40, 16, v36
	v_or_b32_e32 v39, 32, v36
	v_or_b32_e32 v38, 48, v36
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e64 s3, s28, v36
	.loc	1 935 36                        ; ragged.py:935:36
	v_add_nc_u32_e32 v41, 32, v37
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e64 s1, s28, v40
	.loc	1 935 36                        ; ragged.py:935:36
	v_add_nc_u32_e32 v42, 64, v37
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e64 s0, s28, v39
	.loc	1 935 36                        ; ragged.py:935:36
	v_cndmask_b32_e64 v36, 0x80000000, v37, s3
	v_add_nc_u32_e32 v37, 0x60, v37
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e32 vcc_lo, s28, v38
	.loc	1 935 36                        ; ragged.py:935:36
	v_cndmask_b32_e64 v40, 0x80000000, v41, s1
	v_cndmask_b32_e64 v39, 0x80000000, v42, s0
	s_mov_b32 s4, s24
	.loc	1 943 33                        ; ragged.py:943:33
	s_mul_i32 s2, s16, s29
	.loc	1 935 36                        ; ragged.py:935:36
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	s_clause 0x3
	buffer_load_u16 v44, v36, s[4:7], 0 offen
	buffer_load_u16 v45, v40, s[4:7], 0 offen
	buffer_load_u16 v46, v39, s[4:7], 0 offen
	buffer_load_u16 v47, v37, s[4:7], 0 offen
	.loc	1 943 21                        ; ragged.py:943:21
	s_add_i32 s2, s13, s2
	.loc	1 942 36                        ; ragged.py:942:36
	s_and_b32 s5, s27, 0xffff
	v_add_lshl_u32 v36, s2, v0, 1
	s_mov_b32 s4, s26
	.loc	1 947 17                        ; ragged.py:947:17
	v_and_b32_e32 v49, 28, v35
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_mul_lo_u32 v35, s29, v96
	s_mul_i32 s2, s10, s29
	.loc	1 942 36                        ; ragged.py:942:36
	v_cndmask_b32_e64 v36, 0x80000000, v36, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_and_b32 s21, s21, 0xffff
	.loc	1 942 36                        ; ragged.py:942:36
	buffer_load_u16 v48, v36, s[4:7], 0 offen
	.loc	1 889 36                        ; ragged.py:889:36
	v_lshrrev_b32_e32 v36, 4, v0
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_add3_u32 v43, s2, s13, v35
	.loc	1 947 17                        ; ragged.py:947:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 889 36                        ; ragged.py:889:36
	v_and_or_b32 v50, v36, 1, v95
	v_or_b32_e32 v59, 2, v50
	.loc	1 889 18 is_stmt 0              ; ragged.py:889:18
	v_or_b32_e32 v60, s13, v50
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v58, 4, v50
	v_or_b32_e32 v57, 6, v50
	v_or_b32_e32 v35, 0x8e, v50
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v107, s13, v59
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v56, 8, v50
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e64 s2, s29, v60
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v106, s13, v58
	.loc	1 889 36 is_stmt 0              ; ragged.py:889:36
	v_or_b32_e32 v55, 10, v50
	v_or_b32_e32 v36, 0x8c, v50
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v105, s13, v57
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v54, 12, v50
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v61, s13, v35
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e64 s18, s29, v107
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v104, s13, v56
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s2
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v53, 14, v50
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v60, v43, v59, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s17, s29, v106
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v38, 0x88, v50
	.loc	1 889 18 is_stmt 0              ; ragged.py:889:18
	v_or_b32_e32 v103, s13, v55
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v42, 0x80, v50
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v62, s13, v36
	.loc	1 1009 13 is_stmt 1             ; ragged.py:1009:13
	v_add_lshl_u32 v108, v43, v58, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s16, s29, v105
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v39, 0x86, v50
	v_or_b32_e32 v40, 0x84, v50
	v_or_b32_e32 v41, 0x82, v50
	.loc	1 889 18 is_stmt 0              ; ragged.py:889:18
	v_or_b32_e32 v102, s13, v54
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e64 s4, s29, v61
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v109, v43, v57, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s15, s29, v104
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v101, s13, v53
	v_or_b32_e32 v64, s13, v38
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v110, v43, v56, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s14, s29, v103
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v100, s13, v42
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s5, s29, v62
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v95, s13, v39
	v_or_b32_e32 v96, s13, v40
	v_or_b32_e32 v97, s13, v41
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v111, v43, v55, 2
	v_add_lshl_u32 v112, v43, v54, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s12, s29, v101
	v_cmp_gt_i32_e64 s7, s29, v64
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v113, v43, v53, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s11, s29, v100
	v_cmp_gt_i32_e64 s8, s29, v95
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v114, v43, v42, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s10, s29, v97
	v_cmp_gt_i32_e64 s9, s29, v96
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v115, v43, v41, 2
	v_add_lshl_u32 v116, v43, v40, 2
	v_add_lshl_u32 v117, v43, v39, 2
	v_add_lshl_u32 v118, v43, v38, 2
	v_add_lshl_u32 v120, v43, v36, 2
	.loc	1 935 36                        ; ragged.py:935:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v45, 16, v45
	.loc	1 947 17                        ; ragged.py:947:17
	v_and_b32_e32 v37, 0xf0, v0
	v_lshlrev_b32_e32 v0, 5, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v80, v80, v45
	.loc	1 947 17                        ; ragged.py:947:17
	v_lshl_add_u32 v51, v37, 2, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 940 17                        ; ragged.py:940:17
	v_dual_mul_f32 v79, v79, v45 :: v_dual_and_b32 v0, 32, v0
	v_mul_f32_e32 v77, v77, v45
	.loc	1 947 17                        ; ragged.py:947:17
	v_lshl_add_u32 v52, v37, 1, 0
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v37, 0x8a, v50
	.loc	1 947 17                        ; ragged.py:947:17
	v_add3_u32 v49, v51, v0, v49
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_add_nc_u32_e32 v51, v43, v1
	v_mad_u64_u32 v[0:1], null, s29, 48, v[43:44]
	.loc	1 935 36                        ; ragged.py:935:36
	v_lshlrev_b32_e32 v44, 16, v44
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_add_nc_u32_e32 v34, v43, v34
	.loc	1 1009 13 is_stmt 0             ; ragged.py:1009:13
	v_add_lshl_u32 v1, v43, v50, 2
	.loc	1 889 18 is_stmt 1              ; ragged.py:889:18
	v_or_b32_e32 v63, s13, v37
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s13, s29, v102
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v93, v93, v44
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v121, v34, v50, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s1, s2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s6, s29, v63
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v119, v43, v37, 2
	v_cndmask_b32_e64 v61, 0x80000000, v121, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s18
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v43, v43, v35, 2
	v_cndmask_b32_e64 v60, 0x80000000, v60, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s17
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v122, v34, v59, 2
	v_cndmask_b32_e64 v62, 0x80000000, v108, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s16
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v123, v34, v58, 2
	v_cndmask_b32_e64 v63, 0x80000000, v109, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s15
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v124, v34, v57, 2
	v_cndmask_b32_e64 v64, 0x80000000, v110, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s14
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v125, v34, v56, 2
	v_cndmask_b32_e64 v95, 0x80000000, v111, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s13
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v126, v34, v55, 2
	v_cndmask_b32_e64 v96, 0x80000000, v112, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s12
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v127, v34, v54, 2
	v_cndmask_b32_e64 v97, 0x80000000, v113, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s11
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v128, v34, v53, 2
	v_cndmask_b32_e64 v100, 0x80000000, v114, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s10
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v129, v34, v42, 2
	v_cndmask_b32_e64 v101, 0x80000000, v115, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s9
	.loc	1 940 17                        ; ragged.py:940:17
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v91, v91, v44 :: v_dual_lshlrev_b32 v46, 16, v46
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v102, 0x80000000, v116, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s8
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v88, v88, v44
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v103, 0x80000000, v117, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s7
	.loc	1 940 17                        ; ragged.py:940:17
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v69, v69, v45 :: v_dual_lshlrev_b32 v48, 16, v48
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v104, 0x80000000, v118, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s6
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v130, v34, v41, 2
	v_cndmask_b32_e64 v105, 0x80000000, v119, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s3, s5
	s_and_b32 s3, s3, s4
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v131, v34, v40, 2
	v_cndmask_b32_e64 v43, 0x80000000, v43, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s18
	.loc	1 940 17                        ; ragged.py:940:17
	v_dual_mul_f32 v86, v86, v44 :: v_dual_lshlrev_b32 v47, 16, v47
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v107, 0x80000000, v122, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s17
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v99, v99, v44
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v108, 0x80000000, v123, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s16
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v98, v98, v44
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v109, 0x80000000, v124, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s15
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v94, v94, v44
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v110, 0x80000000, v125, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s14
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v92, v92, v44
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v111, 0x80000000, v126, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s13
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v90, v90, v44
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v112, 0x80000000, v127, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s12
	.loc	1 940 17                        ; ragged.py:940:17
	v_dual_mul_f32 v89, v89, v44 :: v_dual_mul_f32 v78, v78, v45
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v113, 0x80000000, v128, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s11
	.loc	1 940 17                        ; ragged.py:940:17
	v_dual_mul_f32 v87, v87, v44 :: v_dual_mul_f32 v76, v76, v45
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v114, 0x80000000, v129, s3
	.loc	1 940 17                        ; ragged.py:940:17
	v_dual_mul_f32 v85, v85, v44 :: v_dual_mul_f32 v74, v74, v45
	v_dual_mul_f32 v84, v84, v44 :: v_dual_mul_f32 v75, v75, v45
	v_dual_mul_f32 v83, v83, v44 :: v_dual_mul_f32 v72, v72, v45
	v_dual_mul_f32 v82, v82, v44 :: v_dual_mul_f32 v73, v73, v45
	v_dual_mul_f32 v44, v81, v44 :: v_dual_mul_f32 v71, v71, v45
	v_dual_mul_f32 v70, v70, v45 :: v_dual_mul_f32 v33, v33, v46
	v_dual_mul_f32 v68, v68, v45 :: v_dual_mul_f32 v31, v31, v46
	v_dual_mul_f32 v67, v67, v45 :: v_dual_mul_f32 v32, v32, v46
	v_mul_f32_e32 v66, v66, v45
	v_dual_mul_f32 v45, v65, v45 :: v_dual_mul_f32 v30, v30, v46
	v_mul_f32_e32 v65, v29, v46
	v_mul_f32_e32 v81, v28, v46
	v_dual_mul_f32 v121, v27, v46 :: v_dual_mul_f32 v16, v16, v47
	v_dual_mul_f32 v122, v26, v46 :: v_dual_mul_f32 v17, v17, v47
	v_dual_mul_f32 v123, v25, v46 :: v_dual_mul_f32 v10, v10, v47
	v_mul_f32_e32 v124, v24, v46
	v_mul_f32_e32 v125, v23, v46
	v_mul_f32_e32 v126, v22, v46
	v_dual_mul_f32 v127, v21, v46 :: v_dual_mul_f32 v8, v8, v47
	v_dual_mul_f32 v128, v20, v46 :: v_dual_mul_f32 v11, v11, v47
	v_dual_mul_f32 v129, v19, v46 :: v_dual_mul_f32 v6, v6, v47
	v_dual_mul_f32 v46, v18, v46 :: v_dual_mul_f32 v9, v9, v47
	.loc	1 947 17                        ; ragged.py:947:17
	ds_store_b32 v49, v48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[18:21], v52
	ds_load_b128 v[22:25], v52 offset:16
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s10
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v48, v15, v47
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v115, 0x80000000, v130, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s9
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v49, v14, v47
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v116, 0x80000000, v131, s3
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v130, v13, v47
	v_mul_f32_e32 v131, v12, v47
	.loc	1 947 17                        ; ragged.py:947:17
	ds_load_b128 v[12:15], v52 offset:512
	ds_load_b128 v[26:29], v52 offset:528
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v132, v34, v39, 2
	v_add_lshl_u32 v133, v34, v38, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v134, v34, v37, 2
	v_add_lshl_u32 v135, v34, v36, 2
	v_cndmask_b32_e64 v117, 0x80000000, v132, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s7
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v34, v34, v35, 2
	v_cndmask_b32_e64 v118, 0x80000000, v133, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s6
	.loc	1 940 17                        ; ragged.py:940:17
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v7, v7, v47 :: v_dual_mul_f32 v94, v94, v20
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v5, v5, v47 :: v_dual_mul_f32 v92, v92, v22
	v_mul_f32_e32 v4, v4, v47
	v_dual_mul_f32 v3, v3, v47 :: v_dual_mul_f32 v90, v90, v24
	v_dual_mul_f32 v2, v2, v47 :: v_dual_mul_f32 v93, v93, v21
	.loc	1 947 17                        ; ragged.py:947:17
	v_mul_f32_e32 v47, v99, v18
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v136, v51, v50, 2
	.loc	1 947 17                        ; ragged.py:947:17
	v_dual_mul_f32 v52, v98, v19 :: v_dual_mul_f32 v89, v89, v25
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v119, 0x80000000, v134, s3
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s3, s1, s5
	s_and_b32 s1, s1, s4
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v137, v51, v59, 2
	v_cndmask_b32_e64 v34, 0x80000000, v34, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s2
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v106, 0x80000000, v120, s19
	v_cndmask_b32_e64 v120, 0x80000000, v135, s3
	.loc	1 947 17                        ; ragged.py:947:17
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v91, v91, v23 :: v_dual_mul_f32 v88, v88, v12
	v_dual_mul_f32 v87, v87, v13 :: v_dual_mul_f32 v86, v86, v14
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v85, v85, v15 :: v_dual_mul_f32 v84, v84, v26
	v_dual_mul_f32 v83, v83, v27 :: v_dual_mul_f32 v82, v82, v28
	v_dual_mul_f32 v44, v44, v29 :: v_dual_mul_f32 v79, v79, v19
	v_dual_mul_f32 v80, v80, v18 :: v_dual_mul_f32 v77, v77, v21
	v_dual_mul_f32 v78, v78, v20 :: v_dual_mul_f32 v75, v75, v23
	v_dual_mul_f32 v76, v76, v22 :: v_dual_mul_f32 v73, v73, v25
	v_dual_mul_f32 v74, v74, v24 :: v_dual_mul_f32 v71, v71, v13
	v_dual_mul_f32 v72, v72, v12 :: v_dual_mul_f32 v69, v69, v15
	v_dual_mul_f32 v70, v70, v14 :: v_dual_mul_f32 v67, v67, v27
	v_dual_mul_f32 v68, v68, v26 :: v_dual_mul_f32 v45, v45, v29
	v_dual_mul_f32 v66, v66, v28 :: v_dual_mul_f32 v33, v33, v18
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1e
	buffer_store_b32 v47, v1, s[20:23], 0 offen
	buffer_store_b32 v52, v60, s[20:23], 0 offen
	buffer_store_b32 v94, v62, s[20:23], 0 offen
	buffer_store_b32 v93, v63, s[20:23], 0 offen
	buffer_store_b32 v92, v64, s[20:23], 0 offen
	buffer_store_b32 v91, v95, s[20:23], 0 offen
	buffer_store_b32 v90, v96, s[20:23], 0 offen
	buffer_store_b32 v89, v97, s[20:23], 0 offen
	buffer_store_b32 v88, v100, s[20:23], 0 offen
	buffer_store_b32 v87, v101, s[20:23], 0 offen
	buffer_store_b32 v86, v102, s[20:23], 0 offen
	buffer_store_b32 v85, v103, s[20:23], 0 offen
	buffer_store_b32 v84, v104, s[20:23], 0 offen
	buffer_store_b32 v83, v105, s[20:23], 0 offen
	buffer_store_b32 v82, v106, s[20:23], 0 offen
	buffer_store_b32 v44, v43, s[20:23], 0 offen
	buffer_store_b32 v80, v61, s[20:23], 0 offen
	buffer_store_b32 v79, v107, s[20:23], 0 offen
	buffer_store_b32 v78, v108, s[20:23], 0 offen
	buffer_store_b32 v77, v109, s[20:23], 0 offen
	buffer_store_b32 v76, v110, s[20:23], 0 offen
	buffer_store_b32 v75, v111, s[20:23], 0 offen
	buffer_store_b32 v74, v112, s[20:23], 0 offen
	buffer_store_b32 v73, v113, s[20:23], 0 offen
	buffer_store_b32 v72, v114, s[20:23], 0 offen
	buffer_store_b32 v71, v115, s[20:23], 0 offen
	buffer_store_b32 v70, v116, s[20:23], 0 offen
	buffer_store_b32 v69, v117, s[20:23], 0 offen
	buffer_store_b32 v68, v118, s[20:23], 0 offen
	buffer_store_b32 v67, v119, s[20:23], 0 offen
	buffer_store_b32 v66, v120, s[20:23], 0 offen
	v_add_lshl_u32 v1, v51, v58, 2
	.loc	1 947 17                        ; ragged.py:947:17
	v_dual_mul_f32 v98, v121, v24 :: v_dual_mul_f32 v99, v122, v25
	v_mul_f32_e32 v121, v123, v12
	v_dual_mul_f32 v9, v9, v12 :: v_dual_mul_f32 v6, v6, v15
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v12, 0x80000000, v136, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s18
	.loc	1 947 17                        ; ragged.py:947:17
	v_dual_mul_f32 v81, v81, v23 :: v_dual_mul_f32 v122, v124, v13
	v_dual_mul_f32 v11, v11, v24 :: v_dual_mul_f32 v8, v8, v13
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v13, 0x80000000, v137, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s17
	.loc	1 947 17                        ; ragged.py:947:17
	v_dual_mul_f32 v32, v32, v19 :: v_dual_mul_f32 v31, v31, v20
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	s_clause 0x1
	buffer_store_b32 v45, v34, s[20:23], 0 offen
	buffer_store_b32 v33, v12, s[20:23], 0 offen
	v_add_lshl_u32 v12, v51, v57, 2
	s_clause 0x1
	buffer_store_b32 v32, v13, s[20:23], 0 offen
	buffer_store_b32 v31, v1, s[20:23], 0 offen
	v_add_lshl_u32 v1, v51, v56, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s16
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v13, v51, v55, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s15
	.loc	1 947 17                        ; ragged.py:947:17
	v_dual_mul_f32 v30, v30, v21 :: v_dual_mul_f32 v65, v65, v22
	v_mul_f32_e32 v123, v125, v14
	v_dual_mul_f32 v7, v7, v14 :: v_dual_mul_f32 v4, v4, v27
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v14, v51, v54, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s14
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v30, v12, s[20:23], 0 offen
	buffer_store_b32 v65, v1, s[20:23], 0 offen
	v_cndmask_b32_e64 v13, 0x80000000, v13, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s13
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v1, v51, v53, 2
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	v_add_lshl_u32 v12, v51, v42, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s12
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v81, v13, s[20:23], 0 offen
	buffer_store_b32 v98, v14, s[20:23], 0 offen
	v_add_lshl_u32 v13, v51, v41, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s11
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v14, v51, v40, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s10
	.loc	1 947 17                        ; ragged.py:947:17
	v_mul_f32_e32 v124, v126, v15
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v13, 0x80000000, v13, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s9
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v99, v1, s[20:23], 0 offen
	buffer_store_b32 v121, v12, s[20:23], 0 offen
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	v_add_lshl_u32 v1, v51, v39, 2
	v_add_lshl_u32 v12, v51, v38, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s8
	.loc	1 947 17                        ; ragged.py:947:17
	v_mul_f32_e32 v126, v128, v27
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v122, v13, s[20:23], 0 offen
	buffer_store_b32 v123, v14, s[20:23], 0 offen
	v_add_lshl_u32 v13, v51, v37, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s7
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v14, v51, v36, 2
	.loc	1 947 17                        ; ragged.py:947:17
	v_dual_mul_f32 v125, v127, v26 :: v_dual_mul_f32 v46, v46, v29
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v12, 0x80000000, v12, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s6
	.loc	1 947 17                        ; ragged.py:947:17
	v_dual_mul_f32 v127, v129, v28 :: v_dual_mul_f32 v16, v16, v19
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v13, 0x80000000, v13, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s5
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v124, v1, s[20:23], 0 offen
	buffer_store_b32 v125, v12, s[20:23], 0 offen
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	v_add_lshl_u32 v1, v51, v35, 2
	v_add_lshl_u32 v12, v0, v50, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, s0, s4
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v126, v13, s[20:23], 0 offen
	buffer_store_b32 v127, v14, s[20:23], 0 offen
	v_add_lshl_u32 v13, v0, v59, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s2
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v14, v0, v58, 2
	.loc	1 947 17                        ; ragged.py:947:17
	v_dual_mul_f32 v17, v17, v18 :: v_dual_mul_f32 v18, v48, v20
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s18
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v46, v1, s[20:23], 0 offen
	buffer_store_b32 v17, v12, s[20:23], 0 offen
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s17
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v1, v0, v57, 2
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	v_add_lshl_u32 v12, v0, v56, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s16
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v16, v13, s[20:23], 0 offen
	buffer_store_b32 v18, v14, s[20:23], 0 offen
	v_add_lshl_u32 v13, v0, v55, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s15
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v14, v0, v54, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s14
	.loc	1 947 17                        ; ragged.py:947:17
	v_dual_mul_f32 v19, v49, v21 :: v_dual_mul_f32 v20, v130, v22
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s13
	.loc	1 947 17                        ; ragged.py:947:17
	v_dual_mul_f32 v21, v131, v23 :: v_dual_mul_f32 v10, v10, v25
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	s_clause 0x1
	buffer_store_b32 v19, v1, s[20:23], 0 offen
	buffer_store_b32 v20, v12, s[20:23], 0 offen
	v_add_lshl_u32 v1, v0, v53, 2
	s_clause 0x1
	buffer_store_b32 v21, v13, s[20:23], 0 offen
	buffer_store_b32 v11, v14, s[20:23], 0 offen
	v_add_lshl_u32 v11, v0, v42, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s12
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v12, v0, v41, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s11
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v13, v0, v40, 2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s10
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v10, v1, s[20:23], 0 offen
	buffer_store_b32 v9, v11, s[20:23], 0 offen
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s9
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v1, v0, v39, 2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	s_clause 0x1
	buffer_store_b32 v8, v12, s[20:23], 0 offen
	buffer_store_b32 v7, v13, s[20:23], 0 offen
	v_add_lshl_u32 v7, v0, v38, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v8, v0, v37, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s7
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v9, v0, v36, 2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	v_add_lshl_u32 v0, v0, v35, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s6
	.loc	1 947 17                        ; ragged.py:947:17
	v_dual_mul_f32 v5, v5, v26 :: v_dual_mul_f32 v2, v2, v29
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s5
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 947 17                        ; ragged.py:947:17
	v_mul_f32_e32 v3, v3, v28
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b32 v6, v1, s[20:23], 0 offen
	buffer_store_b32 v5, v7, s[20:23], 0 offen
	buffer_store_b32 v4, v8, s[20:23], 0 offen
	buffer_store_b32 v3, v9, s[20:23], 0 offen
	buffer_store_b32 v2, v0, s[20:23], 0 offen
	.loc	1 856 5                         ; ragged.py:856:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 143
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 143
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11012
; TotalNumSgprs: 107
; NumVgprs: 143
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 107
; NumVGPRsForWavesPerEU: 143
; Occupancy: 10
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     107
    .sgpr_spill_count: 26
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     143
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
