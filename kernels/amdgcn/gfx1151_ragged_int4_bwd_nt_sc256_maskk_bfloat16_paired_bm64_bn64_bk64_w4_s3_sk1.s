	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 970 0                         ; ragged.py:970:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[88:89], s[0:1], 0x30
	s_load_b128 s[72:75], s[0:1], 0x20
.Ltmp0:
	.loc	1 998 20 prologue_end           ; ragged.py:998:20
	s_abs_i32 s8, s2
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v131, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:995:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s88, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:996:21 ]
	s_add_i32 s5, s89, 63
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
	s_ashr_i32 s57, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_ashr_i32 s56, s5, 6
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v137, 0
.Ltmp11:
	.loc	1 997 27 is_stmt 1              ; ragged.py:997:27
	s_mul_i32 s4, s56, s57
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v141, 0
	.loc	1 998 20                        ; ragged.py:998:20
	s_abs_i32 s5, s4
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v164, 0
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v170, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v165, 0 :: v_dual_and_b32 v84, 15, v0
	v_dual_mov_b32 v175, 0 :: v_dual_and_b32 v82, 16, v0
	v_dual_mov_b32 v177, 0 :: v_dual_and_b32 v86, 32, v0
	v_dual_mov_b32 v178, 0 :: v_dual_and_b32 v85, 64, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_readfirstlane_b32 s6, v1
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_lshrrev_b32_e32 v1, 5, v0
	.loc	1 1113 28                       ; ragged.py:1113:28
	v_and_b32_e32 v33, 31, v0
	.loc	1 998 20                        ; ragged.py:998:20
	s_mul_f32 s6, s6, 0x4f7ffffe
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v11, 4, v1
	v_or_b32_e32 v12, 8, v1
	v_or_b32_e32 v6, 12, v1
	.loc	1 998 20                        ; ragged.py:998:20
	s_cvt_u32_f32 s6, s6
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v7, 16, v1
	v_or_b32_e32 v8, 20, v1
	v_or_b32_e32 v3, 28, v1
	.loc	1 998 20                        ; ragged.py:998:20
	s_mul_i32 s7, s7, s6
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v4, 32, v1
	.loc	1 998 20                        ; ragged.py:998:20
	s_mul_hi_u32 s7, s6, s7
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v5, 36, v1
	.loc	1 998 20                        ; ragged.py:998:20
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s6, s5
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v9, 40, v1
	.loc	1 998 20                        ; ragged.py:998:20
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v10, 44, v1
	.loc	1 998 20                        ; ragged.py:998:20
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v13, 48, v1
	.loc	1 998 20                        ; ragged.py:998:20
	s_cselect_b32 s5, s9, s6
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s6, s56
	.loc	1 998 20                        ; ragged.py:998:20
	s_xor_b32 s5, s5, s7
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_cvt_f32_u32 s8, s6
	.loc	1 998 20                        ; ragged.py:998:20
	s_sub_i32 s54, s5, s7
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s5, 0, s6
	.loc	1 999 22                        ; ragged.py:999:22
	s_mul_i32 s4, s54, s4
	.loc	1 1000 17                       ; ragged.py:1000:17
	v_rcp_iflag_f32_e32 v2, s8
	.loc	1 999 16                        ; ragged.py:999:16
	s_sub_i32 s7, s2, s4
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v14, 52, v1
	v_or_b32_e32 v15, 56, v1
	v_or_b32_e32 v16, 60, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	.loc	1 1000 17                       ; ragged.py:1000:17
	v_readfirstlane_b32 s8, v2
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v2, 24, v1
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_cvt_u32_f32 s8, s8
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s5, s8
	s_mul_hi_u32 s4, s8, s5
	s_abs_i32 s5, s7
	s_add_i32 s8, s8, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s8
	s_xor_b32 s8, s7, s56
	s_mul_i32 s9, s4, s6
	s_ashr_i32 s58, s8, 31
	s_sub_i32 s5, s5, s9
	s_add_i32 s8, s4, 1
	s_sub_i32 s9, s5, s6
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s4, s8, s4
	s_cselect_b32 s5, s9, s5
	s_add_i32 s8, s4, 1
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s4, s8, s4
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_ashr_i32 s55, s54, 31
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_xor_b32 s59, s4, s58
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_lshl_b64 s[4:5], s[54:55], 2
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s6, s59, s58
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1001 24                       ; ragged.py:1001:24
	s_mul_i32 s8, s6, s56
	.loc	1 1003 18                       ; ragged.py:1003:18
	s_lshl_b32 s60, s6, 6
	.loc	1 1001 17                       ; ragged.py:1001:17
	s_sub_i32 s90, s7, s8
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_add_u32 s4, s72, s4
	s_addc_u32 s5, s73, s5
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v83, s60, v1
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_load_b32 s55, s[4:5], 0x0
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v81, s60, v11
	v_or_b32_e32 v80, s60, v12
	v_or_b32_e32 v79, s60, v6
	v_or_b32_e32 v78, s60, v7
	v_or_b32_e32 v77, s60, v8
	v_or_b32_e32 v76, s60, v2
	v_or_b32_e32 v75, s60, v3
	v_or_b32_e32 v74, s60, v4
	v_or_b32_e32 v73, s60, v5
	v_or_b32_e32 v72, s60, v9
	v_or_b32_e32 v71, s60, v10
	v_or_b32_e32 v70, s60, v13
	v_or_b32_e32 v69, s60, v14
	v_or_b32_e32 v68, s60, v15
	v_or_b32_e32 v67, s60, v16
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s16, s88, v83
	v_cmp_gt_i32_e64 s15, s88, v81
	v_cmp_gt_i32_e64 s14, s88, v80
	v_cmp_gt_i32_e64 s13, s88, v79
	v_cmp_gt_i32_e64 s12, s88, v78
	v_cmp_gt_i32_e64 s11, s88, v77
	v_cmp_gt_i32_e64 s10, s88, v76
	v_cmp_gt_i32_e64 s9, s88, v75
	v_cmp_gt_i32_e64 s8, s88, v74
	v_cmp_gt_i32_e64 s7, s88, v73
	v_cmp_gt_i32_e64 s6, s88, v72
	v_cmp_gt_i32_e64 s5, s88, v71
	v_cmp_gt_i32_e64 s4, s88, v70
	v_cmp_gt_i32_e64 s51, s88, v69
	v_cmp_gt_i32_e64 s50, s88, v68
	.loc	1 1008 27                       ; ragged.py:1008:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s61, s55, 1
	s_mov_b32 s73, 0
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cmp_lt_i32 s61, 2
	.loc	1 1160 43                       ; ragged.py:1160:43
	s_mul_i32 s72, s54, s88
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e32 vcc_lo, s88, v67
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cbranch_scc1 .LBB0_8
; %bb.1:                                ; %.lr.ph8
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1
	s_load_b256 s[64:71], s[0:1], 0x0
	s_load_b64 s[52:53], s[0:1], 0x38
	.loc	1 1003 36 is_stmt 1             ; ragged.py:1003:36
	v_lshrrev_b32_e32 v17, 2, v85
	.loc	1 1004 18                       ; ragged.py:1004:18
	s_lshl_b32 s62, s90, 6
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_lshr_b32 s63, s61, 31
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v2, s62, v2
	v_or_b32_e32 v3, s62, v3
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v17, v17, v84
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v4, s62, v4
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_add_i32 s61, s61, s63
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s23, s89, v2
	v_cmp_gt_i32_e64 s24, s89, v3
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v21, 32, v17
	.loc	1 1003 18 is_stmt 0             ; ragged.py:1003:18
	v_or_b32_e32 v22, s60, v17
	.loc	1 1006 20 is_stmt 1             ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s25, s89, v4
	.loc	1 1150 55                       ; ragged.py:1150:55
	s_lshr_b32 s63, s55, 31
	.loc	1 1118 23                       ; ragged.py:1118:23
	s_lshl_b32 s91, s3, 5
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v23, s60, v21
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s88, v22
	.loc	1 1162 43                       ; ragged.py:1162:43
	s_mul_i32 s3, s54, s89
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v5, s62, v5
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v2, s52, v1
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s1, s88, v23
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_ashr_i32 s88, s61, 1
	.loc	1 1150 55                       ; ragged.py:1150:55
	s_add_i32 s61, s55, s63
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v6, s62, v6
	.loc	1 1150 55                       ; ragged.py:1150:55
	s_ashr_i32 s92, s61, 1
	s_add_i32 s60, s60, s72
	s_and_b32 s77, s65, 0xffff
	v_mad_u64_u32 v[3:4], null, s52, 12, v[2:3]
	s_add_i32 s94, s62, s3
	s_and_b32 s81, s67, 0xffff
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v7, s62, v7
	s_bitcmp1_b32 s55, 0
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_mul_i32 s57, s57, s54
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v8, s62, v8
	v_or_b32_e32 v9, s62, v9
	.loc	1 1214 37                       ; ragged.py:1214:37
	s_mul_i32 s93, s54, s53
	s_cselect_b32 s67, -1, 0
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_sub_i32 s54, s58, s57
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v10, s62, v10
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s26, s89, v5
	v_mad_u64_u32 v[4:5], null, s52, 20, v[2:3]
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v11, s62, v11
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s20, s89, v6
	v_mad_u64_u32 v[5:6], null, s52, 24, v[2:3]
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_sub_i32 s54, s54, s59
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v12, s62, v12
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s21, s89, v7
	v_mad_u64_u32 v[6:7], null, s52, 28, v[2:3]
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v13, s62, v13
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s22, s89, v8
	v_mad_u64_u32 v[7:8], null, s52, 36, v[2:3]
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_mul_i32 s56, s56, s54
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_lshrrev_b32_e32 v18, 4, v82
	v_lshrrev_b32_e32 v19, 1, v86
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v14, s62, v14
	v_or_b32_e32 v15, s62, v15
	v_or_b32_e32 v16, s62, v16
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s27, s89, v9
	v_mad_u64_u32 v[8:9], null, s52, 40, v[2:3]
	v_cmp_gt_i32_e64 s28, s89, v10
	v_mad_u64_u32 v[9:10], null, s52, 44, v[2:3]
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_lshl_b32 s54, s56, 6
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s18, s89, v11
	v_mad_u64_u32 v[10:11], null, s52, 48, v[2:3]
	v_cmp_gt_i32_e64 s19, s89, v12
	v_mad_u64_u32 v[11:12], null, s52, 52, v[2:3]
	s_mul_i32 s61, s60, s52
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_add_i32 s54, s54, s3
	s_lshl_b32 s2, s2, 6
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s29, s89, v13
	v_mad_u64_u32 v[12:13], null, s52, 56, v[2:3]
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or3_b32 v90, v18, v19, s62
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s30, s89, v14
	v_cmp_gt_i32_e64 s31, s89, v15
	v_cmp_gt_i32_e64 s33, s89, v16
	v_lshl_add_u32 v15, s52, 2, v2
	v_lshl_add_u32 v16, s52, 3, v2
	v_lshl_add_u32 v18, s52, 4, v2
	v_lshl_add_u32 v19, s52, 5, v2
	v_mad_u64_u32 v[13:14], null, s52, 60, v[2:3]
	v_dual_mov_b32 v178, 0 :: v_dual_add_nc_u32 v119, v2, v33
	v_dual_mov_b32 v165, 0 :: v_dual_add_nc_u32 v124, v4, v33
	v_dual_mov_b32 v113, 0 :: v_dual_add_nc_u32 v152, s61, v2
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v157, s61, v4
	v_add_nc_u32_e32 v2, s60, v17
	.loc	1 1115 19                       ; ragged.py:1115:19
	v_add3_u32 v4, s54, s2, v1
	v_dual_mov_b32 v175, 0 :: v_dual_add_nc_u32 v122, v3, v33
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v155, s61, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v173, v2, s53
	v_add_nc_u32_e32 v2, 60, v4
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v3, s60, v21
	s_lshl_b32 s2, s59, 6
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v20, s62, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1115 19                       ; ragged.py:1115:19
	v_mad_u64_u32 v[34:35], null, s52, v2, v[33:34]
	v_mul_lo_u32 v174, v3, s53
	v_add_nc_u32_e32 v3, 56, v4
	v_add_nc_u32_e32 v2, 52, v4
	v_add3_u32 v1, s72, s2, v1
	s_lshl_b32 s2, s58, 6
	v_dual_mov_b32 v164, 0 :: v_dual_add_nc_u32 v125, v5, v33
	v_mad_u64_u32 v[35:36], null, s52, v3, v[33:34]
	v_add_nc_u32_e32 v3, 48, v4
	v_mad_u64_u32 v[36:37], null, s52, v2, v[33:34]
	v_add_nc_u32_e32 v2, 44, v4
	v_subrev_nc_u32_e32 v1, s2, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[37:38], null, s52, v3, v[33:34]
	v_add_nc_u32_e32 v3, 40, v4
	v_mad_u64_u32 v[38:39], null, s52, v2, v[33:34]
	v_add_nc_u32_e32 v2, 36, v4
	v_dual_mov_b32 v107, 0 :: v_dual_add_nc_u32 v158, s61, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[39:40], null, s52, v3, v[33:34]
	v_add_nc_u32_e32 v3, 32, v4
	v_mad_u64_u32 v[40:41], null, s52, v2, v[33:34]
	v_add_nc_u32_e32 v2, 28, v4
	v_add_nc_u32_e32 v5, 4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[41:42], null, s52, v3, v[33:34]
	v_add_nc_u32_e32 v3, 24, v4
	v_mad_u64_u32 v[42:43], null, s52, v2, v[33:34]
	v_add_nc_u32_e32 v2, 20, v4
	v_dual_mov_b32 v141, 0 :: v_dual_lshlrev_b32 v14, 1, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[43:44], null, s52, v3, v[33:34]
	v_add_nc_u32_e32 v3, 16, v4
	v_mad_u64_u32 v[44:45], null, s52, v2, v[33:34]
	v_add_nc_u32_e32 v2, 12, v4
	v_dual_mov_b32 v115, 0 :: v_dual_and_b32 v14, 24, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[45:46], null, s52, v3, v[33:34]
	v_add_nc_u32_e32 v3, 8, v4
	v_mad_u64_u32 v[46:47], null, s52, v2, v[33:34]
	v_add_nc_u32_e32 v2, 60, v1
	v_lshl_or_b32 v14, v84, 5, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[47:48], null, s52, v3, v[33:34]
	v_add_nc_u32_e32 v3, 56, v1
	v_mad_u64_u32 v[48:49], null, s52, v5, v[33:34]
	v_mad_u64_u32 v[49:50], null, s52, v4, v[33:34]
	v_mad_u64_u32 v[50:51], null, s52, v2, v[33:34]
	v_add_nc_u32_e32 v2, 52, v1
	v_mad_u64_u32 v[51:52], null, s52, v3, v[33:34]
	v_add_nc_u32_e32 v3, 48, v1
	v_add_nc_u32_e32 v4, 4, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[52:53], null, s52, v2, v[33:34]
	v_add_nc_u32_e32 v2, 44, v1
	v_mad_u64_u32 v[53:54], null, s52, v3, v[33:34]
	v_add_nc_u32_e32 v3, 40, v1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v91, 2, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1115 19                       ; ragged.py:1115:19
	v_mad_u64_u32 v[54:55], null, s52, v2, v[33:34]
	v_add_nc_u32_e32 v2, 36, v1
	v_mad_u64_u32 v[55:56], null, s52, v3, v[33:34]
	v_add_nc_u32_e32 v3, 32, v1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v92, 4, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1115 19                       ; ragged.py:1115:19
	v_mad_u64_u32 v[56:57], null, s52, v2, v[33:34]
	v_add_nc_u32_e32 v2, 28, v1
	v_mad_u64_u32 v[57:58], null, s52, v3, v[33:34]
	v_add_nc_u32_e32 v3, 24, v1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v93, 6, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1115 19                       ; ragged.py:1115:19
	v_mad_u64_u32 v[58:59], null, s52, v2, v[33:34]
	v_add_nc_u32_e32 v2, 20, v1
	v_mad_u64_u32 v[59:60], null, s52, v3, v[33:34]
	v_add_nc_u32_e32 v3, 16, v1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v94, 8, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1115 19                       ; ragged.py:1115:19
	v_mad_u64_u32 v[60:61], null, s52, v2, v[33:34]
	v_add_nc_u32_e32 v2, 12, v1
	v_mad_u64_u32 v[61:62], null, s52, v3, v[33:34]
	v_add_nc_u32_e32 v3, 8, v1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v95, 10, v90
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1115 19                       ; ragged.py:1115:19
	v_mad_u64_u32 v[62:63], null, s52, v2, v[33:34]
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v96, 12, v90
	v_or_b32_e32 v97, 14, v90
	v_or_b32_e32 v98, 32, v90
	v_or_b32_e32 v99, 34, v90
	v_or_b32_e32 v100, 36, v90
	v_or_b32_e32 v101, 38, v90
	v_or_b32_e32 v102, 40, v90
	v_or_b32_e32 v103, 42, v90
	v_or_b32_e32 v104, 44, v90
	v_or_b32_e32 v105, 46, v90
	v_lshl_or_b32 v139, v85, 3, v14
	v_lshl_or_b32 v143, v86, 4, v14
	.loc	1 1115 19                       ; ragged.py:1115:19
	v_mad_u64_u32 v[63:64], null, s52, v3, v[33:34]
	v_mad_u64_u32 v[64:65], null, s52, v4, v[33:34]
	v_mad_u64_u32 v[65:66], null, s52, v1, v[33:34]
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s17, s89, v20
	v_cmp_gt_i32_e64 s34, s89, v90
	v_cmp_gt_i32_e64 s35, s89, v91
	v_cmp_gt_i32_e64 s36, s89, v92
	v_cmp_gt_i32_e64 s37, s89, v93
	v_cmp_gt_i32_e64 s38, s89, v94
	v_cmp_gt_i32_e64 s39, s89, v95
	v_cmp_gt_i32_e64 s40, s89, v96
	v_cmp_gt_i32_e64 s41, s89, v97
	v_cmp_gt_i32_e64 s42, s89, v98
	v_cmp_gt_i32_e64 s43, s89, v99
	v_cmp_gt_i32_e64 s44, s89, v100
	v_cmp_gt_i32_e64 s45, s89, v101
	v_cmp_gt_i32_e64 s46, s89, v102
	v_cmp_gt_i32_e64 s47, s89, v103
	v_cmp_gt_i32_e64 s48, s89, v104
	v_cmp_gt_i32_e64 s49, s89, v105
	v_dual_mov_b32 v177, 0 :: v_dual_add_nc_u32 v120, v15, v33
	v_dual_mov_b32 v176, 0 :: v_dual_add_nc_u32 v121, v16, v33
	v_dual_mov_b32 v170, 0 :: v_dual_add_nc_u32 v123, v18, v33
	v_dual_mov_b32 v163, 0 :: v_dual_add_nc_u32 v126, v6, v33
	v_dual_mov_b32 v138, 0 :: v_dual_add_nc_u32 v127, v19, v33
	v_dual_mov_b32 v159, 0 :: v_dual_add_nc_u32 v128, v7, v33
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v129, v8, v33
	v_dual_mov_b32 v145, 0 :: v_dual_add_nc_u32 v130, v9, v33
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v133, v10, v33
	v_dual_mov_b32 v137, 0 :: v_dual_add_nc_u32 v134, v11, v33
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v135, v12, v33
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v136, v13, v33
	v_xor_b32_e32 v140, 0x88, v0
	v_xor_b32_e32 v142, 0x110, v0
	v_xor_b32_e32 v144, 0x198, v0
	v_xor_b32_e32 v146, 8, v139
	v_xor_b32_e32 v147, 16, v139
	v_xor_b32_e32 v148, 24, v139
	v_xor_b32_e32 v149, 8, v143
	v_xor_b32_e32 v150, 16, v143
	v_xor_b32_e32 v151, 24, v143
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v153, s61, v15
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v154, s61, v16
	v_dual_mov_b32 v109, 0 :: v_dual_add_nc_u32 v156, s61, v18
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v160, s61, v6
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v161, s61, v19
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v162, s61, v7
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v166, s61, v8
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v167, s61, v9
	.loc	1 1115 19                       ; ragged.py:1115:19
	v_add_nc_u32_e32 v168, s61, v10
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v169, s61, v11
	v_add_nc_u32_e32 v171, s61, v12
	v_add_nc_u32_e32 v172, s61, v13
	s_add_i32 s95, s88, -1
	s_mov_b32 s76, s64
	s_mov_b32 s79, 0x31027000
	s_mov_b32 s78, 0x7ffffffe
	s_mul_i32 s94, s94, s52
	s_mov_b32 s80, s66
	s_and_b32 s69, s69, 0xffff
	s_and_b32 s85, s71, 0xffff
	s_mov_b32 s84, s70
	s_lshr_b32 s96, s95, 7
	s_mov_b32 s2, 0
	s_branch .LBB0_3
