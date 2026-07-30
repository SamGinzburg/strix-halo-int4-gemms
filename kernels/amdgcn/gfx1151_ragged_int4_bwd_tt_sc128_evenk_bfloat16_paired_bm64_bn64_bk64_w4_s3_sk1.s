	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 970 0                         ; ragged.py:970:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x30
	s_load_b128 s[36:39], s[0:1], 0x20
.Ltmp0:
	.loc	1 998 20 prologue_end           ; ragged.py:998:20
	s_abs_i32 s9, s2
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_lshrrev_b32_e32 v75, 5, v0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:995:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s56, 63
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
	s_lshr_b32 s6, s6, 26
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
	s_ashr_i32 s4, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_ashr_i32 s6, s5, 6
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v96, 0
.Ltmp11:
	.loc	1 997 27 is_stmt 1              ; ragged.py:997:27
	s_mul_i32 s4, s6, s4
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v98, 0
	.loc	1 998 20                        ; ragged.py:998:20
	s_abs_i32 s5, s4
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v100, 0
	s_cvt_f32_u32 s7, s5
	s_sub_i32 s8, 0, s5
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v102, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_and_b32 v77, 15, v0
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v78, 64, v0
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 998 20                        ; ragged.py:998:20
	v_readfirstlane_b32 s7, v1
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v76, 16, v0
	v_dual_mov_b32 v128, 0 :: v_dual_and_b32 v79, 32, v0
	.loc	1 1113 28                       ; ragged.py:1113:28
	v_and_b32_e32 v33, 31, v0
	.loc	1 998 20                        ; ragged.py:998:20
	s_mul_f32 s7, s7, 0x4f7ffffe
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v74, 4, v75
	v_or_b32_e32 v73, 8, v75
	v_or_b32_e32 v72, 12, v75
	.loc	1 998 20                        ; ragged.py:998:20
	s_cvt_u32_f32 s7, s7
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v71, 16, v75
	v_or_b32_e32 v70, 20, v75
	v_or_b32_e32 v69, 24, v75
	.loc	1 998 20                        ; ragged.py:998:20
	s_mul_i32 s8, s8, s7
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v68, 28, v75
	.loc	1 998 20                        ; ragged.py:998:20
	s_mul_hi_u32 s8, s7, s8
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v67, 32, v75
	.loc	1 998 20                        ; ragged.py:998:20
	s_add_i32 s7, s7, s8
	s_xor_b32 s8, s2, s4
	s_mul_hi_u32 s7, s9, s7
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s10, s7, s5
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v66, 36, v75
	.loc	1 998 20                        ; ragged.py:998:20
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s7, 1
	s_sub_i32 s11, s9, s5
	s_cmp_ge_u32 s9, s5
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v65, 40, v75
	.loc	1 998 20                        ; ragged.py:998:20
	s_cselect_b32 s7, s10, s7
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s7, 1
	s_cmp_ge_u32 s9, s5
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v64, 44, v75
	.loc	1 998 20                        ; ragged.py:998:20
	s_cselect_b32 s5, s10, s7
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s7, s6
	.loc	1 998 20                        ; ragged.py:998:20
	s_xor_b32 s5, s5, s8
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_cvt_f32_u32 s9, s7
	.loc	1 998 20                        ; ragged.py:998:20
	s_sub_i32 s48, s5, s8
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s5, 0, s7
	.loc	1 999 22                        ; ragged.py:999:22
	s_mul_i32 s4, s48, s4
	.loc	1 1000 17                       ; ragged.py:1000:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 999 16                        ; ragged.py:999:16
	s_sub_i32 s2, s2, s4
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v63, 48, v75
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_xor_b32 s8, s2, s6
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v62, 52, v75
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_ashr_i32 s8, s8, 31
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v61, 56, v75
	v_or_b32_e32 v60, 60, v75
	s_mov_b32 s60, 0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 1000 17                       ; ragged.py:1000:17
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s5, s9
	s_mul_hi_u32 s4, s9, s5
	s_abs_i32 s5, s2
	s_add_i32 s9, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s9
	s_mul_i32 s9, s4, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s9
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s5, s7
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s5, s10, s5
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s9, s4
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_ashr_i32 s49, s48, 31
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_lshl_b64 s[4:5], s[48:49], 2
	.loc	1 1001 24                       ; ragged.py:1001:24
	s_mul_i32 s6, s7, s6
	.loc	1 1003 18                       ; ragged.py:1003:18
	s_lshl_b32 s58, s7, 6
	.loc	1 1001 17                       ; ragged.py:1001:17
	s_sub_i32 s59, s2, s6
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_add_u32 s4, s36, s4
	s_addc_u32 s5, s37, s5
	.loc	1 1207 37                       ; ragged.py:1207:37
	s_mul_i32 s37, s48, s56
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_load_b32 s49, s[4:5], 0x0
	.loc	1 1008 27                       ; ragged.py:1008:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s49, s49, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cmp_lt_i32 s49, 2
	s_cbranch_scc1 .LBB0_7
