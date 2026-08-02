	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[16:17], s[0:1], 0x30
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s10, s2
	v_lshlrev_b32_e32 v34, 1, v0
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
	s_ashr_i32 s9, s4, 5
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s8, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s8, s9
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
	s_mul_hi_u32 s6, s10, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s11, s6, s5
	s_sub_i32 s10, s10, s11
	s_add_i32 s11, s6, 1
	s_sub_i32 s12, s10, s5
	s_cmp_ge_u32 s10, s5
	s_cselect_b32 s6, s11, s6
	s_cselect_b32 s10, s12, s10
	s_add_i32 s11, s6, 1
	s_cmp_ge_u32 s10, s5
	s_cselect_b32 s5, s11, s6
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s6, s8
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s5, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s10, s6
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s18, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s6
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s18, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s10
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s11, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s7, s11
	s_xor_b32 s12, s11, s8
	s_ashr_i32 s22, s12, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s10, v1
	s_mul_f32 s10, s10, 0x4f7ffffe
	s_cvt_u32_f32 s10, s10
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s5, s10
	s_mul_hi_u32 s4, s10, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_add_i32 s10, s10, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s10, s7, s10
	s_mul_i32 s13, s10, s6
	s_add_i32 s12, s10, 1
	s_sub_i32 s7, s7, s13
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s13, s7, s6
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s10, s12, s10
	s_cselect_b32 s7, s13, s7
	s_add_i32 s12, s10, 1
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s6, s12, s10
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s19, s18, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s23, s6, s22
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[6:7], s[18:19], 2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s10, s23, s22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s12, s10, s8
	.loc	1 1307 17 is_stmt 0             ; ragged.py:1307:17
	s_sub_i32 s11, s11, s12
	.loc	1 1313 19 is_stmt 1             ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s6
	s_addc_u32 s5, s5, s7
	.loc	1 1322 22                       ; ragged.py:1322:22
	s_lshl_b32 s20, s3, 5
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s4, s[4:5], 0x0
	s_mov_b32 s3, 0
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s4, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1314 26 is_stmt 0             ; ragged.py:1314:26
	s_lshr_b32 s5, s4, 31
	s_add_i32 s4, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s21, s4, 1
	.loc	1 1324 23 is_stmt 1             ; ragged.py:1324:23
	s_cmp_lt_i32 s20, s21
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshlrev_b32_e32 v17, 1, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr17
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x10
	s_load_b64 s[36:37], s[0:1], 0x28
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v33, 15, v0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v50, 0
	v_mov_b32_e32 v49, 0
	s_lshl_b32 s19, s10, 5
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_lshl_b32 s3, s11, 7
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b32 s24, s[0:1], 0x38
	s_load_b128 s[12:15], s[0:1], 0x0
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_lshlrev_b32_e32 v2, 3, v0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_and_b32_e32 v1, 7, v0
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v3, 2, v0
	v_and_b32_e32 v6, 0x60, v0
	v_and_b32_e32 v10, 24, v34
	v_and_b32_e32 v4, 24, v2
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshlrev_b32_e32 v5, 4, v1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v7, 30, v3
	v_lshrrev_b32_e32 v11, 2, v6
	v_lshlrev_b32_e32 v6, 4, v6
	.loc	1 1309 18 is_stmt 0             ; ragged.py:1309:18
	v_or_b32_e32 v8, s19, v4
	.loc	1 1310 18 is_stmt 1             ; ragged.py:1310:18
	v_or_b32_e32 v9, s3, v5
	v_xor_b32_e32 v12, v4, v7
	.loc	1 1324 23                       ; ragged.py:1324:23
	s_mul_i32 s9, s9, s18
	s_lshl_b32 s2, s2, 7
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s16, v8
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s17, v9
	v_lshl_or_b32 v8, v1, 9, v12
	v_lshlrev_b32_e32 v1, 5, v33
	v_xor_b32_e32 v9, v10, v11
	.loc	1 1327 39                       ; ragged.py:1327:39
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s1, s18, s24
	.loc	1 1324 23                       ; ragged.py:1324:23
	s_sub_i32 s9, s22, s9
	s_add_i32 s1, s1, s20
	v_xor_b32_e32 v11, 0x88, v8
	v_or3_b32 v6, v1, v6, v9
	v_add_nc_u32_e32 v1, s1, v7
	v_add_nc_u32_e32 v3, s1, v3
	s_sub_i32 s1, s9, s23
	v_xor_b32_e32 v12, 0x110, v8
	s_mul_i32 s8, s8, s1
	v_mul_lo_u32 v1, s17, v1
	s_lshl_b32 s1, s8, 7
	v_xor_b32_e32 v13, 0x198, v8
	s_add_i32 s2, s2, s1
	s_lshl_b32 s1, s23, 5
	v_or_b32_e32 v10, 0x3f0, v0
	v_xor_b32_e32 v7, 8, v6
	v_xor_b32_e32 v9, 16, v6
	v_add3_u32 v36, s2, v1, v5
	s_add_i32 s2, s2, s17
	v_xor_b32_e32 v14, 24, v6
	v_add3_u32 v37, s2, v1, v5
	v_mov_b32_e32 v1, 0
	v_add_nc_u32_e32 v41, 0, v8
	s_lshl_b32 s8, s22, 5
	v_add_nc_u32_e32 v35, 0, v33
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v8, v1 :: v_dual_add_nc_u32 v39, 0, v2
	v_mul_lo_u32 v3, s16, v3
	v_add_nc_u32_e32 v40, 0, v10
	v_add_nc_u32_e32 v42, 0, v11
	v_add_nc_u32_e32 v43, 0, v12
	v_dual_mov_b32 v15, v1 :: v_dual_add_nc_u32 v44, 0, v13
	v_dual_mov_b32 v16, v1 :: v_dual_add_nc_u32 v45, 0, v6
	v_add3_u32 v3, v3, s1, v4
	v_dual_mov_b32 v17, v1 :: v_dual_add_nc_u32 v46, 0, v7
	v_dual_mov_b32 v18, v1 :: v_dual_add_nc_u32 v47, 0, v9
	s_delay_alu instid0(VALU_DEP_3)
	v_subrev_nc_u32_e32 v38, s8, v3
	v_dual_mov_b32 v19, v1 :: v_dual_add_nc_u32 v48, 0, v14
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
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
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_lshl_b32 s1, s17, 5
	s_lshl_b32 s2, s16, 5
	s_mov_b32 s8, s12
	s_mov_b32 s9, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v49, 0x80000000, v36, s0
	v_cndmask_b32_e64 v53, 0x80000000, v37, s0
	.loc	1 1334 34                       ; ragged.py:1334:34
	v_cndmask_b32_e32 v57, 0x80000000, v38, vcc_lo
	.loc	1 1324 23                       ; ragged.py:1324:23
	v_add_nc_u32_e32 v36, s1, v36
	v_add_nc_u32_e32 v37, s1, v37
	.loc	1 1335 34                       ; ragged.py:1335:34
	s_clause 0x1
	buffer_load_b128 v[49:52], v49, s[12:15], 0 offen
	buffer_load_b128 v[53:56], v53, s[12:15], 0 offen
	.loc	1 1334 34                       ; ragged.py:1334:34
	buffer_load_b64 v[57:58], v57, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1324 23                       ; ragged.py:1324:23
	v_add_nc_u32_e32 v38, s2, v38
	.loc	1 1346 21                       ; ragged.py:1346:21
	s_add_i32 s20, s20, 32
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1324 23                       ; ragged.py:1324:23
	s_cmp_lt_i32 s20, s21
	.loc	1 1335 34                       ; ragged.py:1335:34
	s_waitcnt vmcnt(1)
	v_perm_b32 v59, v55, v51, 0x5010400
	.loc	1 1334 34                       ; ragged.py:1334:34
	s_waitcnt vmcnt(0)
	ds_store_b64 v39, v[57:58]
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_perm_b32 v57, v53, v49, 0x5010400
	v_perm_b32 v53, v53, v49, 0x7030602
	v_perm_b32 v58, v54, v50, 0x5010400
	v_perm_b32 v54, v54, v50, 0x7030602
	v_perm_b32 v55, v55, v51, 0x7030602
	v_perm_b32 v60, v56, v52, 0x5010400
	v_perm_b32 v61, v56, v52, 0x7030602
	v_lshrrev_b32_e32 v56, 8, v57
	v_lshrrev_b32_e32 v62, 24, v57
	v_and_b16 v49.l, 0xff, v57.l
	v_and_b16 v49.h, 0xff, v57.h
	v_lshrrev_b32_e32 v57, 8, v53
	v_lshrrev_b32_e32 v63, 24, v53
	v_lshrrev_b32_e32 v128, 8, v58
	v_lshrrev_b32_e32 v129, 24, v58
	v_lshrrev_b32_e32 v130, 8, v54
	v_lshrrev_b32_e32 v131, 24, v54
	v_lshrrev_b32_e32 v132, 8, v59
	v_lshrrev_b32_e32 v133, 24, v59
	v_lshrrev_b32_e32 v134, 8, v55
	v_lshrrev_b32_e32 v135, 24, v55
	v_lshrrev_b32_e32 v136, 8, v60
	v_lshrrev_b32_e32 v137, 24, v60
	v_lshrrev_b32_e32 v138, 8, v61
	v_lshlrev_b16 v56.l, 8, v56.l
	v_lshlrev_b16 v56.h, 8, v62.l
	v_lshrrev_b32_e32 v139, 24, v61
	v_and_b16 v50.l, 0xff, v53.l
	v_lshlrev_b16 v57.l, 8, v57.l
	v_and_b16 v50.h, 0xff, v53.h
	v_lshlrev_b16 v57.h, 8, v63.l
	v_and_b16 v51.l, 0xff, v58.l
	v_and_b16 v51.h, 0xff, v58.h
	v_and_b16 v52.l, 0xff, v54.l
	v_and_b16 v52.h, 0xff, v54.h
	v_and_b16 v53.l, 0xff, v59.l
	v_and_b16 v53.h, 0xff, v59.h
	v_lshlrev_b16 v58.l, 8, v128.l
	v_lshlrev_b16 v58.h, 8, v129.l
	v_lshlrev_b16 v59.l, 8, v130.l
	v_lshlrev_b16 v59.h, 8, v131.l
	v_and_b16 v54.l, 0xff, v55.l
	v_and_b16 v54.h, 0xff, v55.h
	v_and_b16 v55.l, 0xff, v60.l
	v_and_b16 v55.h, 0xff, v60.h
	v_or_b16 v49.l, v49.l, v56.l
	v_and_b16 v56.l, 0xff, v61.l
	v_or_b16 v49.h, v49.h, v56.h
	v_and_b16 v56.h, 0xff, v61.h
	v_lshlrev_b16 v60.l, 8, v132.l
	v_lshlrev_b16 v60.h, 8, v133.l
	v_lshlrev_b16 v61.l, 8, v134.l
	v_lshlrev_b16 v61.h, 8, v135.l
	v_lshlrev_b16 v62.l, 8, v136.l
	v_lshlrev_b16 v62.h, 8, v137.l
	v_lshlrev_b16 v63.l, 8, v138.l
	v_lshlrev_b16 v63.h, 8, v139.l
	v_or_b16 v50.l, v50.l, v57.l
	v_or_b16 v50.h, v50.h, v57.h
	v_or_b16 v51.l, v51.l, v58.l
	v_or_b16 v51.h, v51.h, v58.h
	v_or_b16 v52.l, v52.l, v59.l
	v_or_b16 v52.h, v52.h, v59.h
	.loc	1 1334 34                       ; ragged.py:1334:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1336 31                       ; ragged.py:1336:31
	ds_load_u8 v64, v35 offset:224
	ds_load_u8 v65, v35 offset:192
	ds_load_u8 v66, v35 offset:160
	ds_load_u8 v67, v35 offset:128
	ds_load_u8 v68, v35 offset:240
	ds_load_u8 v69, v35 offset:208
	ds_load_u8 v70, v35 offset:176
	ds_load_u8 v71, v35 offset:144
	ds_load_u8 v72, v35 offset:96
	ds_load_u8 v73, v35 offset:64
	ds_load_u8 v74, v35 offset:112
	ds_load_u8 v75, v35 offset:80
	ds_load_u8 v76, v35
	ds_load_u8 v77, v35 offset:16
	ds_load_u8 v78, v35 offset:32
	ds_load_u8 v79, v35 offset:48
	ds_load_u8 v80, v35 offset:352
	ds_load_u8 v81, v35 offset:320
	ds_load_u8 v82, v35 offset:288
	ds_load_u8 v83, v35 offset:256
	ds_load_u8 v84, v35 offset:368
	ds_load_u8 v85, v35 offset:336
	ds_load_u8 v86, v35 offset:304
	ds_load_u8 v87, v35 offset:272
	ds_load_u8 v88, v35 offset:480
	ds_load_u8 v89, v35 offset:448
	ds_load_u8 v90, v35 offset:416
	ds_load_u8 v91, v35 offset:384
	ds_load_u8 v92, v35 offset:496
	ds_load_u8 v93, v35 offset:464
	ds_load_u8 v94, v35 offset:432
	ds_load_u8 v95, v35 offset:400
	ds_load_u8 v96, v35 offset:608
	ds_load_u8 v97, v35 offset:576
	ds_load_u8 v98, v35 offset:544
	ds_load_u8 v99, v35 offset:512
	ds_load_u8 v100, v35 offset:624
	ds_load_u8 v101, v35 offset:592
	ds_load_u8 v102, v35 offset:560
	ds_load_u8 v103, v35 offset:528
	ds_load_u8 v104, v35 offset:736
	ds_load_u8 v105, v35 offset:704
	ds_load_u8 v106, v35 offset:672
	ds_load_u8 v107, v35 offset:640
	ds_load_u8 v108, v35 offset:752
	ds_load_u8 v109, v35 offset:720
	ds_load_u8 v110, v35 offset:688
	ds_load_u8 v111, v35 offset:656
	ds_load_u8 v112, v35 offset:992
	ds_load_u8 v113, v35 offset:960
	ds_load_u8 v114, v35 offset:928
	ds_load_u8 v115, v35 offset:896
	ds_load_u8 v116, v40
	ds_load_u8 v117, v35 offset:976
	ds_load_u8 v118, v35 offset:944
	ds_load_u8 v119, v35 offset:912
	ds_load_u8 v120, v35 offset:864
	ds_load_u8 v121, v35 offset:832
	ds_load_u8 v122, v35 offset:800
	ds_load_u8 v123, v35 offset:768
	ds_load_u8 v124, v35 offset:880
	ds_load_u8 v125, v35 offset:848
	ds_load_u8 v126, v35 offset:816
	ds_load_u8 v127, v35 offset:784
	.loc	1 1335 34                       ; ragged.py:1335:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_or_b16 v53.l, v53.l, v60.l
	v_or_b16 v53.h, v53.h, v60.h
	v_or_b16 v54.l, v54.l, v61.l
	v_or_b16 v54.h, v54.h, v61.h
	v_or_b16 v55.l, v55.l, v62.l
	v_or_b16 v55.h, v55.h, v62.h
	v_or_b16 v56.l, v56.l, v63.l
	v_or_b16 v56.h, v56.h, v63.h
	ds_store_b16 v41, v49
	ds_store_b16_d16_hi v41, v49 offset:32
	ds_store_b16 v41, v50 offset:64
	ds_store_b16_d16_hi v41, v50 offset:96
	ds_store_b16 v42, v51
	ds_store_b16_d16_hi v42, v51 offset:32
	ds_store_b16 v42, v52 offset:64
	ds_store_b16_d16_hi v42, v52 offset:96
	ds_store_b16 v43, v53
	ds_store_b16_d16_hi v43, v53 offset:32
	ds_store_b16 v43, v54 offset:64
	ds_store_b16_d16_hi v43, v54 offset:96
	ds_store_b16 v44, v55
	ds_store_b16_d16_hi v44, v55 offset:32
	ds_store_b16 v44, v56 offset:64
	ds_store_b16_d16_hi v44, v56 offset:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[49:52], v45 offset1:4
	ds_load_2addr_stride64_b64 v[53:56], v46 offset1:4
	.loc	1 1336 31                       ; ragged.py:1336:31
	v_perm_b32 v66, v67, v66, 0xc0c0004
	v_perm_b32 v65, v65, v64, 0xc0c0004
	v_perm_b32 v67, v73, v72, 0xc0c0004
	v_perm_b32 v72, v76, v78, 0xc0c0004
	v_perm_b32 v73, v91, v90, 0xc0c0004
	v_perm_b32 v76, v89, v88, 0xc0c0004
	v_perm_b32 v78, v83, v82, 0xc0c0004
	v_perm_b32 v83, v99, v98, 0xc0c0004
	v_perm_b32 v88, v97, v96, 0xc0c0004
	v_perm_b32 v97, v71, v70, 0xc0c0004
	v_perm_b32 v98, v69, v68, 0xc0c0004
	v_perm_b32 v75, v75, v74, 0xc0c0004
	v_perm_b32 v77, v77, v79, 0xc0c0004
	.loc	1 1335 34                       ; ragged.py:1335:34
	ds_load_2addr_stride64_b64 v[57:60], v47 offset1:4
	.loc	1 1336 31                       ; ragged.py:1336:31
	v_perm_b32 v80, v81, v80, 0xc0c0004
	v_perm_b32 v79, v95, v94, 0xc0c0004
	v_perm_b32 v92, v93, v92, 0xc0c0004
	v_perm_b32 v86, v87, v86, 0xc0c0004
	v_perm_b32 v84, v85, v84, 0xc0c0004
	.loc	1 1335 34                       ; ragged.py:1335:34
	ds_load_2addr_stride64_b64 v[61:64], v48 offset1:4
	.loc	1 1336 31                       ; ragged.py:1336:31
	v_lshl_or_b32 v66, v65, 16, v66
	v_lshl_or_b32 v65, v67, 16, v72
	v_lshl_or_b32 v68, v76, 16, v73
	v_lshl_or_b32 v74, v98, 16, v97
	v_lshl_or_b32 v73, v75, 16, v77
	v_perm_b32 v81, v107, v106, 0xc0c0004
	v_perm_b32 v82, v105, v104, 0xc0c0004
	v_perm_b32 v85, v111, v110, 0xc0c0004
	v_perm_b32 v87, v109, v108, 0xc0c0004
	v_perm_b32 v93, v103, v102, 0xc0c0004
	v_perm_b32 v94, v101, v100, 0xc0c0004
	v_lshl_or_b32 v67, v80, 16, v78
	v_lshl_or_b32 v76, v92, 16, v79
	v_lshl_or_b32 v75, v84, 16, v86
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[49:50], v[65:66], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[51:52], v[65:66], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[49:50], v[73:74], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[51:52], v[73:74], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v89, v115, v114, 0xc0c0004
	v_perm_b32 v90, v113, v112, 0xc0c0004
	v_perm_b32 v91, v123, v122, 0xc0c0004
	v_perm_b32 v96, v121, v120, 0xc0c0004
	v_perm_b32 v95, v127, v126, 0xc0c0004
	v_perm_b32 v99, v125, v124, 0xc0c0004
	v_perm_b32 v100, v119, v118, 0xc0c0004
	v_perm_b32 v101, v117, v116, 0xc0c0004
	v_lshl_or_b32 v70, v82, 16, v81
	v_lshl_or_b32 v69, v88, 16, v83
	v_lshl_or_b32 v78, v87, 16, v85
	v_lshl_or_b32 v77, v94, 16, v93
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[53:54], v[67:68], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[55:56], v[67:68], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[53:54], v[75:76], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[55:56], v[75:76], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v72, v90, 16, v89
	v_lshl_or_b32 v71, v96, 16, v91
	v_lshl_or_b32 v49, v99, 16, v95
	v_lshl_or_b32 v50, v101, 16, v100
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[57:58], v[69:70], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[59:60], v[69:70], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[57:58], v[77:78], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[59:60], v[77:78], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[61:62], v[71:72], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[63:64], v[71:72], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[61:62], v[49:50], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[63:64], v[49:50], v[25:32] neg_lo:[1,1,0]
	.loc	1 1324 23                       ; ragged.py:1324:23
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v50, v1
	v_cvt_f32_i32_e32 v49, v2
	v_cvt_f32_i32_e32 v48, v3
	v_cvt_f32_i32_e32 v47, v4
	v_cvt_f32_i32_e32 v46, v5
	v_cvt_f32_i32_e32 v45, v6
	v_cvt_f32_i32_e32 v44, v7
	v_cvt_f32_i32_e32 v43, v8
	v_cvt_f32_i32_e32 v42, v9
	v_cvt_f32_i32_e32 v41, v10
	v_cvt_f32_i32_e32 v40, v11
	v_cvt_f32_i32_e32 v39, v12
	v_cvt_f32_i32_e32 v38, v13
	v_cvt_f32_i32_e32 v37, v14
	v_cvt_f32_i32_e32 v36, v15
	v_cvt_f32_i32_e32 v35, v16
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
	v_mov_b32_e32 v17, v34
