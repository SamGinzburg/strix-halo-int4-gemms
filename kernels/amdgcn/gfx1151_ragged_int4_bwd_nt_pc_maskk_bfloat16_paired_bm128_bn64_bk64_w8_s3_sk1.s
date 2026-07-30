	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 970 0                         ; ragged.py:970:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x30
	s_load_b128 s[48:51], s[0:1], 0x20
.Ltmp0:
	.loc	1 998 20 prologue_end           ; ragged.py:998:20
	s_abs_i32 s8, s2
	s_clause 0x1
	s_load_b256 s[36:43], s[0:1], 0x0
	s_load_b32 s30, s[0:1], 0x38
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_lshrrev_b32_e32 v81, 5, v0
	v_bfe_i32 v3, v0, 7, 1
	v_and_b32_e32 v75, 15, v0
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_and_b32_e32 v77, 32, v0
	.loc	1 1011 18                       ; ragged.py:1011:18
	v_and_b32_e32 v33, 31, v0
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v4, 16, v81
	v_or_b32_e32 v5, 24, v81
	v_or_b32_e32 v6, 32, v81
	v_or_b32_e32 v7, 40, v81
	v_or_b32_e32 v8, 48, v81
	v_or_b32_e32 v9, 56, v81
	v_and_b32_e32 v79, 0x88, v3
	v_and_b32_e32 v78, 0x7f, v0
	v_lshlrev_b32_e32 v80, 1, v0
	v_and_b32_e32 v76, 0xc0, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:995:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s56, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:996:21 ]
	s_add_i32 s5, s57, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_ashr_i32 s6, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_ashr_i32 s7, s5, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_lshr_b32 s6, s6, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_lshr_b32 s7, s7, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_add_i32 s4, s4, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_add_i32 s5, s5, s7
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_ashr_i32 s47, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_ashr_i32 s46, s5, 6
	s_mov_b64 s[28:29], s[42:43]