; %bb.1:                                ; %.preheader.lr.ph
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_lshrrev_b32_e32 v3, 4, v76
	v_lshrrev_b32_e32 v4, 1, v79
	s_clause 0x1
	s_load_b256 s[40:47], s[0:1], 0x0
	s_load_b64 s[52:53], s[0:1], 0x38
	.loc	1 1004 18                       ; ragged.py:1004:18
	s_lshl_b32 s50, s59, 6
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_lshrrev_b32_e32 v2, 2, v78
	v_dual_mov_b32 v128, 0 :: v_dual_and_b32 v1, 63, v0
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or3_b32 v101, v3, v4, s50
	v_or_b32_e32 v3, s50, v63
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v2, v2, v77
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v5, s50, v75
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v10, s58, v1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v4, s50, v62
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s15, s57, v3
	.loc	1 1113 28                       ; ragged.py:1113:28
	v_lshrrev_b32_e32 v3, 6, v78
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s36, s57, v5
	v_dual_mov_b32 v112, 0 :: v_dual_lshlrev_b32 v5, 4, v79
	v_cmp_gt_i32_e64 s16, s57, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, s56, v3, v[1:2]
	v_dual_mov_b32 v124, 0 :: v_dual_lshlrev_b32 v1, 1, v0
	v_dual_mov_b32 v123, 0 :: v_dual_lshlrev_b32 v4, 5, v77
	.loc	1 1118 23                       ; ragged.py:1118:23
	s_lshl_b32 s3, s3, 5
	v_dual_mov_b32 v122, 0 :: v_dual_and_b32 v1, 24, v1
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[36:37], null, s52, v75, v[33:34]
	v_mad_u64_u32 v[37:38], null, s56, 6, v[34:35]
	v_mad_u64_u32 v[38:39], null, s56, 10, v[34:35]
	v_mad_u64_u32 v[39:40], null, s56, 12, v[34:35]
	v_mad_u64_u32 v[40:41], null, s56, 14, v[34:35]
	v_mad_u64_u32 v[41:42], null, s56, 18, v[34:35]
	v_mad_u64_u32 v[42:43], null, s56, 20, v[34:35]
	v_mad_u64_u32 v[43:44], null, s56, 22, v[34:35]
	v_mad_u64_u32 v[44:45], null, s56, 24, v[34:35]
	v_mad_u64_u32 v[45:46], null, s56, 26, v[34:35]
	v_mad_u64_u32 v[46:47], null, s56, 28, v[34:35]
	v_mad_u64_u32 v[47:48], null, s56, 30, v[34:35]
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v7, 32, v2
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_lshr_b32 s54, s49, 1
	v_mad_u64_u32 v[48:49], null, s52, 12, v[36:37]
	s_cmp_lt_i32 s3, 64
	v_mad_u64_u32 v[49:50], null, s52, 20, v[36:37]
	v_mad_u64_u32 v[50:51], null, s52, 24, v[36:37]
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v6, s50, v74
	v_or_b32_e32 v8, s50, v73
	v_or_b32_e32 v9, s50, v72
	.loc	1 1123 43                       ; ragged.py:1123:43
	s_mul_i32 s61, s48, s52
	.loc	1 1214 37                       ; ragged.py:1214:37
	s_mul_i32 s62, s48, s53
	.loc	1 1127 43                       ; ragged.py:1127:43
	s_mul_i32 s55, s48, s57
	s_cselect_b32 s63, -1, 0
	s_mov_b32 s48, s40
	s_mov_b32 s40, s42
	v_or3_b32 v135, v4, v1, v5
	s_add_i32 s42, s58, s37
	v_mad_u64_u32 v[51:52], null, s52, 28, v[36:37]
	v_mad_u64_u32 v[52:53], null, s52, 36, v[36:37]
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v11, s58, v2
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v134, 0, v2
	v_dual_mov_b32 v103, 0 :: v_dual_add_nc_u32 v2, s42, v2
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v4, s42, v7
	v_mad_u64_u32 v[53:54], null, s52, 40, v[36:37]
	v_mad_u64_u32 v[54:55], null, s52, 44, v[36:37]
	v_mad_u64_u32 v[55:56], null, s52, 48, v[36:37]
	v_or_b32_e32 v12, s58, v7
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v13, s50, v71
	v_or_b32_e32 v14, s50, v70
	v_or_b32_e32 v15, s50, v69
	v_or_b32_e32 v16, s50, v68
	v_or_b32_e32 v17, s50, v67
	v_or_b32_e32 v18, s50, v66
	v_or_b32_e32 v19, s50, v65
	v_or_b32_e32 v20, s50, v64
	v_or_b32_e32 v21, s50, v61
	v_or_b32_e32 v22, s50, v60
	v_or_b32_e32 v105, 2, v101
	v_or_b32_e32 v106, 4, v101
	v_or_b32_e32 v107, 6, v101
	v_or_b32_e32 v108, 8, v101
	v_or_b32_e32 v109, 10, v101
	v_or_b32_e32 v110, 12, v101
	v_or_b32_e32 v111, 14, v101
	v_or_b32_e32 v113, 32, v101
	v_or_b32_e32 v114, 34, v101
	v_or_b32_e32 v115, 36, v101
	v_or_b32_e32 v116, 38, v101
	v_or_b32_e32 v117, 40, v101
	v_or_b32_e32 v118, 42, v101
	v_or_b32_e32 v119, 44, v101
	v_or_b32_e32 v120, 46, v101
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s56, v10
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s4, s57, v6
	v_cmp_gt_i32_e64 s5, s57, v8
	v_cmp_gt_i32_e64 s6, s57, v9
	v_or_b32_e32 v3, 0x380, v0
	v_or_b32_e32 v6, 0x780, v0
	v_xor_b32_e32 v8, 0x88, v0
	v_xor_b32_e32 v9, 0x110, v0
	v_xor_b32_e32 v1, 0x198, v0
	v_xor_b32_e32 v5, 8, v135
	v_xor_b32_e32 v7, 16, v135
	v_xor_b32_e32 v10, 24, v135
	v_mad_u64_u32 v[56:57], null, s52, 52, v[36:37]
	v_mad_u64_u32 v[57:58], null, s52, 56, v[36:37]
	v_mul_lo_u32 v136, v2, s53
	v_mul_lo_u32 v137, v4, s53
	v_mad_u64_u32 v[58:59], null, s52, 60, v[36:37]
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s1, s56, v11
	v_cmp_gt_i32_e64 s2, s56, v12
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s7, s57, v13
	v_cmp_gt_i32_e64 s8, s57, v14
	v_cmp_gt_i32_e64 s9, s57, v15
	v_cmp_gt_i32_e64 s10, s57, v16
	v_cmp_gt_i32_e64 s11, s57, v17
	v_cmp_gt_i32_e64 s12, s57, v18
	v_cmp_gt_i32_e64 s13, s57, v19
	v_cmp_gt_i32_e64 s14, s57, v20
	v_cmp_gt_i32_e64 s17, s57, v21
	v_cmp_gt_i32_e64 s18, s57, v22
	v_cmp_gt_i32_e64 s19, s57, v101
	v_cmp_gt_i32_e64 s20, s57, v105
	v_cmp_gt_i32_e64 s21, s57, v106
	v_cmp_gt_i32_e64 s22, s57, v107
	v_cmp_gt_i32_e64 s23, s57, v108
	v_cmp_gt_i32_e64 s24, s57, v109
	v_cmp_gt_i32_e64 s25, s57, v110
	v_cmp_gt_i32_e64 s26, s57, v111
	v_cmp_gt_i32_e64 s27, s57, v113
	v_cmp_gt_i32_e64 s28, s57, v114
	v_cmp_gt_i32_e64 s29, s57, v115
	v_cmp_gt_i32_e64 s30, s57, v116
	v_cmp_gt_i32_e64 s31, s57, v117
	v_cmp_gt_i32_e64 s33, s57, v118
	v_cmp_gt_i32_e64 s34, s57, v119
	v_cmp_gt_i32_e64 s35, s57, v120
	v_lshl_add_u32 v125, s56, 1, v34
	v_lshl_add_u32 v126, s56, 2, v34
	v_lshl_add_u32 v127, s56, 3, v34
	v_lshl_add_u32 v129, s56, 4, v34
	v_lshl_add_u32 v130, s52, 2, v36
	v_lshl_add_u32 v131, s52, 3, v36
	v_lshl_add_u32 v132, s52, 4, v36
	v_lshl_add_u32 v133, s52, 5, v36
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v138, 0, v0
	v_dual_mov_b32 v104, 0 :: v_dual_add_nc_u32 v139, 0, v3
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v140, 0, v6
	v_dual_mov_b32 v102, 0 :: v_dual_add_nc_u32 v141, 0, v8
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v142, 0, v9
	v_dual_mov_b32 v100, 0 :: v_dual_add_nc_u32 v143, 0, v1
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v144, 0, v5
	v_dual_mov_b32 v98, 0 :: v_dual_add_nc_u32 v145, 0, v7
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v146, 0, v10
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v59, 0
	v_mov_b32_e32 v82, 0
	v_mov_b32_e32 v80, 0
	v_mov_b32_e32 v94, 0
	s_add_i32 s64, s50, s55
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_add_i32 s54, s54, -1
	s_and_b32 s49, s41, 0xffff
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	s_mul_i32 s64, s64, s52
	s_and_b32 s41, s43, 0xffff
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s53, s47, 0xffff
	s_mov_b32 s52, s46
	s_lshr_b32 s65, s54, 6
	s_mov_b32 s46, 0
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v14, v136, s60, 1
	v_add_lshl_u32 v15, v137, s60, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s42, s60, s62
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_mov_b32 s46, s50
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s42, s42, s57
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v16, v101, s42, 1
	v_add_lshl_u32 v24, v113, s42, 1
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v17, v105, s42, 1
	v_add_lshl_u32 v31, v114, s42, 1
	v_add_lshl_u32 v18, v106, s42, 1
	v_add_lshl_u32 v32, v115, s42, 1
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_mov_b32 s47, s51
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v19, v107, s42, 1
	v_add_lshl_u32 v160, v116, s42, 1
	v_add_lshl_u32 v20, v108, s42, 1
	v_add_lshl_u32 v21, v109, s42, 1
	v_add_lshl_u32 v22, v110, s42, 1
	v_add_lshl_u32 v23, v111, s42, 1
	v_add_lshl_u32 v161, v117, s42, 1
	v_add_lshl_u32 v162, v118, s42, 1
	v_add_lshl_u32 v163, v119, s42, 1
	v_add_lshl_u32 v164, v120, s42, 1
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_clause 0x1
	buffer_load_u16 v14, v14, s[44:47], 0 offen
	buffer_load_u16 v15, v15, s[44:47], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_cndmask_b32_e64 v16, 0x80000000, v16, s19
	v_cndmask_b32_e64 v24, 0x80000000, v24, s27
	v_cndmask_b32_e64 v17, 0x80000000, v17, s20
	v_cndmask_b32_e64 v31, 0x80000000, v31, s28
	v_cndmask_b32_e64 v18, 0x80000000, v18, s21
	v_cndmask_b32_e64 v32, 0x80000000, v32, s29
	s_mov_b32 s54, s50
	s_mov_b32 s55, s51
	v_cndmask_b32_e64 v19, 0x80000000, v19, s22
	v_cndmask_b32_e64 v160, 0x80000000, v160, s30
	v_cndmask_b32_e64 v20, 0x80000000, v20, s23
	v_cndmask_b32_e64 v21, 0x80000000, v21, s24
	v_cndmask_b32_e64 v22, 0x80000000, v22, s25
	v_cndmask_b32_e64 v23, 0x80000000, v23, s26
	v_cndmask_b32_e64 v161, 0x80000000, v161, s31
	v_cndmask_b32_e64 v162, 0x80000000, v162, s33
	v_cndmask_b32_e64 v163, 0x80000000, v163, s34
	v_cndmask_b32_e64 v164, 0x80000000, v164, s35
	s_clause 0xf
	buffer_load_u16 v16, v16, s[52:55], 0 offen
	buffer_load_u16 v17, v17, s[52:55], 0 offen
	buffer_load_u16 v18, v18, s[52:55], 0 offen
	buffer_load_u16 v19, v19, s[52:55], 0 offen
	buffer_load_u16 v20, v20, s[52:55], 0 offen
	buffer_load_u16 v21, v21, s[52:55], 0 offen
	buffer_load_u16 v22, v22, s[52:55], 0 offen
	buffer_load_u16 v23, v23, s[52:55], 0 offen
	buffer_load_u16 v24, v24, s[52:55], 0 offen
	buffer_load_u16 v31, v31, s[52:55], 0 offen
	buffer_load_u16 v32, v32, s[52:55], 0 offen
	buffer_load_u16 v160, v160, s[52:55], 0 offen
	buffer_load_u16 v161, v161, s[52:55], 0 offen
	buffer_load_u16 v162, v162, s[52:55], 0 offen
	buffer_load_u16 v163, v163, s[52:55], 0 offen
	buffer_load_u16 v164, v164, s[52:55], 0 offen
	.loc	1 1220 17                       ; ragged.py:1220:17
	s_add_i32 s42, s60, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_lshl_b32 s46, s42, 6
	s_cmp_lg_u32 s60, s65
	s_mov_b32 s60, s42
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v14, 16, v14
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt vmcnt(16)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v158, v158, v14 :: v_dual_lshlrev_b32 v15, 16, v15
	v_mul_f32_e32 v2, v2, v15
	v_mul_f32_e32 v27, v27, v15
	v_mul_f32_e32 v159, v159, v14
	v_mul_f32_e32 v157, v157, v14
	v_mul_f32_e32 v156, v156, v14
	v_mul_f32_e32 v155, v155, v14
	v_mul_f32_e32 v154, v154, v14
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v16, 16, v16
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v25, v25, v15 :: v_dual_lshlrev_b32 v18, 16, v18
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v19, 16, v19
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v152, v152, v14 :: v_dual_lshlrev_b32 v21, 16, v21
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v13, v13, v15 :: v_dual_lshlrev_b32 v22, 16, v22
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v150, v150, v14 :: v_dual_lshlrev_b32 v23, 16, v23
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v148, v148, v14 :: v_dual_lshlrev_b32 v31, 16, v31
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v153, v153, v14 :: v_dual_lshlrev_b32 v32, 16, v32
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v151, v151, v14 :: v_dual_lshlrev_b32 v160, 16, v160
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v30, v30, v14 :: v_dual_lshlrev_b32 v161, 16, v161
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v11, v11, v15 :: v_dual_lshlrev_b32 v162, 16, v162
	.loc	1 1219 17                       ; ragged.py:1219:17
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v128, v159, v17 :: v_dual_lshlrev_b32 v163, 16, v163
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v149, v149, v14 :: v_dual_lshlrev_b32 v164, 16, v164
	v_mul_f32_e32 v147, v147, v14
	v_mul_f32_e32 v29, v29, v14
	v_dual_mul_f32 v1, v1, v14 :: v_dual_mul_f32 v26, v26, v15
	v_mul_f32_e32 v14, v28, v15
	v_dual_mul_f32 v12, v12, v15 :: v_dual_fmac_f32 v121, v155, v21
	v_dual_mul_f32 v10, v10, v15 :: v_dual_fmac_f32 v103, v152, v24
	v_dual_mul_f32 v9, v9, v15 :: v_dual_fmac_f32 v124, v158, v18
	v_dual_mul_f32 v8, v8, v15 :: v_dual_fmac_f32 v99, v149, v160
	v_dual_mul_f32 v7, v7, v15 :: v_dual_fmac_f32 v122, v156, v20
	v_dual_mul_f32 v6, v6, v15 :: v_dual_fmac_f32 v97, v147, v162
	v_dual_mul_f32 v5, v5, v15 :: v_dual_fmac_f32 v112, v154, v22
	v_dual_mul_f32 v4, v4, v15 :: v_dual_fmac_f32 v95, v29, v164
	v_dual_mul_f32 v3, v3, v15 :: v_dual_fmac_f32 v100, v150, v32
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_dual_fmac_f32 v123, v157, v19 :: v_dual_fmac_f32 v98, v148, v161
	v_dual_fmac_f32 v104, v153, v23 :: v_dual_fmac_f32 v93, v14, v17
	v_dual_fmac_f32 v102, v151, v31 :: v_dual_fmac_f32 v59, v1, v16
	v_dual_fmac_f32 v96, v30, v163 :: v_dual_fmac_f32 v89, v13, v21
	v_dual_fmac_f32 v94, v2, v16 :: v_dual_fmac_f32 v87, v11, v23
	v_dual_fmac_f32 v92, v27, v18 :: v_dual_fmac_f32 v91, v26, v19
	v_fmac_f32_e32 v90, v25, v20
	v_dual_fmac_f32 v88, v12, v22 :: v_dual_fmac_f32 v85, v9, v31
	v_dual_fmac_f32 v86, v10, v24 :: v_dual_fmac_f32 v81, v5, v162
	v_fmac_f32_e32 v84, v8, v32
	v_dual_fmac_f32 v83, v7, v160 :: v_dual_fmac_f32 v82, v6, v161
	v_dual_fmac_f32 v80, v4, v163 :: v_dual_fmac_f32 v35, v3, v164
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cbranch_scc0 .LBB0_7
.LBB0_3:                                ; %.preheader
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v158, 0
	v_mov_b32_e32 v157, 0
	v_mov_b32_e32 v159, 0
	.loc	1 1120 27 is_stmt 1             ; ragged.py:1120:27
	s_and_not1_b32 vcc_lo, exec_lo, s63
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v1, 0
	s_mov_b32 s47, s3
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
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
.LBB0_5:                                ; %.lr.ph
                                        ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1121 30 is_stmt 1             ; ragged.py:1121:30
	s_add_i32 s54, s47, s46
	.loc	1 1131 38                       ; ragged.py:1131:38
	s_mov_b32 s42, s50
	.loc	1 1130 46                       ; ragged.py:1130:46
	s_add_i32 s55, s54, s61
	.loc	1 1131 46                       ; ragged.py:1131:46
	s_add_i32 s54, s54, s64
	.loc	1 1130 46                       ; ragged.py:1130:46
	s_mul_i32 s55, s55, s56
	v_add_nc_u32_e32 v147, s54, v36
	v_add_nc_u32_e32 v148, s54, v130
	v_add_nc_u32_e32 v149, s54, v131
	s_add_i32 s55, s55, s58
	v_add_nc_u32_e32 v150, s54, v48
	v_add_nc_u32_e32 v151, s54, v132
	v_add_nc_u32_e32 v152, s54, v49
	v_add_nc_u32_e32 v153, s54, v50
	v_add_nc_u32_e32 v154, s54, v51
	v_add_nc_u32_e32 v155, s54, v133
	v_add_nc_u32_e32 v156, s54, v52
	v_add_nc_u32_e32 v157, s54, v53
	v_add_nc_u32_e32 v158, s54, v54
	v_add_nc_u32_e32 v159, s54, v55
	v_add_nc_u32_e32 v160, s54, v56
	v_add_nc_u32_e32 v161, s54, v57
	v_add_nc_u32_e32 v162, s54, v58
	v_add_nc_u32_e32 v163, s55, v34
	v_add_nc_u32_e32 v164, s55, v125
	v_add_nc_u32_e32 v165, s55, v126
	v_add_nc_u32_e32 v166, s55, v37
	v_add_nc_u32_e32 v167, s55, v127
	v_add_nc_u32_e32 v168, s55, v38
	v_add_nc_u32_e32 v169, s55, v39
	v_add_nc_u32_e32 v170, s55, v40
	v_add_nc_u32_e32 v171, s55, v129
	v_add_nc_u32_e32 v172, s55, v41
	v_add_nc_u32_e32 v173, s55, v42
	v_add_nc_u32_e32 v174, s55, v43
	v_add_nc_u32_e32 v175, s55, v44
	v_add_nc_u32_e32 v176, s55, v45
	v_add_nc_u32_e32 v177, s55, v46
	v_add_nc_u32_e32 v178, s55, v47
	.loc	1 1131 38                       ; ragged.py:1131:38
	v_cndmask_b32_e64 v147, 0x80000000, v147, s36
	v_cndmask_b32_e64 v148, 0x80000000, v148, s4
	v_cndmask_b32_e64 v149, 0x80000000, v149, s5
	s_mov_b32 s43, s51
	v_cndmask_b32_e64 v150, 0x80000000, v150, s6
	v_cndmask_b32_e64 v151, 0x80000000, v151, s7
	v_cndmask_b32_e64 v152, 0x80000000, v152, s8
	v_cndmask_b32_e64 v153, 0x80000000, v153, s9
	v_cndmask_b32_e64 v154, 0x80000000, v154, s10
	v_cndmask_b32_e64 v155, 0x80000000, v155, s11
	v_cndmask_b32_e64 v156, 0x80000000, v156, s12
	v_cndmask_b32_e64 v157, 0x80000000, v157, s13
	v_cndmask_b32_e64 v158, 0x80000000, v158, s14
	v_cndmask_b32_e64 v159, 0x80000000, v159, s15
	v_cndmask_b32_e64 v160, 0x80000000, v160, s16
	v_cndmask_b32_e64 v161, 0x80000000, v161, s17
	v_cndmask_b32_e64 v162, 0x80000000, v162, s18
	.loc	1 1130 38                       ; ragged.py:1130:38
	v_cndmask_b32_e64 v163, 0x80000000, v163, s0
	v_cndmask_b32_e64 v164, 0x80000000, v164, s0
	v_cndmask_b32_e64 v165, 0x80000000, v165, s0
	v_cndmask_b32_e64 v166, 0x80000000, v166, s0
	v_cndmask_b32_e64 v167, 0x80000000, v167, s0
	v_cndmask_b32_e64 v168, 0x80000000, v168, s0
	v_cndmask_b32_e64 v169, 0x80000000, v169, s0
	v_cndmask_b32_e64 v170, 0x80000000, v170, s0
	v_cndmask_b32_e64 v171, 0x80000000, v171, s0
	v_cndmask_b32_e64 v172, 0x80000000, v172, s0
	v_cndmask_b32_e64 v173, 0x80000000, v173, s0
	v_cndmask_b32_e64 v174, 0x80000000, v174, s0
	v_cndmask_b32_e64 v175, 0x80000000, v175, s0
	v_cndmask_b32_e64 v176, 0x80000000, v176, s0
	v_cndmask_b32_e64 v177, 0x80000000, v177, s0
	v_cndmask_b32_e64 v178, 0x80000000, v178, s0
	.loc	1 1131 38                       ; ragged.py:1131:38
	s_clause 0xe
	buffer_load_u8 v147, v147, s[40:43], 0 offen
	buffer_load_u8 v148, v148, s[40:43], 0 offen
	buffer_load_u8 v149, v149, s[40:43], 0 offen
	buffer_load_u8 v150, v150, s[40:43], 0 offen
	buffer_load_u8 v151, v151, s[40:43], 0 offen
	buffer_load_u8 v152, v152, s[40:43], 0 offen
	buffer_load_u8 v153, v153, s[40:43], 0 offen
	buffer_load_u8 v154, v154, s[40:43], 0 offen
	buffer_load_u8 v155, v155, s[40:43], 0 offen
	buffer_load_u8 v156, v156, s[40:43], 0 offen
	buffer_load_u8 v157, v157, s[40:43], 0 offen
	buffer_load_u8 v158, v158, s[40:43], 0 offen
	buffer_load_u8 v159, v159, s[40:43], 0 offen
	buffer_load_u8 v160, v160, s[40:43], 0 offen
	buffer_load_u8 v161, v161, s[40:43], 0 offen
	.loc	1 1130 38                       ; ragged.py:1130:38
	s_clause 0xf
	buffer_load_u8 v163, v163, s[48:51], 0 offen
	buffer_load_u8 v164, v164, s[48:51], 0 offen
	buffer_load_u8 v165, v165, s[48:51], 0 offen
	buffer_load_u8 v166, v166, s[48:51], 0 offen
	buffer_load_u8 v167, v167, s[48:51], 0 offen
	buffer_load_u8 v168, v168, s[48:51], 0 offen
	buffer_load_u8 v169, v169, s[48:51], 0 offen
	buffer_load_u8 v171, v171, s[48:51], 0 offen
	buffer_load_u8 v172, v172, s[48:51], 0 offen
	buffer_load_u8 v173, v173, s[48:51], 0 offen
	buffer_load_u8 v174, v174, s[48:51], 0 offen
	buffer_load_u8 v175, v175, s[48:51], 0 offen
	buffer_load_u8 v176, v176, s[48:51], 0 offen
	buffer_load_u8 v170, v170, s[48:51], 0 offen
	buffer_load_u8 v177, v177, s[48:51], 0 offen
	buffer_load_u8 v178, v178, s[48:51], 0 offen
	.loc	1 1131 38                       ; ragged.py:1131:38
	buffer_load_u8 v162, v162, s[40:43], 0 offen
	v_add_nc_u32_e32 v179, 0, v135
	.loc	1 1130 38                       ; ragged.py:1130:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1142 25                       ; ragged.py:1142:25
	s_add_i32 s42, s47, 32
	.loc	1 1120 27                       ; ragged.py:1120:27
	s_cmp_lt_i32 s47, 32
	s_mov_b32 s47, s42
	.loc	1 1130 38                       ; ragged.py:1130:38
	s_waitcnt vmcnt(16)
	ds_store_b8 v138, v163
	s_waitcnt vmcnt(15)
	ds_store_b8 v138, v164 offset:128
	s_waitcnt vmcnt(14)
	ds_store_b8 v138, v165 offset:256
	s_waitcnt vmcnt(13)
	ds_store_b8 v138, v166 offset:384
	s_waitcnt vmcnt(12)
	ds_store_b8 v138, v167 offset:512
	s_waitcnt vmcnt(11)
	ds_store_b8 v138, v168 offset:640
	s_waitcnt vmcnt(10)
	ds_store_b8 v138, v169 offset:768
	s_waitcnt vmcnt(9)
	ds_store_b8 v138, v171 offset:1024
	s_waitcnt vmcnt(8)
	ds_store_b8 v138, v172 offset:1152
	s_waitcnt vmcnt(7)
	ds_store_b8 v138, v173 offset:1280
	s_waitcnt vmcnt(6)
	ds_store_b8 v138, v174 offset:1408
	s_waitcnt vmcnt(5)
	ds_store_b8 v138, v175 offset:1536
	s_waitcnt vmcnt(4)
	ds_store_b8 v138, v176 offset:1664
	s_waitcnt vmcnt(3)
	ds_store_b8 v139, v170
	s_waitcnt vmcnt(2)
	ds_store_b8 v138, v177 offset:1792
	s_waitcnt vmcnt(1)
	ds_store_b8 v140, v178
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1132 35                       ; ragged.py:1132:35
	ds_load_u8 v163, v134 offset:448
	ds_load_u8 v164, v134 offset:384
	ds_load_u8 v165, v134 offset:320
	ds_load_u8 v166, v134 offset:256
	ds_load_u8 v167, v134 offset:480
	ds_load_u8 v168, v134 offset:416
	ds_load_u8 v169, v134 offset:352
	ds_load_u8 v170, v134 offset:288
	ds_load_u8 v171, v134 offset:192
	ds_load_u8 v172, v134 offset:128
	ds_load_u8 v173, v134 offset:64
	ds_load_u8 v174, v134 offset:224
	ds_load_u8 v175, v134 offset:160
	ds_load_u8 v176, v134 offset:96
	ds_load_u8 v177, v134
	ds_load_u8 v178, v134 offset:32
	ds_load_u8 v180, v134 offset:704
	ds_load_u8 v181, v134 offset:640
	ds_load_u8 v182, v134 offset:576
	ds_load_u8 v183, v134 offset:512
	ds_load_u8 v184, v134 offset:736
	ds_load_u8 v185, v134 offset:672
	ds_load_u8 v186, v134 offset:608
	ds_load_u8 v187, v134 offset:544
	ds_load_u8 v188, v134 offset:960
	ds_load_u8 v189, v134 offset:896
	ds_load_u8 v190, v134 offset:832
	ds_load_u8 v191, v134 offset:768
	ds_load_u8 v192, v134 offset:992
	ds_load_u8 v193, v134 offset:928
	ds_load_u8 v194, v134 offset:864
	ds_load_u8 v195, v134 offset:800
	ds_load_u8 v196, v134 offset:1216
	ds_load_u8 v197, v134 offset:1152
	ds_load_u8 v198, v134 offset:1088
	ds_load_u8 v199, v134 offset:1024
	ds_load_u8 v200, v134 offset:1248
	ds_load_u8 v201, v134 offset:1184
	ds_load_u8 v202, v134 offset:1120
	ds_load_u8 v203, v134 offset:1056
	ds_load_u8 v204, v134 offset:1472
	ds_load_u8 v205, v134 offset:1408
	ds_load_u8 v206, v134 offset:1344
	ds_load_u8 v207, v134 offset:1280
	ds_load_u8 v208, v134 offset:1504
	ds_load_u8 v209, v134 offset:1440
	ds_load_u8 v210, v134 offset:1376
	ds_load_u8 v211, v134 offset:1312
	ds_load_u8 v212, v134 offset:1728
	ds_load_u8 v213, v134 offset:1664
	ds_load_u8 v214, v134 offset:1600
	ds_load_u8 v215, v134 offset:1536
	ds_load_u8 v216, v134 offset:1760
	ds_load_u8 v217, v134 offset:1696
	ds_load_u8 v218, v134 offset:1632
	ds_load_u8 v219, v134 offset:1568
	ds_load_u8 v220, v134 offset:1984
	ds_load_u8 v221, v134 offset:1920
	ds_load_u8 v222, v134 offset:1856
	ds_load_u8 v223, v134 offset:1792
	ds_load_u8 v224, v134 offset:2016
	ds_load_u8 v225, v134 offset:1952
	ds_load_u8 v226, v134 offset:1888
	ds_load_u8 v227, v134 offset:1824
	.loc	1 1131 38                       ; ragged.py:1131:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v138, v147
	ds_store_b8 v138, v151 offset:512
	ds_store_b8 v138, v155 offset:1024
	ds_store_b8 v138, v159 offset:1536
	ds_store_b8 v141, v148
	ds_store_b8 v141, v152 offset:512
	ds_store_b8 v141, v156 offset:1024
	ds_store_b8 v141, v160 offset:1536
	ds_store_b8 v142, v149
	ds_store_b8 v142, v153 offset:512
	ds_store_b8 v142, v157 offset:1024
	ds_store_b8 v142, v161 offset:1536
	ds_store_b8 v143, v150
	ds_store_b8 v143, v154 offset:512
	ds_store_b8 v143, v158 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v143, v162 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[147:150], v179 offset1:2
	ds_load_2addr_stride64_b64 v[151:154], v144 offset1:2
	ds_load_2addr_stride64_b64 v[155:158], v145 offset1:2
	ds_load_2addr_stride64_b64 v[159:162], v146 offset1:2
	.loc	1 1132 35                       ; ragged.py:1132:35
	v_perm_b32 v165, v166, v165, 0xc0c0004
	v_perm_b32 v163, v164, v163, 0xc0c0004
	v_perm_b32 v166, v177, v173, 0xc0c0004
	v_perm_b32 v171, v172, v171, 0xc0c0004
	v_perm_b32 v172, v191, v190, 0xc0c0004
	v_perm_b32 v173, v189, v188, 0xc0c0004
	v_perm_b32 v177, v183, v182, 0xc0c0004
	v_perm_b32 v183, v197, v196, 0xc0c0004
	v_perm_b32 v196, v170, v169, 0xc0c0004
	v_perm_b32 v197, v168, v167, 0xc0c0004
	v_perm_b32 v176, v178, v176, 0xc0c0004
	v_perm_b32 v174, v175, v174, 0xc0c0004
	v_perm_b32 v179, v181, v180, 0xc0c0004
	v_perm_b32 v175, v195, v194, 0xc0c0004
	v_perm_b32 v178, v193, v192, 0xc0c0004
	v_perm_b32 v186, v187, v186, 0xc0c0004
	v_perm_b32 v184, v185, v184, 0xc0c0004
	v_lshl_or_b32 v164, v163, 16, v165
	v_lshl_or_b32 v163, v171, 16, v166
	v_lshl_or_b32 v166, v173, 16, v172
	v_lshl_or_b32 v172, v197, 16, v196
	v_lshl_or_b32 v171, v174, 16, v176
	v_perm_b32 v180, v207, v206, 0xc0c0004
	v_perm_b32 v181, v205, v204, 0xc0c0004
	v_perm_b32 v182, v199, v198, 0xc0c0004
	v_perm_b32 v185, v211, v210, 0xc0c0004
	v_perm_b32 v187, v209, v208, 0xc0c0004
	v_perm_b32 v192, v203, v202, 0xc0c0004
	v_perm_b32 v193, v201, v200, 0xc0c0004
	v_lshl_or_b32 v165, v179, 16, v177
	v_lshl_or_b32 v174, v178, 16, v175
	v_lshl_or_b32 v173, v184, 16, v186
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[147:148], v[163:164], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[149:150], v[163:164], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[147:148], v[171:172], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[149:150], v[171:172], v[17:24] neg_lo:[1,1,0]
	v_perm_b32 v188, v223, v222, 0xc0c0004
	v_perm_b32 v189, v221, v220, 0xc0c0004
	v_perm_b32 v190, v215, v214, 0xc0c0004
	v_perm_b32 v191, v213, v212, 0xc0c0004
	v_perm_b32 v194, v227, v226, 0xc0c0004
	v_perm_b32 v195, v225, v224, 0xc0c0004
	v_perm_b32 v198, v219, v218, 0xc0c0004
	v_perm_b32 v199, v217, v216, 0xc0c0004
	v_lshl_or_b32 v168, v181, 16, v180
	v_lshl_or_b32 v167, v183, 16, v182
	v_lshl_or_b32 v176, v187, 16, v185
	v_lshl_or_b32 v175, v193, 16, v192
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[151:152], v[165:166], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[153:154], v[165:166], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[151:152], v[173:174], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[153:154], v[173:174], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v170, v189, 16, v188
	v_lshl_or_b32 v169, v191, 16, v190
	v_lshl_or_b32 v148, v195, 16, v194
	v_lshl_or_b32 v147, v199, 16, v198
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[155:156], v[167:168], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[157:158], v[167:168], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[155:156], v[175:176], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[157:158], v[175:176], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[159:160], v[169:170], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[161:162], v[169:170], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[159:160], v[147:148], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[161:162], v[147:148], v[17:24] neg_lo:[1,1,0]
	.loc	1 1120 27                       ; ragged.py:1120:27
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1204 27                       ; ragged.py:1204:27
	v_cvt_f32_i32_e32 v159, v2
	v_cvt_f32_i32_e32 v158, v3
	v_cvt_f32_i32_e32 v157, v4
	v_cvt_f32_i32_e32 v156, v5
	v_cvt_f32_i32_e32 v155, v6
	v_cvt_f32_i32_e32 v154, v7
	v_cvt_f32_i32_e32 v153, v8
	v_cvt_f32_i32_e32 v152, v25
	v_cvt_f32_i32_e32 v151, v26
	v_cvt_f32_i32_e32 v150, v27
	v_cvt_f32_i32_e32 v149, v28
	v_cvt_f32_i32_e32 v148, v29
	v_cvt_f32_i32_e32 v147, v30
	v_cvt_f32_i32_e32 v30, v31
	v_cvt_f32_i32_e32 v29, v32
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v9
	v_cvt_f32_i32_e32 v28, v10
	v_cvt_f32_i32_e32 v27, v11
	v_cvt_f32_i32_e32 v26, v12
	v_cvt_f32_i32_e32 v25, v13
	v_cvt_f32_i32_e32 v13, v14
	v_cvt_f32_i32_e32 v12, v15
	v_cvt_f32_i32_e32 v11, v16
	v_cvt_f32_i32_e32 v10, v17
	v_cvt_f32_i32_e32 v9, v18
	v_cvt_f32_i32_e32 v8, v19
	v_cvt_f32_i32_e32 v7, v20
	v_cvt_f32_i32_e32 v6, v21
	v_cvt_f32_i32_e32 v5, v22
	v_cvt_f32_i32_e32 v4, v23
	v_cvt_f32_i32_e32 v3, v24
	s_branch .LBB0_2
