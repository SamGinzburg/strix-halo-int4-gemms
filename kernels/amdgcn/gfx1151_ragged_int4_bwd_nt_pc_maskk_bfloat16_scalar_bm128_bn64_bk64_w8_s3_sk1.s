	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b128 s[44:47], s[0:1], 0x20
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s8, s2
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v47, 1, v0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v46, 2, v0
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_lshlrev_b32_e32 v42, 3, v0
	v_lshlrev_b32_e32 v44, 4, v0
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v39, 15, v0
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v40, 0xc0, v0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_and_b32_e32 v41, 32, v0
	v_and_b32_e32 v45, 24, v0
	v_and_b32_e32 v38, 24, v47
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_and_b32_e32 v33, 24, v42
	v_and_b32_e32 v34, 16, v44
	v_lshlrev_b32_e32 v43, 1, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s26, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s27, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_ashr_i32 s6, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s7, s5, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_lshr_b32 s6, s6, 25
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
	s_ashr_i32 s11, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s10, s5, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s10, s11
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
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s6, s5
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s12, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s12, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s6, s10
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s5, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s8, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s8
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3)
	s_cvt_u32_f32 s9, s8
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s8, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s6
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s8, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_i32 s5, s5, s9
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s7, s2, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_hi_u32 s4, s9, s5
	s_abs_i32 s5, s7
	s_add_i32 s9, s9, s4
	.loc	1 1357 39                       ; ragged.py:1357:39
	s_mul_i32 s18, s8, s26
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s7, s10
	s_mul_i32 s13, s4, s6
	s_ashr_i32 s12, s9, 31
	s_sub_i32 s5, s5, s13
	s_add_i32 s9, s4, 1
	s_sub_i32 s13, s5, s6
	s_cmp_ge_u32 s5, s6
	.loc	1 1359 39                       ; ragged.py:1359:39
	s_mul_i32 s48, s8, s27
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s5, s13, s5
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s4, s9, s4
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s9, s8, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s13, s4, s12
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[4:5], s[8:9], 2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s6, s13, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s14, s6, s10
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s33, s6, 7
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s7, s7, s14
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v1, s33, v47
	.loc	1 1310 18                       ; ragged.py:1310:18
	s_lshl_b32 s25, s7, 6
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_add_u32 s4, s44, s4
	s_addc_u32 s5, s45, s5
	s_clause 0x1
	s_load_b256 s[36:43], s[0:1], 0x0
	s_load_b32 s44, s[0:1], 0x38
	s_load_b32 s17, s[4:5], 0x0
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s25, v46
	.loc	1 1322 22                       ; ragged.py:1322:22
	s_lshl_b32 s45, s3, 5
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s1, s26, v1
	.loc	1 1350 21                       ; ragged.py:1350:21
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s0, s17, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s0, s0, 26
	s_add_i32 s0, s17, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s3, s0, 6
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s27, v2
	.loc	1 1349 39                       ; ragged.py:1349:39
	s_lshl_b32 s3, s3, 5
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cmp_ge_i32 s45, s3
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	s_mul_i32 s11, s11, s8
	v_xor_b32_e32 v3, v44, v45
	s_sub_i32 s8, s12, s11
	s_lshl_b32 s2, s2, 6
	s_sub_i32 s8, s8, s13
	v_xor_b32_e32 v10, v42, v38
	s_mul_i32 s10, s10, s8
	v_xor_b32_e32 v5, 8, v3
	s_lshl_b32 s8, s10, 6
	v_add3_u32 v2, s33, s18, v47
	s_add_i32 s8, s8, s48
	s_mov_b32 s7, 0x31027000
	v_add3_u32 v9, s8, s2, v46
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s5, s37, 0xffff
	s_mov_b32 s4, s36
	s_and_b32 s9, s39, 0xffff
	v_mad_u64_u32 v[35:36], null, s44, v9, v[33:34]
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v48, 0, v5
	v_and_b32_e32 v1, 24, v43
	v_add_nc_u32_e32 v53, 0, v10
	s_mov_b32 s8, s38
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v10, v9
	v_mad_u64_u32 v[36:37], null, v2, s44, v[34:35]
	v_lshl_or_b32 v1, v39, 5, v1
	v_dual_mov_b32 v26, v9 :: v_dual_add_nc_u32 v37, 0, v3
	v_mov_b32_e32 v27, v9
	v_mov_b32_e32 v29, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v4, v40, 3, v1
	v_lshl_or_b32 v1, v41, 4, v1
	v_mov_b32_e32 v14, v9
	v_mov_b32_e32 v15, v9
	v_mov_b32_e32 v31, v9
	v_xor_b32_e32 v6, 8, v4
	v_xor_b32_e32 v7, 16, v4
	v_xor_b32_e32 v8, 24, v4
	v_xor_b32_e32 v11, 8, v1
	v_xor_b32_e32 v12, 16, v1
	v_xor_b32_e32 v13, 24, v1
	v_add_nc_u32_e32 v49, 0, v4
	v_add_nc_u32_e32 v50, 0, v6
	v_dual_mov_b32 v16, v9 :: v_dual_add_nc_u32 v51, 0, v7
	v_add_nc_u32_e32 v52, 0, v8
	v_add_nc_u32_e32 v54, 0, v1
	v_dual_mov_b32 v28, v9 :: v_dual_add_nc_u32 v55, 0, v11
	v_dual_mov_b32 v25, v9 :: v_dual_add_nc_u32 v56, 0, v12
	v_dual_mov_b32 v30, v9 :: v_dual_add_nc_u32 v57, 0, v13
	v_mov_b32_e32 v11, v9
	v_mov_b32_e32 v12, v9
	v_mov_b32_e32 v13, v9
	v_mov_b32_e32 v32, v9
	v_mov_b32_e32 v17, v9
	v_mov_b32_e32 v18, v9
	v_mov_b32_e32 v19, v9
	v_mov_b32_e32 v20, v9
	v_mov_b32_e32 v21, v9
	v_mov_b32_e32 v22, v9
	v_mov_b32_e32 v23, v9
	v_mov_b32_e32 v24, v9
	v_mov_b32_e32 v1, v9
	v_mov_b32_e32 v2, v9
	v_mov_b32_e32 v3, v9
	v_mov_b32_e32 v4, v9
	v_mov_b32_e32 v5, v9
	v_mov_b32_e32 v6, v9
	v_mov_b32_e32 v7, v9
	v_mov_b32_e32 v8, v9
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1362 34                       ; ragged.py:1362:34
	v_add_nc_u32_e32 v58, s45, v36
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_add_nc_u32_e32 v59, s45, v35
	.loc	1 1374 21                       ; ragged.py:1374:21
	s_add_i32 s45, s45, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cmp_lt_i32 s45, s3
	.loc	1 1362 34                       ; ragged.py:1362:34
	v_cndmask_b32_e64 v58, 0x80000000, v58, s1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_cndmask_b32_e64 v62, 0x80000000, v59, s0
	.loc	1 1362 34                       ; ragged.py:1362:34
	buffer_load_b128 v[58:61], v58, s[4:7], 0 offen
	.loc	1 1363 34                       ; ragged.py:1363:34
	buffer_load_b64 v[74:75], v62, s[8:11], 0 offen
	.loc	1 1362 34                       ; ragged.py:1362:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b64 v37, v[58:59]
	ds_store_b64 v48, v[60:61]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[58:61], v49 offset1:4
	ds_load_2addr_stride64_b64 v[62:65], v50 offset1:4
	ds_load_2addr_stride64_b64 v[66:69], v51 offset1:4
	ds_load_2addr_stride64_b64 v[70:73], v52 offset1:4
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v53, v[74:75]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[74:77], v54 offset1:2
	ds_load_2addr_stride64_b64 v[78:81], v55 offset1:2
	ds_load_2addr_stride64_b64 v[82:85], v56 offset1:2
	ds_load_2addr_stride64_b64 v[86:89], v57 offset1:2
	.loc	1 1364 31                       ; ragged.py:1364:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[74:75], v[58:59], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[76:77], v[58:59], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[74:75], v[60:61], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[76:77], v[60:61], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[78:79], v[62:63], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[80:81], v[62:63], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[78:79], v[64:65], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[80:81], v[64:65], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[82:83], v[66:67], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[84:85], v[66:67], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[82:83], v[68:69], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[84:85], v[68:69], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[86:87], v[70:71], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[88:89], v[70:71], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[86:87], v[72:73], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[88:89], v[72:73], v[1:8] neg_lo:[1,1,0]
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 1314 27 is_stmt 1             ; ragged.py:1314:27
	s_add_i32 s2, s17, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1314 26 is_stmt 0             ; ragged.py:1314:26
	s_lshr_b32 s3, s2, 31
	s_add_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s49, s2, 1
	.loc	1 1375 20 is_stmt 1             ; ragged.py:1375:20
	s_cmp_lt_i32 s45, s49
	.loc	1 1375 17 is_stmt 0             ; ragged.py:1375:17
	s_cbranch_scc1 .LBB0_6
