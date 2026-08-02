	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
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
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s35, 63
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
	s_ashr_i32 s8, s5, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s8, s4
	.loc	1 1304 20                       ; ragged.py:1304:20
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
	s_mul_hi_u32 s6, s9, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s10, s6, s5
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s9, s5
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s5, s10, s6
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s6, s8
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s5, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s9, s6
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s16, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s6
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s16, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s4
	.loc	1 1329 39                       ; ragged.py:1329:39
	s_mul_i32 s31, s16, s34
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s7, s2
	s_xor_b32 s10, s2, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	s_ashr_i32 s10, s10, 31
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s9, s5
	s_add_i32 s9, s9, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s9, s7, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s9, s6
	s_sub_i32 s7, s7, s11
	s_add_i32 s11, s9, 1
	s_sub_i32 s12, s7, s6
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s9, s11, s9
	s_cselect_b32 s7, s12, s7
	s_add_i32 s11, s9, 1
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s6, s11, s9
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s17, s16, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s6, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s9, s6, s10
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[6:7], s[16:17], 2
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s8, s9, s8
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s38, s9, 6
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s33, s2, s8
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s6
	s_addc_u32 s5, s5, s7
	.loc	1 1322 22                       ; ragged.py:1322:22
	s_lshl_b32 s3, s3, 5
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s2, s[4:5], 0x0
	s_mov_b32 s8, 0
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s2, s2, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1314 26 is_stmt 0             ; ragged.py:1314:26
	s_lshr_b32 s4, s2, 31
	s_add_i32 s2, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s18, s2, 1
	.loc	1 1324 23 is_stmt 1             ; ragged.py:1324:23
	s_cmp_lt_i32 s3, s18
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1404 21                       ; ragged.py:1404:21
	s_add_i32 s2, s38, s31
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 21 is_stmt 0                ; ragged.py:0:21
	s_mov_b32 s8, -1
                                        ; implicit-def: $sgpr2
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x10
	s_load_b64 s[36:37], s[0:1], 0x28
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v37, 15, v0
	v_dual_mov_b32 v26, 0 :: v_dual_and_b32 v35, 64, v0
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v36, 32, v0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_mov_b32_e32 v21, 0
	v_mov_b32_e32 v15, 0
	v_mov_b32_e32 v23, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_lshl_b32 s17, s33, 6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b32 s8, s[0:1], 0x38
	s_load_b128 s[12:15], s[0:1], 0x0
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_lshlrev_b32_e32 v4, 4, v0
	s_add_i32 s2, s38, s31
	v_lshrrev_b32_e32 v5, 3, v35
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v3, 63, v0
	v_add_nc_u32_e32 v8, s2, v2
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_and_b32_e32 v1, 16, v4
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v6, s38, v2
	v_cmp_eq_u32_e64 s1, 0, v36
	v_mul_lo_u32 v9, s35, v5
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v7, s17, v3
	s_mov_b32 s11, 0x31027000
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v6
	s_mov_b32 s10, 0x7ffffffe
	s_lshl_b32 s19, s35, 1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s35, v7
	s_mul_i32 s21, s35, 3
	s_lshl_b32 s22, s35, 2
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[33:34], null, v8, s8, v[1:2]
	v_lshlrev_b32_e32 v1, 1, v0
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	.loc	1 1333 39                       ; ragged.py:1333:39
	s_mul_i32 s20, s16, s8
	s_mul_i32 s23, s35, 5
	v_and_b32_e32 v6, 24, v1
	v_xor_b32_e32 v1, v1, v2
	s_mul_i32 s24, s35, 6
	s_mul_i32 s25, s35, 7
	s_lshl_b32 s26, s35, 4
	v_lshl_or_b32 v6, v37, 5, v6
	v_and_b32_e32 v1, 24, v1
	s_mul_i32 s27, s35, 17
	s_mul_i32 s28, s35, 18
	s_mul_i32 s29, s35, 19
	s_mul_i32 s30, s35, 20
	v_xor_b32_e32 v1, v1, v5
	v_cndmask_b32_e64 v5, 0x208, 0, s1
	s_mul_i32 s39, s35, 21
	s_mul_i32 s40, s35, 22
	s_mul_i32 s41, s35, 23
	v_lshl_or_b32 v8, v3, 5, v1
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v2, 24, v0
	v_xor_b32_e32 v5, v6, v5
	s_mov_b32 s8, s12
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v12, 16, v8
	v_add_nc_u32_e32 v44, 0, v8
	v_xor_b32_e32 v2, v4, v2
	v_lshl_or_b32 v4, v35, 3, v6
	v_xor_b32_e32 v13, 8, v5
	v_xor_b32_e32 v14, 16, v5
	v_xor_b32_e32 v15, 24, v5
	v_xor_b32_e32 v7, 8, v2
	v_xor_b32_e32 v10, 8, v4
	v_xor_b32_e32 v6, 16, v4
	v_xor_b32_e32 v11, 24, v4
	v_xor_b32_e32 v16, 0x410, v5
	v_xor_b32_e32 v17, 0x418, v5
	v_xor_b32_e32 v18, 0x408, v5
	v_add_nc_u32_e32 v38, 0, v2
	v_add_nc_u32_e32 v39, 0, v7
	v_add_nc_u32_e32 v40, 0, v4
	v_add_nc_u32_e32 v41, 0, v10
	v_add_nc_u32_e32 v42, 0, v6
	v_dual_mov_b32 v8, v1 :: v_dual_add_nc_u32 v43, 0, v11
	v_dual_mov_b32 v10, v1 :: v_dual_add_nc_u32 v45, 0, v12
	v_dual_mov_b32 v25, v1 :: v_dual_add_nc_u32 v46, 0, v5
	v_dual_mov_b32 v12, v1 :: v_dual_add_nc_u32 v47, 0, v13
	v_dual_mov_b32 v27, v1 :: v_dual_add_nc_u32 v48, 0, v14
	v_dual_mov_b32 v14, v1 :: v_dual_add_nc_u32 v49, 0, v15
	v_dual_mov_b32 v29, v1 :: v_dual_add_nc_u32 v50, 0, v16
	v_dual_mov_b32 v16, v1 :: v_dual_add_nc_u32 v51, 0, v17
	v_dual_mov_b32 v31, v1 :: v_dual_add_nc_u32 v52, 0, v18
	v_mov_b32_e32 v2, v1
	.loc	1 1324 23                       ; ragged.py:1324:23
	v_add3_u32 v34, v3, v9, s17
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v24, v1
	s_mov_b32 s9, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1335 42                       ; ragged.py:1335:42
	s_add_i32 s1, s3, s20
	.loc	1 1334 42                       ; ragged.py:1334:42
	v_add_nc_u32_e32 v55, s3, v33
	v_mad_u64_u32 v[53:54], null, s1, s35, v[34:35]
	.loc	1 1346 21                       ; ragged.py:1346:21
	s_add_i32 s3, s3, 32
	.loc	1 1334 34                       ; ragged.py:1334:34
	v_cndmask_b32_e32 v54, 0x80000000, v55, vcc_lo
	.loc	1 1324 23                       ; ragged.py:1324:23
	s_cmp_lt_i32 s3, s18
	v_add_nc_u32_e32 v55, s35, v53
	v_add_nc_u32_e32 v56, s19, v53
	v_add_nc_u32_e32 v57, s21, v53
	v_add_nc_u32_e32 v58, s22, v53
	v_add_nc_u32_e32 v59, s23, v53
	v_add_nc_u32_e32 v60, s24, v53
	v_add_nc_u32_e32 v61, s25, v53
	v_add_nc_u32_e32 v62, s26, v53
	v_add_nc_u32_e32 v63, s27, v53
	v_add_nc_u32_e32 v64, s28, v53
	v_add_nc_u32_e32 v65, s29, v53
	v_add_nc_u32_e32 v66, s30, v53
	v_add_nc_u32_e32 v67, s39, v53
	v_add_nc_u32_e32 v68, s40, v53
	v_add_nc_u32_e32 v69, s41, v53
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v53, 0x80000000, v53, s0
	v_cndmask_b32_e64 v55, 0x80000000, v55, s0
	v_cndmask_b32_e64 v56, 0x80000000, v56, s0
	v_cndmask_b32_e64 v57, 0x80000000, v57, s0
	v_cndmask_b32_e64 v58, 0x80000000, v58, s0
	v_cndmask_b32_e64 v59, 0x80000000, v59, s0
	v_cndmask_b32_e64 v60, 0x80000000, v60, s0
	v_cndmask_b32_e64 v61, 0x80000000, v61, s0
	v_cndmask_b32_e64 v62, 0x80000000, v62, s0
	v_cndmask_b32_e64 v63, 0x80000000, v63, s0
	v_cndmask_b32_e64 v64, 0x80000000, v64, s0
	v_cndmask_b32_e64 v65, 0x80000000, v65, s0
	v_cndmask_b32_e64 v66, 0x80000000, v66, s0
	v_cndmask_b32_e64 v67, 0x80000000, v67, s0
	v_cndmask_b32_e64 v68, 0x80000000, v68, s0
	v_cndmask_b32_e64 v69, 0x80000000, v69, s0
	s_clause 0xf
	buffer_load_u8 v73, v53, s[12:15], 0 offen
	buffer_load_u8 v71, v55, s[12:15], 0 offen
	buffer_load_u8 v75, v56, s[12:15], 0 offen
	buffer_load_u8 v70, v57, s[12:15], 0 offen
	buffer_load_u8 v74, v58, s[12:15], 0 offen
	buffer_load_u8 v72, v59, s[12:15], 0 offen
	buffer_load_u8 v76, v60, s[12:15], 0 offen
	buffer_load_u8 v77, v61, s[12:15], 0 offen
	buffer_load_u8 v78, v62, s[12:15], 0 offen
	buffer_load_u8 v79, v63, s[12:15], 0 offen
	buffer_load_u8 v80, v64, s[12:15], 0 offen
	buffer_load_u8 v81, v65, s[12:15], 0 offen
	buffer_load_u8 v82, v66, s[12:15], 0 offen
	buffer_load_u8 v83, v67, s[12:15], 0 offen
	buffer_load_u8 v84, v68, s[12:15], 0 offen
	buffer_load_u8 v85, v69, s[12:15], 0 offen
	.loc	1 1334 34                       ; ragged.py:1334:34
	buffer_load_b128 v[53:56], v54, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v38, v[53:54]
	ds_store_b64 v39, v[55:56]
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_lshlrev_b16 v69.l, 8, v77.l
	v_lshlrev_b16 v69.h, 8, v72.l
	v_lshlrev_b16 v70.l, 8, v70.l
	v_lshlrev_b16 v70.h, 8, v71.l
	v_lshlrev_b16 v71.l, 8, v85.l
	v_lshlrev_b16 v71.h, 8, v83.l
	v_lshlrev_b16 v72.l, 8, v81.l
	v_lshlrev_b16 v72.h, 8, v79.l
	v_or_b16 v74.h, v76.l, v69.l
	v_or_b16 v74.l, v74.l, v69.h
	v_or_b16 v73.h, v75.l, v70.l
	v_or_b16 v73.l, v73.l, v70.h
	v_or_b16 v70.h, v84.l, v71.l
	v_or_b16 v70.l, v82.l, v71.h
	v_or_b16 v69.h, v80.l, v72.l
	v_or_b16 v69.l, v78.l, v72.h
	.loc	1 1334 34                       ; ragged.py:1334:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[53:56], v40 offset1:2
	ds_load_2addr_stride64_b64 v[57:60], v41 offset1:2
	ds_load_2addr_stride64_b64 v[61:64], v42 offset1:2
	ds_load_2addr_stride64_b64 v[65:68], v43 offset1:2
	.loc	1 1335 34                       ; ragged.py:1335:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v44, v[73:74]
	ds_store_b64 v45, v[69:70]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[69:72], v46 offset1:2
	ds_load_b64 v[73:74], v50
	ds_load_b64 v[75:76], v47
	ds_load_b64 v[77:78], v48
	ds_load_b64 v[79:80], v49
	ds_load_b64 v[81:82], v51
	ds_load_b64 v[83:84], v52
	.loc	1 1336 31                       ; ragged.py:1336:31
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[69:70], v[53:54], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[73:74], v[53:54], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[69:70], v[55:56], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[73:74], v[55:56], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[75:76], v[57:58], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[81:82], v[57:58], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[75:76], v[59:60], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[81:82], v[59:60], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[77:78], v[61:62], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[71:72], v[61:62], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[77:78], v[63:64], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[71:72], v[63:64], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[79:80], v[65:66], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[83:84], v[65:66], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[79:80], v[67:68], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[83:84], v[67:68], v[17:24] neg_lo:[1,1,0]
	.loc	1 1324 23                       ; ragged.py:1324:23
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v33, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v1, v25
	v_cvt_f32_i32_e32 v25, v2
	v_cvt_f32_i32_e32 v2, v26
	v_cvt_f32_i32_e32 v26, v3
	v_cvt_f32_i32_e32 v3, v27
	v_cvt_f32_i32_e32 v27, v4
	v_cvt_f32_i32_e32 v4, v28
	v_cvt_f32_i32_e32 v28, v5
	v_cvt_f32_i32_e32 v5, v29
	v_cvt_f32_i32_e32 v29, v6
	v_cvt_f32_i32_e32 v6, v30
	v_cvt_f32_i32_e32 v30, v7
	v_cvt_f32_i32_e32 v7, v31
	v_cvt_f32_i32_e32 v31, v8
	v_cvt_f32_i32_e32 v8, v32
	v_cvt_f32_i32_e32 v32, v9
	v_cvt_f32_i32_e32 v9, v17
	v_cvt_f32_i32_e32 v17, v10
	v_cvt_f32_i32_e32 v10, v18
	v_cvt_f32_i32_e32 v18, v11
	v_cvt_f32_i32_e32 v11, v19
	v_cvt_f32_i32_e32 v19, v12
	v_cvt_f32_i32_e32 v12, v20
	v_cvt_f32_i32_e32 v20, v13
	v_cvt_f32_i32_e32 v13, v21
	v_cvt_f32_i32_e32 v21, v14
	v_cvt_f32_i32_e32 v14, v22
	v_cvt_f32_i32_e32 v22, v15
	v_cvt_f32_i32_e32 v15, v23
	v_cvt_f32_i32_e32 v23, v16
	v_cvt_f32_i32_e32 v16, v24