.Ltmp11:
	.loc	1 997 27 is_stmt 1              ; ragged.py:997:27
	s_mul_i32 s4, s46, s47
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 998 20                        ; ragged.py:998:20
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	v_mov_b32_e32 v1, 0
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s6, s7
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s6, s46
	.loc	1 998 20                        ; ragged.py:998:20
	s_xor_b32 s1, s5, s7
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_cvt_f32_u32 s8, s6
	.loc	1 998 20                        ; ragged.py:998:20
	s_sub_i32 s26, s1, s7
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s1, 0, s6
	.loc	1 999 22                        ; ragged.py:999:22
	s_mul_i32 s4, s26, s4
	.loc	1 1000 17                       ; ragged.py:1000:17
	v_rcp_iflag_f32_e32 v2, s8
	.loc	1 999 16                        ; ragged.py:999:16
	s_sub_i32 s4, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s5, s4
	v_readfirstlane_b32 s0, v2
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v2, 8, v81
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_mul_f32 s0, s0, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s0, s0
	s_mul_i32 s1, s1, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s1, s0, s1
	s_add_i32 s0, s0, s1
	s_xor_b32 s1, s4, s46
	s_mul_hi_u32 s0, s5, s0
	s_ashr_i32 s52, s1, 31
	s_mul_i32 s7, s0, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s1, s5, s7
	s_add_i32 s5, s0, 1
	s_sub_i32 s7, s1, s6
	s_cmp_ge_u32 s1, s6
	s_cselect_b32 s0, s5, s0
	s_cselect_b32 s1, s7, s1
	s_add_i32 s5, s0, 1
	s_cmp_ge_u32 s1, s6
	s_cselect_b32 s0, s5, s0
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_ashr_i32 s27, s26, 31
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_xor_b32 s42, s0, s52
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_lshl_b64 s[0:1], s[26:27], 2
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s5, s42, s52
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1001 24                       ; ragged.py:1001:24
	s_mul_i32 s6, s5, s46
	.loc	1 1003 18                       ; ragged.py:1003:18
	s_lshl_b32 s27, s5, 7
	.loc	1 1001 17                       ; ragged.py:1001:17
	s_sub_i32 s58, s4, s6
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v74, s27, v81
	.loc	1 1004 18                       ; ragged.py:1004:18
	s_lshl_b32 s25, s58, 6
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_add_u32 s0, s48, s0
	s_addc_u32 s1, s49, s1
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v73, s27, v2
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_load_b32 s34, s[0:1], 0x0
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v72, s27, v4
	v_or_b32_e32 v71, s27, v5
	v_or_b32_e32 v70, s27, v6
	v_or_b32_e32 v69, s27, v7
	v_or_b32_e32 v68, s27, v8
	v_or_b32_e32 v67, s27, v9
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v3, s25, v81
	v_or_b32_e32 v2, s25, v2
	v_or_b32_e32 v4, s25, v4
	v_or_b32_e32 v5, s25, v5
	v_or_b32_e32 v6, s25, v6
	v_or_b32_e32 v7, s25, v7
	v_or_b32_e32 v8, s25, v8
	v_or_b32_e32 v9, s25, v9
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v66, 64, v74
	v_or_b32_e32 v65, 0x48, v74
	v_or_b32_e32 v64, 0x50, v74
	v_or_b32_e32 v63, 0x58, v74
	v_or_b32_e32 v62, 0x60, v74
	.loc	1 1044 21                       ; ragged.py:1044:21
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s0, s34, 31
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v61, 0x68, v74
	v_or_b32_e32 v60, 0x70, v74
	v_or_b32_e32 v59, 0x78, v74
	.loc	1 1044 21                       ; ragged.py:1044:21
	s_lshr_b32 s0, s0, 26
	.loc	1 1016 22                       ; ragged.py:1016:22
	s_lshl_b32 s31, s3, 5
	.loc	1 1044 21                       ; ragged.py:1044:21
	s_add_i32 s0, s34, s0
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s15, s56, v74
	.loc	1 1044 21                       ; ragged.py:1044:21
	s_ashr_i32 s33, s0, 6
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s14, s56, v73
	v_cmp_gt_i32_e64 s13, s56, v72
	v_cmp_gt_i32_e64 s12, s56, v71
	v_cmp_gt_i32_e64 s11, s56, v70
	v_cmp_gt_i32_e64 s10, s56, v69
	v_cmp_gt_i32_e64 s9, s56, v68
	v_cmp_gt_i32_e64 s8, s56, v67
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s23, s57, v3
	v_cmp_gt_i32_e64 s22, s57, v2
	v_cmp_gt_i32_e64 s21, s57, v4
	v_cmp_gt_i32_e64 s20, s57, v5
	v_cmp_gt_i32_e64 s19, s57, v6
	v_cmp_gt_i32_e64 s18, s57, v7
	v_cmp_gt_i32_e64 s17, s57, v8
	v_cmp_gt_i32_e64 s16, s57, v9
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s7, s56, v66
	v_cmp_gt_i32_e64 s6, s56, v65
	v_cmp_gt_i32_e64 s5, s56, v64
	v_cmp_gt_i32_e64 s4, s56, v63
	v_cmp_gt_i32_e64 s3, s56, v62
	v_cmp_gt_i32_e64 s24, s56, v61
	v_cmp_gt_i32_e64 s1, s56, v60
	v_cmp_gt_i32_e64 s0, s56, v59
	.loc	1 1043 39                       ; ragged.py:1043:39
	s_lshl_b32 s35, s33, 5
	.loc	1 1051 39                       ; ragged.py:1051:39
	s_mul_i32 s48, s26, s56
	.loc	1 1046 23                       ; ragged.py:1046:23
	s_cmp_ge_i32 s31, s35
	.loc	1 1053 39                       ; ragged.py:1053:39
	s_mul_i32 s33, s26, s57
	.loc	1 1046 23                       ; ragged.py:1046:23
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	s_mul_i32 s47, s47, s26
	s_lshl_b32 s2, s2, 6
	s_sub_i32 s26, s52, s47
	v_xor_b32_e32 v2, v79, v78
	s_sub_i32 s26, s26, s42
	s_and_b32 s45, s37, 0xffff
	s_mul_i32 s46, s46, s26
	s_mov_b32 s44, s36
	s_lshl_b32 s26, s46, 6
	v_xor_b32_e32 v3, 0x110, v2
	s_add_i32 s26, s26, s33
	s_mov_b32 s47, 0x31027000
	v_add3_u32 v5, s26, s2, v81
	s_lshl_b32 s2, s42, 7
	s_mov_b32 s46, 0x7ffffffe
	s_and_b32 s53, s39, 0xffff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v9, 56, v5
	v_add_nc_u32_e32 v13, 48, v5
	v_add_nc_u32_e32 v14, 8, v5
	v_mad_u64_u32 v[34:35], null, s30, v9, v[33:34]
	v_add_nc_u32_e32 v9, 40, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[35:36], null, s30, v13, v[33:34]
	v_add_nc_u32_e32 v13, 32, v5
	v_mad_u64_u32 v[36:37], null, s30, v9, v[33:34]
	v_add_nc_u32_e32 v9, 24, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[37:38], null, s30, v13, v[33:34]
	v_add3_u32 v13, s48, s2, v81
	s_lshl_b32 s2, s52, 7
	v_mad_u64_u32 v[38:39], null, s30, v9, v[33:34]
	v_add_nc_u32_e32 v9, 16, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_subrev_nc_u32_e32 v30, s2, v13
	s_mov_b32 s52, s38
	v_mad_u64_u32 v[39:40], null, s30, v9, v[33:34]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v9, 56, v30
	v_mad_u64_u32 v[40:41], null, s30, v14, v[33:34]
	v_mad_u64_u32 v[41:42], null, s30, v5, v[33:34]
	v_add_nc_u32_e32 v5, 48, v30
	v_mad_u64_u32 v[42:43], null, s30, v9, v[33:34]
	v_add_nc_u32_e32 v9, 40, v30
	v_add_nc_u32_e32 v57, 64, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[43:44], null, s30, v5, v[33:34]
	v_add_nc_u32_e32 v5, 32, v30
	v_mad_u64_u32 v[44:45], null, s30, v9, v[33:34]
	v_add_nc_u32_e32 v9, 24, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[45:46], null, s30, v5, v[33:34]
	v_add_nc_u32_e32 v5, 16, v30
	v_mad_u64_u32 v[46:47], null, s30, v9, v[33:34]
	v_add_nc_u32_e32 v9, 8, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[47:48], null, s30, v5, v[33:34]
	v_add_nc_u32_e32 v5, 0x78, v30
	v_mad_u64_u32 v[48:49], null, s30, v9, v[33:34]
	v_add_nc_u32_e32 v9, 0x70, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[49:50], null, s30, v5, v[33:34]
	v_mad_u64_u32 v[50:51], null, s30, v9, v[33:34]
	v_mov_b32_e32 v9, 0
	v_and_b32_e32 v1, 24, v80
	v_add_nc_u32_e32 v5, 0x68, v30
	v_add_nc_u32_e32 v13, 0x60, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v24, v9 :: v_dual_add_nc_u32 v31, 0x58, v30
	v_lshl_or_b32 v1, v75, 5, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[51:52], null, s30, v5, v[33:34]
	v_add_nc_u32_e32 v32, 0x50, v30
	v_add_nc_u32_e32 v82, 0, v2
	v_lshl_or_b32 v4, v76, 3, v1
	v_lshl_or_b32 v1, v77, 4, v1
	v_mov_b32_e32 v2, v9
	v_mad_u64_u32 v[52:53], null, s30, v13, v[33:34]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v6, 8, v4
	v_xor_b32_e32 v11, 16, v1
	v_xor_b32_e32 v7, 16, v4
	v_xor_b32_e32 v8, 24, v4
	v_dual_mov_b32 v15, v9 :: v_dual_add_nc_u32 v84, 0, v4
	v_mov_b32_e32 v4, v9
	v_mad_u64_u32 v[53:54], null, s30, v31, v[33:34]
	v_add_nc_u32_e32 v31, 0x48, v30
	v_dual_mov_b32 v21, v9 :: v_dual_add_nc_u32 v90, 0, v11
	v_mov_b32_e32 v11, v9
	v_mad_u64_u32 v[54:55], null, s30, v32, v[33:34]
	v_xor_b32_e32 v10, 8, v1
	v_xor_b32_e32 v12, 24, v1
	v_mov_b32_e32 v32, v9
	v_mad_u64_u32 v[55:56], null, s30, v31, v[33:34]
	v_mad_u64_u32 v[56:57], null, s30, v57, v[33:34]
	v_mad_u64_u32 v[57:58], null, s30, v30, v[33:34]
	v_add_nc_u32_e32 v83, 0, v3
	v_add_nc_u32_e32 v85, 0, v6
	v_dual_mov_b32 v17, v9 :: v_dual_add_nc_u32 v86, 0, v7
	v_dual_mov_b32 v26, v9 :: v_dual_add_nc_u32 v87, 0, v8
	v_dual_mov_b32 v19, v9 :: v_dual_add_nc_u32 v88, 0, v1
	v_dual_mov_b32 v28, v9 :: v_dual_add_nc_u32 v89, 0, v10
	v_dual_mov_b32 v30, v9 :: v_dual_add_nc_u32 v91, 0, v12
	v_mov_b32_e32 v10, v9
	v_mov_b32_e32 v12, v9
	v_mov_b32_e32 v13, v9
	v_mov_b32_e32 v14, v9
	v_mov_b32_e32 v16, v9
	v_mov_b32_e32 v18, v9
	v_mov_b32_e32 v20, v9
	v_mov_b32_e32 v22, v9
	v_mov_b32_e32 v23, v9
	v_mov_b32_e32 v1, v9
	v_mov_b32_e32 v3, v9
	v_mov_b32_e32 v5, v9
	v_mov_b32_e32 v6, v9
	v_mov_b32_e32 v7, v9
	v_mov_b32_e32 v8, v9
	v_mov_b32_e32 v25, v9
	v_mov_b32_e32 v27, v9
	v_mov_b32_e32 v29, v9
	v_mov_b32_e32 v31, v9
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1056 42                       ; ragged.py:1056:42
	v_add_nc_u32_e32 v58, s31, v57
	v_add_nc_u32_e32 v93, s31, v47
	v_add_nc_u32_e32 v95, s31, v45
	v_add_nc_u32_e32 v97, s31, v43
	v_add_nc_u32_e32 v92, s31, v48
	v_add_nc_u32_e32 v94, s31, v46
	v_add_nc_u32_e32 v96, s31, v44
	v_add_nc_u32_e32 v98, s31, v42
	v_add_nc_u32_e32 v99, s31, v56
	v_add_nc_u32_e32 v100, s31, v55
	v_add_nc_u32_e32 v101, s31, v54
	v_add_nc_u32_e32 v102, s31, v53
	v_add_nc_u32_e32 v103, s31, v52
	v_add_nc_u32_e32 v104, s31, v51
	v_add_nc_u32_e32 v105, s31, v50
	.loc	1 1056 34 is_stmt 0             ; ragged.py:1056:34
	v_add_nc_u32_e32 v106, s31, v49
	.loc	1 1057 42 is_stmt 1             ; ragged.py:1057:42
	v_add_nc_u32_e32 v108, s31, v40
	v_add_nc_u32_e32 v109, s31, v39
	v_add_nc_u32_e32 v110, s31, v38
	v_add_nc_u32_e32 v111, s31, v37
	v_add_nc_u32_e32 v112, s31, v36
	v_add_nc_u32_e32 v113, s31, v35
	.loc	1 1057 34 is_stmt 0             ; ragged.py:1057:34
	v_add_nc_u32_e32 v114, s31, v34
	.loc	1 1057 42                       ; ragged.py:1057:42
	v_add_nc_u32_e32 v107, s31, v41
	.loc	1 1056 34 is_stmt 1             ; ragged.py:1056:34
	v_cndmask_b32_e64 v58, 0x80000000, v58, s15
	v_cndmask_b32_e64 v93, 0x80000000, v93, s13
	v_cndmask_b32_e64 v95, 0x80000000, v95, s11
	v_cndmask_b32_e64 v97, 0x80000000, v97, s9
	v_cndmask_b32_e64 v92, 0x80000000, v92, s14
	v_cndmask_b32_e64 v94, 0x80000000, v94, s12
	v_cndmask_b32_e64 v96, 0x80000000, v96, s10
	v_cndmask_b32_e64 v98, 0x80000000, v98, s8
	v_cndmask_b32_e64 v99, 0x80000000, v99, s7
	v_cndmask_b32_e64 v100, 0x80000000, v100, s6
	v_cndmask_b32_e64 v101, 0x80000000, v101, s5
	v_cndmask_b32_e64 v102, 0x80000000, v102, s4
	v_cndmask_b32_e64 v103, 0x80000000, v103, s3
	v_cndmask_b32_e64 v104, 0x80000000, v104, s24
	v_cndmask_b32_e64 v105, 0x80000000, v105, s1
	v_cndmask_b32_e64 v106, 0x80000000, v106, s0
	.loc	1 1057 34                       ; ragged.py:1057:34
	v_cndmask_b32_e64 v108, 0x80000000, v108, s22
	v_cndmask_b32_e64 v109, 0x80000000, v109, s21
	v_cndmask_b32_e64 v110, 0x80000000, v110, s20
	v_cndmask_b32_e64 v111, 0x80000000, v111, s19
	v_cndmask_b32_e64 v112, 0x80000000, v112, s18
	v_cndmask_b32_e64 v113, 0x80000000, v113, s17
	v_cndmask_b32_e64 v114, 0x80000000, v114, s16
	s_mov_b32 s54, s46
	s_mov_b32 s55, s47
	v_cndmask_b32_e64 v107, 0x80000000, v107, s23
	.loc	1 1056 34                       ; ragged.py:1056:34
	s_clause 0xf
	buffer_load_u8 v58, v58, s[44:47], 0 offen
	buffer_load_u8 v93, v93, s[44:47], 0 offen
	buffer_load_u8 v95, v95, s[44:47], 0 offen
	buffer_load_u8 v97, v97, s[44:47], 0 offen
	buffer_load_u8 v99, v99, s[44:47], 0 offen
	buffer_load_u8 v101, v101, s[44:47], 0 offen
	buffer_load_u8 v103, v103, s[44:47], 0 offen
	buffer_load_u8 v105, v105, s[44:47], 0 offen
	buffer_load_u8 v98, v98, s[44:47], 0 offen
	buffer_load_u8 v96, v96, s[44:47], 0 offen
	buffer_load_u8 v94, v94, s[44:47], 0 offen
	buffer_load_u8 v92, v92, s[44:47], 0 offen
	buffer_load_u8 v106, v106, s[44:47], 0 offen
	buffer_load_u8 v104, v104, s[44:47], 0 offen
	buffer_load_u8 v102, v102, s[44:47], 0 offen
	buffer_load_u8 v100, v100, s[44:47], 0 offen
	.loc	1 1057 34                       ; ragged.py:1057:34
	s_clause 0x7
	buffer_load_u8 v115, v107, s[52:55], 0 offen
	buffer_load_u8 v109, v109, s[52:55], 0 offen
	buffer_load_u8 v111, v111, s[52:55], 0 offen
	buffer_load_u8 v113, v113, s[52:55], 0 offen
	buffer_load_u8 v114, v114, s[52:55], 0 offen
	buffer_load_u8 v112, v112, s[52:55], 0 offen
	buffer_load_u8 v110, v110, s[52:55], 0 offen
	buffer_load_u8 v108, v108, s[52:55], 0 offen
	.loc	1 1056 34                       ; ragged.py:1056:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1068 21                       ; ragged.py:1068:21
	s_add_i32 s31, s31, 32
	.loc	1 1056 34                       ; ragged.py:1056:34
	s_waitcnt vmcnt(23)
	ds_store_b8 v82, v58
	s_waitcnt vmcnt(22)
	ds_store_b8 v82, v93 offset:512
	s_waitcnt vmcnt(21)
	ds_store_b8 v82, v95 offset:1024
	s_waitcnt vmcnt(20)
	ds_store_b8 v82, v97 offset:1536
	s_waitcnt vmcnt(19)
	ds_store_b8 v82, v99 offset:2048
	s_waitcnt vmcnt(18)
	ds_store_b8 v82, v101 offset:2560
	s_waitcnt vmcnt(17)
	ds_store_b8 v82, v103 offset:3072
	s_waitcnt vmcnt(16)
	ds_store_b8 v82, v105 offset:3584
	s_waitcnt vmcnt(12)
	ds_store_b8 v83, v92
	ds_store_b8 v83, v94 offset:512
	ds_store_b8 v83, v96 offset:1024
	ds_store_b8 v83, v98 offset:1536
	s_waitcnt vmcnt(8)
	ds_store_b8 v83, v100 offset:2048
	ds_store_b8 v83, v102 offset:2560
	ds_store_b8 v83, v104 offset:3072
	ds_store_b8 v83, v106 offset:3584
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[92:95], v84 offset1:4
	ds_load_2addr_stride64_b64 v[96:99], v85 offset1:4
	ds_load_2addr_stride64_b64 v[100:103], v86 offset1:4
	ds_load_2addr_stride64_b64 v[104:107], v87 offset1:4
	.loc	1 1057 34                       ; ragged.py:1057:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b8 v82, v115
	s_waitcnt vmcnt(6)
	ds_store_b8 v82, v109 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v82, v111 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v82, v113 offset:1536
	s_waitcnt vmcnt(0)
	ds_store_b8 v83, v108
	ds_store_b8 v83, v110 offset:512
	ds_store_b8 v83, v112 offset:1024
	ds_store_b8 v83, v114 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[108:111], v88 offset1:2
	ds_load_2addr_stride64_b64 v[112:115], v89 offset1:2
	.loc	1 1046 23                       ; ragged.py:1046:23
	s_cmp_lt_i32 s31, s35
	.loc	1 1058 31                       ; ragged.py:1058:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[108:109], v[92:93], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[110:111], v[92:93], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[108:109], v[94:95], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[110:111], v[94:95], v[25:32] neg_lo:[1,1,0]
	.loc	1 1057 34                       ; ragged.py:1057:34
	ds_load_2addr_stride64_b64 v[92:95], v90 offset1:2
	ds_load_2addr_stride64_b64 v[108:111], v91 offset1:2
	.loc	1 1058 31                       ; ragged.py:1058:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[112:113], v[96:97], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[114:115], v[96:97], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[112:113], v[98:99], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[114:115], v[98:99], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[92:93], v[100:101], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[94:95], v[100:101], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[92:93], v[102:103], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[94:95], v[102:103], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[108:109], v[104:105], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[110:111], v[104:105], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[108:109], v[106:107], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[110:111], v[106:107], v[25:32] neg_lo:[1,1,0]
	.loc	1 1046 23                       ; ragged.py:1046:23
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v32, 0
	v_mov_b32_e32 v24, 0
