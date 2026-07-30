	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 970 0                         ; ragged.py:970:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[74:75], s[0:1], 0x30
.Ltmp0:
	.loc	1 998 20 prologue_end           ; ragged.py:998:20
	s_abs_i32 s8, s2
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v2, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:995:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s74, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:996:21 ]
	s_add_i32 s5, s75, 63
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
	s_ashr_i32 s59, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_ashr_i32 s57, s5, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 997 27 is_stmt 1              ; ragged.py:997:27
	s_mul_i32 s4, s57, s59
	.loc	1 998 20                        ; ragged.py:998:20
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
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s6, s5
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
	s_abs_i32 s8, s57
	.loc	1 998 20                        ; ragged.py:998:20
	s_xor_b32 s5, s5, s7
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_cvt_f32_u32 s6, s8
	.loc	1 998 20                        ; ragged.py:998:20
	s_sub_i32 s54, s5, s7
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s5, 0, s8
	.loc	1 999 22                        ; ragged.py:999:22
	s_mul_i32 s4, s54, s4
	.loc	1 1000 17                       ; ragged.py:1000:17
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 999 16                        ; ragged.py:999:16
	s_sub_i32 s4, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s9, s4
	s_xor_b32 s10, s4, s57
	s_ashr_i32 s56, s10, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s6, v1
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v1, 64, v0
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_mul_f32 s6, s6, 0x4f7ffffe
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_lshrrev_b32_e32 v3, 2, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_cvt_u32_f32 s6, s6
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v68, v3, v2
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_mul_i32 s5, s5, s6
	s_mul_hi_u32 s5, s6, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v67, 32, v68
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_add_i32 s5, s6, s5
	s_load_b64 s[6:7], s[0:1], 0x20
	s_mul_hi_u32 s5, s9, s5
	s_mul_i32 s11, s5, s8
	s_add_i32 s10, s5, 1
	s_sub_i32 s9, s9, s11
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s11, s9, s8
	s_cmp_ge_u32 s9, s8
	s_cselect_b32 s5, s10, s5
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s5, 1
	s_cmp_ge_u32 s9, s8
	s_cselect_b32 s5, s10, s5
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_ashr_i32 s55, s54, 31
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_xor_b32 s58, s5, s56
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_lshl_b64 s[8:9], s[54:55], 2
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s5, s58, s56
	.loc	1 1160 43                       ; ragged.py:1160:43
	s_mul_i32 s55, s54, s74
	.loc	1 1001 24                       ; ragged.py:1001:24
	s_mul_i32 s10, s5, s57
	.loc	1 1003 18                       ; ragged.py:1003:18
	s_lshl_b32 s61, s5, 6
	.loc	1 1001 17                       ; ragged.py:1001:17
	s_sub_i32 s4, s4, s10
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s6, s8
	s_addc_u32 s7, s7, s9
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v3, s61, v68
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_load_b32 s60, s[6:7], 0x0
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v4, s61, v67
	s_mov_b32 s5, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s51, s74, v3
	v_cmp_gt_i32_e64 s50, s74, v4
	.loc	1 1008 27                       ; ragged.py:1008:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s49, s60, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cmp_gt_i32 s49, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge39_crit_edge
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_add_i32 s89, s61, s55
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s5, -1
                                        ; implicit-def: $sgpr89
.LBB0_3:                                ; %Flow372
	s_load_b64 s[72:73], s[0:1], 0x28
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v147, 0
	v_mov_b32_e32 v150, 0
	v_mov_b32_e32 v152, 0
	v_mov_b32_e32 v154, 0
	v_mov_b32_e32 v156, 0
	v_mov_b32_e32 v158, 0
	v_mov_b32_e32 v160, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s88, s4, 6
	s_cbranch_vccnz .LBB0_11