.LBB0_2:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v179, v173, s73, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s2, s73, s93
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v180, v174, s73, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s2, s2, s89
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_mov_b32 s70, s78
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v181, v90, s2, 1
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_cndmask_b32_e64 v179, 0x80000000, v179, s0
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v182, v91, s2, 1
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_cndmask_b32_e64 v180, 0x80000000, v180, s1
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v183, v92, s2, 1
	v_add_lshl_u32 v184, v93, s2, 1
	v_add_lshl_u32 v189, v98, s2, 1
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_mov_b32 s71, s79
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v185, v94, s2, 1
	v_add_lshl_u32 v186, v95, s2, 1
	v_add_lshl_u32 v187, v96, s2, 1
	v_add_lshl_u32 v188, v97, s2, 1
	v_add_lshl_u32 v190, v99, s2, 1
	v_cndmask_b32_e64 v181, 0x80000000, v181, s34
	v_add_lshl_u32 v191, v100, s2, 1
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_clause 0x1
	buffer_load_u16 v179, v179, s[68:71], 0 offen
	buffer_load_u16 v180, v180, s[68:71], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_cndmask_b32_e64 v182, 0x80000000, v182, s35
	v_add_lshl_u32 v192, v101, s2, 1
	v_cndmask_b32_e64 v183, 0x80000000, v183, s36
	v_add_lshl_u32 v193, v102, s2, 1
	v_add_lshl_u32 v194, v103, s2, 1
	v_add_lshl_u32 v195, v104, s2, 1
	v_add_lshl_u32 v196, v105, s2, 1
	s_mov_b32 s86, s78
	s_mov_b32 s87, s79
	v_cndmask_b32_e64 v184, 0x80000000, v184, s37
	v_cndmask_b32_e64 v189, 0x80000000, v189, s42
	v_cndmask_b32_e64 v185, 0x80000000, v185, s38
	v_cndmask_b32_e64 v186, 0x80000000, v186, s39
	v_cndmask_b32_e64 v187, 0x80000000, v187, s40
	v_cndmask_b32_e64 v188, 0x80000000, v188, s41
	v_cndmask_b32_e64 v190, 0x80000000, v190, s43
	s_clause 0x7
	buffer_load_u16 v181, v181, s[84:87], 0 offen
	buffer_load_u16 v182, v182, s[84:87], 0 offen
	buffer_load_u16 v183, v183, s[84:87], 0 offen
	buffer_load_u16 v184, v184, s[84:87], 0 offen
	buffer_load_u16 v185, v185, s[84:87], 0 offen
	buffer_load_u16 v186, v186, s[84:87], 0 offen
	buffer_load_u16 v187, v187, s[84:87], 0 offen
	buffer_load_u16 v188, v188, s[84:87], 0 offen
	v_cndmask_b32_e64 v191, 0x80000000, v191, s44
	v_cndmask_b32_e64 v192, 0x80000000, v192, s45
	v_cndmask_b32_e64 v193, 0x80000000, v193, s46
	v_cndmask_b32_e64 v194, 0x80000000, v194, s47
	v_cndmask_b32_e64 v195, 0x80000000, v195, s48
	v_cndmask_b32_e64 v196, 0x80000000, v196, s49
	s_clause 0x7
	buffer_load_u16 v189, v189, s[84:87], 0 offen
	buffer_load_u16 v190, v190, s[84:87], 0 offen
	buffer_load_u16 v191, v191, s[84:87], 0 offen
	buffer_load_u16 v192, v192, s[84:87], 0 offen
	buffer_load_u16 v193, v193, s[84:87], 0 offen
	buffer_load_u16 v194, v194, s[84:87], 0 offen
	buffer_load_u16 v195, v195, s[84:87], 0 offen
	buffer_load_u16 v196, v196, s[84:87], 0 offen
	.loc	1 1204 27                       ; ragged.py:1204:27
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	.loc	1 1220 17                       ; ragged.py:1220:17
	s_add_i32 s3, s73, 1
	.loc	1 1115 19                       ; ragged.py:1115:19
	v_add_nc_u32_e32 v65, 0x80, v65
	s_lshl_b32 s2, s3, 7
	s_cmp_lg_u32 s73, s96
	s_mov_b32 s73, s3
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v179, 16, v179
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_dual_mul_f32 v27, v179, v27 :: v_dual_add_nc_u32 v34, 0x80, v34
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v193, 16, v193
	v_lshlrev_b32_e32 v191, 16, v191
	v_lshlrev_b32_e32 v190, 16, v190
	v_lshlrev_b32_e32 v188, 16, v188
	v_lshlrev_b32_e32 v187, 16, v187
	v_lshlrev_b32_e32 v184, 16, v184
	v_lshlrev_b32_e32 v183, 16, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_dual_fmac_f32 v177, v27, v183 :: v_dual_lshlrev_b32 v180, 16, v180
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_dual_mul_f32 v1, v1, v180 :: v_dual_add_nc_u32 v50, 0x80, v50
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v16, v180, v16 :: v_dual_lshlrev_b32 v195, 16, v195
	v_dual_mul_f32 v23, v179, v23 :: v_dual_add_nc_u32 v46, 0x80, v46
	v_dual_mul_f32 v30, v179, v30 :: v_dual_add_nc_u32 v39, 0x80, v39
	v_dual_mul_f32 v17, v179, v17 :: v_dual_add_nc_u32 v40, 0x80, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_dual_fmac_f32 v132, v23, v195 :: v_dual_lshlrev_b32 v189, 16, v189
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_lshlrev_b32_e32 v186, 16, v186
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_dual_mul_f32 v26, v179, v26 :: v_dual_add_nc_u32 v35, 0x80, v35
	v_dual_mul_f32 v29, v179, v29 :: v_dual_add_nc_u32 v36, 0x80, v36
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_fmac_f32_e32 v163, v17, v189
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v170, v30, v186 :: v_dual_lshlrev_b32 v185, 16, v185
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_lshlrev_b32_e32 v182, 16, v182
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_dual_mul_f32 v28, v179, v28 :: v_dual_add_nc_u32 v37, 0x80, v37
	v_dual_mul_f32 v31, v179, v31 :: v_dual_add_nc_u32 v38, 0x80, v38
	v_dual_mul_f32 v32, v179, v32 :: v_dual_add_nc_u32 v41, 0x80, v41
	v_dual_mul_f32 v19, v179, v19 :: v_dual_add_nc_u32 v42, 0x80, v42
	v_dual_mul_f32 v18, v179, v18 :: v_dual_add_nc_u32 v43, 0x80, v43
	v_dual_mul_f32 v21, v179, v21 :: v_dual_add_nc_u32 v44, 0x80, v44
	v_dual_mul_f32 v20, v179, v20 :: v_dual_add_nc_u32 v45, 0x80, v45
	v_dual_mul_f32 v22, v179, v22 :: v_dual_add_nc_u32 v47, 0x80, v47
	v_dual_mul_f32 v25, v25, v179 :: v_dual_add_nc_u32 v48, 0x80, v48
	v_dual_mul_f32 v24, v179, v24 :: v_dual_add_nc_u32 v49, 0x80, v49
	v_dual_mul_f32 v2, v180, v2 :: v_dual_add_nc_u32 v51, 0x80, v51
	v_dual_mul_f32 v3, v180, v3 :: v_dual_add_nc_u32 v52, 0x80, v52
	v_dual_mul_f32 v4, v180, v4 :: v_dual_add_nc_u32 v53, 0x80, v53
	v_dual_mul_f32 v5, v180, v5 :: v_dual_add_nc_u32 v54, 0x80, v54
	v_dual_mul_f32 v6, v180, v6 :: v_dual_add_nc_u32 v55, 0x80, v55
	v_dual_mul_f32 v7, v180, v7 :: v_dual_add_nc_u32 v56, 0x80, v56
	v_dual_mul_f32 v8, v180, v8 :: v_dual_add_nc_u32 v57, 0x80, v57
	v_dual_mul_f32 v9, v180, v9 :: v_dual_add_nc_u32 v58, 0x80, v58
	v_dual_mul_f32 v10, v180, v10 :: v_dual_add_nc_u32 v59, 0x80, v59
	v_dual_mul_f32 v11, v180, v11 :: v_dual_add_nc_u32 v60, 0x80, v60
	v_dual_mul_f32 v12, v180, v12 :: v_dual_add_nc_u32 v61, 0x80, v61
	v_dual_mul_f32 v13, v180, v13 :: v_dual_add_nc_u32 v62, 0x80, v62
	v_dual_mul_f32 v14, v180, v14 :: v_dual_add_nc_u32 v63, 0x80, v63
	v_dual_mul_f32 v15, v180, v15 :: v_dual_add_nc_u32 v64, 0x80, v64
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_lshlrev_b32_e32 v194, 16, v194
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_dual_fmac_f32 v175, v29, v185 :: v_dual_lshlrev_b32 v192, 16, v192
	v_dual_fmac_f32 v178, v26, v182 :: v_dual_lshlrev_b32 v181, 16, v181
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v137, v22, v194 :: v_dual_lshlrev_b32 v196, 16, v196
	v_fmac_f32_e32 v141, v20, v192
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v117, v25, v181
	v_dual_fmac_f32 v118, v1, v181 :: v_dual_fmac_f32 v131, v24, v196
	v_fmac_f32_e32 v112, v6, v186
	v_fmac_f32_e32 v116, v2, v182
	v_dual_fmac_f32 v138, v21, v193 :: v_dual_fmac_f32 v145, v19, v191
	v_dual_fmac_f32 v159, v18, v190 :: v_dual_fmac_f32 v164, v32, v188
	v_dual_fmac_f32 v165, v31, v187 :: v_dual_fmac_f32 v176, v28, v184
	v_dual_fmac_f32 v115, v3, v183 :: v_dual_fmac_f32 v114, v4, v184
	v_dual_fmac_f32 v113, v5, v185 :: v_dual_fmac_f32 v110, v8, v188
	v_dual_fmac_f32 v111, v7, v187 :: v_dual_fmac_f32 v108, v10, v190
	v_dual_fmac_f32 v109, v9, v189 :: v_dual_fmac_f32 v106, v12, v192
	v_dual_fmac_f32 v107, v11, v191 :: v_dual_fmac_f32 v88, v14, v194
	v_dual_fmac_f32 v89, v13, v193 :: v_dual_fmac_f32 v66, v16, v196
	v_fmac_f32_e32 v87, v15, v195
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cbranch_scc0 .LBB0_8
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 1150 54                       ; ragged.py:1150:54
	s_sub_i32 s3, s92, s2
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v16, 0
	.loc	1 1148 45                       ; ragged.py:1148:45
	v_med3_i32 v2, s3, 0, 0x80
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v12, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1152 41                       ; ragged.py:1152:41
	v_readfirstlane_b32 s3, v2
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	s_and_b32 s52, s3, 0xe0
	s_mov_b32 s3, s91
	.loc	1 1155 27                       ; ragged.py:1155:27
	s_cmp_ge_i32 s91, s52
	s_cbranch_scc1 .LBB0_6
