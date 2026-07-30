	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 970 0                         ; ragged.py:970:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[38:39], s[0:1], 0x30
.Ltmp0:
	.loc	1 998 20 prologue_end           ; ragged.py:998:20
	s_abs_i32 s9, s2
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v2, 64, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_lshrrev_b32_e32 v3, 2, v2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:995:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s38, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:996:21 ]
	s_add_i32 s5, s39, 63
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
	s_sub_i32 s36, s6, s8
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s6, 0, s9
	.loc	1 999 22                        ; ragged.py:999:22
	s_mul_i32 s4, s36, s4
	.loc	1 1000 17                       ; ragged.py:1000:17
	v_rcp_iflag_f32_e32 v1, s7
	.loc	1 999 16                        ; ragged.py:999:16
	s_sub_i32 s2, s2, s4
	.loc	1 1125 43                       ; ragged.py:1125:43
	s_mul_i32 s54, s36, s38
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s8, s2
	s_xor_b32 s10, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	s_ashr_i32 s10, s10, 31
	v_readfirstlane_b32 s7, v1
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v1, 15, v0
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v72, v3, v1
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v71, 32, v72
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_mul_i32 s6, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s7, s6
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
	s_ashr_i32 s37, s36, 31
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_xor_b32 s4, s4, s10
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_lshl_b64 s[8:9], s[36:37], 2
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s4, s4, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1001 24                       ; ragged.py:1001:24
	s_mul_i32 s5, s4, s5
	.loc	1 1003 18                       ; ragged.py:1003:18
	s_lshl_b32 s52, s4, 6
	.loc	1 1001 17                       ; ragged.py:1001:17
	s_sub_i32 s4, s2, s5
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s6, s8
	s_addc_u32 s7, s7, s9
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v3, s52, v72
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_load_b32 s53, s[6:7], 0x0
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v4, s52, v71
	s_mov_b32 s5, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s37, s38, v3
	v_cmp_gt_i32_e64 s2, s38, v4
	.loc	1 1008 27                       ; ragged.py:1008:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s53, s53, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cmp_gt_i32 s53, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge62_crit_edge
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_add_i32 s61, s52, s54
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s5, -1
                                        ; implicit-def: $sgpr61
.LBB0_3:                                ; %Flow267
	s_load_b64 s[48:49], s[0:1], 0x28
	v_lshrrev_b32_e32 v85, 1, v0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v102, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s60, s4, 6
	s_cbranch_vccnz .LBB0_10