.LBB0_4:                                ; %Flow245
	.loc	1 1008 27 is_stmt 1             ; ragged.py:1008:27
	s_add_i32 s2, s34, 1
	v_and_b32_e32 v34, 0xe0, v0
	.loc	1 1008 26 is_stmt 0             ; ragged.py:1008:26
	s_lshr_b32 s26, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, s26
	s_ashr_i32 s42, s2, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1069 20 is_stmt 1             ; ragged.py:1069:20
	s_cmp_lt_i32 s31, s42
	s_cbranch_scc1 .LBB0_6
; %bb.5:                                ; %._crit_edge._crit_edge
	.loc	1 1098 21                       ; ragged.py:1098:21
	s_add_i32 s26, s27, s48
	.loc	1 1105 21                       ; ragged.py:1105:21
	s_add_i32 s35, s25, s33
	s_cbranch_execz .LBB0_7
	s_branch .LBB0_8
.LBB0_6:
                                        ; implicit-def: $sgpr26
                                        ; implicit-def: $sgpr35
.LBB0_7:
	.loc	1 1081 42                       ; ragged.py:1081:42
	v_mul_lo_u32 v35, s30, v81
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v36, s31, v33
	.loc	1 1080 33                       ; ragged.py:1080:33
	s_and_b32 s2, s34, 0x80000001
	.loc	1 1081 42                       ; ragged.py:1081:42
	s_mul_i32 s35, s30, 0x48
	.loc	1 1080 33                       ; ragged.py:1080:33
	s_cmp_eq_u32 s2, 1
	.loc	1 1081 42                       ; ragged.py:1081:42
	s_mul_i32 s44, s30, 0x58
	.loc	1 1080 33                       ; ragged.py:1080:33
	s_cselect_b32 s34, -1, 0
	.loc	1 1081 42                       ; ragged.py:1081:42
	s_add_i32 s26, s27, s48
	v_mad_u64_u32 v[37:38], null, s30, 24, v[35:36]
	v_mad_u64_u32 v[38:39], null, s30, 40, v[35:36]
	v_mad_u64_u32 v[39:40], null, s30, 48, v[35:36]
	v_mad_u64_u32 v[40:41], null, s30, 56, v[35:36]
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[41:42], null, s26, s30, v[36:37]
	v_lshl_add_u32 v43, s30, 3, v35
	.loc	1 1079 30                       ; ragged.py:1079:30
	v_cmp_gt_i32_e32 vcc_lo, s42, v36
	.loc	1 1081 42                       ; ragged.py:1081:42
	v_lshl_add_u32 v44, s30, 4, v35
	s_lshl_b32 s2, s30, 6
	v_lshl_add_u32 v45, s30, 5, v35
	s_mul_i32 s45, s30, 0x60
	v_add_nc_u32_e32 v42, v41, v35
	v_add_nc_u32_e32 v46, v41, v43
	v_add3_u32 v53, v35, s2, v41
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 s2, s15, vcc_lo
	.loc	1 1081 42                       ; ragged.py:1081:42
	v_add_nc_u32_e32 v47, v41, v44
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	.loc	1 1081 66                       ; ragged.py:1081:66
	s_and_b32 s2, s14, vcc_lo
	.loc	1 1081 42                       ; ragged.py:1081:42
	v_add_nc_u32_e32 v48, v41, v37
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e64 v46, 0x80000000, v46, s2
	.loc	1 1081 66                       ; ragged.py:1081:66
	s_and_b32 s2, s13, vcc_lo
	.loc	1 1081 42                       ; ragged.py:1081:42
	v_add_nc_u32_e32 v49, v41, v45
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e64 v47, 0x80000000, v47, s2
	.loc	1 1081 66                       ; ragged.py:1081:66
	s_and_b32 s2, s12, vcc_lo
	.loc	1 1081 42                       ; ragged.py:1081:42
	v_add_nc_u32_e32 v50, v41, v38
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e64 v48, 0x80000000, v48, s2
	.loc	1 1081 66                       ; ragged.py:1081:66
	s_and_b32 s2, s11, vcc_lo
	.loc	1 1081 42                       ; ragged.py:1081:42
	v_add_nc_u32_e32 v51, v41, v39
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e64 v49, 0x80000000, v49, s2
	.loc	1 1081 66                       ; ragged.py:1081:66
	s_and_b32 s2, s10, vcc_lo
	.loc	1 1081 42                       ; ragged.py:1081:42
	v_add_nc_u32_e32 v52, v41, v40
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e64 v50, 0x80000000, v50, s2
	.loc	1 1081 66                       ; ragged.py:1081:66
	s_and_b32 s2, s9, vcc_lo
	.loc	1 1081 42                       ; ragged.py:1081:42
	s_mul_i32 s46, s30, 0x68
	s_mul_i32 s47, s30, 0x70
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e64 v51, 0x80000000, v51, s2
	.loc	1 1081 66                       ; ragged.py:1081:66
	s_and_b32 s2, s8, vcc_lo
	.loc	1 1081 42                       ; ragged.py:1081:42
	s_mul_i32 s43, s30, 0x50
	v_add3_u32 v54, v35, s35, v41
	v_add3_u32 v56, v35, s44, v41
	v_add3_u32 v57, v35, s45, v41
	v_add3_u32 v58, v35, s46, v41
	v_add3_u32 v81, v35, s47, v41
	.loc	1 1081 34                       ; ragged.py:1081:34
	s_and_b32 s45, s37, 0xffff
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	s_mov_b32 s44, s36
	v_cndmask_b32_e64 v52, 0x80000000, v52, s2
	.loc	1 1081 66                       ; ragged.py:1081:66
	s_and_b32 s2, s7, vcc_lo
	.loc	1 1081 42                       ; ragged.py:1081:42
	v_add3_u32 v55, v35, s43, v41
	.loc	1 1081 34                       ; ragged.py:1081:34
	s_clause 0x7
	buffer_load_u8 v82, v42, s[44:47], 0 offen
	buffer_load_u8 v83, v46, s[44:47], 0 offen
	buffer_load_u8 v47, v47, s[44:47], 0 offen
	buffer_load_u8 v48, v48, s[44:47], 0 offen
	buffer_load_u8 v49, v49, s[44:47], 0 offen
	buffer_load_u8 v50, v50, s[44:47], 0 offen
	buffer_load_u8 v51, v51, s[44:47], 0 offen
	buffer_load_u8 v52, v52, s[44:47], 0 offen
	v_cndmask_b32_e64 v42, 0x80000000, v53, s2
	.loc	1 1081 66                       ; ragged.py:1081:66
	s_and_b32 s2, s6, vcc_lo
	.loc	1 1082 42 is_stmt 1             ; ragged.py:1082:42
	s_add_i32 s35, s25, s33
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e64 v46, 0x80000000, v54, s2
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 s2, s5, vcc_lo
	.loc	1 1081 42                       ; ragged.py:1081:42
	s_mul_i32 s49, s30, 0x78
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e64 v53, 0x80000000, v55, s2
	.loc	1 1081 66                       ; ragged.py:1081:66
	s_and_b32 s2, s4, vcc_lo
	.loc	1 1082 42 is_stmt 1             ; ragged.py:1082:42
	s_mul_i32 s30, s35, s30
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e64 v54, 0x80000000, v56, s2
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 s2, s3, vcc_lo
	.loc	1 1081 42                       ; ragged.py:1081:42
	v_add3_u32 v41, v35, s49, v41
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e64 v55, 0x80000000, v57, s2
	.loc	1 1081 66                       ; ragged.py:1081:66
	s_and_b32 s2, s24, vcc_lo
	.loc	1 1080 63 is_stmt 1             ; ragged.py:1080:63
	s_add_i32 s42, s42, -1
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e64 v56, 0x80000000, v58, s2
	.loc	1 1082 42                       ; ragged.py:1082:42
	v_add3_u32 v58, s31, s30, v33
	.loc	1 1081 66                       ; ragged.py:1081:66
	s_and_b32 s2, s1, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1081 34 is_stmt 0             ; ragged.py:1081:34
	v_cndmask_b32_e64 v57, 0x80000000, v81, s2
	.loc	1 1081 66                       ; ragged.py:1081:66
	s_and_b32 s2, s0, vcc_lo
	.loc	1 1082 42 is_stmt 1             ; ragged.py:1082:42
	v_add_nc_u32_e32 v35, v58, v35
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	s_clause 0x7
	buffer_load_u8 v81, v42, s[44:47], 0 offen
	buffer_load_u8 v84, v46, s[44:47], 0 offen
	buffer_load_u8 v53, v53, s[44:47], 0 offen
	buffer_load_u8 v54, v54, s[44:47], 0 offen
	buffer_load_u8 v55, v55, s[44:47], 0 offen
	buffer_load_u8 v56, v56, s[44:47], 0 offen
	buffer_load_u8 v57, v57, s[44:47], 0 offen
	buffer_load_u8 v85, v41, s[44:47], 0 offen
	.loc	1 1082 42                       ; ragged.py:1082:42
	v_add_nc_u32_e32 v41, v58, v43
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 s2, s23, vcc_lo
	.loc	1 1082 42                       ; ragged.py:1082:42
	v_add_nc_u32_e32 v42, v58, v44
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e64 v35, 0x80000000, v35, s2
	.loc	1 1082 66                       ; ragged.py:1082:66
	s_and_b32 s2, s22, vcc_lo
	.loc	1 1082 42                       ; ragged.py:1082:42
	v_add_nc_u32_e32 v37, v58, v37
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	.loc	1 1082 66                       ; ragged.py:1082:66
	s_and_b32 s2, s21, vcc_lo
	.loc	1 1082 42                       ; ragged.py:1082:42
	v_add_nc_u32_e32 v43, v58, v45
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	.loc	1 1082 66                       ; ragged.py:1082:66
	s_and_b32 s2, s20, vcc_lo
	.loc	1 1082 42                       ; ragged.py:1082:42
	v_add_nc_u32_e32 v38, v58, v38
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e64 v37, 0x80000000, v37, s2
	.loc	1 1082 66                       ; ragged.py:1082:66
	s_and_b32 s2, s19, vcc_lo
	.loc	1 1082 42                       ; ragged.py:1082:42
	v_add_nc_u32_e32 v39, v58, v39
	v_add_nc_u32_e32 v40, v58, v40
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	.loc	1 1082 66                       ; ragged.py:1082:66
	s_and_b32 s2, s18, vcc_lo
	.loc	1 1082 34                       ; ragged.py:1082:34
	s_and_b32 s45, s39, 0xffff
	s_mov_b32 s44, s38
	v_cndmask_b32_e64 v38, 0x80000000, v38, s2
	.loc	1 1082 66                       ; ragged.py:1082:66
	s_and_b32 s2, s17, vcc_lo
	s_and_b32 vcc_lo, s16, vcc_lo
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e64 v39, 0x80000000, v39, s2
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	s_clause 0x7
	buffer_load_u8 v58, v35, s[44:47], 0 offen
	buffer_load_u8 v86, v41, s[44:47], 0 offen
	buffer_load_u8 v87, v42, s[44:47], 0 offen
	buffer_load_u8 v88, v37, s[44:47], 0 offen
	buffer_load_u8 v89, v43, s[44:47], 0 offen
	buffer_load_u8 v90, v38, s[44:47], 0 offen
	buffer_load_u8 v91, v39, s[44:47], 0 offen
	buffer_load_u8 v92, v40, s[44:47], 0 offen
	.loc	1 1083 34 is_stmt 1             ; ragged.py:1083:34
	v_and_b32_e32 v37, 24, v80
	v_xor_b32_e32 v35, v79, v78
	.loc	1 1080 56                       ; ragged.py:1080:56
	v_cmp_eq_u32_e32 vcc_lo, s42, v36
	.loc	1 1083 34                       ; ragged.py:1083:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_lshl_or_b32 v37, v75, 5, v37
	v_add_nc_u32_e32 v78, 0, v35
	v_xad_u32 v79, 0x110, v35, 0
	.loc	1 1080 32                       ; ragged.py:1080:32
	s_and_b32 s2, s34, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1083 34                       ; ragged.py:1083:34
	v_lshl_or_b32 v36, v76, 3, v37
	.loc	1 1084 34                       ; ragged.py:1084:34
	v_lshl_or_b32 v80, v77, 4, v37
	.loc	1 1083 34                       ; ragged.py:1083:34
	v_add_nc_u32_e32 v93, 0, v36
	v_xad_u32 v94, v36, 8, 0
	v_xad_u32 v95, v36, 16, 0
	v_xad_u32 v96, v36, 24, 0
	.loc	1 1084 34                       ; ragged.py:1084:34
	v_add_nc_u32_e32 v97, 0, v80
	v_xad_u32 v98, v80, 8, 0
	.loc	1 1083 62                       ; ragged.py:1083:62
	s_waitcnt vmcnt(23)
	v_and_b16 v35.l, v82.l, 15
	s_waitcnt vmcnt(22)
	v_and_b16 v35.h, v83.l, 15
	s_waitcnt vmcnt(21)
	v_and_b16 v36.l, v47.l, 15
	s_waitcnt vmcnt(20)
	v_and_b16 v40.h, v48.l, 15
	s_waitcnt vmcnt(19)
	v_and_b16 v41.l, v49.l, 15
	s_waitcnt vmcnt(18)
	v_and_b16 v41.h, v50.l, 15
	s_waitcnt vmcnt(17)
	v_and_b16 v42.l, v51.l, 15
	s_waitcnt vmcnt(16)
	v_and_b16 v42.h, v52.l, 15
	.loc	1 1083 34 is_stmt 0             ; ragged.py:1083:34
	v_cndmask_b16 v35.l, v82.l, v35.l, s2
	v_cndmask_b16 v36.l, v47.l, v36.l, s2
	v_cndmask_b16 v41.l, v49.l, v41.l, s2
	v_cndmask_b16 v42.l, v51.l, v42.l, s2
	v_cndmask_b16 v42.h, v52.l, v42.h, s2
	v_cndmask_b16 v35.h, v83.l, v35.h, s2
	v_cndmask_b16 v40.h, v48.l, v40.h, s2
	v_cndmask_b16 v41.h, v50.l, v41.h, s2
	.loc	1 1084 34 is_stmt 1             ; ragged.py:1084:34
	v_xad_u32 v82, v80, 24, 0
	.loc	1 1083 62                       ; ragged.py:1083:62
	s_waitcnt vmcnt(15)
	v_and_b16 v36.h, v81.l, 15
	s_waitcnt vmcnt(14)
	v_and_b16 v37.l, v84.l, 15
	s_waitcnt vmcnt(13)
	v_and_b16 v37.h, v53.l, 15
	s_waitcnt vmcnt(12)
	v_and_b16 v38.l, v54.l, 15
	s_waitcnt vmcnt(11)
	v_and_b16 v38.h, v55.l, 15
	s_waitcnt vmcnt(10)
	v_and_b16 v39.l, v56.l, 15
	s_waitcnt vmcnt(9)
	v_and_b16 v39.h, v57.l, 15
	s_waitcnt vmcnt(8)
	v_and_b16 v40.l, v85.l, 15
	.loc	1 1083 34 is_stmt 0             ; ragged.py:1083:34
	v_cndmask_b16 v37.h, v53.l, v37.h, s2
	v_cndmask_b16 v38.l, v54.l, v38.l, s2
	v_cndmask_b16 v36.h, v81.l, v36.h, s2
	v_cndmask_b16 v37.l, v84.l, v37.l, s2
	v_cndmask_b16 v38.h, v55.l, v38.h, s2
	v_cndmask_b16 v39.l, v56.l, v39.l, s2
	v_cndmask_b16 v39.h, v57.l, v39.h, s2
	v_cndmask_b16 v40.l, v85.l, v40.l, s2
	ds_store_b8 v78, v35
	ds_store_b8 v78, v36 offset:512
	ds_store_b8 v78, v41 offset:1024
	ds_store_b8 v78, v42 offset:1536
	ds_store_b8_d16_hi v78, v36 offset:2048
	ds_store_b8_d16_hi v78, v37 offset:2560
	ds_store_b8_d16_hi v78, v38 offset:3072
	ds_store_b8_d16_hi v78, v39 offset:3584
	ds_store_b8_d16_hi v79, v35
	ds_store_b8_d16_hi v79, v40 offset:512
	ds_store_b8_d16_hi v79, v41 offset:1024
	ds_store_b8_d16_hi v79, v42 offset:1536
	ds_store_b8 v79, v37 offset:2048
	ds_store_b8 v79, v38 offset:2560
	ds_store_b8 v79, v39 offset:3072
	ds_store_b8 v79, v40 offset:3584
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1084 62 is_stmt 1             ; ragged.py:1084:62
	s_waitcnt vmcnt(7)
	v_and_b16 v43.l, v58.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v43.h, v86.l, 15
	s_waitcnt vmcnt(5)
	v_and_b16 v44.l, v87.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v44.h, v88.l, 15
	s_waitcnt vmcnt(3)
	v_and_b16 v45.l, v89.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v45.h, v90.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v46.l, v91.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v46.h, v92.l, 15
	.loc	1 1084 34 is_stmt 0             ; ragged.py:1084:34
	v_cndmask_b16 v51.l, v58.l, v43.l, s2
	v_cndmask_b16 v52.l, v87.l, v44.l, s2
	v_cndmask_b16 v53.l, v89.l, v45.l, s2
	v_cndmask_b16 v54.l, v91.l, v46.l, s2
	v_cndmask_b16 v51.h, v86.l, v43.h, s2
	v_cndmask_b16 v52.h, v88.l, v44.h, s2
	v_cndmask_b16 v53.h, v90.l, v45.h, s2
	v_cndmask_b16 v54.h, v92.l, v46.h, s2
	.loc	1 1083 34 is_stmt 1             ; ragged.py:1083:34
	ds_load_2addr_stride64_b64 v[35:38], v93 offset1:4
	ds_load_2addr_stride64_b64 v[39:42], v94 offset1:4
	ds_load_2addr_stride64_b64 v[43:46], v95 offset1:4
	ds_load_2addr_stride64_b64 v[47:50], v96 offset1:4
	.loc	1 1084 34                       ; ragged.py:1084:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v78, v51
	ds_store_b8 v78, v52 offset:512
	ds_store_b8 v78, v53 offset:1024
	ds_store_b8 v78, v54 offset:1536
	ds_store_b8_d16_hi v79, v51
	ds_store_b8_d16_hi v79, v52 offset:512
	ds_store_b8_d16_hi v79, v53 offset:1024
	ds_store_b8_d16_hi v79, v54 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[51:54], v97 offset1:2
	ds_load_2addr_stride64_b64 v[55:58], v98 offset1:2
	v_xad_u32 v78, v80, 16, 0
	ds_load_2addr_stride64_b64 v[78:81], v78 offset1:2
	ds_load_2addr_stride64_b64 v[82:85], v82 offset1:2
	.loc	1 1085 31                       ; ragged.py:1085:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[51:52], v[35:36], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[51:52], v[37:38], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[53:54], v[35:36], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[53:54], v[37:38], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[55:56], v[39:40], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[55:56], v[41:42], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[57:58], v[39:40], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[57:58], v[41:42], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[78:79], v[43:44], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[78:79], v[45:46], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[80:81], v[43:44], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[80:81], v[45:46], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[82:83], v[47:48], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[82:83], v[49:50], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[84:85], v[47:48], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[84:85], v[49:50], v[25:32] neg_lo:[1,1,0]
