	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 970 0                         ; ragged.py:970:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[54:55], s[0:1], 0x30
.Ltmp0:
	.loc	1 998 20 prologue_end           ; ragged.py:998:20
	s_abs_i32 s9, s2
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v2, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:995:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s54, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:996:21 ]
	s_add_i32 s5, s55, 63
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
	s_ashr_i32 s5, s5, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 997 27 is_stmt 1              ; ragged.py:997:27
	s_mul_i32 s4, s5, s4
	.loc	1 998 20                        ; ragged.py:998:20
	s_abs_i32 s6, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
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
	s_mul_i32 s10, s7, s6
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s7, 1
	s_sub_i32 s11, s9, s6
	s_cmp_ge_u32 s9, s6
	s_cselect_b32 s7, s10, s7
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s7, 1
	s_cmp_ge_u32 s9, s6
	s_cselect_b32 s6, s10, s7
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s9, s5
	.loc	1 998 20                        ; ragged.py:998:20
	s_xor_b32 s6, s6, s8
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_cvt_f32_u32 s7, s9
	.loc	1 998 20                        ; ragged.py:998:20
	s_sub_i32 s66, s6, s8
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s6, 0, s9
	.loc	1 999 22                        ; ragged.py:999:22
	s_mul_i32 s4, s66, s4
	.loc	1 1000 17                       ; ragged.py:1000:17
	v_rcp_iflag_f32_e32 v1, s7
	.loc	1 999 16                        ; ragged.py:999:16
	s_sub_i32 s2, s2, s4
	.loc	1 1125 43                       ; ragged.py:1125:43
	s_mul_i32 s69, s66, s54
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s8, s2
	s_xor_b32 s10, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	s_ashr_i32 s10, s10, 31
	v_readfirstlane_b32 s7, v1
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v1, 64, v0
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_lshrrev_b32_e32 v3, 2, v1
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v47, v3, v2
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_mul_i32 s6, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_mul_hi_u32 s4, s7, s6
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v46, 32, v47
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_add_i32 s4, s7, s4
	s_load_b64 s[6:7], s[0:1], 0x20
	s_mul_hi_u32 s4, s8, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s4, s9
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s4, 1
	s_sub_i32 s12, s8, s9
	s_cmp_ge_u32 s8, s9
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s8, s9
	s_cselect_b32 s4, s11, s4
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_ashr_i32 s67, s66, 31
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_xor_b32 s4, s4, s10
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_lshl_b64 s[8:9], s[66:67], 2
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s4, s4, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1001 24                       ; ragged.py:1001:24
	s_mul_i32 s5, s4, s5
	.loc	1 1003 18                       ; ragged.py:1003:18
	s_lshl_b32 s51, s4, 6
	.loc	1 1001 17                       ; ragged.py:1001:17
	s_sub_i32 s4, s2, s5
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s6, s8
	s_addc_u32 s7, s7, s9
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v3, s51, v47
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_load_b32 s68, s[6:7], 0x0
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v4, s51, v46
	s_mov_b32 s5, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s52, s54, v3
	v_cmp_gt_i32_e64 s2, s54, v4
	.loc	1 1008 27                       ; ragged.py:1008:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s68, s68, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cmp_gt_i32 s68, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge32_crit_edge
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_add_i32 s67, s51, s69
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s5, -1
                                        ; implicit-def: $sgpr67
.LBB0_3:                                ; %Flow194
	s_load_b64 s[64:65], s[0:1], 0x28
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v77, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s53, s4, 6
	s_cbranch_vccnz .LBB0_10
