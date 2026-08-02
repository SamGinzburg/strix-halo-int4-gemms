	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1
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
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v35, 1, v0
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
	s_ashr_i32 s9, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s8, s5, 6
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
	s_ashr_i32 s23, s12, 31
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
	s_xor_b32 s24, s6, s23
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[6:7], s[18:19], 2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s10, s24, s23
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s12, s10, s8
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s20, s10, 6
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s11, s11, s12
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s6
	s_addc_u32 s5, s5, s7
	.loc	1 1322 22                       ; ragged.py:1322:22
	s_lshl_b32 s22, s3, 5
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s4, s[4:5], 0x0
	s_mov_b32 s3, 0
	.loc	1 1329 39                       ; ragged.py:1329:39
	s_mul_i32 s10, s18, s16
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
	s_cmp_lt_i32 s22, s21
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1404 21                       ; ragged.py:1404:21
	s_add_i32 s19, s20, s10
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 21 is_stmt 0                ; ragged.py:0:21
	s_mov_b32 s3, -1
                                        ; implicit-def: $sgpr19
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x10
	s_load_b64 s[36:37], s[0:1], 0x28
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v36, 15, v0
	v_dual_mov_b32 v5, 0 :: v_dual_and_b32 v38, 64, v0
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v37, 16, v35
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_mov_b32_e32 v52, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_lshl_b32 s3, s11, 6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b32 s25, s[0:1], 0x38
	s_load_b128 s[12:15], s[0:1], 0x0
	.loc	1 1317 18 is_stmt 1             ; ragged.py:1317:18
	v_lshrrev_b32_e32 v3, 2, v0
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshlrev_b32_e32 v2, 4, v0
	.loc	1 1309 18 is_stmt 0             ; ragged.py:1309:18
	v_or_b32_e32 v1, s20, v35
	s_add_i32 s19, s20, s10
	.loc	1 1324 23 is_stmt 1             ; ragged.py:1324:23
	s_mul_i32 s9, s9, s18
	v_add_nc_u32_e32 v10, s19, v35
	s_lshl_b32 s2, s2, 6
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s16, v1
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_and_b32_e32 v1, 16, v2
	v_add3_u32 v39, 0, v37, v36
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 1333 39                       ; ragged.py:1333:39
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s1, s18, s25
	.loc	1 1324 23                       ; ragged.py:1324:23
	v_mad_u64_u32 v[33:34], null, v10, s25, v[1:2]
	v_add3_u32 v3, s1, s22, v3
	s_sub_i32 s1, s23, s9
	v_mov_b32_e32 v1, 0
	s_sub_i32 s1, s1, s24
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v4, 48, v2
	.loc	1 1324 23                       ; ragged.py:1324:23
	v_mul_lo_u32 v3, s17, v3
	s_mul_i32 s8, s8, s1
	v_lshlrev_b32_e32 v7, 1, v0
	s_lshl_b32 s1, s8, 6
	v_and_b32_e32 v5, 24, v0
	s_add_i32 s2, s2, s1
	v_lshlrev_b32_e32 v6, 5, v36
	v_lshlrev_b32_e32 v8, 3, v38
	v_add3_u32 v40, s2, v3, v4
	v_mov_b32_e32 v3, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v9, s3, v4
	v_dual_mov_b32 v4, v1 :: v_dual_and_b32 v7, 24, v7
	v_xor_b32_e32 v5, v2, v5
	v_dual_mov_b32 v17, v1 :: v_dual_add_nc_u32 v46, 0, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s17, v9
	v_or3_b32 v6, v6, v7, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v7, 8, v5
	v_add_nc_u32_e32 v34, 0, v5
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v5, v1
	v_xor_b32_e32 v8, 8, v6
	v_xor_b32_e32 v9, 16, v6
	v_xor_b32_e32 v11, 24, v6
	v_add_nc_u32_e32 v41, 0, v7
	v_dual_mov_b32 v13, v1 :: v_dual_add_nc_u32 v42, 0, v6
	v_dual_mov_b32 v10, v1 :: v_dual_add_nc_u32 v43, 0, v8
	v_dual_mov_b32 v15, v1 :: v_dual_add_nc_u32 v44, 0, v9
	v_dual_mov_b32 v12, v1 :: v_dual_add_nc_u32 v45, 0, v11
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v16, v1
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
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	.loc	1 1324 23                       ; ragged.py:1324:23
	s_lshl_b32 s1, s17, 5
	s_mov_b32 s8, s12
	s_mov_b32 s9, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1334 34                       ; ragged.py:1334:34
	v_add_nc_u32_e32 v47, s22, v33
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v51, 0x80000000, v40, s0
	.loc	1 1324 23                       ; ragged.py:1324:23
	v_add_nc_u32_e32 v40, s1, v40
	.loc	1 1346 21                       ; ragged.py:1346:21
	s_add_i32 s22, s22, 32
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1324 23                       ; ragged.py:1324:23
	s_cmp_lt_i32 s22, s21
	.loc	1 1334 34                       ; ragged.py:1334:34
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 1335 34                       ; ragged.py:1335:34
	buffer_load_b128 v[51:54], v51, s[12:15], 0 offen
	.loc	1 1334 34                       ; ragged.py:1334:34
	buffer_load_b128 v[47:50], v47, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v34, v[47:48]
	ds_store_b64 v41, v[49:50]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[47:50], v42 offset1:2
	ds_load_2addr_stride64_b64 v[55:58], v43 offset1:2
	ds_load_2addr_stride64_b64 v[59:62], v44 offset1:2
	ds_load_2addr_stride64_b64 v[63:66], v45 offset1:2
	.loc	1 1335 34                       ; ragged.py:1335:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v46, v[51:54]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1336 31                       ; ragged.py:1336:31
	ds_load_u8 v51, v39 offset:320
	ds_load_u8 v52, v39 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	ds_load_u8 v52, v39 offset:448
	ds_load_u8 v53, v39 offset:384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v52, 16, v51
	ds_load_u8 v51, v39 offset:64
	ds_load_u8 v53, v39
	ds_load_u8 v71, v39 offset:32
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v51, v53, v51, 0xc0c0004
	ds_load_u8 v53, v39 offset:192
	ds_load_u8 v54, v39 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v53, 16, v51
	ds_load_u8 v53, v39 offset:832
	ds_load_u8 v54, v39 offset:768
	v_wmma_i32_16x16x16_iu4 v[1:8], v[51:52], v[47:48], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[51:52], v[49:50], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v39 offset:960
	ds_load_u8 v67, v39 offset:896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v67, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v54, 16, v53
	ds_load_u8 v53, v39 offset:576
	ds_load_u8 v67, v39 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v67, v53, 0xc0c0004
	ds_load_u8 v67, v39 offset:704
	ds_load_u8 v68, v39 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v67, 16, v53
	ds_load_u8 v67, v39 offset:1344
	ds_load_u8 v68, v39 offset:1280
	v_wmma_i32_16x16x16_iu4 v[1:8], v[53:54], v[55:56], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[53:54], v[57:58], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v39 offset:1472
	ds_load_u8 v69, v39 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v68, 16, v67
	ds_load_u8 v67, v39 offset:1088
	ds_load_u8 v69, v39 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v69, v67, 0xc0c0004
	ds_load_u8 v69, v39 offset:1216
	ds_load_u8 v70, v39 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v69, 16, v67
	ds_load_u8 v69, v39 offset:1856
	ds_load_u8 v70, v39 offset:1792
	v_wmma_i32_16x16x16_iu4 v[1:8], v[67:68], v[59:60], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[67:68], v[61:62], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v39 offset:1984
	ds_load_u8 v72, v39 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v72, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v70, 16, v69
	ds_load_u8 v69, v39 offset:1600
	ds_load_u8 v72, v39 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v72, v69, 0xc0c0004
	ds_load_u8 v72, v39 offset:1728
	ds_load_u8 v73, v39 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v72, 16, v69
	ds_load_u8 v72, v39 offset:352
	ds_load_u8 v73, v39 offset:288
	v_wmma_i32_16x16x16_iu4 v[1:8], v[69:70], v[63:64], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[69:70], v[65:66], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	ds_load_u8 v73, v39 offset:480
	ds_load_u8 v74, v39 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v73, 16, v72
	ds_load_u8 v73, v39 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v71, v73, 0xc0c0004
	ds_load_u8 v73, v39 offset:224
	ds_load_u8 v74, v39 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v73, 16, v71
	v_wmma_i32_16x16x16_iu4 v[9:16], v[71:72], v[47:48], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v47, v39 offset:864
	ds_load_u8 v48, v39 offset:800
	v_wmma_i32_16x16x16_iu4 v[25:32], v[71:72], v[49:50], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	ds_load_u8 v48, v39 offset:992
	ds_load_u8 v73, v39 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v73, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v48, 16, v47
	ds_load_u8 v47, v39 offset:608
	ds_load_u8 v73, v39 offset:544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v73, v47, 0xc0c0004
	ds_load_u8 v73, v39 offset:736
	ds_load_u8 v74, v39 offset:672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v73, 16, v47
	v_wmma_i32_16x16x16_iu4 v[9:16], v[47:48], v[55:56], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v55, v39 offset:1376
	ds_load_u8 v56, v39 offset:1312
	v_wmma_i32_16x16x16_iu4 v[25:32], v[47:48], v[57:58], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	ds_load_u8 v56, v39 offset:1504
	ds_load_u8 v73, v39 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v56, v73, v56, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v56, 16, v55
	ds_load_u8 v55, v39 offset:1120
	ds_load_u8 v73, v39 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v73, v55, 0xc0c0004
	ds_load_u8 v73, v39 offset:1248
	ds_load_u8 v74, v39 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v55, v73, 16, v55
	v_wmma_i32_16x16x16_iu4 v[9:16], v[55:56], v[59:60], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v59, v39 offset:1888
	ds_load_u8 v60, v39 offset:1824
	v_wmma_i32_16x16x16_iu4 v[25:32], v[55:56], v[61:62], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v60, v39 offset:2016
	ds_load_u8 v73, v39 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v73, v60, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v60, 16, v59
	ds_load_u8 v59, v39 offset:1632
	ds_load_u8 v73, v39 offset:1568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v73, v59, 0xc0c0004
	ds_load_u8 v73, v39 offset:1760
	ds_load_u8 v74, v39 offset:1696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v59, v73, 16, v59
	v_wmma_i32_16x16x16_iu4 v[9:16], v[59:60], v[63:64], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[59:60], v[65:66], v[25:32] neg_lo:[1,1,0]
	.loc	1 1324 23                       ; ragged.py:1324:23
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v52, v1
	v_cvt_f32_i32_e32 v51, v2
	v_cvt_f32_i32_e32 v50, v3
	v_cvt_f32_i32_e32 v49, v4
	v_cvt_f32_i32_e32 v48, v5
	v_cvt_f32_i32_e32 v47, v6
	v_cvt_f32_i32_e32 v46, v7
	v_cvt_f32_i32_e32 v45, v8
	v_cvt_f32_i32_e32 v44, v9
	v_cvt_f32_i32_e32 v43, v10
	v_cvt_f32_i32_e32 v42, v11
	v_cvt_f32_i32_e32 v41, v12
	v_cvt_f32_i32_e32 v40, v13
	v_cvt_f32_i32_e32 v39, v14
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
	v_cvt_f32_i32_e32 v5, v28
	v_cvt_f32_i32_e32 v4, v29
	v_cvt_f32_i32_e32 v6, v30
	v_cvt_f32_i32_e32 v2, v31
	v_cvt_f32_i32_e32 v1, v32