; %bb.4:                                ; %.lr.ph38
	.loc	1 1003 36 is_stmt 1             ; ragged.py:1003:36
	v_lshrrev_b32_e32 v14, 5, v0
	s_clause 0x1
	s_load_b256 s[64:71], s[0:1], 0x0
	s_load_b64 s[52:53], s[0:1], 0x38
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_lshr_b32 s62, s49, 31
	.loc	1 1118 23                       ; ragged.py:1118:23
	s_lshl_b32 s90, s3, 5
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_add_i32 s62, s49, s62
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v3, 4, v14
	v_or_b32_e32 v4, 8, v14
	v_or_b32_e32 v5, 12, v14
	v_or_b32_e32 v6, 16, v14
	v_or_b32_e32 v7, 20, v14
	.loc	1 1003 18 is_stmt 0             ; ragged.py:1003:18
	v_or_b32_e32 v23, s61, v3
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v8, 24, v14
	v_or_b32_e32 v15, 28, v14
	v_or_b32_e32 v9, 32, v14
	v_or_b32_e32 v10, 36, v14
	v_or_b32_e32 v11, 40, v14
	v_or_b32_e32 v12, 44, v14
	v_or_b32_e32 v13, 48, v14
	v_or_b32_e32 v17, 52, v14
	v_or_b32_e32 v18, 56, v14
	v_or_b32_e32 v19, 60, v14
	.loc	1 1005 20 is_stmt 1             ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s74, v23
	v_dual_mov_b32 v132, 0 :: v_dual_lshlrev_b32 v23, 1, v0
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v22, s61, v14
	v_or_b32_e32 v24, s61, v4
	v_or_b32_e32 v25, s61, v5
	v_or_b32_e32 v26, s61, v6
	v_or_b32_e32 v27, s61, v7
	v_or_b32_e32 v28, s61, v8
	v_or_b32_e32 v29, s61, v15
	v_or_b32_e32 v30, s61, v9
	v_or_b32_e32 v31, s61, v10
	v_or_b32_e32 v32, s61, v11
	v_or_b32_e32 v33, s61, v12
	v_or_b32_e32 v34, s61, v13
	v_or_b32_e32 v35, s61, v17
	v_or_b32_e32 v36, s61, v18
	v_or_b32_e32 v37, s61, v19
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v3, s88, v3
	v_dual_mov_b32 v112, 0 :: v_dual_and_b32 v23, 24, v23
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e32 vcc_lo, s74, v22
	v_cmp_gt_i32_e64 s1, s74, v24
	v_cmp_gt_i32_e64 s4, s74, v25
	v_cmp_gt_i32_e64 s5, s74, v26
	v_cmp_gt_i32_e64 s6, s74, v27
	v_cmp_gt_i32_e64 s7, s74, v28
	v_cmp_gt_i32_e64 s8, s74, v29
	v_cmp_gt_i32_e64 s9, s74, v30
	v_cmp_gt_i32_e64 s10, s74, v31
	v_cmp_gt_i32_e64 s11, s74, v32
	v_cmp_gt_i32_e64 s12, s74, v33
	v_cmp_gt_i32_e64 s13, s74, v34
	v_cmp_gt_i32_e64 s14, s74, v35
	v_cmp_gt_i32_e64 s15, s74, v36
	v_cmp_gt_i32_e64 s16, s74, v37
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_ashr_i32 s74, s62, 1
	.loc	1 1150 55                       ; ragged.py:1150:55
	s_lshr_b32 s62, s60, 31
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s18, s75, v3
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v3, s52, v14
	.loc	1 1150 55                       ; ragged.py:1150:55
	s_add_i32 s62, s60, s62
	.loc	1 1162 43                       ; ragged.py:1162:43
	s_mul_i32 s3, s54, s75
	v_dual_mov_b32 v147, 0 :: v_dual_and_b32 v16, 32, v0
	v_lshl_or_b32 v2, v2, 5, v23
	.loc	1 1150 55                       ; ragged.py:1150:55
	s_ashr_i32 s91, s62, 1
	s_add_i32 s89, s61, s55
	s_and_b32 s77, s65, 0xffff
	s_add_i32 s93, s88, s3
	s_and_b32 s81, s67, 0xffff
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v4, s88, v4
	v_or_b32_e32 v5, s88, v5
	s_bitcmp1_b32 s60, 0
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_mul_i32 s59, s59, s54
	.loc	1 1214 37                       ; ragged.py:1214:37
	s_mul_i32 s92, s54, s53
	s_cselect_b32 s67, -1, 0
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_sub_i32 s54, s56, s59
	v_lshl_or_b32 v122, v1, 3, v2
	v_lshl_or_b32 v125, v16, 4, v2
	v_add_nc_u32_e32 v1, s89, v68
	v_add_nc_u32_e32 v2, s89, v67
	s_sub_i32 s54, s54, s58
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s19, s75, v4
	v_cmp_gt_i32_e64 s20, s75, v5
	v_mad_u64_u32 v[4:5], null, s52, 12, v[3:4]
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_mul_i32 s57, s57, s54
	s_lshl_b32 s2, s2, 6
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v6, s88, v6
	v_mul_lo_u32 v157, v1, s53
	v_mul_lo_u32 v159, v2, s53
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_lshl_b32 s53, s57, 6
	s_add_i32 s54, s2, s3
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v7, s88, v7
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_bfe_u32 v20, v0, 4, 1
	v_lshrrev_b32_e32 v21, 1, v16
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v8, s88, v8
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_add_i32 s54, s54, s53
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v9, s88, v9
	v_or_b32_e32 v10, s88, v10
	v_dual_mov_b32 v160, 0 :: v_dual_and_b32 v33, 31, v0
	.loc	1 1115 19                       ; ragged.py:1115:19
	v_add_nc_u32_e32 v2, s54, v19
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v11, s88, v11
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s21, s75, v6
	v_mad_u64_u32 v[5:6], null, s52, 20, v[3:4]
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_add_i32 s3, s53, s3
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v12, s88, v12
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s22, s75, v7
	v_mad_u64_u32 v[6:7], null, s52, 24, v[3:4]
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or3_b32 v73, v20, v21, s88
	v_or_b32_e32 v13, s88, v13
	v_or_b32_e32 v17, s88, v17
	v_or_b32_e32 v18, s88, v18
	v_or_b32_e32 v20, s88, v19
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s23, s75, v8
	v_mad_u64_u32 v[7:8], null, s52, 36, v[3:4]
	.loc	1 1115 19                       ; ragged.py:1115:19
	v_add3_u32 v1, s3, s2, v14
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s25, s75, v9
	v_mad_u64_u32 v[8:9], null, s52, 40, v[3:4]
	v_cmp_gt_i32_e64 s26, s75, v10
	v_mad_u64_u32 v[9:10], null, s52, 44, v[3:4]
	.loc	1 1115 19                       ; ragged.py:1115:19
	v_mad_u64_u32 v[34:35], null, s52, v2, v[33:34]
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s27, s75, v11
	v_mad_u64_u32 v[10:11], null, s52, 48, v[3:4]
	s_mul_i32 s61, s89, s52
	v_cmp_gt_i32_e64 s28, s75, v12
	v_mad_u64_u32 v[11:12], null, s52, 52, v[3:4]
	v_cmp_gt_i32_e64 s29, s75, v13
	v_cmp_gt_i32_e64 s30, s75, v17
	v_cmp_gt_i32_e64 s31, s75, v18
	v_cmp_gt_i32_e64 s33, s75, v20
	v_lshl_add_u32 v17, s52, 2, v3
	v_lshl_add_u32 v18, s52, 3, v3
	v_lshl_add_u32 v20, s52, 4, v3
	v_lshl_add_u32 v22, s52, 5, v3
	v_mad_u64_u32 v[12:13], null, s52, 56, v[3:4]
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v100, v3, v33
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v136, s61, v3
	.loc	1 1115 19                       ; ragged.py:1115:19
	v_add_nc_u32_e32 v3, 56, v1
	v_add_nc_u32_e32 v2, 52, v1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v38, s88, v14
	v_or_b32_e32 v39, s88, v15
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_lshl_b32 s2, s58, 6
	v_mad_u64_u32 v[35:36], null, s52, v3, v[33:34]
	v_add_nc_u32_e32 v3, 48, v1
	v_mad_u64_u32 v[36:37], null, s52, v2, v[33:34]
	v_add_nc_u32_e32 v2, 44, v1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s17, s75, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1115 19                       ; ragged.py:1115:19
	v_mad_u64_u32 v[37:38], null, s52, v3, v[33:34]
	v_add_nc_u32_e32 v3, 40, v1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s24, s75, v39
	.loc	1 1115 19                       ; ragged.py:1115:19
	v_mad_u64_u32 v[38:39], null, s52, v2, v[33:34]
	v_add_nc_u32_e32 v2, 36, v1
	v_mad_u64_u32 v[39:40], null, s52, v3, v[33:34]
	v_add_nc_u32_e32 v3, 32, v1
	v_dual_mov_b32 v154, 0 :: v_dual_add_nc_u32 v107, v6, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[40:41], null, s52, v2, v[33:34]
	v_add_nc_u32_e32 v2, s54, v15
	v_mad_u64_u32 v[41:42], null, s52, v3, v[33:34]
	v_add_nc_u32_e32 v3, 24, v1
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v142, s61, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[42:43], null, s52, v2, v[33:34]
	v_add_nc_u32_e32 v2, 20, v1
	s_add_i32 s55, s55, s2
	v_add_nc_u32_e32 v6, 16, v1
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v104, v4, v33
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v139, s61, v4
	v_add_nc_u32_e32 v4, s55, v14
	v_mad_u64_u32 v[43:44], null, s52, v3, v[33:34]
	v_mad_u64_u32 v[44:45], null, s52, v2, v[33:34]
	v_add_nc_u32_e32 v2, 12, v1
	s_lshl_b32 s2, s56, 6
	v_mad_u64_u32 v[45:46], null, s52, v6, v[33:34]
	v_add_nc_u32_e32 v6, 8, v1
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v110, v7, v33
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v145, s61, v7
	v_add_nc_u32_e32 v3, s55, v19
	v_add_nc_u32_e32 v7, 4, v1
	v_subrev_nc_u32_e32 v4, s2, v4
	v_mad_u64_u32 v[46:47], null, s52, v2, v[33:34]
	v_mad_u64_u32 v[47:48], null, s52, v6, v[33:34]
	v_subrev_nc_u32_e32 v3, s2, v3
	v_mad_u64_u32 v[48:49], null, s52, v7, v[33:34]
	v_mad_u64_u32 v[49:50], null, s52, v1, v[33:34]
	v_add_nc_u32_e32 v1, 56, v4
	v_add_nc_u32_e32 v2, 52, v4
	v_mad_u64_u32 v[50:51], null, s52, v3, v[33:34]
	v_dual_mov_b32 v103, 0 :: v_dual_add_nc_u32 v106, v5, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[51:52], null, s52, v1, v[33:34]
	v_add_nc_u32_e32 v1, 48, v4
	v_mad_u64_u32 v[52:53], null, s52, v2, v[33:34]
	v_add_nc_u32_e32 v2, 44, v4
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v141, s61, v5
	v_add_nc_u32_e32 v5, s55, v15
	v_mad_u64_u32 v[53:54], null, s52, v1, v[33:34]
	v_add_nc_u32_e32 v1, 40, v4
	v_mad_u64_u32 v[54:55], null, s52, v2, v[33:34]
	v_add_nc_u32_e32 v2, 36, v4
	v_add_nc_u32_e32 v3, 32, v4
	v_subrev_nc_u32_e32 v5, s2, v5
	v_mad_u64_u32 v[55:56], null, s52, v1, v[33:34]
	v_add_nc_u32_e32 v1, 24, v4
	v_mad_u64_u32 v[56:57], null, s52, v2, v[33:34]
	v_mad_u64_u32 v[57:58], null, s52, v3, v[33:34]
	v_mad_u64_u32 v[58:59], null, s52, v5, v[33:34]
	v_add_nc_u32_e32 v2, 20, v4
	v_mad_u64_u32 v[59:60], null, s52, v1, v[33:34]
	v_add_nc_u32_e32 v1, 16, v4
	v_add_nc_u32_e32 v3, 4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[60:61], null, s52, v2, v[33:34]
	v_add_nc_u32_e32 v2, 12, v4
	v_mad_u64_u32 v[61:62], null, s52, v1, v[33:34]
	v_add_nc_u32_e32 v1, 8, v4
	v_mul_lo_u32 v21, s52, v15
	v_mul_lo_u32 v13, s52, v19
	v_mad_u64_u32 v[62:63], null, s52, v2, v[33:34]
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v75, 2, v73
	v_or_b32_e32 v76, 4, v73
	v_or_b32_e32 v78, 6, v73
	v_or_b32_e32 v79, 8, v73
	v_or_b32_e32 v80, 10, v73
	v_or_b32_e32 v81, 12, v73
	v_or_b32_e32 v82, 14, v73
	v_or_b32_e32 v83, 32, v73
	v_or_b32_e32 v84, 34, v73
	v_or_b32_e32 v86, 36, v73
	v_or_b32_e32 v87, 38, v73
	v_or_b32_e32 v88, 40, v73
	v_or_b32_e32 v89, 42, v73
	v_or_b32_e32 v90, 44, v73
	v_or_b32_e32 v91, 46, v73
	.loc	1 1115 19                       ; ragged.py:1115:19
	v_mad_u64_u32 v[63:64], null, s52, v1, v[33:34]
	v_mad_u64_u32 v[64:65], null, s52, v3, v[33:34]
	v_mad_u64_u32 v[65:66], null, s52, v4, v[33:34]
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s34, s75, v73
	v_cmp_gt_i32_e64 s35, s75, v75
	v_cmp_gt_i32_e64 s36, s75, v76
	v_cmp_gt_i32_e64 s37, s75, v78
	v_cmp_gt_i32_e64 s38, s75, v79
	v_cmp_gt_i32_e64 s39, s75, v80
	v_cmp_gt_i32_e64 s40, s75, v81
	v_cmp_gt_i32_e64 s41, s75, v82
	v_cmp_gt_i32_e64 s42, s75, v83
	v_cmp_gt_i32_e64 s43, s75, v84
	v_cmp_gt_i32_e64 s44, s75, v86
	v_cmp_gt_i32_e64 s45, s75, v87
	v_cmp_gt_i32_e64 s46, s75, v88
	v_cmp_gt_i32_e64 s47, s75, v89
	v_cmp_gt_i32_e64 s48, s75, v90
	v_cmp_gt_i32_e64 s49, s75, v91
	v_dual_mov_b32 v158, 0 :: v_dual_add_nc_u32 v101, v17, v33
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v102, v18, v33
	v_dual_mov_b32 v156, 0 :: v_dual_add_nc_u32 v105, v20, v33
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v108, v21, v33
	v_dual_mov_b32 v152, 0 :: v_dual_add_nc_u32 v109, v22, v33
	v_dual_mov_b32 v150, 0 :: v_dual_add_nc_u32 v111, v8, v33
	v_dual_mov_b32 v134, 0 :: v_dual_add_nc_u32 v113, v9, v33
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v115, v10, v33
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v116, v11, v33
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v117, v12, v33
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v118, v13, v33
	v_xor_b32_e32 v123, 0x88, v0
	v_xor_b32_e32 v124, 0x110, v0
	v_xor_b32_e32 v126, 0x198, v0
	v_xor_b32_e32 v127, 8, v122
	v_xor_b32_e32 v128, 16, v122
	v_xor_b32_e32 v130, 24, v122
	v_xor_b32_e32 v131, 8, v125
	v_xor_b32_e32 v133, 16, v125
	v_xor_b32_e32 v135, 24, v125
	v_dual_mov_b32 v98, 0 :: v_dual_add_nc_u32 v137, s61, v17
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v138, s61, v18
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v140, s61, v20
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v143, s61, v21
	.loc	1 1115 19                       ; ragged.py:1115:19
	v_add_nc_u32_e32 v144, s61, v22
	v_add_nc_u32_e32 v146, s61, v8
	v_add_nc_u32_e32 v148, s61, v9
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v149, s61, v10
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v151, s61, v11
	v_add_nc_u32_e32 v153, s61, v12
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v155, s61, v13
	s_add_i32 s94, s74, -1
	s_mov_b32 s76, s64
	s_mov_b32 s79, 0x31027000
	s_mov_b32 s78, 0x7ffffffe
	s_mul_i32 s93, s93, s52
	s_mov_b32 s80, s66
	s_and_b32 s69, s69, 0xffff
	s_and_b32 s85, s71, 0xffff
	s_mov_b32 s84, s70
	s_lshr_b32 s95, s94, 5
	s_mov_b32 s96, 0
	s_mov_b32 s2, 0
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s2, s96, s92
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v161, v157, s96, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s2, s2, s75
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v162, v159, s96, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v163, v73, s2, 1
	v_add_lshl_u32 v164, v75, s2, 1
	v_add_lshl_u32 v165, v76, s2, 1
	v_add_lshl_u32 v166, v78, s2, 1
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_cndmask_b32_e64 v161, 0x80000000, v161, s51
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v167, v79, s2, 1
	v_add_lshl_u32 v168, v80, s2, 1
	v_add_lshl_u32 v169, v81, s2, 1
	v_add_lshl_u32 v170, v82, s2, 1
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_cndmask_b32_e64 v162, 0x80000000, v162, s50
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_cndmask_b32_e64 v163, 0x80000000, v163, s34
	v_add_lshl_u32 v172, v84, s2, 1
	v_cndmask_b32_e64 v164, 0x80000000, v164, s35
	v_add_lshl_u32 v171, v83, s2, 1
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_mov_b32 s70, s78
	s_mov_b32 s71, s79
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_cndmask_b32_e64 v165, 0x80000000, v165, s36
	v_add_lshl_u32 v174, v87, s2, 1
	s_mov_b32 s86, s78
	s_mov_b32 s87, s79
	v_cndmask_b32_e64 v166, 0x80000000, v166, s37
	v_add_lshl_u32 v173, v86, s2, 1
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_clause 0x1
	buffer_load_u16 v161, v161, s[68:71], 0 offen
	buffer_load_u16 v162, v162, s[68:71], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_cndmask_b32_e64 v167, 0x80000000, v167, s38
	v_cndmask_b32_e64 v168, 0x80000000, v168, s39
	v_cndmask_b32_e64 v169, 0x80000000, v169, s40
	v_cndmask_b32_e64 v170, 0x80000000, v170, s41
	v_add_lshl_u32 v175, v88, s2, 1
	v_add_lshl_u32 v176, v89, s2, 1
	v_add_lshl_u32 v177, v90, s2, 1
	v_add_lshl_u32 v178, v91, s2, 1
	s_clause 0x7
	buffer_load_u16 v163, v163, s[84:87], 0 offen
	buffer_load_u16 v164, v164, s[84:87], 0 offen
	buffer_load_u16 v165, v165, s[84:87], 0 offen
	buffer_load_u16 v166, v166, s[84:87], 0 offen
	buffer_load_u16 v167, v167, s[84:87], 0 offen
	buffer_load_u16 v168, v168, s[84:87], 0 offen
	buffer_load_u16 v169, v169, s[84:87], 0 offen
	buffer_load_u16 v170, v170, s[84:87], 0 offen
	v_cndmask_b32_e64 v172, 0x80000000, v172, s43
	v_cndmask_b32_e64 v171, 0x80000000, v171, s42
	v_cndmask_b32_e64 v174, 0x80000000, v174, s45
	v_cndmask_b32_e64 v173, 0x80000000, v173, s44
	v_cndmask_b32_e64 v175, 0x80000000, v175, s46
	v_cndmask_b32_e64 v176, 0x80000000, v176, s47
	v_cndmask_b32_e64 v177, 0x80000000, v177, s48
	v_cndmask_b32_e64 v178, 0x80000000, v178, s49
	s_clause 0x7
	buffer_load_u16 v172, v172, s[84:87], 0 offen
	buffer_load_u16 v171, v171, s[84:87], 0 offen
	buffer_load_u16 v174, v174, s[84:87], 0 offen
	buffer_load_u16 v173, v173, s[84:87], 0 offen
	buffer_load_u16 v176, v176, s[84:87], 0 offen
	buffer_load_u16 v175, v175, s[84:87], 0 offen
	buffer_load_u16 v178, v178, s[84:87], 0 offen
	buffer_load_u16 v177, v177, s[84:87], 0 offen
	.loc	1 1204 27                       ; ragged.py:1204:27
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	.loc	1 1220 17                       ; ragged.py:1220:17
	s_add_i32 s3, s96, 1
	.loc	1 1115 19                       ; ragged.py:1115:19
	v_add_nc_u32_e32 v65, 32, v65
	s_lshl_b32 s2, s3, 5
	s_cmp_lg_u32 s96, s95
	s_mov_b32 s96, s3
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v169, 16, v169
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_lshlrev_b32_e32 v162, 16, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_dual_mul_f32 v8, v162, v8 :: v_dual_lshlrev_b32 v161, 16, v161
	v_dual_mul_f32 v24, v24, v161 :: v_dual_add_nc_u32 v63, 32, v63
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v178, 16, v178
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_dual_mul_f32 v29, v29, v161 :: v_dual_add_nc_u32 v38, 32, v38
	v_dual_mul_f32 v28, v28, v161 :: v_dual_add_nc_u32 v39, 32, v39
	v_dual_mul_f32 v31, v31, v161 :: v_dual_add_nc_u32 v40, 32, v40
	v_dual_mul_f32 v19, v19, v161 :: v_dual_add_nc_u32 v44, 32, v44
	v_dual_mul_f32 v18, v18, v161 :: v_dual_add_nc_u32 v51, 32, v51
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_dual_fmac_f32 v103, v24, v178 :: v_dual_lshlrev_b32 v172, 16, v172
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_lshlrev_b32_e32 v166, 16, v166
	v_lshlrev_b32_e32 v173, 16, v173
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_dual_mul_f32 v32, v32, v161 :: v_dual_add_nc_u32 v47, 32, v47
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_lshlrev_b32_e32 v164, 16, v164
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_dual_fmac_f32 v129, v18, v172 :: v_dual_fmac_f32 v154, v28, v166
	v_fmac_f32_e32 v147, v31, v169
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_dual_mul_f32 v10, v162, v10 :: v_dual_add_nc_u32 v37, 32, v37
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_dual_fmac_f32 v121, v19, v173 :: v_dual_lshlrev_b32 v170, 16, v170
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_dual_mul_f32 v25, v25, v161 :: v_dual_add_nc_u32 v34, 32, v34
	v_dual_mul_f32 v26, v26, v161 :: v_dual_add_nc_u32 v35, 32, v35
	v_dual_mul_f32 v30, v30, v161 :: v_dual_add_nc_u32 v43, 32, v43
	v_dual_mul_f32 v21, v21, v161 :: v_dual_add_nc_u32 v46, 32, v46
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_dual_fmac_f32 v158, v26, v164 :: v_dual_lshlrev_b32 v163, 16, v163
	v_fmac_f32_e32 v99, v10, v164
	v_dual_fmac_f32 v134, v32, v170 :: v_dual_lshlrev_b32 v175, 16, v175
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_lshlrev_b32_e32 v168, 16, v168
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_dual_mul_f32 v27, v27, v161 :: v_dual_add_nc_u32 v36, 32, v36
	v_dual_mul_f32 v12, v162, v12 :: v_dual_add_nc_u32 v41, 32, v41
	v_dual_mul_f32 v17, v17, v161 :: v_dual_add_nc_u32 v42, 32, v42
	v_dual_mul_f32 v14, v162, v14 :: v_dual_add_nc_u32 v45, 32, v45
	v_dual_mul_f32 v23, v23, v161 :: v_dual_add_nc_u32 v48, 32, v48
	v_dual_mul_f32 v16, v162, v16 :: v_dual_add_nc_u32 v49, 32, v49
	v_dual_mul_f32 v9, v162, v9 :: v_dual_add_nc_u32 v50, 32, v50
	v_dual_mul_f32 v11, v162, v11 :: v_dual_add_nc_u32 v52, 32, v52
	v_dual_mul_f32 v2, v162, v2 :: v_dual_add_nc_u32 v53, 32, v53
	v_dual_mul_f32 v13, v162, v13 :: v_dual_add_nc_u32 v54, 32, v54
	v_dual_mul_f32 v20, v20, v161 :: v_dual_add_nc_u32 v55, 32, v55
	v_dual_mul_f32 v15, v162, v15 :: v_dual_add_nc_u32 v56, 32, v56
	v_dual_mul_f32 v4, v162, v4 :: v_dual_add_nc_u32 v57, 32, v57
	v_dual_mul_f32 v1, v162, v1 :: v_dual_add_nc_u32 v58, 32, v58
	v_dual_mul_f32 v22, v22, v161 :: v_dual_add_nc_u32 v59, 32, v59
	v_dual_mul_f32 v3, v162, v3 :: v_dual_add_nc_u32 v60, 32, v60
	v_dual_mul_f32 v6, v162, v6 :: v_dual_add_nc_u32 v61, 32, v61
	v_dual_mul_f32 v5, v162, v5 :: v_dual_add_nc_u32 v62, 32, v62
	v_dual_mul_f32 v7, v162, v7 :: v_dual_add_nc_u32 v64, 32, v64
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_dual_fmac_f32 v160, v25, v163 :: v_dual_lshlrev_b32 v165, 16, v165
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_lshlrev_b32_e32 v167, 16, v167
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_dual_fmac_f32 v97, v12, v166 :: v_dual_lshlrev_b32 v176, 16, v176
	v_fmac_f32_e32 v119, v21, v175
	v_dual_fmac_f32 v150, v30, v168 :: v_dual_lshlrev_b32 v171, 16, v171
	v_dual_fmac_f32 v95, v14, v168 :: v_dual_lshlrev_b32 v174, 16, v174
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v132, v17, v171 :: v_dual_lshlrev_b32 v177, 16, v177
	v_fmac_f32_e32 v156, v27, v165
	v_fmac_f32_e32 v152, v29, v167
	v_dual_fmac_f32 v120, v20, v174 :: v_dual_fmac_f32 v85, v2, v172
	v_dual_fmac_f32 v114, v22, v176 :: v_dual_fmac_f32 v93, v16, v170
	v_dual_fmac_f32 v112, v23, v177 :: v_dual_fmac_f32 v71, v6, v176
	v_dual_fmac_f32 v98, v9, v163 :: v_dual_fmac_f32 v69, v7, v177
	v_fmac_f32_e32 v96, v11, v165
	v_fmac_f32_e32 v94, v13, v167
	v_dual_fmac_f32 v92, v15, v169 :: v_dual_fmac_f32 v77, v1, v171
	v_fmac_f32_e32 v72, v3, v173
	v_fmac_f32_e32 v74, v4, v174
	v_fmac_f32_e32 v70, v5, v175
	v_fmac_f32_e32 v66, v8, v178
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cbranch_scc0 .LBB0_11
.LBB0_6:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 1150 54                       ; ragged.py:1150:54
	s_sub_i32 s3, s91, s2
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v7, 0
	.loc	1 1148 45                       ; ragged.py:1148:45
	v_med3_i32 v1, s3, 0, 32
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v5, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1152 41                       ; ragged.py:1152:41
	v_readfirstlane_b32 s3, v1
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	s_and_b32 s52, s3, 32
	s_mov_b32 s3, s90
	.loc	1 1155 27                       ; ragged.py:1155:27
	s_cmp_ge_i32 s90, s52
	s_cbranch_scc1 .LBB0_9
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v25, 0
	s_mov_b32 s3, s90
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
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v10, v25
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v12, v25
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v14, v25
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v16, v25
	v_mov_b32_e32 v1, v25
	v_mov_b32_e32 v2, v25
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v6, v25
	v_mov_b32_e32 v7, v25
	v_mov_b32_e32 v8, v25