; %bb.4:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v25, 0
	s_mov_b32 s3, s91
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v26, v25
	v_mov_b32_e32 v27, v25
	v_mov_b32_e32 v28, v25
	v_mov_b32_e32 v29, v25
	v_mov_b32_e32 v30, v25
	v_mov_b32_e32 v31, v25
	v_mov_b32_e32 v32, v25
	v_mov_b32_e32 v17, v25
	v_mov_b32_e32 v18, v25
	v_mov_b32_e32 v19, v25
	v_mov_b32_e32 v20, v25
	v_mov_b32_e32 v21, v25
	v_mov_b32_e32 v22, v25
	v_mov_b32_e32 v23, v25
	v_mov_b32_e32 v24, v25
	v_mov_b32_e32 v1, v25
	v_mov_b32_e32 v2, v25
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v6, v25
	v_mov_b32_e32 v7, v25
	v_mov_b32_e32 v8, v25
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v10, v25
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v12, v25
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v14, v25
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v16, v25
.LBB0_5:                                ; %.lr.ph
                                        ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1165 46 is_stmt 1             ; ragged.py:1165:46
	v_add_nc_u32_e32 v179, s3, v65
	v_add_nc_u32_e32 v180, s3, v64
	v_add_nc_u32_e32 v181, s3, v63
	v_add_nc_u32_e32 v182, s3, v62
	v_add_nc_u32_e32 v183, s3, v61
	v_add_nc_u32_e32 v187, s3, v57
	v_add_nc_u32_e32 v188, s3, v56
	v_add_nc_u32_e32 v189, s3, v55
	v_add_nc_u32_e32 v190, s3, v54
	v_add_nc_u32_e32 v191, s3, v53
	.loc	1 1165 38 is_stmt 0             ; ragged.py:1165:38
	v_cndmask_b32_e64 v179, 0x80000000, v179, s16
	.loc	1 1166 46 is_stmt 1             ; ragged.py:1166:46
	v_add_nc_u32_e32 v195, s3, v49
	.loc	1 1165 46                       ; ragged.py:1165:46
	v_add_nc_u32_e32 v184, s3, v60
	v_add_nc_u32_e32 v185, s3, v59
	v_add_nc_u32_e32 v186, s3, v58
	.loc	1 1165 38 is_stmt 0             ; ragged.py:1165:38
	v_cndmask_b32_e64 v180, 0x80000000, v180, s15
	v_cndmask_b32_e64 v181, 0x80000000, v181, s14
	v_cndmask_b32_e64 v182, 0x80000000, v182, s13
	v_cndmask_b32_e64 v183, 0x80000000, v183, s12
	.loc	1 1166 46 is_stmt 1             ; ragged.py:1166:46
	v_add_nc_u32_e32 v196, s3, v48
	v_add_nc_u32_e32 v197, s3, v47
	v_add_nc_u32_e32 v198, s3, v46
	v_add_nc_u32_e32 v199, s3, v45
	.loc	1 1165 38                       ; ragged.py:1165:38
	v_cndmask_b32_e64 v187, 0x80000000, v187, s8
	.loc	1 1166 46                       ; ragged.py:1166:46
	v_add_nc_u32_e32 v203, s3, v41
	.loc	1 1165 46                       ; ragged.py:1165:46
	v_add_nc_u32_e32 v192, s3, v52
	v_add_nc_u32_e32 v193, s3, v51
	.loc	1 1165 38 is_stmt 0             ; ragged.py:1165:38
	v_add_nc_u32_e32 v194, s3, v50
	v_cndmask_b32_e64 v188, 0x80000000, v188, s7
	v_cndmask_b32_e64 v189, 0x80000000, v189, s6
	v_cndmask_b32_e64 v190, 0x80000000, v190, s5
	v_cndmask_b32_e64 v191, 0x80000000, v191, s4
	.loc	1 1166 46 is_stmt 1             ; ragged.py:1166:46
	v_add_nc_u32_e32 v204, s3, v40
	v_add_nc_u32_e32 v205, s3, v39
	v_add_nc_u32_e32 v206, s3, v38
	v_add_nc_u32_e32 v207, s3, v37
	.loc	1 1165 38                       ; ragged.py:1165:38
	s_clause 0x4
	buffer_load_u8 v179, v179, s[76:79], 0 offen
	buffer_load_u8 v180, v180, s[76:79], 0 offen
	buffer_load_u8 v181, v181, s[76:79], 0 offen
	buffer_load_u8 v182, v182, s[76:79], 0 offen
	buffer_load_u8 v183, v183, s[76:79], 0 offen
	.loc	1 1166 46                       ; ragged.py:1166:46
	v_add_nc_u32_e32 v200, s3, v44
	.loc	1 1166 38 is_stmt 0             ; ragged.py:1166:38
	v_cndmask_b32_e64 v195, 0x80000000, v195, s17
	.loc	1 1165 38 is_stmt 1             ; ragged.py:1165:38
	v_cndmask_b32_e64 v184, 0x80000000, v184, s11
	v_cndmask_b32_e64 v185, 0x80000000, v185, s10
	v_cndmask_b32_e64 v186, 0x80000000, v186, s9
	.loc	1 1166 38                       ; ragged.py:1166:38
	v_cndmask_b32_e64 v196, 0x80000000, v196, s18
	v_cndmask_b32_e64 v197, 0x80000000, v197, s19
	v_cndmask_b32_e64 v198, 0x80000000, v198, s20
	v_cndmask_b32_e64 v199, 0x80000000, v199, s21
	.loc	1 1165 38                       ; ragged.py:1165:38
	s_clause 0x4
	buffer_load_u8 v187, v187, s[76:79], 0 offen
	buffer_load_u8 v188, v188, s[76:79], 0 offen
	buffer_load_u8 v189, v189, s[76:79], 0 offen
	buffer_load_u8 v190, v190, s[76:79], 0 offen
	buffer_load_u8 v191, v191, s[76:79], 0 offen
	.loc	1 1166 46                       ; ragged.py:1166:46
	v_add_nc_u32_e32 v208, s3, v36
	.loc	1 1166 38 is_stmt 0             ; ragged.py:1166:38
	v_cndmask_b32_e64 v203, 0x80000000, v203, s25
	.loc	1 1165 38 is_stmt 1             ; ragged.py:1165:38
	v_cndmask_b32_e64 v192, 0x80000000, v192, s51
	v_cndmask_b32_e64 v193, 0x80000000, v193, s50
	v_dual_cndmask_b32 v194, 0x80000000, v194 :: v_dual_add_nc_u32 v211, 0, v0
	.loc	1 1166 38                       ; ragged.py:1166:38
	s_mov_b32 s82, s78
	s_mov_b32 s83, s79
	v_cndmask_b32_e64 v204, 0x80000000, v204, s26
	v_cndmask_b32_e64 v205, 0x80000000, v205, s27
	v_cndmask_b32_e64 v206, 0x80000000, v206, s28
	v_cndmask_b32_e64 v207, 0x80000000, v207, s29
	.loc	1 1166 46 is_stmt 0             ; ragged.py:1166:46
	v_add_nc_u32_e32 v201, s3, v43
	.loc	1 1166 38                       ; ragged.py:1166:38
	s_clause 0x4
	buffer_load_u8 v195, v195, s[80:83], 0 offen
	buffer_load_u8 v196, v196, s[80:83], 0 offen
	buffer_load_u8 v197, v197, s[80:83], 0 offen
	buffer_load_u8 v198, v198, s[80:83], 0 offen
	buffer_load_u8 v199, v199, s[80:83], 0 offen
	v_cndmask_b32_e64 v200, 0x80000000, v200, s22
	.loc	1 1165 38 is_stmt 1             ; ragged.py:1165:38
	s_clause 0x2
	buffer_load_u8 v184, v184, s[76:79], 0 offen
	buffer_load_u8 v185, v185, s[76:79], 0 offen
	buffer_load_u8 v186, v186, s[76:79], 0 offen
	.loc	1 1166 46                       ; ragged.py:1166:46
	v_add_nc_u32_e32 v209, s3, v35
	.loc	1 1166 38 is_stmt 0             ; ragged.py:1166:38
	s_clause 0x4
	buffer_load_u8 v203, v203, s[80:83], 0 offen
	buffer_load_u8 v204, v204, s[80:83], 0 offen
	buffer_load_u8 v205, v205, s[80:83], 0 offen
	buffer_load_u8 v206, v206, s[80:83], 0 offen
	buffer_load_u8 v207, v207, s[80:83], 0 offen
	v_cndmask_b32_e64 v208, 0x80000000, v208, s30
	.loc	1 1165 38 is_stmt 1             ; ragged.py:1165:38
	s_clause 0x2
	buffer_load_u8 v192, v192, s[76:79], 0 offen
	buffer_load_u8 v193, v193, s[76:79], 0 offen
	buffer_load_u8 v194, v194, s[76:79], 0 offen
	.loc	1 1166 46                       ; ragged.py:1166:46
	v_add_nc_u32_e32 v202, s3, v42
	.loc	1 1166 38 is_stmt 0             ; ragged.py:1166:38
	v_cndmask_b32_e64 v201, 0x80000000, v201, s23
	v_add_nc_u32_e32 v210, s3, v34
	buffer_load_u8 v200, v200, s[80:83], 0 offen
	v_cndmask_b32_e64 v209, 0x80000000, v209, s31
	buffer_load_u8 v208, v208, s[80:83], 0 offen
	v_cndmask_b32_e64 v202, 0x80000000, v202, s24
	buffer_load_u8 v201, v201, s[80:83], 0 offen
	v_cndmask_b32_e64 v210, 0x80000000, v210, s33
	buffer_load_u8 v209, v209, s[80:83], 0 offen
	.loc	1 1165 38 is_stmt 1             ; ragged.py:1165:38
	v_add_nc_u32_e32 v212, 0, v140
	.loc	1 1166 38                       ; ragged.py:1166:38
	buffer_load_u8 v202, v202, s[80:83], 0 offen
	.loc	1 1165 38                       ; ragged.py:1165:38
	v_add_nc_u32_e32 v213, 0, v142
	.loc	1 1166 38                       ; ragged.py:1166:38
	buffer_load_u8 v210, v210, s[80:83], 0 offen
	.loc	1 1165 38                       ; ragged.py:1165:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v214, 0, v144
	.loc	1 1177 25                       ; ragged.py:1177:25
	s_add_i32 s3, s3, 32
	.loc	1 1165 38                       ; ragged.py:1165:38
	s_waitcnt vmcnt(31)
	ds_store_b8 v211, v179
	s_waitcnt vmcnt(27)
	ds_store_b8 v211, v183 offset:512
	s_waitcnt vmcnt(26)
	ds_store_b8 v211, v187 offset:1024
	s_waitcnt vmcnt(22)
	ds_store_b8 v211, v191 offset:1536
	v_add_nc_u32_e32 v179, 0, v139
	v_add_nc_u32_e32 v183, 0, v146
	v_add_nc_u32_e32 v187, 0, v147
	v_add_nc_u32_e32 v191, 0, v148
	ds_store_b8 v212, v180
	s_waitcnt vmcnt(16)
	ds_store_b8 v212, v184 offset:512
	ds_store_b8 v212, v188 offset:1024
	s_waitcnt vmcnt(8)
	ds_store_b8 v212, v192 offset:1536
	ds_store_b8 v213, v181
	ds_store_b8 v213, v185 offset:512
	ds_store_b8 v213, v189 offset:1024
	s_waitcnt vmcnt(7)
	ds_store_b8 v213, v193 offset:1536
	ds_store_b8 v214, v182
	ds_store_b8 v214, v186 offset:512
	ds_store_b8 v214, v190 offset:1024
	s_waitcnt vmcnt(6)
	ds_store_b8 v214, v194 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[179:182], v179 offset1:2
	ds_load_2addr_stride64_b64 v[183:186], v183 offset1:2
	ds_load_2addr_stride64_b64 v[187:190], v187 offset1:2
	ds_load_2addr_stride64_b64 v[191:194], v191 offset1:2
	.loc	1 1166 38                       ; ragged.py:1166:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v211, v195
	ds_store_b8 v211, v199 offset:512
	ds_store_b8 v211, v203 offset:1024
	ds_store_b8 v211, v207 offset:1536
	ds_store_b8 v212, v196
	s_waitcnt vmcnt(5)
	ds_store_b8 v212, v200 offset:512
	ds_store_b8 v212, v204 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v212, v208 offset:1536
	ds_store_b8 v213, v197
	s_waitcnt vmcnt(3)
	ds_store_b8 v213, v201 offset:512
	ds_store_b8 v213, v205 offset:1024
	s_waitcnt vmcnt(2)
	ds_store_b8 v213, v209 offset:1536
	ds_store_b8 v214, v198
	s_waitcnt vmcnt(1)
	ds_store_b8 v214, v202 offset:512
	ds_store_b8 v214, v206 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v214, v210 offset:1536
	v_add_nc_u32_e32 v195, 0, v143
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v199, 0, v149
	v_add_nc_u32_e32 v203, 0, v150
	ds_load_2addr_stride64_b64 v[195:198], v195 offset1:2
	v_add_nc_u32_e32 v207, 0, v151
	.loc	1 1155 27                       ; ragged.py:1155:27
	s_cmp_lt_i32 s3, s52
	.loc	1 1166 38                       ; ragged.py:1166:38
	ds_load_2addr_stride64_b64 v[199:202], v199 offset1:2
	ds_load_2addr_stride64_b64 v[203:206], v203 offset1:2
	ds_load_2addr_stride64_b64 v[207:210], v207 offset1:2
	.loc	1 1167 35                       ; ragged.py:1167:35
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[195:196], v[179:180], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[197:198], v[179:180], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[195:196], v[181:182], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[197:198], v[181:182], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[199:200], v[183:184], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[201:202], v[183:184], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[199:200], v[185:186], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[201:202], v[185:186], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[203:204], v[187:188], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[205:206], v[187:188], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[203:204], v[189:190], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[205:206], v[189:190], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[207:208], v[191:192], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[209:210], v[191:192], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[207:208], v[193:194], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[209:210], v[193:194], v[9:16] neg_lo:[1,1,0]
	.loc	1 1155 27                       ; ragged.py:1155:27
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1146 25                       ; ragged.py:1146:25
	s_sub_i32 s52, s88, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1144 42                       ; ragged.py:1144:42
	s_min_i32 s52, s52, 0x80
	.loc	1 1178 24                       ; ragged.py:1178:24
	s_cmp_ge_i32 s3, s52
	.loc	1 1178 21 is_stmt 0             ; ragged.py:1178:21
	s_cbranch_scc1 .LBB0_2