; %bb.5:                                ; %._crit_edge._crit_edge
	.loc	1 1404 21 is_stmt 1             ; ragged.py:1404:21
	s_add_i32 s34, s33, s18
	.loc	1 1411 21                       ; ragged.py:1411:21
	s_add_i32 s35, s25, s48
	s_cbranch_execz .LBB0_7
	s_branch .LBB0_8
.LBB0_6:
                                        ; implicit-def: $sgpr34
                                        ; implicit-def: $sgpr35
.LBB0_7:
	.loc	1 1386 33                       ; ragged.py:1386:33
	s_and_b32 s19, s17, 0x80000001
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mul_lo_u32 v47, s44, v47
	.loc	1 1386 33                       ; ragged.py:1386:33
	s_cmp_eq_u32 s19, 1
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v56, s45, v34
	.loc	1 1386 33                       ; ragged.py:1386:33
	s_cselect_b32 s50, -1, 0
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_add_i32 s34, s33, s18
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_mul_lo_u32 v46, s44, v46
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_mul_i32 s20, s34, s44
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v61, 1, v56
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_add_i32 s21, s45, s20
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v62, 2, v56
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add3_u32 v34, s21, v47, v34
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e32 vcc_lo, s49, v56
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v63, 3, v56
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s2, s49, v61
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v64, 4, v56
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s3, s49, v62
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add_nc_u32_e32 v76, 2, v34
	v_add_nc_u32_e32 v47, 1, v34
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v65, 5, v56
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, vcc_lo
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s4, s49, v63
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v66, 6, v56
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add_nc_u32_e32 v83, 9, v34
	v_add_nc_u32_e32 v84, 10, v34
	v_add_nc_u32_e32 v79, 5, v34
	v_add_nc_u32_e32 v80, 6, v34
	v_add_nc_u32_e32 v77, 3, v34
	v_add_nc_u32_e32 v78, 4, v34
	v_add_nc_u32_e32 v85, 11, v34
	v_add_nc_u32_e32 v86, 12, v34
	v_add_nc_u32_e32 v87, 13, v34
	v_add_nc_u32_e32 v88, 14, v34
	v_add_nc_u32_e32 v81, 7, v34
	v_add_nc_u32_e32 v82, 8, v34
	v_add_nc_u32_e32 v89, 15, v34
	.loc	1 1387 34 is_stmt 0             ; ragged.py:1387:34
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s2
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s5, s49, v64
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v67, 7, v56
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s3
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s6, s49, v65
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v68, 8, v56
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s4
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	s_add_i32 s35, s25, s48
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s7, s49, v66
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v69, 9, v56
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s5
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	s_mul_i32 s2, s35, s44
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s8, s49, v67
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v70, 10, v56
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v46, s45, s2, v46
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s6
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s9, s49, v68
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v71, 11, v56
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s7
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s10, s49, v69
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v72, 12, v56
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e32 v80, 0x80000000, v80, vcc_lo
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s8
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s11, s49, v70
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v73, 13, v56
	.loc	1 1387 34                       ; ragged.py:1387:34
	s_and_b32 s29, s37, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_mov_b32 s28, s36
	v_cndmask_b32_e32 v81, 0x80000000, v81, vcc_lo
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s9
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s12, s49, v71
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_or_b32_e32 v35, 1, v33
	v_or_b32_e32 v36, 2, v33
	v_or_b32_e32 v37, 3, v33
	v_or_b32_e32 v48, 4, v33
	v_or_b32_e32 v49, 5, v33
	v_or_b32_e32 v50, 6, v33
	v_or_b32_e32 v51, 7, v33
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v52, s45, v33
	v_or_b32_e32 v74, 14, v56
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add_nc_u32_e32 v33, v46, v33
	.loc	1 1387 34                       ; ragged.py:1387:34
	s_clause 0x7
	buffer_load_u8 v90, v34, s[28:31], 0 offen
	buffer_load_u8 v91, v47, s[28:31], 0 offen
	buffer_load_u8 v76, v76, s[28:31], 0 offen
	buffer_load_u8 v77, v77, s[28:31], 0 offen
	buffer_load_u8 v78, v78, s[28:31], 0 offen
	buffer_load_u8 v79, v79, s[28:31], 0 offen
	buffer_load_u8 v80, v80, s[28:31], 0 offen
	buffer_load_u8 v81, v81, s[28:31], 0 offen
	v_cndmask_b32_e32 v34, 0x80000000, v82, vcc_lo
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s10
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s13, s49, v72
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v75, 15, v56
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e32 v47, 0x80000000, v83, vcc_lo
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s11
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s14, s49, v73
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e32 v82, 0x80000000, v84, vcc_lo
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s12
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s15, s49, v74
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e32 v83, 0x80000000, v85, vcc_lo
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s13
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s16, s49, v75
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v53, s45, v35
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e32 v84, 0x80000000, v86, vcc_lo
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s14
	.loc	1 1376 26 is_stmt 1             ; ragged.py:1376:26
	v_or_b32_e32 v54, s45, v36
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s17, s49, v52
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e32 v85, 0x80000000, v87, vcc_lo
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s15
	.loc	1 1376 26 is_stmt 1             ; ragged.py:1376:26
	v_or_b32_e32 v55, s45, v37
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e32 v86, 0x80000000, v88, vcc_lo
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s16
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s18, s49, v53
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e32 v87, 0x80000000, v89, vcc_lo
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v57, s45, v48
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s19, s49, v54
	.loc	1 1387 34                       ; ragged.py:1387:34
	s_clause 0x7
	buffer_load_u8 v88, v34, s[28:31], 0 offen
	buffer_load_u8 v89, v47, s[28:31], 0 offen
	buffer_load_u8 v82, v82, s[28:31], 0 offen
	buffer_load_u8 v83, v83, s[28:31], 0 offen
	buffer_load_u8 v84, v84, s[28:31], 0 offen
	buffer_load_u8 v85, v85, s[28:31], 0 offen
	buffer_load_u8 v86, v86, s[28:31], 0 offen
	buffer_load_u8 v87, v87, s[28:31], 0 offen
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s17
	.loc	1 1388 34 is_stmt 0             ; ragged.py:1388:34
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_add_nc_u32 v34, v46, v35
	.loc	1 1376 26 is_stmt 1             ; ragged.py:1376:26
	v_or_b32_e32 v58, s45, v49
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s20, s49, v55
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add_nc_u32_e32 v35, v46, v36
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s18
	.loc	1 1376 26 is_stmt 1             ; ragged.py:1376:26
	v_or_b32_e32 v59, s45, v50
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s21, s49, v57
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_dual_cndmask_b32 v34, 0x80000000, v34 :: v_dual_add_nc_u32 v47, v46, v49
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s19
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_dual_cndmask_b32 v35, 0x80000000, v35 :: v_dual_add_nc_u32 v36, v46, v37
	.loc	1 1376 26 is_stmt 1             ; ragged.py:1376:26
	v_or_b32_e32 v60, s45, v51
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s22, s49, v58
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add_nc_u32_e32 v37, v46, v48
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s20
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s23, s49, v59
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s21
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s24, s49, v60
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_add_nc_u32 v48, v46, v50
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s22
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add_nc_u32_e32 v46, v46, v51
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s23
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_and_b32 s29, s39, 0xffff
	s_mov_b32 s28, s38
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s24
	.loc	1 1386 63 is_stmt 1             ; ragged.py:1386:63
	s_add_i32 s49, s49, -1
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	s_clause 0x7
	buffer_load_u8 v49, v33, s[28:31], 0 offen
	buffer_load_u8 v50, v34, s[28:31], 0 offen
	buffer_load_u8 v51, v35, s[28:31], 0 offen
	buffer_load_u8 v92, v36, s[28:31], 0 offen
	buffer_load_u8 v93, v37, s[28:31], 0 offen
	buffer_load_u8 v94, v47, s[28:31], 0 offen
	buffer_load_u8 v95, v48, s[28:31], 0 offen
	buffer_load_u8 v96, v46, s[28:31], 0 offen
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_xor_b32_e32 v33, v44, v45
	v_and_b32_e32 v34, 24, v43
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s1, s49, v61
	v_cmp_eq_u32_e64 s3, s49, v63
	v_cmp_eq_u32_e64 s5, s49, v65
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_add_nc_u32_e32 v98, 0, v33
	v_xad_u32 v99, v33, 8, 0
	v_lshl_or_b32 v33, v39, 5, v34
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s7, s49, v67
	v_cmp_eq_u32_e64 s16, s49, v53
	v_cmp_eq_u32_e64 s18, s49, v55
	v_cmp_eq_u32_e64 s20, s49, v58
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_lshl_or_b32 v34, v40, 3, v33
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s22, s49, v60
	v_cmp_eq_u32_e64 s9, s49, v69
	v_cmp_eq_u32_e64 s11, s49, v71
	v_cmp_eq_u32_e64 s13, s49, v73
	v_cmp_eq_u32_e64 s15, s49, v75
	v_cmp_eq_u32_e32 vcc_lo, s49, v56
	v_cmp_eq_u32_e64 s0, s49, v52
	v_cmp_eq_u32_e64 s2, s49, v62
	v_cmp_eq_u32_e64 s19, s49, v57
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_lshl_or_b32 v62, v41, 4, v33
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_add_nc_u32_e32 v52, 0, v34
	v_xad_u32 v53, v34, 8, 0
	v_xad_u32 v56, v34, 16, 0
	v_xad_u32 v57, v34, 24, 0
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_xad_u32 v97, v42, v38, 0
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s4, s49, v64
	v_cmp_eq_u32_e64 s6, s49, v66
	v_cmp_eq_u32_e64 s17, s49, v54
	v_cmp_eq_u32_e64 s21, s49, v59
	.loc	1 1386 32 is_stmt 0             ; ragged.py:1386:32
	s_and_b32 s1, s50, s1
	s_and_b32 s3, s50, s3
	s_and_b32 s5, s50, s5
	s_and_b32 s7, s50, s7
	s_and_b32 s16, s50, s16
	s_and_b32 s18, s50, s18
	s_and_b32 s20, s50, s20
	s_and_b32 s22, s50, s22
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s8, s49, v68
	v_cmp_eq_u32_e64 s10, s49, v70
	v_cmp_eq_u32_e64 s12, s49, v72
	v_cmp_eq_u32_e64 s14, s49, v74
	.loc	1 1386 32                       ; ragged.py:1386:32
	s_and_b32 s9, s50, s9
	s_and_b32 s11, s50, s11
	s_and_b32 s13, s50, s13
	s_and_b32 s15, s50, s15
	s_and_b32 s23, s50, vcc_lo
	s_and_b32 s0, s50, s0
	s_and_b32 s2, s50, s2
	s_and_b32 s4, s50, s4
	s_and_b32 s6, s50, s6
	s_and_b32 s17, s50, s17
	s_and_b32 s19, s50, s19
	s_and_b32 s21, s50, s21
	s_and_b32 s8, s50, s8
	s_and_b32 s10, s50, s10
	s_and_b32 s12, s50, s12
	s_and_b32 s14, s50, s14
	.loc	1 1390 34 is_stmt 1             ; ragged.py:1390:34
	v_add_nc_u32_e32 v58, 0, v62
	v_xad_u32 v59, v62, 8, 0
	.loc	1 1389 34                       ; ragged.py:1389:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_xad_u32 v66, v62, 24, 0
	.loc	1 1389 62                       ; ragged.py:1389:62
	s_waitcnt vmcnt(23)
	v_and_b16 v33.l, v90.l, 15
	s_waitcnt vmcnt(22)
	v_and_b16 v33.h, v91.l, 15
	s_waitcnt vmcnt(21)
	v_and_b16 v34.l, v76.l, 15
	s_waitcnt vmcnt(20)
	v_and_b16 v34.h, v77.l, 15
	s_waitcnt vmcnt(19)
	v_and_b16 v35.l, v78.l, 15
	s_waitcnt vmcnt(18)
	v_and_b16 v35.h, v79.l, 15
	s_waitcnt vmcnt(17)
	v_and_b16 v36.l, v80.l, 15
	s_waitcnt vmcnt(16)
	v_and_b16 v36.h, v81.l, 15
	.loc	1 1389 34 is_stmt 0             ; ragged.py:1389:34
	v_cndmask_b16 v33.h, v91.l, v33.h, s1
	v_cndmask_b16 v34.h, v77.l, v34.h, s3
	v_cndmask_b16 v35.h, v79.l, v35.h, s5
	v_cndmask_b16 v33.l, v90.l, v33.l, s23
	v_cndmask_b16 v36.h, v81.l, v36.h, s7
	v_cndmask_b16 v34.l, v76.l, v34.l, s2
	v_cndmask_b16 v35.l, v78.l, v35.l, s4
	v_cndmask_b16 v36.l, v80.l, v36.l, s6
	v_lshlrev_b16 v35.h, 8, v35.h
	v_lshlrev_b16 v36.h, 8, v36.h
	v_lshlrev_b16 v34.h, 8, v34.h
	v_lshlrev_b16 v33.h, 8, v33.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_or_b16 v36.h, v36.l, v36.h
	v_or_b16 v36.l, v35.l, v35.h
	v_or_b16 v35.h, v34.l, v34.h
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b16 v35.l, v33.l, v33.h
	.loc	1 1389 62                       ; ragged.py:1389:62
	s_waitcnt vmcnt(15)
	v_and_b16 v37.l, v88.l, 15
	s_waitcnt vmcnt(14)
	v_and_b16 v37.h, v89.l, 15
	s_waitcnt vmcnt(13)
	v_and_b16 v42.l, v82.l, 15
	s_waitcnt vmcnt(12)
	v_and_b16 v42.h, v83.l, 15
	s_waitcnt vmcnt(11)
	v_and_b16 v43.l, v84.l, 15
	s_waitcnt vmcnt(10)
	v_and_b16 v43.h, v85.l, 15
	s_waitcnt vmcnt(9)
	v_and_b16 v44.l, v86.l, 15
	s_waitcnt vmcnt(8)
	v_and_b16 v44.h, v87.l, 15
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_cndmask_b16 v37.h, v89.l, v37.h, s9
	v_cndmask_b16 v42.h, v83.l, v42.h, s11
	v_cndmask_b16 v43.h, v85.l, v43.h, s13
	v_cndmask_b16 v37.l, v88.l, v37.l, s8
	v_cndmask_b16 v44.h, v87.l, v44.h, s15
	v_cndmask_b16 v42.l, v82.l, v42.l, s10
	v_cndmask_b16 v43.l, v84.l, v43.l, s12
	v_cndmask_b16 v44.l, v86.l, v44.l, s14
	v_lshlrev_b16 v43.h, 8, v43.h
	v_lshlrev_b16 v44.h, 8, v44.h
	v_lshlrev_b16 v42.h, 8, v42.h
	v_lshlrev_b16 v37.h, 8, v37.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b16 v34.l, v43.l, v43.h
	v_or_b16 v34.h, v44.l, v44.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b16 v33.h, v42.l, v42.h
	v_or_b16 v33.l, v37.l, v37.h
	ds_store_b64 v98, v[35:36]
	ds_store_b64 v99, v[33:34]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1390 34 is_stmt 1             ; ragged.py:1390:34
	v_xad_u32 v37, v62, 16, 0
	.loc	1 1390 62 is_stmt 0             ; ragged.py:1390:62
	s_waitcnt vmcnt(7)
	v_and_b16 v45.l, v49.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v45.h, v50.l, 15
	s_waitcnt vmcnt(5)
	v_and_b16 v46.l, v51.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v46.h, v92.l, 15
	s_waitcnt vmcnt(3)
	v_and_b16 v47.l, v93.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v47.h, v94.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v48.l, v95.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v48.h, v96.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v45.h, v50.l, v45.h, s16
	v_cndmask_b16 v46.h, v92.l, v46.h, s18
	v_cndmask_b16 v47.h, v94.l, v47.h, s20
	v_cndmask_b16 v45.l, v49.l, v45.l, s0
	v_cndmask_b16 v48.h, v96.l, v48.h, s22
	v_cndmask_b16 v46.l, v51.l, v46.l, s17
	v_cndmask_b16 v47.l, v93.l, v47.l, s19
	v_cndmask_b16 v48.l, v95.l, v48.l, s21
	v_lshlrev_b16 v47.h, 8, v47.h
	v_lshlrev_b16 v48.h, 8, v48.h
	v_lshlrev_b16 v46.h, 8, v46.h
	v_lshlrev_b16 v45.h, 8, v45.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b16 v55.l, v47.l, v47.h
	v_or_b16 v55.h, v48.l, v48.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b16 v54.h, v46.l, v46.h
	v_or_b16 v54.l, v45.l, v45.h
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	ds_load_2addr_stride64_b64 v[33:36], v52 offset1:4
	ds_load_2addr_stride64_b64 v[42:45], v53 offset1:4
	ds_load_2addr_stride64_b64 v[46:49], v56 offset1:4
	ds_load_2addr_stride64_b64 v[50:53], v57 offset1:4
	.loc	1 1390 34                       ; ragged.py:1390:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v97, v[54:55]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[54:57], v58 offset1:2
	ds_load_2addr_stride64_b64 v[58:61], v59 offset1:2
	ds_load_2addr_stride64_b64 v[62:65], v37 offset1:2
	ds_load_2addr_stride64_b64 v[66:69], v66 offset1:2
	.loc	1 1391 31                       ; ragged.py:1391:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[54:55], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[56:57], v[33:34], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[54:55], v[35:36], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[56:57], v[35:36], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[58:59], v[42:43], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[60:61], v[42:43], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[58:59], v[44:45], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[60:61], v[44:45], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[62:63], v[46:47], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[64:65], v[46:47], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[62:63], v[48:49], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[64:65], v[48:49], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[66:67], v[50:51], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[68:69], v[50:51], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[66:67], v[52:53], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[68:69], v[52:53], v[1:8] neg_lo:[1,1,0]