.LBB0_8:
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_lshrrev_b32_e32 v35, 2, v76
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_lshrrev_b32_e32 v36, 4, v0
	v_lshrrev_b32_e32 v37, 1, v77
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v35, v35, v75
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_and_b32 s29, s29, 0xffff
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_and_or_b32 v36, v36, 1, v37
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_mov_b32 s30, s42
	s_mov_b32 s31, s43
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v37, 64, v35
	.loc	1 1003 18 is_stmt 0             ; ragged.py:1003:18
	v_or_b32_e32 v38, s27, v35
	.loc	1 1097 36 is_stmt 1             ; ragged.py:1097:36
	v_add_lshl_u32 v35, s26, v35, 1
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v39, 2, v36
	v_or_b32_e32 v40, 4, v36
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v47, s27, v37
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e32 vcc_lo, s56, v38
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v41, 6, v36
	v_or_b32_e32 v42, 8, v36
	v_or_b32_e32 v43, 10, v36
	v_or_b32_e32 v44, 12, v36
	v_or_b32_e32 v45, 14, v36
	v_or_b32_e32 v46, 32, v36
	v_or_b32_e32 v48, 34, v36
	v_or_b32_e32 v49, 36, v36
	v_or_b32_e32 v50, 38, v36
	v_or_b32_e32 v51, 40, v36
	v_or_b32_e32 v52, 42, v36
	v_or_b32_e32 v53, 44, v36
	v_or_b32_e32 v54, 46, v36
	.loc	1 1004 18 is_stmt 0             ; ragged.py:1004:18
	v_or_b32_e32 v55, s25, v36
	.loc	1 1097 36 is_stmt 1             ; ragged.py:1097:36
	v_add_lshl_u32 v37, s26, v37, 1
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v36, s35, v36, 1
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e32 vcc_lo, s56, v47
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v56, s25, v39
	v_or_b32_e32 v57, s25, v40
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v40, s35, v40, 1
	v_add_lshl_u32 v39, s35, v39, 1
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s57, v55
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v58, s25, v41
	v_or_b32_e32 v78, s25, v42
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v42, s35, v42, 1
	v_add_lshl_u32 v41, s35, v41, 1
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s57, v56
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v79, s25, v43
	v_or_b32_e32 v80, s25, v44
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v44, s35, v44, 1
	v_add_lshl_u32 v43, s35, v43, 1
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s57, v57
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v81, s25, v45
	v_or_b32_e32 v82, s25, v46
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v46, s35, v46, 1
	v_add_lshl_u32 v45, s35, v45, 1
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s57, v58
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v83, s25, v48
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v47, s35, v48, 1
	v_add_lshl_u32 v48, s35, v49, 1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v84, s25, v49
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s57, v78
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v85, s25, v50
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v49, s35, v50, 1
	v_add_lshl_u32 v50, s35, v51, 1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v86, s25, v51
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s57, v79
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v87, s25, v52
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v51, s35, v52, 1
	v_add_lshl_u32 v52, s35, v53, 1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v88, s25, v53
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s57, v80
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v38, s25, v54
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v53, s35, v54, 1
	.loc	1 1097 36                       ; ragged.py:1097:36
	s_and_b32 s41, s41, 0xffff
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v2, v2
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s57, v81
	.loc	1 1097 36                       ; ragged.py:1097:36
	buffer_load_u16 v35, v35, s[40:43], 0 offen
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v1, v1
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s57, v82
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_lshl_or_b32 v55, v76, 1, v77
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_lshrrev_b32_e32 v57, 3, v34
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s57, v83
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v13, v13
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s57, v84
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v7, v7
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s57, v85
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_clause 0x7
	buffer_load_u16 v36, v36, s[28:31], 0 offen
	buffer_load_u16 v39, v39, s[28:31], 0 offen
	buffer_load_u16 v40, v40, s[28:31], 0 offen
	buffer_load_u16 v41, v41, s[28:31], 0 offen
	buffer_load_u16 v42, v42, s[28:31], 0 offen
	buffer_load_u16 v43, v43, s[28:31], 0 offen
	buffer_load_u16 v44, v44, s[28:31], 0 offen
	buffer_load_u16 v45, v45, s[28:31], 0 offen
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v17, v17
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s57, v86
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s57, v87
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v5, v5
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e32 v51, 0x80000000, v51, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s57, v88
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e32 v52, 0x80000000, v52, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s57, v38
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e32 v38, 0x80000000, v53, vcc_lo
	s_clause 0x7
	buffer_load_u16 v46, v46, s[28:31], 0 offen
	buffer_load_u16 v47, v47, s[28:31], 0 offen
	buffer_load_u16 v48, v48, s[28:31], 0 offen
	buffer_load_u16 v49, v49, s[28:31], 0 offen
	buffer_load_u16 v50, v50, s[28:31], 0 offen
	buffer_load_u16 v51, v51, s[28:31], 0 offen
	buffer_load_u16 v52, v52, s[28:31], 0 offen
	buffer_load_u16 v38, v38, s[28:31], 0 offen
	.loc	1 1097 36                       ; ragged.py:1097:36
	buffer_load_u16 v37, v37, s[40:43], 0 offen
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_bfe_i32 v53, v0, 4, 1
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_mov_b16_e32 v0.h, 0
	.loc	1 1228 34                       ; ragged.py:1228:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_mov_b16_e32 v58.h, v0.h
	v_mov_b16_e32 v76.h, v0.h
	v_mov_b16_e32 v77.h, v0.h
	v_mov_b16_e32 v79.h, v0.h
	v_mov_b16_e32 v78.h, v0.h
	v_mov_b16_e32 v81.h, v0.h
	v_mov_b16_e32 v83.h, v0.h
	v_mov_b16_e32 v80.h, v0.h
	v_mov_b16_e32 v82.h, v0.h
	v_mov_b16_e32 v84.h, v0.h
	v_mov_b16_e32 v86.h, v0.h
	v_mov_b16_e32 v85.h, v0.h
	v_mov_b16_e32 v87.h, v0.h
	.loc	1 1097 36                       ; ragged.py:1097:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v37, 16, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v2, v2, v37 :: v_dual_lshlrev_b32 v35, 16, v35
	v_dual_mul_f32 v9, v9, v35 :: v_dual_lshlrev_b32 v54, 2, v33
	v_mul_f32_e32 v18, v18, v35
	v_dual_mul_f32 v1, v1, v37 :: v_dual_lshlrev_b32 v56, 2, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_lshl_or_b32 v54, v75, 9, v54
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v11, v11, v35 :: v_dual_lshlrev_b32 v36, 16, v36
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_lshl_or_b32 v34, v34, 4, v56
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v4, v4, v37 :: v_dual_lshlrev_b32 v39, 16, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_xor_b32_e32 v54, v54, v55
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v9, v9, v36 :: v_dual_lshlrev_b32 v38, 16, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_xor_b32_e32 v34, v34, v57
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v10, v10, v35 :: v_dual_add_nc_u32 v57, 0, v54
	v_dual_mul_f32 v30, v30, v37 :: v_dual_mul_f32 v1, v1, v36
	v_dual_mul_f32 v13, v13, v35 :: v_dual_lshlrev_b32 v40, 16, v40
	v_dual_mul_f32 v3, v3, v37 :: v_dual_lshlrev_b32 v52, 16, v52
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v10, v10, v39 :: v_dual_mul_f32 v7, v7, v37
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v32, v32, v37
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_mov_b16_e32 v0.l, v9.h
	v_mov_b16_e32 v58.l, v1.h
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v12, v12, v35 :: v_dual_lshlrev_b32 v41, 16, v41
	v_dual_mul_f32 v15, v15, v35 :: v_dual_lshlrev_b32 v42, 16, v42
	v_dual_mul_f32 v17, v17, v35 :: v_dual_lshlrev_b32 v44, 16, v44
	v_dual_mul_f32 v14, v14, v35 :: v_dual_lshlrev_b32 v45, 16, v45
	v_dual_mul_f32 v19, v19, v35 :: v_dual_lshlrev_b32 v46, 16, v46
	v_dual_mul_f32 v21, v21, v35 :: v_dual_lshlrev_b32 v48, 16, v48
	v_dual_mul_f32 v16, v16, v35 :: v_dual_lshlrev_b32 v49, 16, v49
	v_dual_mul_f32 v23, v23, v35 :: v_dual_lshlrev_b32 v50, 16, v50
	v_dual_mul_f32 v20, v20, v35 :: v_dual_mul_f32 v11, v11, v40
	v_dual_mul_f32 v22, v22, v35 :: v_dual_mul_f32 v5, v5, v37
	v_dual_mul_f32 v24, v24, v35 :: v_dual_mul_f32 v13, v13, v42
	v_dual_mul_f32 v31, v31, v37 :: v_dual_mul_f32 v2, v2, v39
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v3, v3, v40 :: v_dual_mul_f32 v32, v32, v38
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_and_b32_e32 v35, 1, v0
	v_mov_b16_e32 v0.l, v10.h
	v_and_b32_e32 v36, 1, v58
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v12, v12, v41 :: v_dual_lshlrev_b32 v43, 16, v43
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v6, v6, v37 :: v_dual_lshlrev_b32 v47, 16, v47
	v_dual_mul_f32 v8, v8, v37 :: v_dual_lshlrev_b32 v51, 16, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v25, v25, v37 :: v_dual_mul_f32 v18, v18, v47
	v_dual_mul_f32 v26, v26, v37 :: v_dual_mul_f32 v19, v19, v48
	v_dual_mul_f32 v27, v27, v37 :: v_dual_mul_f32 v22, v22, v51
	v_dual_mul_f32 v28, v28, v37 :: v_dual_mul_f32 v21, v21, v50
	v_dual_mul_f32 v29, v29, v37 :: v_dual_mul_f32 v24, v24, v38
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_mov_b16_e32 v76.l, v2.h
	v_add3_u32 v9, v9, v35, 0x7fff
	v_and_b32_e32 v37, 1, v0
	v_mov_b16_e32 v0.l, v11.h
	v_cmp_o_f32_e64 s31, v1, v1
	v_add3_u32 v1, v1, v36, 0x7fff
	v_cmp_o_f32_e64 s2, v10, v10
	v_and_b32_e32 v35, 1, v76
	v_cndmask_b16 v1.l, 0x7fff, v9.h, vcc_lo
	v_add3_u32 v9, v10, v37, 0x7fff
	v_and_b32_e32 v10, 1, v0
	v_mov_b16_e32 v0.l, v12.h
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v14, v14, v43 :: v_dual_mul_f32 v15, v15, v44
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_cmp_o_f32_e64 s33, v2, v2
	v_add3_u32 v2, v2, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_and_b32_e32 v35, 1, v0
	v_mov_b16_e32 v0.l, v13.h
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v16, v16, v45 :: v_dual_mul_f32 v17, v17, v46
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_cndmask_b16 v2.l, 0x7fff, v9.h, s2
	v_add3_u32 v9, v11, v10, 0x7fff
	v_and_b32_e32 v36, 1, v0
	v_mov_b16_e32 v0.l, v14.h
	v_cmp_o_f32_e64 s16, v11, v11
	v_mov_b16_e32 v77.l, v3.h
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v4, v4, v41 :: v_dual_mul_f32 v5, v5, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_and_b32_e32 v10, 1, v0
	v_mov_b16_e32 v0.l, v15.h
	v_and_b32_e32 v38, 1, v77
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v6, v6, v43 :: v_dual_mul_f32 v7, v7, v44
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_mov_b16_e32 v79.l, v5.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_and_b32_e32 v11, 1, v0
	v_mov_b16_e32 v0.l, v16.h
	v_cmp_o_f32_e64 s34, v3, v3
	v_add3_u32 v3, v3, v38, 0x7fff
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v8, v8, v45 :: v_dual_mul_f32 v25, v25, v46
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_and_b32_e32 v37, 1, v0
	v_mov_b16_e32 v0.l, v17.h
	v_mov_b16_e32 v78.l, v4.h
	v_mov_b16_e32 v81.l, v7.h
	v_and_b32_e32 v40, 1, v79
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v20, v20, v49 :: v_dual_mul_f32 v23, v23, v52
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_and_b32_e32 v38, 1, v0
	v_mov_b16_e32 v0.l, v18.h
	v_cmp_o_f32_e64 s18, v13, v13
	v_cndmask_b16 v3.l, 0x7fff, v9.h, s16
	v_add3_u32 v9, v13, v36, 0x7fff
	v_mov_b16_e32 v83.l, v25.h
	v_and_b32_e32 v13, 1, v0
	v_mov_b16_e32 v0.l, v19.h
	v_cmp_o_f32_e64 s36, v5, v5
	v_mov_b16_e32 v80.l, v6.h
	v_and_b32_e32 v39, 1, v78
	v_and_b32_e32 v42, 1, v81
	v_add3_u32 v5, v5, v40, 0x7fff
	v_cmp_o_f32_e64 s17, v12, v12
	v_cmp_o_f32_e64 s20, v15, v15
	v_add3_u32 v12, v12, v35, 0x7fff
	v_cndmask_b16 v5.l, 0x7fff, v9.h, s18
	v_add3_u32 v9, v15, v11, 0x7fff
	v_and_b32_e32 v11, 1, v0
	v_mov_b16_e32 v0.l, v20.h
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v26, v26, v47 :: v_dual_mul_f32 v27, v27, v48
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_and_b32_e32 v44, 1, v83
	v_cmp_o_f32_e64 s35, v4, v4
	v_cmp_o_f32_e64 s38, v7, v7
	v_mov_b16_e32 v82.l, v8.h
	v_and_b32_e32 v41, 1, v80
	v_add3_u32 v4, v4, v39, 0x7fff
	v_add3_u32 v7, v7, v42, 0x7fff
	v_cmp_o_f32_e64 s19, v14, v14
	v_cmp_o_f32_e64 s22, v17, v17
	v_cndmask_b16 v4.l, 0x7fff, v12.h, s17
	v_add3_u32 v10, v14, v10, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v9.h, s20
	v_add3_u32 v9, v17, v38, 0x7fff
	v_and_b32_e32 v12, 1, v0
	v_mov_b16_e32 v0.l, v21.h
	v_cmp_o_f32_e64 s40, v25, v25
	v_mov_b16_e32 v84.l, v26.h
	v_add3_u32 v25, v25, v44, 0x7fff
	v_cmp_o_f32_e64 s37, v6, v6
	v_and_b32_e32 v43, 1, v82
	v_add3_u32 v6, v6, v41, 0x7fff
	v_cmp_o_f32_e64 s21, v16, v16
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s31
	v_cndmask_b16 v6.l, 0x7fff, v10.h, s19
	v_add3_u32 v10, v16, v37, 0x7fff
	v_cndmask_b16 v25.l, 0x7fff, v9.h, s22
	v_add3_u32 v9, v19, v11, 0x7fff
	v_and_b32_e32 v11, 1, v0
	v_mov_b16_e32 v0.l, v22.h
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_xad_u32 v95, 0x2040, v54, 0
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_and_b32_e32 v45, 1, v84
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s40
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v28, v28, v49 :: v_dual_mul_f32 v29, v29, v50
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_cmp_o_f32_e64 s39, v8, v8
	v_add3_u32 v8, v8, v43, 0x7fff
	v_cmp_o_f32_e64 s23, v18, v18
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v30, v30, v51 :: v_dual_mul_f32 v31, v31, v52
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_cndmask_b16 v8.l, 0x7fff, v10.h, s21
	v_add3_u32 v10, v18, v13, 0x7fff
	.loc	1 1228 34                       ; ragged.py:1228:34
	ds_store_b32 v57, v1
	ds_store_b32 v95, v25
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_and_b32_e32 v1, 1, v0
	v_mov_b16_e32 v0.l, v23.h
	v_cmp_o_f32_e64 s41, v26, v26
	v_add3_u32 v26, v26, v45, 0x7fff
	v_mov_b16_e32 v75.h, v0.h
	v_mov_b16_e32 v75.l, v27.h
	v_mov_b16_e32 v86.l, v29.h
	v_mov_b16_e32 v55.h, v0.h
	v_mov_b16_e32 v56.h, v0.h
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_xad_u32 v88, v54, 4, 0
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_mov_b16_e32 v85.l, v28.h
	v_mov_b16_e32 v55.l, v30.h
	v_mov_b16_e32 v56.l, v31.h
	v_mov_b16_e32 v87.l, v32.h
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s33
	v_cndmask_b16 v26.l, 0x7fff, v10.h, s23
	v_and_b32_e32 v10, 1, v0
	v_mov_b16_e32 v0.l, v24.h
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_xad_u32 v96, 0x2044, v54, 0
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_cndmask_b16 v26.h, 0x7fff, v26.h, s41
	v_and_b32_e32 v46, 1, v75
	v_and_b32_e32 v48, 1, v86
	v_cmp_o_f32_e64 s25, v19, v19
	v_cmp_o_f32_e64 s27, v21, v21
	v_and_b32_e32 v47, 1, v85
	v_and_b32_e32 v49, 1, v55
	v_and_b32_e32 v50, 1, v56
	v_and_b32_e32 v51, 1, v87
	.loc	1 1228 34                       ; ragged.py:1228:34
	ds_store_b32 v88, v2
	ds_store_b32 v96, v26
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_add3_u32 v2, v21, v11, 0x7fff
	v_and_b32_e32 v0, 1, v0
	v_cmp_o_f32_e64 s42, v27, v27
	v_cmp_o_f32_e64 s44, v29, v29
	v_add3_u32 v27, v27, v46, 0x7fff
	v_add3_u32 v29, v29, v48, 0x7fff
	v_cmp_o_f32_e64 s26, v20, v20
	v_cmp_o_f32_e64 s28, v22, v22
	v_cmp_o_f32_e64 s29, v23, v23
	v_cmp_o_f32_e64 s30, v24, v24
	v_cmp_o_f32_e64 s43, v28, v28
	v_cmp_o_f32_e64 s45, v30, v30
	v_cmp_o_f32_e64 s46, v31, v31
	v_cmp_o_f32_e64 s47, v32, v32
	v_add3_u32 v28, v28, v47, 0x7fff
	v_add3_u32 v30, v30, v49, 0x7fff
	v_add3_u32 v31, v31, v50, 0x7fff
	v_add3_u32 v32, v32, v51, 0x7fff
	v_cndmask_b16 v27.l, 0x7fff, v9.h, s25
	v_add3_u32 v9, v20, v12, 0x7fff
	v_cndmask_b16 v29.l, 0x7fff, v2.h, s27
	v_add3_u32 v1, v22, v1, 0x7fff
	v_add3_u32 v2, v23, v10, 0x7fff
	v_add3_u32 v0, v24, v0, 0x7fff
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_xad_u32 v89, v54, 8, 0
	v_xad_u32 v90, v54, 12, 0
	v_xad_u32 v91, v54, 16, 0
	v_xad_u32 v92, v54, 20, 0
	v_xad_u32 v93, v54, 24, 0
	v_xad_u32 v94, v54, 28, 0
	v_and_or_b32 v34, 0x2040, v53, v34
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s34
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s35
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s36
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s37
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s38
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s39
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_xad_u32 v97, 0x2048, v54, 0
	v_xad_u32 v98, 0x204c, v54, 0
	v_xad_u32 v99, 0x2050, v54, 0
	v_xad_u32 v100, 0x2054, v54, 0
	v_xad_u32 v101, 0x2058, v54, 0
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_cndmask_b16 v27.h, 0x7fff, v27.h, s42
	v_cndmask_b16 v28.h, 0x7fff, v28.h, s43
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s44
	v_cndmask_b16 v30.h, 0x7fff, v30.h, s45
	v_cndmask_b16 v31.h, 0x7fff, v31.h, s46
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s47
	v_cndmask_b16 v28.l, 0x7fff, v9.h, s26
	v_cndmask_b16 v30.l, 0x7fff, v1.h, s28
	v_cndmask_b16 v31.l, 0x7fff, v2.h, s29
	v_cndmask_b16 v32.l, 0x7fff, v0.h, s30
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_xad_u32 v0, 0x205c, v54, 0
	ds_store_b32 v89, v3
	ds_store_b32 v97, v27
	ds_store_b32 v90, v4
	ds_store_b32 v98, v28
	ds_store_b32 v91, v5
	ds_store_b32 v99, v29
	ds_store_b32 v92, v6
	ds_store_b32 v100, v30
	ds_store_b32 v93, v7
	ds_store_b32 v101, v31
	v_add_nc_u32_e32 v1, 0, v34
	ds_store_b32 v94, v8
	ds_store_b32 v0, v32
	v_xad_u32 v0, v34, 64, 0
	v_xad_u32 v2, 0x1020, v34, 0
	v_xad_u32 v3, 0x1060, v34, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[13:14], v1 offset1:32
	ds_load_2addr_b32 v[5:6], v1 offset0:64 offset1:96
	ds_load_2addr_b32 v[15:16], v0 offset1:32
	ds_load_2addr_b32 v[7:8], v0 offset0:64 offset1:96
	ds_load_2addr_b32 v[9:10], v2 offset1:32
	ds_load_2addr_b32 v[0:1], v2 offset0:64 offset1:96
	ds_load_2addr_b32 v[11:12], v3 offset1:32
	ds_load_2addr_b32 v[2:3], v3 offset0:64 offset1:96
	.loc	1 1232 37                       ; ragged.py:1232:37
	s_lshr_b32 s2, s57, 31
	.loc	1 1230 31                       ; ragged.py:1230:31
	v_lshl_or_b32 v4, s58, 5, v33
	.loc	1 1232 37                       ; ragged.py:1232:37
	s_add_i32 s2, s57, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_ashr_i32 s16, s2, 1
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1236 54                       ; ragged.py:1236:54
	v_cmp_gt_i32_e32 vcc_lo, s16, v4
	.loc	1 1236 33 is_stmt 0             ; ragged.py:1236:33
	s_and_b32 s2, s15, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1237 17 is_stmt 1             ; ragged.py:1237:17
	s_and_saveexec_b32 s15, s2
	s_cbranch_execnz .LBB0_25
