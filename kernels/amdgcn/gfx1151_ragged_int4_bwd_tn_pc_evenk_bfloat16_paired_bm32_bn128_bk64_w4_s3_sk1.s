	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[34:35], s[0:1], 0x30
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
	v_lshlrev_b32_e32 v65, 1, v0
	v_and_b32_e32 v66, 16, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 31
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s35, 0x7f
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
	s_sub_i32 s16, s5, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s7
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s16, s4
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
	s_ashr_i32 s17, s16, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s7, s7, s10
	s_mov_b32 s9, 0
	s_sub_i32 s8, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s6, s8, s6
	.loc	1 1307 17 is_stmt 0             ; ragged.py:1307:17
	s_sub_i32 s31, s2, s6
	.loc	1 1313 19 is_stmt 1             ; ragged.py:1313:19
	s_lshl_b64 s[6:7], s[16:17], 2
	.loc	1 1310 18                       ; ragged.py:1310:18
	s_lshl_b32 s17, s31, 7
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s6
	s_addc_u32 s5, s5, s7
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v33, s17, v0
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s2, s[4:5], 0x0
	.loc	1 1322 22                       ; ragged.py:1322:22
	s_lshl_b32 s3, s3, 5
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s2, s2, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1314 26 is_stmt 0             ; ragged.py:1314:26
	s_lshr_b32 s4, s2, 31
	s_add_i32 s4, s2, s4
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s2, s35, v33
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_ashr_i32 s18, s4, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1324 23                       ; ragged.py:1324:23
	s_cmp_lt_i32 s3, s18
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshlrev_b32_e32 v18, 1, v0
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_and_b32_e32 v17, 16, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 34 is_stmt 0                ; ragged.py:0:34
	s_mov_b32 s9, -1
                                        ; implicit-def: $vgpr18
                                        ; implicit-def: $vgpr17
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x10
	s_load_b64 s[36:37], s[0:1], 0x28
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v64, 31, v0
	v_dual_mov_b32 v3, 0 :: v_dual_and_b32 v62, 15, v0
	v_dual_mov_b32 v2, 0 :: v_dual_lshlrev_b32 v63, 5, v0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v48, 0
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_lshl_b32 s33, s8, 5
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_mad_u64_u32 v[34:35], null, s35, 3, v[33:34]
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_and_b32_e32 v2, 0x60, v0
	.loc	1 1309 18 is_stmt 0             ; ragged.py:1309:18
	v_or_b32_e32 v1, s33, v64
	v_bfe_i32 v4, v0, 4, 1
	v_lshrrev_b32_e32 v7, 1, v0
	s_clause 0x1
	s_load_b32 s8, s[0:1], 0x38
	s_load_b128 s[12:15], s[0:1], 0x0
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v3, 2, v2
	v_mad_u64_u32 v[35:36], null, s35, 5, v[33:34]
	v_mad_u64_u32 v[36:37], null, s35, 6, v[33:34]
	v_mad_u64_u32 v[37:38], null, s35, 7, v[33:34]
	v_mad_u64_u32 v[38:39], null, s35, 9, v[33:34]
	v_mad_u64_u32 v[39:40], null, s35, 10, v[33:34]
	v_mad_u64_u32 v[40:41], null, s35, 11, v[33:34]
	.loc	1 1311 20 is_stmt 1             ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v1
	v_mul_lo_u32 v1, s34, v3
	v_mad_u64_u32 v[41:42], null, s35, 12, v[33:34]
	v_mad_u64_u32 v[42:43], null, s35, 13, v[33:34]
	v_mad_u64_u32 v[43:44], null, s35, 14, v[33:34]
	v_mad_u64_u32 v[44:45], null, s35, 15, v[33:34]
	v_mad_u64_u32 v[45:46], null, s35, 17, v[33:34]
	v_mad_u64_u32 v[46:47], null, s35, 18, v[33:34]
	v_mad_u64_u32 v[47:48], null, s35, 19, v[33:34]
	v_mad_u64_u32 v[48:49], null, s35, 20, v[33:34]
	.loc	1 1324 23                       ; ragged.py:1324:23
	v_add3_u32 v49, v64, v1, s33
	v_mov_b32_e32 v1, 0
	v_and_b32_e32 v5, 24, v65
	v_lshlrev_b32_e32 v6, 5, v62
	v_and_b32_e32 v4, 0x208, v4
	v_xor_b32_e32 v7, v65, v7
	v_lshlrev_b32_e32 v2, 4, v2
	v_xor_b32_e32 v3, v5, v3
	v_add_nc_u32_e32 v8, 0, v6
	v_mad_u64_u32 v[50:51], null, s35, 21, v[33:34]
	v_mad_u64_u32 v[51:52], null, s35, 22, v[33:34]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v4, v3, v4
	v_mad_u64_u32 v[52:53], null, s35, 23, v[33:34]
	v_and_or_b32 v7, v7, 24, v63
	v_mad_u64_u32 v[53:54], null, s35, 24, v[33:34]
	v_add_nc_u32_e32 v72, v8, v4
	v_mov_b32_e32 v4, v1
	v_or_b32_e32 v5, v6, v5
	v_mad_u64_u32 v[54:55], null, s35, 25, v[33:34]
	v_mad_u64_u32 v[55:56], null, s35, 26, v[33:34]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v9, 8, v5
	v_mad_u64_u32 v[56:57], null, s35, 27, v[33:34]
	v_mad_u64_u32 v[57:58], null, s35, 28, v[33:34]
	v_add_nc_u32_e32 v74, 0, v9
	v_mov_b32_e32 v9, v1
	v_or3_b32 v2, v6, v2, v3
	v_xor_b32_e32 v10, 16, v5
	v_xor_b32_e32 v11, 24, v5
	v_xor_b32_e32 v12, 0x208, v5
	v_xor_b32_e32 v13, 0x218, v5
	v_xor_b32_e32 v3, 0x210, v5
	v_xor_b32_e32 v6, 8, v7
	v_xor_b32_e32 v14, 16, v7
	v_xor_b32_e32 v15, 24, v7
	v_xor_b32_e32 v16, 8, v2
	v_xor_b32_e32 v17, 16, v2
	v_xor_b32_e32 v18, 24, v2
	v_mad_u64_u32 v[58:59], null, s35, 29, v[33:34]
	v_mad_u64_u32 v[59:60], null, s35, 30, v[33:34]
	v_mad_u64_u32 v[60:61], null, s35, 31, v[33:34]
	v_add_nc_u32_e32 v67, s35, v33
	v_lshl_add_u32 v68, s35, 1, v33
	v_lshl_add_u32 v69, s35, 2, v33
	v_lshl_add_u32 v70, s35, 3, v33
	v_lshl_add_u32 v71, s35, 4, v33
	v_add_nc_u32_e32 v73, 0, v5
	v_dual_mov_b32 v8, v1 :: v_dual_add_nc_u32 v75, 0, v10
	v_add_nc_u32_e32 v76, 0, v11
	v_dual_mov_b32 v10, v1 :: v_dual_add_nc_u32 v77, 0, v12
	v_add_nc_u32_e32 v78, 0, v13
	v_dual_mov_b32 v12, v1 :: v_dual_add_nc_u32 v79, 0, v3
	v_dual_mov_b32 v19, v1 :: v_dual_add_nc_u32 v80, 0, v7
	v_add_nc_u32_e32 v81, 0, v6
	v_dual_mov_b32 v21, v1 :: v_dual_add_nc_u32 v82, 0, v14
	v_add_nc_u32_e32 v83, 0, v15
	v_dual_mov_b32 v23, v1 :: v_dual_add_nc_u32 v84, 0, v2
	v_add_nc_u32_e32 v85, 0, v16
	v_dual_mov_b32 v25, v1 :: v_dual_add_nc_u32 v86, 0, v17
	v_dual_mov_b32 v20, v1 :: v_dual_add_nc_u32 v87, 0, v18
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v18, v1
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
	s_lshl_b32 s0, s34, 1
	s_mul_i32 s1, s34, 3
	s_lshl_b32 s19, s34, 2
	s_mul_i32 s20, s34, 5
	s_mul_i32 s21, s34, 6
	s_mul_i32 s22, s34, 7
	.loc	1 1327 39                       ; ragged.py:1327:39
	s_mul_i32 s23, s16, s8
	s_mov_b32 s8, s12
	s_mov_b32 s9, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1334 42                       ; ragged.py:1334:42
	s_add_i32 s24, s3, s23
	.loc	1 1346 21                       ; ragged.py:1346:21
	s_add_i32 s3, s3, 32
	.loc	1 1335 42                       ; ragged.py:1335:42
	s_mul_i32 s25, s24, s35
	.loc	1 1324 23                       ; ragged.py:1324:23
	s_cmp_lt_i32 s3, s18
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v89, s25, v37
	v_add_nc_u32_e32 v88, s25, v35
	v_add_nc_u32_e32 v90, s25, v36
	v_add_nc_u32_e32 v61, s25, v69
	v_add_nc_u32_e32 v91, s25, v34
	.loc	1 1335 34 is_stmt 0             ; ragged.py:1335:34
	v_cndmask_b32_e64 v89, 0x80000000, v89, s2
	v_cndmask_b32_e64 v88, 0x80000000, v88, s2
	v_cndmask_b32_e64 v90, 0x80000000, v90, s2
	v_cndmask_b32_e64 v61, 0x80000000, v61, s2
	v_cndmask_b32_e64 v91, 0x80000000, v91, s2
	s_clause 0x4
	buffer_load_u8 v89, v89, s[12:15], 0 offen
	buffer_load_u8 v88, v88, s[12:15], 0 offen
	buffer_load_u8 v90, v90, s[12:15], 0 offen
	buffer_load_u8 v93, v61, s[12:15], 0 offen
	buffer_load_u8 v91, v91, s[12:15], 0 offen
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v92, s25, v68
	v_add_nc_u32_e32 v94, s25, v67
	.loc	1 1335 34                       ; ragged.py:1335:34
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v61.l, 8, v89.l
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v61.h, 8, v88.l
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v88, s25, v33
	v_add_nc_u32_e32 v89, s25, v41
	.loc	1 1335 34                       ; ragged.py:1335:34
	s_waitcnt vmcnt(1)
	v_or_b16 v93.h, v90.l, v61.l
	v_or_b16 v93.l, v93.l, v61.h
	v_cndmask_b32_e64 v61, 0x80000000, v92, s2
	v_cndmask_b32_e64 v90, 0x80000000, v94, s2
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v94, s25, v44
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v89, 0x80000000, v89, s2
	s_clause 0x1
	buffer_load_u8 v92, v61, s[12:15], 0 offen
	buffer_load_u8 v90, v90, s[12:15], 0 offen
	s_waitcnt vmcnt(2)
	v_lshlrev_b16 v61.l, 8, v91.l
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v91, s25, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v91, 0x80000000, v91, s2
	s_waitcnt vmcnt(1)
	v_or_b16 v92.h, v92.l, v61.l
	v_cndmask_b32_e64 v61, 0x80000000, v88, s2
	buffer_load_u8 v88, v61, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v61.l, 8, v90.l
	v_cndmask_b32_e64 v90, 0x80000000, v94, s2
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v92.l, v88.l, v61.l
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v61, s25, v43
	v_add_nc_u32_e32 v88, s25, v40
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v61, 0x80000000, v61, s2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v88, 0x80000000, v88, s2
	s_clause 0x4
	buffer_load_u8 v90, v90, s[12:15], 0 offen
	buffer_load_u8 v91, v91, s[12:15], 0 offen
	buffer_load_u8 v94, v61, s[12:15], 0 offen
	buffer_load_u8 v89, v89, s[12:15], 0 offen
	buffer_load_u8 v88, v88, s[12:15], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v61.l, 8, v90.l
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v61.h, 8, v91.l
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v91, s25, v47
	.loc	1 1335 34                       ; ragged.py:1335:34
	s_waitcnt vmcnt(2)
	v_or_b16 v95.h, v94.l, v61.l
	s_waitcnt vmcnt(1)
	v_or_b16 v95.l, v89.l, v61.h
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v61, s25, v39
	v_add_nc_u32_e32 v89, s25, v38
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v91, 0x80000000, v91, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v61, 0x80000000, v61, s2
	v_cndmask_b32_e64 v89, 0x80000000, v89, s2
	s_clause 0x1
	buffer_load_u8 v90, v61, s[12:15], 0 offen
	buffer_load_u8 v89, v89, s[12:15], 0 offen
	s_waitcnt vmcnt(2)
	v_lshlrev_b16 v61.l, 8, v88.l
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v88, s25, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v88, 0x80000000, v88, s2
	s_waitcnt vmcnt(1)
	v_or_b16 v94.h, v90.l, v61.l
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v61, s25, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v61, 0x80000000, v61, s2
	buffer_load_u8 v90, v61, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v61.l, 8, v89.l
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v89, s25, v52
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v89, 0x80000000, v89, s2
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v94.l, v90.l, v61.l
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v61, s25, v50
	v_add_nc_u32_e32 v90, s25, v51
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v61, 0x80000000, v61, s2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v90, 0x80000000, v90, s2
	s_clause 0x4
	buffer_load_u8 v89, v89, s[12:15], 0 offen
	buffer_load_u8 v96, v61, s[12:15], 0 offen
	buffer_load_u8 v90, v90, s[12:15], 0 offen
	buffer_load_u8 v88, v88, s[12:15], 0 offen
	buffer_load_u8 v91, v91, s[12:15], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v61.l, 8, v89.l
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v61.h, 8, v96.l
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b16 v97.h, v90.l, v61.l
	s_waitcnt vmcnt(1)
	v_or_b16 v97.l, v88.l, v61.h
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v61, s25, v46
	v_add_nc_u32_e32 v88, s25, v45
	v_add_nc_u32_e32 v90, s25, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v61, 0x80000000, v61, s2
	v_cndmask_b32_e64 v88, 0x80000000, v88, s2
	s_clause 0x1
	buffer_load_u8 v89, v61, s[12:15], 0 offen
	buffer_load_u8 v88, v88, s[12:15], 0 offen
	s_waitcnt vmcnt(2)
	v_lshlrev_b16 v61.l, 8, v91.l
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v91, s25, v56
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v90, 0x80000000, v90, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v91, 0x80000000, v91, s2
	s_waitcnt vmcnt(1)
	v_or_b16 v96.h, v89.l, v61.l
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v61, s25, v71
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v61, 0x80000000, v61, s2
	buffer_load_u8 v89, v61, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v61.l, 8, v88.l
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v88, s25, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v88, 0x80000000, v88, s2
	s_waitcnt vmcnt(0)
	v_or_b16 v96.l, v89.l, v61.l
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v89, s25, v60
	v_add_nc_u32_e32 v61, s25, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v89, 0x80000000, v89, s2
	v_cndmask_b32_e64 v61, 0x80000000, v61, s2
	s_clause 0x4
	buffer_load_u8 v89, v89, s[12:15], 0 offen
	buffer_load_u8 v88, v88, s[12:15], 0 offen
	buffer_load_u8 v90, v90, s[12:15], 0 offen
	buffer_load_u8 v98, v61, s[12:15], 0 offen
	buffer_load_u8 v91, v91, s[12:15], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v61.l, 8, v89.l
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v61.h, 8, v88.l
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v88, s25, v54
	.loc	1 1335 34                       ; ragged.py:1335:34
	s_waitcnt vmcnt(2)
	v_or_b16 v99.h, v90.l, v61.l
	s_waitcnt vmcnt(1)
	v_or_b16 v99.l, v98.l, v61.h
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v61, s25, v55
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v88, 0x80000000, v88, s2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v61, 0x80000000, v61, s2
	s_clause 0x1
	buffer_load_u8 v89, v61, s[12:15], 0 offen
	buffer_load_u8 v88, v88, s[12:15], 0 offen
	s_waitcnt vmcnt(2)
	v_lshlrev_b16 v61.l, 8, v91.l
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v98.h, v89.l, v61.l
	.loc	1 1335 42                       ; ragged.py:1335:42
	v_add_nc_u32_e32 v61, s25, v53
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v61, 0x80000000, v61, s2
	buffer_load_u8 v89, v61, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v61.l, 8, v88.l
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v98.l, v89.l, v61.l
	v_mad_u64_u32 v[88:89], null, s24, s34, v[49:50]
	v_add_nc_u32_e32 v61, s19, v88
	v_add_nc_u32_e32 v90, s22, v88
	v_add_nc_u32_e32 v89, s20, v88
	v_add_nc_u32_e32 v91, s21, v88
	v_add_nc_u32_e32 v100, s1, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1334 34 is_stmt 1             ; ragged.py:1334:34
	v_dual_cndmask_b32 v61, 0x80000000, v61 :: v_dual_cndmask_b32 v90, 0x80000000, v90
	v_cndmask_b32_e32 v89, 0x80000000, v89, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v91, 0x80000000, v91 :: v_dual_cndmask_b32 v100, 0x80000000, v100
	s_clause 0x4
	buffer_load_u8 v90, v90, s[8:11], 0 offen
	buffer_load_u8 v89, v89, s[8:11], 0 offen
	buffer_load_u8 v91, v91, s[8:11], 0 offen
	buffer_load_u8 v101, v61, s[8:11], 0 offen
	buffer_load_u8 v100, v100, s[8:11], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v61.l, 8, v90.l
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v61.h, 8, v89.l
	v_add_nc_u32_e32 v89, s34, v88
	s_waitcnt vmcnt(2)
	v_or_b16 v90.h, v91.l, v61.l
	s_waitcnt vmcnt(1)
	v_or_b16 v90.l, v101.l, v61.h
	v_add_nc_u32_e32 v61, s0, v88
	v_cndmask_b32_e32 v89, 0x80000000, v89, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v61, 0x80000000, v61, vcc_lo
	s_clause 0x1
	buffer_load_u8 v91, v61, s[8:11], 0 offen
	buffer_load_u8 v89, v89, s[8:11], 0 offen
	s_waitcnt vmcnt(2)
	v_lshlrev_b16 v61.l, 8, v100.l
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v89.h, v91.l, v61.l
	v_cndmask_b32_e32 v61, 0x80000000, v88, vcc_lo
	buffer_load_u8 v88, v61, s[8:11], 0 offen
	v_lshlrev_b16 v61.l, 8, v89.l
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v89.l, v88.l, v61.l
	ds_store_b64 v72, v[89:90]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[100:101], v74
	ds_load_b64 v[102:103], v75
	ds_load_b64 v[104:105], v76
	ds_load_b64 v[106:107], v77
	ds_load_b64 v[108:109], v78
	ds_load_b64 v[110:111], v79
	ds_load_2addr_stride64_b64 v[88:91], v73 offset1:1
	.loc	1 1335 34                       ; ragged.py:1335:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v80, v[92:93]
	ds_store_b64 v81, v[94:95]
	ds_store_b64 v82, v[96:97]
	ds_store_b64 v83, v[98:99]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[92:95], v84 offset1:4
	.loc	1 1336 31                       ; ragged.py:1336:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[92:93], v[106:107], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[94:95], v[106:107], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[92:93], v[88:89], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[94:95], v[88:89], v[9:16] neg_lo:[1,1,0]
	.loc	1 1335 34                       ; ragged.py:1335:34
	ds_load_2addr_stride64_b64 v[92:95], v85 offset1:4
	.loc	1 1336 31                       ; ragged.py:1336:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[92:93], v[90:91], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[94:95], v[90:91], v[25:32] neg_lo:[1,1,0]
	.loc	1 1335 34                       ; ragged.py:1335:34
	ds_load_2addr_stride64_b64 v[88:91], v86 offset1:4
	.loc	1 1336 31                       ; ragged.py:1336:31
	v_wmma_i32_16x16x16_iu4 v[1:8], v[92:93], v[100:101], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[94:95], v[100:101], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[88:89], v[102:103], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[90:91], v[102:103], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[88:89], v[108:109], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[90:91], v[108:109], v[25:32] neg_lo:[1,1,0]
	.loc	1 1335 34                       ; ragged.py:1335:34
	ds_load_2addr_stride64_b64 v[88:91], v87 offset1:4
	.loc	1 1336 31                       ; ragged.py:1336:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[88:89], v[104:105], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[90:91], v[104:105], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[88:89], v[110:111], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[90:91], v[110:111], v[25:32] neg_lo:[1,1,0]
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
	v_cvt_f32_i32_e32 v16, v17
	v_cvt_f32_i32_e32 v15, v18
	v_cvt_f32_i32_e32 v14, v19
	v_cvt_f32_i32_e32 v13, v20
	v_cvt_f32_i32_e32 v12, v21
	v_cvt_f32_i32_e32 v11, v22
	v_cvt_f32_i32_e32 v10, v23
	v_cvt_f32_i32_e32 v9, v24
	v_cvt_f32_i32_e32 v8, v25
	v_cvt_f32_i32_e32 v7, v26
	v_cvt_f32_i32_e32 v6, v27
	v_cvt_f32_i32_e32 v5, v28
	v_cvt_f32_i32_e32 v4, v29
	v_cvt_f32_i32_e32 v3, v30
	v_cvt_f32_i32_e32 v2, v31
	v_cvt_f32_i32_e32 v1, v32
	v_dual_mov_b32 v18, v65 :: v_dual_mov_b32 v17, v66
