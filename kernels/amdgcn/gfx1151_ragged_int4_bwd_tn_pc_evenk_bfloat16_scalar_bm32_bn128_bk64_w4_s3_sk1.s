	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
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
	v_lshlrev_b32_e32 v64, 1, v0
	v_and_b32_e32 v65, 16, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s16, 31
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s17, 0x7f
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_ashr_i32 s6, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s7, s5, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_lshr_b32 s6, s6, 27
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_lshr_b32 s7, s7, 25
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_add_i32 s4, s4, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s5, s7
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_ashr_i32 s4, s4, 5
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s6, s5, 7
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
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
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
	s_cselect_b32 s7, s11, s9
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s19, s18, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s7, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s8, s7, s10
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s6, s8, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1307 17 is_stmt 0             ; ragged.py:1307:17
	s_sub_i32 s2, s2, s6
	.loc	1 1313 19 is_stmt 1             ; ragged.py:1313:19
	s_lshl_b64 s[6:7], s[18:19], 2
	.loc	1 1310 18                       ; ragged.py:1310:18
	s_lshl_b32 s19, s2, 7
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s6
	s_addc_u32 s5, s5, s7
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v33, s19, v0
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s2, s[4:5], 0x0
	.loc	1 1322 22                       ; ragged.py:1322:22
	s_lshl_b32 s20, s3, 5
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s2, s2, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1314 26 is_stmt 0             ; ragged.py:1314:26
	s_lshr_b32 s4, s2, 31
	s_add_i32 s3, s2, s4
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s2, s17, v33
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_ashr_i32 s21, s3, 1
	s_mov_b32 s3, 0
	.loc	1 1324 23                       ; ragged.py:1324:23
	s_cmp_lt_i32 s20, s21
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_lshl_b32 s4, s17, 4
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshlrev_b32_e32 v20, 1, v0
	v_dual_mov_b32 v18, s4 :: v_dual_and_b32 v1, 16, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr20
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr18
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x10
	s_load_b64 s[52:53], s[0:1], 0x28
	v_dual_mov_b32 v3, 0 :: v_dual_and_b32 v62, 15, v0
	v_dual_mov_b32 v2, 0 :: v_dual_lshlrev_b32 v63, 5, v0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_lshl_b32 s3, s8, 5
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_mad_u64_u32 v[34:35], null, s17, 3, v[33:34]
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_and_b32_e32 v1, 31, v0
	v_and_b32_e32 v2, 0x60, v0
	v_lshrrev_b32_e32 v8, 1, v0
	s_clause 0x1
	s_load_b32 s8, s[0:1], 0x38
	s_load_b128 s[12:15], s[0:1], 0x0
	v_bfe_i32 v5, v0, 4, 1
	.loc	1 1309 18 is_stmt 0             ; ragged.py:1309:18
	v_or_b32_e32 v3, s3, v1
	v_mad_u64_u32 v[35:36], null, s17, 5, v[33:34]
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v4, 2, v2
	v_mad_u64_u32 v[36:37], null, s17, 6, v[33:34]
	v_mad_u64_u32 v[37:38], null, s17, 7, v[33:34]
	v_mad_u64_u32 v[38:39], null, s17, 9, v[33:34]
	v_mad_u64_u32 v[39:40], null, s17, 10, v[33:34]
	v_mad_u64_u32 v[40:41], null, s17, 11, v[33:34]
	.loc	1 1311 20 is_stmt 1             ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s16, v3
	v_mul_lo_u32 v3, s16, v4
	v_mad_u64_u32 v[41:42], null, s17, 12, v[33:34]
	v_mad_u64_u32 v[42:43], null, s17, 13, v[33:34]
	v_mad_u64_u32 v[43:44], null, s17, 14, v[33:34]
	v_mad_u64_u32 v[44:45], null, s17, 15, v[33:34]
	v_mad_u64_u32 v[45:46], null, s17, 17, v[33:34]
	v_mad_u64_u32 v[46:47], null, s17, 18, v[33:34]
	v_mad_u64_u32 v[47:48], null, s17, 19, v[33:34]
	v_mad_u64_u32 v[48:49], null, s17, 20, v[33:34]
	.loc	1 1324 23                       ; ragged.py:1324:23
	v_add3_u32 v49, v1, v3, s3
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v6, 24, v64
	v_lshlrev_b32_e32 v7, 5, v62
	v_lshlrev_b32_e32 v2, 4, v2
	v_xor_b32_e32 v8, v64, v8
	v_mad_u64_u32 v[50:51], null, s17, 21, v[33:34]
	v_xor_b32_e32 v4, v6, v4
	v_mad_u64_u32 v[51:52], null, s17, 22, v[33:34]
	v_mad_u64_u32 v[52:53], null, s17, 23, v[33:34]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or3_b32 v2, v7, v2, v4
	v_and_b32_e32 v5, 0x208, v5
	v_and_or_b32 v8, v8, 24, v63
	v_mad_u64_u32 v[53:54], null, s17, 24, v[33:34]
	v_xor_b32_e32 v17, 8, v2
	v_xor_b32_e32 v18, 16, v2
	v_xor_b32_e32 v19, 24, v2
	v_add_nc_u32_e32 v83, 0, v2
	v_mov_b32_e32 v2, v1
	v_or_b32_e32 v6, v7, v6
	v_mad_u64_u32 v[54:55], null, s17, 25, v[33:34]
	v_mad_u64_u32 v[55:56], null, s17, 26, v[33:34]
	v_mad_u64_u32 v[56:57], null, s17, 27, v[33:34]
	v_mad_u64_u32 v[57:58], null, s17, 28, v[33:34]
	v_xor_b32_e32 v5, v4, v5
	v_add_nc_u32_e32 v9, 0, v7
	v_xor_b32_e32 v10, 8, v6
	v_xor_b32_e32 v11, 16, v6
	v_xor_b32_e32 v12, 24, v6
	v_xor_b32_e32 v13, 0x208, v6
	v_xor_b32_e32 v14, 0x218, v6
	v_xor_b32_e32 v4, 0x210, v6
	v_xor_b32_e32 v7, 8, v8
	v_xor_b32_e32 v15, 16, v8
	v_xor_b32_e32 v16, 24, v8
	v_mad_u64_u32 v[58:59], null, s17, 29, v[33:34]
	v_mad_u64_u32 v[59:60], null, s17, 30, v[33:34]
	v_mad_u64_u32 v[60:61], null, s17, 31, v[33:34]
	s_lshl_b32 s0, s17, 4
	v_dual_mov_b32 v3, v1 :: v_dual_add_nc_u32 v66, s17, v33
	v_lshl_add_u32 v67, s17, 1, v33
	v_lshl_add_u32 v68, s17, 2, v33
	v_lshl_add_u32 v69, s17, 3, v33
	v_add_nc_u32_e32 v70, s0, v33
	v_add_nc_u32_e32 v72, 0, v6
	v_add_nc_u32_e32 v73, 0, v10
	v_add_nc_u32_e32 v74, 0, v11
	v_dual_mov_b32 v10, v1 :: v_dual_add_nc_u32 v75, 0, v12
	v_add_nc_u32_e32 v76, 0, v13
	v_dual_mov_b32 v12, v1 :: v_dual_add_nc_u32 v77, 0, v14
	v_add_nc_u32_e32 v78, 0, v4
	v_dual_mov_b32 v14, v1 :: v_dual_add_nc_u32 v79, 0, v8
	v_add_nc_u32_e32 v80, 0, v7
	v_add_nc_u32_e32 v81, 0, v15
	v_dual_mov_b32 v21, v1 :: v_dual_add_nc_u32 v82, 0, v16
	v_dual_mov_b32 v23, v1 :: v_dual_add_nc_u32 v84, 0, v17
	v_dual_mov_b32 v20, v1 :: v_dual_add_nc_u32 v85, 0, v18
	v_dual_mov_b32 v25, v1 :: v_dual_add_nc_u32 v86, 0, v19
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v6, v1
	v_add_nc_u32_e32 v71, v9, v5
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_lshl_b32 s1, s16, 1
	s_mul_i32 s22, s16, 3
	s_lshl_b32 s23, s16, 2
	s_mul_i32 s24, s16, 5
	s_mul_i32 s25, s16, 6
	s_mul_i32 s26, s16, 7
	.loc	1 1327 39                       ; ragged.py:1327:39
	s_mul_i32 s27, s18, s8
	s_mov_b32 s8, s12
	s_mov_b32 s9, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1334 42                       ; ragged.py:1334:42
	s_add_i32 s28, s20, s27
	.loc	1 1346 21                       ; ragged.py:1346:21
	s_add_i32 s20, s20, 32
	.loc	1 1335 42                       ; ragged.py:1335:42
	s_mul_i32 s29, s28, s17
	.loc	1 1324 23                       ; ragged.py:1324:23
	s_cmp_lt_i32 s20, s21
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v88, s29, v37
	v_add_nc_u32_e32 v87, s29, v35
	v_add_nc_u32_e32 v89, s29, v36
	v_add_nc_u32_e32 v61, s29, v68
	v_add_nc_u32_e32 v90, s29, v34
	.loc	1 1335 34 is_stmt 0             ; ragged.py:1335:34
	v_cndmask_b32_e64 v88, 0x80000000, v88, s2
	v_cndmask_b32_e64 v87, 0x80000000, v87, s2
	v_cndmask_b32_e64 v89, 0x80000000, v89, s2
	v_cndmask_b32_e64 v61, 0x80000000, v61, s2
	v_cndmask_b32_e64 v90, 0x80000000, v90, s2
	s_clause 0x4
	buffer_load_u8 v88, v88, s[12:15], 0 offen
	buffer_load_u8 v87, v87, s[12:15], 0 offen
	buffer_load_u8 v89, v89, s[12:15], 0 offen
	buffer_load_u8 v92, v61, s[12:15], 0 offen
	buffer_load_u8 v90, v90, s[12:15], 0 offen
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v91, s29, v67
	v_add_nc_u32_e32 v93, s29, v66
	.loc	1 1335 34                       ; ragged.py:1335:34
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v61.l, 8, v88.l
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v61.h, 8, v87.l
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v87, s29, v33
	v_add_nc_u32_e32 v88, s29, v41
	.loc	1 1335 34                       ; ragged.py:1335:34
	s_waitcnt vmcnt(1)
	v_or_b16 v92.h, v89.l, v61.l
	v_or_b16 v92.l, v92.l, v61.h
	v_cndmask_b32_e64 v61, 0x80000000, v91, s2
	v_cndmask_b32_e64 v89, 0x80000000, v93, s2
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v93, s29, v44
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v88, 0x80000000, v88, s2
	s_clause 0x1
	buffer_load_u8 v91, v61, s[12:15], 0 offen
	buffer_load_u8 v89, v89, s[12:15], 0 offen
	s_waitcnt vmcnt(2)
	v_lshlrev_b16 v61.l, 8, v90.l
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v90, s29, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v90, 0x80000000, v90, s2
	s_waitcnt vmcnt(1)
	v_or_b16 v91.h, v91.l, v61.l
	v_cndmask_b32_e64 v61, 0x80000000, v87, s2
	buffer_load_u8 v87, v61, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v61.l, 8, v89.l
	v_cndmask_b32_e64 v89, 0x80000000, v93, s2
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v91.l, v87.l, v61.l
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v61, s29, v43
	v_add_nc_u32_e32 v87, s29, v40
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v61, 0x80000000, v61, s2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v87, 0x80000000, v87, s2
	s_clause 0x4
	buffer_load_u8 v89, v89, s[12:15], 0 offen
	buffer_load_u8 v90, v90, s[12:15], 0 offen
	buffer_load_u8 v93, v61, s[12:15], 0 offen
	buffer_load_u8 v88, v88, s[12:15], 0 offen
	buffer_load_u8 v87, v87, s[12:15], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v61.l, 8, v89.l
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v61.h, 8, v90.l
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v90, s29, v47
	.loc	1 1335 34                       ; ragged.py:1335:34
	s_waitcnt vmcnt(2)
	v_or_b16 v94.h, v93.l, v61.l
	s_waitcnt vmcnt(1)
	v_or_b16 v94.l, v88.l, v61.h
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v61, s29, v39
	v_add_nc_u32_e32 v88, s29, v38
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v90, 0x80000000, v90, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v61, 0x80000000, v61, s2
	v_cndmask_b32_e64 v88, 0x80000000, v88, s2
	s_clause 0x1
	buffer_load_u8 v89, v61, s[12:15], 0 offen
	buffer_load_u8 v88, v88, s[12:15], 0 offen
	s_waitcnt vmcnt(2)
	v_lshlrev_b16 v61.l, 8, v87.l
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v87, s29, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v87, 0x80000000, v87, s2
	s_waitcnt vmcnt(1)
	v_or_b16 v93.h, v89.l, v61.l
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v61, s29, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v61, 0x80000000, v61, s2
	buffer_load_u8 v89, v61, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v61.l, 8, v88.l
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v88, s29, v52
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v88, 0x80000000, v88, s2
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v93.l, v89.l, v61.l
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v61, s29, v50
	v_add_nc_u32_e32 v89, s29, v51
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v61, 0x80000000, v61, s2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v89, 0x80000000, v89, s2
	s_clause 0x4
	buffer_load_u8 v88, v88, s[12:15], 0 offen
	buffer_load_u8 v95, v61, s[12:15], 0 offen
	buffer_load_u8 v89, v89, s[12:15], 0 offen
	buffer_load_u8 v87, v87, s[12:15], 0 offen
	buffer_load_u8 v90, v90, s[12:15], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v61.l, 8, v88.l
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v61.h, 8, v95.l
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b16 v96.h, v89.l, v61.l
	s_waitcnt vmcnt(1)
	v_or_b16 v96.l, v87.l, v61.h
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v61, s29, v46
	v_add_nc_u32_e32 v87, s29, v45
	v_add_nc_u32_e32 v89, s29, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v61, 0x80000000, v61, s2
	v_cndmask_b32_e64 v87, 0x80000000, v87, s2
	s_clause 0x1
	buffer_load_u8 v88, v61, s[12:15], 0 offen
	buffer_load_u8 v87, v87, s[12:15], 0 offen
	s_waitcnt vmcnt(2)
	v_lshlrev_b16 v61.l, 8, v90.l
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v90, s29, v56
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v89, 0x80000000, v89, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v90, 0x80000000, v90, s2
	s_waitcnt vmcnt(1)
	v_or_b16 v95.h, v88.l, v61.l
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v61, s29, v70
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v61, 0x80000000, v61, s2
	buffer_load_u8 v88, v61, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v61.l, 8, v87.l
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v87, s29, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v87, 0x80000000, v87, s2
	s_waitcnt vmcnt(0)
	v_or_b16 v95.l, v88.l, v61.l
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v88, s29, v60
	v_add_nc_u32_e32 v61, s29, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v88, 0x80000000, v88, s2
	v_cndmask_b32_e64 v61, 0x80000000, v61, s2
	s_clause 0x4
	buffer_load_u8 v88, v88, s[12:15], 0 offen
	buffer_load_u8 v87, v87, s[12:15], 0 offen
	buffer_load_u8 v89, v89, s[12:15], 0 offen
	buffer_load_u8 v97, v61, s[12:15], 0 offen
	buffer_load_u8 v90, v90, s[12:15], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v61.l, 8, v88.l
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v61.h, 8, v87.l
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v87, s29, v54
	.loc	1 1335 34                       ; ragged.py:1335:34
	s_waitcnt vmcnt(2)
	v_or_b16 v98.h, v89.l, v61.l
	s_waitcnt vmcnt(1)
	v_or_b16 v98.l, v97.l, v61.h
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v61, s29, v55
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v87, 0x80000000, v87, s2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v61, 0x80000000, v61, s2
	s_clause 0x1
	buffer_load_u8 v88, v61, s[12:15], 0 offen
	buffer_load_u8 v87, v87, s[12:15], 0 offen
	s_waitcnt vmcnt(2)
	v_lshlrev_b16 v61.l, 8, v90.l
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v97.h, v88.l, v61.l
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v61, s29, v53
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v61, 0x80000000, v61, s2
	buffer_load_u8 v88, v61, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v61.l, 8, v87.l
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v97.l, v88.l, v61.l
	v_mad_u64_u32 v[87:88], null, s28, s16, v[49:50]
	v_add_nc_u32_e32 v89, s26, v87
	v_add_nc_u32_e32 v61, s23, v87
	v_add_nc_u32_e32 v88, s24, v87
	v_add_nc_u32_e32 v90, s25, v87
	v_add_nc_u32_e32 v99, s22, v87
	.loc	1 1334 34 is_stmt 1             ; ragged.py:1334:34
	v_cndmask_b32_e32 v89, 0x80000000, v89, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v61, 0x80000000, v61 :: v_dual_cndmask_b32 v88, 0x80000000, v88
	v_dual_cndmask_b32 v90, 0x80000000, v90 :: v_dual_cndmask_b32 v99, 0x80000000, v99
	s_clause 0x4
	buffer_load_u8 v89, v89, s[8:11], 0 offen
	buffer_load_u8 v88, v88, s[8:11], 0 offen
	buffer_load_u8 v90, v90, s[8:11], 0 offen
	buffer_load_u8 v100, v61, s[8:11], 0 offen
	buffer_load_u8 v99, v99, s[8:11], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v61.l, 8, v89.l
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v61.h, 8, v88.l
	v_add_nc_u32_e32 v88, s16, v87
	s_waitcnt vmcnt(2)
	v_or_b16 v89.h, v90.l, v61.l
	s_waitcnt vmcnt(1)
	v_or_b16 v89.l, v100.l, v61.h
	v_add_nc_u32_e32 v61, s1, v87
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_cndmask_b32 v88, 0x80000000, v88 :: v_dual_cndmask_b32 v61, 0x80000000, v61
	s_clause 0x1
	buffer_load_u8 v90, v61, s[8:11], 0 offen
	buffer_load_u8 v88, v88, s[8:11], 0 offen
	s_waitcnt vmcnt(2)
	v_lshlrev_b16 v61.l, 8, v99.l
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v88.h, v90.l, v61.l
	v_cndmask_b32_e32 v61, 0x80000000, v87, vcc_lo
	buffer_load_u8 v87, v61, s[8:11], 0 offen
	v_lshlrev_b16 v61.l, 8, v88.l
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v88.l, v87.l, v61.l
	ds_store_b64 v71, v[88:89]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[99:100], v73
	ds_load_b64 v[101:102], v74
	ds_load_b64 v[103:104], v75
	ds_load_b64 v[105:106], v76
	ds_load_b64 v[107:108], v77
	ds_load_b64 v[109:110], v78
	ds_load_2addr_stride64_b64 v[87:90], v72 offset1:1
	.loc	1 1335 34                       ; ragged.py:1335:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v79, v[91:92]
	ds_store_b64 v80, v[93:94]
	ds_store_b64 v81, v[95:96]
	ds_store_b64 v82, v[97:98]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[91:94], v83 offset1:4
	.loc	1 1336 31                       ; ragged.py:1336:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[91:92], v[105:106], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[93:94], v[105:106], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[91:92], v[87:88], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[93:94], v[87:88], v[9:16] neg_lo:[1,1,0]
	.loc	1 1335 34                       ; ragged.py:1335:34
	ds_load_2addr_stride64_b64 v[91:94], v84 offset1:4
	.loc	1 1336 31                       ; ragged.py:1336:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[91:92], v[89:90], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[93:94], v[89:90], v[25:32] neg_lo:[1,1,0]
	.loc	1 1335 34                       ; ragged.py:1335:34
	ds_load_2addr_stride64_b64 v[87:90], v85 offset1:4
	.loc	1 1336 31                       ; ragged.py:1336:31
	v_wmma_i32_16x16x16_iu4 v[1:8], v[91:92], v[99:100], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[93:94], v[99:100], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[87:88], v[101:102], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[89:90], v[101:102], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[87:88], v[107:108], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[89:90], v[107:108], v[25:32] neg_lo:[1,1,0]
	.loc	1 1335 34                       ; ragged.py:1335:34
	ds_load_2addr_stride64_b64 v[87:90], v86 offset1:4
	.loc	1 1336 31                       ; ragged.py:1336:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[87:88], v[103:104], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[89:90], v[103:104], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[87:88], v[109:110], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[89:90], v[109:110], v[25:32] neg_lo:[1,1,0]
	.loc	1 1324 23                       ; ragged.py:1324:23
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v49, v1
	v_cvt_f32_i32_e32 v48, v2
	v_cvt_f32_i32_e32 v47, v3
	v_cvt_f32_i32_e32 v46, v4
	v_cvt_f32_i32_e32 v45, v5
	v_cvt_f32_i32_e32 v44, v6
	v_cvt_f32_i32_e32 v43, v7
	v_cvt_f32_i32_e32 v42, v8
	v_cvt_f32_i32_e32 v41, v9
	v_cvt_f32_i32_e32 v40, v10
	v_cvt_f32_i32_e32 v39, v11
	v_cvt_f32_i32_e32 v38, v12
	v_cvt_f32_i32_e32 v37, v13
	v_cvt_f32_i32_e32 v36, v14
	v_cvt_f32_i32_e32 v35, v15
	v_cvt_f32_i32_e32 v34, v16
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v16, v18
	v_cvt_f32_i32_e32 v15, v19
	v_cvt_f32_i32_e32 v14, v20
	v_cvt_f32_i32_e32 v13, v21
	v_cvt_f32_i32_e32 v12, v22
	v_cvt_f32_i32_e32 v11, v23
	v_cvt_f32_i32_e32 v10, v24
	v_cvt_f32_i32_e32 v9, v25
	v_cvt_f32_i32_e32 v8, v26
	v_cvt_f32_i32_e32 v7, v27
	v_cvt_f32_i32_e32 v6, v28
	v_cvt_f32_i32_e32 v5, v29
	v_cvt_f32_i32_e32 v4, v30
	v_cvt_f32_i32_e32 v3, v31
	v_cvt_f32_i32_e32 v2, v32
	v_dual_mov_b32 v18, s0 :: v_dual_mov_b32 v1, v65
	v_mov_b32_e32 v20, v64