; %bb.7:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1179 30 is_stmt 1             ; ragged.py:1179:30
	s_add_i32 s71, s3, s2
	.loc	1 1191 38                       ; ragged.py:1191:38
	s_mov_b32 s82, s78
	.loc	1 1179 30                       ; ragged.py:1179:30
	v_or_b32_e32 v179, s71, v33
	.loc	1 1191 46                       ; ragged.py:1191:46
	s_add_i32 s71, s71, s94
	.loc	1 1191 38 is_stmt 0             ; ragged.py:1191:38
	s_mov_b32 s83, s79
	v_add_nc_u32_e32 v203, s71, v127
	v_add_nc_u32_e32 v204, s71, v128
	.loc	1 1188 35 is_stmt 1             ; ragged.py:1188:35
	v_subrev_nc_u32_e32 v180, s2, v179
	.loc	1 1189 60                       ; ragged.py:1189:60
	v_cmp_eq_u32_e64 s3, s95, v179
	v_add_nc_u32_e32 v181, v179, v153
	v_add_nc_u32_e32 v182, v179, v154
	v_add_nc_u32_e32 v183, v179, v155
	.loc	1 1188 34                       ; ragged.py:1188:34
	v_cmp_gt_i32_e64 s2, s52, v180
	v_add_nc_u32_e32 v180, v179, v152
	v_add_nc_u32_e32 v184, v179, v156
	v_add_nc_u32_e32 v185, v179, v157
	v_add_nc_u32_e32 v186, v179, v158
	v_add_nc_u32_e32 v187, v179, v160
	v_add_nc_u32_e32 v188, v179, v161
	v_add_nc_u32_e32 v189, v179, v162
	v_add_nc_u32_e32 v190, v179, v166
	v_add_nc_u32_e32 v191, v179, v167
	v_add_nc_u32_e32 v192, v179, v168
	v_add_nc_u32_e32 v193, v179, v169
	v_add_nc_u32_e32 v194, v179, v171
	v_add_nc_u32_e32 v179, v179, v172
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s70, s3, s67
	.loc	1 1190 70                       ; ragged.py:1190:70
	s_and_b32 s3, s16, s2
	s_and_b32 s66, vcc_lo, s2
	.loc	1 1190 38 is_stmt 0             ; ragged.py:1190:38
	v_cndmask_b32_e64 v180, 0x80000000, v180, s3
	v_cndmask_b32_e64 v179, 0x80000000, v179, s66
	.loc	1 1190 70                       ; ragged.py:1190:70
	s_and_b32 s52, s15, s2
	s_and_b32 s53, s14, s2
	s_and_b32 s54, s13, s2
	.loc	1 1190 38                       ; ragged.py:1190:38
	s_clause 0x1
	buffer_load_u8 v195, v180, s[76:79], 0 offen
	buffer_load_u8 v202, v179, s[76:79], 0 offen
	v_cndmask_b32_e64 v180, 0x80000000, v181, s52
	.loc	1 1190 70                       ; ragged.py:1190:70
	s_and_b32 s55, s12, s2
	s_and_b32 s56, s11, s2
	s_and_b32 s57, s10, s2
	s_and_b32 s58, s9, s2
	.loc	1 1190 38                       ; ragged.py:1190:38
	buffer_load_u8 v196, v180, s[76:79], 0 offen
	v_cndmask_b32_e64 v180, 0x80000000, v182, s53
	.loc	1 1190 70                       ; ragged.py:1190:70
	s_and_b32 s59, s8, s2
	s_and_b32 s60, s7, s2
	s_and_b32 s61, s6, s2
	s_and_b32 s62, s5, s2
	.loc	1 1190 38                       ; ragged.py:1190:38
	buffer_load_u8 v197, v180, s[76:79], 0 offen
	v_cndmask_b32_e64 v180, 0x80000000, v183, s54
	.loc	1 1190 70                       ; ragged.py:1190:70
	s_and_b32 s63, s4, s2
	s_and_b32 s64, s51, s2
	s_and_b32 s65, s50, s2
	v_add_nc_u32_e32 v179, s71, v119
	.loc	1 1190 38                       ; ragged.py:1190:38
	buffer_load_u8 v198, v180, s[76:79], 0 offen
	v_cndmask_b32_e64 v180, 0x80000000, v184, s55
	.loc	1 1191 70 is_stmt 1             ; ragged.py:1191:70
	s_and_b32 s3, s17, s2
	s_and_b32 s52, s18, s2
	.loc	1 1191 38 is_stmt 0             ; ragged.py:1191:38
	v_cndmask_b32_e64 v179, 0x80000000, v179, s3
	v_add_nc_u32_e32 v181, s71, v121
	.loc	1 1190 38 is_stmt 1             ; ragged.py:1190:38
	buffer_load_u8 v199, v180, s[76:79], 0 offen
	v_cndmask_b32_e64 v180, 0x80000000, v185, s56
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s53, s19, s2
	.loc	1 1191 38 is_stmt 0             ; ragged.py:1191:38
	buffer_load_u8 v211, v179, s[80:83], 0 offen
	v_add_nc_u32_e32 v182, s71, v122
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s54, s20, s2
	.loc	1 1190 38 is_stmt 1             ; ragged.py:1190:38
	buffer_load_u8 v200, v180, s[76:79], 0 offen
	v_cndmask_b32_e64 v180, 0x80000000, v186, s57
	v_add_nc_u32_e32 v183, s71, v123
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s55, s21, s2
	v_add_nc_u32_e32 v184, s71, v124
	s_and_b32 s56, s22, s2
	.loc	1 1190 38                       ; ragged.py:1190:38
	buffer_load_u8 v201, v180, s[76:79], 0 offen
	v_cndmask_b32_e64 v180, 0x80000000, v187, s58
	v_add_nc_u32_e32 v185, s71, v125
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s57, s23, s2
	v_add_nc_u32_e32 v186, s71, v126
	s_and_b32 s58, s24, s2
	.loc	1 1190 38                       ; ragged.py:1190:38
	buffer_load_u8 v187, v180, s[76:79], 0 offen
	v_cndmask_b32_e64 v180, 0x80000000, v188, s59
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s59, s25, s2
	v_add_nc_u32_e32 v205, s71, v129
	v_add_nc_u32_e32 v206, s71, v130
	v_add_nc_u32_e32 v207, s71, v133
	.loc	1 1190 38                       ; ragged.py:1190:38
	buffer_load_u8 v188, v180, s[76:79], 0 offen
	v_cndmask_b32_e64 v180, 0x80000000, v189, s60
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s60, s26, s2
	v_add_nc_u32_e32 v208, s71, v134
	v_add_nc_u32_e32 v209, s71, v135
	v_add_nc_u32_e32 v210, s71, v136
	.loc	1 1190 38                       ; ragged.py:1190:38
	buffer_load_u8 v189, v180, s[76:79], 0 offen
	v_cndmask_b32_e64 v180, 0x80000000, v190, s61
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s61, s27, s2
	.loc	1 1190 38                       ; ragged.py:1190:38
	buffer_load_u8 v190, v180, s[76:79], 0 offen
	v_cndmask_b32_e64 v180, 0x80000000, v191, s62
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s62, s28, s2
	.loc	1 1190 38                       ; ragged.py:1190:38
	buffer_load_u8 v191, v180, s[76:79], 0 offen
	v_cndmask_b32_e64 v180, 0x80000000, v192, s63
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s63, s29, s2
	.loc	1 1190 38                       ; ragged.py:1190:38
	buffer_load_u8 v192, v180, s[76:79], 0 offen
	v_cndmask_b32_e64 v180, 0x80000000, v193, s64
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s64, s30, s2
	.loc	1 1190 38                       ; ragged.py:1190:38
	buffer_load_u8 v193, v180, s[76:79], 0 offen
	v_cndmask_b32_e64 v180, 0x80000000, v194, s65
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s65, s31, s2
	s_and_b32 s2, s33, s2
	.loc	1 1190 38                       ; ragged.py:1190:38
	buffer_load_u8 v194, v180, s[76:79], 0 offen
	v_add_nc_u32_e32 v180, s71, v120
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v179, 0x80000000, v180, s52
	buffer_load_u8 v212, v179, s[80:83], 0 offen
	v_cndmask_b32_e64 v179, 0x80000000, v181, s53
	buffer_load_u8 v213, v179, s[80:83], 0 offen
	v_cndmask_b32_e64 v179, 0x80000000, v182, s54
	buffer_load_u8 v214, v179, s[80:83], 0 offen
	v_cndmask_b32_e64 v179, 0x80000000, v183, s55
	buffer_load_u8 v215, v179, s[80:83], 0 offen
	v_cndmask_b32_e64 v179, 0x80000000, v184, s56
	buffer_load_u8 v216, v179, s[80:83], 0 offen
	v_cndmask_b32_e64 v179, 0x80000000, v185, s57
	buffer_load_u8 v217, v179, s[80:83], 0 offen
	v_cndmask_b32_e64 v179, 0x80000000, v186, s58
	buffer_load_u8 v218, v179, s[80:83], 0 offen
	v_cndmask_b32_e64 v179, 0x80000000, v203, s59
	buffer_load_u8 v203, v179, s[80:83], 0 offen
	v_cndmask_b32_e64 v179, 0x80000000, v204, s60
	buffer_load_u8 v204, v179, s[80:83], 0 offen
	v_cndmask_b32_e64 v179, 0x80000000, v205, s61
	buffer_load_u8 v205, v179, s[80:83], 0 offen
	v_cndmask_b32_e64 v179, 0x80000000, v206, s62
	buffer_load_u8 v206, v179, s[80:83], 0 offen
	v_cndmask_b32_e64 v179, 0x80000000, v207, s63
	buffer_load_u8 v207, v179, s[80:83], 0 offen
	v_cndmask_b32_e64 v179, 0x80000000, v208, s64
	buffer_load_u8 v208, v179, s[80:83], 0 offen
	v_cndmask_b32_e64 v179, 0x80000000, v209, s65
	buffer_load_u8 v209, v179, s[80:83], 0 offen
	v_cndmask_b32_e64 v179, 0x80000000, v210, s2
	buffer_load_u8 v210, v179, s[80:83], 0 offen
	.loc	1 1192 38                       ; ragged.py:1192:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1192 66 is_stmt 0             ; ragged.py:1192:66
	s_waitcnt vmcnt(31)
	v_and_b16 v179.l, v195.l, 15
	s_waitcnt vmcnt(30)
	v_and_b16 v186.h, v202.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v179.l, v195.l, v179.l, s70
	v_cndmask_b16 v186.h, v202.l, v186.h, s70
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(29)
	v_and_b16 v179.h, v196.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v179.h, v196.l, v179.h, s70
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(28)
	v_and_b16 v180.l, v197.l, 15
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v180.l, v197.l, v180.l, s70
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(27)
	v_and_b16 v180.h, v198.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v180.h, v198.l, v180.h, s70
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(26)
	v_and_b16 v181.l, v199.l, 15
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v181.l, v199.l, v181.l, s70
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(24)
	v_and_b16 v181.h, v200.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v181.h, v200.l, v181.h, s70
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(23)
	v_and_b16 v182.l, v201.l, 15
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v182.l, v201.l, v182.l, s70
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(22)
	v_and_b16 v182.h, v187.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v182.h, v187.l, v182.h, s70
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(21)
	v_and_b16 v183.l, v188.l, 15
	.loc	1 1193 66 is_stmt 1             ; ragged.py:1193:66
	v_and_b16 v187.l, v211.l, 15
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v183.l, v188.l, v183.l, s70
	.loc	1 1192 66 is_stmt 0             ; ragged.py:1192:66
	s_waitcnt vmcnt(20)
	v_and_b16 v183.h, v189.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1193 38 is_stmt 1             ; ragged.py:1193:38
	v_cndmask_b16 v195.l, v211.l, v187.l, s70
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v183.h, v189.l, v183.h, s70
	.loc	1 1192 66 is_stmt 0             ; ragged.py:1192:66
	s_waitcnt vmcnt(19)
	v_and_b16 v184.l, v190.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v184.l, v190.l, v184.l, s70
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(18)
	v_and_b16 v184.h, v191.l, 15
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v184.h, v191.l, v184.h, s70
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(17)
	v_and_b16 v185.l, v192.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v185.l, v192.l, v185.l, s70
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(16)
	v_and_b16 v185.h, v193.l, 15
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v185.h, v193.l, v185.h, s70
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(15)
	v_and_b16 v186.l, v194.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v186.l, v194.l, v186.l, s70
	.loc	1 1193 66 is_stmt 1             ; ragged.py:1193:66
	s_waitcnt vmcnt(14)
	v_and_b16 v187.h, v212.l, 15
	.loc	1 1193 38 is_stmt 0             ; ragged.py:1193:38
	v_cndmask_b16 v195.h, v212.l, v187.h, s70
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(13)
	v_and_b16 v188.l, v213.l, 15
	.loc	1 1192 38 is_stmt 1             ; ragged.py:1192:38
	v_add_nc_u32_e32 v187, 0, v147
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v196.l, v213.l, v188.l, s70
	.loc	1 1193 66 is_stmt 0             ; ragged.py:1193:66
	s_waitcnt vmcnt(12)
	v_and_b16 v188.h, v214.l, 15
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v196.h, v214.l, v188.h, s70
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(11)
	v_and_b16 v189.l, v215.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v197.l, v215.l, v189.l, s70
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(10)
	v_and_b16 v189.h, v216.l, 15
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v197.h, v216.l, v189.h, s70
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(9)
	v_and_b16 v190.l, v217.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v198.l, v217.l, v190.l, s70
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(8)
	v_and_b16 v190.h, v218.l, 15
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v198.h, v218.l, v190.h, s70
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(7)
	v_and_b16 v191.l, v203.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v199.l, v203.l, v191.l, s70
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(6)
	v_and_b16 v191.h, v204.l, 15
	.loc	1 1192 38 is_stmt 1             ; ragged.py:1192:38
	v_add_nc_u32_e32 v203, 0, v0
	ds_store_b8 v203, v179
	ds_store_b8 v203, v181 offset:512
	ds_store_b8 v203, v183 offset:1024
	ds_store_b8 v203, v185 offset:1536
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(5)
	v_and_b16 v192.l, v205.l, 15
	.loc	1 1193 38 is_stmt 0             ; ragged.py:1193:38
	v_cndmask_b16 v199.h, v204.l, v191.h, s70
	.loc	1 1192 38 is_stmt 1             ; ragged.py:1192:38
	v_add_nc_u32_e32 v204, 0, v140
	ds_store_b8_d16_hi v204, v179
	ds_store_b8_d16_hi v204, v181 offset:512
	ds_store_b8_d16_hi v204, v183 offset:1024
	ds_store_b8_d16_hi v204, v185 offset:1536
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(4)
	v_and_b16 v192.h, v206.l, 15
	.loc	1 1193 38 is_stmt 0             ; ragged.py:1193:38
	v_cndmask_b16 v200.l, v205.l, v192.l, s70
	.loc	1 1192 38 is_stmt 1             ; ragged.py:1192:38
	v_add_nc_u32_e32 v205, 0, v142
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(3)
	v_and_b16 v193.l, v207.l, 15
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_add_nc_u32_e32 v179, 0, v139
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v200.h, v206.l, v192.h, s70
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_add_nc_u32_e32 v206, 0, v144
	v_add_nc_u32_e32 v183, 0, v146
	v_add_nc_u32_e32 v191, 0, v148
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(2)
	v_and_b16 v193.h, v208.l, 15
	.loc	1 1193 38 is_stmt 0             ; ragged.py:1193:38
	v_cndmask_b16 v201.l, v207.l, v193.l, s70
	.loc	1 1192 38 is_stmt 1             ; ragged.py:1192:38
	ds_store_b8 v205, v180
	ds_store_b8 v205, v182 offset:512
	ds_store_b8 v205, v184 offset:1024
	ds_store_b8 v205, v186 offset:1536
	ds_store_b8_d16_hi v206, v180
	ds_store_b8_d16_hi v206, v182 offset:512
	ds_store_b8_d16_hi v206, v184 offset:1024
	ds_store_b8_d16_hi v206, v186 offset:1536
	s_waitcnt lgkmcnt(0)
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v201.h, v208.l, v193.h, s70
	.loc	1 1193 66 is_stmt 0             ; ragged.py:1193:66
	s_waitcnt vmcnt(1)
	v_and_b16 v194.l, v209.l, 15
	.loc	1 1192 38 is_stmt 1             ; ragged.py:1192:38
	s_barrier
	ds_load_2addr_stride64_b64 v[179:182], v179 offset1:2
	ds_load_2addr_stride64_b64 v[183:186], v183 offset1:2
	ds_load_2addr_stride64_b64 v[187:190], v187 offset1:2
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v202.l, v209.l, v194.l, s70
	.loc	1 1193 66 is_stmt 0             ; ragged.py:1193:66
	s_waitcnt vmcnt(0)
	v_and_b16 v194.h, v210.l, 15
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_add_nc_u32_e32 v207, 0, v151
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b16 v202.h, v210.l, v194.h, s70
	.loc	1 1192 38 is_stmt 1             ; ragged.py:1192:38
	ds_load_2addr_stride64_b64 v[191:194], v191 offset1:2
	.loc	1 1193 38                       ; ragged.py:1193:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v203, v195
	ds_store_b8 v203, v197 offset:512
	ds_store_b8 v203, v199 offset:1024
	ds_store_b8 v203, v201 offset:1536
	ds_store_b8_d16_hi v204, v195
	ds_store_b8_d16_hi v204, v197 offset:512
	ds_store_b8_d16_hi v204, v199 offset:1024
	ds_store_b8_d16_hi v204, v201 offset:1536
	ds_store_b8 v205, v196
	ds_store_b8 v205, v198 offset:512
	ds_store_b8 v205, v200 offset:1024
	ds_store_b8 v205, v202 offset:1536
	ds_store_b8_d16_hi v206, v196
	ds_store_b8_d16_hi v206, v198 offset:512
	ds_store_b8_d16_hi v206, v200 offset:1024
	ds_store_b8_d16_hi v206, v202 offset:1536
	v_add_nc_u32_e32 v195, 0, v143
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v199, 0, v149
	v_add_nc_u32_e32 v203, 0, v150
	ds_load_2addr_stride64_b64 v[195:198], v195 offset1:2
	ds_load_2addr_stride64_b64 v[207:210], v207 offset1:2
	ds_load_2addr_stride64_b64 v[199:202], v199 offset1:2
	ds_load_2addr_stride64_b64 v[203:206], v203 offset1:2
	.loc	1 1194 35                       ; ragged.py:1194:35
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[195:196], v[179:180], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[197:198], v[179:180], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[195:196], v[181:182], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[197:198], v[181:182], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[199:200], v[183:184], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[201:202], v[183:184], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[199:200], v[185:186], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[201:202], v[185:186], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[203:204], v[187:188], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[205:206], v[187:188], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[203:204], v[189:190], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[205:206], v[189:190], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[207:208], v[191:192], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[209:210], v[191:192], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[207:208], v[193:194], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[209:210], v[193:194], v[9:16] neg_lo:[1,1,0]
	s_branch .LBB0_2