.LBB0_7:                                ; %._crit_edge
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v19, s33, v62
	.loc	1 1404 33                       ; ragged.py:1404:33
	s_mul_i32 s38, s16, s34
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s5, 0xffff
	.loc	1 1404 21                       ; ragged.py:1404:21
	s_add_i32 s0, s33, s38
	s_mov_b32 s11, 0x31027000
	v_add_lshl_u32 v20, s0, v62, 1
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v21, 16, v19
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v19
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_mov_b32 s8, s4
	v_add_nc_u32_e32 v22, 32, v20
	.loc	1 1411 33                       ; ragged.py:1411:33
	s_mul_i32 s0, s16, s35
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e32 v19, 0x80000000, v20, vcc_lo
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v21
	.loc	1 1411 21                       ; ragged.py:1411:21
	s_add_i32 s17, s17, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v21, s17, v0, 1
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e32 v20, 0x80000000, v22, vcc_lo
	s_clause 0x1
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	s_and_b32 s9, s7, 0xffff
	s_mov_b32 s8, s6
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_bfe_i32 v22, v0, 6, 1
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_cmp_eq_u32_e32 vcc_lo, 0, v17
	.loc	1 1410 36                       ; ragged.py:1410:36
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_cndmask_b32_e64 v17, 0x1040, 0, vcc_lo
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshlrev_b32_e32 v25, 2, v0
	v_and_b32_e32 v27, 0x1040, v22
	v_and_b32_e32 v22, 0x104, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v48, v48, v19 :: v_dual_and_b32 v23, 0x70, v0
	v_dual_mul_f32 v46, v46, v19 :: v_dual_and_b32 v25, 0xbc, v25
	v_mul_f32_e32 v42, v42, v19
	v_dual_mul_f32 v47, v47, v19 :: v_dual_lshlrev_b32 v24, 2, v64
	v_dual_mul_f32 v45, v45, v19 :: v_dual_and_b32 v26, 32, v0
	v_mul_f32_e32 v41, v41, v19
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xor_b32_e32 v22, v22, v25
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v43, v43, v19 :: v_dual_and_b32 v18, 28, v18
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_and_b32_e32 v28, 32, v63
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v44, v44, v19
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xor3_b32 v24, v24, v26, v27
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshl_add_u32 v26, v23, 2, 0
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_or_b32_e32 v17, v22, v17
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshl_add_u32 v23, v23, 1, 0
	.loc	1 1408 17                       ; ragged.py:1408:17
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v36, v36, v19 :: v_dual_lshlrev_b32 v67, 16, v20
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshl_or_b32 v24, v62, 8, v24
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_add3_u32 v18, v26, v28, v18
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v38, v38, v19 :: v_dual_add_nc_u32 v51, 0, v17
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v52, v17, 64, 0
	v_xad_u32 v53, 0x208, v17, 0
	v_xad_u32 v54, 0x248, v17, 0
	v_xad_u32 v55, 0x410, v17, 0
	v_xad_u32 v56, 0x450, v17, 0
	v_xad_u32 v57, 0x618, v17, 0
	v_xad_u32 v58, 0x658, v17, 0
	v_xad_u32 v59, 0x820, v17, 0
	v_xad_u32 v60, 0x860, v17, 0
	v_xad_u32 v61, 0xa28, v17, 0
	v_xad_u32 v62, 0xa68, v17, 0
	v_xad_u32 v63, 0xc30, v17, 0
	v_xad_u32 v64, 0xc70, v17, 0
	v_xad_u32 v65, 0xe38, v17, 0
	v_xad_u32 v66, 0xe78, v17, 0
	.loc	1 1408 17                       ; ragged.py:1408:17
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v34, v34, v19 :: v_dual_lshlrev_b32 v17, 16, v21
	v_dual_mul_f32 v40, v40, v19 :: v_dual_add_nc_u32 v27, 0, v24
	v_mul_f32_e32 v35, v35, v19
	v_mul_f32_e32 v68, v16, v67
	.loc	1 1415 17                       ; ragged.py:1415:17
	ds_store_b32 v18, v17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v70, v12, v67
	v_mul_f32_e32 v71, v11, v67
	v_mul_f32_e32 v72, v10, v67
	v_mul_f32_e32 v73, v9, v67
	.loc	1 1415 17                       ; ragged.py:1415:17
	ds_load_b128 v[9:12], v23 offset:256
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v69, v15, v67
	.loc	1 1415 17                       ; ragged.py:1415:17
	ds_load_b128 v[15:18], v23
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v28, v24, 4, 0
	v_xad_u32 v29, v24, 8, 0
	v_xad_u32 v30, v24, 12, 0
	v_xad_u32 v31, v24, 16, 0
	v_xad_u32 v32, v24, 20, 0
	v_xad_u32 v33, v24, 24, 0
	v_xad_u32 v50, v24, 28, 0
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v49, v49, v19
	v_mul_f32_e32 v39, v39, v19
	v_mul_f32_e32 v37, v37, v19
	.loc	1 1415 17                       ; ragged.py:1415:17
	ds_load_b128 v[19:22], v23 offset:16
	ds_load_b128 v[23:26], v23 offset:272
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v13, v13, v67
	v_mul_f32_e32 v14, v14, v67
	.loc	1 1534 34                       ; ragged.py:1534:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v40, v40, v10 :: v_dual_mul_f32 v7, v7, v67
	v_mul_f32_e32 v48, v48, v16
	v_mul_f32_e32 v16, v69, v16
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v8, v8, v67
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v38, v38, v12 :: v_dual_mul_f32 v13, v13, v18
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v6, v6, v67 :: v_dual_mul_f32 v41, v41, v9
	v_dual_mul_f32 v5, v5, v67 :: v_dual_mul_f32 v14, v14, v17
	v_mul_f32_e32 v4, v4, v67
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v46, v46, v18
	v_mul_f32_e32 v44, v44, v20
	v_dual_mul_f32 v34, v34, v26 :: v_dual_mul_f32 v3, v3, v67
	v_dual_mul_f32 v36, v36, v24 :: v_dual_mul_f32 v1, v1, v67
	v_mul_f32_e32 v18, v71, v20
	v_mul_f32_e32 v20, v73, v22
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v2, v2, v67 :: v_dual_mul_f32 v3, v3, v24
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v43, v43, v21
	v_mul_f32_e32 v7, v7, v10
	v_dual_mul_f32 v49, v49, v15 :: v_dual_mul_f32 v8, v8, v9
	v_mul_f32_e32 v15, v68, v15
	v_mul_f32_e32 v47, v47, v17
	v_dual_mul_f32 v45, v45, v19 :: v_dual_mul_f32 v2, v2, v25
	v_dual_mul_f32 v42, v42, v22 :: v_dual_mul_f32 v39, v39, v11
	v_mul_f32_e32 v35, v35, v25
	v_mul_f32_e32 v17, v70, v19
	v_dual_mul_f32 v19, v72, v21 :: v_dual_mul_f32 v6, v6, v11
	v_mul_f32_e32 v1, v1, v26
	v_mul_f32_e32 v5, v5, v12
	v_mul_f32_e32 v37, v37, v23
	v_mul_f32_e32 v4, v4, v23
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_bfe_u32 v9, v49, 16, 1
	v_bfe_u32 v25, v41, 16, 1
	v_bfe_u32 v73, v15, 16, 1
	v_bfe_u32 v81, v8, 16, 1
	v_bfe_u32 v10, v48, 16, 1
	v_bfe_u32 v26, v40, 16, 1
	v_bfe_u32 v74, v16, 16, 1
	v_bfe_u32 v82, v7, 16, 1
	v_bfe_u32 v11, v47, 16, 1
	v_bfe_u32 v67, v39, 16, 1
	v_bfe_u32 v75, v14, 16, 1
	v_bfe_u32 v83, v6, 16, 1
	v_bfe_u32 v12, v46, 16, 1
	v_bfe_u32 v68, v38, 16, 1
	v_bfe_u32 v76, v13, 16, 1
	v_bfe_u32 v84, v5, 16, 1
	v_bfe_u32 v21, v45, 16, 1
	v_bfe_u32 v22, v44, 16, 1
	v_bfe_u32 v23, v43, 16, 1
	v_bfe_u32 v24, v42, 16, 1
	v_bfe_u32 v69, v37, 16, 1
	v_bfe_u32 v71, v35, 16, 1
	v_bfe_u32 v72, v34, 16, 1
	v_bfe_u32 v77, v17, 16, 1
	v_bfe_u32 v78, v18, 16, 1
	v_bfe_u32 v79, v19, 16, 1
	v_bfe_u32 v80, v20, 16, 1
	v_bfe_u32 v85, v4, 16, 1
	v_bfe_u32 v87, v2, 16, 1
	v_bfe_u32 v88, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	v_cmp_o_f32_e64 s7, v41, v41
	v_bfe_u32 v70, v36, 16, 1
	v_cmp_o_f32_e64 s15, v15, v15
	v_cmp_o_f32_e64 s23, v8, v8
	v_bfe_u32 v86, v3, 16, 1
	v_add3_u32 v9, v49, v9, 0x7fff
	v_add3_u32 v25, v41, v25, 0x7fff
	v_add3_u32 v15, v15, v73, 0x7fff
	v_add3_u32 v8, v8, v81, 0x7fff
	v_cmp_o_f32_e64 s0, v48, v48
	v_cmp_o_f32_e64 s8, v40, v40
	v_cmp_o_f32_e64 s16, v16, v16
	v_cmp_o_f32_e64 s24, v7, v7
	v_add3_u32 v10, v48, v10, 0x7fff
	v_add3_u32 v26, v40, v26, 0x7fff
	v_add3_u32 v16, v16, v74, 0x7fff
	v_add3_u32 v7, v7, v82, 0x7fff
	v_cmp_o_f32_e64 s1, v47, v47
	v_cmp_o_f32_e64 s9, v39, v39
	v_cmp_o_f32_e64 s17, v14, v14
	v_cmp_o_f32_e64 s25, v6, v6
	v_add3_u32 v11, v47, v11, 0x7fff
	v_add3_u32 v39, v39, v67, 0x7fff
	v_add3_u32 v14, v14, v75, 0x7fff
	v_add3_u32 v6, v6, v83, 0x7fff
	v_cmp_o_f32_e64 s2, v46, v46
	v_cmp_o_f32_e64 s10, v38, v38
	v_cmp_o_f32_e64 s18, v13, v13
	v_cmp_o_f32_e64 s26, v5, v5
	v_add3_u32 v12, v46, v12, 0x7fff
	v_add3_u32 v38, v38, v68, 0x7fff
	v_add3_u32 v13, v13, v76, 0x7fff
	v_add3_u32 v5, v5, v84, 0x7fff
	v_cmp_o_f32_e64 s3, v45, v45
	v_cmp_o_f32_e64 s4, v44, v44
	v_cmp_o_f32_e64 s5, v43, v43
	v_cmp_o_f32_e64 s6, v42, v42
	v_cmp_o_f32_e64 s11, v37, v37
	v_cmp_o_f32_e64 s13, v35, v35
	v_cmp_o_f32_e64 s14, v34, v34
	v_cmp_o_f32_e64 s19, v17, v17
	v_cmp_o_f32_e64 s20, v18, v18
	v_cmp_o_f32_e64 s21, v19, v19
	v_cmp_o_f32_e64 s22, v20, v20
	v_cmp_o_f32_e64 s27, v4, v4
	v_cmp_o_f32_e64 s29, v2, v2
	v_cmp_o_f32_e64 s30, v1, v1
	v_add3_u32 v21, v45, v21, 0x7fff
	v_add3_u32 v22, v44, v22, 0x7fff
	v_add3_u32 v23, v43, v23, 0x7fff
	v_add3_u32 v24, v42, v24, 0x7fff
	v_add3_u32 v37, v37, v69, 0x7fff
	v_add3_u32 v35, v35, v71, 0x7fff
	v_add3_u32 v34, v34, v72, 0x7fff
	v_add3_u32 v17, v17, v77, 0x7fff
	v_add3_u32 v18, v18, v78, 0x7fff
	v_add3_u32 v19, v19, v79, 0x7fff
	v_add3_u32 v20, v20, v80, 0x7fff
	v_add3_u32 v4, v4, v85, 0x7fff
	v_add3_u32 v2, v2, v87, 0x7fff
	v_add3_u32 v1, v1, v88, 0x7fff
	v_cmp_o_f32_e64 s12, v36, v36
	v_cmp_o_f32_e64 s28, v3, v3
	v_add3_u32 v36, v36, v70, 0x7fff
	v_add3_u32 v3, v3, v86, 0x7fff
	v_cndmask_b16 v9.l, 0x7fff, v9.h, vcc_lo
	v_cndmask_b16 v8.l, 0x7fff, v25.h, s7
	v_cndmask_b16 v9.h, 0x7fff, v15.h, s15
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s23
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s0
	v_cndmask_b16 v7.l, 0x7fff, v26.h, s8
	v_cndmask_b16 v10.h, 0x7fff, v16.h, s16
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s24
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s1
	v_cndmask_b16 v6.l, 0x7fff, v39.h, s9
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s17
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s25
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s2
	v_cndmask_b16 v5.l, 0x7fff, v38.h, s10
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s18
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s26
	v_cndmask_b16 v13.l, 0x7fff, v21.h, s3
	v_cndmask_b16 v14.l, 0x7fff, v22.h, s4
	v_cndmask_b16 v15.l, 0x7fff, v23.h, s5
	v_cndmask_b16 v16.l, 0x7fff, v24.h, s6
	v_cndmask_b16 v4.l, 0x7fff, v37.h, s11
	v_cndmask_b16 v2.l, 0x7fff, v35.h, s13
	v_cndmask_b16 v1.l, 0x7fff, v34.h, s14
	v_cndmask_b16 v13.h, 0x7fff, v17.h, s19
	v_cndmask_b16 v14.h, 0x7fff, v18.h, s20
	v_cndmask_b16 v15.h, 0x7fff, v19.h, s21
	v_cndmask_b16 v16.h, 0x7fff, v20.h, s22
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s27
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s29
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s30
	v_cndmask_b16 v3.l, 0x7fff, v36.h, s12
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s28
	.loc	1 1534 34                       ; ragged.py:1534:34
	ds_store_2addr_b32 v27, v9, v8 offset1:32
	ds_store_2addr_b32 v28, v10, v7 offset1:32
	ds_store_2addr_b32 v29, v11, v6 offset1:32
	ds_store_2addr_b32 v30, v12, v5 offset1:32
	ds_store_2addr_b32 v31, v13, v4 offset1:32
	ds_store_2addr_b32 v32, v14, v3 offset1:32
	ds_store_2addr_b32 v33, v15, v2 offset1:32
	ds_store_2addr_b32 v50, v16, v1 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v16, v51
	ds_load_b32 v17, v52
	ds_load_b32 v14, v53
	ds_load_b32 v15, v54
	ds_load_b32 v12, v55
	ds_load_b32 v13, v56
	ds_load_b32 v10, v57
	ds_load_b32 v11, v58
	ds_load_b32 v8, v59
	ds_load_b32 v9, v60
	ds_load_b32 v6, v61
	ds_load_b32 v7, v62
	ds_load_b32 v4, v63
	ds_load_b32 v5, v64
	ds_load_b32 v1, v65
	ds_load_b32 v2, v66
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v3, 6, v0
	.loc	1 1536 56                       ; ragged.py:1536:56
	v_and_b32_e32 v0, 63, v0
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_lshr_b32 s0, s35, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_add_i32 s0, s35, s0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v3, s33, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1536 31                       ; ragged.py:1536:31
	v_lshl_or_b32 v0, s31, 6, v0
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_ashr_i32 s1, s0, 1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1542 54                       ; ragged.py:1542:54
	v_cmp_gt_i32_e32 vcc_lo, s1, v0
	.loc	1 1542 33 is_stmt 0             ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17 is_stmt 1             ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_9