.LBB0_7:                                ; %._crit_edge
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v19, s3, v62
	.loc	1 1404 33                       ; ragged.py:1404:33
	s_mul_i32 s0, s18, s16
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s5, 0xffff
	.loc	1 1404 21                       ; ragged.py:1404:21
	s_add_i32 s1, s3, s0
	s_mov_b32 s11, 0x31027000
	v_add_lshl_u32 v21, s1, v62, 1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s16, v19
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v23, 16, v19
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_mov_b32 s8, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b32_e32 v30, 0x5410
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e64 v22, 0x80000000, v21, s0
	v_add_nc_u32_e32 v21, 32, v21
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s16, v23
	.loc	1 1411 33                       ; ragged.py:1411:33
	s_mul_i32 s3, s18, s17
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_and_b32_e32 v20, 28, v20
	.loc	1 1403 36                       ; ragged.py:1403:36
	buffer_load_u16 v19, v22, s[8:11], 0 offen
	.loc	1 1411 21                       ; ragged.py:1411:21
	s_add_i32 s3, s19, s3
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_and_b32_e32 v23, 0x70, v0
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v25, s17, v62
	s_mul_i32 s1, s1, s17
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_dual_mov_b32 v31, 0x7632 :: v_dual_and_b32 v24, 32, v63
	.loc	1 1403 36 is_stmt 1             ; ragged.py:1403:36
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v22, s3, v0, 1
	s_and_b32 s9, s7, 0xffff
	s_mov_b32 s8, s6
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v32, 1, v23
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshl_add_u32 v26, v23, 2, 0
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshl_add_u32 v27, v23, 1, 0
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add3_u32 v23, s1, s19, v25
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v78, 1, v32
	v_or_b32_e32 v64, 0x47, v32
	.loc	1 1410 36                       ; ragged.py:1410:36
	buffer_load_u16 v22, v22, s[8:11], 0 offen
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v77, 2, v32
	v_or_b32_e32 v65, 0x46, v32
	v_or_b32_e32 v66, 0x45, v32
	v_or_b32_e32 v67, 0x44, v32
	v_or_b32_e32 v68, 0x43, v32
	v_or_b32_e32 v69, 0x42, v32
	v_or_b32_e32 v70, 0x41, v32
	v_or_b32_e32 v71, 64, v32
	v_or_b32_e32 v72, 7, v32
	v_or_b32_e32 v73, 6, v32
	v_or_b32_e32 v74, 5, v32
	v_or_b32_e32 v75, 4, v32
	v_or_b32_e32 v76, 3, v32
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v25, s19, v32
	v_or_b32_e32 v89, s19, v78
	.loc	1 1545 26 is_stmt 1             ; ragged.py:1545:26
	v_add_nc_u32_e32 v79, v23, v18
	v_add_lshl_u32 v80, v23, v32, 1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v18, s19, v64
	v_or_b32_e32 v88, s19, v77
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_add3_u32 v20, v26, v24, v20
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v23, s19, v65
	v_or_b32_e32 v24, s19, v66
	v_or_b32_e32 v26, s19, v67
	v_or_b32_e32 v28, s19, v68
	v_or_b32_e32 v29, s19, v69
	v_or_b32_e32 v81, s19, v70
	v_or_b32_e32 v82, s19, v71
	v_or_b32_e32 v83, s19, v72
	v_or_b32_e32 v84, s19, v73
	v_or_b32_e32 v85, s19, v74
	v_or_b32_e32 v86, s19, v75
	v_or_b32_e32 v87, s19, v76
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s9, s17, v25
	v_cmp_gt_i32_e64 s16, s17, v89
	v_cmp_gt_i32_e64 s1, s17, v18
	v_cmp_gt_i32_e64 s15, s17, v88
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_mov_b32 s54, s10
	s_mov_b32 s55, s11
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s2, s17, v23
	v_cmp_gt_i32_e64 s3, s17, v24
	v_cmp_gt_i32_e64 s4, s17, v26
	v_cmp_gt_i32_e64 s5, s17, v28
	v_cmp_gt_i32_e64 s6, s17, v29
	v_cmp_gt_i32_e64 s7, s17, v81
	v_cmp_gt_i32_e64 s8, s17, v82
	v_cmp_gt_i32_e64 s10, s17, v83
	v_cmp_gt_i32_e64 s11, s17, v84
	v_cmp_gt_i32_e64 s12, s17, v85
	v_cmp_gt_i32_e64 s13, s17, v86
	v_cmp_gt_i32_e64 s14, s17, v87
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s9
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt lgkmcnt(0)
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v81, 0x80000000, v80, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s16
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_barrier
	s_mov_b32 s50, 0x76543210
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v0.h, 0
	s_and_b32 s53, s53, 0xffff
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v33.h, v0.h
	v_mov_b16_e32 v50.h, v0.h
	v_mov_b16_e32 v51.h, v0.h
	v_mov_b16_e32 v52.h, v0.h
	v_mov_b16_e32 v53.h, v0.h
	v_mov_b16_e32 v54.h, v0.h
	v_mov_b16_e32 v55.h, v0.h
	v_mov_b16_e32 v56.h, v0.h
	v_mov_b16_e32 v57.h, v0.h
	v_mov_b16_e32 v58.h, v0.h
	v_mov_b16_e32 v59.h, v0.h
	v_mov_b16_e32 v60.h, v0.h
	v_mov_b16_e32 v61.h, v0.h
	v_mov_b16_e32 v62.h, v0.h
	v_mov_b16_e32 v63.h, v0.h
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v18, 16, v19
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_nc_u32_e32 v25, 2, v80
	v_add_nc_u32_e32 v90, 4, v80
	v_add_nc_u32_e32 v91, 6, v80
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v47, v47, v18 :: v_dual_add_nc_u32 v92, 8, v80
	v_mul_f32_e32 v46, v46, v18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v82, 0x80000000, v25, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s15
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v49, v49, v18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v83, 0x80000000, v90, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s14
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v42, v42, v18 :: v_dual_add_nc_u32 v93, 10, v80
	v_mul_f32_e32 v44, v44, v18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v84, 0x80000000, v91, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v85, 0x80000000, v92, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v86, 0x80000000, v93, s17
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v93, 16, v21
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s11
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v17, v17, v93 :: v_dual_add_nc_u32 v94, 12, v80
	v_mul_f32_e32 v45, v45, v18
	v_mul_f32_e32 v34, v34, v18
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v22
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v40, v40, v18 :: v_dual_add_nc_u32 v95, 14, v80
	v_dual_mul_f32 v43, v43, v18 :: v_dual_add_nc_u32 v96, 0x80, v80
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v87, 0x80000000, v94, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s10
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v38, v38, v18 :: v_dual_add_nc_u32 v97, 0x82, v80
	v_dual_mul_f32 v41, v41, v18 :: v_dual_add_nc_u32 v98, 0x84, v80
	v_dual_mul_f32 v36, v36, v18 :: v_dual_add_nc_u32 v99, 0x86, v80
	v_dual_mul_f32 v39, v39, v18 :: v_dual_add_nc_u32 v100, 0x88, v80
	v_mul_f32_e32 v48, v48, v18
	v_dual_mul_f32 v37, v37, v18 :: v_dual_mul_f32 v10, v10, v93
	v_mul_f32_e32 v35, v35, v18
	v_mul_f32_e32 v94, v15, v93
	.loc	1 1415 17                       ; ragged.py:1415:17
	ds_store_b32 v20, v19
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[18:21], v27
	ds_load_b128 v[22:25], v27 offset:16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v88, 0x80000000, v95, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s8
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v95, v14, v93
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v89, 0x80000000, v96, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s7
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v96, v13, v93
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v90, 0x80000000, v97, s17
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v97, v12, v93
	.loc	1 1415 17                       ; ragged.py:1415:17
	ds_load_b128 v[12:15], v27 offset:256
	ds_load_b128 v[26:29], v27 offset:272
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v16, v16, v93
	v_mul_f32_e32 v11, v11, v93
	v_mul_f32_e32 v9, v9, v93
	v_mul_f32_e32 v8, v8, v93
	v_mul_f32_e32 v7, v7, v93
	v_mul_f32_e32 v6, v6, v93
	v_mul_f32_e32 v5, v5, v93
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v2, v2, v93 :: v_dual_mul_f32 v49, v49, v18
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v48, v48, v19 :: v_dual_mul_f32 v47, v47, v20
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v46, v46, v21 :: v_dual_mul_f32 v43, v43, v24
	v_mul_f32_e32 v42, v42, v25
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v4, v4, v93 :: v_dual_mul_f32 v45, v45, v22
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v44, v44, v23 :: v_dual_mul_f32 v17, v17, v18
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v10, v10, v25 :: v_dual_mul_f32 v41, v41, v12
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v40, v40, v13 :: v_dual_mul_f32 v37, v37, v26
	v_dual_mul_f32 v39, v39, v14 :: v_dual_mul_f32 v38, v38, v15
	v_mul_f32_e32 v36, v36, v27
	v_mul_f32_e32 v16, v16, v19
	v_dual_mul_f32 v18, v94, v20 :: v_dual_mul_f32 v19, v95, v21
	v_mul_f32_e32 v6, v6, v15
	v_dual_mul_f32 v21, v97, v23 :: v_dual_mul_f32 v8, v8, v13
	v_dual_mul_f32 v11, v11, v24 :: v_dual_mul_f32 v4, v4, v27
	v_dual_mul_f32 v9, v9, v12 :: v_dual_mul_f32 v2, v2, v29
	v_mul_f32_e32 v7, v7, v14
	v_mul_f32_e32 v5, v5, v26
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v12, v49, 16, 1
	v_bfe_u32 v13, v48, 16, 1
	v_bfe_u32 v14, v47, 16, 1
	v_bfe_u32 v15, v46, 16, 1
	v_bfe_u32 v24, v43, 16, 1
	v_bfe_u32 v25, v42, 16, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s6
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v3, v3, v93 :: v_dual_mul_f32 v20, v96, v22
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v91, 0x80000000, v98, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s18, v48, v48
	v_cndmask_b32_e64 v92, 0x80000000, v99, s17
	v_cmp_o_f32_e64 s17, v49, v49
	v_cmp_o_f32_e64 s19, v47, v47
	v_cmp_o_f32_e64 s20, v46, v46
	v_cmp_o_f32_e64 s23, v43, v43
	v_cmp_o_f32_e64 s24, v42, v42
	v_bfe_u32 v108, v7, 16, 1
	v_bfe_u32 v110, v5, 16, 1
	v_add3_u32 v12, v49, v12, 0x7fff
	v_add3_u32 v13, v48, v13, 0x7fff
	v_add3_u32 v14, v47, v14, 0x7fff
	v_add3_u32 v15, v46, v15, 0x7fff
	v_add3_u32 v24, v43, v24, 0x7fff
	v_add3_u32 v25, v42, v25, 0x7fff
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v3, v3, v28
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v22, v45, 16, 1
	v_bfe_u32 v23, v44, 16, 1
	v_bfe_u32 v97, v17, 16, 1
	v_bfe_u32 v98, v16, 16, 1
	v_bfe_u32 v99, v18, 16, 1
	v_bfe_u32 v101, v19, 16, 1
	v_bfe_u32 v102, v20, 16, 1
	v_bfe_u32 v103, v21, 16, 1
	v_bfe_u32 v104, v11, 16, 1
	v_bfe_u32 v105, v10, 16, 1
	v_bfe_u32 v109, v6, 16, 1
	v_bfe_u32 v111, v4, 16, 1
	v_cmp_o_f32_e64 s44, v7, v7
	v_cmp_o_f32_e64 s46, v5, v5
	v_add3_u32 v7, v7, v108, 0x7fff
	v_add3_u32 v5, v5, v110, 0x7fff
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s17
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s18
	v_cndmask_b16 v13.l, 0x7fff, v14.h, s19
	v_cndmask_b16 v13.h, 0x7fff, v15.h, s20
	v_cndmask_b16 v15.l, 0x7fff, v24.h, s23
	v_cndmask_b16 v15.h, 0x7fff, v25.h, s24
	v_cmp_eq_u32_e64 s17, 0, v1
	v_cmp_o_f32_e64 s21, v45, v45
	v_cmp_o_f32_e64 s22, v44, v44
	v_cmp_o_f32_e64 s34, v17, v17
	v_cmp_o_f32_e64 s35, v16, v16
	v_cmp_o_f32_e64 s36, v18, v18
	v_cmp_o_f32_e64 s37, v19, v19
	v_cmp_o_f32_e64 s38, v20, v20
	v_cmp_o_f32_e64 s39, v21, v21
	v_cmp_o_f32_e64 s40, v11, v11
	v_cmp_o_f32_e64 s41, v10, v10
	v_bfe_u32 v112, v3, 16, 1
	v_bfe_u32 v113, v2, 16, 1
	v_add3_u32 v22, v45, v22, 0x7fff
	v_add3_u32 v23, v44, v23, 0x7fff
	v_add3_u32 v17, v17, v97, 0x7fff
	v_add3_u32 v16, v16, v98, 0x7fff
	v_add3_u32 v18, v18, v99, 0x7fff
	v_add3_u32 v19, v19, v101, 0x7fff
	v_add3_u32 v20, v20, v102, 0x7fff
	v_add3_u32 v21, v21, v103, 0x7fff
	v_add3_u32 v11, v11, v104, 0x7fff
	v_add3_u32 v10, v10, v105, 0x7fff
	v_cmp_o_f32_e64 s45, v6, v6
	v_cmp_o_f32_e64 s47, v4, v4
	v_add3_u32 v6, v6, v109, 0x7fff
	v_add3_u32 v4, v4, v111, 0x7fff
	v_bfe_u32 v106, v9, 16, 1
	v_bfe_u32 v107, v8, 16, 1
	v_cndmask_b16 v6.l, 0x7fff, v7.h, s44
	v_cndmask_b16 v4.l, 0x7fff, v5.h, s46
	v_cndmask_b32_e64 v5, v15, v13, s17
	v_cndmask_b32_e64 v7, v13, v15, s17
	v_cndmask_b32_e64 v15, 0x1054, v30, s17
	v_cmp_o_f32_e64 s48, v3, v3
	v_cmp_o_f32_e64 s49, v2, v2
	v_add3_u32 v3, v3, v112, 0x7fff
	v_add3_u32 v2, v2, v113, 0x7fff
	v_cndmask_b16 v14.l, 0x7fff, v22.h, s21
	v_cndmask_b16 v14.h, 0x7fff, v23.h, s22
	v_cndmask_b16 v16.l, 0x7fff, v17.h, s34
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s35
	v_cndmask_b16 v17.l, 0x7fff, v18.h, s36
	v_cndmask_b16 v17.h, 0x7fff, v19.h, s37
	v_cndmask_b16 v18.l, 0x7fff, v20.h, s38
	v_cndmask_b16 v18.h, 0x7fff, v21.h, s39
	v_cndmask_b16 v10.l, 0x7fff, v11.h, s40
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s41
	v_cndmask_b32_e64 v19, 0x3276, v31, s17
	v_bfe_u32 v26, v41, 16, 1
	v_bfe_u32 v27, v40, 16, 1
	v_bfe_u32 v93, v37, 16, 1
	v_bfe_u32 v94, v36, 16, 1
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v35, v35, v28 :: v_dual_mul_f32 v34, v34, v29
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s42, v9, v9
	v_cmp_o_f32_e64 s43, v8, v8
	v_add3_u32 v9, v9, v106, 0x7fff
	v_add3_u32 v8, v8, v107, 0x7fff
	v_lshl_or_b32 v15, v15, 8, v15
	v_cndmask_b16 v1.l, 0x7fff, v3.h, s48
	v_cndmask_b16 v1.h, 0x7fff, v2.h, s49
	v_cndmask_b32_e64 v2, v14, v12, s17
	v_cndmask_b32_e64 v3, v12, v14, s17
	v_cndmask_b32_e64 v14, v18, v16, s17
	v_cndmask_b32_e64 v16, v16, v18, s17
	v_cndmask_b32_e64 v18, v10, v17, s17
	v_cndmask_b32_e64 v10, v17, v10, s17
	v_lshl_or_b32 v17, v19, 8, v19
	v_cmp_o_f32_e64 s25, v41, v41
	v_cmp_o_f32_e64 s26, v40, v40
	v_cmp_o_f32_e64 s29, v37, v37
	v_cmp_o_f32_e64 s30, v36, v36
	v_add3_u32 v26, v41, v26, 0x7fff
	v_add3_u32 v27, v40, v27, 0x7fff
	v_add3_u32 v37, v37, v93, 0x7fff
	v_add3_u32 v36, v36, v94, 0x7fff
	v_bfe_u32 v28, v39, 16, 1
	v_bfe_u32 v29, v38, 16, 1
	v_bfe_u32 v95, v35, 16, 1
	v_bfe_u32 v96, v34, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v9.h, s42
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s43
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s45
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s47
	v_and_b32_e32 v15, 0x540054, v15
	v_and_b32_e32 v17, 0x760076, v17
	v_cndmask_b16 v22.l, 0x7fff, v26.h, s25
	v_cndmask_b16 v22.h, 0x7fff, v27.h, s26
	v_cndmask_b16 v24.l, 0x7fff, v37.h, s29
	v_cndmask_b16 v24.h, 0x7fff, v36.h, s30
	v_cmp_o_f32_e64 s27, v39, v39
	v_cmp_o_f32_e64 s28, v38, v38
	v_cmp_o_f32_e64 s31, v35, v35
	v_cmp_o_f32_e64 s33, v34, v34
	v_add3_u32 v28, v39, v28, 0x7fff
	v_add3_u32 v29, v38, v29, 0x7fff
	v_add3_u32 v35, v35, v95, 0x7fff
	v_add3_u32 v34, v34, v96, 0x7fff
	v_cndmask_b32_e64 v19, v4, v8, s17
	v_cndmask_b32_e64 v4, v8, v4, s17
	v_cndmask_b32_e64 v8, v1, v6, s17
	v_cndmask_b32_e64 v1, v6, v1, s17
	v_permlanex16_b32 v6, v7, s50, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v7, v15, 4, v15
	v_lshl_or_b32 v15, v17, 4, v17
	v_cndmask_b32_e64 v11, v22, v24, s17
	v_cndmask_b16 v23.l, 0x7fff, v28.h, s27
	v_cndmask_b16 v23.h, 0x7fff, v29.h, s28
	v_cndmask_b16 v25.l, 0x7fff, v35.h, s31
	v_cndmask_b16 v25.h, 0x7fff, v34.h, s33
	v_permlanex16_b32 v3, v3, s50, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v7, 0x5040504, v7
	v_and_b32_e32 v15, 0x7060706, v15
	v_cndmask_b32_e64 v9, v24, v22, s17
	v_permlanex16_b32 v11, v11, s50, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v13, v23, v25, s17
	v_perm_b32 v17, v3, v2, v7
	v_perm_b32 v2, v3, v2, v15
	v_perm_b32 v3, v6, v5, v7
	v_perm_b32 v5, v6, v5, v15
	v_perm_b32 v6, v11, v9, v7
	v_cndmask_b32_e64 v12, v25, v23, s17
	v_permlanex16_b32 v13, v13, s50, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e32 v33.l, v17.h
	v_perm_b32 v9, v11, v9, v15
	v_mov_b16_e32 v0.l, v2.h
	v_mov_b16_e32 v50.l, v5.h
	v_mov_b16_e32 v51.l, v3.h
	v_mov_b16_e32 v53.l, v6.h
	s_clause 0xa
	buffer_store_b16 v17, v81, s[52:55], 0 offen
	buffer_store_b16 v33, v82, s[52:55], 0 offen
	buffer_store_b16 v2, v83, s[52:55], 0 offen
	buffer_store_b16 v0, v84, s[52:55], 0 offen
	buffer_store_b16 v3, v85, s[52:55], 0 offen
	buffer_store_b16 v51, v86, s[52:55], 0 offen
	buffer_store_b16 v5, v87, s[52:55], 0 offen
	buffer_store_b16 v50, v88, s[52:55], 0 offen
	buffer_store_b16 v6, v89, s[52:55], 0 offen
	buffer_store_b16 v53, v90, s[52:55], 0 offen
	buffer_store_b16 v9, v91, s[52:55], 0 offen
	v_add_nc_u32_e32 v0, 0x8a, v80
	v_perm_b32 v11, v13, v12, v7
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_nc_u32_e32 v2, 0x8c, v80
	v_mov_b16_e32 v52.l, v9.h
	v_cndmask_b32_e64 v3, 0x80000000, v100, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s3
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v55.l, v11.h
	v_cndmask_b32_e64 v0, 0x80000000, v0, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s2
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v12, v13, v12, v15
	v_cndmask_b32_e64 v2, 0x80000000, v2, s17
	s_clause 0x1
	buffer_store_b16 v52, v92, s[52:55], 0 offen
	buffer_store_b16 v11, v3, s[52:55], 0 offen
	v_add_nc_u32_e32 v3, 0x8e, v80
	v_permlanex16_b32 v16, v16, s50, 0xfedcba98 op_sel:[1,0]
	s_clause 0x1
	buffer_store_b16 v55, v0, s[52:55], 0 offen
	buffer_store_b16 v12, v2, s[52:55], 0 offen
	v_add_lshl_u32 v0, v79, v32, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, s0, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v54.l, v12.h
	v_cndmask_b32_e64 v2, 0x80000000, v3, s0
	v_add_lshl_u32 v3, v79, v78, 1
	v_perm_b32 v13, v16, v14, v7
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v5, v79, v77, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v57.l, v13.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_permlanex16_b32 v10, v10, s50, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v14, v16, v14, v15
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	s_clause 0x1
	buffer_store_b16 v54, v2, s[52:55], 0 offen
	buffer_store_b16 v13, v0, s[52:55], 0 offen
	v_add_lshl_u32 v0, v79, v76, 1
	v_add_lshl_u32 v2, v79, v75, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v57, v3, s[52:55], 0 offen
	buffer_store_b16 v14, v5, s[52:55], 0 offen
	v_add_lshl_u32 v3, v79, v74, 1
	v_perm_b32 v16, v10, v18, v7
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v56.l, v14.h
	v_add_lshl_u32 v5, v79, v73, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v59.l, v16.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_permlanex16_b32 v4, v4, s50, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v10, v10, v18, v15
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	s_clause 0x1
	buffer_store_b16 v56, v0, s[52:55], 0 offen
	buffer_store_b16 v16, v2, s[52:55], 0 offen
	v_add_lshl_u32 v0, v79, v72, 1
	v_add_lshl_u32 v2, v79, v71, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v59, v3, s[52:55], 0 offen
	buffer_store_b16 v10, v5, s[52:55], 0 offen
	v_add_lshl_u32 v3, v79, v70, 1
	v_perm_b32 v18, v4, v19, v7
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v58.l, v10.h
	v_add_lshl_u32 v5, v79, v69, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v61.l, v18.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_permlanex16_b32 v1, v1, s50, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v4, v4, v19, v15
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	s_clause 0x1
	buffer_store_b16 v58, v0, s[52:55], 0 offen
	buffer_store_b16 v18, v2, s[52:55], 0 offen
	v_add_lshl_u32 v0, v79, v68, 1
	v_add_lshl_u32 v2, v79, v67, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v61, v3, s[52:55], 0 offen
	buffer_store_b16 v4, v5, s[52:55], 0 offen
	v_add_lshl_u32 v3, v79, v66, 1
	v_perm_b32 v7, v1, v8, v7
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v60.l, v4.h
	v_add_lshl_u32 v4, v79, v65, 1
	v_perm_b32 v1, v1, v8, v15
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_add_lshl_u32 v5, v79, v64, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s3
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v63.l, v7.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s2
	s_and_b32 vcc_lo, vcc_lo, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_mov_b16_e32 v62.l, v1.h
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	s_clause 0x4
	buffer_store_b16 v60, v0, s[52:55], 0 offen
	buffer_store_b16 v7, v2, s[52:55], 0 offen
	buffer_store_b16 v63, v3, s[52:55], 0 offen
	buffer_store_b16 v1, v4, s[52:55], 0 offen
	buffer_store_b16 v62, v5, s[52:55], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 114
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
		.amdhsa_inst_pref_size 56
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.num_vgpr, 114
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.numbered_sgpr, 56
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7140
; TotalNumSgprs: 58
; NumVgprs: 114
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 58
; NumVGPRsForWavesPerEU: 114
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     58
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     114
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