.LBB0_8:                                ; %Flow245
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_bfe_u32 v1, v178, 16, 1
	v_bfe_u32 v5, v175, 16, 1
	v_cmp_o_f32_e64 s0, v178, v178
	v_bfe_u32 v3, v177, 16, 1
	v_bfe_u32 v4, v176, 16, 1
	v_add3_u32 v1, v178, v1, 0x7fff
	v_add3_u32 v5, v175, v5, 0x7fff
	v_cmp_o_f32_e64 s2, v175, v175
	v_bfe_u32 v9, v163, 16, 1
	v_mov_b16_e32 v2.h, 0
	v_cmp_o_f32_e64 s1, v177, v177
	v_add3_u32 v3, v177, v3, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v1.h, s0
	v_add3_u32 v4, v176, v4, 0x7fff
	v_cmp_o_f32_e64 s0, v176, v176
	v_bfe_u32 v7, v165, 16, 1
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s2
	v_bfe_u32 v8, v164, 16, 1
	v_add3_u32 v9, v163, v9, 0x7fff
	v_cmp_o_f32_e64 s2, v163, v163
	v_bfe_u32 v13, v138, 16, 1
	v_mov_b16_e32 v2.l, v118.h
	v_cndmask_b16 v3.l, 0x7fff, v3.h, s1
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s0
	v_add3_u32 v7, v165, v7, 0x7fff
	v_cmp_o_f32_e64 s0, v165, v165
	v_add3_u32 v8, v164, v8, 0x7fff
	v_cmp_o_f32_e64 s1, v164, v164
	v_bfe_u32 v11, v145, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s2
	v_bfe_u32 v12, v141, 16, 1
	v_add3_u32 v13, v138, v13, 0x7fff
	v_cmp_o_f32_e64 s2, v138, v138
	v_mov_b16_e32 v17.h, v2.h
	v_and_b32_e32 v2, 1, v2
	v_bfe_u32 v6, v170, 16, 1
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s0
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s1
	v_add3_u32 v11, v145, v11, 0x7fff
	v_cmp_o_f32_e64 s0, v145, v145
	v_add3_u32 v12, v141, v12, 0x7fff
	v_cmp_o_f32_e64 s1, v141, v141
	v_bfe_u32 v15, v132, 16, 1
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s2
	v_bfe_u32 v16, v131, 16, 1
	v_mov_b16_e32 v17.l, v117.h
	v_add3_u32 v2, v118, v2, 0x7fff
	v_cmp_o_f32_e64 s2, v118, v118
	v_bfe_u32 v19, v115, 16, 1
	v_add3_u32 v6, v170, v6, 0x7fff
	v_cmp_o_f32_e64 s3, v170, v170
	v_bfe_u32 v10, v159, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s0
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s1
	v_add3_u32 v15, v132, v15, 0x7fff
	v_cmp_o_f32_e64 s0, v132, v132
	v_add3_u32 v16, v131, v16, 0x7fff
	v_cmp_o_f32_e64 s1, v131, v131
	v_and_b32_e32 v17, 1, v17
	v_cndmask_b16 v18.h, 0x7fff, v2.h, s2
	v_add3_u32 v19, v115, v19, 0x7fff
	v_cmp_o_f32_e64 s2, v115, v115
	v_cndmask_b16 v6.l, 0x7fff, v6.h, s3
	v_add3_u32 v10, v159, v10, 0x7fff
	v_cmp_o_f32_e64 s3, v159, v159
	v_bfe_u32 v14, v137, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v15.h, s0
	v_cndmask_b16 v15.l, 0x7fff, v16.h, s1
	v_add3_u32 v16, v117, v17, 0x7fff
	v_bfe_u32 v17, v116, 16, 1
	v_cmp_o_f32_e64 s0, v117, v117
	v_cndmask_b16 v3.h, 0x7fff, v19.h, s2
	v_bfe_u32 v19, v111, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s3
	v_add3_u32 v14, v137, v14, 0x7fff
	v_cmp_o_f32_e64 s3, v137, v137
	v_bfe_u32 v20, v114, 16, 1
	v_add3_u32 v17, v116, v17, 0x7fff
	v_cmp_o_f32_e64 s1, v116, v116
	v_cndmask_b16 v18.l, 0x7fff, v16.h, s0
	v_bfe_u32 v16, v113, 16, 1
	v_add3_u32 v19, v111, v19, 0x7fff
	v_cmp_o_f32_e64 s2, v111, v111
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s3
	v_add3_u32 v20, v114, v20, 0x7fff
	v_cmp_o_f32_e64 s3, v114, v114
	v_cndmask_b16 v1.h, 0x7fff, v17.h, s1
	v_bfe_u32 v17, v112, 16, 1
	v_add3_u32 v16, v113, v16, 0x7fff
	v_cmp_o_f32_e64 s0, v113, v113
	v_cndmask_b16 v7.h, 0x7fff, v19.h, s2
	v_bfe_u32 v19, v107, 16, 1
	v_cndmask_b16 v4.h, 0x7fff, v20.h, s3
	v_bfe_u32 v20, v110, 16, 1
	v_add3_u32 v17, v112, v17, 0x7fff
	v_cmp_o_f32_e64 s1, v112, v112
	v_cndmask_b16 v5.h, 0x7fff, v16.h, s0
	v_bfe_u32 v16, v109, 16, 1
	v_add3_u32 v19, v107, v19, 0x7fff
	v_cmp_o_f32_e64 s2, v107, v107
	v_add3_u32 v20, v110, v20, 0x7fff
	v_cmp_o_f32_e64 s3, v110, v110
	v_cndmask_b16 v6.h, 0x7fff, v17.h, s1
	v_bfe_u32 v17, v108, 16, 1
	v_add3_u32 v16, v109, v16, 0x7fff
	v_cmp_o_f32_e64 s0, v109, v109
	v_cndmask_b16 v11.h, 0x7fff, v19.h, s2
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_lshlrev_b32_e32 v19, 2, v33
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_cndmask_b16 v8.h, 0x7fff, v20.h, s3
	v_bfe_u32 v20, v106, 16, 1
	v_add3_u32 v17, v108, v17, 0x7fff
	v_cmp_o_f32_e64 s1, v108, v108
	v_cndmask_b16 v9.h, 0x7fff, v16.h, s0
	v_bfe_u32 v16, v89, 16, 1
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_lshl_or_b32 v19, v84, 8, v19
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_add3_u32 v20, v106, v20, 0x7fff
	v_cmp_o_f32_e64 s3, v106, v106
	v_cndmask_b16 v10.h, 0x7fff, v17.h, s1
	v_bfe_u32 v17, v88, 16, 1
	v_add3_u32 v16, v89, v16, 0x7fff
	v_cmp_o_f32_e64 s0, v89, v89
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_xor_b32_e32 v19, v19, v86
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_cndmask_b16 v12.h, 0x7fff, v20.h, s3
	v_bfe_u32 v20, v87, 16, 1
	v_add3_u32 v17, v88, v17, 0x7fff
	v_cmp_o_f32_e64 s1, v88, v88
	v_cndmask_b16 v13.h, 0x7fff, v16.h, s0
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_lshl_or_b32 v16, v85, 1, v19
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_bfe_u32 v21, v66, 16, 1
	v_add3_u32 v20, v87, v20, 0x7fff
	v_cmp_o_f32_e64 s2, v87, v87
	v_cndmask_b16 v14.h, 0x7fff, v17.h, s1
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_add_nc_u32_e32 v17, 0, v16
	v_xad_u32 v24, 0x1040, v16, 0
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_add3_u32 v21, v66, v21, 0x7fff
	v_cmp_o_f32_e64 s3, v66, v66
	v_cndmask_b16 v2.h, 0x7fff, v20.h, s2
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
	v_cndmask_b16 v15.h, 0x7fff, v21.h, s3
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_xad_u32 v21, v16, 12, 0
	ds_store_b32 v19, v1
	ds_store_b32 v27, v10
	ds_store_b32 v20, v3
	ds_store_b32 v9, v11
	v_lshlrev_b32_e32 v3, 2, v84
	v_xad_u32 v1, 0x104c, v16, 0
	ds_store_b32 v21, v4
	ds_store_b32 v1, v12
	v_lshrrev_b32_e32 v1, 3, v0
	v_lshl_or_b32 v0, v0, 3, v3
	v_cmp_eq_u32_e64 s0, 0, v82
	v_xad_u32 v22, v16, 16, 0
	v_xad_u32 v23, v16, 20, 0
	v_xad_u32 v9, 0x1050, v16, 0
	v_xor_b32_e32 v0, v0, v1
	v_cndmask_b32_e64 v4, 0x1040, 0, s0
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
	s_lshr_b32 s0, s89, 31
	.loc	1 1230 31                       ; ragged.py:1230:31
	v_lshl_or_b32 v4, s90, 5, v33
	.loc	1 1232 37                       ; ragged.py:1232:37
	s_add_i32 s0, s89, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_ashr_i32 s2, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1236 54                       ; ragged.py:1236:54
	v_cmp_gt_i32_e64 s0, s2, v4
	.loc	1 1236 33 is_stmt 0             ; ragged.py:1236:33
	s_and_b32 s1, s16, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1237 17 is_stmt 1             ; ragged.py:1237:17
	s_and_saveexec_b32 s3, s1
	s_cbranch_execnz .LBB0_25