; %bb.9:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s15
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s2, s14, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s14, s2
	s_cbranch_execnz .LBB0_26
.LBB0_10:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s14
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s2, s13, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s13, s2
	s_cbranch_execnz .LBB0_27
.LBB0_11:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s13
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s2, s12, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s12, s2
	s_cbranch_execnz .LBB0_28
.LBB0_12:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s12
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s2, s11, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s11, s2
	s_cbranch_execnz .LBB0_29
.LBB0_13:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s11
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s2, s10, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s10, s2
	s_cbranch_execnz .LBB0_30
.LBB0_14:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s10
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s2, s9, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s9, s2
	s_cbranch_execnz .LBB0_31
.LBB0_15:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s9
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s2, s8, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s8, s2
	s_cbranch_execnz .LBB0_32
.LBB0_16:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s8
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s2, s7, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s7, s2
	s_cbranch_execnz .LBB0_33
.LBB0_17:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s2, s6, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s6, s2
	s_cbranch_execnz .LBB0_34
.LBB0_18:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s2, s5, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s5, s2
	s_cbranch_execnz .LBB0_35
.LBB0_19:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s2, s4, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s4, s2
	s_cbranch_execnz .LBB0_36
.LBB0_20:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s2, s3, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s3, s2
	s_cbranch_execnz .LBB0_37
