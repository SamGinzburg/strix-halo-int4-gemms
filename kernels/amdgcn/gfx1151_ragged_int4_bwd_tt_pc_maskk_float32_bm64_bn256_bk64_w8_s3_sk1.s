	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 856 0                         ; ragged.py:856:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[64:65], s[0:1], 0x30
.Ltmp0:
	.loc	1 883 20 prologue_end           ; ragged.py:883:20
	s_abs_i32 s9, s2
	v_lshlrev_b32_e32 v71, 1, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:880:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s64, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:881:21 ]
	s_add_i32 s5, s65, 0xff
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
	s_sub_i32 s50, s5, s8
	.loc	1 885 17                        ; ragged.py:885:17
	s_sub_i32 s5, 0, s7
	.loc	1 884 22                        ; ragged.py:884:22
	s_mul_i32 s4, s50, s4
	.loc	1 885 17                        ; ragged.py:885:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 884 16                        ; ragged.py:884:16
	s_sub_i32 s8, s2, s4
	.loc	1 909 35                        ; ragged.py:909:35
	s_mul_i32 s33, s50, s65
	.loc	1 885 17                        ; ragged.py:885:17
	s_abs_i32 s10, s8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s5, s9
	s_mul_hi_u32 s2, s9, s5
	s_load_b64 s[4:5], s[0:1], 0x20
	s_add_i32 s9, s9, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s10, s9
	s_xor_b32 s9, s8, s6
	s_mul_i32 s11, s2, s7
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s10, s10, s11
	s_add_i32 s11, s2, 1
	s_sub_i32 s12, s10, s7
	s_cmp_ge_u32 s10, s7
	s_cselect_b32 s2, s11, s2
	s_cselect_b32 s10, s12, s10
	s_add_i32 s11, s2, 1
	s_cmp_ge_u32 s10, s7
	s_cselect_b32 s2, s11, s2
	.loc	1 892 19                        ; ragged.py:892:19
	s_ashr_i32 s51, s50, 31
	.loc	1 885 17                        ; ragged.py:885:17
	s_xor_b32 s2, s2, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s2, s2, s9
	.loc	1 886 24                        ; ragged.py:886:24
	s_mul_i32 s6, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 886 17 is_stmt 0              ; ragged.py:886:17
	s_sub_i32 s8, s8, s6
	.loc	1 892 19 is_stmt 1              ; ragged.py:892:19
	s_lshl_b64 s[6:7], s[50:51], 2
	.loc	1 889 18                        ; ragged.py:889:18
	s_lshl_b32 s47, s8, 8
	.loc	1 892 19                        ; ragged.py:892:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s6
	s_addc_u32 s5, s5, s7
	.loc	1 901 22                        ; ragged.py:901:22
	s_lshl_b32 s67, s3, 5
	.loc	1 892 19                        ; ragged.py:892:19
	s_load_b32 s34, s[4:5], 0x0
	s_mov_b32 s3, 0
	.loc	1 893 27                        ; ragged.py:893:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 893 26 is_stmt 0              ; ragged.py:893:26
	s_lshr_b32 s5, s4, 31
	s_add_i32 s4, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s68, s4, 1
	.loc	1 902 19 is_stmt 1              ; ragged.py:902:19
	s_cmp_lt_i32 s67, s68
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 947 17                        ; ragged.py:947:17
	v_lshlrev_b32_e32 v1, 1, v0
	.loc	1 943 21                        ; ragged.py:943:21
	s_add_i32 s55, s47, s33
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 21 is_stmt 0                ; ragged.py:0:21
	s_mov_b32 s3, -1
                                        ; implicit-def: $sgpr55
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[48:49], s[0:1], 0x28
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v69, 15, v0
	v_dual_mov_b32 v3, 0 :: v_dual_and_b32 v70, 0xe0, v0
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
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
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
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_lshl_b32 s66, s2, 6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b128 s[36:39], s[0:1], 0x0
	s_load_b32 s52, s[0:1], 0x38
	.loc	1 896 18 is_stmt 1              ; ragged.py:896:18
	v_lshrrev_b32_e32 v72, 6, v0
	.loc	1 889 36                        ; ragged.py:889:36
	v_lshrrev_b32_e32 v2, 5, v70
	.loc	1 888 36                        ; ragged.py:888:36
	v_and_b32_e32 v1, 63, v0
	.loc	1 917 33                        ; ragged.py:917:33
	s_and_b32 s34, s34, 0x80000001
	.loc	1 896 18                        ; ragged.py:896:18
	v_and_b32_e32 v73, 31, v0
	v_or_b32_e32 v76, 12, v72
	v_or_b32_e32 v78, 28, v72
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v3, s47, v2
	.loc	1 902 19                        ; ragged.py:902:19
	v_mad_u64_u32 v[65:66], null, s64, v72, v[1:2]
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[66:67], null, s64, v76, v[1:2]
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v4, s66, v1
	.loc	1 902 19                        ; ragged.py:902:19
	v_mad_u64_u32 v[67:68], null, s64, v78, v[1:2]
	.loc	1 917 33                        ; ragged.py:917:33
	s_cmp_eq_u32 s34, 1
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v5, 8, v3
	v_or_b32_e32 v6, 16, v3
	.loc	1 917 33                        ; ragged.py:917:33
	s_cselect_b32 s70, -1, 0
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s52, v2
	v_bfe_i32 v2, v0, 7, 1
	s_add_i32 s55, s47, s33
                                        ; implicit-def: $vgpr213 : SGPR spill to VGPR lane
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v7, 24, v3
	s_mul_i32 s33, s55, s52
	v_writelane_b32 v213, s12, 0
	v_or_b32_e32 v8, 32, v3
	v_or_b32_e32 v9, 40, v3
	v_or_b32_e32 v10, 48, v3
	v_or_b32_e32 v11, 56, v3
	v_or_b32_e32 v12, 64, v3
	v_or_b32_e32 v13, 0x48, v3
	v_or_b32_e32 v14, 0x50, v3
	v_or_b32_e32 v15, 0x58, v3
	v_or_b32_e32 v16, 0x60, v3
	v_or_b32_e32 v17, 0x68, v3
	v_or_b32_e32 v18, 0x70, v3
	v_or_b32_e32 v19, 0x78, v3
	v_or_b32_e32 v20, 0x80, v3
	v_or_b32_e32 v21, 0x88, v3
	v_or_b32_e32 v22, 0x90, v3
	v_or_b32_e32 v23, 0x98, v3
	v_or_b32_e32 v24, 0xa0, v3
	v_or_b32_e32 v25, 0xa8, v3
	v_or_b32_e32 v26, 0xb0, v3
	v_or_b32_e32 v27, 0xb8, v3
	v_or_b32_e32 v28, 0xc0, v3
	v_or_b32_e32 v29, 0xc8, v3
	v_or_b32_e32 v30, 0xd0, v3
	v_or_b32_e32 v31, 0xd8, v3
	v_or_b32_e32 v32, 0xe0, v3
	v_or_b32_e32 v33, 0xe8, v3
	v_or_b32_e32 v34, 0xf0, v3
	v_or_b32_e32 v35, 0xf8, v3
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e32 vcc_lo, s64, v4
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s0, s65, v3
	v_cmp_gt_i32_e64 s1, s65, v5
	v_cmp_gt_i32_e64 s2, s65, v6
	v_and_b32_e32 v2, 0x88, v2
	.loc	1 902 19                        ; ragged.py:902:19
	v_add3_u32 v68, v73, v1, s33
	v_mov_b32_e32 v1, 0
	v_and_b32_e32 v3, 0x7f, v0
	v_lshlrev_b32_e32 v4, 5, v69
	v_lshlrev_b32_e32 v5, 4, v70
	v_and_b32_e32 v6, 24, v71
	v_writelane_b32 v213, s13, 1
	v_xor_b32_e32 v2, v2, v3
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s3, s65, v7
	v_cmp_gt_i32_e64 s4, s65, v8
	v_or3_b32 v3, v4, v6, v5
	v_writelane_b32 v213, s14, 2
	v_cmp_gt_i32_e64 s5, s65, v9
	v_cmp_gt_i32_e64 s6, s65, v10
	v_cmp_gt_i32_e64 s7, s65, v11
	v_or_b32_e32 v7, 0x300, v0
	v_or_b32_e32 v4, 0x700, v0
	v_or_b32_e32 v5, 0x3f0, v0
	v_or_b32_e32 v6, 0x7f0, v0
	v_xor_b32_e32 v8, 0x110, v2
	v_xor_b32_e32 v9, 8, v3
	v_xor_b32_e32 v10, 16, v3
	v_xor_b32_e32 v11, 24, v3
	v_writelane_b32 v213, s15, 3
	v_cmp_gt_i32_e64 s8, s65, v12
	v_cmp_gt_i32_e64 s9, s65, v13
	v_cmp_gt_i32_e64 s10, s65, v14
	v_cmp_gt_i32_e64 s11, s65, v15
	v_cmp_gt_i32_e64 s12, s65, v16
	v_cmp_gt_i32_e64 s13, s65, v17
	v_cmp_gt_i32_e64 s14, s65, v18
	v_cmp_gt_i32_e64 s15, s65, v19
	v_cmp_gt_i32_e64 s16, s65, v20
	v_cmp_gt_i32_e64 s17, s65, v21
	v_cmp_gt_i32_e64 s18, s65, v22
	v_cmp_gt_i32_e64 s19, s65, v23
	v_cmp_gt_i32_e64 s20, s65, v24
	v_cmp_gt_i32_e64 s21, s65, v25
	v_cmp_gt_i32_e64 s22, s65, v26
	v_cmp_gt_i32_e64 s23, s65, v27
	v_cmp_gt_i32_e64 s24, s65, v28
	v_cmp_gt_i32_e64 s25, s65, v29
	v_cmp_gt_i32_e64 s26, s65, v30
	v_cmp_gt_i32_e64 s27, s65, v31
	v_cmp_gt_i32_e64 s28, s65, v32
	v_cmp_gt_i32_e64 s29, s65, v33
	v_cmp_gt_i32_e64 s30, s65, v34
	v_cmp_gt_i32_e64 s31, s65, v35
	.loc	1 896 18                        ; ragged.py:896:18
	v_or_b32_e32 v74, 4, v72
	v_or_b32_e32 v75, 8, v72
	v_or_b32_e32 v77, 16, v72
	v_add_nc_u32_e32 v79, 0, v7
	v_dual_mov_b32 v7, v1 :: v_dual_add_nc_u32 v80, 0, v4
	v_add_nc_u32_e32 v81, 0, v5
	v_add_nc_u32_e32 v82, 0, v6
	v_dual_mov_b32 v12, v1 :: v_dual_add_nc_u32 v83, 0, v2
	v_add_nc_u32_e32 v84, 0, v8
	v_dual_mov_b32 v14, v1 :: v_dual_add_nc_u32 v85, 0, v3
	v_dual_mov_b32 v13, v1 :: v_dual_add_nc_u32 v86, 0, v9
	v_dual_mov_b32 v16, v1 :: v_dual_add_nc_u32 v87, 0, v10
	v_dual_mov_b32 v15, v1 :: v_dual_add_nc_u32 v88, 0, v11
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_dual_mov_b32 v17, v1 :: v_dual_add_nc_u32 v92, 0, v0
	v_dual_mov_b32 v18, v1 :: v_dual_add_nc_u32 v91, 0, v69
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
	v_or_b32_e32 v89, 20, v72
	v_or_b32_e32 v90, 24, v72
	.loc	1 905 35                        ; ragged.py:905:35
	s_mul_i32 s69, s50, s52
	.loc	1 917 63                        ; ragged.py:917:63
	s_add_i32 s71, s68, -1
	s_lshl_b32 s72, s64, 2
	s_lshl_b32 s73, s64, 3
	s_lshl_b32 s74, s64, 4
	s_mul_i32 s75, s64, 20
	s_mul_i32 s76, s64, 24
	s_and_b32 s57, s37, 0xffff
	s_mov_b32 s56, s36
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	s_lshl_b32 s77, s52, 3
	s_lshl_b32 s78, s52, 4
	s_mul_i32 s79, s52, 24
	s_lshl_b32 s80, s52, 5
	s_mul_i32 s81, s52, 40
	s_mul_i32 s82, s52, 48
	s_mul_i32 s83, s52, 56
	s_lshl_b32 s84, s52, 6
	s_mul_i32 s85, s52, 0x48
	s_mul_i32 s86, s52, 0x50
	s_mul_i32 s87, s52, 0x58
	s_mul_i32 s88, s52, 0x60
	s_mul_i32 s89, s52, 0x68
	s_mul_i32 s90, s52, 0x70
	s_mul_i32 s91, s52, 0x78
	s_lshl_b32 s92, s52, 7
	s_mul_i32 s93, s52, 0x88
	s_mul_i32 s94, s52, 0x90
	s_mul_i32 s95, s52, 0x98
	s_mul_i32 s96, s52, 0xa0
	s_mul_i32 s97, s52, 0xa8
	s_mul_i32 s98, s52, 0xb0
	s_mul_i32 s99, s52, 0xb8
	s_mul_i32 s100, s52, 0xc0
	s_mul_i32 s101, s52, 0xc8
	s_mul_i32 s102, s52, 0xd0
	s_mul_i32 s103, s52, 0xd8
	s_mul_i32 s104, s52, 0xe0
	s_mul_i32 vcc_hi, s52, 0xe8
	s_mul_i32 s51, s52, 0xf0
	s_mulk_i32 s52, 0xf8
	s_and_b32 s61, s39, 0xffff
	s_mov_b32 s60, s38
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 903 22                        ; ragged.py:903:22
	v_or_b32_e32 v93, s67, v72
	.loc	1 918 42                        ; ragged.py:918:42
	s_add_i32 s53, s67, s69
	.loc	1 903 22                        ; ragged.py:903:22
	v_or_b32_e32 v98, s67, v90
	.loc	1 918 42                        ; ragged.py:918:42
	s_mul_i32 s53, s53, s64
	.loc	1 919 34                        ; ragged.py:919:34
	s_mov_b32 s62, s58
	.loc	1 916 30                        ; ragged.py:916:30
	v_cmp_gt_i32_e64 s37, s68, v93
	.loc	1 917 56                        ; ragged.py:917:56
	v_cmp_eq_u32_e64 s39, s71, v93
	.loc	1 903 22                        ; ragged.py:903:22
	v_or_b32_e32 v93, s67, v74
	.loc	1 918 42                        ; ragged.py:918:42
	s_add_i32 s53, s53, s66
	.loc	1 919 34                        ; ragged.py:919:34
	s_mov_b32 s63, s59
	.loc	1 918 66                        ; ragged.py:918:66
	s_and_b32 s37, vcc_lo, s37
	.loc	1 917 32                        ; ragged.py:917:32
	s_and_b32 s54, s70, s39
	.loc	1 916 30                        ; ragged.py:916:30
	v_cmp_gt_i32_e64 s38, s68, v93
	.loc	1 917 56                        ; ragged.py:917:56
	v_cmp_eq_u32_e64 s33, s71, v93
	.loc	1 903 22                        ; ragged.py:903:22
	v_or_b32_e32 v93, s67, v75
	.loc	1 918 66                        ; ragged.py:918:66
	s_and_b32 s38, vcc_lo, s38
	.loc	1 917 32                        ; ragged.py:917:32
	s_and_b32 s33, s70, s33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 916 30                        ; ragged.py:916:30
	v_cmp_gt_i32_e64 s40, s68, v93
	.loc	1 917 56                        ; ragged.py:917:56
	v_cmp_eq_u32_e64 s34, s71, v93
	.loc	1 903 22                        ; ragged.py:903:22
	v_or_b32_e32 v93, s67, v76
	.loc	1 918 66                        ; ragged.py:918:66
	s_and_b32 s39, vcc_lo, s40
	.loc	1 916 30                        ; ragged.py:916:30
	v_cmp_gt_i32_e64 s35, s68, v93
	.loc	1 917 56                        ; ragged.py:917:56
	v_cmp_eq_u32_e64 s36, s71, v93
	.loc	1 903 22                        ; ragged.py:903:22
	v_or_b32_e32 v93, s67, v78
	.loc	1 918 66                        ; ragged.py:918:66
	s_and_b32 s35, vcc_lo, s35
	.loc	1 917 32                        ; ragged.py:917:32
	s_and_b32 s36, s70, s36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 916 30                        ; ragged.py:916:30
	v_cmp_gt_i32_e64 s41, s68, v93
	.loc	1 917 56                        ; ragged.py:917:56
	v_cmp_eq_u32_e64 s42, s71, v93
	.loc	1 903 22                        ; ragged.py:903:22
	v_or_b32_e32 v93, s67, v77
	.loc	1 916 30                        ; ragged.py:916:30
	v_cmp_gt_i32_e64 s43, s68, v93
	.loc	1 917 56                        ; ragged.py:917:56
	v_cmp_eq_u32_e64 s44, s71, v93
	.loc	1 903 22                        ; ragged.py:903:22
	v_or_b32_e32 v93, s67, v89
	.loc	1 918 66                        ; ragged.py:918:66
	s_and_b32 s40, vcc_lo, s43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 916 30                        ; ragged.py:916:30
	v_cmp_gt_i32_e64 s45, s68, v93
	.loc	1 917 56                        ; ragged.py:917:56
	v_cmp_eq_u32_e64 s46, s71, v93
	v_add_nc_u32_e32 v93, s53, v65
	.loc	1 918 66                        ; ragged.py:918:66
	s_and_b32 s43, vcc_lo, s45
	.loc	1 916 30                        ; ragged.py:916:30
	v_cmp_gt_i32_e64 s45, s68, v98
	.loc	1 918 34                        ; ragged.py:918:34
	v_cndmask_b32_e64 v99, 0x80000000, v93, s37
	v_add_nc_u32_e32 v94, s72, v93
	v_add_nc_u32_e32 v96, s74, v93
	v_add_nc_u32_e32 v97, s75, v93
	v_add_nc_u32_e32 v95, s73, v93
	buffer_load_u8 v99, v99, s[56:59], 0 offen
	v_add_nc_u32_e32 v93, s76, v93
	v_cndmask_b32_e64 v94, 0x80000000, v94, s38
	.loc	1 918 66 is_stmt 0              ; ragged.py:918:66
	s_and_b32 s37, vcc_lo, s45
	.loc	1 918 34                        ; ragged.py:918:34
	v_cndmask_b32_e64 v96, 0x80000000, v96, s40
	v_cndmask_b32_e64 v97, 0x80000000, v97, s43
	v_cndmask_b32_e64 v93, 0x80000000, v93, s37
	v_cndmask_b32_e64 v95, 0x80000000, v95, s39
	.loc	1 917 56 is_stmt 1              ; ragged.py:917:56
	v_cmp_eq_u32_e64 s45, s71, v98
	.loc	1 918 34                        ; ragged.py:918:34
	s_clause 0x4
	buffer_load_u8 v94, v94, s[56:59], 0 offen
	buffer_load_u8 v96, v96, s[56:59], 0 offen
	buffer_load_u8 v97, v97, s[56:59], 0 offen
	buffer_load_u8 v98, v93, s[56:59], 0 offen
	buffer_load_u8 v95, v95, s[56:59], 0 offen
	.loc	1 920 62                        ; ragged.py:920:62
	s_waitcnt vmcnt(5)
	v_and_b16 v93.l, v99.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 920 34 is_stmt 0              ; ragged.py:920:34
	v_cndmask_b16 v126.l, v99.l, v93.l, s54
	v_add_nc_u32_e32 v93, s53, v66
	.loc	1 918 34 is_stmt 1              ; ragged.py:918:34
	v_cndmask_b32_e64 v93, 0x80000000, v93, s35
	.loc	1 918 66 is_stmt 0              ; ragged.py:918:66
	s_and_b32 s35, vcc_lo, s41
	.loc	1 918 34                        ; ragged.py:918:34
	buffer_load_u8 v99, v93, s[56:59], 0 offen
	.loc	1 920 62 is_stmt 1              ; ragged.py:920:62
	s_waitcnt vmcnt(0)
	v_and_b16 v93.l, v99.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 920 34 is_stmt 0              ; ragged.py:920:34
	v_cndmask_b16 v126.h, v99.l, v93.l, s36
	v_add_nc_u32_e32 v93, s53, v67
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s36, s70, s42
	.loc	1 918 34                        ; ragged.py:918:34
	v_cndmask_b32_e64 v93, 0x80000000, v93, s35
	buffer_load_u8 v99, v93, s[56:59], 0 offen
	.loc	1 920 62                        ; ragged.py:920:62
	s_waitcnt vmcnt(0)
	v_and_b16 v93.l, v99.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 920 34 is_stmt 0              ; ragged.py:920:34
	v_cndmask_b16 v127.l, v99.l, v93.l, s36
	.loc	1 920 62                        ; ragged.py:920:62
	v_and_b16 v93.l, v94.l, 15
	.loc	1 920 34                        ; ragged.py:920:34
	v_cndmask_b16 v127.h, v94.l, v93.l, s33
	.loc	1 920 62                        ; ragged.py:920:62
	v_and_b16 v93.l, v95.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s33, s70, s34
	v_add_nc_u32_e32 v94, s67, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 920 34                        ; ragged.py:920:34
	v_cndmask_b16 v128.l, v95.l, v93.l, s33
	.loc	1 920 62 is_stmt 0              ; ragged.py:920:62
	v_and_b16 v93.l, v96.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s33, s70, s44
	v_add_nc_u32_e32 v95, s77, v94
	v_add_nc_u32_e32 v99, s81, v94
	v_add_nc_u32_e32 v100, s82, v94
	.loc	1 920 34                        ; ragged.py:920:34
	v_cndmask_b16 v128.h, v96.l, v93.l, s33
	.loc	1 920 62 is_stmt 0              ; ragged.py:920:62
	v_and_b16 v93.l, v97.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s33, s70, s46
	v_add_nc_u32_e32 v96, s78, v94
	v_add_nc_u32_e32 v101, s83, v94
	v_add_nc_u32_e32 v102, s84, v94
	.loc	1 920 34                        ; ragged.py:920:34
	v_cndmask_b16 v129.l, v97.l, v93.l, s33
	.loc	1 920 62 is_stmt 0              ; ragged.py:920:62
	v_and_b16 v93.l, v98.l, 15
	.loc	1 917 32 is_stmt 1              ; ragged.py:917:32
	s_and_b32 s33, s70, s45
	v_add_nc_u32_e32 v97, s79, v94
	v_add_nc_u32_e32 v103, s85, v94
	v_add_nc_u32_e32 v104, s86, v94
	.loc	1 920 34                        ; ragged.py:920:34
	v_cndmask_b16 v129.h, v98.l, v93.l, s33
	.loc	1 903 22                        ; ragged.py:903:22
	v_or_b32_e32 v93, s67, v73
	v_add_nc_u32_e32 v98, s80, v94
	v_add_nc_u32_e32 v105, s87, v94
	v_add_nc_u32_e32 v106, s88, v94
	v_add_nc_u32_e32 v107, s89, v94
	.loc	1 916 30                        ; ragged.py:916:30
	v_cmp_gt_i32_e64 s33, s68, v93
	v_add_nc_u32_e32 v108, s90, v94
	v_add_nc_u32_e32 v109, s91, v94
	v_add_nc_u32_e32 v110, s92, v94
	v_add_nc_u32_e32 v111, s93, v94
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s34, s0, s33
	v_add_nc_u32_e32 v112, s94, v94
	v_add_nc_u32_e32 v113, s95, v94
	v_add_nc_u32_e32 v114, s96, v94
	v_add_nc_u32_e32 v115, s97, v94
	v_add_nc_u32_e32 v116, s98, v94
	v_add_nc_u32_e32 v117, s99, v94
	v_add_nc_u32_e32 v118, s100, v94
	v_add_nc_u32_e32 v119, s101, v94
	v_add_nc_u32_e32 v120, s102, v94
	v_add_nc_u32_e32 v121, s103, v94
	v_add_nc_u32_e32 v122, s104, v94
	v_add_nc_u32_e32 v123, vcc_hi, v94
	v_add_nc_u32_e32 v124, s51, v94
	v_add_nc_u32_e32 v125, s52, v94
	.loc	1 919 34 is_stmt 0              ; ragged.py:919:34
	v_cndmask_b32_e64 v94, 0x80000000, v94, s34
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s34, s1, s33
	.loc	1 932 17 is_stmt 1              ; ragged.py:932:17
	s_add_i32 s67, s67, 32
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v95, 0x80000000, v95, s34
	.loc	1 919 66 is_stmt 0              ; ragged.py:919:66
	s_and_b32 s34, s2, s33
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v96, 0x80000000, v96, s34
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s34, s3, s33
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v97, 0x80000000, v97, s34
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s34, s4, s33
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v98, 0x80000000, v98, s34
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s34, s5, s33
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v99, 0x80000000, v99, s34
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s34, s6, s33
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v100, 0x80000000, v100, s34
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s34, s7, s33
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v101, 0x80000000, v101, s34
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s34, s8, s33
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v102, 0x80000000, v102, s34
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s34, s9, s33
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v103, 0x80000000, v103, s34
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s34, s10, s33
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v104, 0x80000000, v104, s34
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s34, s11, s33
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v105, 0x80000000, v105, s34
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s34, s12, s33
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v106, 0x80000000, v106, s34
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s34, s13, s33
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v107, 0x80000000, v107, s34
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s34, s14, s33
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v108, 0x80000000, v108, s34
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s34, s15, s33
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v109, 0x80000000, v109, s34
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s34, s16, s33
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v130, 0x80000000, v110, s34
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s34, s17, s33
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v131, 0x80000000, v111, s34
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s34, s18, s33
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v132, 0x80000000, v112, s34
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s34, s19, s33
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v133, 0x80000000, v113, s34
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s34, s20, s33
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v134, 0x80000000, v114, s34
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s34, s21, s33
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v135, 0x80000000, v115, s34
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s34, s22, s33
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v136, 0x80000000, v116, s34
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s34, s23, s33
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v137, 0x80000000, v117, s34
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s34, s24, s33
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v138, 0x80000000, v118, s34
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s34, s25, s33
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v139, 0x80000000, v119, s34
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s34, s26, s33
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v140, 0x80000000, v120, s34
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s34, s27, s33
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v141, 0x80000000, v121, s34
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s34, s28, s33
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v142, 0x80000000, v122, s34
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s34, s29, s33
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v143, 0x80000000, v123, s34
	.loc	1 919 66                        ; ragged.py:919:66
	s_and_b32 s34, s30, s33
	s_and_b32 s33, s31, s33
	.loc	1 919 34                        ; ragged.py:919:34
	v_cndmask_b32_e64 v144, 0x80000000, v124, s34
	v_cndmask_b32_e64 v145, 0x80000000, v125, s33
	s_clause 0x1f
	buffer_load_u8 v125, v94, s[60:63], 0 offen
	buffer_load_u8 v124, v95, s[60:63], 0 offen
	buffer_load_u8 v123, v96, s[60:63], 0 offen
	buffer_load_u8 v122, v97, s[60:63], 0 offen
	buffer_load_u8 v121, v98, s[60:63], 0 offen
	buffer_load_u8 v120, v99, s[60:63], 0 offen
	buffer_load_u8 v119, v100, s[60:63], 0 offen
	buffer_load_u8 v118, v101, s[60:63], 0 offen
	buffer_load_u8 v117, v102, s[60:63], 0 offen
	buffer_load_u8 v116, v103, s[60:63], 0 offen
	buffer_load_u8 v115, v104, s[60:63], 0 offen
	buffer_load_u8 v114, v105, s[60:63], 0 offen
	buffer_load_u8 v113, v106, s[60:63], 0 offen
	buffer_load_u8 v112, v107, s[60:63], 0 offen
	buffer_load_u8 v111, v108, s[60:63], 0 offen
	buffer_load_u8 v110, v109, s[60:63], 0 offen
	buffer_load_u8 v109, v130, s[60:63], 0 offen
	buffer_load_u8 v108, v131, s[60:63], 0 offen
	buffer_load_u8 v107, v132, s[60:63], 0 offen
	buffer_load_u8 v106, v133, s[60:63], 0 offen
	buffer_load_u8 v105, v134, s[60:63], 0 offen
	buffer_load_u8 v104, v135, s[60:63], 0 offen
	buffer_load_u8 v103, v136, s[60:63], 0 offen
	buffer_load_u8 v102, v137, s[60:63], 0 offen
	buffer_load_u8 v101, v138, s[60:63], 0 offen
	buffer_load_u8 v100, v139, s[60:63], 0 offen
	buffer_load_u8 v99, v140, s[60:63], 0 offen
	buffer_load_u8 v98, v141, s[60:63], 0 offen
	buffer_load_u8 v97, v142, s[60:63], 0 offen
	buffer_load_u8 v96, v143, s[60:63], 0 offen
	buffer_load_u8 v95, v144, s[60:63], 0 offen
	buffer_load_u8 v94, v145, s[60:63], 0 offen
	.loc	1 917 56 is_stmt 1              ; ragged.py:917:56
	v_cmp_eq_u32_e64 s33, s71, v93
	.loc	1 920 34                        ; ragged.py:920:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v92, v126
	ds_store_b8_d16_hi v92, v127 offset:256
	ds_store_b8 v92, v128 offset:512
	ds_store_b8_d16_hi v92, v128 offset:1024
	ds_store_b8 v92, v129 offset:1280
	ds_store_b8_d16_hi v79, v126
	ds_store_b8 v80, v127
	ds_store_b8_d16_hi v92, v129 offset:1536
	s_waitcnt lgkmcnt(0)
	.loc	1 917 32                        ; ragged.py:917:32
	s_and_b32 s33, s70, s33
	.loc	1 920 34                        ; ragged.py:920:34
	s_barrier
	.loc	1 922 27                        ; ragged.py:922:27
	ds_load_u8 v126, v91 offset:320
	ds_load_u8 v127, v91 offset:256
	ds_load_u8 v128, v91 offset:336
	ds_load_u8 v129, v91 offset:272
	ds_load_u8 v130, v91 offset:352
	ds_load_u8 v131, v91 offset:288
	ds_load_u8 v132, v91 offset:368
	ds_load_u8 v133, v91 offset:304
	.loc	1 902 19                        ; ragged.py:902:19
	s_cmp_lt_i32 s67, s68
	.loc	1 922 27                        ; ragged.py:922:27
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	ds_load_u8 v127, v91 offset:448
	ds_load_u8 v134, v91 offset:384
	ds_load_u8 v135, v91 offset:464
	ds_load_u8 v136, v91 offset:400
	ds_load_u8 v137, v91 offset:480
	ds_load_u8 v138, v91 offset:416
	ds_load_u8 v139, v91 offset:496
	ds_load_u8 v140, v91 offset:432
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v128, v129, v128, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v127, v134, v127, 0xc0c0004
	ds_load_u8 v134, v91 offset:64
	ds_load_u8 v141, v91
	ds_load_u8 v142, v91 offset:80
	ds_load_u8 v143, v91 offset:16
	ds_load_u8 v144, v91 offset:96
	ds_load_u8 v145, v91 offset:32
	ds_load_u8 v146, v91 offset:112
	ds_load_u8 v147, v91 offset:48
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v129, v136, v135, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v131, v138, v137, 0xc0c0004
	v_lshl_or_b32 v127, v127, 16, v126
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v133, v140, v139, 0xc0c0004
	v_lshl_or_b32 v129, v129, 16, v128
	v_lshl_or_b32 v131, v131, 16, v130
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v133, v133, 16, v132
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v134, v141, v134, 0xc0c0004
	ds_load_u8 v141, v91 offset:192
	ds_load_u8 v148, v91 offset:128
	ds_load_u8 v149, v91 offset:208
	ds_load_u8 v150, v91 offset:144
	ds_load_u8 v151, v91 offset:224
	ds_load_u8 v152, v91 offset:160
	ds_load_u8 v153, v91 offset:240
	ds_load_u8 v154, v91 offset:176
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v141, v148, v141, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v135, v150, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v126, v141, 16, v134
	v_perm_b32 v134, v143, v142, 0xc0c0004
	v_lshl_or_b32 v128, v135, 16, v134
	v_perm_b32 v134, v145, v144, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v135, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v130, v135, 16, v134
	v_perm_b32 v134, v147, v146, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v154, v153, 0xc0c0004
	v_lshl_or_b32 v132, v135, 16, v134
	.loc	1 921 62                        ; ragged.py:921:62
	s_waitcnt vmcnt(31)
	v_and_b16 v93.l, v125.l, 15
	s_waitcnt vmcnt(30)
	v_and_b16 v93.h, v124.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v94.h, v123.l, 15
	v_and_b16 v95.h, v122.l, 15
	v_and_b16 v96.h, v121.l, 15
	.loc	1 921 34 is_stmt 0              ; ragged.py:921:34
	v_cndmask_b16 v93.l, v125.l, v93.l, s33
	.loc	1 921 62                        ; ragged.py:921:62
	v_and_b16 v98.h, v119.l, 15
	v_and_b16 v97.h, v120.l, 15
	v_and_b16 v100.h, v117.l, 15
	v_and_b16 v99.h, v118.l, 15
	v_and_b16 v101.h, v116.l, 15
	v_and_b16 v102.h, v115.l, 15
	v_and_b16 v103.h, v114.l, 15
	v_and_b16 v104.h, v113.l, 15
	v_and_b16 v105.h, v112.l, 15
	v_and_b16 v106.h, v111.l, 15
	v_and_b16 v108.h, v109.l, 15
	v_and_b16 v107.h, v110.l, 15
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v94.h, v123.l, v94.h, s33
	v_cndmask_b16 v96.h, v121.l, v96.h, s33
	v_cndmask_b16 v98.h, v119.l, v98.h, s33
	v_cndmask_b16 v108.h, v109.l, v108.h, s33
	.loc	1 921 62                        ; ragged.py:921:62
	v_and_b16 v109.l, v108.l, 15
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v93.h, v124.l, v93.h, s33
	v_cndmask_b16 v95.h, v122.l, v95.h, s33
	v_cndmask_b16 v100.h, v117.l, v100.h, s33
	v_cndmask_b16 v97.h, v120.l, v97.h, s33
	v_cndmask_b16 v108.l, v108.l, v109.l, s33
	.loc	1 921 62                        ; ragged.py:921:62
	v_and_b16 v109.l, v107.l, 15
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v99.h, v118.l, v99.h, s33
	v_cndmask_b16 v101.h, v116.l, v101.h, s33
	v_cndmask_b16 v102.h, v115.l, v102.h, s33
	v_cndmask_b16 v103.h, v114.l, v103.h, s33
	v_cndmask_b16 v107.l, v107.l, v109.l, s33
	.loc	1 921 62                        ; ragged.py:921:62
	v_and_b16 v109.l, v106.l, 15
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v104.h, v113.l, v104.h, s33
	v_cndmask_b16 v105.h, v112.l, v105.h, s33
	v_cndmask_b16 v106.h, v111.l, v106.h, s33
	v_cndmask_b16 v107.h, v110.l, v107.h, s33
	v_cndmask_b16 v106.l, v106.l, v109.l, s33
	.loc	1 921 62                        ; ragged.py:921:62
	v_and_b16 v109.l, v105.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v105.l, v105.l, v109.l, s33
	.loc	1 921 62                        ; ragged.py:921:62
	v_and_b16 v109.l, v104.l, 15
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v104.l, v104.l, v109.l, s33
	.loc	1 921 62                        ; ragged.py:921:62
	v_and_b16 v109.l, v103.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v103.l, v103.l, v109.l, s33
	.loc	1 921 62                        ; ragged.py:921:62
	v_and_b16 v109.l, v102.l, 15
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v102.l, v102.l, v109.l, s33
	.loc	1 921 62                        ; ragged.py:921:62
	v_and_b16 v109.l, v101.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v101.l, v101.l, v109.l, s33
	.loc	1 921 62                        ; ragged.py:921:62
	v_and_b16 v109.l, v100.l, 15
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v100.l, v100.l, v109.l, s33
	.loc	1 921 62                        ; ragged.py:921:62
	v_and_b16 v109.l, v99.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v99.l, v99.l, v109.l, s33
	.loc	1 921 62                        ; ragged.py:921:62
	v_and_b16 v109.l, v98.l, 15
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v98.l, v98.l, v109.l, s33
	.loc	1 921 62                        ; ragged.py:921:62
	v_and_b16 v109.l, v97.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v97.l, v97.l, v109.l, s33
	.loc	1 921 62                        ; ragged.py:921:62
	v_and_b16 v109.l, v96.l, 15
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v96.l, v96.l, v109.l, s33
	.loc	1 921 62                        ; ragged.py:921:62
	v_and_b16 v109.l, v95.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v95.l, v95.l, v109.l, s33
	.loc	1 921 62                        ; ragged.py:921:62
	v_and_b16 v109.l, v94.l, 15
	.loc	1 921 34                        ; ragged.py:921:34
	v_cndmask_b16 v94.l, v94.l, v109.l, s33
	.loc	1 922 27 is_stmt 1              ; ragged.py:922:27
	ds_load_u8 v109, v91 offset:960
	ds_load_u8 v110, v91 offset:896
	ds_load_u8 v111, v91 offset:1024
	ds_load_u8 v112, v91 offset:976
	ds_load_u8 v113, v91 offset:912
	ds_load_u8 v114, v91 offset:992
	ds_load_u8 v115, v91 offset:928
	ds_load_u8 v116, v91 offset:944
	ds_load_u8 v117, v91 offset:832
	ds_load_u8 v118, v91 offset:768
	ds_load_u8 v119, v91 offset:848
	ds_load_u8 v120, v91 offset:784
	ds_load_u8 v121, v91 offset:864
	ds_load_u8 v122, v91 offset:800
	ds_load_u8 v123, v91 offset:880
	ds_load_u8 v124, v91 offset:816
	ds_load_u8 v125, v91 offset:704
	ds_load_u8 v134, v91 offset:640
	ds_load_u8 v135, v91 offset:720
	ds_load_u8 v136, v91 offset:656
	ds_load_u8 v137, v91 offset:736
	ds_load_u8 v138, v91 offset:672
	ds_load_u8 v139, v91 offset:752
	ds_load_u8 v140, v91 offset:688
	ds_load_u8 v141, v91 offset:576
	ds_load_u8 v142, v91 offset:512
	ds_load_u8 v143, v91 offset:592
	ds_load_u8 v144, v91 offset:528
	ds_load_u8 v145, v91 offset:608
	ds_load_u8 v146, v91 offset:544
	ds_load_u8 v147, v91 offset:624
	ds_load_u8 v148, v91 offset:560
	ds_load_u8 v149, v91 offset:1216
	ds_load_u8 v150, v91 offset:1280
	ds_load_u8 v151, v91 offset:1232
	ds_load_u8 v152, v91 offset:1168
	ds_load_u8 v153, v91 offset:1248
	ds_load_u8 v154, v91 offset:1184
	ds_load_u8 v155, v91 offset:1264
	ds_load_u8 v156, v91 offset:1200
	ds_load_u8 v157, v91 offset:1152
	ds_load_u8 v158, v91 offset:1088
	ds_load_u8 v159, v91 offset:1104
	ds_load_u8 v160, v91 offset:1040
	ds_load_u8 v161, v91 offset:1120
	ds_load_u8 v162, v91 offset:1056
	ds_load_u8 v163, v91 offset:1136
	ds_load_u8 v164, v91 offset:1072
	ds_load_u8 v165, v91 offset:1472
	ds_load_u8 v166, v91 offset:1536
	ds_load_u8 v167, v91 offset:1488
	ds_load_u8 v168, v91 offset:1424
	ds_load_u8 v169, v91 offset:1504
	ds_load_u8 v170, v91 offset:1440
	ds_load_u8 v171, v91 offset:1520
	ds_load_u8 v172, v91 offset:1456
	ds_load_u8 v173, v91 offset:1408
	ds_load_u8 v174, v91 offset:1344
	ds_load_u8 v175, v91 offset:1360
	ds_load_u8 v176, v91 offset:1296
	ds_load_u8 v177, v91 offset:1376
	ds_load_u8 v178, v91 offset:1312
	ds_load_u8 v179, v91 offset:1392
	ds_load_u8 v180, v91 offset:1328
	ds_load_u8 v181, v91 offset:1984
	ds_load_u8 v182, v91 offset:2000
	ds_load_u8 v183, v91 offset:1936
	ds_load_u8 v184, v91 offset:2016
	ds_load_u8 v185, v91 offset:1952
	ds_load_u8 v186, v81
	ds_load_u8 v187, v82
	ds_load_u8 v188, v91 offset:1968
	ds_load_u8 v189, v91 offset:1920
	ds_load_u8 v190, v91 offset:1856
	ds_load_u8 v191, v91 offset:1872
	ds_load_u8 v192, v91 offset:1808
	ds_load_u8 v193, v91 offset:1888
	ds_load_u8 v194, v91 offset:1824
	ds_load_u8 v195, v91 offset:1904
	ds_load_u8 v196, v91 offset:1840
	ds_load_u8 v197, v91 offset:1728
	ds_load_u8 v198, v91 offset:1792
	ds_load_u8 v199, v91 offset:1744
	ds_load_u8 v200, v91 offset:1680
	ds_load_u8 v201, v91 offset:1760
	ds_load_u8 v202, v91 offset:1696
	ds_load_u8 v203, v91 offset:1776
	ds_load_u8 v204, v91 offset:1712
	ds_load_u8 v205, v91 offset:1664
	ds_load_u8 v206, v91 offset:1600
	ds_load_u8 v207, v91 offset:1616
	ds_load_u8 v208, v91 offset:1552
	ds_load_u8 v209, v91 offset:1632
	ds_load_u8 v210, v91 offset:1568
	ds_load_u8 v211, v91 offset:1648
	ds_load_u8 v212, v91 offset:1584
	.loc	1 921 34                        ; ragged.py:921:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v83, v93
	ds_store_b8_d16_hi v83, v94 offset:512
	ds_store_b8_d16_hi v83, v96 offset:1024
	ds_store_b8_d16_hi v83, v98 offset:1536
	ds_store_b8_d16_hi v83, v100 offset:2048
	ds_store_b8_d16_hi v83, v102 offset:2560
	ds_store_b8_d16_hi v83, v104 offset:3072
	ds_store_b8_d16_hi v83, v106 offset:3584
	ds_store_b8_d16_hi v83, v108 offset:4096
	ds_store_b8 v83, v107 offset:4608
	ds_store_b8 v83, v105 offset:5120
	ds_store_b8 v83, v103 offset:5632
	ds_store_b8 v83, v101 offset:6144
	ds_store_b8 v83, v99 offset:6656
	ds_store_b8 v83, v97 offset:7168
	ds_store_b8 v83, v95 offset:7680
	ds_store_b8_d16_hi v84, v93
	ds_store_b8_d16_hi v84, v95 offset:512
	ds_store_b8_d16_hi v84, v97 offset:1024
	ds_store_b8_d16_hi v84, v99 offset:1536
	ds_store_b8_d16_hi v84, v101 offset:2048
	ds_store_b8_d16_hi v84, v103 offset:2560
	ds_store_b8_d16_hi v84, v105 offset:3072
	ds_store_b8_d16_hi v84, v107 offset:3584
	ds_store_b8 v84, v108 offset:4096
	ds_store_b8 v84, v106 offset:4608
	ds_store_b8 v84, v104 offset:5120
	ds_store_b8 v84, v102 offset:5632
	ds_store_b8 v84, v100 offset:6144
	ds_store_b8 v84, v98 offset:6656
	ds_store_b8 v84, v96 offset:7168
	ds_store_b8 v84, v94 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[93:96], v85 offset1:8
	.loc	1 922 27                        ; ragged.py:922:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[93:94], v[126:127], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[95:96], v[126:127], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[93:94], v[128:129], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[95:96], v[128:129], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[93:94], v[130:131], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[95:96], v[130:131], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[93:94], v[132:133], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[95:96], v[132:133], v[57:64] neg_lo:[1,1,0]
	v_perm_b32 v93, v118, v117, 0xc0c0004
	v_perm_b32 v94, v110, v109, 0xc0c0004
	v_perm_b32 v95, v142, v141, 0xc0c0004
	v_perm_b32 v96, v134, v125, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v98, v94, 16, v93
	v_perm_b32 v93, v120, v119, 0xc0c0004
	v_lshl_or_b32 v97, v96, 16, v95
	v_perm_b32 v94, v113, v112, 0xc0c0004
	v_perm_b32 v95, v144, v143, 0xc0c0004
	v_perm_b32 v96, v136, v135, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v100, v94, 16, v93
	v_perm_b32 v93, v122, v121, 0xc0c0004
	v_lshl_or_b32 v99, v96, 16, v95
	v_perm_b32 v94, v115, v114, 0xc0c0004
	v_perm_b32 v95, v146, v145, 0xc0c0004
	v_perm_b32 v96, v138, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v102, v94, 16, v93
	v_perm_b32 v93, v148, v147, 0xc0c0004
	v_lshl_or_b32 v101, v96, 16, v95
	v_perm_b32 v94, v140, v139, 0xc0c0004
	v_perm_b32 v95, v124, v123, 0xc0c0004
	v_perm_b32 v96, v116, v186, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v103, v94, 16, v93
	v_lshl_or_b32 v104, v96, 16, v95
	.loc	1 921 34                        ; ragged.py:921:34
	ds_load_2addr_stride64_b64 v[93:96], v86 offset1:8
	.loc	1 922 27                        ; ragged.py:922:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[93:94], v[97:98], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[95:96], v[97:98], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[93:94], v[99:100], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[95:96], v[99:100], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[93:94], v[101:102], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[95:96], v[101:102], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[93:94], v[103:104], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[95:96], v[103:104], v[57:64] neg_lo:[1,1,0]
	v_perm_b32 v93, v150, v174, 0xc0c0004
	v_perm_b32 v94, v173, v165, 0xc0c0004
	v_perm_b32 v95, v111, v158, 0xc0c0004
	v_perm_b32 v96, v157, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v98, v94, 16, v93
	v_perm_b32 v93, v176, v175, 0xc0c0004
	v_lshl_or_b32 v97, v96, 16, v95
	v_perm_b32 v94, v168, v167, 0xc0c0004
	v_perm_b32 v95, v160, v159, 0xc0c0004
	v_perm_b32 v96, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v100, v94, 16, v93
	v_perm_b32 v93, v178, v177, 0xc0c0004
	v_lshl_or_b32 v99, v96, 16, v95
	v_perm_b32 v94, v170, v169, 0xc0c0004
	v_perm_b32 v95, v162, v161, 0xc0c0004
	v_perm_b32 v96, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v102, v94, 16, v93
	v_perm_b32 v93, v180, v179, 0xc0c0004
	v_lshl_or_b32 v101, v96, 16, v95
	v_perm_b32 v94, v172, v171, 0xc0c0004
	v_perm_b32 v95, v164, v163, 0xc0c0004
	v_perm_b32 v96, v156, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v104, v94, 16, v93
	v_lshl_or_b32 v103, v96, 16, v95
	.loc	1 921 34                        ; ragged.py:921:34
	ds_load_2addr_stride64_b64 v[93:96], v87 offset1:8
	.loc	1 922 27                        ; ragged.py:922:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[93:94], v[97:98], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[95:96], v[97:98], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[93:94], v[99:100], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[95:96], v[99:100], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[93:94], v[101:102], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[95:96], v[101:102], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[93:94], v[103:104], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[95:96], v[103:104], v[57:64] neg_lo:[1,1,0]
	v_perm_b32 v93, v198, v190, 0xc0c0004
	v_perm_b32 v94, v189, v181, 0xc0c0004
	v_perm_b32 v95, v166, v206, 0xc0c0004
	v_perm_b32 v96, v205, v197, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v98, v94, 16, v93
	v_perm_b32 v93, v192, v191, 0xc0c0004
	v_lshl_or_b32 v97, v96, 16, v95
	v_perm_b32 v94, v183, v182, 0xc0c0004
	v_perm_b32 v95, v208, v207, 0xc0c0004
	v_perm_b32 v96, v200, v199, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v100, v94, 16, v93
	v_perm_b32 v93, v194, v193, 0xc0c0004
	v_lshl_or_b32 v99, v96, 16, v95
	v_perm_b32 v94, v185, v184, 0xc0c0004
	v_perm_b32 v95, v210, v209, 0xc0c0004
	v_perm_b32 v96, v202, v201, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v102, v94, 16, v93
	v_perm_b32 v93, v212, v211, 0xc0c0004
	v_lshl_or_b32 v101, v96, 16, v95
	v_perm_b32 v94, v204, v203, 0xc0c0004
	v_perm_b32 v95, v196, v195, 0xc0c0004
	v_perm_b32 v96, v188, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v103, v94, 16, v93
	v_lshl_or_b32 v104, v96, 16, v95
	.loc	1 921 34                        ; ragged.py:921:34
	ds_load_2addr_stride64_b64 v[93:96], v88 offset1:8
	.loc	1 922 27                        ; ragged.py:922:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[93:94], v[97:98], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[95:96], v[97:98], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[93:94], v[99:100], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[95:96], v[99:100], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[93:94], v[101:102], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[95:96], v[101:102], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[93:94], v[103:104], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[95:96], v[103:104], v[57:64] neg_lo:[1,1,0]
	.loc	1 902 19                        ; ragged.py:902:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_readlane_b32 s12, v213, 0
	.loc	1 933 19 is_stmt 1              ; ragged.py:933:19
	v_cvt_f32_i32_e32 v99, v1
	v_cvt_f32_i32_e32 v98, v2
	v_cvt_f32_i32_e32 v97, v3
	v_cvt_f32_i32_e32 v96, v4
	v_cvt_f32_i32_e32 v95, v5
	v_cvt_f32_i32_e32 v94, v6
	v_cvt_f32_i32_e32 v93, v7
	v_cvt_f32_i32_e32 v92, v8
	v_cvt_f32_i32_e32 v91, v9
	v_cvt_f32_i32_e32 v90, v10
	v_cvt_f32_i32_e32 v89, v11
	v_cvt_f32_i32_e32 v88, v12
	v_cvt_f32_i32_e32 v87, v13
	v_cvt_f32_i32_e32 v86, v14
	v_cvt_f32_i32_e32 v85, v15
	v_cvt_f32_i32_e32 v84, v16
	v_cvt_f32_i32_e32 v83, v17
	v_cvt_f32_i32_e32 v82, v18
	v_cvt_f32_i32_e32 v81, v19
	v_cvt_f32_i32_e32 v80, v20
	v_cvt_f32_i32_e32 v79, v21
	v_cvt_f32_i32_e32 v78, v22
	v_cvt_f32_i32_e32 v77, v23
	v_cvt_f32_i32_e32 v76, v24
	v_cvt_f32_i32_e32 v75, v25
	v_cvt_f32_i32_e32 v74, v26
	v_cvt_f32_i32_e32 v73, v27
	v_cvt_f32_i32_e32 v72, v28
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
	v_mov_b32_e32 v1, v71
	v_readlane_b32 s13, v213, 1
	v_readlane_b32 s14, v213, 2
	v_readlane_b32 s15, v213, 3