.LBB0_7:                                ; %Flow197
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_bfe_u32 v1, v128, 16, 1
	v_bfe_u32 v5, v122, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v128, v128
	v_bfe_u32 v3, v124, 16, 1
	v_bfe_u32 v4, v123, 16, 1
	v_add3_u32 v1, v128, v1, 0x7fff
	v_add3_u32 v5, v122, v5, 0x7fff
	v_cmp_o_f32_e64 s1, v122, v122
	v_bfe_u32 v9, v103, 16, 1
	v_mov_b16_e32 v2.h, 0
	v_cmp_o_f32_e64 s0, v124, v124
	v_add3_u32 v3, v124, v3, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_add3_u32 v4, v123, v4, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v123, v123
	v_bfe_u32 v7, v112, 16, 1
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s1
	v_bfe_u32 v8, v104, 16, 1
	v_add3_u32 v9, v103, v9, 0x7fff
	v_cmp_o_f32_e64 s1, v103, v103
	v_bfe_u32 v13, v98, 16, 1
	v_mov_b16_e32 v2.l, v94.h
	v_cndmask_b16 v3.l, 0x7fff, v3.h, s0
	v_cndmask_b16 v4.l, 0x7fff, v4.h, vcc_lo
	v_add3_u32 v7, v112, v7, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v112, v112
	v_add3_u32 v8, v104, v8, 0x7fff
	v_cmp_o_f32_e64 s0, v104, v104
	v_bfe_u32 v11, v100, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s1
	v_bfe_u32 v12, v99, 16, 1
	v_add3_u32 v13, v98, v13, 0x7fff
	v_cmp_o_f32_e64 s1, v98, v98
	v_mov_b16_e32 v17.h, v2.h
	v_and_b32_e32 v2, 1, v2
	v_bfe_u32 v6, v121, 16, 1
	v_cndmask_b16 v7.l, 0x7fff, v7.h, vcc_lo
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s0
	v_add3_u32 v11, v100, v11, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v100, v100
	v_add3_u32 v12, v99, v12, 0x7fff
	v_cmp_o_f32_e64 s0, v99, v99
	v_bfe_u32 v15, v96, 16, 1
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s1
	v_bfe_u32 v16, v95, 16, 1
	v_mov_b16_e32 v17.l, v59.h
	v_add3_u32 v2, v94, v2, 0x7fff
	v_cmp_o_f32_e64 s1, v94, v94
	v_bfe_u32 v19, v92, 16, 1
	v_add3_u32 v6, v121, v6, 0x7fff
	v_cmp_o_f32_e64 s2, v121, v121
	v_bfe_u32 v10, v102, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, vcc_lo
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s0
	v_add3_u32 v15, v96, v15, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v96, v96
	v_add3_u32 v16, v95, v16, 0x7fff
	v_cmp_o_f32_e64 s0, v95, v95
	v_and_b32_e32 v17, 1, v17
	v_cndmask_b16 v18.h, 0x7fff, v2.h, s1
	v_add3_u32 v19, v92, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v92, v92
	v_cndmask_b16 v6.l, 0x7fff, v6.h, s2
	v_add3_u32 v10, v102, v10, 0x7fff
	v_cmp_o_f32_e64 s2, v102, v102
	v_bfe_u32 v14, v97, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v15.h, vcc_lo
	v_cndmask_b16 v15.l, 0x7fff, v16.h, s0
	v_add3_u32 v16, v59, v17, 0x7fff
	v_bfe_u32 v17, v93, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v59, v59
	v_cndmask_b16 v3.h, 0x7fff, v19.h, s1
	v_bfe_u32 v19, v88, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s2
	v_add3_u32 v14, v97, v14, 0x7fff
	v_cmp_o_f32_e64 s2, v97, v97
	v_bfe_u32 v20, v91, 16, 1
	v_add3_u32 v17, v93, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v93, v93
	v_cndmask_b16 v18.l, 0x7fff, v16.h, vcc_lo
	v_bfe_u32 v16, v90, 16, 1
	v_add3_u32 v19, v88, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v88, v88
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s2
	v_add3_u32 v20, v91, v20, 0x7fff
	v_cmp_o_f32_e64 s2, v91, v91
	v_cndmask_b16 v1.h, 0x7fff, v17.h, s0
	v_bfe_u32 v17, v89, 16, 1
	v_add3_u32 v16, v90, v16, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v90, v90
	v_cndmask_b16 v7.h, 0x7fff, v19.h, s1
	v_bfe_u32 v19, v84, 16, 1
	v_cndmask_b16 v4.h, 0x7fff, v20.h, s2
	v_bfe_u32 v20, v87, 16, 1
	v_add3_u32 v17, v89, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v89, v89
	v_cndmask_b16 v5.h, 0x7fff, v16.h, vcc_lo
	v_bfe_u32 v16, v86, 16, 1
	v_add3_u32 v19, v84, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v84, v84
	v_add3_u32 v20, v87, v20, 0x7fff
	v_cmp_o_f32_e64 s2, v87, v87
	v_cndmask_b16 v6.h, 0x7fff, v17.h, s0
	v_bfe_u32 v17, v85, 16, 1
	v_add3_u32 v16, v86, v16, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v86, v86
	v_cndmask_b16 v11.h, 0x7fff, v19.h, s1
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_lshlrev_b32_e32 v19, 2, v33
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_cndmask_b16 v8.h, 0x7fff, v20.h, s2
	v_bfe_u32 v20, v83, 16, 1
	v_add3_u32 v17, v85, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v85, v85
	v_cndmask_b16 v9.h, 0x7fff, v16.h, vcc_lo
	v_bfe_u32 v16, v82, 16, 1
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_lshl_or_b32 v19, v77, 8, v19
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_add3_u32 v20, v83, v20, 0x7fff
	v_cmp_o_f32_e64 s2, v83, v83
	v_cndmask_b16 v10.h, 0x7fff, v17.h, s0
	v_bfe_u32 v17, v81, 16, 1
	v_add3_u32 v16, v82, v16, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v82, v82
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_xor_b32_e32 v19, v19, v79
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_cndmask_b16 v12.h, 0x7fff, v20.h, s2
	v_bfe_u32 v20, v80, 16, 1
	v_add3_u32 v17, v81, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v81, v81
	v_cndmask_b16 v13.h, 0x7fff, v16.h, vcc_lo
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_lshl_or_b32 v16, v78, 1, v19
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_bfe_u32 v21, v35, 16, 1
	v_add3_u32 v20, v80, v20, 0x7fff
	v_cmp_o_f32_e64 s1, v80, v80
	v_cndmask_b16 v14.h, 0x7fff, v17.h, s0
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_add_nc_u32_e32 v17, 0, v16
	v_xad_u32 v24, 0x1040, v16, 0
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_add3_u32 v21, v35, v21, 0x7fff
	v_cmp_o_f32_e64 s2, v35, v35
	v_cndmask_b16 v2.h, 0x7fff, v20.h, s1
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_xad_u32 v19, v16, 4, 0
	v_xad_u32 v20, v16, 8, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xad_u32 v27, 0x1044, v16, 0
	ds_store_b32 v17, v18
	ds_store_b32 v24, v9
	v_xad_u32 v9, 0x1048, v16, 0
	v_and_b32_e32 v0, 0x60, v0
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_cndmask_b16 v15.h, 0x7fff, v21.h, s2
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_xad_u32 v21, v16, 12, 0
	ds_store_b32 v19, v1
	ds_store_b32 v27, v10
	ds_store_b32 v20, v3
	ds_store_b32 v9, v11
	v_lshlrev_b32_e32 v3, 2, v77
	v_xad_u32 v1, 0x104c, v16, 0
	ds_store_b32 v21, v4
	ds_store_b32 v1, v12
	v_lshrrev_b32_e32 v1, 3, v0
	v_lshl_or_b32 v0, v0, 3, v3
	v_cmp_eq_u32_e32 vcc_lo, 0, v76
	v_xad_u32 v22, v16, 16, 0
	v_xad_u32 v23, v16, 20, 0
	v_xad_u32 v9, 0x1050, v16, 0
	v_xor_b32_e32 v0, v0, v1
	v_cndmask_b32_e64 v4, 0x1040, 0, vcc_lo
	v_xad_u32 v3, 0x1054, v16, 0
	v_xad_u32 v25, v16, 24, 0
	v_xad_u32 v1, 0x1058, v16, 0
	v_xad_u32 v26, v16, 28, 0
	v_or_b32_e32 v0, v0, v4
	ds_store_b32 v22, v5
	ds_store_b32 v9, v13
	ds_store_b32 v23, v6
	ds_store_b32 v3, v14
	v_xad_u32 v3, 0x105c, v16, 0
	ds_store_b32 v25, v7
	ds_store_b32 v1, v2
	ds_store_b32 v26, v8
	ds_store_b32 v3, v15
	v_add_nc_u32_e32 v1, 0, v0
	v_xad_u32 v2, v0, 64, 0
	v_xad_u32 v3, 0x410, v0, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[13:14], v1 offset1:32
	ds_load_2addr_b32 v[15:16], v2 offset1:32
	ds_load_2addr_b32 v[9:10], v3 offset1:32
	v_xad_u32 v1, 0x450, v0, 0
	v_xad_u32 v2, 0x820, v0, 0
	v_xad_u32 v3, 0x860, v0, 0
	v_xad_u32 v4, 0xc30, v0, 0
	v_xad_u32 v17, 0xc70, v0, 0
	ds_load_2addr_b32 v[11:12], v1 offset1:32
	ds_load_2addr_b32 v[5:6], v2 offset1:32
	ds_load_2addr_b32 v[7:8], v3 offset1:32
	ds_load_2addr_b32 v[0:1], v4 offset1:32
	ds_load_2addr_b32 v[2:3], v17 offset1:32
	.loc	1 1232 37                       ; ragged.py:1232:37
	s_lshr_b32 s0, s57, 31
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v17, s58, v75
	.loc	1 1230 31                       ; ragged.py:1230:31
	v_lshl_or_b32 v4, s59, 5, v33
	.loc	1 1232 37                       ; ragged.py:1232:37
	s_add_i32 s0, s57, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_ashr_i32 s1, s0, 1
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s56, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1236 54                       ; ragged.py:1236:54
	v_cmp_gt_i32_e32 vcc_lo, s1, v4
	.loc	1 1236 33 is_stmt 0             ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17 is_stmt 1             ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_9