.LBB0_21:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s2, s24, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s3, s2
	s_cbranch_execnz .LBB0_38
.LBB0_22:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s1, s1, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s1
	s_cbranch_execnz .LBB0_39
.LBB0_23:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s1, s0
	s_cbranch_execnz .LBB0_40
.LBB0_24:
	.loc	1 970 5                         ; ragged.py:970:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.LBB0_25:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v17, s48, v74
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v19, v13, v15, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[17:18], null, v17, s16, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s2, s50, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s51, v18, s2
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v19, off
	s_or_b32 exec_lo, exec_lo, s15
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s2, s14, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s14, s2
	s_cbranch_execz .LBB0_10
.LBB0_26:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v17, s48, v73
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v19, v9, v11, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[17:18], null, v17, s16, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s2, s50, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s51, v18, s2
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v19, off
	s_or_b32 exec_lo, exec_lo, s14
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s2, s13, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s13, s2
	s_cbranch_execz .LBB0_11
.LBB0_27:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v17, s48, v72
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v19, v14, v16, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[17:18], null, v17, s16, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s2, s50, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s51, v18, s2
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v19, off
	s_or_b32 exec_lo, exec_lo, s13
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s2, s12, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s12, s2
	s_cbranch_execz .LBB0_12
.LBB0_28:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v17, s48, v71
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v19, v10, v12, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[17:18], null, v17, s16, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s2, s50, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s51, v18, s2
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v19, off
	s_or_b32 exec_lo, exec_lo, s12
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s2, s11, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s11, s2
	s_cbranch_execz .LBB0_13