; %bb.9:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s1, s15, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s3, s1
	s_cbranch_execnz .LBB0_26
.LBB0_10:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s1, s14, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s3, s1
	s_cbranch_execnz .LBB0_27
.LBB0_11:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s1, s13, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s3, s1
	s_cbranch_execnz .LBB0_28
.LBB0_12:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s1, s12, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s3, s1
	s_cbranch_execnz .LBB0_29
.LBB0_13:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s1, s11, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s3, s1
	s_cbranch_execnz .LBB0_30
.LBB0_14:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s1, s10, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s3, s1
	s_cbranch_execnz .LBB0_31
.LBB0_15:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s1, s9, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s3, s1
	s_cbranch_execnz .LBB0_32
.LBB0_16:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s1, s8, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s3, s1
	s_cbranch_execnz .LBB0_33
.LBB0_17:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s1, s7, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s3, s1
	s_cbranch_execnz .LBB0_34
.LBB0_18:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s1, s6, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s3, s1
	s_cbranch_execnz .LBB0_35
.LBB0_19:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s1, s5, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s3, s1
	s_cbranch_execnz .LBB0_36
.LBB0_20:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s1, s4, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s3, s1
	s_cbranch_execnz .LBB0_37
.LBB0_21:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s1, s51, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s3, s1
	s_cbranch_execnz .LBB0_38