.LBB0_7:                                ; %._crit_edge
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v17, 2, v38
	v_lshrrev_b32_e32 v18, 4, v0
	.loc	1 1411 33                       ; ragged.py:1411:33
	s_mul_i32 s0, s18, s17
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s5, 0xffff
	.loc	1 1411 21                       ; ragged.py:1411:21
	s_add_i32 s2, s3, s0
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v19, v17, v36
	v_and_or_b32 v17, v18, 1, v37
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_mov_b32 s8, s4
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v18, 32, v19
	.loc	1 1309 18 is_stmt 0             ; ragged.py:1309:18
	v_or_b32_e32 v21, s20, v19
	.loc	1 1403 36 is_stmt 1             ; ragged.py:1403:36
	v_add_lshl_u32 v22, s19, v19, 1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v20, 32, v17
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v25, s3, v17
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v23, s20, v18
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s16, v21
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_lshl_u32 v24, s19, v18, 1
	.loc	1 1411 21                       ; ragged.py:1411:21
	v_add_lshl_u32 v17, s2, v17, 1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s17, v25
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s16, v23
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e64 v21, 0x80000000, v22, s0
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v23, s3, v20
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_dual_mov_b32 v56, 0x7632 :: v_dual_add_nc_u32 v29, 20, v17
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_dual_cndmask_b32 v22, 0x80000000, v24 :: v_dual_add_nc_u32 v25, 8, v17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_dual_mov_b32 v55, 0x5410 :: v_dual_add_nc_u32 v24, 4, v17
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_clause 0x1
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	buffer_load_u16 v22, v22, s[8:11], 0 offen
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v27, 0x80000000, v17, s1
	v_cndmask_b32_e64 v25, 0x80000000, v25, s1
	v_cndmask_b32_e64 v24, 0x80000000, v24, s1
	v_cndmask_b32_e64 v29, 0x80000000, v29, s1
	v_add_lshl_u32 v20, s2, v20, 1
	s_and_b32 s9, s7, 0xffff
	s_mov_b32 s8, s6
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v19, s17, v19
	v_mul_lo_u32 v18, s17, v18
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s34, 0x76543210
	s_and_b32 s37, s37, 0xffff
	.loc	1 1403 36 is_stmt 1             ; ragged.py:1403:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v22, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v6, v6, v22 :: v_dual_lshlrev_b32 v21, 16, v21
	v_mul_f32_e32 v47, v47, v21
	v_dual_mul_f32 v15, v15, v22 :: v_dual_add_nc_u32 v26, 12, v17
	v_dual_mul_f32 v11, v11, v22 :: v_dual_add_nc_u32 v28, 16, v17
	v_dual_mul_f32 v13, v13, v22 :: v_dual_add_nc_u32 v30, 24, v17
	v_dual_mul_f32 v16, v16, v22 :: v_dual_add_nc_u32 v31, 28, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v26, 0x80000000, v26, s1
	v_cndmask_b32_e64 v28, 0x80000000, v28, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v30, 0x80000000, v30, s1
	v_cndmask_b32_e64 v31, 0x80000000, v31, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s17, v23
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v12, v12, v22 :: v_dual_add_nc_u32 v23, 0x44, v17
	v_dual_mul_f32 v5, v5, v22 :: v_dual_add_nc_u32 v38, 0x54, v17
	v_dual_mul_f32 v7, v7, v22 :: v_dual_add_nc_u32 v36, 0x4c, v17
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v23, 0x80000000, v23, s1
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v14, v14, v22 :: v_dual_add_nc_u32 v37, 0x50, v17
	v_dual_mul_f32 v9, v9, v22 :: v_dual_add_nc_u32 v32, 0x48, v17
	v_dual_mul_f32 v10, v10, v22 :: v_dual_add_nc_u32 v53, 0x58, v17
	v_dual_mul_f32 v8, v8, v22 :: v_dual_add_nc_u32 v17, 0x5c, v17
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v20, 0x80000000, v20, s1
	s_clause 0x8
	buffer_load_u16 v24, v24, s[8:11], 0 offen
	buffer_load_u16 v27, v27, s[8:11], 0 offen
	buffer_load_u16 v26, v26, s[8:11], 0 offen
	buffer_load_u16 v25, v25, s[8:11], 0 offen
	buffer_load_u16 v29, v29, s[8:11], 0 offen
	buffer_load_u16 v28, v28, s[8:11], 0 offen
	buffer_load_u16 v31, v31, s[8:11], 0 offen
	buffer_load_u16 v30, v30, s[8:11], 0 offen
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	v_cndmask_b32_e64 v38, 0x80000000, v38, s1
	buffer_load_u16 v23, v23, s[8:11], 0 offen
	v_cndmask_b32_e64 v36, 0x80000000, v36, s1
	v_cndmask_b32_e64 v37, 0x80000000, v37, s1
	v_cndmask_b32_e64 v32, 0x80000000, v32, s1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s1
	v_cndmask_b32_e64 v53, 0x80000000, v53, s1
	s_clause 0x5
	buffer_load_u16 v38, v38, s[8:11], 0 offen
	buffer_load_u16 v37, v37, s[8:11], 0 offen
	buffer_load_u16 v54, v17, s[8:11], 0 offen
	buffer_load_u16 v53, v53, s[8:11], 0 offen
	buffer_load_u16 v36, v36, s[8:11], 0 offen
	buffer_load_u16 v32, v32, s[8:11], 0 offen
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v52, v52, v21 :: v_dual_and_b32 v35, 24, v35
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s1, s19, s17
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v51, v51, v21 :: v_dual_and_b32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v57, s3, v35
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add3_u32 v35, s1, s3, v35
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v50, v50, v21
	v_mul_f32_e32 v49, v49, v21
	v_mul_f32_e32 v48, v48, v21
	v_mul_f32_e32 v46, v46, v21
	v_dual_mul_f32 v45, v45, v21 :: v_dual_add_nc_u32 v66, 32, v35
	v_dual_mul_f32 v44, v44, v21 :: v_dual_mul_f32 v3, v3, v22
	v_mul_f32_e32 v43, v43, v21
	v_mul_f32_e32 v42, v42, v21
	v_mul_f32_e32 v41, v41, v21
	v_dual_mul_f32 v40, v40, v21 :: v_dual_mul_f32 v1, v1, v22
	v_mul_f32_e32 v39, v39, v21
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v65, 32, v57
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v17.h, 0
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s2, s17, v57
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v57, v35, v19, 1
	v_add_lshl_u32 v19, v66, v19, 1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s17, v65
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v58.h, v17.h
	v_mov_b16_e32 v62.h, v17.h
	v_add_lshl_u32 v35, v35, v18, 1
	v_mov_b16_e32 v59.h, v17.h
	v_mov_b16_e32 v60.h, v17.h
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s0, s2
	s_and_b32 s0, s0, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v64.h, v17.h
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s2
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v57, 0x80000000, v57, s3
	v_cndmask_b32_e64 v35, 0x80000000, v35, s0
	v_mov_b16_e32 v61.h, v17.h
	v_mov_b16_e32 v67.h, v17.h
	v_mov_b16_e32 v63.h, v17.h
	v_add_lshl_u32 v18, v66, v18, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 vcc_lo, vcc_lo, s1
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v4, v4, v22
	v_mul_f32_e32 v2, v2, v22
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v34, v34, v21
	v_mul_f32_e32 v21, v33, v21
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v27, 16, v27
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v26, 16, v26
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v25, 16, v25
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v31, 16, v31
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v30, 16, v30
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v20, 16, v20
	v_lshlrev_b32_e32 v29, 16, v29
	v_lshlrev_b32_e32 v28, 16, v28
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v52, v52, v27
	v_dual_mul_f32 v46, v46, v30 :: v_dual_mul_f32 v7, v7, v20
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v37, 16, v37
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v45, v45, v31 :: v_dual_lshlrev_b32 v22, 16, v54
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v33, 16, v36
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v47, v47, v29 :: v_dual_lshlrev_b32 v36, 16, v38
	v_dual_mul_f32 v15, v15, v27 :: v_dual_lshlrev_b32 v38, 16, v53
	v_dual_mul_f32 v44, v44, v20 :: v_dual_mul_f32 v9, v9, v30
	v_mul_f32_e32 v16, v16, v24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v49, v49, v26 :: v_dual_lshlrev_b32 v32, 16, v32
	v_dual_mul_f32 v51, v51, v24 :: v_dual_mul_f32 v50, v50, v25
	v_mul_f32_e32 v13, v13, v28
	v_dual_mul_f32 v48, v48, v28 :: v_dual_mul_f32 v11, v11, v25
	v_dual_mul_f32 v24, v43, v23 :: v_dual_mul_f32 v25, v40, v37
	v_dual_mul_f32 v12, v12, v26 :: v_dual_mul_f32 v3, v3, v32
	v_dual_mul_f32 v14, v14, v29 :: v_dual_mul_f32 v21, v21, v22
	v_dual_mul_f32 v8, v8, v23 :: v_dual_mul_f32 v27, v34, v38
	v_dual_mul_f32 v23, v41, v33 :: v_dual_mul_f32 v6, v6, v36
	v_mul_f32_e32 v22, v1, v22
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v1, v52, 16, 1
	v_bfe_u32 v34, v45, 16, 1
	v_mov_b16_e32 v17.l, v16.h
	v_mov_b16_e32 v58.l, v15.h
	v_mov_b16_e32 v62.l, v7.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v26, v39, v36
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v36, v44, 16, 1
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v10, v10, v31 :: v_dual_mul_f32 v5, v5, v33
	v_mul_f32_e32 v20, v42, v32
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v28, v51, 16, 1
	v_bfe_u32 v29, v50, 16, 1
	v_bfe_u32 v30, v49, 16, 1
	v_bfe_u32 v32, v47, 16, 1
	v_bfe_u32 v33, v46, 16, 1
	v_mov_b16_e32 v59.l, v11.h
	v_mov_b16_e32 v60.l, v13.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v4, v4, v37
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v37, v24, 16, 1
	v_cmp_o_f32_e64 s0, v52, v52
	v_cmp_o_f32_e64 s8, v45, v45
	v_cmp_o_f32_e64 s9, v44, v44
	v_add3_u32 v1, v52, v1, 0x7fff
	v_add3_u32 v34, v45, v34, 0x7fff
	v_add3_u32 v36, v44, v36, 0x7fff
	v_and_b32_e32 v44, 1, v17
	v_and_b32_e32 v45, 1, v58
	v_mov_b16_e32 v17.l, v12.h
	v_cmp_o_f32_e64 s2, v51, v51
	v_cmp_o_f32_e64 s3, v50, v50
	v_cmp_o_f32_e64 s4, v49, v49
	v_bfe_u32 v31, v48, 16, 1
	v_cmp_o_f32_e64 s6, v47, v47
	v_cmp_o_f32_e64 s7, v46, v46
	v_cmp_o_f32_e64 s18, v24, v24
	v_bfe_u32 v39, v23, 16, 1
	v_bfe_u32 v40, v25, 16, 1
	v_bfe_u32 v42, v27, 16, 1
	v_add3_u32 v28, v51, v28, 0x7fff
	v_add3_u32 v29, v50, v29, 0x7fff
	v_add3_u32 v30, v49, v30, 0x7fff
	v_add3_u32 v32, v47, v32, 0x7fff
	v_add3_u32 v33, v46, v33, 0x7fff
	v_and_b32_e32 v46, 1, v59
	v_and_b32_e32 v47, 1, v60
	v_mov_b16_e32 v64.l, v4.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v2, v2, v38
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v38, v20, 16, 1
	v_add3_u32 v24, v24, v37, 0x7fff
	v_and_b32_e32 v37, 1, v62
	v_bfe_u32 v41, v26, 16, 1
	v_cmp_o_f32_e64 s10, v16, v16
	v_cmp_o_f32_e64 s11, v15, v15
	v_bfe_u32 v43, v21, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v1.h, s0
	v_cmp_eq_u32_e64 s0, 0, v0
	v_add3_u32 v0, v15, v45, 0x7fff
	v_add3_u32 v15, v16, v44, 0x7fff
	v_and_b32_e32 v16, 1, v17
	v_cmp_o_f32_e64 s5, v48, v48
	v_cmp_o_f32_e64 s13, v11, v11
	v_mov_b16_e32 v61.l, v9.h
	v_cmp_o_f32_e64 s21, v20, v20
	v_cmp_o_f32_e64 s22, v23, v23
	v_cmp_o_f32_e64 s25, v25, v25
	v_cmp_o_f32_e64 s26, v26, v26
	v_cmp_o_f32_e64 s29, v27, v27
	v_add3_u32 v31, v48, v31, 0x7fff
	v_add3_u32 v20, v20, v38, 0x7fff
	v_add3_u32 v23, v23, v39, 0x7fff
	v_add3_u32 v25, v25, v40, 0x7fff
	v_add3_u32 v26, v26, v41, 0x7fff
	v_and_b32_e32 v39, 1, v64
	v_mov_b16_e32 v67.l, v2.h
	v_add3_u32 v27, v27, v42, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v28.h, s2
	v_cndmask_b16 v28.l, 0x7fff, v29.h, s3
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s4
	v_cndmask_b16 v30.l, 0x7fff, v33.h, s7
	v_cndmask_b16 v30.h, 0x7fff, v34.h, s8
	v_add3_u32 v11, v11, v46, 0x7fff
	v_mov_b16_e32 v17.l, v14.h
	v_mov_b16_e32 v63.l, v3.h
	v_cmp_o_f32_e64 s30, v21, v21
	v_add3_u32 v21, v21, v43, 0x7fff
	v_cndmask_b16 v15.l, 0x7fff, v0.h, s11
	v_add3_u32 v0, v12, v16, 0x7fff
	v_cmp_o_f32_e64 s20, v7, v7
	v_cmp_o_f32_e64 s28, v4, v4
	v_and_b32_e32 v48, 1, v61
	v_and_b32_e32 v40, 1, v67
	v_cndmask_b16 v29.l, 0x7fff, v31.h, s5
	v_cndmask_b16 v29.h, 0x7fff, v32.h, s6
	v_cndmask_b16 v24.l, 0x7fff, v36.h, s9
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s18
	v_add3_u32 v7, v7, v37, 0x7fff
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s21
	v_cndmask_b16 v20.h, 0x7fff, v23.h, s22
	v_cndmask_b16 v23.l, 0x7fff, v25.h, s25
	v_cndmask_b16 v23.h, 0x7fff, v26.h, s26
	v_add3_u32 v4, v4, v39, 0x7fff
	v_cndmask_b16 v21.l, 0x7fff, v27.h, s29
	v_cndmask_b32_e64 v26, v30, v28, s0
	v_cndmask_b32_e64 v27, v28, v30, s0
	v_cndmask_b32_e64 v28, 0x1054, v55, s0
	v_cndmask_b16 v0.l, 0x7fff, v11.h, s13
	v_and_b32_e32 v11, 1, v17
	v_mov_b16_e32 v17.l, v10.h
	v_and_b32_e32 v38, 1, v63
	v_cmp_o_f32_e64 s12, v12, v12
	v_cmp_o_f32_e64 s14, v14, v14
	v_cmp_o_f32_e64 s17, v9, v9
	v_cmp_o_f32_e64 s33, v2, v2
	v_add3_u32 v9, v9, v48, 0x7fff
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s30
	v_add3_u32 v2, v2, v40, 0x7fff
	v_cndmask_b32_e64 v25, v29, v1, s0
	v_cndmask_b32_e64 v1, v1, v29, s0
	v_cndmask_b32_e64 v29, 0x3276, v56, s0
	v_cndmask_b16 v12.l, 0x7fff, v7.h, s20
	v_cndmask_b16 v16.l, 0x7fff, v4.h, s28
	v_cndmask_b32_e64 v7, v23, v24, s0
	v_cndmask_b32_e64 v4, v24, v23, s0
	v_lshl_or_b32 v23, v28, 8, v28
	v_add3_u32 v11, v14, v11, 0x7fff
	v_and_b32_e32 v14, 1, v17
	v_mov_b16_e32 v17.l, v8.h
	v_cmp_o_f32_e64 s24, v3, v3
	v_add3_u32 v3, v3, v38, 0x7fff
	v_cmp_o_f32_e64 s15, v13, v13
	v_cmp_o_f32_e64 s16, v10, v10
	v_add3_u32 v13, v13, v47, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v9.h, s17
	v_cndmask_b16 v30.l, 0x7fff, v2.h, s33
	v_cndmask_b32_e64 v9, v21, v20, s0
	v_cndmask_b32_e64 v20, v20, v21, s0
	v_permlanex16_b32 v21, v27, s34, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v24, v29, 8, v29
	v_permlanex16_b32 v27, v4, s34, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v4, 0x540054, v23
	v_cndmask_b16 v2.h, 0x7fff, v11.h, s14
	v_add3_u32 v10, v10, v14, 0x7fff
	v_and_b32_e32 v11, 1, v17
	v_mov_b16_e32 v17.l, v5.h
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s10
	v_cndmask_b16 v2.l, 0x7fff, v13.h, s15
	v_cndmask_b16 v13.l, 0x7fff, v3.h, s24
	v_and_b32_e32 v23, 0x760076, v24
	v_lshl_or_b32 v4, v4, 4, v4
	v_cndmask_b16 v3.h, 0x7fff, v10.h, s16
	v_and_b32_e32 v10, 1, v17
	v_mov_b16_e32 v17.l, v6.h
	v_cmp_o_f32_e64 s19, v8, v8
	v_lshl_or_b32 v14, v23, 4, v23
	v_add3_u32 v8, v8, v11, 0x7fff
	v_cndmask_b32_e64 v11, v2, v15, s0
	v_cndmask_b32_e64 v2, v15, v2, s0
	v_and_b32_e32 v15, 0x5040504, v4
	v_and_b32_e32 v4, 1, v17
	v_mov_b16_e32 v17.l, v22.h
	v_cmp_o_f32_e64 s23, v5, v5
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s12
	v_and_b32_e32 v23, 0x7060706, v14
	v_cndmask_b16 v12.h, 0x7fff, v8.h, s19
	v_add3_u32 v8, v5, v10, 0x7fff
	v_and_b32_e32 v5, 1, v17
	v_cmp_o_f32_e64 s27, v6, v6
	v_cmp_o_f32_e64 s31, v22, v22
	v_cndmask_b32_e64 v14, v3, v0, s0
	v_cndmask_b32_e64 v10, v0, v3, s0
	v_permlanex16_b32 v24, v2, s34, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v2, v21, v26, v15
	v_perm_b32 v3, v21, v26, v23
	v_add3_u32 v17, v6, v4, 0x7fff
	v_add3_u32 v21, v22, v5, 0x7fff
	v_permlanex16_b32 v20, v20, s34, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v13.h, 0x7fff, v8.h, s23
	v_perm_b32 v4, v27, v7, v15
	v_cndmask_b16 v16.h, 0x7fff, v17.h, s27
	v_cndmask_b16 v30.h, 0x7fff, v21.h, s31
	v_perm_b32 v5, v27, v7, v23
	v_perm_b32 v6, v20, v9, v15
	v_perm_b32 v7, v20, v9, v23
	v_permlanex16_b32 v17, v10, s34, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v10, v12, v16, s0
	v_cndmask_b32_e64 v20, v13, v30, s0
	v_permlanex16_b32 v1, v1, s34, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v16, v16, v12, s0
	v_cndmask_b32_e64 v22, v30, v13, s0
	v_permlanex16_b32 v21, v10, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v20, s34, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v25, v15
	v_perm_b32 v1, v1, v25, v23
	v_perm_b32 v8, v24, v11, v15
	v_perm_b32 v9, v24, v11, v23
	v_perm_b32 v10, v17, v14, v15
	v_perm_b32 v11, v17, v14, v23
	v_perm_b32 v12, v21, v16, v15
	v_perm_b32 v13, v21, v16, v23
	v_perm_b32 v14, v20, v22, v15
	v_perm_b32 v15, v20, v22, v23
	v_cndmask_b32_e32 v16, 0x80000000, v18, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v57, s[36:39], 0 offen
	buffer_store_b128 v[4:7], v19, s[36:39], 0 offen
	buffer_store_b128 v[8:11], v35, s[36:39], 0 offen
	buffer_store_b128 v[12:15], v16, s[36:39], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 75
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
		.amdhsa_inst_pref_size 45
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.num_vgpr, 75
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5652
; TotalNumSgprs: 42
; NumVgprs: 75
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 9
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 75
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nn_pc_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     75
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