.LBB0_7:                                ; %._crit_edge
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v34, s66, v69
	.loc	1 936 33                        ; ragged.py:936:33
	s_mul_i32 s0, s50, s64
	.loc	1 935 36                        ; ragged.py:935:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s13, 0xffff
	.loc	1 936 21                        ; ragged.py:936:21
	s_add_i32 s8, s66, s0
	s_mov_b32 s7, 0x31027000
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v37, 16, v34
	.loc	1 936 21                        ; ragged.py:936:21
	v_add_lshl_u32 v38, s8, v69, 1
	.loc	1 888 18                        ; ragged.py:888:18
	v_or_b32_e32 v36, 32, v34
	v_or_b32_e32 v35, 48, v34
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e64 s2, s64, v34
	v_cmp_gt_i32_e64 s1, s64, v37
	.loc	1 935 36                        ; ragged.py:935:36
	v_add_nc_u32_e32 v39, 32, v38
	v_add_nc_u32_e32 v40, 64, v38
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e64 s0, s64, v36
	.loc	1 935 36                        ; ragged.py:935:36
	v_cndmask_b32_e64 v34, 0x80000000, v38, s2
	v_add_nc_u32_e32 v38, 0x60, v38
	.loc	1 890 20                        ; ragged.py:890:20
	v_cmp_gt_i32_e32 vcc_lo, s64, v35
	.loc	1 935 36                        ; ragged.py:935:36
	v_cndmask_b32_e64 v37, 0x80000000, v39, s1
	v_cndmask_b32_e64 v36, 0x80000000, v40, s0
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s12
	v_cndmask_b32_e32 v35, 0x80000000, v38, vcc_lo
	s_clause 0x3
	buffer_load_u16 v43, v34, s[4:7], 0 offen
	buffer_load_u16 v44, v37, s[4:7], 0 offen
	buffer_load_u16 v45, v36, s[4:7], 0 offen
	buffer_load_u16 v46, v35, s[4:7], 0 offen
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v34, s47, v0
	.loc	1 942 36                        ; ragged.py:942:36
	v_add_lshl_u32 v35, s55, v0, 1
	s_and_b32 s5, s15, 0xffff
	s_mov_b32 s4, s14
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_mul_lo_u32 v37, s65, v69
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s3, s65, v34
	.loc	1 947 17                        ; ragged.py:947:17
	v_and_b32_e32 v36, 0xf0, v0
	.loc	1 1009 22                       ; ragged.py:1009:22
	s_mul_i32 s8, s8, s65
	.loc	1 947 17                        ; ragged.py:947:17
	v_and_b32_e32 v1, 28, v1
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_mov_b32 s50, s6
	.loc	1 942 36                        ; ragged.py:942:36
	v_cndmask_b32_e64 v34, 0x80000000, v35, s3
	.loc	1 889 36                        ; ragged.py:889:36
	v_lshrrev_b32_e32 v35, 1, v70
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_add3_u32 v42, s8, s47, v37
	.loc	1 947 17                        ; ragged.py:947:17
	v_lshl_add_u32 v49, v36, 2, 0
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_mov_b32 s51, s7
	.loc	1 942 36                        ; ragged.py:942:36
	buffer_load_u16 v47, v34, s[4:7], 0 offen
	.loc	1 889 36                        ; ragged.py:889:36
	v_lshrrev_b32_e32 v34, 4, v0
	.loc	1 947 17                        ; ragged.py:947:17
	v_lshlrev_b32_e32 v0, 5, v0
	.loc	1 1009 22                       ; ragged.py:1009:22
	v_lshl_add_u32 v59, s65, 4, v42
	v_lshl_add_u32 v60, s65, 5, v42
	.loc	1 947 17                        ; ragged.py:947:17
	s_waitcnt lgkmcnt(0)
	.loc	1 889 36                        ; ragged.py:889:36
	v_and_or_b32 v48, v34, 1, v35
	.loc	1 947 17                        ; ragged.py:947:17
	v_and_b32_e32 v0, 32, v0
	s_barrier
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_and_b32 s49, s49, 0xffff
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v57, 2, v48
	.loc	1 889 18 is_stmt 0              ; ragged.py:889:18
	v_or_b32_e32 v58, s47, v48
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v56, 4, v48
	v_or_b32_e32 v55, 6, v48
	v_or_b32_e32 v34, 0x8e, v48
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v107, s47, v57
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v54, 8, v48
	.loc	1 947 17 is_stmt 1              ; ragged.py:947:17
	v_add3_u32 v49, v49, v0, v1
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s3, s65, v58
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v106, s47, v56
	.loc	1 889 36 is_stmt 0              ; ragged.py:889:36
	v_or_b32_e32 v53, 10, v48
	v_or_b32_e32 v35, 0x8c, v48
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v105, s47, v55
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v52, 12, v48
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v61, s47, v34
	.loc	1 1009 13 is_stmt 1             ; ragged.py:1009:13
	v_add_lshl_u32 v121, v59, v48, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s18, s65, v107
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v104, s47, v54
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s2, s3
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v51, 14, v48
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v58, v42, v57, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s17, s65, v106
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v37, 0x88, v48
	.loc	1 889 18 is_stmt 0              ; ragged.py:889:18
	v_or_b32_e32 v103, s47, v53
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v41, 0x80, v48
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v62, s47, v35
	.loc	1 1009 13 is_stmt 1             ; ragged.py:1009:13
	v_add_lshl_u32 v108, v42, v56, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s16, s65, v105
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v38, 0x86, v48
	.loc	1 889 18 is_stmt 0              ; ragged.py:889:18
	v_or_b32_e32 v102, s47, v52
	.loc	1 891 20 is_stmt 1              ; ragged.py:891:20
	v_cmp_gt_i32_e64 s4, s65, v61
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v40, 0x82, v48
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v109, v42, v55, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s15, s65, v104
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v39, 0x84, v48
	.loc	1 889 18 is_stmt 0              ; ragged.py:889:18
	v_or_b32_e32 v101, s47, v51
	v_or_b32_e32 v64, s47, v37
	.loc	1 1009 13 is_stmt 1             ; ragged.py:1009:13
	v_add_lshl_u32 v110, v42, v54, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s14, s65, v103
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v100, s47, v41
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s5, s65, v62
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v69, s47, v38
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v111, v42, v53, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s13, s65, v102
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v71, s47, v40
	v_or_b32_e32 v70, s47, v39
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v112, v42, v52, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s12, s65, v101
	v_cmp_gt_i32_e64 s7, s65, v64
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v113, v42, v51, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s11, s65, v100
	v_cmp_gt_i32_e64 s8, s65, v69
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v114, v42, v41, 2
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s10, s65, v71
	v_cmp_gt_i32_e64 s9, s65, v70
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v115, v42, v40, 2
	v_add_lshl_u32 v116, v42, v39, 2
	v_add_lshl_u32 v117, v42, v38, 2
	v_add_lshl_u32 v118, v42, v37, 2
	v_add_lshl_u32 v120, v42, v35, 2
	v_add_lshl_u32 v122, v59, v57, 2
	v_add_lshl_u32 v123, v59, v56, 2
	v_add_lshl_u32 v124, v59, v55, 2
	v_add_lshl_u32 v125, v59, v54, 2
	v_add_lshl_u32 v126, v59, v53, 2
	v_add_lshl_u32 v127, v59, v52, 2
	v_add_lshl_u32 v128, v59, v51, 2
	v_add_lshl_u32 v129, v59, v41, 2
	v_add_lshl_u32 v130, v59, v40, 2
	v_add_lshl_u32 v131, v59, v39, 2
	v_add_lshl_u32 v132, v59, v38, 2
	v_add_lshl_u32 v133, v59, v37, 2
	v_add_lshl_u32 v135, v59, v35, 2
	v_add_lshl_u32 v136, v60, v48, 2
	v_add_lshl_u32 v137, v60, v57, 2
	v_add_lshl_u32 v138, v60, v56, 2
	.loc	1 1009 22 is_stmt 0             ; ragged.py:1009:22
	s_waitcnt vmcnt(4)
	v_mad_u64_u32 v[0:1], null, s65, 48, v[42:43]
	.loc	1 935 36 is_stmt 1              ; ragged.py:935:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v44, 16, v44
	v_lshlrev_b32_e32 v43, 16, v43
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v1, v42, v48, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 940 17                        ; ragged.py:940:17
	v_dual_mul_f32 v82, v82, v44 :: v_dual_mul_f32 v95, v95, v43
	.loc	1 947 17                        ; ragged.py:947:17
	v_lshl_add_u32 v50, v36, 1, 0
	.loc	1 889 36                        ; ragged.py:889:36
	v_or_b32_e32 v36, 0x8a, v48
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v1, 0x80000000, v1, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s1, s3
	.loc	1 940 17                        ; ragged.py:940:17
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v94, v94, v43 :: v_dual_lshlrev_b32 v45, 16, v45
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v61, 0x80000000, v121, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s2, s18
	.loc	1 889 18                        ; ragged.py:889:18
	v_or_b32_e32 v63, s47, v36
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v58, 0x80000000, v58, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s2, s17
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v119, v42, v36, 2
	v_cndmask_b32_e64 v62, 0x80000000, v108, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s2, s16
	.loc	1 891 20                        ; ragged.py:891:20
	v_cmp_gt_i32_e64 s6, s65, v63
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v63, 0x80000000, v109, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s2, s15
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v42, v42, v34, 2
	v_cndmask_b32_e64 v64, 0x80000000, v110, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s2, s14
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v91, v91, v43
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v69, 0x80000000, v111, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s2, s13
	.loc	1 940 17                        ; ragged.py:940:17
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v76, v76, v44 :: v_dual_lshlrev_b32 v47, 16, v47
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v70, 0x80000000, v112, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s2, s12
	.loc	1 940 17                        ; ragged.py:940:17
	v_dual_mul_f32 v89, v89, v43 :: v_dual_lshlrev_b32 v46, 16, v46
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v71, 0x80000000, v113, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s2, s11
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v99, v99, v43
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v100, 0x80000000, v114, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s2, s10
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v98, v98, v43
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v101, 0x80000000, v115, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s2, s9
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v97, v97, v43
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v102, 0x80000000, v116, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s2, s8
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v96, v96, v43
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v103, 0x80000000, v117, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s2, s7
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v93, v93, v43
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v104, 0x80000000, v118, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s2, s6
	.loc	1 940 17                        ; ragged.py:940:17
	v_dual_mul_f32 v92, v92, v43 :: v_dual_mul_f32 v83, v83, v44
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v105, 0x80000000, v119, s19
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s19, s2, s5
	s_and_b32 s2, s2, s4
	.loc	1 940 17                        ; ragged.py:940:17
	v_dual_mul_f32 v90, v90, v43 :: v_dual_mul_f32 v81, v81, v44
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s2, s1, s18
	.loc	1 940 17                        ; ragged.py:940:17
	v_dual_mul_f32 v88, v88, v43 :: v_dual_mul_f32 v79, v79, v44
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v107, 0x80000000, v122, s2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s2, s1, s17
	.loc	1 940 17                        ; ragged.py:940:17
	v_dual_mul_f32 v87, v87, v43 :: v_dual_mul_f32 v80, v80, v44
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v108, 0x80000000, v123, s2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s2, s1, s16
	.loc	1 940 17                        ; ragged.py:940:17
	v_dual_mul_f32 v86, v86, v43 :: v_dual_mul_f32 v77, v77, v44
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v109, 0x80000000, v124, s2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s2, s1, s15
	.loc	1 940 17                        ; ragged.py:940:17
	v_dual_mul_f32 v85, v85, v43 :: v_dual_mul_f32 v78, v78, v44
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v110, 0x80000000, v125, s2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s2, s1, s14
	.loc	1 940 17                        ; ragged.py:940:17
	v_dual_mul_f32 v43, v84, v43 :: v_dual_mul_f32 v74, v74, v44
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v111, 0x80000000, v126, s2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s2, s1, s13
	.loc	1 940 17                        ; ragged.py:940:17
	v_dual_mul_f32 v75, v75, v44 :: v_dual_mul_f32 v32, v32, v45
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v112, 0x80000000, v127, s2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s2, s1, s12
	.loc	1 940 17                        ; ragged.py:940:17
	v_dual_mul_f32 v73, v73, v44 :: v_dual_mul_f32 v30, v30, v45
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v113, 0x80000000, v128, s2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s2, s1, s11
	.loc	1 940 17                        ; ragged.py:940:17
	v_dual_mul_f32 v72, v72, v44 :: v_dual_mul_f32 v33, v33, v45
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v114, 0x80000000, v129, s2
	.loc	1 940 17                        ; ragged.py:940:17
	v_dual_mul_f32 v68, v68, v44 :: v_dual_mul_f32 v31, v31, v45
	v_dual_mul_f32 v67, v67, v44 :: v_dual_mul_f32 v84, v28, v45
	v_mul_f32_e32 v66, v66, v44
	v_dual_mul_f32 v44, v65, v44 :: v_dual_mul_f32 v121, v27, v45
	v_mul_f32_e32 v65, v29, v45
	v_dual_mul_f32 v122, v26, v45 :: v_dual_mul_f32 v17, v17, v46
	v_dual_mul_f32 v123, v25, v45 :: v_dual_mul_f32 v16, v16, v46
	v_mul_f32_e32 v124, v24, v45
	v_mul_f32_e32 v125, v23, v45
	v_mul_f32_e32 v126, v22, v45
	v_dual_mul_f32 v127, v21, v45 :: v_dual_mul_f32 v10, v10, v46
	v_mul_f32_e32 v128, v20, v45
	v_dual_mul_f32 v129, v19, v45 :: v_dual_mul_f32 v8, v8, v46
	v_dual_mul_f32 v45, v18, v45 :: v_dual_mul_f32 v4, v4, v46
	.loc	1 947 17                        ; ragged.py:947:17
	ds_store_b32 v49, v47
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[18:21], v50
	ds_load_b128 v[22:25], v50 offset:16
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s2, s1, s10
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v47, v15, v46
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v115, 0x80000000, v130, s2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s2, s1, s9
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v49, v14, v46
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v116, 0x80000000, v131, s2
	.loc	1 940 17                        ; ragged.py:940:17
	v_mul_f32_e32 v130, v13, v46
	v_mul_f32_e32 v131, v12, v46
	.loc	1 947 17                        ; ragged.py:947:17
	ds_load_b128 v[12:15], v50 offset:512
	ds_load_b128 v[26:29], v50 offset:528
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s2, s1, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v134, v59, v36, 2
	v_cndmask_b32_e64 v117, 0x80000000, v132, s2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s2, s1, s7
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v59, v59, v34, 2
	v_cndmask_b32_e64 v118, 0x80000000, v133, s2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s2, s1, s6
	.loc	1 940 17                        ; ragged.py:940:17
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v11, v11, v46 :: v_dual_mul_f32 v50, v98, v19
	v_dual_mul_f32 v9, v9, v46 :: v_dual_mul_f32 v96, v96, v21
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v7, v7, v46 :: v_dual_mul_f32 v94, v94, v23
	v_dual_mul_f32 v6, v6, v46 :: v_dual_mul_f32 v97, v97, v20
	v_dual_mul_f32 v5, v5, v46 :: v_dual_mul_f32 v92, v92, v25
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v3, v3, v46 :: v_dual_mul_f32 v90, v90, v13
	v_dual_mul_f32 v2, v2, v46 :: v_dual_mul_f32 v93, v93, v24
	.loc	1 947 17                        ; ragged.py:947:17
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v46, v99, v18 :: v_dual_mul_f32 v85, v85, v28
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v119, 0x80000000, v134, s2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s2, s1, s5
	s_and_b32 s1, s1, s4
	.loc	1 947 17                        ; ragged.py:947:17
	v_dual_mul_f32 v95, v95, v22 :: v_dual_mul_f32 v88, v88, v15
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v59, 0x80000000, v59, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s3
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v106, 0x80000000, v120, s19
	v_cndmask_b32_e64 v120, 0x80000000, v135, s2
	.loc	1 947 17                        ; ragged.py:947:17
	v_dual_mul_f32 v91, v91, v12 :: v_dual_mul_f32 v86, v86, v27
	v_dual_mul_f32 v89, v89, v14 :: v_dual_mul_f32 v82, v82, v19
	v_dual_mul_f32 v87, v87, v26 :: v_dual_mul_f32 v80, v80, v21
	v_dual_mul_f32 v43, v43, v29 :: v_dual_mul_f32 v78, v78, v23
	v_dual_mul_f32 v83, v83, v18 :: v_dual_mul_f32 v76, v76, v25
	v_dual_mul_f32 v81, v81, v20 :: v_dual_mul_f32 v74, v74, v13
	v_dual_mul_f32 v79, v79, v22 :: v_dual_mul_f32 v72, v72, v15
	v_dual_mul_f32 v77, v77, v24 :: v_dual_mul_f32 v68, v68, v26
	v_dual_mul_f32 v75, v75, v12 :: v_dual_mul_f32 v44, v44, v29
	v_dual_mul_f32 v73, v73, v14 :: v_dual_mul_f32 v66, v66, v28
	v_dual_mul_f32 v67, v67, v27 :: v_dual_mul_f32 v30, v30, v21
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1e
	buffer_store_b32 v46, v1, s[48:51], 0 offen
	buffer_store_b32 v50, v58, s[48:51], 0 offen
	buffer_store_b32 v97, v62, s[48:51], 0 offen
	buffer_store_b32 v96, v63, s[48:51], 0 offen
	buffer_store_b32 v95, v64, s[48:51], 0 offen
	buffer_store_b32 v94, v69, s[48:51], 0 offen
	buffer_store_b32 v93, v70, s[48:51], 0 offen
	buffer_store_b32 v92, v71, s[48:51], 0 offen
	buffer_store_b32 v91, v100, s[48:51], 0 offen
	buffer_store_b32 v90, v101, s[48:51], 0 offen
	buffer_store_b32 v89, v102, s[48:51], 0 offen
	buffer_store_b32 v88, v103, s[48:51], 0 offen
	buffer_store_b32 v87, v104, s[48:51], 0 offen
	buffer_store_b32 v86, v105, s[48:51], 0 offen
	buffer_store_b32 v85, v106, s[48:51], 0 offen
	buffer_store_b32 v43, v42, s[48:51], 0 offen
	buffer_store_b32 v83, v61, s[48:51], 0 offen
	buffer_store_b32 v82, v107, s[48:51], 0 offen
	buffer_store_b32 v81, v108, s[48:51], 0 offen
	buffer_store_b32 v80, v109, s[48:51], 0 offen
	buffer_store_b32 v79, v110, s[48:51], 0 offen
	buffer_store_b32 v78, v111, s[48:51], 0 offen
	buffer_store_b32 v77, v112, s[48:51], 0 offen
	buffer_store_b32 v76, v113, s[48:51], 0 offen
	buffer_store_b32 v75, v114, s[48:51], 0 offen
	buffer_store_b32 v74, v115, s[48:51], 0 offen
	buffer_store_b32 v73, v116, s[48:51], 0 offen
	buffer_store_b32 v72, v117, s[48:51], 0 offen
	buffer_store_b32 v68, v118, s[48:51], 0 offen
	buffer_store_b32 v67, v119, s[48:51], 0 offen
	buffer_store_b32 v66, v120, s[48:51], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v136, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s18
	.loc	1 947 17                        ; ragged.py:947:17
	v_dual_mul_f32 v33, v33, v18 :: v_dual_mul_f32 v32, v32, v19
	v_dual_mul_f32 v98, v121, v24 :: v_dual_mul_f32 v99, v122, v25
	v_mul_f32_e32 v121, v123, v12
	v_dual_mul_f32 v9, v9, v12 :: v_dual_mul_f32 v2, v2, v29
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v12, 0x80000000, v137, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s17
	.loc	1 947 17                        ; ragged.py:947:17
	v_dual_mul_f32 v31, v31, v20 :: v_dual_mul_f32 v84, v84, v23
	v_dual_mul_f32 v65, v65, v22 :: v_dual_mul_f32 v122, v124, v13
	v_mul_f32_e32 v123, v125, v14
	v_dual_mul_f32 v125, v127, v26 :: v_dual_mul_f32 v16, v16, v19
	v_dual_mul_f32 v19, v49, v21 :: v_dual_mul_f32 v6, v6, v15
	v_dual_mul_f32 v21, v131, v23 :: v_dual_mul_f32 v8, v8, v13
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v13, 0x80000000, v138, s1
	s_clause 0x1
	buffer_store_b32 v44, v59, s[48:51], 0 offen
	buffer_store_b32 v33, v1, s[48:51], 0 offen
	v_add_lshl_u32 v1, v60, v55, 2
	s_clause 0x1
	buffer_store_b32 v32, v12, s[48:51], 0 offen
	buffer_store_b32 v31, v13, s[48:51], 0 offen
	v_add_lshl_u32 v12, v60, v54, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s16
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v13, v60, v53, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s15
	.loc	1 947 17                        ; ragged.py:947:17
	v_mul_f32_e32 v7, v7, v14
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v14, v60, v52, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s14
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v30, v1, s[48:51], 0 offen
	buffer_store_b32 v65, v12, s[48:51], 0 offen
	v_cndmask_b32_e64 v13, 0x80000000, v13, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s13
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v1, v60, v51, 2
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	v_add_lshl_u32 v12, v60, v41, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s12
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v84, v13, s[48:51], 0 offen
	buffer_store_b32 v98, v14, s[48:51], 0 offen
	v_add_lshl_u32 v13, v60, v40, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s11
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v14, v60, v39, 2
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
	buffer_store_b32 v99, v1, s[48:51], 0 offen
	buffer_store_b32 v121, v12, s[48:51], 0 offen
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	v_add_lshl_u32 v1, v60, v38, 2
	v_add_lshl_u32 v12, v60, v37, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s8
	.loc	1 947 17                        ; ragged.py:947:17
	v_mul_f32_e32 v126, v128, v27
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v122, v13, s[48:51], 0 offen
	buffer_store_b32 v123, v14, s[48:51], 0 offen
	v_add_lshl_u32 v13, v60, v36, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s7
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v14, v60, v35, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s6
	.loc	1 947 17                        ; ragged.py:947:17
	v_mul_f32_e32 v127, v129, v28
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v13, 0x80000000, v13, s1
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s1, s0, s5
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v124, v1, s[48:51], 0 offen
	buffer_store_b32 v125, v12, s[48:51], 0 offen
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	v_add_lshl_u32 v1, v60, v34, 2
	v_add_lshl_u32 v12, v0, v48, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, s0, s4
	.loc	1 947 17                        ; ragged.py:947:17
	v_mul_f32_e32 v45, v45, v29
	v_dual_mul_f32 v17, v17, v18 :: v_dual_mul_f32 v10, v10, v25
	v_mul_f32_e32 v18, v47, v20
	v_mul_f32_e32 v20, v130, v22
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v126, v13, s[48:51], 0 offen
	buffer_store_b32 v127, v14, s[48:51], 0 offen
	v_add_lshl_u32 v13, v0, v57, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s3
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v14, v0, v56, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s18
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v45, v1, s[48:51], 0 offen
	buffer_store_b32 v17, v12, s[48:51], 0 offen
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s17
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v1, v0, v55, 2
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	v_add_lshl_u32 v12, v0, v54, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s16
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v16, v13, s[48:51], 0 offen
	buffer_store_b32 v18, v14, s[48:51], 0 offen
	v_add_lshl_u32 v13, v0, v53, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s15
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v14, v0, v52, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s14
	.loc	1 947 17                        ; ragged.py:947:17
	v_dual_mul_f32 v11, v11, v24 :: v_dual_mul_f32 v4, v4, v27
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s13
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v19, v1, s[48:51], 0 offen
	buffer_store_b32 v20, v12, s[48:51], 0 offen
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	v_add_lshl_u32 v1, v0, v51, 2
	s_clause 0x1
	buffer_store_b32 v21, v13, s[48:51], 0 offen
	buffer_store_b32 v11, v14, s[48:51], 0 offen
	v_add_lshl_u32 v11, v0, v41, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s12
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v12, v0, v40, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s11
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v13, v0, v39, 2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s10
	.loc	1 1009 13                       ; ragged.py:1009:13
	s_clause 0x1
	buffer_store_b32 v10, v1, s[48:51], 0 offen
	buffer_store_b32 v9, v11, s[48:51], 0 offen
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s9
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v1, v0, v38, 2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	s_clause 0x1
	buffer_store_b32 v8, v12, s[48:51], 0 offen
	buffer_store_b32 v7, v13, s[48:51], 0 offen
	v_add_lshl_u32 v7, v0, v37, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s8
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v8, v0, v36, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s7
	.loc	1 1009 13                       ; ragged.py:1009:13
	v_add_lshl_u32 v9, v0, v35, 2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	v_add_lshl_u32 v0, v0, v34, 2
	.loc	1 1007 20                       ; ragged.py:1007:20
	s_and_b32 s0, vcc_lo, s6
	.loc	1 947 17                        ; ragged.py:947:17
	v_mul_f32_e32 v5, v5, v26
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
	buffer_store_b32 v6, v1, s[48:51], 0 offen
	buffer_store_b32 v5, v7, s[48:51], 0 offen
	buffer_store_b32 v4, v8, s[48:51], 0 offen
	buffer_store_b32 v3, v9, s[48:51], 0 offen
	buffer_store_b32 v2, v0, s[48:51], 0 offen
	.loc	1 856 5                         ; ragged.py:856:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 214
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10720
; TotalNumSgprs: 107
; NumVgprs: 214
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 107
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     107
    .sgpr_spill_count: 4
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
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