.LBB0_22:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s1, s50, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s3, s1
	s_cbranch_execnz .LBB0_39
.LBB0_23:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s0, vcc_lo, s0
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
	v_add_nc_u32_e32 v17, s72, v83
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v19, v13, v15, 0x1000504
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[17:18], null, v17, s2, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s1, s74, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s75, v18, s1
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v19, off
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s1, s15, s0
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s3, s1
	s_cbranch_execz .LBB0_10
.LBB0_26:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v17, s72, v81
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v19, v9, v11, 0x1000504
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[17:18], null, v17, s2, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s1, s74, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s75, v18, s1
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v19, off
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s1, s14, s0
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s3, s1
	s_cbranch_execz .LBB0_11
.LBB0_27:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v17, s72, v80
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v5, v7, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[17:18], null, v17, s2, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s1, s74, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s75, v18, s1
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v19, off
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s1, s13, s0
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s3, s1
	s_cbranch_execz .LBB0_12
.LBB0_28:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v17, s72, v79
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v0, v2, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[17:18], null, v17, s2, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s1, s74, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s75, v18, s1
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v19, off
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s1, s12, s0
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s3, s1
	s_cbranch_execz .LBB0_13
.LBB0_29:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v17, s72, v78
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v19, v14, v16, 0x1000504
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[17:18], null, v17, s2, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s1, s74, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s75, v18, s1
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v19, off
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s1, s11, s0
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s3, s1
	s_cbranch_execz .LBB0_14