.LBB0_7:                                ; %._crit_edge
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v24, 2, v35
	v_lshrrev_b32_e32 v34, 4, v0
	v_lshrrev_b32_e32 v38, 1, v36
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s1, s5, 0xffff
	s_mov_b32 s3, 0x31027000
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v24, v24, v37
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_mov_b32 s0, s4
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_or_b32 v34, v34, 1, v38
	.loc	1 1411 33                       ; ragged.py:1411:33
	s_mul_i32 s5, s16, s35
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v38, 32, v24
	.loc	1 1309 18 is_stmt 0             ; ragged.py:1309:18
	v_or_b32_e32 v39, s38, v24
	.loc	1 1403 36 is_stmt 1             ; ragged.py:1403:36
	v_add_lshl_u32 v24, s2, v24, 1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v40, 2, v34
	v_or_b32_e32 v41, 4, v34
	.loc	1 1309 18 is_stmt 0             ; ragged.py:1309:18
	v_or_b32_e32 v55, s38, v38
	.loc	1 1311 20 is_stmt 1             ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v39
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_lshl_u32 v38, s2, v38, 1
	s_mov_b32 s2, 0x7ffffffe
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v42, 6, v34
	v_or_b32_e32 v43, 8, v34
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v55
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v44, 10, v34
	v_or_b32_e32 v45, 12, v34
	v_or_b32_e32 v46, 14, v34
	v_or_b32_e32 v47, 32, v34
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v48, 34, v34
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_clause 0x1
	buffer_load_u16 v39, v24, s[0:3], 0 offen
	buffer_load_u16 v38, v38, s[0:3], 0 offen
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v49, 36, v34
	v_or_b32_e32 v50, 38, v34
	v_or_b32_e32 v51, 40, v34
	v_or_b32_e32 v52, 42, v34
	v_or_b32_e32 v53, 44, v34
	v_or_b32_e32 v54, 46, v34
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v56, s17, v34
	v_or_b32_e32 v57, s17, v40
	v_or_b32_e32 v58, s17, v41
	v_or_b32_e32 v59, s17, v42
	v_or_b32_e32 v60, s17, v43
	v_or_b32_e32 v61, s17, v44
	v_or_b32_e32 v62, s17, v45
	v_or_b32_e32 v63, s17, v46
	v_or_b32_e32 v64, s17, v47
	v_or_b32_e32 v65, s17, v48
	v_or_b32_e32 v66, s17, v49
	v_or_b32_e32 v67, s17, v50
	v_or_b32_e32 v68, s17, v51
	v_or_b32_e32 v69, s17, v52
	v_or_b32_e32 v70, s17, v53
	v_or_b32_e32 v71, s17, v54
	.loc	1 1411 21                       ; ragged.py:1411:21
	s_add_i32 s17, s17, s5
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v56
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v24, s17, v34, 1
	v_add_lshl_u32 v34, s17, v40, 1
	v_add_lshl_u32 v40, s17, v41, 1
	v_add_lshl_u32 v41, s17, v42, 1
	v_add_lshl_u32 v42, s17, v43, 1
	v_add_lshl_u32 v43, s17, v44, 1
	v_add_lshl_u32 v44, s17, v45, 1
	v_add_lshl_u32 v45, s17, v46, 1
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v57
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v46, s17, v47, 1
	s_and_b32 s1, s7, 0xffff
	s_mov_b32 s0, s6
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_bfe_i32 v57, v0, 4, 1
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v58
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v59
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v60
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v61
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v62
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(1)
	v_dual_cndmask_b32 v44, 0x80000000, v44 :: v_dual_lshlrev_b32 v39, 16, v39
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v63
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v21, v21, v39 :: v_dual_and_b32 v56, 0x60, v0
	v_mul_f32_e32 v33, v33, v39
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v64
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_clause 0x7
	buffer_load_u16 v47, v24, s[0:3], 0 offen
	buffer_load_u16 v55, v34, s[0:3], 0 offen
	buffer_load_u16 v40, v40, s[0:3], 0 offen
	buffer_load_u16 v41, v41, s[0:3], 0 offen
	buffer_load_u16 v42, v42, s[0:3], 0 offen
	buffer_load_u16 v43, v43, s[0:3], 0 offen
	buffer_load_u16 v44, v44, s[0:3], 0 offen
	buffer_load_u16 v45, v45, s[0:3], 0 offen
	v_add_lshl_u32 v24, s17, v48, 1
	v_add_lshl_u32 v48, s17, v50, 1
	v_add_lshl_u32 v50, s17, v52, 1
	v_dual_cndmask_b32 v34, 0x80000000, v46 :: v_dual_mul_f32 v25, v25, v39
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v65
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v46, s17, v49, 1
	v_add_lshl_u32 v49, s17, v51, 1
	v_add_lshl_u32 v51, s17, v53, 1
	v_add_lshl_u32 v52, s17, v54, 1
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_mul_f32 v27, v27, v39
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v66
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v29, v29, v39
	v_mul_f32_e32 v31, v31, v39
	v_mul_f32_e32 v26, v26, v39
	v_mul_f32_e32 v28, v28, v39
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v67
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshrrev_b32_e32 v67, 3, v56
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v17, v17, v39
	v_mul_f32_e32 v19, v19, v39
	v_dual_mul_f32 v23, v23, v39 :: v_dual_cndmask_b32 v48, 0x80000000, v48
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v68
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v69
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v70
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v51, 0x80000000, v51, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v71
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v52, 0x80000000, v52, vcc_lo
	s_clause 0x7
	buffer_load_u16 v53, v34, s[0:3], 0 offen
	buffer_load_u16 v54, v24, s[0:3], 0 offen
	buffer_load_u16 v46, v46, s[0:3], 0 offen
	buffer_load_u16 v48, v48, s[0:3], 0 offen
	buffer_load_u16 v49, v49, s[0:3], 0 offen
	buffer_load_u16 v50, v50, s[0:3], 0 offen
	buffer_load_u16 v51, v51, s[0:3], 0 offen
	buffer_load_u16 v52, v52, s[0:3], 0 offen
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_and_b32_e32 v24, 31, v0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v34.h, 0
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v30, v30, v39
	v_mul_f32_e32 v32, v32, v39
	.loc	1 1534 34                       ; ragged.py:1534:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v59.h, v34.h
	v_mov_b16_e32 v69.h, v34.h
	v_mov_b16_e32 v64.h, v34.h
	v_mov_b16_e32 v71.h, v34.h
	v_mov_b16_e32 v60.h, v34.h
	v_mov_b16_e32 v61.h, v34.h
	v_mov_b16_e32 v62.h, v34.h
	v_mov_b16_e32 v63.h, v34.h
	v_mov_b16_e32 v65.h, v34.h
	v_mov_b16_e32 v68.h, v34.h
	v_mov_b16_e32 v70.h, v34.h
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v0, 5, v0
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v47, 16, v47
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_lshlrev_b32_e32 v38, 16, v38
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v41, 16, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v33, v33, v47 :: v_dual_lshlrev_b32 v58, 2, v37
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v1, v1, v38 :: v_dual_lshlrev_b32 v66, 2, v24
	v_mul_f32_e32 v3, v3, v38
	v_dual_mul_f32 v4, v4, v38 :: v_dual_lshlrev_b32 v55, 16, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshl_or_b32 v56, v56, 3, v58
	v_lshl_or_b32 v37, v37, 8, v66
	.loc	1 1408 17                       ; ragged.py:1408:17
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v6, v6, v38 :: v_dual_lshlrev_b32 v43, 16, v43
	v_dual_mul_f32 v15, v15, v38 :: v_dual_lshlrev_b32 v40, 16, v40
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xor_b32_e32 v56, v56, v67
	v_xor_b32_e32 v36, v37, v36
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v25, v25, v55 :: v_dual_lshlrev_b32 v42, 16, v42
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v2, v2, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_and_or_b32 v37, 0x1040, v57, v56
	v_lshl_or_b32 v35, v35, 1, v36
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v12, v12, v38 :: v_dual_mul_f32 v1, v1, v47
	v_dual_mul_f32 v14, v14, v38 :: v_dual_mul_f32 v3, v3, v40
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v34.l, v33.h
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v5, v5, v38 :: v_dual_add_nc_u32 v36, 0, v37
	v_dual_mul_f32 v7, v7, v38 :: v_dual_add_nc_u32 v78, 0, v35
	v_dual_mul_f32 v18, v18, v39 :: v_dual_mul_f32 v9, v9, v38
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v29, v29, v43
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v20, v20, v39 :: v_dual_mul_f32 v11, v11, v38
	v_dual_mul_f32 v22, v22, v39 :: v_dual_mul_f32 v13, v13, v38
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v27, v27, v41 :: v_dual_lshlrev_b32 v44, 16, v44
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v8, v8, v38
	v_mul_f32_e32 v16, v16, v38
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v26, v26, v40 :: v_dual_mul_f32 v5, v5, v42
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v59.l, v1.h
	v_mov_b16_e32 v56.h, v34.h
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v53, 16, v53
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v54, 16, v54
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v48, 16, v48
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_and_b32_e32 v40, 1, v59
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_lshlrev_b32_e32 v45, 16, v45
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v17, v17, v54
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v19, v19, v48 :: v_dual_lshlrev_b32 v50, 16, v50
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v51, 16, v51
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v52, 16, v52
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v21, v21, v50
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v10, v10, v38
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v14, v14, v50
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_and_b32_e32 v38, 1, v34
	v_mov_b16_e32 v34.l, v25.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v23, v23, v52 :: v_dual_mul_f32 v28, v28, v42
	v_mul_f32_e32 v9, v9, v53
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v56.l, v14.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v10, v10, v54
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v33, v33, v38, 0x7fff
	v_and_b32_e32 v38, 1, v34
	v_mov_b16_e32 v34.l, v26.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v32, v32, v53 :: v_dual_mul_f32 v15, v15, v51
	v_mul_f32_e32 v7, v7, v44
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s15, v1, v1
	v_and_b32_e32 v53, 1, v56
	v_mov_b16_e32 v69.l, v10.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v6, v6, v43
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v1, v1, v40, 0x7fff
	v_and_b32_e32 v40, 1, v34
	v_mov_b16_e32 v34.l, v27.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v16, v16, v52
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v64.l, v6.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v2, v2, v55
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v67.h, v34.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v31, v31, v45 :: v_dual_lshlrev_b32 v46, 16, v46
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v71.l, v16.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v12, v12, v48
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v58.h, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v30, v30, v44 :: v_dual_mul_f32 v11, v11, v46
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_and_b32_e32 v55, 1, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v67.l, v12.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v8, v8, v45 :: v_dual_and_b32 v45, 1, v64
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v60.l, v2.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v20, v20, v49
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s16, v2, v2
	v_mov_b16_e32 v58.l, v8.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v4, v4, v41 :: v_dual_and_b32 v41, 1, v60
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v61.l, v3.h
	v_cndmask_b16 v1.l, 0x7fff, v33.h, vcc_lo
	v_cmp_o_f32_e64 s0, v25, v25
	v_and_b32_e32 v47, 1, v58
	v_add3_u32 v2, v2, v41, 0x7fff
	v_and_b32_e32 v41, 1, v34
	v_mov_b16_e32 v34.l, v28.h
	v_mov_b16_e32 v62.l, v4.h
	v_and_b32_e32 v42, 1, v61
	v_add3_u32 v25, v25, v38, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v22, v22, v51 :: v_dual_and_b32 v33, 1, v34
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v34.l, v29.h
	v_cmp_o_f32_e64 s17, v3, v3
	v_and_b32_e32 v43, 1, v62
	v_add3_u32 v3, v3, v42, 0x7fff
	v_cmp_o_f32_e64 s18, v4, v4
	v_and_b32_e32 v38, 1, v34
	v_mov_b16_e32 v34.l, v30.h
	v_add3_u32 v4, v4, v43, 0x7fff
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v18, v18, v46 :: v_dual_mul_f32 v13, v13, v49
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s1, v26, v26
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v42, 1, v34
	v_mov_b16_e32 v34.l, v31.h
	v_mov_b16_e32 v63.l, v5.h
	v_add3_u32 v26, v26, v40, 0x7fff
	v_cmp_o_f32_e64 s2, v27, v27
	v_mov_b16_e32 v65.l, v7.h
	v_and_b32_e32 v43, 1, v34
	v_mov_b16_e32 v34.l, v32.h
	v_and_b32_e32 v44, 1, v63
	v_cndmask_b16 v2.l, 0x7fff, v25.h, s0
	v_add3_u32 v25, v27, v41, 0x7fff
	v_cmp_o_f32_e64 s3, v28, v28
	v_and_b32_e32 v40, 1, v34
	v_mov_b16_e32 v34.l, v17.h
	v_mov_b16_e32 v68.l, v9.h
	v_cndmask_b16 v3.l, 0x7fff, v26.h, s1
	v_add3_u32 v26, v28, v33, 0x7fff
	v_cmp_o_f32_e64 s4, v29, v29
	v_and_b32_e32 v27, 1, v34
	v_mov_b16_e32 v34.l, v18.h
	v_cmp_o_f32_e64 s19, v5, v5
	v_and_b32_e32 v46, 1, v65
	v_add3_u32 v5, v5, v44, 0x7fff
	v_cndmask_b16 v4.l, 0x7fff, v25.h, s2
	v_add3_u32 v25, v29, v38, 0x7fff
	v_and_b32_e32 v28, 1, v34
	v_mov_b16_e32 v34.l, v19.h
	v_cmp_o_f32_e64 s5, v30, v30
	v_and_b32_e32 v48, 1, v68
	v_cndmask_b16 v5.l, 0x7fff, v26.h, s3
	v_add3_u32 v26, v30, v42, 0x7fff
	v_and_b32_e32 v49, 1, v69
	v_cmp_o_f32_e64 s20, v6, v6
	v_add3_u32 v6, v6, v45, 0x7fff
	v_cmp_o_f32_e64 s6, v31, v31
	v_cmp_o_f32_e64 s21, v7, v7
	v_add3_u32 v7, v7, v46, 0x7fff
	v_cndmask_b16 v6.l, 0x7fff, v25.h, s4
	v_add3_u32 v25, v31, v43, 0x7fff
	v_and_b32_e32 v29, 1, v34
	v_mov_b16_e32 v34.l, v20.h
	v_cmp_o_f32_e64 s7, v32, v32
	v_cmp_o_f32_e64 s23, v9, v9
	v_add3_u32 v9, v9, v48, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v26.h, s5
	v_add3_u32 v26, v32, v40, 0x7fff
	v_and_b32_e32 v51, 1, v67
	v_cmp_o_f32_e64 s22, v8, v8
	v_add3_u32 v8, v8, v47, 0x7fff
	v_mov_b16_e32 v66.h, v34.h
	v_mov_b16_e32 v66.l, v11.h
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s15
	v_cndmask_b16 v8.l, 0x7fff, v25.h, s6
	v_and_b32_e32 v25, 1, v34
	v_mov_b16_e32 v34.l, v21.h
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v86, 0x1040, v35, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s8, v17, v17
	v_cmp_o_f32_e64 s24, v10, v10
	v_add3_u32 v10, v10, v49, 0x7fff
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s23
	v_add3_u32 v17, v17, v27, 0x7fff
	v_cndmask_b16 v9.l, 0x7fff, v26.h, s7
	v_mov_b16_e32 v70.l, v13.h
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v79, v35, 4, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_and_b32_e32 v50, 1, v66
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s16
	.loc	1 1534 34                       ; ragged.py:1534:34
	ds_store_b32 v78, v1
	ds_store_b32 v86, v9
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_and_b32_e32 v1, 1, v34
	v_mov_b16_e32 v34.l, v22.h
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v87, 0x1044, v35, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s24
	v_cndmask_b16 v10.l, 0x7fff, v17.h, s8
	v_mov_b16_e32 v57.h, v34.h
	v_mov_b16_e32 v57.l, v15.h
	v_and_b32_e32 v52, 1, v70
	v_cmp_o_f32_e64 s9, v18, v18
	v_cmp_o_f32_e64 s11, v20, v20
	v_cmp_o_f32_e64 s25, v11, v11
	v_add3_u32 v11, v11, v50, 0x7fff
	v_add3_u32 v18, v18, v28, 0x7fff
	.loc	1 1534 34                       ; ragged.py:1534:34
	ds_store_b32 v79, v2
	ds_store_b32 v87, v10
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v2, v20, v25, 0x7fff
	v_and_b32_e32 v10, 1, v34
	v_mov_b16_e32 v34.l, v23.h
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v80, v35, 8, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s27, v13, v13
	v_and_b32_e32 v54, 1, v57
	v_add3_u32 v13, v13, v52, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s17
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v88, 0x1048, v35, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s25
	v_cndmask_b16 v11.l, 0x7fff, v18.h, s9
	v_cndmask_b16 v13.l, 0x7fff, v2.h, s11
	v_and_b32_e32 v2, 1, v34
	v_cmp_o_f32_e64 s10, v19, v19
	v_cmp_o_f32_e64 s12, v21, v21
	v_cmp_o_f32_e64 s26, v12, v12
	v_cmp_o_f32_e64 s28, v14, v14
	v_add3_u32 v12, v12, v51, 0x7fff
	v_add3_u32 v14, v14, v53, 0x7fff
	v_add3_u32 v9, v19, v29, 0x7fff
	v_add3_u32 v1, v21, v1, 0x7fff
	v_cmp_o_f32_e64 s13, v22, v22
	v_cmp_o_f32_e64 s29, v15, v15
	v_add3_u32 v15, v15, v54, 0x7fff
	.loc	1 1534 34                       ; ragged.py:1534:34
	ds_store_b32 v80, v3
	ds_store_b32 v88, v11
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v3, v22, v10, 0x7fff
	v_cmp_o_f32_e64 s14, v23, v23
	v_cmp_o_f32_e64 s30, v16, v16
	v_add3_u32 v16, v16, v55, 0x7fff
	v_add3_u32 v2, v23, v2, 0x7fff
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v81, v35, 12, 0
	v_xad_u32 v82, v35, 16, 0
	v_xad_u32 v83, v35, 20, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s18
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s19
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s20
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v72, v37, 64, 0
	v_xad_u32 v89, 0x104c, v35, 0
	v_xad_u32 v90, 0x1050, v35, 0
	v_xad_u32 v91, 0x1054, v35, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s26
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s27
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s28
	v_cndmask_b16 v12.l, 0x7fff, v9.h, s10
	v_cndmask_b16 v14.l, 0x7fff, v1.h, s12
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v73, 0x410, v37, 0
	v_xad_u32 v84, v35, 24, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s21
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v74, 0x450, v37, 0
	v_xad_u32 v39, 0x1058, v35, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s29
	v_cndmask_b16 v15.l, 0x7fff, v3.h, s13
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v75, 0x820, v37, 0
	v_xad_u32 v85, v35, 28, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s22
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s30
	v_cndmask_b16 v16.l, 0x7fff, v2.h, s14
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v76, 0x860, v37, 0
	v_xad_u32 v77, 0xc30, v37, 0
	v_xad_u32 v37, 0xc70, v37, 0
	v_xad_u32 v35, 0x105c, v35, 0
	ds_store_b32 v81, v4
	ds_store_b32 v89, v12
	ds_store_b32 v82, v5
	ds_store_b32 v90, v13
	ds_store_b32 v83, v6
	ds_store_b32 v91, v14
	ds_store_b32 v84, v7
	ds_store_b32 v39, v15
	ds_store_b32 v85, v8
	ds_store_b32 v35, v16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[13:14], v36 offset1:32
	ds_load_2addr_b32 v[15:16], v72 offset1:32
	ds_load_2addr_b32 v[9:10], v73 offset1:32
	ds_load_2addr_b32 v[11:12], v74 offset1:32
	ds_load_2addr_b32 v[5:6], v75 offset1:32
	ds_load_2addr_b32 v[7:8], v76 offset1:32
	ds_load_2addr_b32 v[1:2], v77 offset1:32
	ds_load_2addr_b32 v[3:4], v37 offset1:32
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_lshr_b32 s0, s35, 31
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v17, s38, v0
	.loc	1 1536 31                       ; ragged.py:1536:31
	v_lshl_or_b32 v0, s33, 5, v24
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_add_i32 s0, s35, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_ashr_i32 s1, s0, 1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v17
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
	v_add_nc_u32_e32 v18, s31, v17
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v20, v13, v15, 0x1000504
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
	v_or_b32_e32 v18, 4, v17
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
	v_add_nc_u32_e32 v18, s31, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v20, v9, v11, 0x1000504
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
	v_or_b32_e32 v18, 8, v17
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
	v_add_nc_u32_e32 v18, s31, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v20, v5, v7, 0x1000504
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
	v_or_b32_e32 v18, 12, v17
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
	v_add_nc_u32_e32 v18, s31, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v1, v3, 0x1000504
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
.LBB0_15:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 16, v17
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
	v_add_nc_u32_e32 v18, s31, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v20, v14, v16, 0x1000504
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
	v_or_b32_e32 v18, 20, v17
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
	v_add_nc_u32_e32 v18, s31, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v20, v10, v12, 0x1000504
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
	v_or_b32_e32 v18, 24, v17
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
	v_add_nc_u32_e32 v18, s31, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v20, v6, v8, 0x1000504
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
	v_or_b32_e32 v18, 28, v17
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
	v_add_nc_u32_e32 v18, s31, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v2, v4, 0x1000504
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
	v_or_b32_e32 v18, 32, v17
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
	v_add_nc_u32_e32 v18, s31, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v13, v13, v15, 0x3020706
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
	global_store_b32 v[18:19], v13, off
