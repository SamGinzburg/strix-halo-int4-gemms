	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[16:17], s[0:1], 0x30
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s16, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s17, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_ashr_i32 s6, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s7, s5, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_lshr_b32 s6, s6, 26
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_lshr_b32 s7, s7, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_add_i32 s4, s4, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s5, s7
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_ashr_i32 s4, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s6, s5, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s6, s4
	.loc	1 1304 20                       ; ragged.py:1304:20
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
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s7, s6
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s5, s5, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s9, s7
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s18, s5, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s7
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s18, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s8, s2
	s_xor_b32 s10, s2, s6
	s_ashr_i32 s10, s10, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s5, s9
	s_mul_hi_u32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s9, s8, s9
	s_mul_i32 s11, s9, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s9, 1
	s_sub_i32 s12, s8, s7
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s9, s11, s9
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s9, 1
	s_cmp_ge_u32 s8, s7
	.loc	1 1331 39                       ; ragged.py:1331:39
	s_mul_i32 s8, s18, s17
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cselect_b32 s7, s11, s9
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s19, s18, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s7, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_sub_i32 s9, s7, s10
	s_mov_b32 s10, 0
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s6, s9, s6
	.loc	1 1307 17 is_stmt 0             ; ragged.py:1307:17
	s_sub_i32 s2, s2, s6
	.loc	1 1313 19 is_stmt 1             ; ragged.py:1313:19
	s_lshl_b64 s[6:7], s[18:19], 2
	.loc	1 1310 18                       ; ragged.py:1310:18
	s_lshl_b32 s2, s2, 6
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s6
	s_addc_u32 s5, s5, s7
	.loc	1 1322 22                       ; ragged.py:1322:22
	s_lshl_b32 s21, s3, 5
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s4, s[4:5], 0x0
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s4, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1314 26 is_stmt 0             ; ragged.py:1314:26
	s_lshr_b32 s5, s4, 31
	s_add_i32 s4, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s20, s4, 1
	.loc	1 1324 23 is_stmt 1             ; ragged.py:1324:23
	s_cmp_lt_i32 s21, s20
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1411 21                       ; ragged.py:1411:21
	s_add_i32 s3, s2, s8
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 21 is_stmt 0                ; ragged.py:0:21
	s_mov_b32 s10, -1
                                        ; implicit-def: $sgpr3
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x10
	s_load_b64 s[52:53], s[0:1], 0x28
	v_dual_mov_b32 v18, 0 :: v_dual_and_b32 v45, 15, v0
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v58, 64, v0
	v_dual_mov_b32 v19, 0 :: v_dual_and_b32 v60, 32, v0
	v_dual_mov_b32 v20, 0 :: v_dual_and_b32 v35, 24, v1
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v59, 0
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_lshl_b32 s19, s9, 6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b32 s9, s[0:1], 0x38
	s_load_b128 s[12:15], s[0:1], 0x0
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_and_b32_e32 v3, 63, v0
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s2, v1
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_lshlrev_b32_e32 v5, 4, v0
	s_add_i32 s3, s2, s8
	v_lshrrev_b32_e32 v4, 3, v58
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v6, s19, v3
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s17, v2
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_and_b32_e32 v2, 16, v5
	v_add_nc_u32_e32 v1, s3, v1
	v_cmp_eq_u32_e64 s1, 0, v58
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s16, v6
	v_mul_lo_u32 v7, s16, v4
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	v_cndmask_b32_e64 v8, 0x208, 0, s1
	s_lshl_b32 s22, s16, 1
	s_mul_i32 s23, s16, 3
	s_lshl_b32 s24, s16, 2
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[33:34], null, v1, s9, v[2:3]
	v_dual_mov_b32 v1, 0 :: v_dual_lshlrev_b32 v6, 1, v0
	v_and_b32_e32 v9, 24, v0
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_e32 v22, v1
	v_and_b32_e32 v6, 24, v6
	v_xor_b32_e32 v5, v5, v9
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v26, v1
	v_xor_b32_e32 v15, 8, v5
	v_add_nc_u32_e32 v46, 0, v5
	v_mov_b32_e32 v5, v1
	v_xor3_b32 v4, v35, v4, v6
	v_lshl_or_b32 v6, v45, 5, v6
	v_add_nc_u32_e32 v47, 0, v15
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_xor_b32_e32 v2, v6, v8
	v_lshl_or_b32 v6, v60, 4, v6
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v21, v1
	v_xor_b32_e32 v10, 8, v2
	v_xor_b32_e32 v11, 16, v2
	v_xor_b32_e32 v12, 24, v2
	v_xor_b32_e32 v9, 0x410, v2
	v_xor_b32_e32 v13, 0x418, v2
	v_xor_b32_e32 v14, 0x408, v2
	v_add_nc_u32_e32 v38, 0, v2
	v_mov_b32_e32 v2, v1
	v_lshl_or_b32 v4, v3, 5, v4
	v_xor_b32_e32 v16, 8, v6
	v_xor_b32_e32 v17, 16, v6
	v_xor_b32_e32 v18, 24, v6
	.loc	1 1324 23                       ; ragged.py:1324:23
	v_add3_u32 v34, v3, v7, s19
	v_xor_b32_e32 v8, 16, v4
	v_dual_mov_b32 v7, v1 :: v_dual_add_nc_u32 v36, 0, v4
	v_add_nc_u32_e32 v39, 0, v10
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v10, v1 :: v_dual_add_nc_u32 v37, 0, v8
	v_mov_b32_e32 v8, v1
	v_add_nc_u32_e32 v40, 0, v11
	v_mov_b32_e32 v11, v1
	v_add_nc_u32_e32 v41, 0, v12
	v_mov_b32_e32 v12, v1
	v_add_nc_u32_e32 v42, 0, v9
	v_add_nc_u32_e32 v43, 0, v13
	v_add_nc_u32_e32 v44, 0, v14
	v_add_nc_u32_e32 v48, 0, v6
	v_add_nc_u32_e32 v49, 0, v16
	v_add_nc_u32_e32 v50, 0, v17
	v_add_nc_u32_e32 v51, 0, v18
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
	s_mul_i32 s25, s16, 5
	s_mul_i32 s26, s16, 6
	s_mul_i32 s27, s16, 7
	s_lshl_b32 s28, s16, 4
	s_mul_i32 s29, s16, 17
	s_mul_i32 s30, s16, 18
	.loc	1 1327 39                       ; ragged.py:1327:39
	s_mul_i32 s31, s18, s9
	s_mul_i32 s33, s16, 19
	s_mul_i32 s34, s16, 20
	s_mul_i32 s35, s16, 21
	s_mul_i32 s36, s16, 22
	s_mul_i32 s37, s16, 23
	s_mov_b32 s8, s12
	s_mov_b32 s9, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1334 42                       ; ragged.py:1334:42
	s_add_i32 s1, s21, s31
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v54, s21, v33
	v_mad_u64_u32 v[52:53], null, s1, s16, v[34:35]
	.loc	1 1346 21                       ; ragged.py:1346:21
	s_add_i32 s21, s21, 32
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1324 23                       ; ragged.py:1324:23
	s_cmp_lt_i32 s21, s20
	v_add_nc_u32_e32 v62, s27, v52
	v_add_nc_u32_e32 v59, s25, v52
	v_add_nc_u32_e32 v56, s23, v52
	v_add_nc_u32_e32 v53, s16, v52
	v_add_nc_u32_e32 v64, s29, v52
	v_add_nc_u32_e32 v65, s30, v52
	v_add_nc_u32_e32 v66, s33, v52
	v_add_nc_u32_e32 v67, s34, v52
	v_add_nc_u32_e32 v68, s35, v52
	v_add_nc_u32_e32 v69, s36, v52
	v_add_nc_u32_e32 v70, s37, v52
	v_add_nc_u32_e32 v55, s22, v52
	v_add_nc_u32_e32 v57, s24, v52
	v_add_nc_u32_e32 v61, s26, v52
	v_add_nc_u32_e32 v63, s28, v52
	.loc	1 1334 34                       ; ragged.py:1334:34
	v_cndmask_b32_e64 v52, 0x80000000, v52, s0
	v_cndmask_b32_e64 v62, 0x80000000, v62, s0
	v_cndmask_b32_e64 v59, 0x80000000, v59, s0
	v_cndmask_b32_e64 v56, 0x80000000, v56, s0
	v_cndmask_b32_e64 v53, 0x80000000, v53, s0
	v_cndmask_b32_e64 v64, 0x80000000, v64, s0
	v_cndmask_b32_e64 v65, 0x80000000, v65, s0
	v_cndmask_b32_e64 v66, 0x80000000, v66, s0
	v_cndmask_b32_e64 v67, 0x80000000, v67, s0
	v_cndmask_b32_e64 v68, 0x80000000, v68, s0
	v_cndmask_b32_e64 v69, 0x80000000, v69, s0
	v_cndmask_b32_e64 v70, 0x80000000, v70, s0
	v_cndmask_b32_e64 v55, 0x80000000, v55, s0
	v_cndmask_b32_e64 v57, 0x80000000, v57, s0
	v_cndmask_b32_e64 v61, 0x80000000, v61, s0
	v_cndmask_b32_e64 v63, 0x80000000, v63, s0
	s_clause 0xf
	buffer_load_u8 v71, v52, s[8:11], 0 offen
	buffer_load_u8 v62, v62, s[8:11], 0 offen
	buffer_load_u8 v59, v59, s[8:11], 0 offen
	buffer_load_u8 v72, v56, s[8:11], 0 offen
	buffer_load_u8 v73, v53, s[8:11], 0 offen
	buffer_load_u8 v70, v70, s[8:11], 0 offen
	buffer_load_u8 v68, v68, s[8:11], 0 offen
	buffer_load_u8 v66, v66, s[8:11], 0 offen
	buffer_load_u8 v64, v64, s[8:11], 0 offen
	buffer_load_u8 v74, v61, s[8:11], 0 offen
	buffer_load_u8 v75, v57, s[8:11], 0 offen
	buffer_load_u8 v76, v55, s[8:11], 0 offen
	buffer_load_u8 v69, v69, s[8:11], 0 offen
	buffer_load_u8 v67, v67, s[8:11], 0 offen
	buffer_load_u8 v65, v65, s[8:11], 0 offen
	buffer_load_u8 v77, v63, s[8:11], 0 offen
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e32 v52, 0x80000000, v54, vcc_lo
	buffer_load_b128 v[52:55], v52, s[12:15], 0 offen
	.loc	1 1334 34                       ; ragged.py:1334:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	v_lshlrev_b16 v56.l, 8, v62.l
	s_waitcnt vmcnt(14)
	v_lshlrev_b16 v56.h, 8, v59.l
	s_waitcnt vmcnt(13)
	v_lshlrev_b16 v57.l, 8, v72.l
	s_waitcnt vmcnt(12)
	v_lshlrev_b16 v57.h, 8, v73.l
	s_waitcnt vmcnt(11)
	v_lshlrev_b16 v59.l, 8, v70.l
	s_waitcnt vmcnt(10)
	v_lshlrev_b16 v59.h, 8, v68.l
	s_waitcnt vmcnt(9)
	v_lshlrev_b16 v61.l, 8, v66.l
	s_waitcnt vmcnt(8)
	v_lshlrev_b16 v61.h, 8, v64.l
	s_waitcnt vmcnt(7)
	v_or_b16 v63.h, v74.l, v56.l
	s_waitcnt vmcnt(6)
	v_or_b16 v63.l, v75.l, v56.h
	s_waitcnt vmcnt(5)
	v_or_b16 v62.h, v76.l, v57.l
	v_or_b16 v62.l, v71.l, v57.h
	s_waitcnt vmcnt(4)
	v_or_b16 v57.h, v69.l, v59.l
	s_waitcnt vmcnt(3)
	v_or_b16 v57.l, v67.l, v59.h
	s_waitcnt vmcnt(2)
	v_or_b16 v56.h, v65.l, v61.l
	s_waitcnt vmcnt(1)
	v_or_b16 v56.l, v77.l, v61.h
	ds_store_b64 v36, v[62:63]
	ds_store_b64 v37, v[56:57]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[61:64], v38 offset1:2
	ds_load_b64 v[56:57], v39
	ds_load_b64 v[77:78], v40
	ds_load_b64 v[79:80], v41
	ds_load_b64 v[81:82], v42
	ds_load_b64 v[83:84], v43
	ds_load_b64 v[85:86], v44
	.loc	1 1335 34                       ; ragged.py:1335:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v46, v[52:53]
	ds_store_b64 v47, v[54:55]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[52:55], v48 offset1:2
	ds_load_2addr_stride64_b64 v[65:68], v49 offset1:2
	ds_load_2addr_stride64_b64 v[69:72], v50 offset1:2
	ds_load_2addr_stride64_b64 v[73:76], v51 offset1:2
	.loc	1 1336 31                       ; ragged.py:1336:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[52:53], v[61:62], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[54:55], v[61:62], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[52:53], v[81:82], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[54:55], v[81:82], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[65:66], v[56:57], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[67:68], v[56:57], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[83:84], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[67:68], v[83:84], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[69:70], v[77:78], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[71:72], v[77:78], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[69:70], v[63:64], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[71:72], v[63:64], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[73:74], v[79:80], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[75:76], v[79:80], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[73:74], v[85:86], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[75:76], v[85:86], v[25:32] neg_lo:[1,1,0]
	.loc	1 1324 23                       ; ragged.py:1324:23
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v59, v1
	v_cvt_f32_i32_e32 v57, v2
	v_cvt_f32_i32_e32 v56, v3
	v_cvt_f32_i32_e32 v55, v4
	v_cvt_f32_i32_e32 v54, v5
	v_cvt_f32_i32_e32 v53, v6
	v_cvt_f32_i32_e32 v52, v7
	v_cvt_f32_i32_e32 v51, v8
	v_cvt_f32_i32_e32 v50, v9
	v_cvt_f32_i32_e32 v49, v10
	v_cvt_f32_i32_e32 v48, v11
	v_cvt_f32_i32_e32 v47, v12
	v_cvt_f32_i32_e32 v46, v13
	v_cvt_f32_i32_e32 v44, v14
	v_cvt_f32_i32_e32 v43, v15
	v_cvt_f32_i32_e32 v42, v16
	v_cvt_f32_i32_e32 v40, v17
	v_cvt_f32_i32_e32 v41, v18
	v_cvt_f32_i32_e32 v36, v19
	v_cvt_f32_i32_e32 v37, v20
	v_cvt_f32_i32_e32 v38, v21
	v_cvt_f32_i32_e32 v39, v22
	v_cvt_f32_i32_e32 v33, v23
	v_cvt_f32_i32_e32 v34, v24
	v_cvt_f32_i32_e32 v23, v25
	v_cvt_f32_i32_e32 v24, v26
	v_cvt_f32_i32_e32 v19, v27
	v_cvt_f32_i32_e32 v20, v28
	v_cvt_f32_i32_e32 v21, v29
	v_cvt_f32_i32_e32 v22, v30
	v_cvt_f32_i32_e32 v18, v31
	v_cvt_f32_i32_e32 v17, v32