.LBB0_8:                                ; %.lr.ph
                                        ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1165 46 is_stmt 1             ; ragged.py:1165:46
	v_add_nc_u32_e32 v161, s3, v65
	v_add_nc_u32_e32 v165, s3, v61
	v_add_nc_u32_e32 v169, s3, v57
	v_add_nc_u32_e32 v173, s3, v53
	v_add_nc_u32_e32 v162, s3, v64
	v_add_nc_u32_e32 v163, s3, v63
	v_add_nc_u32_e32 v164, s3, v62
	v_add_nc_u32_e32 v166, s3, v60
	v_add_nc_u32_e32 v167, s3, v59
	v_add_nc_u32_e32 v168, s3, v58
	v_add_nc_u32_e32 v170, s3, v56
	v_add_nc_u32_e32 v171, s3, v55
	v_add_nc_u32_e32 v172, s3, v54
	v_add_nc_u32_e32 v174, s3, v52
	v_add_nc_u32_e32 v175, s3, v51
	.loc	1 1165 38 is_stmt 0             ; ragged.py:1165:38
	v_add_nc_u32_e32 v176, s3, v50
	.loc	1 1166 46 is_stmt 1             ; ragged.py:1166:46
	v_add_nc_u32_e32 v177, s3, v49
	v_add_nc_u32_e32 v178, s3, v48
	v_add_nc_u32_e32 v179, s3, v47
	v_add_nc_u32_e32 v180, s3, v46
	v_add_nc_u32_e32 v181, s3, v45
	v_add_nc_u32_e32 v182, s3, v44
	v_add_nc_u32_e32 v183, s3, v43
	v_add_nc_u32_e32 v184, s3, v42
	v_add_nc_u32_e32 v185, s3, v41
	v_add_nc_u32_e32 v186, s3, v40
	v_add_nc_u32_e32 v187, s3, v39
	v_add_nc_u32_e32 v188, s3, v38
	v_add_nc_u32_e32 v189, s3, v37
	v_add_nc_u32_e32 v190, s3, v36
	v_add_nc_u32_e32 v191, s3, v35
	.loc	1 1166 38 is_stmt 0             ; ragged.py:1166:38
	v_add_nc_u32_e32 v192, s3, v34
	.loc	1 1165 38 is_stmt 1             ; ragged.py:1165:38
	v_dual_cndmask_b32 v161, 0x80000000, v161 :: v_dual_add_nc_u32 v194, 0, v123
	v_cndmask_b32_e64 v165, 0x80000000, v165, s5
	v_cndmask_b32_e64 v169, 0x80000000, v169, s9
	v_cndmask_b32_e64 v173, 0x80000000, v173, s13
	v_cndmask_b32_e64 v162, 0x80000000, v162, s0
	v_cndmask_b32_e64 v163, 0x80000000, v163, s1
	v_cndmask_b32_e64 v164, 0x80000000, v164, s4
	v_cndmask_b32_e64 v166, 0x80000000, v166, s6
	v_cndmask_b32_e64 v167, 0x80000000, v167, s7
	v_cndmask_b32_e64 v168, 0x80000000, v168, s8
	v_cndmask_b32_e64 v170, 0x80000000, v170, s10
	v_cndmask_b32_e64 v171, 0x80000000, v171, s11
	v_cndmask_b32_e64 v172, 0x80000000, v172, s12
	v_cndmask_b32_e64 v174, 0x80000000, v174, s14
	v_cndmask_b32_e64 v175, 0x80000000, v175, s15
	v_cndmask_b32_e64 v176, 0x80000000, v176, s16
	.loc	1 1166 38                       ; ragged.py:1166:38
	v_cndmask_b32_e64 v177, 0x80000000, v177, s17
	v_cndmask_b32_e64 v178, 0x80000000, v178, s18
	v_cndmask_b32_e64 v179, 0x80000000, v179, s19
	v_cndmask_b32_e64 v180, 0x80000000, v180, s20
	v_cndmask_b32_e64 v181, 0x80000000, v181, s21
	v_cndmask_b32_e64 v182, 0x80000000, v182, s22
	v_cndmask_b32_e64 v183, 0x80000000, v183, s23
	v_cndmask_b32_e64 v184, 0x80000000, v184, s24
	v_cndmask_b32_e64 v185, 0x80000000, v185, s25
	v_cndmask_b32_e64 v186, 0x80000000, v186, s26
	v_cndmask_b32_e64 v187, 0x80000000, v187, s27
	v_cndmask_b32_e64 v188, 0x80000000, v188, s28
	v_cndmask_b32_e64 v189, 0x80000000, v189, s29
	v_cndmask_b32_e64 v190, 0x80000000, v190, s30
	v_cndmask_b32_e64 v191, 0x80000000, v191, s31
	v_cndmask_b32_e64 v192, 0x80000000, v192, s33
	s_mov_b32 s82, s78
	s_mov_b32 s83, s79
	.loc	1 1165 38                       ; ragged.py:1165:38
	s_clause 0xf
	buffer_load_u8 v161, v161, s[76:79], 0 offen
	buffer_load_u8 v165, v165, s[76:79], 0 offen
	buffer_load_u8 v169, v169, s[76:79], 0 offen
	buffer_load_u8 v173, v173, s[76:79], 0 offen
	buffer_load_u8 v162, v162, s[76:79], 0 offen
	buffer_load_u8 v166, v166, s[76:79], 0 offen
	buffer_load_u8 v170, v170, s[76:79], 0 offen
	buffer_load_u8 v174, v174, s[76:79], 0 offen
	buffer_load_u8 v163, v163, s[76:79], 0 offen
	buffer_load_u8 v167, v167, s[76:79], 0 offen
	buffer_load_u8 v171, v171, s[76:79], 0 offen
	buffer_load_u8 v175, v175, s[76:79], 0 offen
	buffer_load_u8 v164, v164, s[76:79], 0 offen
	buffer_load_u8 v168, v168, s[76:79], 0 offen
	buffer_load_u8 v172, v172, s[76:79], 0 offen
	buffer_load_u8 v176, v176, s[76:79], 0 offen
	.loc	1 1166 38                       ; ragged.py:1166:38
	s_clause 0xf
	buffer_load_u8 v177, v177, s[80:83], 0 offen
	buffer_load_u8 v181, v181, s[80:83], 0 offen
	buffer_load_u8 v185, v185, s[80:83], 0 offen
	buffer_load_u8 v189, v189, s[80:83], 0 offen
	buffer_load_u8 v178, v178, s[80:83], 0 offen
	buffer_load_u8 v182, v182, s[80:83], 0 offen
	buffer_load_u8 v186, v186, s[80:83], 0 offen
	buffer_load_u8 v190, v190, s[80:83], 0 offen
	buffer_load_u8 v179, v179, s[80:83], 0 offen
	buffer_load_u8 v183, v183, s[80:83], 0 offen
	buffer_load_u8 v187, v187, s[80:83], 0 offen
	buffer_load_u8 v191, v191, s[80:83], 0 offen
	buffer_load_u8 v180, v180, s[80:83], 0 offen
	buffer_load_u8 v184, v184, s[80:83], 0 offen
	buffer_load_u8 v188, v188, s[80:83], 0 offen
	buffer_load_u8 v192, v192, s[80:83], 0 offen
	.loc	1 1165 38                       ; ragged.py:1165:38
	v_add_nc_u32_e32 v193, 0, v0
	v_add_nc_u32_e32 v197, 0, v122
	.loc	1 1166 38                       ; ragged.py:1166:38
	v_add_nc_u32_e32 v201, 0, v125
	.loc	1 1165 38                       ; ragged.py:1165:38
	v_add_nc_u32_e32 v198, 0, v127
	v_add_nc_u32_e32 v199, 0, v128
	v_add_nc_u32_e32 v200, 0, v130
	v_add_nc_u32_e32 v195, 0, v124
	v_add_nc_u32_e32 v196, 0, v126
	.loc	1 1166 38                       ; ragged.py:1166:38
	v_add_nc_u32_e32 v202, 0, v131
	.loc	1 1165 38                       ; ragged.py:1165:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1177 25                       ; ragged.py:1177:25
	s_add_i32 s3, s3, 32
	.loc	1 1165 38                       ; ragged.py:1165:38
	s_waitcnt vmcnt(31)
	ds_store_b8 v193, v161
	s_waitcnt vmcnt(30)
	ds_store_b8 v193, v165 offset:512
	s_waitcnt vmcnt(29)
	ds_store_b8 v193, v169 offset:1024
	s_waitcnt vmcnt(28)
	ds_store_b8 v193, v173 offset:1536
	s_waitcnt vmcnt(27)
	ds_store_b8 v194, v162
	s_waitcnt vmcnt(26)
	ds_store_b8 v194, v166 offset:512
	s_waitcnt vmcnt(25)
	ds_store_b8 v194, v170 offset:1024
	s_waitcnt vmcnt(24)
	ds_store_b8 v194, v174 offset:1536
	s_waitcnt vmcnt(23)
	ds_store_b8 v195, v163
	s_waitcnt vmcnt(22)
	ds_store_b8 v195, v167 offset:512
	s_waitcnt vmcnt(21)
	ds_store_b8 v195, v171 offset:1024
	s_waitcnt vmcnt(20)
	ds_store_b8 v195, v175 offset:1536
	s_waitcnt vmcnt(19)
	ds_store_b8 v196, v164
	s_waitcnt vmcnt(18)
	ds_store_b8 v196, v168 offset:512
	s_waitcnt vmcnt(17)
	ds_store_b8 v196, v172 offset:1024
	s_waitcnt vmcnt(16)
	ds_store_b8 v196, v176 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[161:164], v197 offset1:2
	ds_load_2addr_stride64_b64 v[165:168], v198 offset1:2
	ds_load_2addr_stride64_b64 v[169:172], v199 offset1:2
	ds_load_2addr_stride64_b64 v[173:176], v200 offset1:2
	.loc	1 1166 38                       ; ragged.py:1166:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b8 v193, v177
	s_waitcnt vmcnt(14)
	ds_store_b8 v193, v181 offset:512
	s_waitcnt vmcnt(13)
	ds_store_b8 v193, v185 offset:1024
	s_waitcnt vmcnt(12)
	ds_store_b8 v193, v189 offset:1536
	s_waitcnt vmcnt(11)
	ds_store_b8 v194, v178
	s_waitcnt vmcnt(10)
	ds_store_b8 v194, v182 offset:512
	s_waitcnt vmcnt(9)
	ds_store_b8 v194, v186 offset:1024
	s_waitcnt vmcnt(8)
	ds_store_b8 v194, v190 offset:1536
	s_waitcnt vmcnt(7)
	ds_store_b8 v195, v179
	s_waitcnt vmcnt(6)
	ds_store_b8 v195, v183 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v195, v187 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v195, v191 offset:1536
	s_waitcnt vmcnt(3)
	ds_store_b8 v196, v180
	s_waitcnt vmcnt(2)
	ds_store_b8 v196, v184 offset:512
	s_waitcnt vmcnt(1)
	ds_store_b8 v196, v188 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v196, v192 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[177:180], v201 offset1:2
	ds_load_2addr_stride64_b64 v[181:184], v202 offset1:2
	v_add_nc_u32_e32 v185, 0, v133
	v_add_nc_u32_e32 v189, 0, v135
	ds_load_2addr_stride64_b64 v[185:188], v185 offset1:2
	ds_load_2addr_stride64_b64 v[189:192], v189 offset1:2
	.loc	1 1155 27                       ; ragged.py:1155:27
	s_cmp_lt_i32 s3, s52
	.loc	1 1167 35                       ; ragged.py:1167:35
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[177:178], v[161:162], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[179:180], v[161:162], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[177:178], v[163:164], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[179:180], v[163:164], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[181:182], v[165:166], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[183:184], v[165:166], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[181:182], v[167:168], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[183:184], v[167:168], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[185:186], v[169:170], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[187:188], v[169:170], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[185:186], v[171:172], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[187:188], v[171:172], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[189:190], v[173:174], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[191:192], v[173:174], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[189:190], v[175:176], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[191:192], v[175:176], v[1:8] neg_lo:[1,1,0]
	.loc	1 1155 27                       ; ragged.py:1155:27
	s_cbranch_scc1 .LBB0_8