; %bb.8:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v17, s37, v17
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v19, v13, v15, 0x1000504
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[17:18], null, v17, s1, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s38, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s39, v18, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v19, off
.LBB0_9:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v17, s58, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s56, v17
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_11
; %bb.10:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v17, s37, v17
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v19, v9, v11, 0x1000504
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[17:18], null, v17, s1, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s38, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s39, v18, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v19, off
.LBB0_11:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v17, s58, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s56, v17
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_13
; %bb.12:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v17, s37, v17
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v5, v7, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[17:18], null, v17, s1, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s38, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s39, v18, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v19, off
.LBB0_13:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v17, s58, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s56, v17
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_15
; %bb.14:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v17, s37, v17
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v0, v2, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[17:18], null, v17, s1, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s38, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s39, v18, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v19, off
.LBB0_15:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v17, s58, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s56, v17
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_17
; %bb.16:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v17, s37, v17
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v19, v14, v16, 0x1000504
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[17:18], null, v17, s1, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s38, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s39, v18, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v19, off
.LBB0_17:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v17, s58, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s56, v17
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_19
; %bb.18:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v17, s37, v17
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v19, v10, v12, 0x1000504
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[17:18], null, v17, s1, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s38, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s39, v18, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v19, off
.LBB0_19:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v17, s58, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s56, v17
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_21
; %bb.20:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v17, s37, v17
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v6, v8, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[17:18], null, v17, s1, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s38, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s39, v18, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v19, off
.LBB0_21:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v17, s58, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s56, v17
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_23
; %bb.22:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v17, s37, v17
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v1, v3, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[17:18], null, v17, s1, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s38, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s39, v18, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v19, off
.LBB0_23:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v17, s58, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s56, v17
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_25
; %bb.24:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v17, s37, v17
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v13, v13, v15, 0x3020706
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[17:18], null, v17, s1, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s38, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s39, v18, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v13, off
.LBB0_25:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(7)
	v_or_b32_e32 v13, s58, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s56, v13
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_27
; %bb.26:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v13, s37, v13
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v9, v9, v11, 0x3020706
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[17:18], null, v13, s1, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s38, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s39, v18, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v9, off
.LBB0_27:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(5)
	v_or_b32_e32 v9, s58, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s56, v9
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_29
; %bb.28:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v9, s37, v9
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[17:18], null, v9, s1, v[4:5]
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v5, v7, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s38, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s39, v18, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v5, off
.LBB0_29:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(3)
	v_or_b32_e32 v5, s58, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s56, v5
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_31
; %bb.30:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v5, s37, v5
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v2, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[17:18], null, v5, s1, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s38, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s39, v18, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v0, off
.LBB0_31:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(1)
	v_or_b32_e32 v0, s58, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s56, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_33