.LBB0_29:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v17, s48, v70
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v19, v5, v7, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[17:18], null, v17, s16, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s2, s50, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s51, v18, s2
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v19, off
	s_or_b32 exec_lo, exec_lo, s11
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s2, s10, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s10, s2
	s_cbranch_execz .LBB0_14
.LBB0_30:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v17, s48, v69
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v0, v2, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[17:18], null, v17, s16, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s2, s50, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s51, v18, s2
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v19, off
	s_or_b32 exec_lo, exec_lo, s10
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s2, s9, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s9, s2
	s_cbranch_execz .LBB0_15
.LBB0_31:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v17, s48, v68
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v19, v6, v8, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[17:18], null, v17, s16, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s2, s50, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s51, v18, s2
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v19, off
	s_or_b32 exec_lo, exec_lo, s9
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s2, s8, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s8, s2
	s_cbranch_execz .LBB0_16
.LBB0_32:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v17, s48, v67
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v1, v3, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[17:18], null, v17, s16, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s2, s50, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s51, v18, s2
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v19, off
	s_or_b32 exec_lo, exec_lo, s8
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s2, s7, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s7, s2
	s_cbranch_execz .LBB0_17
.LBB0_33:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v17, s48, v66
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v13, v13, v15, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[17:18], null, v17, s16, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s2, s50, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s51, v18, s2
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v13, off
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s2, s6, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s6, s2
	s_cbranch_execz .LBB0_18