.LBB0_7:                                ; %._crit_edge
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v18, s19, v33
	.loc	1 1404 33                       ; ragged.py:1404:33
	s_mul_i32 s0, s18, s16
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s29, s5, 0xffff
	.loc	1 1404 21                       ; ragged.py:1404:21
	s_add_i32 s2, s19, s0
	s_mov_b32 s31, 0x31027000
	v_add_lshl_u32 v19, s2, v33, 1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s16, v18
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v18, 16, v18
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_mov_b32 s28, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b32_e32 v30, 0x7632
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_dual_cndmask_b32 v20, 0x80000000, v19 :: v_dual_and_b32 v17, 28, v17
	v_add_nc_u32_e32 v19, 32, v19
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s16, v18
	.loc	1 1411 33                       ; ragged.py:1411:33
	s_mul_i32 s1, s18, s17
	.loc	1 1403 36                       ; ragged.py:1403:36
	buffer_load_u16 v20, v20, s[28:31], 0 offen
	.loc	1 1411 21                       ; ragged.py:1411:21
	s_add_i32 s1, s3, s1
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v23, s17, v33
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e64 v18, 0x80000000, v19, s0
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v19, s3, v0
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v21, s1, v0, 1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_dual_mov_b32 v29, 0x5410 :: v_dual_lshlrev_b32 v22, 5, v0
	.loc	1 1403 36                       ; ragged.py:1403:36
	buffer_load_u16 v18, v18, s[28:31], 0 offen
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s17, v19
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_and_b32 s29, s7, 0xffff
	s_mov_b32 s28, s6
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_lshl_b32 s4, s17, 4
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	s_mov_b32 s38, s30
	.loc	1 1410 36 is_stmt 1             ; ragged.py:1410:36
	v_cndmask_b32_e64 v19, 0x80000000, v21, s1
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s1, s2, s17
	s_mov_b32 s33, 0x76543210
	s_add_i32 s1, s1, s3
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	s_and_b32 s37, s37, 0xffff
	.loc	1 1410 36 is_stmt 1             ; ragged.py:1410:36
	buffer_load_u16 v19, v19, s[28:31], 0 offen
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_mov_b32 s39, s31
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v51, 16, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v15, v15, v51 :: v_dual_lshlrev_b32 v20, 16, v20
	v_mul_f32_e32 v48, v48, v20
	v_dual_mul_f32 v16, v16, v51 :: v_dual_and_b32 v21, 0x70, v0
	v_dual_mul_f32 v49, v49, v20 :: v_dual_and_b32 v22, 32, v22
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v45, v45, v20 :: v_dual_lshlrev_b32 v18, 16, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v24, 1, v21
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshl_add_u32 v26, v21, 1, 0
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v46, v46, v20 :: v_dual_mul_f32 v53, v13, v51
	v_dual_mul_f32 v44, v44, v20 :: v_dual_mul_f32 v55, v11, v51
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v25, s3, v24
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add3_u32 v23, s1, v24, v23
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshl_add_u32 v24, v21, 2, 0
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v43, v43, v20 :: v_dual_mul_f32 v52, v14, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s17, v25
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v21, 64, v25
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_add3_u32 v17, v24, v22, v17
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add_lshl_u32 v22, v23, s4, 1
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v47, v47, v20
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, vcc_lo, s1
	s_and_b32 s1, s0, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s2, s17, v21
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v32, 0x80000000, v22, s1
	v_add_nc_u32_e32 v22, 0x80, v22
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v50, v50, v20 :: v_dual_lshlrev_b32 v25, 1, v23
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v42, v42, v20 :: v_dual_mul_f32 v9, v9, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_nc_u32_e32 v21, 0x80, v25
	v_and_b32_e32 v0, 16, v0
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v41, v41, v20 :: v_dual_mul_f32 v54, v12, v51
	v_dual_mul_f32 v40, v40, v20 :: v_dual_mul_f32 v7, v7, v51
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e32 v33, 0x80000000, v21, vcc_lo
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 vcc_lo, s0, s2
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v39, v39, v20 :: v_dual_mul_f32 v10, v10, v51
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e32 v34, 0x80000000, v22, vcc_lo
	v_cndmask_b32_e64 v31, 0x80000000, v25, s3
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v38, v38, v20 :: v_dual_mul_f32 v5, v5, v51
	v_dual_mul_f32 v37, v37, v20 :: v_dual_mul_f32 v8, v8, v51
	v_dual_mul_f32 v36, v36, v20 :: v_dual_mul_f32 v3, v3, v51
	v_dual_mul_f32 v35, v35, v20 :: v_dual_mul_f32 v6, v6, v51
	.loc	1 1415 17                       ; ragged.py:1415:17
	ds_store_b32 v17, v18
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v26
	ds_load_b128 v[21:24], v26 offset:16
	ds_load_b128 v[11:14], v26 offset:256
	ds_load_b128 v[25:28], v26 offset:272
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v4, v4, v51
	v_mul_f32_e32 v2, v2, v51
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v1, v1, v51 :: v_dual_mul_f32 v50, v50, v17
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v49, v49, v18 :: v_dual_mul_f32 v48, v48, v19
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v45, v45, v22
	v_dual_mul_f32 v47, v47, v20 :: v_dual_mul_f32 v46, v46, v21
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v43, v43, v24 :: v_dual_mul_f32 v42, v42, v11
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v39, v39, v14 :: v_dual_mul_f32 v38, v38, v25
	v_dual_mul_f32 v35, v35, v28 :: v_dual_mul_f32 v36, v36, v27
	v_dual_mul_f32 v15, v15, v18 :: v_dual_mul_f32 v44, v44, v23
	v_dual_mul_f32 v41, v41, v12 :: v_dual_mul_f32 v40, v40, v13
	v_dual_mul_f32 v37, v37, v26 :: v_dual_mul_f32 v16, v16, v17
	v_mul_f32_e32 v9, v9, v24
	v_dual_mul_f32 v17, v52, v19 :: v_dual_mul_f32 v18, v53, v20
	v_dual_mul_f32 v19, v54, v21 :: v_dual_mul_f32 v20, v55, v22
	v_dual_mul_f32 v10, v10, v23 :: v_dual_mul_f32 v7, v7, v12
	v_dual_mul_f32 v8, v8, v11 :: v_dual_mul_f32 v5, v5, v14
	v_dual_mul_f32 v6, v6, v13 :: v_dual_mul_f32 v3, v3, v26
	v_dual_mul_f32 v4, v4, v25 :: v_dual_mul_f32 v1, v1, v28
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v11, v50, 16, 1
	v_bfe_u32 v12, v49, 16, 1
	v_bfe_u32 v13, v48, 16, 1
	v_bfe_u32 v14, v47, 16, 1
	v_bfe_u32 v22, v45, 16, 1
	v_bfe_u32 v24, v43, 16, 1
	v_bfe_u32 v28, v39, 16, 1
	v_bfe_u32 v53, v36, 16, 1
	v_bfe_u32 v54, v35, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	v_cmp_o_f32_e64 s0, v49, v49
	v_cmp_o_f32_e64 s1, v48, v48
	v_cmp_o_f32_e64 s2, v47, v47
	v_cmp_o_f32_e64 s4, v45, v45
	v_cmp_o_f32_e64 s6, v43, v43
	v_cmp_o_f32_e64 s10, v39, v39
	v_cmp_o_f32_e64 s13, v36, v36
	v_cmp_o_f32_e64 s14, v35, v35
	v_add3_u32 v11, v50, v11, 0x7fff
	v_add3_u32 v12, v49, v12, 0x7fff
	v_add3_u32 v13, v48, v13, 0x7fff
	v_add3_u32 v14, v47, v14, 0x7fff
	v_add3_u32 v22, v45, v22, 0x7fff
	v_add3_u32 v24, v43, v24, 0x7fff
	v_add3_u32 v28, v39, v28, 0x7fff
	v_add3_u32 v36, v36, v53, 0x7fff
	v_add3_u32 v35, v35, v54, 0x7fff
	v_bfe_u32 v23, v44, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, vcc_lo
	v_cndmask_b16 v11.h, 0x7fff, v12.h, s0
	v_cndmask_b16 v12.l, 0x7fff, v13.h, s1
	v_cndmask_b16 v12.h, 0x7fff, v14.h, s2
	v_cndmask_b16 v13.h, 0x7fff, v22.h, s4
	v_cndmask_b16 v14.h, 0x7fff, v24.h, s6
	v_cndmask_b16 v22.h, 0x7fff, v28.h, s10
	v_cndmask_b16 v24.l, 0x7fff, v36.h, s13
	v_cndmask_b16 v24.h, 0x7fff, v35.h, s14
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v2, v2, v27
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v21, v46, 16, 1
	v_cmp_o_f32_e64 s5, v44, v44
	v_bfe_u32 v25, v42, 16, 1
	v_bfe_u32 v26, v41, 16, 1
	v_bfe_u32 v51, v38, 16, 1
	v_bfe_u32 v52, v37, 16, 1
	v_bfe_u32 v55, v16, 16, 1
	v_bfe_u32 v56, v15, 16, 1
	v_bfe_u32 v57, v17, 16, 1
	v_bfe_u32 v58, v18, 16, 1
	v_bfe_u32 v59, v19, 16, 1
	v_bfe_u32 v60, v20, 16, 1
	v_bfe_u32 v61, v10, 16, 1
	v_bfe_u32 v62, v9, 16, 1
	v_bfe_u32 v65, v6, 16, 1
	v_bfe_u32 v66, v5, 16, 1
	v_bfe_u32 v67, v4, 16, 1
	v_bfe_u32 v69, v2, 16, 1
	v_bfe_u32 v70, v1, 16, 1
	v_add3_u32 v23, v44, v23, 0x7fff
	v_bfe_u32 v68, v3, 16, 1
	v_cmp_o_f32_e64 s3, v46, v46
	v_cmp_o_f32_e64 s7, v42, v42
	v_cmp_o_f32_e64 s8, v41, v41
	v_bfe_u32 v27, v40, 16, 1
	v_cmp_o_f32_e64 s11, v38, v38
	v_cmp_o_f32_e64 s12, v37, v37
	v_cmp_o_f32_e64 s15, v16, v16
	v_cmp_o_f32_e64 s16, v15, v15
	v_cmp_o_f32_e64 s17, v17, v17
	v_cmp_o_f32_e64 s18, v18, v18
	v_cmp_o_f32_e64 s19, v19, v19
	v_cmp_o_f32_e64 s20, v20, v20
	v_cmp_o_f32_e64 s21, v10, v10
	v_cmp_o_f32_e64 s22, v9, v9
	v_bfe_u32 v63, v8, 16, 1
	v_bfe_u32 v64, v7, 16, 1
	v_cmp_o_f32_e64 s25, v6, v6
	v_cmp_o_f32_e64 s26, v5, v5
	v_cmp_o_f32_e64 s27, v4, v4
	v_cmp_o_f32_e64 s29, v2, v2
	v_cmp_o_f32_e64 s30, v1, v1
	v_add3_u32 v21, v46, v21, 0x7fff
	v_add3_u32 v25, v42, v25, 0x7fff
	v_add3_u32 v26, v41, v26, 0x7fff
	v_add3_u32 v38, v38, v51, 0x7fff
	v_add3_u32 v37, v37, v52, 0x7fff
	v_add3_u32 v16, v16, v55, 0x7fff
	v_add3_u32 v15, v15, v56, 0x7fff
	v_add3_u32 v17, v17, v57, 0x7fff
	v_add3_u32 v18, v18, v58, 0x7fff
	v_add3_u32 v19, v19, v59, 0x7fff
	v_add3_u32 v20, v20, v60, 0x7fff
	v_add3_u32 v10, v10, v61, 0x7fff
	v_add3_u32 v9, v9, v62, 0x7fff
	v_add3_u32 v6, v6, v65, 0x7fff
	v_add3_u32 v5, v5, v66, 0x7fff
	v_add3_u32 v4, v4, v67, 0x7fff
	v_add3_u32 v2, v2, v69, 0x7fff
	v_add3_u32 v1, v1, v70, 0x7fff
	v_cndmask_b16 v14.l, 0x7fff, v23.h, s5
	v_cmp_o_f32_e64 s28, v3, v3
	v_add3_u32 v3, v3, v68, 0x7fff
	v_cmp_o_f32_e64 s9, v40, v40
	v_cmp_o_f32_e64 s23, v8, v8
	v_cmp_o_f32_e64 s24, v7, v7
	v_add3_u32 v27, v40, v27, 0x7fff
	v_add3_u32 v8, v8, v63, 0x7fff
	v_add3_u32 v7, v7, v64, 0x7fff
	v_cndmask_b16 v13.l, 0x7fff, v21.h, s3
	v_cndmask_b16 v21.l, 0x7fff, v25.h, s7
	v_cndmask_b16 v21.h, 0x7fff, v26.h, s8
	v_cndmask_b16 v23.l, 0x7fff, v38.h, s11
	v_cndmask_b16 v23.h, 0x7fff, v37.h, s12
	v_cndmask_b16 v15.l, 0x7fff, v16.h, s15
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s16
	v_cndmask_b16 v16.l, 0x7fff, v17.h, s17
	v_cndmask_b16 v16.h, 0x7fff, v18.h, s18
	v_cndmask_b16 v17.l, 0x7fff, v19.h, s19
	v_cndmask_b16 v17.h, 0x7fff, v20.h, s20
	v_cndmask_b16 v9.l, 0x7fff, v10.h, s21
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s22
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s25
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s26
	v_cndmask_b16 v3.l, 0x7fff, v4.h, s27
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s29
	v_cndmask_b16 v0.h, 0x7fff, v1.h, s30
	v_cndmask_b32_e32 v4, v14, v12, vcc_lo
	v_cndmask_b32_e32 v6, v12, v14, vcc_lo
	v_cndmask_b32_e32 v14, 0x1054, v29, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v18, 0x3276, v30 :: v_dual_cndmask_b32 v19, v0, v5
	v_cndmask_b16 v22.l, 0x7fff, v27.h, s9
	v_cndmask_b16 v7.l, 0x7fff, v8.h, s23
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s24
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s28
	v_dual_cndmask_b32 v1, v13, v11 :: v_dual_cndmask_b32 v2, v11, v13
	v_cndmask_b32_e32 v8, v23, v21, vcc_lo
	v_cndmask_b32_e32 v10, v21, v23, vcc_lo
	v_cndmask_b32_e32 v13, v17, v15, vcc_lo
	v_cndmask_b32_e32 v15, v15, v17, vcc_lo
	v_cndmask_b32_e32 v17, v9, v16, vcc_lo
	v_cndmask_b32_e32 v9, v16, v9, vcc_lo
	v_lshl_or_b32 v14, v14, 8, v14
	v_lshl_or_b32 v16, v18, 8, v18
	v_cndmask_b32_e32 v12, v22, v24, vcc_lo
	v_cndmask_b32_e32 v18, v3, v7, vcc_lo
	v_cndmask_b32_e32 v3, v7, v3, vcc_lo
	v_and_b32_e32 v7, 0x540054, v14
	v_and_b32_e32 v14, 0x760076, v16
	v_cndmask_b32_e32 v0, v5, v0, vcc_lo
	v_permlanex16_b32 v5, v6, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v2, v2, s33, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v6, v7, 4, v7
	v_lshl_or_b32 v7, v14, 4, v14
	v_permlanex16_b32 v14, v15, s33, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v11, v24, v22, vcc_lo
	v_permlanex16_b32 v10, v10, s33, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v15, 0x5040504, v6
	v_and_b32_e32 v16, 0x7060706, v7
	v_permlanex16_b32 v12, v12, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v9, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v3, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v0, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v1, v15
	v_perm_b32 v1, v2, v1, v16
	v_perm_b32 v2, v5, v4, v15
	v_perm_b32 v3, v5, v4, v16
	v_perm_b32 v4, v10, v8, v15
	v_perm_b32 v5, v10, v8, v16
	v_perm_b32 v6, v12, v11, v15
	v_perm_b32 v7, v12, v11, v16
	v_perm_b32 v8, v14, v13, v15
	v_perm_b32 v9, v14, v13, v16
	v_perm_b32 v10, v20, v17, v15
	v_perm_b32 v11, v20, v17, v16
	v_perm_b32 v12, v21, v18, v15
	v_perm_b32 v13, v21, v18, v16
	v_perm_b32 v14, v22, v19, v15
	v_perm_b32 v15, v22, v19, v16
	s_clause 0x3
	buffer_store_b128 v[0:3], v31, s[36:39], 0 offen
	buffer_store_b128 v[4:7], v33, s[36:39], 0 offen
	buffer_store_b128 v[8:11], v32, s[36:39], 0 offen
	buffer_store_b128 v[12:15], v34, s[36:39], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 140
		.amdhsa_next_free_sgpr 40
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
		.amdhsa_inst_pref_size 46
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.num_vgpr, 140
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5768
; TotalNumSgprs: 42
; NumVgprs: 140
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 140
; Occupancy: 10
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm32_bn128_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     140
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