; %bb.4:                                ; %.preheader.lr.ph
	.loc	1 1003 36 is_stmt 1             ; ragged.py:1003:36
	v_lshrrev_b32_e32 v4, 5, v0
	s_clause 0x1
	s_load_b256 s[56:63], s[0:1], 0x0
	s_load_b64 s[72:73], s[0:1], 0x38
	v_dual_mov_b32 v77, 0 :: v_dual_and_b32 v16, 32, v0
	.loc	1 1118 23                       ; ragged.py:1118:23
	s_lshl_b32 s3, s3, 5
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v3, 4, v4
	v_or_b32_e32 v14, 44, v4
	v_or_b32_e32 v15, 48, v4
	v_or_b32_e32 v17, 52, v4
	v_or_b32_e32 v18, 56, v4
	.loc	1 1003 18 is_stmt 0             ; ragged.py:1003:18
	v_or_b32_e32 v23, s51, v3
	.loc	1 1004 18 is_stmt 1             ; ragged.py:1004:18
	v_or_b32_e32 v3, s53, v3
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v33, s51, v14
	v_or_b32_e32 v34, s51, v15
	v_or_b32_e32 v35, s51, v17
	v_mov_b32_e32 v78, 0
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s19, s55, v3
	.loc	1 1113 28                       ; ragged.py:1113:28
	v_and_b32_e32 v3, 31, v0
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s13, s54, v33
	v_cmp_gt_i32_e64 s14, s54, v34
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v19, 60, v4
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s15, s54, v35
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[33:34], null, s72, v4, v[3:4]
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v36, s51, v18
	v_or_b32_e32 v37, s51, v19
	.loc	1 1003 36 is_stmt 0             ; ragged.py:1003:36
	v_or_b32_e32 v10, 28, v4
	.loc	1 1004 18 is_stmt 1             ; ragged.py:1004:18
	v_or_b32_e32 v38, s53, v4
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v5, 8, v4
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s16, s54, v36
	v_mad_u64_u32 v[34:35], null, s72, 12, v[33:34]
	v_cmp_gt_i32_e64 s17, s54, v37
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v6, 12, v4
	v_or_b32_e32 v7, 16, v4
	v_or_b32_e32 v8, 20, v4
	v_or_b32_e32 v9, 24, v4
	v_or_b32_e32 v11, 32, v4
	v_mad_u64_u32 v[35:36], null, s72, 20, v[33:34]
	v_mad_u64_u32 v[36:37], null, s72, 24, v[33:34]
	v_or_b32_e32 v12, 36, v4
	v_or_b32_e32 v13, 40, v4
	.loc	1 1003 18 is_stmt 0             ; ragged.py:1003:18
	v_or_b32_e32 v22, s51, v4
	.loc	1 1006 20 is_stmt 1             ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s18, s55, v38
	v_mad_u64_u32 v[37:38], null, s72, v10, v[3:4]
	v_dual_mov_b32 v75, 0 :: v_dual_lshlrev_b32 v4, 1, v0
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v39, s53, v10
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_bfe_u32 v20, v0, 4, 1
	v_lshrrev_b32_e32 v21, 1, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v73, 0 :: v_dual_and_b32 v4, 24, v4
	.loc	1 1003 18 is_stmt 0             ; ragged.py:1003:18
	v_or_b32_e32 v26, s51, v7
	.loc	1 1004 18 is_stmt 1             ; ragged.py:1004:18
	v_or_b32_e32 v7, s53, v7
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_lshr_b32 s74, s68, 1
	v_lshl_or_b32 v2, v2, 5, v4
	s_cmp_lt_i32 s3, 32
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v27, s51, v8
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v8, s53, v8
	s_cselect_b32 s75, -1, 0
	s_add_i32 s67, s51, s69
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s25, s55, v39
	v_mad_u64_u32 v[38:39], null, s72, 36, v[33:34]
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v24, s51, v5
	v_or_b32_e32 v25, s51, v6
	v_or_b32_e32 v28, s51, v9
	v_or_b32_e32 v30, s51, v11
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v5, s53, v5
	v_or_b32_e32 v6, s53, v6
	v_or_b32_e32 v9, s53, v9
	v_or_b32_e32 v11, s53, v11
	v_or3_b32 v79, v20, v21, s53
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s22, s55, v7
	v_mad_u64_u32 v[39:40], null, s72, 40, v[33:34]
	v_lshl_or_b32 v99, v1, 3, v2
	v_lshl_or_b32 v100, v16, 4, v2
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v7, s67, v47
	v_mad_u64_u32 v[40:41], null, s72, 44, v[33:34]
	v_cmp_gt_i32_e64 s23, s55, v8
	v_mad_u64_u32 v[41:42], null, s72, 48, v[33:34]
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v8, s67, v46
	v_mad_u64_u32 v[42:43], null, s72, 52, v[33:34]
	v_mad_u64_u32 v[43:44], null, s72, 56, v[33:34]
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v29, s51, v10
	v_or_b32_e32 v31, s51, v12
	v_or_b32_e32 v32, s51, v13
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v12, s53, v12
	v_or_b32_e32 v13, s53, v13
	v_or_b32_e32 v14, s53, v14
	v_or_b32_e32 v15, s53, v15
	v_or_b32_e32 v17, s53, v17
	v_or_b32_e32 v18, s53, v18
	v_or_b32_e32 v20, s53, v19
	v_or_b32_e32 v80, 2, v79
	v_or_b32_e32 v81, 4, v79
	v_or_b32_e32 v82, 6, v79
	v_or_b32_e32 v83, 8, v79
	v_or_b32_e32 v84, 10, v79
	v_or_b32_e32 v85, 12, v79
	v_or_b32_e32 v86, 14, v79
	v_or_b32_e32 v87, 32, v79
	v_or_b32_e32 v88, 34, v79
	v_or_b32_e32 v89, 36, v79
	v_or_b32_e32 v90, 38, v79
	v_or_b32_e32 v91, 40, v79
	v_or_b32_e32 v92, 42, v79
	v_or_b32_e32 v93, 44, v79
	v_or_b32_e32 v94, 46, v79
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s20, s55, v5
	v_cmp_gt_i32_e64 s21, s55, v6
	v_cmp_gt_i32_e64 s24, s55, v9
	v_cmp_gt_i32_e64 s26, s55, v11
	v_mad_u64_u32 v[44:45], null, s72, v19, v[3:4]
	v_xor_b32_e32 v1, 0x88, v0
	v_xor_b32_e32 v3, 0x110, v0
	v_xor_b32_e32 v4, 0x198, v0
	v_xor_b32_e32 v5, 8, v99
	v_xor_b32_e32 v2, 16, v99
	v_xor_b32_e32 v6, 24, v99
	v_xor_b32_e32 v9, 8, v100
	v_xor_b32_e32 v10, 16, v100
	v_xor_b32_e32 v11, 24, v100
	v_mul_lo_u32 v101, v7, s73
	v_cndmask_b32_e64 v7, 0, 1, s75
	v_mul_lo_u32 v102, v8, s73
	.loc	1 1127 43                       ; ragged.py:1127:43
	s_mul_i32 s51, s66, s55
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s54, v22
	v_cmp_gt_i32_e64 s1, s54, v23
	v_cmp_gt_i32_e64 s4, s54, v24
	v_cmp_gt_i32_e64 s5, s54, v25
	v_cmp_gt_i32_e64 s6, s54, v26
	v_cmp_gt_i32_e64 s7, s54, v27
	v_cmp_gt_i32_e64 s8, s54, v28
	v_cmp_gt_i32_e64 s9, s54, v29
	v_cmp_gt_i32_e64 s10, s54, v30
	v_cmp_gt_i32_e64 s11, s54, v31
	v_cmp_gt_i32_e64 s12, s54, v32
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s27, s55, v12
	v_cmp_gt_i32_e64 s28, s55, v13
	v_cmp_gt_i32_e64 s29, s55, v14
	v_cmp_gt_i32_e64 s30, s55, v15
	v_cmp_gt_i32_e64 s31, s55, v17
	v_cmp_gt_i32_e64 s33, s55, v18
	v_cmp_gt_i32_e64 s34, s55, v20
	v_cmp_gt_i32_e64 s35, s55, v79
	v_cmp_gt_i32_e64 s36, s55, v80
	v_cmp_gt_i32_e64 s37, s55, v81
	v_cmp_gt_i32_e64 s38, s55, v82
	v_cmp_gt_i32_e64 s39, s55, v83
	v_cmp_gt_i32_e64 s40, s55, v84
	v_cmp_gt_i32_e64 s41, s55, v85
	v_cmp_gt_i32_e64 s42, s55, v86
	v_cmp_gt_i32_e64 s43, s55, v87
	v_cmp_gt_i32_e64 s44, s55, v88
	v_cmp_gt_i32_e64 s45, s55, v89
	v_cmp_gt_i32_e64 s46, s55, v90
	v_cmp_gt_i32_e64 s47, s55, v91
	v_cmp_gt_i32_e64 s48, s55, v92
	v_cmp_gt_i32_e64 s49, s55, v93
	v_cmp_gt_i32_e64 s50, s55, v94
	v_lshl_add_u32 v95, s72, 2, v33
	v_lshl_add_u32 v96, s72, 3, v33
	v_lshl_add_u32 v97, s72, 4, v33
	v_lshl_add_u32 v98, s72, 5, v33
	s_add_i32 s76, s53, s51
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v103, 0, v0
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v104, 0, v1
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v105, 0, v3
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v106, 0, v4
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v107, 0, v5
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v108, 0, v2
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v109, 0, v6
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v110, 0, v9
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v111, 0, v10
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v112, 0, v11
	v_cmp_ne_u32_e64 s51, 1, v7
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v45, 0
	v_mov_b32_e32 v52, 0
	v_mov_b32_e32 v48, 0
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_add_i32 s74, s74, -1
	.loc	1 1214 37                       ; ragged.py:1214:37
	s_mul_i32 s54, s66, s73
	s_mul_i32 s66, s67, s72
	s_and_b32 s69, s57, 0xffff
	s_mov_b32 s68, s56
	s_mov_b32 s71, 0x31027000
	s_mov_b32 s70, 0x7ffffffe
	s_mul_i32 s76, s76, s72
	s_and_b32 s57, s59, 0xffff
	s_mov_b32 s56, s58
	s_and_b32 s61, s61, 0xffff
	s_and_b32 s73, s63, 0xffff
	s_mov_b32 s72, s62
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_lshr_b32 s77, s74, 5
	s_mov_b32 s78, 0
	s_mov_b32 s62, 0
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v17, v101, s78, 1
	v_add_lshl_u32 v18, v102, s78, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s58, s78, s54
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_mov_b32 s62, s70
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s58, s58, s55
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_cndmask_b32_e64 v17, 0x80000000, v17, s52
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v19, v79, s58, 1
	v_add_lshl_u32 v28, v88, s58, 1
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v20, v80, s58, 1
	v_add_lshl_u32 v27, v87, s58, 1
	v_add_lshl_u32 v21, v81, s58, 1
	v_add_lshl_u32 v30, v90, s58, 1
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_mov_b32 s63, s71
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v22, v82, s58, 1
	v_add_lshl_u32 v29, v89, s58, 1
	v_add_lshl_u32 v23, v83, s58, 1
	v_add_lshl_u32 v24, v84, s58, 1
	v_add_lshl_u32 v25, v85, s58, 1
	v_add_lshl_u32 v26, v86, s58, 1
	v_add_lshl_u32 v31, v91, s58, 1
	v_add_lshl_u32 v32, v92, s58, 1
	v_add_lshl_u32 v129, v93, s58, 1
	v_add_lshl_u32 v130, v94, s58, 1
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_clause 0x1
	buffer_load_u16 v17, v17, s[60:63], 0 offen
	buffer_load_u16 v18, v18, s[60:63], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_cndmask_b32_e64 v19, 0x80000000, v19, s35
	v_cndmask_b32_e64 v28, 0x80000000, v28, s44
	v_cndmask_b32_e64 v20, 0x80000000, v20, s36
	v_cndmask_b32_e64 v27, 0x80000000, v27, s43
	v_cndmask_b32_e64 v21, 0x80000000, v21, s37
	v_cndmask_b32_e64 v30, 0x80000000, v30, s46
	s_mov_b32 s74, s70
	s_mov_b32 s75, s71
	v_cndmask_b32_e64 v22, 0x80000000, v22, s38
	v_cndmask_b32_e64 v29, 0x80000000, v29, s45
	v_cndmask_b32_e64 v23, 0x80000000, v23, s39
	v_cndmask_b32_e64 v24, 0x80000000, v24, s40
	v_cndmask_b32_e64 v25, 0x80000000, v25, s41
	v_cndmask_b32_e64 v26, 0x80000000, v26, s42
	v_cndmask_b32_e64 v31, 0x80000000, v31, s47
	v_cndmask_b32_e64 v32, 0x80000000, v32, s48
	v_cndmask_b32_e64 v129, 0x80000000, v129, s49
	v_cndmask_b32_e64 v130, 0x80000000, v130, s50
	s_clause 0xf
	buffer_load_u16 v19, v19, s[72:75], 0 offen
	buffer_load_u16 v20, v20, s[72:75], 0 offen
	buffer_load_u16 v21, v21, s[72:75], 0 offen
	buffer_load_u16 v22, v22, s[72:75], 0 offen
	buffer_load_u16 v23, v23, s[72:75], 0 offen
	buffer_load_u16 v24, v24, s[72:75], 0 offen
	buffer_load_u16 v25, v25, s[72:75], 0 offen
	buffer_load_u16 v26, v26, s[72:75], 0 offen
	buffer_load_u16 v28, v28, s[72:75], 0 offen
	buffer_load_u16 v27, v27, s[72:75], 0 offen
	buffer_load_u16 v30, v30, s[72:75], 0 offen
	buffer_load_u16 v29, v29, s[72:75], 0 offen
	buffer_load_u16 v32, v32, s[72:75], 0 offen
	buffer_load_u16 v31, v31, s[72:75], 0 offen
	buffer_load_u16 v130, v130, s[72:75], 0 offen
	buffer_load_u16 v129, v129, s[72:75], 0 offen
	.loc	1 1220 17                       ; ragged.py:1220:17
	s_add_i32 s58, s78, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_lshl_b32 s62, s58, 5
	s_cmp_lg_u32 s78, s77
	s_mov_b32 s78, s58
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_dual_mul_f32 v16, v16, v18 :: v_dual_lshlrev_b32 v17, 16, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v128, v128, v17
	v_mul_f32_e32 v127, v127, v17
	v_mul_f32_e32 v126, v126, v17
	v_mul_f32_e32 v125, v125, v17
	v_mul_f32_e32 v124, v124, v17
	v_mul_f32_e32 v123, v123, v17
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v19, 16, v19
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v12, v12, v18 :: v_dual_lshlrev_b32 v21, 16, v21
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v22, 16, v22
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v121, v121, v17 :: v_dual_lshlrev_b32 v24, 16, v24
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v119, v119, v17 :: v_dual_lshlrev_b32 v26, 16, v26
	v_dual_mul_f32 v14, v14, v18 :: v_dual_lshlrev_b32 v25, 16, v25
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v117, v117, v17 :: v_dual_lshlrev_b32 v28, 16, v28
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v27, 16, v27
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v115, v115, v17 :: v_dual_lshlrev_b32 v30, 16, v30
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v10, v10, v18 :: v_dual_lshlrev_b32 v29, 16, v29
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v32, 16, v32
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v122, v122, v17 :: v_dual_lshlrev_b32 v31, 16, v31
	.loc	1 1219 17                       ; ragged.py:1219:17
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v77, v128, v19 :: v_dual_lshlrev_b32 v130, 16, v130
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v8, v8, v18 :: v_dual_lshlrev_b32 v129, 16, v129
	v_dual_mul_f32 v120, v120, v17 :: v_dual_mul_f32 v15, v15, v18
	v_dual_mul_f32 v118, v118, v17 :: v_dual_mul_f32 v11, v11, v18
	v_dual_mul_f32 v116, v116, v17 :: v_dual_mul_f32 v13, v13, v18
	v_dual_mul_f32 v114, v114, v17 :: v_dual_mul_f32 v9, v9, v18
	v_mul_f32_e32 v17, v113, v17
	v_dual_mul_f32 v7, v7, v18 :: v_dual_fmac_f32 v76, v126, v21
	v_dual_mul_f32 v4, v4, v18 :: v_dual_fmac_f32 v73, v123, v24
	v_dual_mul_f32 v3, v3, v18 :: v_dual_fmac_f32 v74, v124, v23
	v_dual_mul_f32 v6, v6, v18 :: v_dual_fmac_f32 v69, v119, v28
	v_dual_mul_f32 v5, v5, v18 :: v_dual_fmac_f32 v78, v127, v20
	v_dual_mul_f32 v2, v2, v18 :: v_dual_fmac_f32 v65, v115, v32
	v_dual_mul_f32 v1, v1, v18 :: v_dual_fmac_f32 v72, v122, v25
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_dual_fmac_f32 v75, v125, v22 :: v_dual_fmac_f32 v70, v120, v27
	v_dual_fmac_f32 v71, v121, v26 :: v_dual_fmac_f32 v68, v118, v29
	v_dual_fmac_f32 v67, v117, v30 :: v_dual_fmac_f32 v66, v116, v31
	v_dual_fmac_f32 v64, v114, v129 :: v_dual_fmac_f32 v63, v17, v130
	v_dual_fmac_f32 v61, v15, v19 :: v_dual_fmac_f32 v62, v16, v20
	v_dual_fmac_f32 v59, v11, v21 :: v_dual_fmac_f32 v60, v12, v22
	v_dual_fmac_f32 v57, v13, v23 :: v_dual_fmac_f32 v58, v14, v24
	v_dual_fmac_f32 v55, v9, v25 :: v_dual_fmac_f32 v56, v10, v26
	v_dual_fmac_f32 v53, v7, v27 :: v_dual_fmac_f32 v54, v8, v28
	v_dual_fmac_f32 v51, v3, v29 :: v_dual_fmac_f32 v52, v4, v30
	v_dual_fmac_f32 v49, v5, v31 :: v_dual_fmac_f32 v50, v6, v32
	v_dual_fmac_f32 v48, v1, v129 :: v_dual_fmac_f32 v45, v2, v130
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cbranch_scc0 .LBB0_10
.LBB0_6:                                ; %.preheader
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	.loc	1 1120 27 is_stmt 1             ; ragged.py:1120:27
	s_and_b32 vcc_lo, exec_lo, s51
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v1, 0
	s_mov_b32 s63, s3
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
.LBB0_8:                                ; %.lr.ph
                                        ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1121 30 is_stmt 1             ; ragged.py:1121:30
	s_add_i32 s74, s63, s62
	.loc	1 1131 38                       ; ragged.py:1131:38
	s_mov_b32 s58, s70
	.loc	1 1130 46                       ; ragged.py:1130:46
	s_add_i32 s75, s74, s66
	.loc	1 1131 46                       ; ragged.py:1131:46
	s_add_i32 s74, s74, s76
	.loc	1 1130 46                       ; ragged.py:1130:46
	v_add_nc_u32_e32 v113, s75, v33
	v_add_nc_u32_e32 v117, s75, v97
	v_add_nc_u32_e32 v121, s75, v98
	v_add_nc_u32_e32 v125, s75, v41
	v_add_nc_u32_e32 v114, s75, v95
	v_add_nc_u32_e32 v115, s75, v96
	v_add_nc_u32_e32 v116, s75, v34
	v_add_nc_u32_e32 v118, s75, v35
	v_add_nc_u32_e32 v119, s75, v36
	v_add_nc_u32_e32 v120, s75, v37
	v_add_nc_u32_e32 v122, s75, v38
	v_add_nc_u32_e32 v123, s75, v39
	v_add_nc_u32_e32 v124, s75, v40
	v_add_nc_u32_e32 v126, s75, v42
	v_add_nc_u32_e32 v127, s75, v43
	v_add_nc_u32_e32 v128, s75, v44
	.loc	1 1131 46                       ; ragged.py:1131:46
	v_add_nc_u32_e32 v129, s74, v33
	v_add_nc_u32_e32 v130, s74, v95
	v_add_nc_u32_e32 v131, s74, v96
	v_add_nc_u32_e32 v132, s74, v34
	v_add_nc_u32_e32 v133, s74, v97
	v_add_nc_u32_e32 v134, s74, v35
	v_add_nc_u32_e32 v135, s74, v36
	v_add_nc_u32_e32 v136, s74, v37
	v_add_nc_u32_e32 v137, s74, v98
	v_add_nc_u32_e32 v138, s74, v38
	v_add_nc_u32_e32 v139, s74, v39
	v_add_nc_u32_e32 v140, s74, v40
	v_add_nc_u32_e32 v141, s74, v41
	v_add_nc_u32_e32 v142, s74, v42
	v_add_nc_u32_e32 v143, s74, v43
	v_add_nc_u32_e32 v144, s74, v44
	.loc	1 1130 38                       ; ragged.py:1130:38
	v_cndmask_b32_e64 v113, 0x80000000, v113, s0
	v_cndmask_b32_e64 v117, 0x80000000, v117, s6
	v_cndmask_b32_e64 v121, 0x80000000, v121, s10
	v_cndmask_b32_e64 v125, 0x80000000, v125, s14
	v_cndmask_b32_e64 v114, 0x80000000, v114, s1
	v_cndmask_b32_e64 v115, 0x80000000, v115, s4
	v_cndmask_b32_e64 v116, 0x80000000, v116, s5
	v_cndmask_b32_e64 v118, 0x80000000, v118, s7
	v_cndmask_b32_e64 v119, 0x80000000, v119, s8
	v_cndmask_b32_e64 v120, 0x80000000, v120, s9
	v_cndmask_b32_e64 v122, 0x80000000, v122, s11
	v_cndmask_b32_e64 v123, 0x80000000, v123, s12
	v_cndmask_b32_e64 v124, 0x80000000, v124, s13
	v_cndmask_b32_e64 v126, 0x80000000, v126, s15
	v_cndmask_b32_e64 v127, 0x80000000, v127, s16
	v_cndmask_b32_e64 v128, 0x80000000, v128, s17
	.loc	1 1131 38                       ; ragged.py:1131:38
	v_cndmask_b32_e64 v129, 0x80000000, v129, s18
	v_cndmask_b32_e64 v130, 0x80000000, v130, s19
	v_cndmask_b32_e64 v131, 0x80000000, v131, s20
	v_cndmask_b32_e64 v132, 0x80000000, v132, s21
	v_cndmask_b32_e64 v133, 0x80000000, v133, s22
	v_cndmask_b32_e64 v134, 0x80000000, v134, s23
	v_cndmask_b32_e64 v135, 0x80000000, v135, s24
	v_cndmask_b32_e64 v136, 0x80000000, v136, s25
	v_cndmask_b32_e64 v137, 0x80000000, v137, s26
	v_cndmask_b32_e64 v138, 0x80000000, v138, s27
	v_cndmask_b32_e64 v139, 0x80000000, v139, s28
	v_cndmask_b32_e64 v140, 0x80000000, v140, s29
	v_cndmask_b32_e64 v141, 0x80000000, v141, s30
	v_cndmask_b32_e64 v142, 0x80000000, v142, s31
	v_cndmask_b32_e64 v143, 0x80000000, v143, s33
	v_cndmask_b32_e64 v144, 0x80000000, v144, s34
	s_mov_b32 s59, s71
	.loc	1 1130 38                       ; ragged.py:1130:38
	s_clause 0xf
	buffer_load_u8 v113, v113, s[68:71], 0 offen
	buffer_load_u8 v117, v117, s[68:71], 0 offen
	buffer_load_u8 v121, v121, s[68:71], 0 offen
	buffer_load_u8 v125, v125, s[68:71], 0 offen
	buffer_load_u8 v114, v114, s[68:71], 0 offen
	buffer_load_u8 v118, v118, s[68:71], 0 offen
	buffer_load_u8 v122, v122, s[68:71], 0 offen
	buffer_load_u8 v126, v126, s[68:71], 0 offen
	buffer_load_u8 v115, v115, s[68:71], 0 offen
	buffer_load_u8 v119, v119, s[68:71], 0 offen
	buffer_load_u8 v123, v123, s[68:71], 0 offen
	buffer_load_u8 v127, v127, s[68:71], 0 offen
	buffer_load_u8 v116, v116, s[68:71], 0 offen
	buffer_load_u8 v120, v120, s[68:71], 0 offen
	buffer_load_u8 v124, v124, s[68:71], 0 offen
	buffer_load_u8 v128, v128, s[68:71], 0 offen
	.loc	1 1131 38                       ; ragged.py:1131:38
	s_clause 0xf
	buffer_load_u8 v129, v129, s[56:59], 0 offen
	buffer_load_u8 v133, v133, s[56:59], 0 offen
	buffer_load_u8 v137, v137, s[56:59], 0 offen
	buffer_load_u8 v141, v141, s[56:59], 0 offen
	buffer_load_u8 v130, v130, s[56:59], 0 offen
	buffer_load_u8 v134, v134, s[56:59], 0 offen
	buffer_load_u8 v138, v138, s[56:59], 0 offen
	buffer_load_u8 v142, v142, s[56:59], 0 offen
	buffer_load_u8 v131, v131, s[56:59], 0 offen
	buffer_load_u8 v135, v135, s[56:59], 0 offen
	buffer_load_u8 v139, v139, s[56:59], 0 offen
	buffer_load_u8 v143, v143, s[56:59], 0 offen
	buffer_load_u8 v132, v132, s[56:59], 0 offen
	buffer_load_u8 v136, v136, s[56:59], 0 offen
	buffer_load_u8 v140, v140, s[56:59], 0 offen
	buffer_load_u8 v144, v144, s[56:59], 0 offen
	.loc	1 1130 38                       ; ragged.py:1130:38
	v_add_nc_u32_e32 v145, 0, v99
	.loc	1 1131 38                       ; ragged.py:1131:38
	v_add_nc_u32_e32 v146, 0, v100
	.loc	1 1130 38                       ; ragged.py:1130:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1142 25                       ; ragged.py:1142:25
	s_add_i32 s58, s63, 32
	.loc	1 1120 27                       ; ragged.py:1120:27
	s_cmp_lt_i32 s63, 0
	s_mov_b32 s63, s58
	.loc	1 1130 38                       ; ragged.py:1130:38
	s_waitcnt vmcnt(31)
	ds_store_b8 v103, v113
	s_waitcnt vmcnt(30)
	ds_store_b8 v103, v117 offset:512
	s_waitcnt vmcnt(29)
	ds_store_b8 v103, v121 offset:1024
	s_waitcnt vmcnt(28)
	ds_store_b8 v103, v125 offset:1536
	s_waitcnt vmcnt(27)
	ds_store_b8 v104, v114
	s_waitcnt vmcnt(26)
	ds_store_b8 v104, v118 offset:512
	s_waitcnt vmcnt(25)
	ds_store_b8 v104, v122 offset:1024
	s_waitcnt vmcnt(24)
	ds_store_b8 v104, v126 offset:1536
	s_waitcnt vmcnt(23)
	ds_store_b8 v105, v115
	s_waitcnt vmcnt(22)
	ds_store_b8 v105, v119 offset:512
	s_waitcnt vmcnt(21)
	ds_store_b8 v105, v123 offset:1024
	s_waitcnt vmcnt(20)
	ds_store_b8 v105, v127 offset:1536
	s_waitcnt vmcnt(19)
	ds_store_b8 v106, v116
	s_waitcnt vmcnt(18)
	ds_store_b8 v106, v120 offset:512
	s_waitcnt vmcnt(17)
	ds_store_b8 v106, v124 offset:1024
	s_waitcnt vmcnt(16)
	ds_store_b8 v106, v128 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[113:116], v145 offset1:2
	ds_load_2addr_stride64_b64 v[117:120], v107 offset1:2
	ds_load_2addr_stride64_b64 v[121:124], v108 offset1:2
	ds_load_2addr_stride64_b64 v[125:128], v109 offset1:2
	.loc	1 1131 38                       ; ragged.py:1131:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b8 v103, v129
	s_waitcnt vmcnt(14)
	ds_store_b8 v103, v133 offset:512
	s_waitcnt vmcnt(13)
	ds_store_b8 v103, v137 offset:1024
	s_waitcnt vmcnt(12)
	ds_store_b8 v103, v141 offset:1536
	s_waitcnt vmcnt(11)
	ds_store_b8 v104, v130
	s_waitcnt vmcnt(10)
	ds_store_b8 v104, v134 offset:512
	s_waitcnt vmcnt(9)
	ds_store_b8 v104, v138 offset:1024
	s_waitcnt vmcnt(8)
	ds_store_b8 v104, v142 offset:1536
	s_waitcnt vmcnt(7)
	ds_store_b8 v105, v131
	s_waitcnt vmcnt(6)
	ds_store_b8 v105, v135 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v105, v139 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v105, v143 offset:1536
	s_waitcnt vmcnt(3)
	ds_store_b8 v106, v132
	s_waitcnt vmcnt(2)
	ds_store_b8 v106, v136 offset:512
	s_waitcnt vmcnt(1)
	ds_store_b8 v106, v140 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v106, v144 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[129:132], v146 offset1:2
	ds_load_2addr_stride64_b64 v[133:136], v110 offset1:2
	ds_load_2addr_stride64_b64 v[137:140], v111 offset1:2
	ds_load_2addr_stride64_b64 v[141:144], v112 offset1:2
	.loc	1 1132 35                       ; ragged.py:1132:35
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[129:130], v[113:114], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[131:132], v[113:114], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[129:130], v[115:116], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[131:132], v[115:116], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[133:134], v[117:118], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[135:136], v[117:118], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[133:134], v[119:120], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[135:136], v[119:120], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[137:138], v[121:122], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[139:140], v[121:122], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[137:138], v[123:124], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[139:140], v[123:124], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[141:142], v[125:126], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[143:144], v[125:126], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[141:142], v[127:128], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[143:144], v[127:128], v[25:32] neg_lo:[1,1,0]
	.loc	1 1120 27                       ; ragged.py:1120:27
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1204 27                       ; ragged.py:1204:27
	v_cvt_f32_i32_e32 v128, v1
	v_cvt_f32_i32_e32 v127, v2
	v_cvt_f32_i32_e32 v126, v3
	v_cvt_f32_i32_e32 v125, v4
	v_cvt_f32_i32_e32 v124, v5
	v_cvt_f32_i32_e32 v123, v6
	v_cvt_f32_i32_e32 v122, v7
	v_cvt_f32_i32_e32 v121, v8
	v_cvt_f32_i32_e32 v120, v9
	v_cvt_f32_i32_e32 v119, v10
	v_cvt_f32_i32_e32 v118, v11
	v_cvt_f32_i32_e32 v117, v12
	v_cvt_f32_i32_e32 v116, v13
	v_cvt_f32_i32_e32 v115, v14
	v_cvt_f32_i32_e32 v114, v15
	v_cvt_f32_i32_e32 v113, v16
	v_cvt_f32_i32_e32 v15, v17
	v_cvt_f32_i32_e32 v16, v18
	v_cvt_f32_i32_e32 v11, v19
	v_cvt_f32_i32_e32 v12, v20
	v_cvt_f32_i32_e32 v13, v21
	v_cvt_f32_i32_e32 v14, v22
	v_cvt_f32_i32_e32 v9, v23
	v_cvt_f32_i32_e32 v10, v24
	v_cvt_f32_i32_e32 v7, v25
	v_cvt_f32_i32_e32 v8, v26
	v_cvt_f32_i32_e32 v3, v27
	v_cvt_f32_i32_e32 v4, v28
	v_cvt_f32_i32_e32 v5, v29
	v_cvt_f32_i32_e32 v6, v30
	v_cvt_f32_i32_e32 v1, v31
	v_cvt_f32_i32_e32 v2, v32
	s_branch .LBB0_5