.LBB0_25:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(7)
	v_or_b32_e32 v13, 36, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v13
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_27
; %bb.26:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v13, s31, v13
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v9, v9, v11, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v13, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s36, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s37, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v9, off
.LBB0_27:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(5)
	v_or_b32_e32 v9, 40, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v9
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_29
; %bb.28:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v9, s31, v9
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v5, v7, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v9, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s36, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s37, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v5, off
.LBB0_29:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(3)
	v_or_b32_e32 v5, 44, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v5
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_31
; %bb.30:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v5, s31, v5
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[18:19], null, v5, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v3, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s36, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s37, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v1, off
.LBB0_31:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(1)
	v_or_b32_e32 v1, 48, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_33
; %bb.32:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[18:19], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v14, v16, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v13, s0, s36, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v14, null, s37, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[13:14], v1, off
.LBB0_33:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 52, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_35
; %bb.34:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[13:14], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v10, v12, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v14, 31, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[13:14], 2, v[13:14]
	v_add_co_u32 v9, s0, s36, v13
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s37, v14, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[9:10], v1, off
.LBB0_35:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 56, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_37
; %bb.36:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[9:10], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v6, v8, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v10, 31, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	v_add_co_u32 v5, s0, s36, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, s37, v10, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[5:6], v1, off
.LBB0_37:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 60, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_39
; %bb.38:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s31, v1
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v4, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[0:1], null, v1, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s36, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s37, v1, vcc_lo
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[0:1], v2, off
.LBB0_39:
	.loc	1 1276 5 is_stmt 1              ; ragged.py:1276:5
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 92
		.amdhsa_next_free_sgpr 42
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
		.amdhsa_inst_pref_size 55
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_vgpr, 92
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.numbered_sgpr, 42
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6948
; TotalNumSgprs: 44
; NumVgprs: 92
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 11
; NumSGPRsForWavesPerEU: 44
; NumVGPRsForWavesPerEU: 92
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     44
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     92
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