.LBB0_8:
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v40, 2, v40
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v33, 4, v0
	v_lshrrev_b32_e32 v34, 1, v41
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_and_b32 s49, s41, 0xffff
	s_mov_b32 s51, 0x31027000
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v51, v40, v39
	s_mov_b32 s50, 0x7ffffffe
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_and_or_b32 v33, v33, 1, v34
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_mov_b32 s48, s40
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v70, v1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v52, 64, v51
	.loc	1 1309 18 is_stmt 0             ; ragged.py:1309:18
	v_or_b32_e32 v64, s33, v51
	.loc	1 1403 36 is_stmt 1             ; ragged.py:1403:36
	v_add_lshl_u32 v65, s34, v51, 1
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v58, 2, v33
	v_or_b32_e32 v57, 4, v33
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v63, s33, v52
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s26, v64
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_lshl_u32 v66, s34, v52, 1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v62, s25, v58
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v40, 6, v33
	.loc	1 1311 20 is_stmt 1             ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s26, v63
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e64 v64, 0x80000000, v65, s0
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v65, s25, v33
	v_or_b32_e32 v61, s25, v57
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v58, s35, v58, 1
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e32 v63, 0x80000000, v66, vcc_lo
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v66, s35, v33, 1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s27, v65
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v39, 8, v33
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v60, s25, v40
	.loc	1 1410 36 is_stmt 1             ; ragged.py:1410:36
	v_add_lshl_u32 v57, s35, v57, 1
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v50, 10, v33
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v65, 0x80000000, v66, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s27, v62
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v59, s25, v39
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v40, s35, v40, 1
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v44, 12, v33
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v56, s25, v50
	.loc	1 1410 36 is_stmt 1             ; ragged.py:1410:36
	v_cndmask_b32_e64 v58, 0x80000000, v58, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s27, v61
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v39, s35, v39, 1
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v43, 14, v33
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v55, s25, v44
	.loc	1 1410 36 is_stmt 1             ; ragged.py:1410:36
	v_add_lshl_u32 v50, s35, v50, 1
	v_cndmask_b32_e64 v57, 0x80000000, v57, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s27, v60
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v42, 32, v33
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v54, s25, v43
	.loc	1 1410 36 is_stmt 1             ; ragged.py:1410:36
	v_add_lshl_u32 v44, s35, v44, 1
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v41, 34, v33
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v40, 0x80000000, v40, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s27, v59
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v53, s25, v42
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v43, s35, v43, 1
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v37, 36, v33
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v49, s25, v41
	.loc	1 1410 36 is_stmt 1             ; ragged.py:1410:36
	v_cndmask_b32_e64 v39, 0x80000000, v39, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s27, v56
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v42, s35, v42, 1
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_clause 0x1
	buffer_load_u16 v64, v64, s[48:51], 0 offen
	buffer_load_u16 v63, v63, s[48:51], 0 offen
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_and_b32 s49, s43, 0xffff
	s_mov_b32 s48, s42
	v_cndmask_b32_e64 v50, 0x80000000, v50, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s27, v55
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v36, 38, v33
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v48, s25, v37
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v35, 40, v33
	.loc	1 1410 36 is_stmt 1             ; ragged.py:1410:36
	v_add_lshl_u32 v37, s35, v37, 1
	v_cndmask_b32_e64 v44, 0x80000000, v44, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s27, v54
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v47, s25, v36
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v34, 42, v33
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v46, s25, v35
	.loc	1 1410 36 is_stmt 1             ; ragged.py:1410:36
	v_add_lshl_u32 v36, s35, v36, 1
	v_cndmask_b32_e64 v43, 0x80000000, v43, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s27, v53
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_clause 0x7
	buffer_load_u16 v54, v65, s[48:51], 0 offen
	buffer_load_u16 v55, v58, s[48:51], 0 offen
	buffer_load_u16 v56, v57, s[48:51], 0 offen
	buffer_load_u16 v57, v40, s[48:51], 0 offen
	buffer_load_u16 v58, v39, s[48:51], 0 offen
	buffer_load_u16 v59, v50, s[48:51], 0 offen
	buffer_load_u16 v60, v44, s[48:51], 0 offen
	buffer_load_u16 v61, v43, s[48:51], 0 offen
	v_add_lshl_u32 v39, s35, v41, 1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v45, s25, v34
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v35, s35, v35, 1
	v_cndmask_b32_e64 v40, 0x80000000, v42, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s27, v49
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v34, s35, v34, 1
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v71, v2
	v_cvt_f32_i32_e32 v73, v4
	v_cvt_f32_i32_e32 v74, v5
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v39, 0x80000000, v39, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s27, v48
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v37, 0x80000000, v37, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s27, v47
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v36, 0x80000000, v36, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s27, v46
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v35, 0x80000000, v35, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s27, v45
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v34, 0x80000000, v34, s1
	s_clause 0x5
	buffer_load_u16 v53, v39, s[48:51], 0 offen
	buffer_load_u16 v62, v40, s[48:51], 0 offen
	buffer_load_u16 v65, v36, s[48:51], 0 offen
	buffer_load_u16 v66, v37, s[48:51], 0 offen
	buffer_load_u16 v67, v34, s[48:51], 0 offen
	buffer_load_u16 v68, v35, s[48:51], 0 offen
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v34, 44, v33
	v_or_b32_e32 v33, 46, v33
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v35, s25, v34
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v34, s35, v34, 1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v36, s25, v33
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v33, s35, v33, 1
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s27, v35
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v35, 37, v38
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v34, 0x80000000, v34, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s27, v36
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v36, 36, v38
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v4, s25, v35
	.loc	1 1401 19 is_stmt 1             ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v72, v3
	v_cvt_f32_i32_e32 v23, v23
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	s_clause 0x1
	buffer_load_u16 v50, v34, s[48:51], 0 offen
	buffer_load_u16 v49, v33, s[48:51], 0 offen
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v33, 39, v38
	v_or_b32_e32 v34, 38, v38
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s1, s34, s27
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v5, s25, v36
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s18, s1, s25
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s25, v33
	v_or_b32_e32 v2, s25, v34
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s4, s27, v4
	v_cmp_gt_i32_e64 s5, s27, v5
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[4:5], null, s27, v51, s[18:19]
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s2, s27, v1
	v_cmp_gt_i32_e64 s3, s27, v2
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[1:2], null, s27, v52, s[18:19]
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v6, v6
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v69, s25, v38
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v3.h, 0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v37, 35, v38
	v_or_b32_e32 v39, 34, v38
	v_or_b32_e32 v40, 33, v38
	v_or_b32_e32 v41, 32, v38
	v_or_b32_e32 v42, 7, v38
	v_or_b32_e32 v43, 6, v38
	v_or_b32_e32 v44, 5, v38
	v_or_b32_e32 v45, 4, v38
	v_or_b32_e32 v46, 3, v38
	v_or_b32_e32 v47, 2, v38
	v_or_b32_e32 v48, 1, v38
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v8, v8
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s27, v69
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v69.h, v3.h
	v_mov_b16_e32 v86.h, v3.h
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v7, v7
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v75, s25, v37
	v_or_b32_e32 v76, s25, v39
	v_or_b32_e32 v77, s25, v40
	v_or_b32_e32 v78, s25, v41
	v_or_b32_e32 v79, s25, v42
	v_or_b32_e32 v80, s25, v43
	v_or_b32_e32 v81, s25, v44
	v_or_b32_e32 v82, s25, v45
	v_or_b32_e32 v83, s25, v46
	v_or_b32_e32 v84, s25, v47
	v_or_b32_e32 v85, s25, v48
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v87.h, v3.h
	v_mov_b16_e32 v88.h, v3.h
	v_mov_b16_e32 v89.h, v3.h
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s6, s27, v75
	v_cmp_gt_i32_e64 s7, s27, v76
	v_cmp_gt_i32_e64 s8, s27, v77
	v_cmp_gt_i32_e64 s9, s27, v78
	v_cmp_gt_i32_e64 s10, s27, v79
	v_cmp_gt_i32_e64 s11, s27, v80
	v_cmp_gt_i32_e64 s12, s27, v81
	v_cmp_gt_i32_e64 s13, s27, v82
	v_cmp_gt_i32_e64 s14, s27, v83
	v_cmp_gt_i32_e64 s15, s27, v84
	v_cmp_gt_i32_e64 s16, s27, v85
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v91.h, v3.h
	v_mov_b16_e32 v90.h, v3.h
	v_and_b32_e32 v0, 16, v0
	s_and_b32 s49, s47, 0xffff
	s_mov_b32 s48, s46
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v64, 16, v64
	.loc	1 1408 17                       ; ragged.py:1408:17
	s_waitcnt vmcnt(16)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v5, v9, v64 :: v_dual_lshlrev_b32 v2, 16, v63
	v_mul_f32_e32 v9, v10, v64
	v_mul_f32_e32 v10, v11, v64
	v_mul_f32_e32 v11, v12, v64
	v_mul_f32_e32 v12, v13, v64
	v_mul_f32_e32 v13, v14, v64
	v_mul_f32_e32 v14, v15, v64
	v_mul_f32_e32 v15, v16, v64
	v_mul_f32_e32 v16, v25, v64
	v_mul_f32_e32 v25, v26, v64
	v_mul_f32_e32 v26, v27, v64
	v_dual_mul_f32 v27, v28, v64 :: v_dual_mul_f32 v18, v2, v18
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v28, v29, v64 :: v_dual_lshlrev_b32 v51, 16, v54
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v19, v2, v19 :: v_dual_lshlrev_b32 v54, 16, v56
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v56, 16, v58
	.loc	1 1408 17                       ; ragged.py:1408:17
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v21, v2, v21 :: v_dual_lshlrev_b32 v58, 16, v60
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_lshlrev_b32_e32 v52, 16, v57
	.loc	1 1408 17                       ; ragged.py:1408:17
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v20, v2, v20 :: v_dual_lshlrev_b32 v57, 16, v61
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v5, v5, v51 :: v_dual_mul_f32 v6, v2, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v11, v11, v52
	v_dual_mul_f32 v19, v19, v54 :: v_dual_mul_f32 v20, v20, v52
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v17, v2, v17
	v_mul_f32_e32 v22, v2, v22
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s17, v5, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v86.l, v19.h
	v_cmp_o_f32_e64 s20, v11, v11
	v_cmp_o_f32_e64 s35, v19, v19
	v_cmp_o_f32_e64 s34, v20, v20
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v7, v2, v7
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v53, 16, v53
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v29, v30, v64
	v_mul_f32_e32 v30, v31, v64
	v_dual_mul_f32 v31, v32, v64 :: v_dual_lshlrev_b32 v32, 16, v55
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_lshlrev_b32_e32 v55, 16, v59
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v59, 16, v62
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v60, 16, v65
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v61, 16, v66
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v62, 16, v67
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v24, v2, v24 :: v_dual_mul_f32 v13, v13, v55
	v_mul_f32_e32 v67, v2, v72
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v14, v14, v58 :: v_dual_mul_f32 v27, v27, v60
	v_dual_mul_f32 v17, v17, v51 :: v_dual_mul_f32 v18, v18, v32
	.loc	1 1408 17                       ; ragged.py:1408:17
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v64, v2, v71 :: v_dual_lshlrev_b32 v63, 16, v68
	v_dual_mul_f32 v23, v2, v23 :: v_dual_mul_f32 v12, v12, v56
	v_dual_mul_f32 v66, v2, v73 :: v_dual_mul_f32 v9, v9, v32
	v_dual_mul_f32 v68, v2, v74 :: v_dual_mul_f32 v15, v15, v57
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v10, v10, v54 :: v_dual_mul_f32 v25, v25, v53
	v_mul_f32_e32 v16, v16, v59
	v_dual_mul_f32 v26, v26, v61 :: v_dual_mul_f32 v29, v29, v62
	v_dual_mul_f32 v21, v21, v56 :: v_dual_mul_f32 v22, v22, v55
	v_mul_f32_e32 v24, v24, v57
	v_mul_f32_e32 v52, v67, v61
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v55, v5, 16, 1
	v_bfe_u32 v61, v14, 16, 1
	v_mov_b16_e32 v3.l, v18.h
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v65, v2, v70 :: v_dual_mul_f32 v28, v28, v63
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v23, v23, v58
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v58, v11, 16, 1
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v51, v64, v53 :: v_dual_mul_f32 v6, v6, v62
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v56, v9, 16, 1
	v_bfe_u32 v57, v10, 16, 1
	v_cmp_o_f32_e64 s23, v14, v14
	v_bfe_u32 v62, v15, 16, 1
	v_mov_b16_e32 v69.l, v17.h
	v_add3_u32 v5, v5, v55, 0x7fff
	v_add3_u32 v14, v14, v61, 0x7fff
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v2, v2, v8 :: v_dual_and_b32 v55, 1, v3
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v3.l, v20.h
	v_add3_u32 v11, v11, v58, 0x7fff
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v32, v65, v59
	v_mul_f32_e32 v54, v68, v63
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s18, v9, v9
	v_cmp_o_f32_e64 s19, v10, v10
	v_cmp_o_f32_e64 s24, v15, v15
	v_bfe_u32 v65, v26, 16, 1
	v_add3_u32 v9, v9, v56, 0x7fff
	v_add3_u32 v10, v10, v57, 0x7fff
	v_add3_u32 v15, v15, v62, 0x7fff
	v_and_b32_e32 v56, 1, v69
	v_and_b32_e32 v57, 1, v86
	v_cndmask_b16 v11.l, 0x7fff, v14.h, s23
	v_and_b32_e32 v14, 1, v3
	v_mov_b16_e32 v3.l, v22.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v53, v66, v60
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v60, v13, 16, 1
	v_bfe_u32 v59, v12, 16, 1
	v_bfe_u32 v63, v16, 16, 1
	v_cmp_o_f32_e64 s27, v26, v26
	v_cmp_o_f32_e64 s33, v17, v17
	v_mov_b16_e32 v87.l, v21.h
	v_mov_b16_e32 v88.l, v23.h
	v_mov_b16_e32 v89.l, v32.h
	v_add3_u32 v26, v26, v65, 0x7fff
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s17
	v_cndmask_b16 v5.h, 0x7fff, v9.h, s18
	v_cndmask_b16 v9.h, 0x7fff, v11.h, s20
	v_cndmask_b16 v11.h, 0x7fff, v15.h, s24
	v_add3_u32 v15, v17, v56, 0x7fff
	v_add3_u32 v17, v19, v57, 0x7fff
	v_and_b32_e32 v19, 1, v3
	v_mov_b16_e32 v3.l, v24.h
	v_cmp_o_f32_e64 s22, v13, v13
	v_add3_u32 v13, v13, v60, 0x7fff
	v_cmp_o_f32_e64 s21, v12, v12
	v_cmp_o_f32_e64 s25, v16, v16
	v_add3_u32 v12, v12, v59, 0x7fff
	v_add3_u32 v16, v16, v63, 0x7fff
	v_and_b32_e32 v58, 1, v87
	v_and_b32_e32 v59, 1, v88
	v_and_b32_e32 v60, 1, v89
	v_cndmask_b16 v13.l, 0x7fff, v26.h, s27
	v_and_b32_e32 v26, 1, v3
	v_mov_b16_e32 v3.l, v51.h
	v_add3_u32 v14, v20, v14, 0x7fff
	v_cmp_o_f32_e64 s31, v18, v18
	v_cmp_o_f32_e64 s37, v21, v21
	v_cmp_o_f32_e64 s39, v23, v23
	v_cmp_o_f32_e64 s41, v32, v32
	v_cndmask_b16 v12.l, 0x7fff, v16.h, s25
	v_add3_u32 v16, v18, v55, 0x7fff
	v_add3_u32 v18, v21, v58, 0x7fff
	v_add3_u32 v21, v23, v59, 0x7fff
	v_add3_u32 v23, v32, v60, 0x7fff
	v_cndmask_b16 v14.l, 0x7fff, v17.h, s35
	v_and_b32_e32 v17, 1, v3
	v_mov_b16_e32 v3.l, v53.h
	v_cmp_o_f32_e64 s36, v22, v22
	v_cmp_o_f32_e64 s40, v51, v51
	v_mov_b16_e32 v91.l, v54.h
	v_cndmask_b16 v20.l, 0x7fff, v23.h, s41
	v_and_b32_e32 v23, 1, v3
	v_add3_u32 v19, v22, v19, 0x7fff
	v_mov_b16_e32 v3.l, v6.h
	v_add3_u32 v17, v51, v17, 0x7fff
	v_cmp_o_f32_e64 s42, v53, v53
	v_cndmask_b16 v16.l, 0x7fff, v15.h, s33
	v_add3_u32 v23, v53, v23, 0x7fff
	v_cndmask_b16 v15.h, 0x7fff, v19.h, s36
	v_and_b32_e32 v19, 1, v3
	v_cndmask_b16 v20.h, 0x7fff, v17.h, s40
	v_and_b32_e32 v17, 1, v91
	v_mov_b16_e32 v90.l, v52.h
	v_cndmask_b16 v18.l, 0x7fff, v21.h, s39
	v_cndmask_b16 v21.h, 0x7fff, v23.h, s42
	v_add3_u32 v19, v6, v19, 0x7fff
	v_cmp_o_f32_e64 s17, v6, v6
	v_add3_u32 v6, v54, v17, 0x7fff
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v17, 16, v50
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v49
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_and_b32_e32 v61, 1, v90
	v_bfe_u32 v64, v25, 16, 1
	v_bfe_u32 v67, v28, 16, 1
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v8, v30, v17
	v_mul_f32_e32 v2, v2, v23
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v68, v29, 16, 1
	v_cndmask_b16 v19.h, 0x7fff, v19.h, s17
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v7, v7, v17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s17, v54, v54
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v17, v31, v23
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v23, v8, 16, 1
	v_mov_b16_e32 v3.l, v2.h
	v_cmp_o_f32_e64 s26, v25, v25
	v_cmp_o_f32_e64 s29, v28, v28
	v_cmp_o_f32_e64 s30, v29, v29
	v_cmp_o_f32_e64 s38, v24, v24
	v_add3_u32 v25, v25, v64, 0x7fff
	v_add3_u32 v28, v28, v67, 0x7fff
	v_add3_u32 v29, v29, v68, 0x7fff
	v_add3_u32 v22, v24, v26, 0x7fff
	v_mov_b16_e32 v24.l, v7.h
	v_mov_b16_e32 v24.h, v3.h
	v_cndmask_b16 v19.l, 0x7fff, v6.h, s17
	v_bfe_u32 v6, v17, 16, 1
	v_add3_u32 v23, v8, v23, 0x7fff
	v_cmp_o_f32_e64 s17, v8, v8
	v_and_b32_e32 v8, 1, v3
	v_bfe_u32 v66, v27, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v10.h, s19
	v_cndmask_b16 v10.l, 0x7fff, v12.h, s21
	v_cndmask_b16 v10.h, 0x7fff, v13.h, s22
	v_cndmask_b16 v12.h, 0x7fff, v25.h, s26
	v_cndmask_b16 v15.l, 0x7fff, v18.h, s37
	v_cndmask_b16 v18.h, 0x7fff, v22.h, s38
	v_cndmask_b16 v22.l, 0x7fff, v28.h, s29
	v_cndmask_b16 v22.h, 0x7fff, v29.h, s30
	v_and_b32_e32 v24, 1, v24
	v_add3_u32 v6, v17, v6, 0x7fff
	v_cmp_o_f32_e64 s18, v17, v17
	v_add3_u32 v8, v2, v8, 0x7fff
	v_cmp_o_f32_e64 s19, v2, v2
	v_cndmask_b16 v2.l, 0x7fff, v23.h, s17
	v_cmp_eq_u32_e64 s17, 0, v0
	v_cmp_o_f32_e64 s28, v27, v27
	v_add3_u32 v27, v27, v66, 0x7fff
	v_add3_u32 v17, v7, v24, 0x7fff
	v_cmp_o_f32_e64 s20, v7, v7
	v_cndmask_b16 v2.h, 0x7fff, v6.h, s18
	v_cndmask_b16 v0.h, 0x7fff, v8.h, s19
	v_cndmask_b32_e64 v6, v10, v5, s17
	v_cndmask_b32_e64 v5, v5, v10, s17
	v_cndmask_b32_e64 v7, v11, v9, s17
	v_cndmask_b32_e64 v8, v9, v11, s17
	v_cndmask_b32_e64 v9, v22, v12, s17
	v_cndmask_b32_e64 v10, v12, v22, s17
	v_mov_b32_e32 v12, 0x5410
	v_cndmask_b16 v13.h, 0x7fff, v27.h, s28
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s31
	v_cndmask_b16 v0.l, 0x7fff, v17.h, s20
	v_mov_b32_e32 v17, 0x7632
	v_cndmask_b32_e64 v12, 0x1054, v12, s17
	v_cndmask_b32_e64 v11, v2, v13, s17
	v_cndmask_b32_e64 v2, v13, v2, s17
	v_cndmask_b32_e64 v13, v15, v16, s17
	v_cndmask_b32_e64 v15, v16, v15, s17
	v_cndmask_b32_e64 v16, 0x3276, v17, s17
	v_lshl_or_b32 v12, v12, 8, v12
	v_cmp_o_f32_e64 s43, v52, v52
	v_add3_u32 v25, v52, v61, 0x7fff
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s34
	v_lshl_or_b32 v16, v16, 8, v16
	v_and_b32_e32 v12, 0x540054, v12
	s_mov_b32 s18, 0x76543210
	v_cndmask_b16 v21.l, 0x7fff, v25.h, s43
	v_cndmask_b32_e64 v17, v18, v14, s17
	v_and_b32_e32 v16, 0x760076, v16
	v_lshl_or_b32 v12, v12, 4, v12
	v_cndmask_b32_e64 v14, v14, v18, s17
	v_cndmask_b32_e64 v18, v19, v20, s17
	v_cndmask_b32_e64 v19, v20, v19, s17
	v_cndmask_b32_e64 v20, v0, v21, s17
	v_cndmask_b32_e64 v0, v21, v0, s17
	v_permlanex16_b32 v5, v5, s18, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v16, v16, 4, v16
	v_and_b32_e32 v12, 0x5040504, v12
	v_add_lshl_u32 v50, v4, v38, 1
	v_permlanex16_b32 v8, v8, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v10, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v2, v2, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v15, s18, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v16, 0x7060706, v16
	v_permlanex16_b32 v14, v14, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v19, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s18, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v21, v5, v6, v12
	v_add_lshl_u32 v51, v4, v48, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v52, v4, v47, 1
	v_cndmask_b32_e64 v50, 0x80000000, v50, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v5, v5, v6, v16
	v_perm_b32 v6, v8, v7, v12
	v_perm_b32 v7, v8, v7, v16
	v_perm_b32 v8, v10, v9, v12
	v_perm_b32 v9, v10, v9, v16
	v_perm_b32 v10, v2, v11, v12
	v_perm_b32 v2, v2, v11, v16
	v_perm_b32 v11, v15, v13, v12
	v_perm_b32 v13, v15, v13, v16
	v_perm_b32 v15, v14, v17, v12
	v_perm_b32 v14, v14, v17, v16
	v_perm_b32 v17, v19, v18, v12
	v_perm_b32 v18, v19, v18, v16
	v_perm_b32 v12, v0, v20, v12
	v_perm_b32 v0, v0, v20, v16
	v_mov_b16_e32 v16.l, v21.h
	v_mov_b16_e32 v16.h, v3.h
	v_cndmask_b32_e64 v51, 0x80000000, v51, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v21, v50, s[48:51], 0 offen
	v_add_lshl_u32 v21, v4, v46, 1
	v_cndmask_b32_e64 v50, 0x80000000, v52, s17
	buffer_store_b16 v16, v51, s[48:51], 0 offen
	v_add_lshl_u32 v16, v4, v45, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v3.l, v5.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s17
	buffer_store_b16 v5, v50, s[48:51], 0 offen
	v_add_lshl_u32 v5, v4, v44, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v19.h, v3.h
	v_cndmask_b32_e64 v16, 0x80000000, v16, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v20.l, v6.h
	v_mov_b16_e32 v20.h, v3.h
	v_mov_b16_e32 v22.h, v3.h
	v_mov_b16_e32 v23.h, v3.h
	v_mov_b16_e32 v24.h, v3.h
	v_mov_b16_e32 v25.h, v3.h
	v_mov_b16_e32 v26.h, v3.h
	v_mov_b16_e32 v27.h, v3.h
	v_mov_b16_e32 v28.h, v3.h
	v_mov_b16_e32 v29.h, v3.h
	v_mov_b16_e32 v30.h, v3.h
	v_mov_b16_e32 v31.h, v3.h
	v_mov_b16_e32 v32.h, v3.h
	v_mov_b16_e32 v49.h, v3.h
	buffer_store_b16 v3, v21, s[48:51], 0 offen
	v_add_lshl_u32 v3, v4, v43, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s17
	buffer_store_b16 v6, v16, s[48:51], 0 offen
	v_add_lshl_u32 v6, v4, v42, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v19.l, v7.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s17
	buffer_store_b16 v20, v5, s[48:51], 0 offen
	v_add_lshl_u32 v5, v4, v41, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v23.l, v8.h
	v_cndmask_b32_e64 v6, 0x80000000, v6, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v7, v3, s[48:51], 0 offen
	v_add_lshl_u32 v3, v4, v40, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s17
	buffer_store_b16 v19, v6, s[48:51], 0 offen
	v_add_lshl_u32 v6, v4, v39, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v22.l, v9.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s17
	buffer_store_b16 v8, v5, s[48:51], 0 offen
	v_add_lshl_u32 v5, v4, v37, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v25.l, v10.h
	v_cndmask_b32_e64 v6, 0x80000000, v6, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v23, v3, s[48:51], 0 offen
	v_add_lshl_u32 v3, v4, v36, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s17
	buffer_store_b16 v9, v6, s[48:51], 0 offen
	v_add_lshl_u32 v6, v4, v35, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v24.l, v2.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s17
	buffer_store_b16 v22, v5, s[48:51], 0 offen
	v_add_lshl_u32 v5, v4, v34, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v27.l, v11.h
	v_cndmask_b32_e64 v6, 0x80000000, v6, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s3
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v10, v3, s[48:51], 0 offen
	v_add_lshl_u32 v3, v4, v33, 1
	v_cndmask_b32_e64 v4, 0x80000000, v5, s17
	v_add_lshl_u32 v5, v1, v38, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, s0, s2
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v25, v6, s[48:51], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	buffer_store_b16 v2, v4, s[48:51], 0 offen
	v_add_lshl_u32 v2, v1, v48, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v26.l, v13.h
	v_cndmask_b32_e64 v4, 0x80000000, v5, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v24, v3, s[48:51], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_add_lshl_u32 v3, v1, v47, 1
	buffer_store_b16 v11, v4, s[48:51], 0 offen
	v_add_lshl_u32 v4, v1, v46, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v27, v2, s[48:51], 0 offen
	v_add_lshl_u32 v2, v1, v45, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v29.l, v15.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v13, v3, s[48:51], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_add_lshl_u32 v3, v1, v44, 1
	buffer_store_b16 v26, v4, s[48:51], 0 offen
	v_add_lshl_u32 v4, v1, v43, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v15, v2, s[48:51], 0 offen
	v_add_lshl_u32 v2, v1, v42, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v28.l, v14.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v29, v3, s[48:51], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_add_lshl_u32 v3, v1, v41, 1
	buffer_store_b16 v14, v4, s[48:51], 0 offen
	v_add_lshl_u32 v4, v1, v40, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v28, v2, s[48:51], 0 offen
	v_add_lshl_u32 v2, v1, v39, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v31.l, v17.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v17, v3, s[48:51], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_add_lshl_u32 v3, v1, v37, 1
	buffer_store_b16 v31, v4, s[48:51], 0 offen
	v_add_lshl_u32 v4, v1, v36, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v18, v2, s[48:51], 0 offen
	v_add_lshl_u32 v2, v1, v35, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v5, v1, v34, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_add_lshl_u32 v1, v1, v33, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v30.l, v18.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s3
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v49.l, v12.h
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	v_mov_b16_e32 v32.l, v0.h
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b16 v30, v3, s[48:51], 0 offen
	buffer_store_b16 v12, v4, s[48:51], 0 offen
	buffer_store_b16 v49, v2, s[48:51], 0 offen
	buffer_store_b16 v0, v5, s[48:51], 0 offen
	buffer_store_b16 v32, v1, s[48:51], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 100
		.amdhsa_next_free_sgpr 52
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.num_vgpr, 100
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.numbered_sgpr, 52
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8372
; TotalNumSgprs: 54
; NumVgprs: 100
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 12
; NumSGPRsForWavesPerEU: 54
; NumVGPRsForWavesPerEU: 100
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1
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
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     100
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