.LBB0_10:                               ; %._crit_edge32
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_mul_i32 s3, s67, s55
	.loc	1 1239 17 is_stmt 0             ; ragged.py:1239:17
	v_bfe_u32 v22, v76, 16, 1
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_add_i32 s18, s3, s53
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cmp_o_f32_e64 s3, v77, v77
	.loc	1 1003 36 is_stmt 1             ; ragged.py:1003:36
	v_and_b32_e32 v14, 24, v1
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v23, v75, 16, 1
	v_add3_u32 v22, v76, v22, 0x7fff
	v_cmp_o_f32_e64 s17, v76, v76
	v_bfe_u32 v24, v73, 16, 1
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v5, 39, v14
	v_or_b32_e32 v10, 34, v14
	v_or_b32_e32 v9, 35, v14
	v_or_b32_e32 v6, 38, v14
	v_or_b32_e32 v11, 33, v14
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v1, s53, v5
	v_or_b32_e32 v16, s53, v10
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v7, 37, v14
	v_or_b32_e32 v8, 36, v14
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v13, s53, v9
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v12, 32, v14
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v2, s53, v6
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s55, v1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v1, s53, v11
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s6, s55, v16
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v16, 5, v14
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v3, s53, v7
	v_or_b32_e32 v4, s53, v8
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s5, s55, v13
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v13, 7, v14
	v_or_b32_e32 v15, 6, v14
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s0, s55, v2
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v2, s53, v12
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s7, s55, v1
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v17, 4, v14
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v1, s53, v16
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v19, 2, v14
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s55, v3
	v_cmp_gt_i32_e64 s4, s55, v4
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v3, s53, v13
	v_or_b32_e32 v4, s53, v15
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v18, 3, v14
	v_or_b32_e32 v20, 1, v14
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s8, s55, v2
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v2, s53, v17
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s11, s55, v1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v1, s53, v19
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s9, s55, v3
	v_cmp_gt_i32_e64 s10, s55, v4
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v3, s53, v18
	v_or_b32_e32 v4, s53, v20
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s12, s55, v2
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v2, s53, v14
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s14, s55, v1
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v1, v77, 16, 1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s13, s55, v3
	v_cmp_gt_i32_e64 s15, s55, v4
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_mad_u64_u32 v[3:4], null, s55, v47, s[18:19]
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s16, s55, v2
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add3_u32 v4, v77, v1, 0x7fff
	.loc	1 1239 26 is_stmt 0             ; ragged.py:1239:26
	v_mad_u64_u32 v[1:2], null, s55, v46, s[18:19]
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v2, v78, 16, 1
	v_add3_u32 v23, v75, v23, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s3
	v_cmp_o_f32_e64 s3, v78, v78
	v_cmp_o_f32_e64 s18, v75, v75
	v_add3_u32 v2, v78, v2, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s17
	v_add3_u32 v24, v73, v24, 0x7fff
	v_cmp_o_f32_e64 s17, v73, v73
	v_cndmask_b16 v22.h, 0x7fff, v23.h, s18
	v_cndmask_b16 v4.h, 0x7fff, v2.h, s3
	v_bfe_u32 v2, v74, 16, 1
	v_bfe_u32 v23, v72, 16, 1
	v_cmp_o_f32_e64 s3, v74, v74
	v_bfe_u32 v25, v71, 16, 1
	v_cmp_o_f32_e64 s18, v72, v72
	v_add3_u32 v2, v74, v2, 0x7fff
	v_add3_u32 v23, v72, v23, 0x7fff
	v_bfe_u32 v26, v69, 16, 1
	v_add3_u32 v25, v71, v25, 0x7fff
	v_bfe_u32 v27, v67, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s3
	v_cndmask_b16 v2.h, 0x7fff, v24.h, s17
	v_bfe_u32 v24, v70, 16, 1
	v_cmp_o_f32_e64 s3, v71, v71
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s18
	v_cmp_o_f32_e64 s17, v70, v70
	v_add3_u32 v26, v69, v26, 0x7fff
	v_add3_u32 v24, v70, v24, 0x7fff
	v_cmp_o_f32_e64 s18, v69, v69
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s3
	v_bfe_u32 v25, v68, 16, 1
	v_mov_b16_e32 v21.h, 0
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s17
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s18
	v_bfe_u32 v26, v66, 16, 1
	v_add3_u32 v25, v68, v25, 0x7fff
	v_cmp_o_f32_e64 s3, v68, v68
	v_add3_u32 v27, v67, v27, 0x7fff
	v_cmp_o_f32_e64 s17, v67, v67
	v_bfe_u32 v28, v65, 16, 1
	v_bfe_u32 v29, v64, 16, 1
	v_add3_u32 v26, v66, v26, 0x7fff
	v_cmp_o_f32_e64 s18, v66, v66
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s3
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s17
	v_add3_u32 v27, v65, v28, 0x7fff
	v_cmp_o_f32_e64 s3, v65, v65
	v_add3_u32 v28, v64, v29, 0x7fff
	v_mov_b16_e32 v29.l, v61.h
	v_mov_b16_e32 v29.h, v21.h
	v_mov_b16_e32 v21.l, v62.h
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s18
	v_bfe_u32 v30, v63, 16, 1
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s3
	v_and_b32_e32 v27, 1, v29
	v_and_b32_e32 v29, 1, v21
	v_mov_b16_e32 v21.l, v60.h
	v_cmp_o_f32_e64 s17, v64, v64
	v_add3_u32 v30, v63, v30, 0x7fff
	v_cmp_o_f32_e64 s3, v63, v63
	v_add3_u32 v27, v61, v27, 0x7fff
	v_cmp_o_f32_e64 s18, v61, v61
	v_mov_b16_e32 v31.l, v59.h
	v_mov_b16_e32 v31.h, v21.h
	v_and_b32_e32 v32, 1, v21
	v_add3_u32 v29, v62, v29, 0x7fff
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s17
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s3
	v_cndmask_b16 v29.l, 0x7fff, v27.h, s18
	v_and_b32_e32 v27, 1, v31
	v_add3_u32 v30, v60, v32, 0x7fff
	v_cmp_o_f32_e64 s3, v60, v60
	v_mov_b16_e32 v21.l, v58.h
	v_mov_b16_e32 v31.l, v57.h
	v_add3_u32 v27, v59, v27, 0x7fff
	v_mov_b16_e32 v33.l, v55.h
	v_cndmask_b16 v30.h, 0x7fff, v30.h, s3
	v_cmp_o_f32_e64 s3, v59, v59
	v_and_b32_e32 v32, 1, v21
	v_and_b32_e32 v31, 1, v31
	v_mov_b16_e32 v33.h, v21.h
	v_mov_b16_e32 v21.l, v56.h
	v_cndmask_b16 v30.l, 0x7fff, v27.h, s3
	v_cmp_o_f32_e64 s3, v57, v57
	v_add3_u32 v31, v57, v31, 0x7fff
	v_and_b32_e32 v27, 1, v33
	v_and_b32_e32 v33, 1, v21
	v_mov_b16_e32 v21.l, v54.h
	v_add3_u32 v32, v58, v32, 0x7fff
	v_cmp_o_f32_e64 s17, v62, v62
	v_add3_u32 v27, v55, v27, 0x7fff
	v_cmp_o_f32_e64 s18, v55, v55
	v_mov_b16_e32 v34.l, v53.h
	v_mov_b16_e32 v34.h, v21.h
	v_cndmask_b16 v32.l, 0x7fff, v31.h, s3
	v_and_b32_e32 v31, 1, v21
	v_mov_b16_e32 v21.l, v52.h
	v_add3_u32 v33, v56, v33, 0x7fff
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s17
	v_cmp_o_f32_e64 s17, v58, v58
	v_cndmask_b16 v33.l, 0x7fff, v27.h, s18
	v_and_b32_e32 v27, 1, v34
	v_add3_u32 v31, v54, v31, 0x7fff
	v_cmp_o_f32_e64 s3, v54, v54
	v_mov_b16_e32 v34.l, v51.h
	v_and_b32_e32 v35, 1, v21
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s17
	v_cmp_o_f32_e64 s17, v56, v56
	v_cndmask_b16 v31.h, 0x7fff, v31.h, s3
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v35, v52, v35, 0x7fff
	v_cmp_o_f32_e64 s3, v52, v52
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s17
	v_add3_u32 v27, v53, v27, 0x7fff
	v_cmp_o_f32_e64 s17, v53, v53
	v_add3_u32 v34, v51, v34, 0x7fff
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s3
	v_mov_b16_e32 v21.l, v50.h
	v_cmp_o_f32_e64 s3, v51, v51
	v_mov_b16_e32 v36.l, v48.h
	v_mov_b16_e32 v36.h, v21.h
	v_cndmask_b16 v31.l, 0x7fff, v27.h, s17
	v_mov_b16_e32 v27.l, v49.h
	v_mov_b16_e32 v27.h, v21.h
	v_and_b32_e32 v37, 1, v21
	v_mov_b16_e32 v21.l, v45.h
	v_cndmask_b16 v35.l, 0x7fff, v34.h, s3
	v_and_b32_e32 v34, 1, v36
	v_and_b32_e32 v27, 1, v27
	v_add3_u32 v36, v50, v37, 0x7fff
	v_and_b32_e32 v37, 1, v21
	v_cmp_o_f32_e64 s3, v50, v50
	v_add3_u32 v34, v48, v34, 0x7fff
	v_and_b32_e32 v0, 16, v0
	v_cmp_o_f32_e64 s19, v48, v48
	v_add3_u32 v27, v49, v27, 0x7fff
	v_cmp_o_f32_e64 s17, v49, v49
	v_add3_u32 v37, v45, v37, 0x7fff
	v_cmp_o_f32_e64 s18, v45, v45
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s3
	v_cmp_eq_u32_e64 s3, 0, v0
	v_cndmask_b16 v0.l, 0x7fff, v34.h, s19
	v_mov_b32_e32 v34, 0x5410
	v_cndmask_b16 v36.l, 0x7fff, v27.h, s17
	v_cndmask_b16 v0.h, 0x7fff, v37.h, s18
	v_cndmask_b32_e64 v27, v2, v4, s3
	v_cndmask_b32_e64 v2, v4, v2, s3
	v_cndmask_b32_e64 v4, v23, v22, s3
	v_cndmask_b32_e64 v22, v22, v23, s3
	v_cndmask_b32_e64 v23, v26, v24, s3
	v_cndmask_b32_e64 v24, v24, v26, s3
	v_cndmask_b32_e64 v26, v28, v25, s3
	v_mov_b32_e32 v37, 0x7632
	v_cndmask_b32_e64 v25, v25, v28, s3
	v_cndmask_b32_e64 v28, v32, v29, s3
	v_cndmask_b32_e64 v29, v29, v32, s3
	v_cndmask_b32_e64 v32, 0x1054, v34, s3
	v_cndmask_b32_e64 v34, 0x3276, v37, s3
	s_mov_b32 s17, 0x76543210
	v_cndmask_b32_e64 v37, v33, v30, s3
	v_cndmask_b32_e64 v30, v30, v33, s3
	v_lshl_or_b32 v32, v32, 8, v32
	v_lshl_or_b32 v34, v34, 8, v34
	v_cndmask_b32_e64 v33, v36, v31, s3
	v_cndmask_b32_e64 v31, v31, v36, s3
	v_permlanex16_b32 v2, v2, s17, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v32, 0x540054, v32
	v_and_b32_e32 v34, 0x760076, v34
	v_add_lshl_u32 v50, v3, v14, 1
	v_cndmask_b32_e64 v36, v0, v35, s3
	v_cndmask_b32_e64 v0, v35, v0, s3
	v_lshl_or_b32 v32, v32, 4, v32
	v_lshl_or_b32 v34, v34, 4, v34
	v_permlanex16_b32 v22, v22, s17, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v24, s17, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v25, s17, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v32, 0x5040504, v32
	v_permlanex16_b32 v29, v29, s17, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v34, 0x7060706, v34
	v_permlanex16_b32 v30, v30, s17, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v31, s17, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v2, v27, v32
	v_add_lshl_u32 v51, v3, v20, 1
	.loc	1 1223 20 is_stmt 1             ; ragged.py:1223:20
	s_and_b32 s3, s52, s16
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v52, v3, v19, 1
	v_cndmask_b32_e64 v50, 0x80000000, v50, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s52, s15
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
	s_and_b32 s65, s65, 0xffff
	s_mov_b32 s67, 0x31027000
	s_mov_b32 s66, 0x7ffffffe
	v_cndmask_b32_e64 v51, 0x80000000, v51, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s52, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v35, v50, s[64:67], 0 offen
	v_cndmask_b32_e64 v50, 0x80000000, v52, s3
	v_add_lshl_u32 v35, v3, v18, 1
	buffer_store_b16 v33, v51, s[64:67], 0 offen
	v_add_lshl_u32 v33, v3, v17, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s52, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_permlanex16_b32 v0, v0, s17, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e32 v21.l, v2.h
	buffer_store_b16 v2, v50, s[64:67], 0 offen
	v_add_lshl_u32 v2, v3, v16, 1
	v_cndmask_b32_e64 v35, 0x80000000, v35, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s52, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_perm_b32 v32, v0, v36, v32
	v_cndmask_b32_e64 v33, 0x80000000, v33, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s52, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_perm_b32 v0, v0, v36, v34
	v_mov_b16_e32 v36.l, v27.h
	v_mov_b16_e32 v36.h, v21.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
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
	buffer_store_b16 v21, v35, s[64:67], 0 offen
	v_add_lshl_u32 v21, v3, v15, 1
	buffer_store_b16 v27, v33, s[64:67], 0 offen
	v_add_lshl_u32 v27, v3, v13, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s52, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v36, v2, s[64:67], 0 offen
	v_add_lshl_u32 v2, v3, v12, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s52, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v34.l, v4.h
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s52, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v4, v21, s[64:67], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v4, v3, v11, 1
	v_add_lshl_u32 v21, v3, v10, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s52, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b16 v34, v27, s[64:67], 0 offen
	buffer_store_b16 v22, v2, s[64:67], 0 offen
	v_add_lshl_u32 v2, v3, v9, 1
	v_mov_b16_e32 v39.l, v22.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s52, s6
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v38.l, v23.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s52, s5
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v39, v4, s[64:67], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v4, v3, v8, 1
	buffer_store_b16 v23, v21, s[64:67], 0 offen
	v_add_lshl_u32 v21, v3, v7, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s52, s4
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v38, v2, s[64:67], 0 offen
	v_add_lshl_u32 v2, v3, v6, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s52, s1
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v41.l, v24.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s52, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v3, v3, v5, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	buffer_store_b16 v24, v4, s[64:67], 0 offen
	v_add_lshl_u32 v4, v1, v14, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s52, vcc_lo
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b16 v41, v21, s[64:67], 0 offen
	buffer_store_b16 v25, v2, s[64:67], 0 offen
	v_add_lshl_u32 v2, v1, v20, 1
	v_mov_b16_e32 v40.l, v25.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s16
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v43.l, v26.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v40, v3, s[64:67], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v3, v1, v19, 1
	buffer_store_b16 v26, v4, s[64:67], 0 offen
	v_add_lshl_u32 v4, v1, v18, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v43, v2, s[64:67], 0 offen
	v_add_lshl_u32 v2, v1, v17, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v42.l, v28.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v28, v3, s[64:67], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v3, v1, v16, 1
	buffer_store_b16 v42, v4, s[64:67], 0 offen
	v_add_lshl_u32 v4, v1, v15, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v29, v2, s[64:67], 0 offen
	v_add_lshl_u32 v2, v1, v13, 1
	v_mov_b16_e32 v45.l, v29.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v44.l, v30.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v45, v3, s[64:67], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v3, v1, v12, 1
	buffer_store_b16 v30, v4, s[64:67], 0 offen
	v_add_lshl_u32 v4, v1, v11, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v44, v2, s[64:67], 0 offen
	v_add_lshl_u32 v2, v1, v10, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v47.l, v37.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s6
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v37, v3, s[64:67], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v3, v1, v9, 1
	buffer_store_b16 v47, v4, s[64:67], 0 offen
	v_add_lshl_u32 v4, v1, v8, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s5
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v31, v2, s[64:67], 0 offen
	v_add_lshl_u32 v2, v1, v7, 1
	v_add_lshl_u32 v6, v1, v6, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s4
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v1, v1, v5, 1
	v_mov_b16_e32 v46.l, v31.h
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s2, s1
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, s2, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v49.l, v32.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v5, 0x80000000, v6, s0
	v_mov_b16_e32 v48.l, v0.h
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b16 v46, v3, s[64:67], 0 offen
	buffer_store_b16 v32, v4, s[64:67], 0 offen
	buffer_store_b16 v49, v2, s[64:67], 0 offen
	buffer_store_b16 v0, v5, s[64:67], 0 offen
	buffer_store_b16 v48, v1, s[64:67], 0 offen
	.loc	1 970 5                         ; ragged.py:970:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 147
		.amdhsa_next_free_sgpr 79
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
		.amdhsa_inst_pref_size 62
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_vgpr, 147
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.numbered_sgpr, 79
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7900
; TotalNumSgprs: 81
; NumVgprs: 147
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 18
; NumSGPRsForWavesPerEU: 81
; NumVGPRsForWavesPerEU: 147
; Occupancy: 9
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     81
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc64_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     147
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