; %bb.32:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s37, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[17:18], null, v0, s1, v[4:5]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v14, v16, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v13, s0, s38, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v14, null, s39, v18, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[13:14], v0, off
.LBB0_33:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v0, s58, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s56, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_35
; %bb.34:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s37, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[13:14], null, v0, s1, v[4:5]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v10, v12, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v14, 31, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[13:14], 2, v[13:14]
	v_add_co_u32 v9, s0, s38, v13
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s39, v14, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[9:10], v0, off
.LBB0_35:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v0, s58, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s56, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_37
; %bb.36:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s37, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[9:10], null, v0, s1, v[4:5]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v6, v8, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v10, 31, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	v_add_co_u32 v5, s0, s38, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, s39, v10, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[5:6], v0, off
.LBB0_37:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v0, s58, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s56, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_39
; %bb.38:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s37, v0
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v1, v3, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[4:5], null, v0, s1, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v5, 31, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_add_co_u32 v0, vcc_lo, s38, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s39, v5, vcc_lo
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[0:1], v2, off
.LBB0_39:
	.loc	1 970 5 is_stmt 1               ; ragged.py:970:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 228
		.amdhsa_next_free_sgpr 66
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_vgpr, 228
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.numbered_sgpr, 66
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9044
; TotalNumSgprs: 68
; NumVgprs: 228
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 28
; NumSGPRsForWavesPerEU: 68
; NumVGPRsForWavesPerEU: 228
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
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
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     68
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     228
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