.LBB0_30:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v17, s72, v77
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v19, v10, v12, 0x1000504
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[17:18], null, v17, s2, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s1, s74, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s75, v18, s1
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v19, off
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s1, s10, s0
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s3, s1
	s_cbranch_execz .LBB0_15
.LBB0_31:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v17, s72, v76
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v6, v8, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[17:18], null, v17, s2, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s1, s74, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s75, v18, s1
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v19, off
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s1, s9, s0
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s3, s1
	s_cbranch_execz .LBB0_16
.LBB0_32:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v17, s72, v75
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v1, v3, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[17:18], null, v17, s2, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s1, s74, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s75, v18, s1
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v19, off
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s1, s8, s0
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s3, s1
	s_cbranch_execz .LBB0_17
.LBB0_33:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v17, s72, v74
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v13, v13, v15, 0x3020706
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[17:18], null, v17, s2, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s1, s74, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s75, v18, s1
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v13, off
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s1, s7, s0
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s3, s1
	s_cbranch_execz .LBB0_18
.LBB0_34:
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(7)
	v_add_nc_u32_e32 v13, s72, v73
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v9, v9, v11, 0x3020706
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[17:18], null, v13, s2, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s1, s74, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s75, v18, s1
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v9, off
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s1, s6, s0
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s3, s1
	s_cbranch_execz .LBB0_19
.LBB0_35:
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(5)
	v_add_nc_u32_e32 v9, s72, v72
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[17:18], null, v9, s2, v[4:5]
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v5, v7, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s1, s74, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s75, v18, s1
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v5, off
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s1, s5, s0
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s3, s1
	s_cbranch_execz .LBB0_20
.LBB0_36:
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(3)
	v_add_nc_u32_e32 v5, s72, v71
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v2, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[17:18], null, v5, s2, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s1, s74, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v18, null, s75, v18, s1
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v0, off
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s1, s4, s0
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s3, s1
	s_cbranch_execz .LBB0_21
.LBB0_37:
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(1)
	v_add_nc_u32_e32 v0, s72, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[17:18], null, v0, s2, v[4:5]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v14, v16, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v13, s1, s74, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v14, null, s75, v18, s1
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[13:14], v0, off
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s1, s51, s0
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s3, s1
	s_cbranch_execz .LBB0_22
.LBB0_38:
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(1)
	v_add_nc_u32_e32 v0, s72, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[13:14], null, v0, s2, v[4:5]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v10, v12, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v14, 31, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[13:14], 2, v[13:14]
	v_add_co_u32 v9, s1, s74, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v10, null, s75, v14, s1
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[9:10], v0, off
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s1, s50, s0
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s3, s1
	s_cbranch_execz .LBB0_23
.LBB0_39:
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(1)
	v_add_nc_u32_e32 v0, s72, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[9:10], null, v0, s2, v[4:5]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v6, v8, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v10, 31, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	v_add_co_u32 v5, s1, s74, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_add_co_ci_u32_e64 v6, null, s75, v10, s1
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[5:6], v0, off
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1236 33 is_stmt 1             ; ragged.py:1236:33
	s_and_b32 s0, vcc_lo, s0
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s1, s0
	s_cbranch_execz .LBB0_24
.LBB0_40:
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(1)
	v_add_nc_u32_e32 v0, s72, v67
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v1, v3, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[4:5], null, v0, s2, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v5, 31, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_add_co_u32 v0, vcc_lo, s74, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s75, v5, vcc_lo
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[0:1], v2, off
	.loc	1 970 5 is_stmt 1               ; ragged.py:970:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 219
		.amdhsa_next_free_sgpr 97
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_vgpr, 219
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.numbered_sgpr, 97
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11280
; TotalNumSgprs: 99
; NumVgprs: 219
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 99
; NumVGPRsForWavesPerEU: 219
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     99
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     219
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