.LBB0_7:                                ; %._crit_edge
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v1, 4, v0
	v_lshrrev_b32_e32 v2, 1, v60
	.loc	1 1404 33                       ; ragged.py:1404:33
	s_mul_i32 s0, s18, s16
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s49, s5, 0xffff
	.loc	1 1404 21                       ; ragged.py:1404:21
	s_add_i32 s8, s19, s0
	s_mov_b32 s51, 0x31027000
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_or_b32 v2, v1, 1, v2
	v_lshrrev_b32_e32 v1, 2, v58
	s_mov_b32 s50, 0x7ffffffe
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_mov_b32 s48, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_and_b32 s53, s53, 0xffff
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v62, 2, v2
	v_or_b32_e32 v1, v1, v45
	v_or_b32_e32 v3, 46, v2
	v_or_b32_e32 v4, 44, v2
	v_or_b32_e32 v5, 42, v2
	v_or_b32_e32 v6, 40, v2
	.loc	1 1309 18 is_stmt 0             ; ragged.py:1309:18
	v_or_b32_e32 v68, s19, v1
	.loc	1 1403 36 is_stmt 1             ; ragged.py:1403:36
	v_add_lshl_u32 v69, s8, v1, 1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v7, 38, v2
	v_or_b32_e32 v8, 36, v2
	v_or_b32_e32 v9, 34, v2
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s16, v68
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v16, 32, v2
	v_or_b32_e32 v27, 14, v2
	v_or_b32_e32 v28, 12, v2
	v_or_b32_e32 v29, 10, v2
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e64 v68, 0x80000000, v69, s0
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v69, s2, v2
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v60, 8, v2
	v_or_b32_e32 v45, 6, v2
	v_or_b32_e32 v61, 4, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v66, s2, v62
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v2, s3, v2, 1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s17, v69
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v62, s3, v62, 1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v65, s2, v61
	v_or_b32_e32 v64, s2, v45
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v61, s3, v61, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s17, v66
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v63, s2, v60
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v45, s3, v45, 1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v58, s2, v29
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v60, s3, v60, 1
	v_cndmask_b32_e64 v62, 0x80000000, v62, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s17, v65
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v26, 32, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v32, s2, v28
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v29, s3, v29, 1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v31, s2, v27
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v61, 0x80000000, v61, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s17, v64
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v67, s19, v26
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v28, s3, v28, 1
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_lshl_u32 v70, s8, v26, 1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v30, s2, v16
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v45, 0x80000000, v45, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s17, v63
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s16, v67
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v27, s3, v27, 1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v25, s2, v9
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v16, s3, v16, 1
	v_cndmask_b32_e64 v60, 0x80000000, v60, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s17, v58
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_dual_cndmask_b32 v67, 0x80000000, v70 :: v_dual_and_b32 v72, 16, v0
	s_clause 0x1
	buffer_load_u16 v68, v68, s[48:51], 0 offen
	buffer_load_u16 v67, v67, s[48:51], 0 offen
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v29, 0x80000000, v29, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s17, v32
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_and_b32 s49, s7, 0xffff
	s_mov_b32 s48, s6
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v15, s2, v8
	v_or_b32_e32 v14, s2, v7
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v28, 0x80000000, v28, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s17, v31
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v8, s3, v8, 1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v13, s2, v6
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v7, s3, v7, 1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v12, s2, v5
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v27, 0x80000000, v27, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s17, v30
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_clause 0x7
	buffer_load_u16 v31, v2, s[48:51], 0 offen
	buffer_load_u16 v32, v62, s[48:51], 0 offen
	buffer_load_u16 v58, v61, s[48:51], 0 offen
	buffer_load_u16 v45, v45, s[48:51], 0 offen
	buffer_load_u16 v60, v60, s[48:51], 0 offen
	buffer_load_u16 v29, v29, s[48:51], 0 offen
	buffer_load_u16 v61, v28, s[48:51], 0 offen
	buffer_load_u16 v62, v27, s[48:51], 0 offen
	v_add_lshl_u32 v2, s3, v9, 1
	v_add_lshl_u32 v6, s3, v6, 1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v11, s2, v4
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v9, 0x80000000, v16, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s17, v25
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v5, s3, v5, 1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v10, s2, v3
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v4, s3, v4, 1
	v_add_lshl_u32 v3, s3, v3, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s17, v15
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v15, 2, v35
	v_or_b32_e32 v16, 1, v35
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v27, s2, v35
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s3, s8, s17
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v8, 0x80000000, v8, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s17, v14
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v14, 3, v35
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s18, s3, s2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v84, s2, v15
	v_or_b32_e32 v85, s2, v16
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v7, 0x80000000, v7, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s17, v13
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v13, 4, v35
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v83, s2, v14
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s13, s17, v27
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v25.h, 0
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v6, 0x80000000, v6, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s17, v12
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v12, 5, v35
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v82, s2, v13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v87.h, v25.h
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s14, s17, v83
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v5, 0x80000000, v5, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s17, v11
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v11, 6, v35
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v81, s2, v12
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s12, s17, v82
	v_cmp_gt_i32_e64 s15, s17, v84
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v4, 0x80000000, v4, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s17, v10
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v10, 7, v35
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v80, s2, v11
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s11, s17, v81
	v_cmp_gt_i32_e64 s16, s17, v85
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	s_clause 0x7
	buffer_load_u16 v30, v2, s[48:51], 0 offen
	buffer_load_u16 v63, v9, s[48:51], 0 offen
	buffer_load_u16 v64, v7, s[48:51], 0 offen
	buffer_load_u16 v65, v8, s[48:51], 0 offen
	buffer_load_u16 v66, v5, s[48:51], 0 offen
	buffer_load_u16 v69, v6, s[48:51], 0 offen
	buffer_load_u16 v70, v3, s[48:51], 0 offen
	buffer_load_u16 v71, v4, s[48:51], 0 offen
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v2, 39, v35
	v_or_b32_e32 v3, 38, v35
	v_or_b32_e32 v4, 37, v35
	v_or_b32_e32 v5, 36, v35
	v_or_b32_e32 v6, 35, v35
	v_or_b32_e32 v7, 34, v35
	v_or_b32_e32 v8, 33, v35
	v_or_b32_e32 v9, 32, v35
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s2, v2
	v_or_b32_e32 v28, s2, v3
	v_or_b32_e32 v73, s2, v4
	v_or_b32_e32 v74, s2, v5
	v_or_b32_e32 v75, s2, v6
	v_or_b32_e32 v76, s2, v7
	v_or_b32_e32 v77, s2, v8
	v_or_b32_e32 v78, s2, v9
	v_or_b32_e32 v79, s2, v10
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s17, v0
	v_cmp_gt_i32_e64 s2, s17, v28
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[27:28], null, s17, v1, s[18:19]
	v_mad_u64_u32 v[0:1], null, s17, v26, s[18:19]
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s3, s17, v73
	v_cmp_gt_i32_e64 s4, s17, v74
	v_cmp_gt_i32_e64 s5, s17, v75
	v_cmp_gt_i32_e64 s6, s17, v76
	v_cmp_gt_i32_e64 s7, s17, v77
	v_cmp_gt_i32_e64 s8, s17, v78
	v_cmp_gt_i32_e64 s9, s17, v79
	v_cmp_gt_i32_e64 s10, s17, v80
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v93.h, v25.h
	v_mov_b16_e32 v89.h, v25.h
	v_mov_b16_e32 v92.h, v25.h
	v_mov_b16_e32 v88.h, v25.h
	v_mov_b16_e32 v91.h, v25.h
	v_mov_b16_e32 v86.h, v25.h
	v_mov_b16_e32 v90.h, v25.h
	s_mov_b32 s54, s50
	s_mov_b32 s55, s51
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v1, 16, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v41, v41, v1 :: v_dual_lshlrev_b32 v68, 16, v68
	v_mul_f32_e32 v26, v59, v68
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v28, v57, v68 :: v_dual_lshlrev_b32 v31, 16, v31
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v54, v54, v68 :: v_dual_lshlrev_b32 v57, 16, v58
	v_mul_f32_e32 v51, v51, v68
	v_mul_f32_e32 v50, v50, v68
	v_dual_mul_f32 v43, v43, v68 :: v_dual_mul_f32 v36, v36, v1
	v_mul_f32_e32 v42, v42, v68
	v_dual_mul_f32 v37, v37, v1 :: v_dual_lshlrev_b32 v32, 16, v32
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v39, v39, v1 :: v_dual_lshlrev_b32 v58, 16, v60
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v59, 16, v62
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v53, v53, v68
	v_dual_mul_f32 v52, v52, v68 :: v_dual_lshlrev_b32 v29, 16, v29
	v_mul_f32_e32 v49, v49, v68
	v_dual_mul_f32 v56, v56, v68 :: v_dual_lshlrev_b32 v45, 16, v45
	v_dual_mul_f32 v55, v55, v68 :: v_dual_lshlrev_b32 v60, 16, v61
	v_mul_f32_e32 v48, v48, v68
	v_dual_mul_f32 v47, v47, v68 :: v_dual_mul_f32 v40, v40, v1
	v_mul_f32_e32 v46, v46, v68
	v_dual_mul_f32 v44, v44, v68 :: v_dual_mul_f32 v23, v23, v1
	v_mul_f32_e32 v19, v19, v1
	v_mul_f32_e32 v33, v33, v1
	v_mul_f32_e32 v22, v22, v1
	v_dual_mul_f32 v21, v21, v1 :: v_dual_mul_f32 v54, v54, v58
	v_dual_mul_f32 v17, v17, v1 :: v_dual_mul_f32 v52, v52, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v33, v33, v60
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s21, v54, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s23, v52, v52
	v_mov_b16_e32 v89.l, v33.h
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_o_f32_e64 s41, v33, v33
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v30, 16, v30
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v61, 16, v63
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v62, 16, v64
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v63, 16, v65
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v64, 16, v66
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v65, 16, v69
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v66, 16, v70
	.loc	1 1408 17                       ; ragged.py:1408:17
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v38, v38, v1 :: v_dual_lshlrev_b32 v67, 16, v71
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v51, v51, v59 :: v_dual_mul_f32 v34, v34, v1
	v_dual_mul_f32 v49, v49, v30 :: v_dual_mul_f32 v24, v24, v1
	v_dual_mul_f32 v47, v47, v62 :: v_dual_mul_f32 v20, v20, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v43, v43, v67
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v1, v18, v1 :: v_dual_mul_f32 v48, v48, v63
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v18, v26, v31
	v_mul_f32_e32 v26, v28, v32
	v_mul_f32_e32 v32, v41, v32
	v_dual_mul_f32 v53, v53, v29 :: v_dual_mul_f32 v42, v42, v66
	v_dual_mul_f32 v55, v55, v45 :: v_dual_mul_f32 v44, v44, v64
	v_dual_mul_f32 v46, v46, v65 :: v_dual_mul_f32 v1, v1, v67
	v_dual_mul_f32 v36, v36, v57 :: v_dual_mul_f32 v17, v17, v66
	v_dual_mul_f32 v37, v37, v45 :: v_dual_mul_f32 v38, v38, v58
	v_dual_mul_f32 v29, v39, v29 :: v_dual_mul_f32 v24, v24, v30
	v_mul_f32_e32 v21, v21, v65
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v39, v26, 16, 1
	v_bfe_u32 v45, v54, 16, 1
	v_bfe_u32 v58, v51, 16, 1
	v_bfe_u32 v65, v43, 16, 1
	v_mov_b16_e32 v25.l, v32.h
	v_bfe_u32 v66, v42, 16, 1
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v28, v56, v57
	v_mul_f32_e32 v31, v40, v31
	v_mul_f32_e32 v20, v20, v62
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v30, v18, 16, 1
	v_cmp_o_f32_e64 s18, v26, v26
	v_bfe_u32 v41, v55, 16, 1
	v_bfe_u32 v57, v52, 16, 1
	v_cmp_o_f32_e64 s24, v51, v51
	v_cmp_o_f32_e64 s31, v43, v43
	v_mov_b16_e32 v87.l, v36.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v22, v22, v64
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v64, v44, 16, 1
	v_add3_u32 v26, v26, v39, 0x7fff
	v_add3_u32 v39, v54, v45, 0x7fff
	v_add3_u32 v45, v51, v58, 0x7fff
	v_add3_u32 v43, v43, v65, 0x7fff
	v_and_b32_e32 v51, 1, v25
	v_mov_b16_e32 v25.l, v37.h
	v_cmp_o_f32_e64 s33, v42, v42
	v_add3_u32 v42, v42, v66, 0x7fff
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v34, v34, v59 :: v_dual_mul_f32 v23, v23, v61
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s17, v18, v18
	v_bfe_u32 v40, v28, 16, 1
	v_bfe_u32 v56, v53, 16, 1
	v_cmp_o_f32_e64 s30, v44, v44
	v_add3_u32 v18, v18, v30, 0x7fff
	v_add3_u32 v30, v55, v41, 0x7fff
	v_add3_u32 v41, v52, v57, 0x7fff
	v_add3_u32 v44, v44, v64, 0x7fff
	v_cndmask_b16 v42.l, 0x7fff, v43.h, s31
	v_and_b32_e32 v43, 1, v25
	v_mov_b16_e32 v25.l, v29.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v50, v50, v61 :: v_dual_mul_f32 v19, v19, v63
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s19, v28, v28
	v_cmp_o_f32_e64 s20, v55, v55
	v_cmp_o_f32_e64 s22, v53, v53
	v_bfe_u32 v63, v46, 16, 1
	v_add3_u32 v28, v28, v40, 0x7fff
	v_add3_u32 v40, v53, v56, 0x7fff
	v_cndmask_b16 v30.l, 0x7fff, v41.h, s23
	v_cndmask_b16 v41.h, 0x7fff, v44.h, s30
	v_and_b32_e32 v44, 1, v25
	v_mov_b16_e32 v25.l, v34.h
	v_bfe_u32 v59, v50, 16, 1
	v_mov_b16_e32 v93.l, v1.h
	v_cmp_o_f32_e64 s29, v46, v46
	v_cmp_o_f32_e64 s34, v32, v32
	v_add3_u32 v46, v46, v63, 0x7fff
	v_and_b32_e32 v53, 1, v87
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s17
	v_cndmask_b16 v18.h, 0x7fff, v26.h, s18
	v_cndmask_b16 v26.l, 0x7fff, v28.h, s19
	v_cndmask_b16 v26.h, 0x7fff, v30.h, s20
	v_cndmask_b16 v28.l, 0x7fff, v39.h, s21
	v_cndmask_b16 v28.h, 0x7fff, v40.h, s22
	v_cndmask_b16 v30.h, 0x7fff, v45.h, s24
	v_cmp_eq_u32_e64 s17, 0, v72
	v_add3_u32 v32, v32, v51, 0x7fff
	v_and_b32_e32 v45, 1, v25
	v_mov_b16_e32 v25.l, v24.h
	v_cmp_o_f32_e64 s25, v50, v50
	v_mov_b16_e32 v92.l, v21.h
	v_add3_u32 v50, v50, v59, 0x7fff
	v_and_b32_e32 v59, 1, v93
	v_cmp_o_f32_e64 s37, v36, v36
	v_mov_b16_e32 v88.l, v38.h
	v_and_b32_e32 v55, 1, v89
	v_cndmask_b16 v41.l, 0x7fff, v46.h, s29
	v_add3_u32 v36, v36, v53, 0x7fff
	v_cndmask_b32_e64 v46, v28, v18, s17
	v_cndmask_b32_e64 v18, v18, v28, s17
	v_cndmask_b16 v28.h, 0x7fff, v32.h, s34
	v_and_b32_e32 v32, 1, v25
	v_mov_b16_e32 v25.l, v20.h
	v_mov_b16_e32 v91.l, v19.h
	v_cmp_o_f32_e64 s49, v1, v1
	v_and_b32_e32 v58, 1, v92
	v_add3_u32 v1, v1, v59, 0x7fff
	v_mov_b16_e32 v86.l, v31.h
	v_and_b32_e32 v54, 1, v88
	v_add3_u32 v33, v33, v55, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v36.h, s37
	v_and_b32_e32 v36, 1, v25
	v_mov_b16_e32 v25.l, v22.h
	v_cmp_o_f32_e64 s47, v21, v21
	v_and_b32_e32 v57, 1, v91
	v_add3_u32 v21, v21, v58, 0x7fff
	v_cmp_o_f32_e64 s39, v38, v38
	v_and_b32_e32 v52, 1, v86
	v_add3_u32 v38, v38, v54, 0x7fff
	v_cndmask_b16 v21.l, 0x7fff, v33.h, s41
	v_and_b32_e32 v33, 1, v25
	v_mov_b16_e32 v25.l, v17.h
	v_cmp_o_f32_e64 s42, v24, v24
	v_cmp_o_f32_e64 s45, v19, v19
	v_add3_u32 v24, v24, v32, 0x7fff
	v_mov_b32_e32 v32, 0x7632
	v_add3_u32 v19, v19, v57, 0x7fff
	v_cmp_o_f32_e64 s35, v31, v31
	v_add3_u32 v31, v31, v52, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v38.h, s39
	v_and_b32_e32 v38, 1, v25
	v_cmp_o_f32_e64 s36, v37, v37
	v_cmp_o_f32_e64 s38, v29, v29
	v_cmp_o_f32_e64 s44, v20, v20
	v_cmp_o_f32_e64 s48, v17, v17
	v_cndmask_b16 v28.l, 0x7fff, v31.h, s35
	v_add3_u32 v31, v37, v43, 0x7fff
	v_add3_u32 v29, v29, v44, 0x7fff
	v_add3_u32 v20, v20, v36, 0x7fff
	v_add3_u32 v17, v17, v38, 0x7fff
	v_cmp_o_f32_e64 s40, v34, v34
	v_cndmask_b16 v31.l, 0x7fff, v19.h, s45
	v_cndmask_b16 v37.l, 0x7fff, v1.h, s49
	v_cndmask_b16 v1.h, 0x7fff, v31.h, s36
	v_cndmask_b16 v19.h, 0x7fff, v29.h, s38
	v_add3_u32 v34, v34, v45, 0x7fff
	v_cndmask_b16 v31.h, 0x7fff, v20.h, s44
	v_cndmask_b16 v37.h, 0x7fff, v17.h, s48
	v_cndmask_b32_e64 v17, v30, v26, s17
	v_cndmask_b32_e64 v20, v26, v30, s17
	v_mov_b32_e32 v30, 0x5410
	v_mov_b16_e32 v90.l, v23.h
	v_cndmask_b16 v29.l, 0x7fff, v21.h, s47
	v_cndmask_b16 v21.h, 0x7fff, v34.h, s40
	v_cndmask_b32_e64 v34, v19, v28, s17
	v_cndmask_b32_e64 v19, v28, v19, s17
	v_cndmask_b32_e64 v28, 0x1054, v30, s17
	v_bfe_u32 v60, v49, 16, 1
	v_bfe_u32 v61, v48, 16, 1
	v_bfe_u32 v62, v47, 16, 1
	v_and_b32_e32 v56, 1, v90
	v_cndmask_b32_e64 v30, 0x3276, v32, s17
	v_lshl_or_b32 v28, v28, 8, v28
	v_cmp_o_f32_e64 s26, v49, v49
	v_cmp_o_f32_e64 s27, v48, v48
	v_cmp_o_f32_e64 s28, v47, v47
	v_cmp_o_f32_e64 s43, v23, v23
	v_cmp_o_f32_e64 s46, v22, v22
	v_add3_u32 v49, v49, v60, 0x7fff
	v_add3_u32 v48, v48, v61, 0x7fff
	v_add3_u32 v47, v47, v62, 0x7fff
	v_add3_u32 v23, v23, v56, 0x7fff
	v_add3_u32 v22, v22, v33, 0x7fff
	v_lshl_or_b32 v30, v30, 8, v30
	v_and_b32_e32 v28, 0x540054, v28
	v_cndmask_b16 v39.l, 0x7fff, v50.h, s25
	v_cndmask_b16 v39.h, 0x7fff, v49.h, s26
	v_cndmask_b16 v40.l, 0x7fff, v48.h, s27
	v_cndmask_b16 v40.h, 0x7fff, v47.h, s28
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s33
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s43
	v_cndmask_b16 v23.h, 0x7fff, v24.h, s42
	v_cndmask_b16 v29.h, 0x7fff, v22.h, s46
	v_and_b32_e32 v30, 0x760076, v30
	v_lshl_or_b32 v28, v28, 4, v28
	s_mov_b32 s18, 0x76543210
	v_cndmask_b32_e64 v24, v39, v41, s17
	v_cndmask_b32_e64 v33, v40, v42, s17
	v_cndmask_b32_e64 v32, v21, v1, s17
	v_cndmask_b32_e64 v1, v1, v21, s17
	v_cndmask_b32_e64 v21, v29, v23, s17
	v_cndmask_b32_e64 v23, v23, v29, s17
	v_cndmask_b32_e64 v29, v37, v31, s17
	v_cndmask_b32_e64 v31, v31, v37, s17
	v_permlanex16_b32 v18, v18, s18, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v30, v30, 4, v30
	v_and_b32_e32 v28, 0x5040504, v28
	v_add_lshl_u32 v50, v27, v35, 1
	v_cndmask_b32_e64 v22, v41, v39, s17
	v_cndmask_b32_e64 v26, v42, v40, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_permlanex16_b32 v20, v20, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v24, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v33, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v19, s18, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v30, 0x7060706, v30
	v_permlanex16_b32 v1, v1, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v23, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v31, s18, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v36, v18, v46, v28
	v_add_lshl_u32 v51, v27, v16, 1
	v_cndmask_b32_e64 v50, 0x80000000, v50, s17
	v_add_lshl_u32 v52, v27, v15, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v18, v18, v46, v30
	v_perm_b32 v37, v20, v17, v28
	v_perm_b32 v17, v20, v17, v30
	v_perm_b32 v20, v24, v22, v28
	v_perm_b32 v22, v24, v22, v30
	v_perm_b32 v24, v33, v26, v28
	v_perm_b32 v26, v33, v26, v30
	v_perm_b32 v33, v19, v34, v28
	v_perm_b32 v19, v19, v34, v30
	v_perm_b32 v34, v1, v32, v28
	v_perm_b32 v1, v1, v32, v30
	v_perm_b32 v32, v23, v21, v28
	v_perm_b32 v21, v23, v21, v30
	v_perm_b32 v23, v31, v29, v28
	v_perm_b32 v28, v31, v29, v30
	v_mov_b16_e32 v29.l, v36.h
	v_mov_b16_e32 v29.h, v25.h
	v_cndmask_b32_e64 v51, 0x80000000, v51, s17
	buffer_store_b16 v36, v50, s[52:55], 0 offen
	v_add_lshl_u32 v36, v27, v14, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v25.l, v18.h
	v_cndmask_b32_e64 v50, 0x80000000, v52, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v29, v51, s[52:55], 0 offen
	v_add_lshl_u32 v29, v27, v13, 1
	v_cndmask_b32_e64 v36, 0x80000000, v36, s17
	buffer_store_b16 v18, v50, s[52:55], 0 offen
	v_add_lshl_u32 v18, v27, v12, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v30.h, v25.h
	v_mov_b16_e32 v31.h, v25.h
	v_mov_b16_e32 v38.h, v25.h
	v_mov_b16_e32 v39.h, v25.h
	v_mov_b16_e32 v40.h, v25.h
	v_mov_b16_e32 v41.h, v25.h
	v_mov_b16_e32 v42.h, v25.h
	v_mov_b16_e32 v43.h, v25.h
	v_mov_b16_e32 v44.h, v25.h
	v_mov_b16_e32 v45.h, v25.h
	v_mov_b16_e32 v46.h, v25.h
	v_mov_b16_e32 v47.h, v25.h
	v_mov_b16_e32 v48.h, v25.h
	v_mov_b16_e32 v49.h, v25.h
	v_cndmask_b32_e64 v29, 0x80000000, v29, s17
	buffer_store_b16 v25, v36, s[52:55], 0 offen
	v_add_lshl_u32 v25, v27, v11, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v31.l, v37.h
	v_cndmask_b32_e64 v18, 0x80000000, v18, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v37, v29, s[52:55], 0 offen
	v_add_lshl_u32 v29, v27, v10, 1
	v_cndmask_b32_e64 v25, 0x80000000, v25, s17
	buffer_store_b16 v31, v18, s[52:55], 0 offen
	v_add_lshl_u32 v18, v27, v9, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v30.l, v17.h
	v_cndmask_b32_e64 v29, 0x80000000, v29, s17
	buffer_store_b16 v17, v25, s[52:55], 0 offen
	v_add_lshl_u32 v17, v27, v8, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v25, v27, v7, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v39.l, v20.h
	v_cndmask_b32_e64 v17, 0x80000000, v17, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v30, v29, s[52:55], 0 offen
	buffer_store_b16 v20, v18, s[52:55], 0 offen
	v_add_lshl_u32 v18, v27, v6, 1
	v_cndmask_b32_e64 v20, 0x80000000, v25, s17
	buffer_store_b16 v39, v17, s[52:55], 0 offen
	v_add_lshl_u32 v17, v27, v5, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v38.l, v22.h
	v_cndmask_b32_e64 v18, 0x80000000, v18, s17
	buffer_store_b16 v22, v20, s[52:55], 0 offen
	v_add_lshl_u32 v20, v27, v4, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v41.l, v24.h
	v_cndmask_b32_e64 v17, 0x80000000, v17, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s3
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v38, v18, s[52:55], 0 offen
	v_add_lshl_u32 v18, v27, v3, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s17
	buffer_store_b16 v24, v17, s[52:55], 0 offen
	v_add_lshl_u32 v17, v27, v2, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s2
	s_and_b32 s0, s0, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s17
	buffer_store_b16 v41, v20, s[52:55], 0 offen
	v_add_lshl_u32 v20, v0, v35, 1
	v_add_lshl_u32 v16, v0, v16, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v15, v0, v15, 1
	buffer_store_b16 v26, v18, s[52:55], 0 offen
	v_cndmask_b32_e64 v18, 0x80000000, v20, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v14, v0, v14, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v13, v0, v13, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v12, v0, v12, 1
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v11, v0, v11, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v40.l, v26.h
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v42.l, v19.h
	v_mov_b16_e32 v43.l, v33.h
	v_mov_b16_e32 v45.l, v34.h
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	v_add_lshl_u32 v10, v0, v10, 1
	v_add_lshl_u32 v9, v0, v9, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v44.l, v1.h
	s_clause 0x7
	buffer_store_b16 v40, v17, s[52:55], 0 offen
	buffer_store_b16 v33, v18, s[52:55], 0 offen
	buffer_store_b16 v43, v16, s[52:55], 0 offen
	buffer_store_b16 v19, v15, s[52:55], 0 offen
	buffer_store_b16 v42, v14, s[52:55], 0 offen
	buffer_store_b16 v34, v13, s[52:55], 0 offen
	buffer_store_b16 v45, v12, s[52:55], 0 offen
	buffer_store_b16 v1, v11, s[52:55], 0 offen
	v_add_lshl_u32 v1, v0, v8, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v47.l, v32.h
	v_cndmask_b32_e64 v8, 0x80000000, v9, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v7, v0, v7, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	v_add_lshl_u32 v6, v0, v6, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x2
	buffer_store_b16 v44, v10, s[52:55], 0 offen
	buffer_store_b16 v32, v8, s[52:55], 0 offen
	buffer_store_b16 v47, v1, s[52:55], 0 offen
	v_add_lshl_u32 v1, v0, v5, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v4, v0, v4, 1
	v_cndmask_b32_e64 v5, 0x80000000, v6, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v0, v3, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	v_add_lshl_u32 v0, v0, v2, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s3
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v46.l, v21.h
	v_cndmask_b32_e64 v2, 0x80000000, v4, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s2
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v49.l, v23.h
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 vcc_lo, vcc_lo, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	v_mov_b16_e32 v48.l, v28.h
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x5
	buffer_store_b16 v21, v7, s[52:55], 0 offen
	buffer_store_b16 v46, v5, s[52:55], 0 offen
	buffer_store_b16 v23, v1, s[52:55], 0 offen
	buffer_store_b16 v49, v2, s[52:55], 0 offen
	buffer_store_b16 v28, v3, s[52:55], 0 offen
	buffer_store_b16 v48, v0, s[52:55], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 94
		.amdhsa_next_free_sgpr 56
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
		.amdhsa_inst_pref_size 53
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_vgpr, 94
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.numbered_sgpr, 56
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6704
; TotalNumSgprs: 58
; NumVgprs: 94
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 11
; NumSGPRsForWavesPerEU: 58
; NumVGPRsForWavesPerEU: 94
; Occupancy: 16
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
	.short	1301                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1302                            ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     58
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     94
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