.LBB0_9:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1146 25                       ; ragged.py:1146:25
	s_sub_i32 s52, s74, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1144 42                       ; ragged.py:1144:42
	s_min_i32 s52, s52, 32
	.loc	1 1178 24                       ; ragged.py:1178:24
	s_cmp_ge_i32 s3, s52
	.loc	1 1178 21 is_stmt 0             ; ragged.py:1178:21
	s_cbranch_scc1 .LBB0_5
; %bb.10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1179 30 is_stmt 1             ; ragged.py:1179:30
	s_add_i32 s71, s3, s2
	.loc	1 1191 38                       ; ragged.py:1191:38
	s_mov_b32 s82, s78
	.loc	1 1179 30                       ; ragged.py:1179:30
	v_or_b32_e32 v161, s71, v33
	.loc	1 1191 46                       ; ragged.py:1191:46
	s_add_i32 s71, s71, s93
	.loc	1 1191 38 is_stmt 0             ; ragged.py:1191:38
	s_mov_b32 s83, s79
	v_add_nc_u32_e32 v185, s71, v109
	v_add_nc_u32_e32 v186, s71, v110
	.loc	1 1188 35 is_stmt 1             ; ragged.py:1188:35
	v_subrev_nc_u32_e32 v162, s2, v161
	.loc	1 1189 60                       ; ragged.py:1189:60
	v_cmp_eq_u32_e64 s3, s94, v161
	v_add_nc_u32_e32 v163, v161, v137
	v_add_nc_u32_e32 v164, v161, v138
	v_add_nc_u32_e32 v165, v161, v139
	.loc	1 1188 34                       ; ragged.py:1188:34
	v_cmp_gt_i32_e64 s2, s52, v162
	v_add_nc_u32_e32 v162, v161, v136
	v_add_nc_u32_e32 v166, v161, v140
	v_add_nc_u32_e32 v167, v161, v141
	v_add_nc_u32_e32 v168, v161, v142
	v_add_nc_u32_e32 v169, v161, v143
	v_add_nc_u32_e32 v170, v161, v144
	v_add_nc_u32_e32 v171, v161, v145
	v_add_nc_u32_e32 v172, v161, v146
	v_add_nc_u32_e32 v173, v161, v148
	v_add_nc_u32_e32 v174, v161, v149
	v_add_nc_u32_e32 v175, v161, v151
	v_add_nc_u32_e32 v176, v161, v153
	v_add_nc_u32_e32 v161, v161, v155
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s70, s3, s67
	.loc	1 1190 70                       ; ragged.py:1190:70
	s_and_b32 s3, vcc_lo, s2
	s_and_b32 s66, s16, s2
	.loc	1 1190 38 is_stmt 0             ; ragged.py:1190:38
	v_cndmask_b32_e64 v162, 0x80000000, v162, s3
	v_cndmask_b32_e64 v161, 0x80000000, v161, s66
	.loc	1 1190 70                       ; ragged.py:1190:70
	s_and_b32 s52, s0, s2
	s_and_b32 s53, s1, s2
	s_and_b32 s54, s4, s2
	.loc	1 1190 38                       ; ragged.py:1190:38
	s_clause 0x1
	buffer_load_u8 v177, v162, s[76:79], 0 offen
	buffer_load_u8 v184, v161, s[76:79], 0 offen
	v_cndmask_b32_e64 v162, 0x80000000, v163, s52
	.loc	1 1190 70                       ; ragged.py:1190:70
	s_and_b32 s55, s5, s2
	s_and_b32 s56, s6, s2
	s_and_b32 s57, s7, s2
	s_and_b32 s58, s8, s2
	.loc	1 1190 38                       ; ragged.py:1190:38
	buffer_load_u8 v178, v162, s[76:79], 0 offen
	v_cndmask_b32_e64 v162, 0x80000000, v164, s53
	.loc	1 1190 70                       ; ragged.py:1190:70
	s_and_b32 s59, s9, s2
	s_and_b32 s60, s10, s2
	s_and_b32 s61, s11, s2
	s_and_b32 s62, s12, s2
	.loc	1 1190 38                       ; ragged.py:1190:38
	buffer_load_u8 v179, v162, s[76:79], 0 offen
	v_cndmask_b32_e64 v162, 0x80000000, v165, s54
	.loc	1 1190 70                       ; ragged.py:1190:70
	s_and_b32 s63, s13, s2
	s_and_b32 s64, s14, s2
	s_and_b32 s65, s15, s2
	v_add_nc_u32_e32 v161, s71, v100
	.loc	1 1190 38                       ; ragged.py:1190:38
	buffer_load_u8 v180, v162, s[76:79], 0 offen
	v_cndmask_b32_e64 v162, 0x80000000, v166, s55
	.loc	1 1191 70 is_stmt 1             ; ragged.py:1191:70
	s_and_b32 s3, s17, s2
	s_and_b32 s52, s18, s2
	.loc	1 1191 38 is_stmt 0             ; ragged.py:1191:38
	v_cndmask_b32_e64 v161, 0x80000000, v161, s3
	v_add_nc_u32_e32 v163, s71, v102
	.loc	1 1190 38 is_stmt 1             ; ragged.py:1190:38
	buffer_load_u8 v181, v162, s[76:79], 0 offen
	v_cndmask_b32_e64 v162, 0x80000000, v167, s56
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s53, s19, s2
	.loc	1 1191 38 is_stmt 0             ; ragged.py:1191:38
	buffer_load_u8 v193, v161, s[80:83], 0 offen
	v_add_nc_u32_e32 v164, s71, v104
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s54, s20, s2
	.loc	1 1190 38 is_stmt 1             ; ragged.py:1190:38
	buffer_load_u8 v182, v162, s[76:79], 0 offen
	v_cndmask_b32_e64 v162, 0x80000000, v168, s57
	v_add_nc_u32_e32 v165, s71, v105
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s55, s21, s2
	v_add_nc_u32_e32 v166, s71, v106
	s_and_b32 s56, s22, s2
	.loc	1 1190 38                       ; ragged.py:1190:38
	buffer_load_u8 v183, v162, s[76:79], 0 offen
	v_cndmask_b32_e64 v162, 0x80000000, v169, s58
	v_add_nc_u32_e32 v167, s71, v107
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s57, s23, s2
	v_add_nc_u32_e32 v168, s71, v108
	s_and_b32 s58, s24, s2
	.loc	1 1190 38                       ; ragged.py:1190:38
	buffer_load_u8 v169, v162, s[76:79], 0 offen
	v_cndmask_b32_e64 v162, 0x80000000, v170, s59
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s59, s25, s2
	v_add_nc_u32_e32 v187, s71, v111
	v_add_nc_u32_e32 v188, s71, v113
	v_add_nc_u32_e32 v189, s71, v115
	.loc	1 1190 38                       ; ragged.py:1190:38
	buffer_load_u8 v170, v162, s[76:79], 0 offen
	v_cndmask_b32_e64 v162, 0x80000000, v171, s60
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s60, s26, s2
	v_add_nc_u32_e32 v190, s71, v116
	v_add_nc_u32_e32 v191, s71, v117
	v_add_nc_u32_e32 v192, s71, v118
	.loc	1 1190 38                       ; ragged.py:1190:38
	buffer_load_u8 v171, v162, s[76:79], 0 offen
	v_cndmask_b32_e64 v162, 0x80000000, v172, s61
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s61, s27, s2
	.loc	1 1190 38                       ; ragged.py:1190:38
	buffer_load_u8 v172, v162, s[76:79], 0 offen
	v_cndmask_b32_e64 v162, 0x80000000, v173, s62
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s62, s28, s2
	.loc	1 1190 38                       ; ragged.py:1190:38
	buffer_load_u8 v173, v162, s[76:79], 0 offen
	v_cndmask_b32_e64 v162, 0x80000000, v174, s63
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s63, s29, s2
	.loc	1 1190 38                       ; ragged.py:1190:38
	buffer_load_u8 v174, v162, s[76:79], 0 offen
	v_cndmask_b32_e64 v162, 0x80000000, v175, s64
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s64, s30, s2
	.loc	1 1190 38                       ; ragged.py:1190:38
	buffer_load_u8 v175, v162, s[76:79], 0 offen
	v_cndmask_b32_e64 v162, 0x80000000, v176, s65
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s65, s31, s2
	s_and_b32 s2, s33, s2
	.loc	1 1190 38                       ; ragged.py:1190:38
	buffer_load_u8 v176, v162, s[76:79], 0 offen
	v_add_nc_u32_e32 v162, s71, v101
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v161, 0x80000000, v162, s52
	buffer_load_u8 v194, v161, s[80:83], 0 offen
	v_cndmask_b32_e64 v161, 0x80000000, v163, s53
	buffer_load_u8 v195, v161, s[80:83], 0 offen
	v_cndmask_b32_e64 v161, 0x80000000, v164, s54
	buffer_load_u8 v196, v161, s[80:83], 0 offen
	v_cndmask_b32_e64 v161, 0x80000000, v165, s55
	buffer_load_u8 v197, v161, s[80:83], 0 offen
	v_cndmask_b32_e64 v161, 0x80000000, v166, s56
	buffer_load_u8 v198, v161, s[80:83], 0 offen
	v_cndmask_b32_e64 v161, 0x80000000, v167, s57
	buffer_load_u8 v199, v161, s[80:83], 0 offen
	v_cndmask_b32_e64 v161, 0x80000000, v168, s58
	buffer_load_u8 v200, v161, s[80:83], 0 offen
	v_cndmask_b32_e64 v161, 0x80000000, v185, s59
	buffer_load_u8 v185, v161, s[80:83], 0 offen
	v_cndmask_b32_e64 v161, 0x80000000, v186, s60
	buffer_load_u8 v186, v161, s[80:83], 0 offen
	v_cndmask_b32_e64 v161, 0x80000000, v187, s61
	buffer_load_u8 v187, v161, s[80:83], 0 offen
	v_cndmask_b32_e64 v161, 0x80000000, v188, s62
	buffer_load_u8 v188, v161, s[80:83], 0 offen
	v_cndmask_b32_e64 v161, 0x80000000, v189, s63
	buffer_load_u8 v189, v161, s[80:83], 0 offen
	v_cndmask_b32_e64 v161, 0x80000000, v190, s64
	buffer_load_u8 v190, v161, s[80:83], 0 offen
	v_cndmask_b32_e64 v161, 0x80000000, v191, s65
	buffer_load_u8 v191, v161, s[80:83], 0 offen
	v_cndmask_b32_e64 v161, 0x80000000, v192, s2
	buffer_load_u8 v192, v161, s[80:83], 0 offen
	.loc	1 1192 38                       ; ragged.py:1192:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1192 66 is_stmt 0             ; ragged.py:1192:66
	s_waitcnt vmcnt(31)
	v_and_b16 v161.l, v177.l, 15
	s_waitcnt vmcnt(30)
	v_and_b16 v168.h, v184.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v161.l, v177.l, v161.l, s70
	v_cndmask_b16 v168.h, v184.l, v168.h, s70
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(29)
	v_and_b16 v161.h, v178.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v161.h, v178.l, v161.h, s70
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(28)
	v_and_b16 v162.l, v179.l, 15
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v162.l, v179.l, v162.l, s70
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(27)
	v_and_b16 v162.h, v180.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v162.h, v180.l, v162.h, s70
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(26)
	v_and_b16 v163.l, v181.l, 15
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v163.l, v181.l, v163.l, s70
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(24)
	v_and_b16 v163.h, v182.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v163.h, v182.l, v163.h, s70
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(23)
	v_and_b16 v164.l, v183.l, 15
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v164.l, v183.l, v164.l, s70
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(22)
	v_and_b16 v164.h, v169.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v164.h, v169.l, v164.h, s70
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(21)
	v_and_b16 v165.l, v170.l, 15
	.loc	1 1193 66 is_stmt 1             ; ragged.py:1193:66
	v_and_b16 v169.l, v193.l, 15
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v165.l, v170.l, v165.l, s70
	.loc	1 1192 66 is_stmt 0             ; ragged.py:1192:66
	s_waitcnt vmcnt(20)
	v_and_b16 v165.h, v171.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1193 38 is_stmt 1             ; ragged.py:1193:38
	v_cndmask_b16 v177.l, v193.l, v169.l, s70
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v165.h, v171.l, v165.h, s70
	.loc	1 1192 66 is_stmt 0             ; ragged.py:1192:66
	s_waitcnt vmcnt(19)
	v_and_b16 v166.l, v172.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v166.l, v172.l, v166.l, s70
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(18)
	v_and_b16 v166.h, v173.l, 15
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v166.h, v173.l, v166.h, s70
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(17)
	v_and_b16 v167.l, v174.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v167.l, v174.l, v167.l, s70
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(16)
	v_and_b16 v167.h, v175.l, 15
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v167.h, v175.l, v167.h, s70
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(15)
	v_and_b16 v168.l, v176.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v168.l, v176.l, v168.l, s70
	.loc	1 1193 66 is_stmt 1             ; ragged.py:1193:66
	s_waitcnt vmcnt(14)
	v_and_b16 v169.h, v194.l, 15
	.loc	1 1193 38 is_stmt 0             ; ragged.py:1193:38
	v_cndmask_b16 v177.h, v194.l, v169.h, s70
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(13)
	v_and_b16 v170.l, v195.l, 15
	.loc	1 1192 38 is_stmt 1             ; ragged.py:1192:38
	v_add_nc_u32_e32 v169, 0, v128
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v178.l, v195.l, v170.l, s70
	.loc	1 1193 66 is_stmt 0             ; ragged.py:1193:66
	s_waitcnt vmcnt(12)
	v_and_b16 v170.h, v196.l, 15
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v178.h, v196.l, v170.h, s70
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(11)
	v_and_b16 v171.l, v197.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v179.l, v197.l, v171.l, s70
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(10)
	v_and_b16 v171.h, v198.l, 15
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v179.h, v198.l, v171.h, s70
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(9)
	v_and_b16 v172.l, v199.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v180.l, v199.l, v172.l, s70
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(8)
	v_and_b16 v172.h, v200.l, 15
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v180.h, v200.l, v172.h, s70
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(7)
	v_and_b16 v173.l, v185.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v181.l, v185.l, v173.l, s70
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(6)
	v_and_b16 v173.h, v186.l, 15
	.loc	1 1192 38 is_stmt 1             ; ragged.py:1192:38
	v_add_nc_u32_e32 v185, 0, v0
	ds_store_b8 v185, v161
	ds_store_b8 v185, v163 offset:512
	ds_store_b8 v185, v165 offset:1024
	ds_store_b8 v185, v167 offset:1536
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(5)
	v_and_b16 v174.l, v187.l, 15
	.loc	1 1193 38 is_stmt 0             ; ragged.py:1193:38
	v_cndmask_b16 v181.h, v186.l, v173.h, s70
	.loc	1 1192 38 is_stmt 1             ; ragged.py:1192:38
	v_add_nc_u32_e32 v186, 0, v123
	ds_store_b8_d16_hi v186, v161
	ds_store_b8_d16_hi v186, v163 offset:512
	ds_store_b8_d16_hi v186, v165 offset:1024
	ds_store_b8_d16_hi v186, v167 offset:1536
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(4)
	v_and_b16 v174.h, v188.l, 15
	.loc	1 1193 38 is_stmt 0             ; ragged.py:1193:38
	v_cndmask_b16 v182.l, v187.l, v174.l, s70
	.loc	1 1192 38 is_stmt 1             ; ragged.py:1192:38
	v_add_nc_u32_e32 v187, 0, v124
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(3)
	v_and_b16 v175.l, v189.l, 15
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_add_nc_u32_e32 v161, 0, v122
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v182.h, v188.l, v174.h, s70
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_add_nc_u32_e32 v188, 0, v126
	v_add_nc_u32_e32 v165, 0, v127
	v_add_nc_u32_e32 v173, 0, v130
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(2)
	v_and_b16 v175.h, v190.l, 15
	.loc	1 1193 38 is_stmt 0             ; ragged.py:1193:38
	v_cndmask_b16 v183.l, v189.l, v175.l, s70
	.loc	1 1192 38 is_stmt 1             ; ragged.py:1192:38
	ds_store_b8 v187, v162
	ds_store_b8 v187, v164 offset:512
	ds_store_b8 v187, v166 offset:1024
	ds_store_b8 v187, v168 offset:1536
	ds_store_b8_d16_hi v188, v162
	ds_store_b8_d16_hi v188, v164 offset:512
	ds_store_b8_d16_hi v188, v166 offset:1024
	ds_store_b8_d16_hi v188, v168 offset:1536
	s_waitcnt lgkmcnt(0)
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v183.h, v190.l, v175.h, s70
	.loc	1 1193 66 is_stmt 0             ; ragged.py:1193:66
	s_waitcnt vmcnt(1)
	v_and_b16 v176.l, v191.l, 15
	.loc	1 1192 38 is_stmt 1             ; ragged.py:1192:38
	s_barrier
	ds_load_2addr_stride64_b64 v[161:164], v161 offset1:2
	ds_load_2addr_stride64_b64 v[165:168], v165 offset1:2
	ds_load_2addr_stride64_b64 v[169:172], v169 offset1:2
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v184.l, v191.l, v176.l, s70
	.loc	1 1193 66 is_stmt 0             ; ragged.py:1193:66
	s_waitcnt vmcnt(0)
	v_and_b16 v176.h, v192.l, 15
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_add_nc_u32_e32 v189, 0, v135
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b16 v184.h, v192.l, v176.h, s70
	.loc	1 1192 38 is_stmt 1             ; ragged.py:1192:38
	ds_load_2addr_stride64_b64 v[173:176], v173 offset1:2
	.loc	1 1193 38                       ; ragged.py:1193:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v185, v177
	ds_store_b8 v185, v179 offset:512
	ds_store_b8 v185, v181 offset:1024
	ds_store_b8 v185, v183 offset:1536
	ds_store_b8_d16_hi v186, v177
	ds_store_b8_d16_hi v186, v179 offset:512
	ds_store_b8_d16_hi v186, v181 offset:1024
	ds_store_b8_d16_hi v186, v183 offset:1536
	ds_store_b8 v187, v178
	ds_store_b8 v187, v180 offset:512
	ds_store_b8 v187, v182 offset:1024
	ds_store_b8 v187, v184 offset:1536
	ds_store_b8_d16_hi v188, v178
	ds_store_b8_d16_hi v188, v180 offset:512
	ds_store_b8_d16_hi v188, v182 offset:1024
	ds_store_b8_d16_hi v188, v184 offset:1536
	v_add_nc_u32_e32 v177, 0, v125
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v181, 0, v131
	v_add_nc_u32_e32 v185, 0, v133
	ds_load_2addr_stride64_b64 v[177:180], v177 offset1:2
	ds_load_2addr_stride64_b64 v[189:192], v189 offset1:2
	ds_load_2addr_stride64_b64 v[181:184], v181 offset1:2
	ds_load_2addr_stride64_b64 v[185:188], v185 offset1:2
	.loc	1 1194 35                       ; ragged.py:1194:35
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[177:178], v[161:162], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[179:180], v[161:162], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[177:178], v[163:164], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[179:180], v[163:164], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[181:182], v[165:166], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[183:184], v[165:166], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[181:182], v[167:168], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[183:184], v[167:168], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[185:186], v[169:170], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[187:188], v[169:170], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[185:186], v[171:172], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[187:188], v[171:172], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[189:190], v[173:174], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[191:192], v[173:174], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[189:190], v[175:176], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[191:192], v[175:176], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_5
.LBB0_11:                               ; %._crit_edge39
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_mul_i32 s2, s89, s75
	.loc	1 1239 17 is_stmt 0             ; ragged.py:1239:17
	v_bfe_u32 v22, v156, 16, 1
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_add_i32 s18, s2, s88
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cmp_o_f32_e64 s2, v160, v160
	.loc	1 1003 36 is_stmt 1             ; ragged.py:1003:36
	v_and_b32_e32 v14, 24, v1
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v23, v154, 16, 1
	v_add3_u32 v22, v156, v22, 0x7fff
	v_cmp_o_f32_e64 s3, v156, v156
	v_cmp_o_f32_e64 s17, v154, v154
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v5, 39, v14
	v_or_b32_e32 v10, 34, v14
	v_or_b32_e32 v9, 35, v14
	v_or_b32_e32 v6, 38, v14
	v_or_b32_e32 v11, 33, v14
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v1, s88, v5
	v_or_b32_e32 v16, s88, v10
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v7, 37, v14
	v_or_b32_e32 v8, 36, v14
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v13, s88, v9
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v12, 32, v14
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v2, s88, v6
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s75, v1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v1, s88, v11
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s6, s75, v16
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v16, 5, v14
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v3, s88, v7
	v_or_b32_e32 v4, s88, v8
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s5, s75, v13
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v13, 7, v14
	v_or_b32_e32 v15, 6, v14
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s0, s75, v2
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v2, s88, v12
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s7, s75, v1
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v17, 4, v14
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v1, s88, v16
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v19, 2, v14
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s75, v3
	v_cmp_gt_i32_e64 s4, s75, v4
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v3, s88, v13
	v_or_b32_e32 v4, s88, v15
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v18, 3, v14
	v_or_b32_e32 v20, 1, v14
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s8, s75, v2
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v2, s88, v17
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s11, s75, v1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v1, s88, v19
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s9, s75, v3
	v_cmp_gt_i32_e64 s10, s75, v4
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v3, s88, v18
	v_or_b32_e32 v4, s88, v20
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s12, s75, v2
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v2, s88, v14
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s14, s75, v1
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v1, v160, 16, 1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s13, s75, v3
	v_cmp_gt_i32_e64 s15, s75, v4
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_mad_u64_u32 v[3:4], null, s75, v68, s[18:19]
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s16, s75, v2
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add3_u32 v4, v160, v1, 0x7fff
	.loc	1 1239 26 is_stmt 0             ; ragged.py:1239:26
	v_mad_u64_u32 v[1:2], null, s75, v67, s[18:19]
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v2, v158, 16, 1
	v_add3_u32 v23, v154, v23, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s2
	v_cmp_o_f32_e64 s2, v158, v158
	v_bfe_u32 v24, v150, 16, 1
	v_add3_u32 v2, v158, v2, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s3
	v_cndmask_b16 v22.h, 0x7fff, v23.h, s17
	v_bfe_u32 v23, v147, 16, 1
	v_add3_u32 v24, v150, v24, 0x7fff
	v_cndmask_b16 v4.h, 0x7fff, v2.h, s2
	v_bfe_u32 v2, v152, 16, 1
	v_cmp_o_f32_e64 s2, v152, v152
	v_cmp_o_f32_e64 s3, v150, v150
	v_bfe_u32 v25, v134, 16, 1
	v_add3_u32 v23, v147, v23, 0x7fff
	v_add3_u32 v2, v152, v2, 0x7fff
	v_cmp_o_f32_e64 s17, v147, v147
	v_bfe_u32 v26, v129, 16, 1
	v_add3_u32 v25, v134, v25, 0x7fff
	v_bfe_u32 v27, v120, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s2
	v_cndmask_b16 v2.h, 0x7fff, v24.h, s3
	v_bfe_u32 v24, v132, 16, 1
	v_cmp_o_f32_e64 s2, v134, v134
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s17
	v_cmp_o_f32_e64 s3, v132, v132
	v_add3_u32 v26, v129, v26, 0x7fff
	v_add3_u32 v24, v132, v24, 0x7fff
	v_cmp_o_f32_e64 s17, v129, v129
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s2
	v_bfe_u32 v25, v121, 16, 1
	v_mov_b16_e32 v21.h, 0
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s3
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s17
	v_bfe_u32 v26, v119, 16, 1
	v_add3_u32 v25, v121, v25, 0x7fff
	v_cmp_o_f32_e64 s2, v121, v121
	v_add3_u32 v27, v120, v27, 0x7fff
	v_cmp_o_f32_e64 s3, v120, v120
	v_bfe_u32 v28, v114, 16, 1
	v_bfe_u32 v29, v112, 16, 1
	v_add3_u32 v26, v119, v26, 0x7fff
	v_cmp_o_f32_e64 s17, v119, v119
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s2
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s3
	v_add3_u32 v27, v114, v28, 0x7fff
	v_cmp_o_f32_e64 s2, v114, v114
	v_add3_u32 v28, v112, v29, 0x7fff
	v_mov_b16_e32 v29.l, v98.h
	v_mov_b16_e32 v29.h, v21.h
	v_mov_b16_e32 v21.l, v99.h
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s17
	v_bfe_u32 v30, v103, 16, 1
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s2
	v_and_b32_e32 v27, 1, v29
	v_and_b32_e32 v29, 1, v21
	v_mov_b16_e32 v21.l, v97.h
	v_cmp_o_f32_e64 s3, v112, v112
	v_add3_u32 v30, v103, v30, 0x7fff
	v_cmp_o_f32_e64 s2, v103, v103
	v_add3_u32 v27, v98, v27, 0x7fff
	v_cmp_o_f32_e64 s17, v98, v98
	v_mov_b16_e32 v31.l, v96.h
	v_mov_b16_e32 v31.h, v21.h
	v_and_b32_e32 v32, 1, v21
	v_add3_u32 v29, v99, v29, 0x7fff
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s3
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s2
	v_cndmask_b16 v29.l, 0x7fff, v27.h, s17
	v_and_b32_e32 v27, 1, v31
	v_add3_u32 v30, v97, v32, 0x7fff
	v_cmp_o_f32_e64 s2, v97, v97
	v_mov_b16_e32 v21.l, v95.h
	v_mov_b16_e32 v31.l, v94.h
	v_add3_u32 v27, v96, v27, 0x7fff
	v_mov_b16_e32 v33.l, v92.h
	v_cndmask_b16 v30.h, 0x7fff, v30.h, s2
	v_cmp_o_f32_e64 s2, v96, v96
	v_and_b32_e32 v32, 1, v21
	v_and_b32_e32 v31, 1, v31
	v_mov_b16_e32 v33.h, v21.h
	v_mov_b16_e32 v21.l, v93.h
	v_cndmask_b16 v30.l, 0x7fff, v27.h, s2
	v_cmp_o_f32_e64 s2, v94, v94
	v_add3_u32 v31, v94, v31, 0x7fff
	v_and_b32_e32 v27, 1, v33
	v_and_b32_e32 v33, 1, v21
	v_mov_b16_e32 v21.l, v85.h
	v_add3_u32 v32, v95, v32, 0x7fff
	v_cmp_o_f32_e64 s3, v99, v99
	v_add3_u32 v27, v92, v27, 0x7fff
	v_cmp_o_f32_e64 s17, v92, v92
	v_mov_b16_e32 v34.l, v77.h
	v_mov_b16_e32 v34.h, v21.h
	v_cndmask_b16 v32.l, 0x7fff, v31.h, s2
	v_and_b32_e32 v31, 1, v21
	v_mov_b16_e32 v21.l, v74.h
	v_add3_u32 v33, v93, v33, 0x7fff
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s3
	v_cmp_o_f32_e64 s3, v95, v95
	v_cndmask_b16 v33.l, 0x7fff, v27.h, s17
	v_and_b32_e32 v27, 1, v34
	v_add3_u32 v31, v85, v31, 0x7fff
	v_cmp_o_f32_e64 s2, v85, v85
	v_mov_b16_e32 v34.l, v72.h
	v_and_b32_e32 v35, 1, v21
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s3
	v_cmp_o_f32_e64 s3, v93, v93
	v_cndmask_b16 v31.h, 0x7fff, v31.h, s2
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v35, v74, v35, 0x7fff
	v_cmp_o_f32_e64 s2, v74, v74
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s3
	v_add3_u32 v27, v77, v27, 0x7fff
	v_cmp_o_f32_e64 s3, v77, v77
	v_add3_u32 v34, v72, v34, 0x7fff
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s2
	v_mov_b16_e32 v21.l, v71.h
	v_cmp_o_f32_e64 s2, v72, v72
	v_mov_b16_e32 v36.l, v69.h
	v_mov_b16_e32 v36.h, v21.h
	v_cndmask_b16 v31.l, 0x7fff, v27.h, s3
	v_mov_b16_e32 v27.l, v70.h
	v_mov_b16_e32 v27.h, v21.h
	v_and_b32_e32 v37, 1, v21
	v_mov_b16_e32 v21.l, v66.h
	v_cndmask_b16 v35.l, 0x7fff, v34.h, s2
	v_and_b32_e32 v34, 1, v36
	v_and_b32_e32 v27, 1, v27
	v_add3_u32 v36, v71, v37, 0x7fff
	v_and_b32_e32 v37, 1, v21
	v_cmp_o_f32_e64 s2, v71, v71
	v_add3_u32 v34, v69, v34, 0x7fff
	v_and_b32_e32 v0, 16, v0
	v_cmp_o_f32_e64 s18, v69, v69
	v_add3_u32 v27, v70, v27, 0x7fff
	v_cmp_o_f32_e64 s3, v70, v70
	v_add3_u32 v37, v66, v37, 0x7fff
	v_cmp_o_f32_e64 s17, v66, v66
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s2
	v_cmp_eq_u32_e64 s2, 0, v0
	v_cndmask_b16 v0.l, 0x7fff, v34.h, s18
	v_mov_b32_e32 v34, 0x5410
	v_cndmask_b16 v36.l, 0x7fff, v27.h, s3
	v_cndmask_b16 v0.h, 0x7fff, v37.h, s17
	v_cndmask_b32_e64 v27, v2, v4, s2
	v_cndmask_b32_e64 v2, v4, v2, s2
	v_cndmask_b32_e64 v4, v23, v22, s2
	v_cndmask_b32_e64 v22, v22, v23, s2
	v_cndmask_b32_e64 v23, v26, v24, s2
	v_cndmask_b32_e64 v24, v24, v26, s2
	v_cndmask_b32_e64 v26, v28, v25, s2
	v_mov_b32_e32 v37, 0x7632
	v_cndmask_b32_e64 v25, v25, v28, s2
	v_cndmask_b32_e64 v28, v32, v29, s2
	v_cndmask_b32_e64 v29, v29, v32, s2
	v_cndmask_b32_e64 v32, 0x1054, v34, s2
	v_cndmask_b32_e64 v34, 0x3276, v37, s2
	s_mov_b32 s3, 0x76543210
	v_cndmask_b32_e64 v37, v33, v30, s2
	v_cndmask_b32_e64 v30, v30, v33, s2
	v_lshl_or_b32 v32, v32, 8, v32
	v_lshl_or_b32 v34, v34, 8, v34
	v_cndmask_b32_e64 v33, v36, v31, s2
	v_cndmask_b32_e64 v31, v31, v36, s2
	v_permlanex16_b32 v2, v2, s3, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v32, 0x540054, v32
	v_and_b32_e32 v34, 0x760076, v34
	v_add_lshl_u32 v50, v3, v14, 1
	v_cndmask_b32_e64 v36, v0, v35, s2
	v_cndmask_b32_e64 v0, v35, v0, s2
	v_lshl_or_b32 v32, v32, 4, v32
	v_lshl_or_b32 v34, v34, 4, v34
	v_permlanex16_b32 v22, v22, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v24, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v25, s3, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v32, 0x5040504, v32
	v_permlanex16_b32 v29, v29, s3, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v34, 0x7060706, v34
	v_permlanex16_b32 v30, v30, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v31, s3, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v2, v27, v32
	v_add_lshl_u32 v51, v3, v20, 1
	.loc	1 1223 20 is_stmt 1             ; ragged.py:1223:20
	s_and_b32 s2, s51, s16
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v52, v3, v19, 1
	v_cndmask_b32_e64 v50, 0x80000000, v50, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s51, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_perm_b32 v2, v2, v27, v34
	v_perm_b32 v27, v22, v4, v32
	v_perm_b32 v4, v22, v4, v34
	v_perm_b32 v22, v24, v23, v32
	v_perm_b32 v23, v24, v23, v34
	v_perm_b32 v24, v25, v26, v32
	v_perm_b32 v25, v25, v26, v34
	v_perm_b32 v26, v29, v28, v32
	v_perm_b32 v28, v29, v28, v34
	v_perm_b32 v29, v30, v37, v32
	v_perm_b32 v30, v30, v37, v34
	v_perm_b32 v37, v31, v33, v32
	v_perm_b32 v31, v31, v33, v34
	v_mov_b16_e32 v33.l, v35.h
	v_mov_b16_e32 v33.h, v21.h
	s_waitcnt lgkmcnt(0)
	s_and_b32 s73, s73, 0xffff
	s_mov_b32 s75, 0x31027000
	s_mov_b32 s74, 0x7ffffffe
	v_cndmask_b32_e64 v51, 0x80000000, v51, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s51, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v35, v50, s[72:75], 0 offen
	v_cndmask_b32_e64 v50, 0x80000000, v52, s2
	v_add_lshl_u32 v35, v3, v18, 1
	buffer_store_b16 v33, v51, s[72:75], 0 offen
	v_add_lshl_u32 v33, v3, v17, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s51, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_permlanex16_b32 v0, v0, s3, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e32 v21.l, v2.h
	buffer_store_b16 v2, v50, s[72:75], 0 offen
	v_add_lshl_u32 v2, v3, v16, 1
	v_cndmask_b32_e64 v35, 0x80000000, v35, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s51, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_perm_b32 v32, v0, v36, v32
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s51, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_perm_b32 v0, v0, v36, v34
	v_mov_b16_e32 v36.l, v27.h
	v_mov_b16_e32 v36.h, v21.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_mov_b16_e32 v34.h, v21.h
	v_mov_b16_e32 v38.h, v21.h
	v_mov_b16_e32 v39.h, v21.h
	v_mov_b16_e32 v40.h, v21.h
	v_mov_b16_e32 v41.h, v21.h
	v_mov_b16_e32 v42.h, v21.h
	v_mov_b16_e32 v43.h, v21.h
	v_mov_b16_e32 v44.h, v21.h
	v_mov_b16_e32 v45.h, v21.h
	v_mov_b16_e32 v46.h, v21.h
	v_mov_b16_e32 v47.h, v21.h
	v_mov_b16_e32 v48.h, v21.h
	v_mov_b16_e32 v49.h, v21.h
	buffer_store_b16 v21, v35, s[72:75], 0 offen
	v_add_lshl_u32 v21, v3, v15, 1
	buffer_store_b16 v27, v33, s[72:75], 0 offen
	v_add_lshl_u32 v27, v3, v13, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s51, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v36, v2, s[72:75], 0 offen
	v_add_lshl_u32 v2, v3, v12, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s51, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v34.l, v4.h
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s51, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v4, v21, s[72:75], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_add_lshl_u32 v4, v3, v11, 1
	v_add_lshl_u32 v21, v3, v10, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s51, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b16 v34, v27, s[72:75], 0 offen
	buffer_store_b16 v22, v2, s[72:75], 0 offen
	v_add_lshl_u32 v2, v3, v9, 1
	v_mov_b16_e32 v39.l, v22.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s51, s6
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v38.l, v23.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s51, s5
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v39, v4, s[72:75], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_add_lshl_u32 v4, v3, v8, 1
	buffer_store_b16 v23, v21, s[72:75], 0 offen
	v_add_lshl_u32 v21, v3, v7, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s51, s4
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v38, v2, s[72:75], 0 offen
	v_add_lshl_u32 v2, v3, v6, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s51, s1
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v41.l, v24.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s51, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v3, v3, v5, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	buffer_store_b16 v24, v4, s[72:75], 0 offen
	v_add_lshl_u32 v4, v1, v14, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s51, vcc_lo
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b16 v41, v21, s[72:75], 0 offen
	buffer_store_b16 v25, v2, s[72:75], 0 offen
	v_add_lshl_u32 v2, v1, v20, 1
	v_mov_b16_e32 v40.l, v25.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s50, s16
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v43.l, v26.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s50, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v40, v3, s[72:75], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_add_lshl_u32 v3, v1, v19, 1
	buffer_store_b16 v26, v4, s[72:75], 0 offen
	v_add_lshl_u32 v4, v1, v18, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s50, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v43, v2, s[72:75], 0 offen
	v_add_lshl_u32 v2, v1, v17, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s50, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v42.l, v28.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s50, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v28, v3, s[72:75], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_add_lshl_u32 v3, v1, v16, 1
	buffer_store_b16 v42, v4, s[72:75], 0 offen
	v_add_lshl_u32 v4, v1, v15, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s50, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v29, v2, s[72:75], 0 offen
	v_add_lshl_u32 v2, v1, v13, 1
	v_mov_b16_e32 v45.l, v29.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s50, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v44.l, v30.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s50, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v45, v3, s[72:75], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_add_lshl_u32 v3, v1, v12, 1
	buffer_store_b16 v30, v4, s[72:75], 0 offen
	v_add_lshl_u32 v4, v1, v11, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s50, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v44, v2, s[72:75], 0 offen
	v_add_lshl_u32 v2, v1, v10, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s50, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v47.l, v37.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s50, s6
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v37, v3, s[72:75], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_add_lshl_u32 v3, v1, v9, 1
	buffer_store_b16 v47, v4, s[72:75], 0 offen
	v_add_lshl_u32 v4, v1, v8, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s50, s5
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v31, v2, s[72:75], 0 offen
	v_add_lshl_u32 v2, v1, v7, 1
	v_add_lshl_u32 v6, v1, v6, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s50, s4
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v1, v1, v5, 1
	v_mov_b16_e32 v46.l, v31.h
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s50, s1
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, s50, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v49.l, v32.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 vcc_lo, s50, vcc_lo
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v5, 0x80000000, v6, s0
	v_mov_b16_e32 v48.l, v0.h
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b16 v46, v3, s[72:75], 0 offen
	buffer_store_b16 v32, v4, s[72:75], 0 offen
	buffer_store_b16 v49, v2, s[72:75], 0 offen
	buffer_store_b16 v0, v5, s[72:75], 0 offen
	buffer_store_b16 v48, v1, s[72:75], 0 offen
	.loc	1 970 5                         ; ragged.py:970:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 203
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_vgpr, 203
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.numbered_sgpr, 97
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10800
; TotalNumSgprs: 99
; NumVgprs: 203
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 25
; NumSGPRsForWavesPerEU: 99
; NumVGPRsForWavesPerEU: 203
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     99
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     203
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