.LBB0_34:
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(7)
	v_add_nc_u32_e32 v13, s48, v65
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v9, v11, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[17:18], null, v13, s16, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s2, s50, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s51, v18, s2
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v9, off
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s2, s5, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s5, s2
	s_cbranch_execz .LBB0_19
.LBB0_35:
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(3)
	v_add_nc_u32_e32 v9, s48, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[17:18], null, v9, s16, v[4:5]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v9, v14, v16, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v13, s2, s50, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v14, null, s51, v18, s2
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[13:14], v9, off
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s2, s4, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s4, s2
	s_cbranch_execz .LBB0_20
.LBB0_36:
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(3)
	v_add_nc_u32_e32 v9, s48, v63
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v11, v10, v12, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[13:14], null, v9, s16, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v14, 31, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[13:14], 2, v[13:14]
	v_add_co_u32 v9, s2, s50, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v10, null, s51, v14, s2
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[9:10], v11, off
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s2, s3, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s3, s2
	s_cbranch_execz .LBB0_21
.LBB0_37:
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(3)
	v_add_nc_u32_e32 v9, s48, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[9:10], null, v9, s16, v[4:5]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v5, v5, v7, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v10, 31, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	v_add_co_u32 v9, s2, s50, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v10, null, s51, v10, s2
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[9:10], v5, off
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s2, s24, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s3, s2
	s_cbranch_execz .LBB0_22
.LBB0_38:
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(6)
	v_add_nc_u32_e32 v5, s48, v61
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v2, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[9:10], null, v5, s16, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v10, 31, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	v_add_co_u32 v9, s2, s50, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v10, null, s51, v10, s2
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[9:10], v0, off
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s1, s1, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s1
	s_cbranch_execz .LBB0_23
.LBB0_39:
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(2)
	v_add_nc_u32_e32 v0, s48, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[9:10], null, v0, s16, v[4:5]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v6, v8, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v10, 31, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	v_add_co_u32 v5, s1, s50, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v6, null, s51, v10, s1
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[5:6], v0, off
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s1, s0
	s_cbranch_execz .LBB0_24
.LBB0_40:
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(2)
	v_add_nc_u32_e32 v0, s48, v59
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v1, v3, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[4:5], null, v0, s16, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v5, 31, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_add_co_u32 v0, vcc_lo, s50, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s51, v5, vcc_lo
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[0:1], v2, off
	.loc	1 970 5 is_stmt 1               ; ragged.py:970:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 116
		.amdhsa_next_free_sgpr 59
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.num_vgpr, 116
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.numbered_sgpr, 59
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9640
; TotalNumSgprs: 61
; NumVgprs: 116
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 61
; NumVGPRsForWavesPerEU: 116
; Occupancy: 12
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
	.short	995                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	996                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     61
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     116
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