; %bb.4:                                ; %.preheader.lr.ph
	s_clause 0x1
	s_load_b256 s[40:47], s[0:1], 0x0
	s_load_b64 s[50:51], s[0:1], 0x38
	.loc	1 1003 36 is_stmt 1             ; ragged.py:1003:36
	v_lshrrev_b32_e32 v4, 5, v0
	v_bfe_u32 v5, v0, 4, 1
	v_dual_mov_b32 v105, 0 :: v_dual_and_b32 v6, 16, v85
	.loc	1 1118 23                       ; ragged.py:1118:23
	s_lshl_b32 s3, s3, 5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v3, s52, v4
	.loc	1 1003 36 is_stmt 0             ; ragged.py:1003:36
	v_or_b32_e32 v7, 28, v4
	.loc	1 1004 18 is_stmt 1             ; ragged.py:1004:18
	v_or3_b32 v106, v5, v6, s60
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v8, 60, v4
	v_mov_b32_e32 v102, 0
	.loc	1 1003 18 is_stmt 0             ; ragged.py:1003:18
	v_or_b32_e32 v9, 4, v3
	v_or_b32_e32 v10, 8, v3
	v_or_b32_e32 v11, 12, v3
	v_or_b32_e32 v12, 16, v3
	v_or_b32_e32 v13, 20, v3
	v_or_b32_e32 v14, 24, v3
	v_or_b32_e32 v16, 32, v3
	v_or_b32_e32 v17, 36, v3
	v_or_b32_e32 v18, 40, v3
	v_or_b32_e32 v19, 44, v3
	v_or_b32_e32 v5, 48, v3
	v_or_b32_e32 v20, 52, v3
	v_or_b32_e32 v21, 56, v3
	.loc	1 1005 20 is_stmt 1             ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s38, v3
	.loc	1 1113 28                       ; ragged.py:1113:28
	v_and_b32_e32 v3, 31, v0
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v15, s52, v7
	v_or_b32_e32 v22, s52, v8
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s14, s38, v5
	v_dual_mov_b32 v104, 0 :: v_dual_lshlrev_b32 v5, 5, v1
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[49:50], null, s50, v4, v[3:4]
	.loc	1 1113 28                       ; ragged.py:1113:28
	v_lshrrev_b32_e32 v4, 6, v2
	v_dual_mov_b32 v97, 0 :: v_dual_lshlrev_b32 v2, 3, v2
	v_mov_b32_e32 v101, 0
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_lshr_b32 s56, s53, 1
	s_cmpk_lt_i32 s3, 0x80
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[50:51], null, s50, 12, v[49:50]
	v_mad_u64_u32 v[51:52], null, s50, v7, v[3:4]
	v_mad_u64_u32 v[52:53], null, s50, v8, v[3:4]
	v_mul_lo_u32 v3, s39, v4
	v_lshlrev_b32_e32 v4, 1, v0
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_and_or_b32 v23, v0, 63, s60
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s1, s38, v9
	v_cmp_gt_i32_e64 s4, s38, v10
	v_cmp_gt_i32_e64 s5, s38, v11
	v_dual_mov_b32 v99, 0 :: v_dual_and_b32 v4, 24, v4
	v_cmp_gt_i32_e64 s6, s38, v12
	v_cmp_gt_i32_e64 s7, s38, v13
	v_cmp_gt_i32_e64 s8, s38, v14
	v_cmp_gt_i32_e64 s9, s38, v15
	v_cmp_gt_i32_e64 s10, s38, v16
	v_cmp_gt_i32_e64 s11, s38, v17
	v_cmp_gt_i32_e64 s12, s38, v18
	v_cmp_gt_i32_e64 s13, s38, v19
	v_cmp_gt_i32_e64 s15, s38, v20
	v_cmp_gt_i32_e64 s16, s38, v21
	v_cmp_gt_i32_e64 s17, s38, v22
	.loc	1 1129 43                       ; ragged.py:1129:43
	s_mul_i32 s38, s36, s50
	.loc	1 1214 37                       ; ragged.py:1214:37
	s_mul_i32 s62, s36, s51
	s_cselect_b32 s36, -1, 0
	s_add_i32 s61, s52, s54
	v_or3_b32 v142, v5, v4, v2
	v_mad_u64_u32 v[53:54], null, s50, 20, v[49:50]
	v_mad_u64_u32 v[54:55], null, s50, 24, v[49:50]
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v10, s61, v72
	v_dual_mov_b32 v100, 0 :: v_dual_add_nc_u32 v11, s61, v71
	v_mad_u64_u32 v[55:56], null, s50, 36, v[49:50]
	s_and_b32 s53, s41, 0xffff
	s_mov_b32 s52, s40
	s_lshl_b32 s40, s39, 1
	s_lshl_b32 s41, s39, 2
	s_mul_i32 s57, s39, 6
	s_lshl_b32 s58, s39, 3
	s_mul_i32 s59, s39, 10
	s_mul_i32 s64, s39, 12
	s_mul_i32 s65, s39, 14
	s_lshl_b32 s66, s39, 4
	s_mul_i32 s67, s39, 18
	s_mul_i32 s68, s39, 20
	s_mul_i32 s69, s39, 22
	s_mul_i32 s70, s39, 24
	s_mul_i32 s71, s39, 26
	s_mul_i32 s72, s39, 28
	s_mul_i32 s73, s39, 30
	v_mad_u64_u32 v[56:57], null, s50, 40, v[49:50]
	v_mad_u64_u32 v[57:58], null, s50, 44, v[49:50]
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v107, 2, v106
	v_or_b32_e32 v108, 4, v106
	v_or_b32_e32 v109, 6, v106
	v_or_b32_e32 v110, 8, v106
	v_or_b32_e32 v111, 10, v106
	v_or_b32_e32 v112, 12, v106
	v_or_b32_e32 v113, 14, v106
	v_or_b32_e32 v114, 32, v106
	v_or_b32_e32 v115, 34, v106
	v_or_b32_e32 v116, 36, v106
	v_or_b32_e32 v117, 38, v106
	v_or_b32_e32 v118, 40, v106
	v_or_b32_e32 v119, 42, v106
	v_or_b32_e32 v120, 44, v106
	v_or_b32_e32 v121, 46, v106
	v_dual_mov_b32 v103, 0 :: v_dual_add_nc_u32 v126, v23, v3
	v_add3_u32 v127, v3, s40, v23
	v_add3_u32 v128, v3, s41, v23
	v_add3_u32 v129, v3, s57, v23
	v_add3_u32 v130, v3, s58, v23
	v_add3_u32 v131, v3, s59, v23
	v_add3_u32 v132, v3, s64, v23
	v_add3_u32 v133, v3, s65, v23
	v_add3_u32 v134, v3, s66, v23
	v_add3_u32 v135, v3, s67, v23
	v_add3_u32 v136, v3, s68, v23
	v_add3_u32 v137, v3, s69, v23
	v_add3_u32 v138, v3, s70, v23
	v_add3_u32 v139, v3, s71, v23
	v_add3_u32 v140, v3, s72, v23
	v_add3_u32 v141, v3, s73, v23
	v_xor_b32_e32 v2, 0x88, v0
	v_xor_b32_e32 v3, 0x110, v0
	v_xor_b32_e32 v4, 0x198, v0
	v_xor_b32_e32 v5, 8, v142
	v_xor_b32_e32 v7, 16, v142
	v_xor_b32_e32 v8, 24, v142
	v_or_b32_e32 v9, 0x380, v0
	v_or_b32_e32 v12, 0x780, v0
	v_add3_u32 v143, 0, v6, v1
	v_cndmask_b32_e64 v1, 0, 1, s36
	v_mad_u64_u32 v[58:59], null, s50, 48, v[49:50]
	v_mad_u64_u32 v[59:60], null, s50, 52, v[49:50]
	v_mul_lo_u32 v144, v10, s51
	v_mul_lo_u32 v145, v11, s51
	v_mad_u64_u32 v[60:61], null, s50, 56, v[49:50]
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s18, s39, v106
	v_cmp_gt_i32_e64 s19, s39, v107
	v_cmp_gt_i32_e64 s20, s39, v108
	v_cmp_gt_i32_e64 s21, s39, v109
	v_cmp_gt_i32_e64 s22, s39, v110
	v_cmp_gt_i32_e64 s23, s39, v111
	v_cmp_gt_i32_e64 s24, s39, v112
	v_cmp_gt_i32_e64 s25, s39, v113
	v_cmp_gt_i32_e64 s26, s39, v114
	v_cmp_gt_i32_e64 s27, s39, v115
	v_cmp_gt_i32_e64 s28, s39, v116
	v_cmp_gt_i32_e64 s29, s39, v117
	v_cmp_gt_i32_e64 s30, s39, v118
	v_cmp_gt_i32_e64 s31, s39, v119
	v_cmp_gt_i32_e64 s33, s39, v120
	v_cmp_gt_i32_e64 s34, s39, v121
	v_cmp_gt_i32_e64 s35, s39, v23
	v_lshl_add_u32 v122, s50, 2, v49
	v_lshl_add_u32 v123, s50, 3, v49
	v_lshl_add_u32 v124, s50, 4, v49
	v_lshl_add_u32 v125, s50, 5, v49
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v146, 0, v0
	v_dual_mov_b32 v98, 0 :: v_dual_add_nc_u32 v147, 0, v2
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v148, 0, v3
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v149, 0, v4
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v150, 0, v5
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v151, 0, v7
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v152, 0, v8
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v153, 0, v9
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v154, 0, v12
	v_cmp_ne_u32_e64 s36, 1, v1
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v73, 0
	v_mov_b32_e32 v78, 0
	v_mov_b32_e32 v80, 0
	v_mov_b32_e32 v76, 0
	v_mov_b32_e32 v74, 0
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	s_and_b32 s45, s45, 0xffff
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_add_i32 s56, s56, -1
	s_and_b32 s47, s47, 0xffff
	s_mul_i32 s63, s61, s50
	s_and_b32 s41, s43, 0xffff
	s_mov_b32 s40, s42
	s_mov_b32 s64, 0
	s_lshr_b32 s51, s56, 7
	s_mov_b32 s56, s44
	s_mov_b32 s57, s45
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	s_mov_b32 s44, s46
	s_mov_b32 s45, s47
	s_mov_b32 s46, s54
	s_mov_b32 s47, s55
	s_mov_b32 s50, 0
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v17, v144, s64, 1
	v_add_lshl_u32 v18, v145, s64, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s42, s64, s62
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_mul_i32 s42, s42, s39
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_cndmask_b32_e64 v17, 0x80000000, v17, s37
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v19, v106, s42, 1
	v_add_lshl_u32 v28, v115, s42, 1
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v20, v107, s42, 1
	v_add_lshl_u32 v27, v114, s42, 1
	v_add_lshl_u32 v21, v108, s42, 1
	v_add_lshl_u32 v30, v117, s42, 1
	v_add_lshl_u32 v22, v109, s42, 1
	v_add_lshl_u32 v29, v116, s42, 1
	v_add_lshl_u32 v23, v110, s42, 1
	v_add_lshl_u32 v24, v111, s42, 1
	v_add_lshl_u32 v25, v112, s42, 1
	v_add_lshl_u32 v26, v113, s42, 1
	v_add_lshl_u32 v31, v118, s42, 1
	v_add_lshl_u32 v32, v119, s42, 1
	v_add_lshl_u32 v61, v120, s42, 1
	v_add_lshl_u32 v62, v121, s42, 1
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_clause 0x1
	buffer_load_u16 v17, v17, s[56:59], 0 offen
	buffer_load_u16 v18, v18, s[56:59], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_cndmask_b32_e64 v19, 0x80000000, v19, s18
	v_cndmask_b32_e64 v28, 0x80000000, v28, s27
	v_cndmask_b32_e64 v20, 0x80000000, v20, s19
	v_cndmask_b32_e64 v27, 0x80000000, v27, s26
	v_cndmask_b32_e64 v21, 0x80000000, v21, s20
	v_cndmask_b32_e64 v30, 0x80000000, v30, s29
	v_cndmask_b32_e64 v22, 0x80000000, v22, s21
	v_cndmask_b32_e64 v29, 0x80000000, v29, s28
	v_cndmask_b32_e64 v23, 0x80000000, v23, s22
	v_cndmask_b32_e64 v24, 0x80000000, v24, s23
	v_cndmask_b32_e64 v25, 0x80000000, v25, s24
	v_cndmask_b32_e64 v26, 0x80000000, v26, s25
	v_cndmask_b32_e64 v31, 0x80000000, v31, s30
	v_cndmask_b32_e64 v32, 0x80000000, v32, s31
	v_cndmask_b32_e64 v61, 0x80000000, v61, s33
	v_cndmask_b32_e64 v62, 0x80000000, v62, s34
	s_clause 0xf
	buffer_load_u16 v19, v19, s[44:47], 0 offen
	buffer_load_u16 v20, v20, s[44:47], 0 offen
	buffer_load_u16 v21, v21, s[44:47], 0 offen
	buffer_load_u16 v22, v22, s[44:47], 0 offen
	buffer_load_u16 v23, v23, s[44:47], 0 offen
	buffer_load_u16 v24, v24, s[44:47], 0 offen
	buffer_load_u16 v25, v25, s[44:47], 0 offen
	buffer_load_u16 v26, v26, s[44:47], 0 offen
	buffer_load_u16 v28, v28, s[44:47], 0 offen
	buffer_load_u16 v27, v27, s[44:47], 0 offen
	buffer_load_u16 v30, v30, s[44:47], 0 offen
	buffer_load_u16 v29, v29, s[44:47], 0 offen
	buffer_load_u16 v32, v32, s[44:47], 0 offen
	buffer_load_u16 v31, v31, s[44:47], 0 offen
	buffer_load_u16 v62, v62, s[44:47], 0 offen
	buffer_load_u16 v61, v61, s[44:47], 0 offen
	.loc	1 1220 17                       ; ragged.py:1220:17
	s_add_i32 s42, s64, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_lshl_b32 s50, s42, 7
	s_cmp_lg_u32 s64, s51
	s_mov_b32 s64, s42
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_dual_mul_f32 v16, v16, v18 :: v_dual_lshlrev_b32 v17, 16, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v48, v48, v17
	v_mul_f32_e32 v47, v47, v17
	v_mul_f32_e32 v46, v46, v17
	v_mul_f32_e32 v45, v45, v17
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v19, 16, v19
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v12, v12, v18 :: v_dual_lshlrev_b32 v21, 16, v21
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v43, v43, v17 :: v_dual_lshlrev_b32 v22, 16, v22
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v41, v41, v17 :: v_dual_lshlrev_b32 v24, 16, v24
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v39, v39, v17 :: v_dual_lshlrev_b32 v26, 16, v26
	v_dual_mul_f32 v14, v14, v18 :: v_dual_lshlrev_b32 v25, 16, v25
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v37, v37, v17 :: v_dual_lshlrev_b32 v28, 16, v28
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v44, v44, v17 :: v_dual_lshlrev_b32 v27, 16, v27
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v35, v35, v17 :: v_dual_lshlrev_b32 v30, 16, v30
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v10, v10, v18 :: v_dual_lshlrev_b32 v29, 16, v29
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v32, 16, v32
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v42, v42, v17 :: v_dual_lshlrev_b32 v31, 16, v31
	.loc	1 1219 17                       ; ragged.py:1219:17
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v105, v47, v20 :: v_dual_lshlrev_b32 v62, 16, v62
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v8, v8, v18 :: v_dual_lshlrev_b32 v61, 16, v61
	v_dual_mul_f32 v40, v40, v17 :: v_dual_mul_f32 v15, v15, v18
	v_dual_mul_f32 v38, v38, v17 :: v_dual_mul_f32 v11, v11, v18
	v_dual_mul_f32 v36, v36, v17 :: v_dual_mul_f32 v13, v13, v18
	v_dual_mul_f32 v34, v34, v17 :: v_dual_mul_f32 v9, v9, v18
	v_mul_f32_e32 v17, v33, v17
	v_dual_mul_f32 v7, v7, v18 :: v_dual_fmac_f32 v102, v48, v19
	v_dual_mul_f32 v4, v4, v18 :: v_dual_fmac_f32 v99, v42, v25
	v_dual_mul_f32 v3, v3, v18 :: v_dual_fmac_f32 v104, v46, v21
	v_dual_mul_f32 v6, v6, v18 :: v_dual_fmac_f32 v101, v44, v23
	v_dual_mul_f32 v5, v5, v18 :: v_dual_fmac_f32 v100, v43, v24
	v_dual_mul_f32 v2, v2, v18 :: v_dual_fmac_f32 v97, v40, v27
	v_dual_mul_f32 v1, v1, v18 :: v_dual_fmac_f32 v96, v39, v28
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_dual_fmac_f32 v103, v45, v22 :: v_dual_fmac_f32 v92, v35, v32
	v_dual_fmac_f32 v98, v41, v26 :: v_dual_fmac_f32 v95, v38, v29
	v_dual_fmac_f32 v94, v37, v30 :: v_dual_fmac_f32 v93, v36, v31
	v_dual_fmac_f32 v91, v34, v61 :: v_dual_fmac_f32 v90, v17, v62
	v_dual_fmac_f32 v88, v15, v19 :: v_dual_fmac_f32 v89, v16, v20
	v_dual_fmac_f32 v86, v11, v21 :: v_dual_fmac_f32 v87, v12, v22
	v_dual_fmac_f32 v83, v13, v23 :: v_dual_fmac_f32 v84, v14, v24
	v_dual_fmac_f32 v81, v9, v25 :: v_dual_fmac_f32 v82, v10, v26
	v_dual_fmac_f32 v78, v7, v27 :: v_dual_fmac_f32 v79, v4, v30
	v_dual_fmac_f32 v80, v8, v28 :: v_dual_fmac_f32 v77, v3, v29
	v_dual_fmac_f32 v75, v5, v31 :: v_dual_fmac_f32 v76, v6, v32
	v_dual_fmac_f32 v74, v1, v61 :: v_dual_fmac_f32 v73, v2, v62
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
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	.loc	1 1120 27 is_stmt 1             ; ragged.py:1120:27
	s_and_b32 vcc_lo, exec_lo, s36
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v1, 0
	s_mov_b32 s65, s3
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
	s_add_i32 s42, s65, s50
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1130 46                       ; ragged.py:1130:46
	s_add_i32 s43, s42, s63
	.loc	1 1131 46                       ; ragged.py:1131:46
	s_add_i32 s42, s42, s38
	v_add_nc_u32_e32 v33, s43, v49
	v_add_nc_u32_e32 v34, s43, v122
	v_add_nc_u32_e32 v37, s43, v123
	v_add_nc_u32_e32 v39, s43, v124
	v_add_nc_u32_e32 v38, s43, v50
	.loc	1 1130 38                       ; ragged.py:1130:38
	v_cndmask_b32_e64 v33, 0x80000000, v33, s0
	v_add_nc_u32_e32 v41, s43, v53
	v_add_nc_u32_e32 v44, s43, v125
	v_add_nc_u32_e32 v42, s43, v54
	v_add_nc_u32_e32 v45, s43, v55
	buffer_load_u8 v36, v33, s[52:55], 0 offen
	v_cndmask_b32_e64 v33, 0x80000000, v34, s1
	v_add_nc_u32_e32 v48, s43, v58
	v_add_nc_u32_e32 v43, s43, v51
	v_add_nc_u32_e32 v46, s43, v56
	v_add_nc_u32_e32 v47, s43, v57
	buffer_load_u8 v35, v33, s[52:55], 0 offen
	v_cndmask_b32_e64 v33, 0x80000000, v37, s4
	v_cndmask_b32_e64 v37, 0x80000000, v39, s6
	v_add_nc_u32_e32 v61, s43, v59
	v_add_nc_u32_e32 v62, s43, v60
	v_add_nc_u32_e32 v63, s43, v52
	s_clause 0x1
	buffer_load_u8 v34, v33, s[52:55], 0 offen
	buffer_load_u8 v40, v37, s[52:55], 0 offen
	v_cndmask_b32_e64 v33, 0x80000000, v38, s5
	v_cndmask_b32_e64 v37, 0x80000000, v41, s7
	v_cndmask_b32_e64 v41, 0x80000000, v44, s10
	.loc	1 1131 46                       ; ragged.py:1131:46
	s_mul_i32 s42, s42, s39
	.loc	1 1131 38 is_stmt 0             ; ragged.py:1131:38
	s_mov_b32 s43, s55
	.loc	1 1130 38 is_stmt 1             ; ragged.py:1130:38
	s_clause 0x2
	buffer_load_u8 v33, v33, s[52:55], 0 offen
	buffer_load_u8 v39, v37, s[52:55], 0 offen
	buffer_load_u8 v44, v41, s[52:55], 0 offen
	v_cndmask_b32_e64 v37, 0x80000000, v42, s8
	v_cndmask_b32_e64 v41, 0x80000000, v45, s11
	v_cndmask_b32_e64 v45, 0x80000000, v48, s14
	.loc	1 1131 46                       ; ragged.py:1131:46
	v_add_nc_u32_e32 v64, s42, v129
	v_add_nc_u32_e32 v65, s42, v130
	.loc	1 1130 38                       ; ragged.py:1130:38
	buffer_load_u8 v38, v37, s[52:55], 0 offen
	.loc	1 1131 46                       ; ragged.py:1131:46
	v_add_nc_u32_e32 v66, s42, v131
	.loc	1 1130 38                       ; ragged.py:1130:38
	buffer_load_u8 v48, v45, s[52:55], 0 offen
	v_cndmask_b32_e64 v37, 0x80000000, v43, s9
	buffer_load_u8 v43, v41, s[52:55], 0 offen
	v_cndmask_b32_e64 v41, 0x80000000, v46, s12
	v_cndmask_b32_e64 v45, 0x80000000, v61, s15
	.loc	1 1131 46                       ; ragged.py:1131:46
	v_add_nc_u32_e32 v61, s42, v126
	.loc	1 1130 38                       ; ragged.py:1130:38
	buffer_load_u8 v37, v37, s[52:55], 0 offen
	.loc	1 1131 46                       ; ragged.py:1131:46
	v_add_nc_u32_e32 v67, s42, v132
	.loc	1 1130 38                       ; ragged.py:1130:38
	buffer_load_u8 v42, v41, s[52:55], 0 offen
	v_cndmask_b32_e64 v41, 0x80000000, v47, s13
	buffer_load_u8 v47, v45, s[52:55], 0 offen
	v_cndmask_b32_e64 v45, 0x80000000, v62, s16
	.loc	1 1131 46                       ; ragged.py:1131:46
	v_add_nc_u32_e32 v62, s42, v127
	.loc	1 1131 38 is_stmt 0             ; ragged.py:1131:38
	v_cndmask_b32_e64 v61, 0x80000000, v61, s35
	.loc	1 1130 38 is_stmt 1             ; ragged.py:1130:38
	buffer_load_u8 v41, v41, s[52:55], 0 offen
	.loc	1 1131 46                       ; ragged.py:1131:46
	v_add_nc_u32_e32 v68, s42, v133
	.loc	1 1130 38                       ; ragged.py:1130:38
	buffer_load_u8 v46, v45, s[52:55], 0 offen
	v_cndmask_b32_e64 v45, 0x80000000, v63, s17
	.loc	1 1131 46                       ; ragged.py:1131:46
	v_add_nc_u32_e32 v63, s42, v128
	.loc	1 1131 38 is_stmt 0             ; ragged.py:1131:38
	v_cndmask_b32_e64 v62, 0x80000000, v62, s35
	.loc	1 1131 46                       ; ragged.py:1131:46
	v_add_nc_u32_e32 v69, s42, v134
	v_add_nc_u32_e32 v70, s42, v135
	v_add_nc_u32_e32 v155, s42, v136
	.loc	1 1131 38                       ; ragged.py:1131:38
	v_cndmask_b32_e64 v63, 0x80000000, v63, s35
	.loc	1 1131 46                       ; ragged.py:1131:46
	v_add_nc_u32_e32 v156, s42, v137
	v_add_nc_u32_e32 v157, s42, v138
	v_add_nc_u32_e32 v158, s42, v139
	v_add_nc_u32_e32 v159, s42, v140
	v_add_nc_u32_e32 v160, s42, v141
	.loc	1 1131 38                       ; ragged.py:1131:38
	s_mov_b32 s42, s54
	v_cndmask_b32_e64 v64, 0x80000000, v64, s35
	v_cndmask_b32_e64 v65, 0x80000000, v65, s35
	s_clause 0x4
	buffer_load_u8 v61, v61, s[40:43], 0 offen
	buffer_load_u8 v62, v62, s[40:43], 0 offen
	buffer_load_u8 v63, v63, s[40:43], 0 offen
	buffer_load_u8 v64, v64, s[40:43], 0 offen
	buffer_load_u8 v65, v65, s[40:43], 0 offen
	v_cndmask_b32_e64 v66, 0x80000000, v66, s35
	v_cndmask_b32_e64 v67, 0x80000000, v67, s35
	v_cndmask_b32_e64 v68, 0x80000000, v68, s35
	v_cndmask_b32_e64 v69, 0x80000000, v69, s35
	v_cndmask_b32_e64 v70, 0x80000000, v70, s35
	s_clause 0x2
	buffer_load_u8 v66, v66, s[40:43], 0 offen
	buffer_load_u8 v67, v67, s[40:43], 0 offen
	buffer_load_u8 v68, v68, s[40:43], 0 offen
	v_cndmask_b32_e64 v155, 0x80000000, v155, s35
	v_cndmask_b32_e64 v156, 0x80000000, v156, s35
	v_cndmask_b32_e64 v157, 0x80000000, v157, s35
	s_clause 0x4
	buffer_load_u8 v69, v69, s[40:43], 0 offen
	buffer_load_u8 v70, v70, s[40:43], 0 offen
	buffer_load_u8 v155, v155, s[40:43], 0 offen
	buffer_load_u8 v156, v156, s[40:43], 0 offen
	buffer_load_u8 v157, v157, s[40:43], 0 offen
	v_cndmask_b32_e64 v158, 0x80000000, v158, s35
	v_cndmask_b32_e64 v159, 0x80000000, v159, s35
	.loc	1 1130 38 is_stmt 1             ; ragged.py:1130:38
	buffer_load_u8 v45, v45, s[52:55], 0 offen
	.loc	1 1131 38                       ; ragged.py:1131:38
	v_cndmask_b32_e64 v160, 0x80000000, v160, s35
	s_clause 0x2
	buffer_load_u8 v158, v158, s[40:43], 0 offen
	buffer_load_u8 v159, v159, s[40:43], 0 offen
	buffer_load_u8 v160, v160, s[40:43], 0 offen
	.loc	1 1130 38                       ; ragged.py:1130:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1142 25                       ; ragged.py:1142:25
	s_add_i32 s42, s65, 32
	.loc	1 1120 27                       ; ragged.py:1120:27
	s_cmpk_lt_i32 s65, 0x60
	s_mov_b32 s65, s42
	.loc	1 1130 38                       ; ragged.py:1130:38
	s_waitcnt vmcnt(31)
	ds_store_b8 v146, v36
	s_waitcnt vmcnt(28)
	ds_store_b8 v146, v40 offset:512
	s_waitcnt vmcnt(25)
	ds_store_b8 v146, v44 offset:1024
	s_waitcnt vmcnt(23)
	ds_store_b8 v146, v48 offset:1536
	ds_store_b8 v147, v35
	ds_store_b8 v147, v39 offset:512
	s_waitcnt vmcnt(22)
	ds_store_b8 v147, v43 offset:1024
	s_waitcnt vmcnt(19)
	ds_store_b8 v147, v47 offset:1536
	ds_store_b8 v148, v34
	ds_store_b8 v148, v38 offset:512
	ds_store_b8 v148, v42 offset:1024
	s_waitcnt vmcnt(17)
	ds_store_b8 v148, v46 offset:1536
	ds_store_b8 v149, v33
	ds_store_b8 v149, v37 offset:512
	ds_store_b8 v149, v41 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v149, v45 offset:1536
	v_add_nc_u32_e32 v33, 0, v142
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[45:48], v33 offset1:2
	ds_load_2addr_stride64_b64 v[41:44], v150 offset1:2
	ds_load_2addr_stride64_b64 v[37:40], v151 offset1:2
	ds_load_2addr_stride64_b64 v[33:36], v152 offset1:2
	.loc	1 1131 38                       ; ragged.py:1131:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v146, v61
	ds_store_b8 v146, v62 offset:128
	ds_store_b8 v146, v63 offset:256
	ds_store_b8 v146, v64 offset:384
	ds_store_b8 v146, v65 offset:512
	ds_store_b8 v146, v66 offset:640
	ds_store_b8 v146, v67 offset:768
	ds_store_b8 v153, v68
	ds_store_b8 v146, v69 offset:1024
	ds_store_b8 v146, v70 offset:1152
	ds_store_b8 v146, v155 offset:1280
	ds_store_b8 v146, v156 offset:1408
	ds_store_b8 v146, v157 offset:1536
	s_waitcnt vmcnt(2)
	ds_store_b8 v146, v158 offset:1664
	s_waitcnt vmcnt(1)
	ds_store_b8 v146, v159 offset:1792
	s_waitcnt vmcnt(0)
	ds_store_b8 v154, v160
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1132 35                       ; ragged.py:1132:35
	ds_load_u8 v61, v143 offset:320
	ds_load_u8 v62, v143 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v143 offset:448
	ds_load_u8 v63, v143 offset:384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v143 offset:64
	ds_load_u8 v63, v143
	ds_load_u8 v65, v143 offset:32
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v61, v63, v61, 0xc0c0004
	ds_load_u8 v63, v143 offset:192
	ds_load_u8 v64, v143 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v63, 16, v61
	ds_load_u8 v63, v143 offset:832
	ds_load_u8 v64, v143 offset:768
	v_wmma_i32_16x16x16_iu4 v[1:8], v[61:62], v[45:46], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[61:62], v[47:48], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v64, v143 offset:960
	ds_load_u8 v66, v143 offset:896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v66, v64, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v64, 16, v63
	ds_load_u8 v63, v143 offset:576
	ds_load_u8 v66, v143 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v66, v63, 0xc0c0004
	ds_load_u8 v66, v143 offset:704
	ds_load_u8 v67, v143 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v66, 16, v63
	ds_load_u8 v66, v143 offset:1344
	ds_load_u8 v67, v143 offset:1280
	v_wmma_i32_16x16x16_iu4 v[1:8], v[63:64], v[41:42], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[63:64], v[43:44], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v143 offset:1472
	ds_load_u8 v68, v143 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v67, 16, v66
	ds_load_u8 v66, v143 offset:1088
	ds_load_u8 v67, v143 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v143 offset:1216
	ds_load_u8 v69, v143 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v69, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v67, 16, v66
	ds_load_u8 v66, v143 offset:1856
	ds_load_u8 v69, v143 offset:1792
	v_wmma_i32_16x16x16_iu4 v[1:8], v[67:68], v[37:38], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[67:68], v[39:40], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v69, v66, 0xc0c0004
	ds_load_u8 v69, v143 offset:1984
	ds_load_u8 v70, v143 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v69, 16, v66
	ds_load_u8 v66, v143 offset:1600
	ds_load_u8 v69, v143 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v69, v66, 0xc0c0004
	ds_load_u8 v69, v143 offset:1728
	ds_load_u8 v155, v143 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v155, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v69, 16, v66
	ds_load_u8 v66, v143 offset:352
	ds_load_u8 v155, v143 offset:288
	v_wmma_i32_16x16x16_iu4 v[1:8], v[69:70], v[33:34], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[69:70], v[35:36], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v155, v66, 0xc0c0004
	ds_load_u8 v155, v143 offset:480
	ds_load_u8 v156, v143 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v155, 16, v66
	ds_load_u8 v155, v143 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v65, v155, 0xc0c0004
	ds_load_u8 v155, v143 offset:224
	ds_load_u8 v156, v143 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v155, 16, v65
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[45:46], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v45, v143 offset:864
	ds_load_u8 v46, v143 offset:800
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[47:48], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v143 offset:992
	ds_load_u8 v155, v143 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v155, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	ds_load_u8 v45, v143 offset:608
	ds_load_u8 v155, v143 offset:544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v155, v45, 0xc0c0004
	ds_load_u8 v155, v143 offset:736
	ds_load_u8 v156, v143 offset:672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v155, 16, v45
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[41:42], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v41, v143 offset:1376
	ds_load_u8 v42, v143 offset:1312
	v_wmma_i32_16x16x16_iu4 v[25:32], v[45:46], v[43:44], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v143 offset:1504
	ds_load_u8 v155, v143 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v155, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v42, 16, v41
	ds_load_u8 v41, v143 offset:1120
	ds_load_u8 v155, v143 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v155, v41, 0xc0c0004
	ds_load_u8 v155, v143 offset:1248
	ds_load_u8 v156, v143 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v155, 16, v41
	v_wmma_i32_16x16x16_iu4 v[9:16], v[41:42], v[37:38], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v37, v143 offset:1888
	ds_load_u8 v38, v143 offset:1824
	v_wmma_i32_16x16x16_iu4 v[25:32], v[41:42], v[39:40], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v143 offset:2016
	ds_load_u8 v155, v143 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v155, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v38, 16, v37
	ds_load_u8 v37, v143 offset:1632
	ds_load_u8 v155, v143 offset:1568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v155, v37, 0xc0c0004
	ds_load_u8 v155, v143 offset:1760
	ds_load_u8 v156, v143 offset:1696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v37, v155, 16, v37
	v_wmma_i32_16x16x16_iu4 v[9:16], v[37:38], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[37:38], v[35:36], v[25:32] neg_lo:[1,1,0]
	.loc	1 1120 27                       ; ragged.py:1120:27
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1204 27                       ; ragged.py:1204:27
	v_cvt_f32_i32_e32 v48, v1
	v_cvt_f32_i32_e32 v47, v2
	v_cvt_f32_i32_e32 v46, v3
	v_cvt_f32_i32_e32 v45, v4
	v_cvt_f32_i32_e32 v44, v5
	v_cvt_f32_i32_e32 v43, v6
	v_cvt_f32_i32_e32 v42, v7
	v_cvt_f32_i32_e32 v41, v8
	v_cvt_f32_i32_e32 v40, v9
	v_cvt_f32_i32_e32 v39, v10
	v_cvt_f32_i32_e32 v38, v11
	v_cvt_f32_i32_e32 v37, v12
	v_cvt_f32_i32_e32 v36, v13
	v_cvt_f32_i32_e32 v35, v14
	v_cvt_f32_i32_e32 v34, v15
	v_cvt_f32_i32_e32 v33, v16
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
.LBB0_10:                               ; %._crit_edge62
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v14, 24, v85
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_mul_i32 s3, s61, s39
	.loc	1 1239 17 is_stmt 0             ; ragged.py:1239:17
	v_bfe_u32 v22, v104, 16, 1
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_add_i32 s18, s3, s60
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cmp_o_f32_e64 s3, v102, v102
	.loc	1 1003 36 is_stmt 1             ; ragged.py:1003:36
	v_or_b32_e32 v5, 39, v14
	v_or_b32_e32 v9, 35, v14
	v_or_b32_e32 v10, 34, v14
	v_or_b32_e32 v6, 38, v14
	v_or_b32_e32 v13, 7, v14
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v1, s60, v5
	v_or_b32_e32 v11, s60, v9
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v7, 37, v14
	v_or_b32_e32 v8, 36, v14
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v2, s60, v6
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s39, v1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v1, s60, v10
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s5, s39, v11
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v11, 33, v14
	v_or_b32_e32 v16, 5, v14
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v3, s60, v7
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s6, s39, v1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v1, s60, v13
	v_or_b32_e32 v4, s60, v8
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v12, 32, v14
	v_or_b32_e32 v15, 6, v14
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s0, s39, v2
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v2, s60, v11
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s9, s39, v1
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v17, 4, v14
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v1, s60, v16
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v19, 2, v14
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s39, v3
	v_cmp_gt_i32_e64 s4, s39, v4
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v3, s60, v12
	v_or_b32_e32 v4, s60, v15
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v18, 3, v14
	v_or_b32_e32 v20, 1, v14
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s7, s39, v2
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v2, s60, v17
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s11, s39, v1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v1, s60, v19
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s8, s39, v3
	v_cmp_gt_i32_e64 s10, s39, v4
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v3, s60, v18
	v_or_b32_e32 v4, s60, v20
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s12, s39, v2
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v2, s60, v14
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s14, s39, v1
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v1, v102, 16, 1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s13, s39, v3
	v_cmp_gt_i32_e64 s15, s39, v4
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_mad_u64_u32 v[3:4], null, s39, v72, s[18:19]
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s16, s39, v2
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add3_u32 v4, v102, v1, 0x7fff
	.loc	1 1239 26 is_stmt 0             ; ragged.py:1239:26
	v_mad_u64_u32 v[1:2], null, s39, v71, s[18:19]
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v2, v105, 16, 1
	v_bfe_u32 v23, v103, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s3
	v_cmp_o_f32_e64 s3, v105, v105
	v_add3_u32 v22, v104, v22, 0x7fff
	v_add3_u32 v2, v105, v2, 0x7fff
	v_cmp_o_f32_e64 s17, v104, v104
	v_add3_u32 v23, v103, v23, 0x7fff
	v_cmp_o_f32_e64 s18, v103, v103
	v_bfe_u32 v24, v100, 16, 1
	v_cndmask_b16 v4.h, 0x7fff, v2.h, s3
	v_bfe_u32 v2, v101, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s17
	v_cndmask_b16 v22.h, 0x7fff, v23.h, s18
	v_bfe_u32 v23, v99, 16, 1
	v_cmp_o_f32_e64 s3, v101, v101
	v_add3_u32 v2, v101, v2, 0x7fff
	v_add3_u32 v24, v100, v24, 0x7fff
	v_cmp_o_f32_e64 s17, v100, v100
	v_bfe_u32 v25, v98, 16, 1
	v_add3_u32 v23, v99, v23, 0x7fff
	v_cmp_o_f32_e64 s18, v99, v99
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s3
	v_cndmask_b16 v2.h, 0x7fff, v24.h, s17
	v_bfe_u32 v24, v97, 16, 1
	v_bfe_u32 v26, v96, 16, 1
	v_add3_u32 v25, v98, v25, 0x7fff
	v_cmp_o_f32_e64 s3, v98, v98
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s18
	v_add3_u32 v24, v97, v24, 0x7fff
	v_cmp_o_f32_e64 s17, v97, v97
	v_add3_u32 v26, v96, v26, 0x7fff
	v_cmp_o_f32_e64 s18, v96, v96
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s3
	v_bfe_u32 v25, v95, 16, 1
	v_bfe_u32 v27, v94, 16, 1
	v_mov_b16_e32 v21.h, 0
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s17
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s18
	v_bfe_u32 v26, v93, 16, 1
	v_add3_u32 v25, v95, v25, 0x7fff
	v_cmp_o_f32_e64 s3, v95, v95
	v_add3_u32 v27, v94, v27, 0x7fff
	v_cmp_o_f32_e64 s17, v94, v94
	v_bfe_u32 v28, v92, 16, 1
	v_bfe_u32 v29, v91, 16, 1
	v_add3_u32 v26, v93, v26, 0x7fff
	v_cmp_o_f32_e64 s18, v93, v93
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s3
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s17
	v_add3_u32 v27, v92, v28, 0x7fff
	v_cmp_o_f32_e64 s3, v92, v92
	v_add3_u32 v28, v91, v29, 0x7fff
	v_mov_b16_e32 v29.l, v88.h
	v_mov_b16_e32 v29.h, v21.h
	v_mov_b16_e32 v21.l, v89.h
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s18
	v_bfe_u32 v30, v90, 16, 1
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s3
	v_and_b32_e32 v27, 1, v29
	v_and_b32_e32 v29, 1, v21
	v_mov_b16_e32 v21.l, v87.h
	v_cmp_o_f32_e64 s17, v91, v91
	v_add3_u32 v30, v90, v30, 0x7fff
	v_cmp_o_f32_e64 s3, v90, v90
	v_add3_u32 v27, v88, v27, 0x7fff
	v_cmp_o_f32_e64 s18, v88, v88
	v_mov_b16_e32 v31.l, v86.h
	v_mov_b16_e32 v31.h, v21.h
	v_and_b32_e32 v32, 1, v21
	v_add3_u32 v29, v89, v29, 0x7fff
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s17
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s3
	v_cndmask_b16 v29.l, 0x7fff, v27.h, s18
	v_and_b32_e32 v27, 1, v31
	v_add3_u32 v30, v87, v32, 0x7fff
	v_cmp_o_f32_e64 s3, v87, v87
	v_mov_b16_e32 v21.l, v84.h
	v_mov_b16_e32 v31.l, v83.h
	v_add3_u32 v27, v86, v27, 0x7fff
	v_mov_b16_e32 v33.l, v81.h
	v_cndmask_b16 v30.h, 0x7fff, v30.h, s3
	v_cmp_o_f32_e64 s3, v86, v86
	v_and_b32_e32 v32, 1, v21
	v_and_b32_e32 v31, 1, v31
	v_mov_b16_e32 v33.h, v21.h
	v_mov_b16_e32 v21.l, v82.h
	v_cndmask_b16 v30.l, 0x7fff, v27.h, s3
	v_cmp_o_f32_e64 s3, v83, v83
	v_add3_u32 v31, v83, v31, 0x7fff
	v_and_b32_e32 v27, 1, v33
	v_and_b32_e32 v33, 1, v21
	v_mov_b16_e32 v21.l, v80.h
	v_add3_u32 v32, v84, v32, 0x7fff
	v_cmp_o_f32_e64 s17, v89, v89
	v_add3_u32 v27, v81, v27, 0x7fff
	v_cmp_o_f32_e64 s18, v81, v81
	v_mov_b16_e32 v34.l, v78.h
	v_mov_b16_e32 v34.h, v21.h
	v_cndmask_b16 v32.l, 0x7fff, v31.h, s3
	v_and_b32_e32 v31, 1, v21
	v_mov_b16_e32 v21.l, v79.h
	v_add3_u32 v33, v82, v33, 0x7fff
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s17
	v_cmp_o_f32_e64 s17, v84, v84
	v_cndmask_b16 v33.l, 0x7fff, v27.h, s18
	v_and_b32_e32 v27, 1, v34
	v_add3_u32 v31, v80, v31, 0x7fff
	v_cmp_o_f32_e64 s3, v80, v80
	v_mov_b16_e32 v34.l, v77.h
	v_and_b32_e32 v35, 1, v21
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s17
	v_cmp_o_f32_e64 s17, v82, v82
	v_cndmask_b16 v31.h, 0x7fff, v31.h, s3
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v35, v79, v35, 0x7fff
	v_cmp_o_f32_e64 s3, v79, v79
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s17
	v_add3_u32 v27, v78, v27, 0x7fff
	v_cmp_o_f32_e64 s17, v78, v78
	v_add3_u32 v34, v77, v34, 0x7fff
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s3
	v_mov_b16_e32 v21.l, v76.h
	v_cmp_o_f32_e64 s3, v77, v77
	v_mov_b16_e32 v36.l, v74.h
	v_mov_b16_e32 v36.h, v21.h
	v_cndmask_b16 v31.l, 0x7fff, v27.h, s17
	v_mov_b16_e32 v27.l, v75.h
	v_mov_b16_e32 v27.h, v21.h
	v_and_b32_e32 v37, 1, v21
	v_mov_b16_e32 v21.l, v73.h
	v_cndmask_b16 v35.l, 0x7fff, v34.h, s3
	v_and_b32_e32 v34, 1, v36
	v_and_b32_e32 v27, 1, v27
	v_add3_u32 v36, v76, v37, 0x7fff
	v_and_b32_e32 v37, 1, v21
	v_cmp_o_f32_e64 s3, v76, v76
	v_add3_u32 v34, v74, v34, 0x7fff
	v_and_b32_e32 v0, 16, v0
	v_cmp_o_f32_e64 s19, v74, v74
	v_add3_u32 v27, v75, v27, 0x7fff
	v_cmp_o_f32_e64 s17, v75, v75
	v_add3_u32 v37, v73, v37, 0x7fff
	v_cmp_o_f32_e64 s18, v73, v73
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
	s_and_b32 s3, s37, s16
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v52, v3, v19, 1
	v_cndmask_b32_e64 v50, 0x80000000, v50, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s37, s15
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
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	v_cndmask_b32_e64 v51, 0x80000000, v51, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s37, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v35, v50, s[48:51], 0 offen
	v_cndmask_b32_e64 v50, 0x80000000, v52, s3
	v_add_lshl_u32 v35, v3, v18, 1
	buffer_store_b16 v33, v51, s[48:51], 0 offen
	v_add_lshl_u32 v33, v3, v17, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s37, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_permlanex16_b32 v0, v0, s17, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e32 v21.l, v2.h
	buffer_store_b16 v2, v50, s[48:51], 0 offen
	v_add_lshl_u32 v2, v3, v16, 1
	v_cndmask_b32_e64 v35, 0x80000000, v35, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s37, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_perm_b32 v32, v0, v36, v32
	v_cndmask_b32_e64 v33, 0x80000000, v33, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s37, s11
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
	buffer_store_b16 v21, v35, s[48:51], 0 offen
	v_add_lshl_u32 v21, v3, v15, 1
	buffer_store_b16 v27, v33, s[48:51], 0 offen
	v_add_lshl_u32 v27, v3, v13, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s37, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v36, v2, s[48:51], 0 offen
	v_add_lshl_u32 v2, v3, v12, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s37, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v34.l, v4.h
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s37, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v4, v21, s[48:51], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v4, v3, v11, 1
	v_add_lshl_u32 v21, v3, v10, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s37, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b16 v34, v27, s[48:51], 0 offen
	buffer_store_b16 v22, v2, s[48:51], 0 offen
	v_add_lshl_u32 v2, v3, v9, 1
	v_mov_b16_e32 v39.l, v22.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s37, s6
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v38.l, v23.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s37, s5
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v39, v4, s[48:51], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v4, v3, v8, 1
	buffer_store_b16 v23, v21, s[48:51], 0 offen
	v_add_lshl_u32 v21, v3, v7, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s37, s4
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v38, v2, s[48:51], 0 offen
	v_add_lshl_u32 v2, v3, v6, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s37, s1
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v41.l, v24.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s37, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v3, v3, v5, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	buffer_store_b16 v24, v4, s[48:51], 0 offen
	v_add_lshl_u32 v4, v1, v14, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s37, vcc_lo
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b16 v41, v21, s[48:51], 0 offen
	buffer_store_b16 v25, v2, s[48:51], 0 offen
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
	buffer_store_b16 v40, v3, s[48:51], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v3, v1, v19, 1
	buffer_store_b16 v26, v4, s[48:51], 0 offen
	v_add_lshl_u32 v4, v1, v18, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v43, v2, s[48:51], 0 offen
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
	buffer_store_b16 v28, v3, s[48:51], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v3, v1, v16, 1
	buffer_store_b16 v42, v4, s[48:51], 0 offen
	v_add_lshl_u32 v4, v1, v15, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v29, v2, s[48:51], 0 offen
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
	buffer_store_b16 v45, v3, s[48:51], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v3, v1, v12, 1
	buffer_store_b16 v30, v4, s[48:51], 0 offen
	v_add_lshl_u32 v4, v1, v11, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v44, v2, s[48:51], 0 offen
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
	buffer_store_b16 v37, v3, s[48:51], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v3, v1, v9, 1
	buffer_store_b16 v47, v4, s[48:51], 0 offen
	v_add_lshl_u32 v4, v1, v8, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s5
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v31, v2, s[48:51], 0 offen
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
	buffer_store_b16 v46, v3, s[48:51], 0 offen
	buffer_store_b16 v32, v4, s[48:51], 0 offen
	buffer_store_b16 v49, v2, s[48:51], 0 offen
	buffer_store_b16 v0, v5, s[48:51], 0 offen
	buffer_store_b16 v48, v1, s[48:51], 0 offen
	.loc	1 970 5                         ; ragged.py:970:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 161
		.amdhsa_next_free_sgpr 74
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_vgpr, 161
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.numbered_sgpr, 74
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8984
; TotalNumSgprs: 76
; NumVgprs: 161
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 20
; NumSGPRsForWavesPerEU: 76
; NumVGPRsForWavesPerEU: 161
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     76
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     161
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