; %bb.8:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s38, v3
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v20, v16, v17, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s36, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s37, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_9:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_11
; %bb.10:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s38, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v20, v14, v15, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s36, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s37, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_11:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_13
; %bb.12:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s38, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v20, v12, v13, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s36, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s37, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_13:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 6, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_15
; %bb.14:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s38, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v20, v10, v11, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s36, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s37, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_15:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 8, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_17
; %bb.16:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s38, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v20, v8, v9, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s36, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s37, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_17:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 10, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_19
; %bb.18:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s38, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v20, v6, v7, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s36, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s37, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_19:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 12, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_21
; %bb.20:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s38, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v20, v4, v5, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s36, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s37, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_21:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 14, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_23
; %bb.22:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s38, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v1, v2, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s36, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s37, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_23:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 16, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_25
; %bb.24:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s38, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v20, v16, v17, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v16, s0, s36, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s37, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[16:17], v20, off
.LBB0_25:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(15)
	v_or_b32_e32 v16, 18, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v16
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_27
; %bb.26:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v16, s38, v16
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v18, v14, v15, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[16:17], null, v16, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v17, 31, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_co_u32 v14, s0, s36, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v15, null, s37, v17, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[14:15], v18, off
.LBB0_27:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(13)
	v_or_b32_e32 v14, 20, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v14
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_29
; %bb.28:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v14, s38, v14
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v16, v12, v13, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[14:15], null, v14, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v15, 31, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[14:15], 2, v[14:15]
	v_add_co_u32 v12, s0, s36, v14
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s37, v15, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[12:13], v16, off
.LBB0_29:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(11)
	v_or_b32_e32 v12, 22, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v12
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_31
; %bb.30:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v12, s38, v12
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v14, v10, v11, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[12:13], null, v12, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v13, 31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_co_u32 v10, s0, s36, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, s37, v13, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[10:11], v14, off
.LBB0_31:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(9)
	v_or_b32_e32 v10, 24, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v10
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_33
; %bb.32:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v10, s38, v10
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v12, v8, v9, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[10:11], null, v10, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v11, 31, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	v_add_co_u32 v8, s0, s36, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s37, v11, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[8:9], v12, off
.LBB0_33:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(7)
	v_or_b32_e32 v8, 26, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v8
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_35
; %bb.34:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v8, s38, v8
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v10, v6, v7, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[8:9], null, v8, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v6, s0, s36, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, s37, v9, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[6:7], v10, off
.LBB0_35:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(5)
	v_or_b32_e32 v6, 28, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v6
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_37
; %bb.36:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v6, s38, v6
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v8, v4, v5, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[6:7], null, v6, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v7, 31, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[6:7], 2, v[6:7]
	v_add_co_u32 v4, s0, s36, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s37, v7, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[4:5], v8, off
.LBB0_37:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v3, 30, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v3
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_39
; %bb.38:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v3, s38, v3
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v1, v2, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[3:4], null, v3, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v4, 31, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[3:4], 2, v[3:4]
	v_add_co_u32 v0, vcc_lo, s36, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s37, v4, vcc_lo
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[0:1], v2, off
.LBB0_39:
	.loc	1 1276 5 is_stmt 1              ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 112
		.amdhsa_next_free_sgpr 39
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
		.amdhsa_inst_pref_size 59
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.num_vgpr, 112
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.numbered_sgpr, 39
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7532
; TotalNumSgprs: 41
; NumVgprs: 112
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 13
; NumSGPRsForWavesPerEU: 41
; NumVGPRsForWavesPerEU: 112
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     41
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     112
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
