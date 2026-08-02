	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b128 s[44:47], s[0:1], 0x20
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s8, s2
	s_clause 0x1
	s_load_b256 s[36:43], s[0:1], 0x0
	s_load_b32 s20, s[0:1], 0x38
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v47, 1, v0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v46, 2, v0
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_lshlrev_b32_e32 v42, 3, v0
	v_lshlrev_b32_e32 v44, 4, v0
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v39, 0xc0, v0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_and_b32_e32 v40, 32, v0
	v_and_b32_e32 v45, 24, v0
	v_lshlrev_b32_e32 v41, 1, v0
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_and_b32_e32 v33, 24, v42
	v_and_b32_e32 v34, 16, v44
	v_and_b32_e32 v43, 24, v47
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v38, 15, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 0x7f
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
	s_mov_b64 s[48:49], s[42:43]
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s10, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s6, s7
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
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
	v_mov_b32_e32 v1, 0
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
	.loc	1 1359 39                       ; ragged.py:1359:39
	s_mul_i32 s19, s8, s35
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s7, s10
	s_mul_i32 s12, s4, s6
	s_ashr_i32 s13, s9, 31
	s_sub_i32 s5, s5, s12
	s_add_i32 s9, s4, 1
	s_sub_i32 s12, s5, s6
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s5, s12, s5
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s4, s9, s4
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s9, s8, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s14, s4, s13
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[4:5], s[8:9], 2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s6, s14, s13
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s12, s6, s10
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s57, s6, 7
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s56, s7, s12
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v2, s57, v47
	.loc	1 1310 18                       ; ragged.py:1310:18
	s_lshl_b32 s50, s56, 6
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_add_u32 s4, s44, s4
	s_addc_u32 s5, s45, s5
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v3, s50, v46
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s12, s[4:5], 0x0
	.loc	1 1322 22                       ; ragged.py:1322:22
	s_lshl_b32 s28, s3, 5
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s1, s34, v2
	.loc	1 1357 39                       ; ragged.py:1357:39
	s_mul_i32 s44, s8, s34
	.loc	1 1350 21                       ; ragged.py:1350:21
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s0, s12, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s0, s0, 26
	s_add_i32 s0, s12, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s3, s0, 6
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s35, v3
	.loc	1 1349 39                       ; ragged.py:1349:39
	s_lshl_b32 s3, s3, 5
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cmp_ge_i32 s28, s3
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	s_mul_i32 s11, s11, s8
	v_xor_b32_e32 v3, v44, v45
	s_sub_i32 s8, s13, s11
	s_lshl_b32 s2, s2, 6
	s_sub_i32 s8, s8, s14
	v_xor_b32_e32 v10, v42, v43
	s_mul_i32 s10, s10, s8
	v_xor_b32_e32 v5, 8, v3
	s_lshl_b32 s8, s10, 6
	v_add3_u32 v2, s57, s44, v47
	s_add_i32 s8, s8, s19
	s_mov_b32 s7, 0x31027000
	v_add3_u32 v9, s8, s2, v46
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s5, s37, 0xffff
	s_mov_b32 s4, s36
	s_and_b32 s9, s39, 0xffff
	v_mad_u64_u32 v[35:36], null, s20, v9, v[33:34]
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v48, 0, v5
	v_and_b32_e32 v1, 24, v41
	v_add_nc_u32_e32 v53, 0, v10
	s_mov_b32 s8, s38
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v10, v9
	v_mad_u64_u32 v[36:37], null, v2, s20, v[34:35]
	v_lshl_or_b32 v1, v38, 5, v1
	v_dual_mov_b32 v18, v9 :: v_dual_add_nc_u32 v37, 0, v3
	v_mov_b32_e32 v19, v9
	v_mov_b32_e32 v21, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v4, v39, 3, v1
	v_lshl_or_b32 v1, v40, 4, v1
	v_mov_b32_e32 v14, v9
	v_mov_b32_e32 v15, v9
	v_mov_b32_e32 v23, v9
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
	v_dual_mov_b32 v20, v9 :: v_dual_add_nc_u32 v55, 0, v11
	v_dual_mov_b32 v17, v9 :: v_dual_add_nc_u32 v56, 0, v12
	v_dual_mov_b32 v22, v9 :: v_dual_add_nc_u32 v57, 0, v13
	v_mov_b32_e32 v11, v9
	v_mov_b32_e32 v12, v9
	v_mov_b32_e32 v13, v9
	v_mov_b32_e32 v24, v9
	v_mov_b32_e32 v1, v9
	v_mov_b32_e32 v2, v9
	v_mov_b32_e32 v3, v9
	v_mov_b32_e32 v4, v9
	v_mov_b32_e32 v5, v9
	v_mov_b32_e32 v6, v9
	v_mov_b32_e32 v7, v9
	v_mov_b32_e32 v8, v9
	v_mov_b32_e32 v25, v9
	v_mov_b32_e32 v26, v9
	v_mov_b32_e32 v27, v9
	v_mov_b32_e32 v28, v9
	v_mov_b32_e32 v29, v9
	v_mov_b32_e32 v30, v9
	v_mov_b32_e32 v31, v9
	v_mov_b32_e32 v32, v9
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1362 34                       ; ragged.py:1362:34
	v_add_nc_u32_e32 v58, s28, v36
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_add_nc_u32_e32 v59, s28, v35
	.loc	1 1374 21                       ; ragged.py:1374:21
	s_add_i32 s28, s28, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cmp_lt_i32 s28, s3
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
	v_wmma_i32_16x16x16_iu4 v[17:24], v[76:77], v[58:59], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[74:75], v[60:61], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[76:77], v[60:61], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[78:79], v[62:63], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[80:81], v[62:63], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[78:79], v[64:65], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[80:81], v[64:65], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[82:83], v[66:67], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[84:85], v[66:67], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[82:83], v[68:69], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[84:85], v[68:69], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[86:87], v[70:71], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[88:89], v[70:71], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[86:87], v[72:73], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[88:89], v[72:73], v[25:32] neg_lo:[1,1,0]
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v32, 0
	v_mov_b32_e32 v24, 0
.LBB0_4:                                ; %._crit_edge
	.loc	1 1314 27 is_stmt 1             ; ragged.py:1314:27
	s_add_i32 s2, s12, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1314 26 is_stmt 0             ; ragged.py:1314:26
	s_lshr_b32 s3, s2, 31
	s_add_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s30, s2, 1
	.loc	1 1375 20 is_stmt 1             ; ragged.py:1375:20
	s_cmp_lt_i32 s28, s30
	.loc	1 1375 17 is_stmt 0             ; ragged.py:1375:17
	s_cbranch_scc1 .LBB0_6
; %bb.5:                                ; %._crit_edge._crit_edge
	.loc	1 1404 21 is_stmt 1             ; ragged.py:1404:21
	s_add_i32 s42, s57, s44
	.loc	1 1411 21                       ; ragged.py:1411:21
	s_add_i32 s45, s50, s19
	s_cbranch_execz .LBB0_7
	s_branch .LBB0_8
.LBB0_6:
                                        ; implicit-def: $sgpr42
                                        ; implicit-def: $sgpr45
.LBB0_7:
	.loc	1 1386 33                       ; ragged.py:1386:33
	s_and_b32 s2, s12, 0x80000001
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mul_lo_u32 v47, s20, v47
	.loc	1 1386 33                       ; ragged.py:1386:33
	s_cmp_eq_u32 s2, 1
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v56, s28, v34
	.loc	1 1386 33                       ; ragged.py:1386:33
	s_cselect_b32 s43, -1, 0
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_add_i32 s42, s57, s44
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_mul_lo_u32 v46, s20, v46
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_mul_i32 s2, s42, s20
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v61, 1, v56
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_add_i32 s2, s28, s2
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_or_b32_e32 v35, 1, v33
	v_or_b32_e32 v36, 2, v33
	v_or_b32_e32 v37, 3, v33
	v_or_b32_e32 v48, 4, v33
	v_or_b32_e32 v49, 5, v33
	v_or_b32_e32 v50, 6, v33
	v_or_b32_e32 v51, 7, v33
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v52, s28, v33
	v_or_b32_e32 v62, 2, v56
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add3_u32 v34, s2, v47, v34
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_add_i32 s45, s50, s19
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v63, 3, v56
	v_or_b32_e32 v65, 5, v56
	.loc	1 1386 63                       ; ragged.py:1386:63
	s_add_i32 s51, s30, -1
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s21, s30, v61
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s52, s45, s20
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v64, 4, v56
	v_or_b32_e32 v66, 6, v56
	v_or_b32_e32 v53, s28, v35
	v_or_b32_e32 v54, s28, v36
	v_or_b32_e32 v55, s28, v37
	v_or_b32_e32 v57, s28, v48
	v_or_b32_e32 v58, s28, v49
	v_or_b32_e32 v59, s28, v50
	v_or_b32_e32 v60, s28, v51
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s22, s30, v62
	v_cmp_gt_i32_e64 s10, s30, v52
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v46, s28, s52, v46
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s28, s51, v52
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add_nc_u32_e32 v52, 1, v34
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s23, s30, v63
	v_cmp_gt_i32_e64 s27, s30, v65
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s19, s51, v65
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add_nc_u32_e32 v65, 2, v34
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s21, s1, s21
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s24, s30, v64
	v_cmp_gt_i32_e64 s26, s30, v66
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s20, s51, v66
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add_nc_u32_e32 v66, 3, v34
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v67, 7, v56
	v_or_b32_e32 v68, 8, v56
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s29, s30, v56
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v52, 0x80000000, v52, s21
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s21, s1, s22
	.loc	1 1376 26 is_stmt 1             ; ragged.py:1376:26
	v_or_b32_e32 v47, 9, v56
	v_or_b32_e32 v69, 10, v56
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e32 vcc_lo, s51, v61
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v61, 11, v56
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s2, s51, v62
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v62, 12, v56
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s3, s51, v63
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v63, 13, v56
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s4, s51, v64
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v64, 14, v56
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s5, s51, v56
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v56, 15, v56
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add_nc_u32_e32 v70, 4, v34
	.loc	1 1387 34 is_stmt 0             ; ragged.py:1387:34
	v_cndmask_b32_e64 v65, 0x80000000, v65, s21
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s21, s1, s23
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	v_add_nc_u32_e32 v33, v46, v33
	v_add_nc_u32_e32 v35, v46, v35
	v_add_nc_u32_e32 v36, v46, v36
	v_add_nc_u32_e32 v37, v46, v37
	v_add_nc_u32_e32 v48, v46, v48
	v_add_nc_u32_e32 v49, v46, v49
	v_add_nc_u32_e32 v50, v46, v50
	v_add_nc_u32_e32 v46, v46, v51
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add_nc_u32_e32 v51, 5, v34
	.loc	1 1387 34 is_stmt 0             ; ragged.py:1387:34
	v_cndmask_b32_e64 v66, 0x80000000, v66, s21
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s21, s1, s24
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s25, s30, v67
	v_cmp_gt_i32_e64 s18, s30, v68
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_xor_b32_e32 v44, v44, v45
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add_nc_u32_e32 v45, 6, v34
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s29, s1, s29
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s17, s30, v47
	v_cmp_gt_i32_e64 s16, s30, v69
	v_cmp_gt_i32_e64 s15, s30, v61
	v_cmp_gt_i32_e64 s14, s30, v62
	v_cmp_gt_i32_e64 s13, s30, v63
	v_cmp_gt_i32_e64 s12, s30, v64
	v_cmp_gt_i32_e64 s11, s30, v56
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v70, 0x80000000, v70, s21
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s21, s1, s27
	.loc	1 1390 34 is_stmt 1             ; ragged.py:1390:34
	v_xad_u32 v71, v42, v43, 0
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add_nc_u32_e32 v42, 7, v34
	v_add_nc_u32_e32 v43, 8, v34
	v_add_nc_u32_e32 v72, 9, v34
	v_add_nc_u32_e32 v73, 10, v34
	v_add_nc_u32_e32 v74, 11, v34
	v_add_nc_u32_e32 v75, 12, v34
	v_add_nc_u32_e32 v76, 13, v34
	v_add_nc_u32_e32 v77, 14, v34
	v_add_nc_u32_e32 v78, 15, v34
	.loc	1 1387 34 is_stmt 0             ; ragged.py:1387:34
	v_cndmask_b32_e64 v34, 0x80000000, v34, s29
	v_cndmask_b32_e64 v51, 0x80000000, v51, s21
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s21, s1, s26
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s9, s30, v53
	.loc	1 1387 34                       ; ragged.py:1387:34
	s_and_b32 s53, s37, 0xffff
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	s_mov_b32 s52, s36
	v_cndmask_b32_e64 v45, 0x80000000, v45, s21
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s21, s1, s25
	s_and_b32 s18, s1, s18
	s_and_b32 s17, s1, s17
	s_and_b32 s16, s1, s16
	s_and_b32 s15, s1, s15
	s_and_b32 s14, s1, s14
	s_and_b32 s13, s1, s13
	s_and_b32 s12, s1, s12
	s_and_b32 s1, s1, s11
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s8, s30, v54
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v42, 0x80000000, v42, s21
	s_clause 0x7
	buffer_load_u8 v79, v34, s[52:55], 0 offen
	buffer_load_u8 v52, v52, s[52:55], 0 offen
	buffer_load_u8 v65, v65, s[52:55], 0 offen
	buffer_load_u8 v66, v66, s[52:55], 0 offen
	buffer_load_u8 v70, v70, s[52:55], 0 offen
	buffer_load_u8 v51, v51, s[52:55], 0 offen
	buffer_load_u8 v45, v45, s[52:55], 0 offen
	buffer_load_u8 v80, v42, s[52:55], 0 offen
	v_cndmask_b32_e64 v34, 0x80000000, v43, s18
	v_cndmask_b32_e64 v42, 0x80000000, v72, s17
	v_cndmask_b32_e64 v72, 0x80000000, v74, s15
	v_cndmask_b32_e64 v74, 0x80000000, v76, s13
	v_cndmask_b32_e64 v76, 0x80000000, v78, s1
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s1, s0, s10
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s7, s30, v55
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v43, 0x80000000, v73, s16
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s1, s0, s9
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s6, s30, v57
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v73, 0x80000000, v75, s14
	v_cndmask_b32_e64 v75, 0x80000000, v77, s12
	s_clause 0x7
	buffer_load_u8 v77, v34, s[52:55], 0 offen
	buffer_load_u8 v78, v42, s[52:55], 0 offen
	buffer_load_u8 v81, v43, s[52:55], 0 offen
	buffer_load_u8 v72, v72, s[52:55], 0 offen
	buffer_load_u8 v73, v73, s[52:55], 0 offen
	buffer_load_u8 v74, v74, s[52:55], 0 offen
	buffer_load_u8 v75, v75, s[52:55], 0 offen
	buffer_load_u8 v76, v76, s[52:55], 0 offen
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v34, 0x80000000, v35, s1
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s1, s0, s8
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s33, s30, v58
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v35, 0x80000000, v36, s1
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s1, s0, s7
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s31, s30, v59
	v_cmp_gt_i32_e64 s30, s30, v60
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v36, 0x80000000, v37, s1
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s1, s0, s6
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_and_b32 s53, s39, 0xffff
	s_mov_b32 s52, s38
	v_cndmask_b32_e64 v37, 0x80000000, v48, s1
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s1, s0, s33
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_clause 0x4
	buffer_load_u8 v48, v33, s[52:55], 0 offen
	buffer_load_u8 v82, v34, s[52:55], 0 offen
	buffer_load_u8 v83, v35, s[52:55], 0 offen
	buffer_load_u8 v84, v36, s[52:55], 0 offen
	buffer_load_u8 v85, v37, s[52:55], 0 offen
	v_cndmask_b32_e64 v33, 0x80000000, v49, s1
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s1, s0, s31
	s_and_b32 s0, s0, s30
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v34, 0x80000000, v50, s1
	v_cndmask_b32_e64 v35, 0x80000000, v46, s0
	s_clause 0x2
	buffer_load_u8 v49, v33, s[52:55], 0 offen
	buffer_load_u8 v50, v34, s[52:55], 0 offen
	buffer_load_u8 v86, v35, s[52:55], 0 offen
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_and_b32_e32 v33, 24, v41
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s0, s51, v67
	v_cmp_eq_u32_e64 s13, s51, v53
	v_cmp_eq_u32_e64 s15, s51, v55
	v_cmp_eq_u32_e64 s17, s51, v58
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_lshl_or_b32 v33, v38, 5, v33
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s21, s51, v60
	v_cmp_eq_u32_e64 s6, s51, v47
	v_cmp_eq_u32_e64 s8, s51, v61
	v_cmp_eq_u32_e64 s10, s51, v63
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_lshl_or_b32 v34, v39, 3, v33
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s12, s51, v56
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_add_nc_u32_e32 v67, 0, v44
	v_xad_u32 v87, v44, 8, 0
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s16, s51, v57
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_lshl_or_b32 v61, v40, 4, v33
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_add_nc_u32_e32 v55, 0, v34
	v_xad_u32 v56, v34, 8, 0
	v_xad_u32 v57, v34, 16, 0
	v_xad_u32 v58, v34, 24, 0
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s14, s51, v54
	v_cmp_eq_u32_e64 s18, s51, v59
	.loc	1 1386 32 is_stmt 0             ; ragged.py:1386:32
	s_and_b32 s23, s43, vcc_lo
	s_and_b32 s3, s43, s3
	s_and_b32 s19, s43, s19
	s_and_b32 s20, s43, s20
	s_and_b32 s0, s43, s0
	s_and_b32 s13, s43, s13
	s_and_b32 s15, s43, s15
	s_and_b32 s17, s43, s17
	s_and_b32 s21, s43, s21
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s1, s51, v68
	v_cmp_eq_u32_e64 s7, s51, v69
	v_cmp_eq_u32_e64 s9, s51, v62
	v_cmp_eq_u32_e64 s11, s51, v64
	.loc	1 1386 32                       ; ragged.py:1386:32
	s_and_b32 s6, s43, s6
	s_and_b32 s8, s43, s8
	s_and_b32 s10, s43, s10
	s_and_b32 s12, s43, s12
	s_and_b32 s5, s43, s5
	s_and_b32 s22, s43, s28
	s_and_b32 s2, s43, s2
	s_and_b32 s4, s43, s4
	s_and_b32 s14, s43, s14
	s_and_b32 s16, s43, s16
	s_and_b32 s18, s43, s18
	s_and_b32 s1, s43, s1
	s_and_b32 s7, s43, s7
	s_and_b32 s9, s43, s9
	s_and_b32 s11, s43, s11
	.loc	1 1390 34 is_stmt 1             ; ragged.py:1390:34
	v_add_nc_u32_e32 v59, 0, v61
	v_xad_u32 v60, v61, 8, 0
	.loc	1 1389 34                       ; ragged.py:1389:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1389 62 is_stmt 0             ; ragged.py:1389:62
	s_waitcnt vmcnt(23)
	v_and_b16 v33.l, v79.l, 15
	s_waitcnt vmcnt(22)
	v_and_b16 v33.h, v52.l, 15
	s_waitcnt vmcnt(21)
	v_and_b16 v34.l, v65.l, 15
	s_waitcnt vmcnt(20)
	v_and_b16 v34.h, v66.l, 15
	s_waitcnt vmcnt(19)
	v_and_b16 v35.l, v70.l, 15
	s_waitcnt vmcnt(18)
	v_and_b16 v35.h, v51.l, 15
	s_waitcnt vmcnt(17)
	v_and_b16 v36.l, v45.l, 15
	s_waitcnt vmcnt(16)
	v_and_b16 v36.h, v80.l, 15
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_cndmask_b16 v33.h, v52.l, v33.h, s23
	v_cndmask_b16 v34.h, v66.l, v34.h, s3
	v_cndmask_b16 v35.h, v51.l, v35.h, s19
	v_cndmask_b16 v36.l, v45.l, v36.l, s20
	v_cndmask_b16 v36.h, v80.l, v36.h, s0
	v_cndmask_b16 v33.l, v79.l, v33.l, s5
	.loc	1 1389 62                       ; ragged.py:1389:62
	s_waitcnt vmcnt(15)
	v_and_b16 v37.l, v77.l, 15
	s_waitcnt vmcnt(14)
	v_and_b16 v37.h, v78.l, 15
	s_waitcnt vmcnt(13)
	v_and_b16 v41.l, v81.l, 15
	s_waitcnt vmcnt(12)
	v_and_b16 v41.h, v72.l, 15
	s_waitcnt vmcnt(11)
	v_and_b16 v42.l, v73.l, 15
	s_waitcnt vmcnt(10)
	v_and_b16 v42.h, v74.l, 15
	s_waitcnt vmcnt(9)
	v_and_b16 v43.l, v75.l, 15
	s_waitcnt vmcnt(8)
	v_and_b16 v43.h, v76.l, 15
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_cndmask_b16 v37.h, v78.l, v37.h, s6
	v_cndmask_b16 v41.h, v72.l, v41.h, s8
	v_cndmask_b16 v42.h, v74.l, v42.h, s10
	v_cndmask_b16 v34.l, v65.l, v34.l, s2
	v_cndmask_b16 v43.h, v76.l, v43.h, s12
	v_cndmask_b16 v35.l, v70.l, v35.l, s4
	v_lshlrev_b16 v36.h, 8, v36.h
	v_lshlrev_b16 v35.h, 8, v35.h
	v_lshlrev_b16 v34.h, 8, v34.h
	.loc	1 1390 62 is_stmt 1             ; ragged.py:1390:62
	s_waitcnt vmcnt(7)
	v_and_b16 v44.l, v48.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v44.h, v82.l, 15
	s_waitcnt vmcnt(5)
	v_and_b16 v45.l, v83.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v45.h, v84.l, 15
	s_waitcnt vmcnt(3)
	v_and_b16 v46.l, v85.l, 15
	.loc	1 1390 34 is_stmt 0             ; ragged.py:1390:34
	v_cndmask_b16 v44.l, v48.l, v44.l, s22
	v_cndmask_b16 v44.h, v82.l, v44.h, s13
	v_cndmask_b16 v45.l, v83.l, v45.l, s14
	v_cndmask_b16 v45.h, v84.l, v45.h, s15
	v_cndmask_b16 v46.l, v85.l, v46.l, s16
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(2)
	v_and_b16 v46.h, v49.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v47.l, v50.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v47.h, v86.l, 15
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_lshlrev_b16 v33.h, 8, v33.h
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_lshlrev_b16 v45.h, 8, v45.h
	v_cndmask_b16 v46.h, v49.l, v46.h, s17
	v_cndmask_b16 v47.l, v50.l, v47.l, s18
	v_cndmask_b16 v47.h, v86.l, v47.h, s21
	v_lshlrev_b16 v44.h, 8, v44.h
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_cndmask_b16 v37.l, v77.l, v37.l, s1
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_lshlrev_b16 v46.h, 8, v46.h
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_cndmask_b16 v41.l, v81.l, v41.l, s7
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_lshlrev_b16 v47.h, 8, v47.h
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_cndmask_b16 v42.l, v73.l, v42.l, s9
	v_cndmask_b16 v43.l, v75.l, v43.l, s11
	v_lshlrev_b16 v43.h, 8, v43.h
	v_lshlrev_b16 v42.h, 8, v42.h
	v_lshlrev_b16 v41.h, 8, v41.h
	v_lshlrev_b16 v37.h, 8, v37.h
	v_or_b16 v36.h, v36.l, v36.h
	v_or_b16 v36.l, v35.l, v35.h
	v_or_b16 v35.h, v34.l, v34.h
	v_or_b16 v35.l, v33.l, v33.h
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_or_b16 v54.h, v47.l, v47.h
	v_or_b16 v54.l, v46.l, v46.h
	v_or_b16 v53.h, v45.l, v45.h
	v_or_b16 v53.l, v44.l, v44.h
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_or_b16 v34.h, v43.l, v43.h
	v_or_b16 v34.l, v42.l, v42.h
	v_or_b16 v33.h, v41.l, v41.h
	v_or_b16 v33.l, v37.l, v37.h
	ds_store_b64 v67, v[35:36]
	ds_store_b64 v87, v[33:34]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[33:36], v55 offset1:4
	ds_load_2addr_stride64_b64 v[41:44], v56 offset1:4
	ds_load_2addr_stride64_b64 v[45:48], v57 offset1:4
	ds_load_2addr_stride64_b64 v[49:52], v58 offset1:4
	.loc	1 1390 34                       ; ragged.py:1390:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v71, v[53:54]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[53:56], v59 offset1:2
	ds_load_2addr_stride64_b64 v[57:60], v60 offset1:2
	v_xad_u32 v37, v61, 16, 0
	v_xad_u32 v65, v61, 24, 0
	ds_load_2addr_stride64_b64 v[61:64], v37 offset1:2
	ds_load_2addr_stride64_b64 v[65:68], v65 offset1:2
	.loc	1 1391 31                       ; ragged.py:1391:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[53:54], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[53:54], v[35:36], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[55:56], v[33:34], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[55:56], v[35:36], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[57:58], v[41:42], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[57:58], v[43:44], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[59:60], v[41:42], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[59:60], v[43:44], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[61:62], v[45:46], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[61:62], v[47:48], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[63:64], v[45:46], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[63:64], v[47:48], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[49:50], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[65:66], v[51:52], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[67:68], v[49:50], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[67:68], v[51:52], v[25:32] neg_lo:[1,1,0]
.LBB0_8:
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v33, 2, v39
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v34, 4, v0
	v_lshrrev_b32_e32 v35, 1, v40
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_and_b32 s41, s41, 0xffff
	s_mov_b32 s43, 0x31027000
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v33, v33, v38
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_and_b32 s49, s49, 0xffff
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_and_or_b32 v34, v34, 1, v35
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_mov_b32 s51, s43
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v2, v2
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v35, 64, v33
	.loc	1 1309 18 is_stmt 0             ; ragged.py:1309:18
	v_or_b32_e32 v36, s57, v33
	.loc	1 1403 36 is_stmt 1             ; ragged.py:1403:36
	v_add_lshl_u32 v33, s42, v33, 1
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v37, 2, v34
	v_or_b32_e32 v44, 10, v34
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v48, s57, v35
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v36
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v56, s50, v34
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_lshl_u32 v70, s42, v35, 1
	s_mov_b32 s42, 0x7ffffffe
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v48
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e64 v33, 0x80000000, v33, s0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v41, 4, v34
	v_or_b32_e32 v42, 6, v34
	v_or_b32_e32 v43, 8, v34
	v_or_b32_e32 v45, 12, v34
	v_or_b32_e32 v46, 14, v34
	v_or_b32_e32 v47, 32, v34
	v_or_b32_e32 v49, 34, v34
	v_or_b32_e32 v50, 36, v34
	v_or_b32_e32 v51, 38, v34
	v_or_b32_e32 v52, 40, v34
	v_or_b32_e32 v53, 42, v34
	v_or_b32_e32 v54, 44, v34
	v_or_b32_e32 v55, 46, v34
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v57, s50, v37
	v_or_b32_e32 v61, s50, v44
	.loc	1 1403 36 is_stmt 1             ; ragged.py:1403:36
	buffer_load_u16 v35, v33, s[40:43], 0 offen
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v34, s45, v34, 1
	v_add_lshl_u32 v44, s45, v44, 1
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e32 v33, 0x80000000, v70, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v56
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v58, s50, v41
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v37, s45, v37, 1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v59, s50, v42
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v41, s45, v41, 1
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v57
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v60, s50, v43
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v42, s45, v42, 1
	v_add_lshl_u32 v43, s45, v43, 1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v62, s50, v45
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v58
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v63, s50, v46
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v46, s45, v46, 1
	v_add_lshl_u32 v45, s45, v45, 1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v64, s50, v47
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v59
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v65, s50, v49
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v47, s45, v47, 1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v66, s50, v50
	v_or_b32_e32 v67, s50, v51
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v60
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v68, s50, v52
	v_or_b32_e32 v69, s50, v53
	v_or_b32_e32 v48, s50, v54
	v_or_b32_e32 v36, s50, v55
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v61
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_mov_b32 s50, s42
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v10, v10
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v62
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v11, v11
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshl_or_b32 v39, v39, 1, v40
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v57, v1
	v_cvt_f32_i32_e32 v13, v13
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v63
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v64
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_clause 0x7
	buffer_load_u16 v56, v34, s[48:51], 0 offen
	buffer_load_u16 v37, v37, s[48:51], 0 offen
	buffer_load_u16 v41, v41, s[48:51], 0 offen
	buffer_load_u16 v42, v42, s[48:51], 0 offen
	buffer_load_u16 v43, v43, s[48:51], 0 offen
	buffer_load_u16 v44, v44, s[48:51], 0 offen
	buffer_load_u16 v45, v45, s[48:51], 0 offen
	buffer_load_u16 v46, v46, s[48:51], 0 offen
	v_add_lshl_u32 v34, s45, v49, 1
	v_add_lshl_u32 v49, s45, v50, 1
	v_add_lshl_u32 v50, s45, v51, 1
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v65
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v51, s45, v52, 1
	v_add_lshl_u32 v52, s45, v53, 1
	v_add_lshl_u32 v53, s45, v54, 1
	v_add_lshl_u32 v54, s45, v55, 1
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v66
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v19, v19
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v67
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v68
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v3, v3
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v51, 0x80000000, v51, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v69
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v31, v31
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v52, 0x80000000, v52, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v48
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v1.h, 0
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v5, v5
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v48, 0x80000000, v53, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v36
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v59.h, v1.h
	v_mov_b16_e32 v58.h, v1.h
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v28, v28
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v36, 0x80000000, v54, vcc_lo
	s_clause 0x7
	buffer_load_u16 v47, v47, s[48:51], 0 offen
	buffer_load_u16 v53, v34, s[48:51], 0 offen
	buffer_load_u16 v49, v49, s[48:51], 0 offen
	buffer_load_u16 v50, v50, s[48:51], 0 offen
	buffer_load_u16 v51, v51, s[48:51], 0 offen
	buffer_load_u16 v52, v52, s[48:51], 0 offen
	buffer_load_u16 v48, v48, s[48:51], 0 offen
	buffer_load_u16 v36, v36, s[48:51], 0 offen
	.loc	1 1403 36                       ; ragged.py:1403:36
	buffer_load_u16 v54, v33, s[40:43], 0 offen
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_and_b32_e32 v33, 31, v0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v60.h, v1.h
	v_mov_b16_e32 v61.h, v1.h
	v_mov_b16_e32 v62.h, v1.h
	v_mov_b16_e32 v64.h, v1.h
	v_mov_b16_e32 v67.h, v1.h
	v_mov_b16_e32 v63.h, v1.h
	v_mov_b16_e32 v66.h, v1.h
	v_mov_b16_e32 v68.h, v1.h
	v_mov_b16_e32 v69.h, v1.h
	.loc	1 1534 34                       ; ragged.py:1534:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v70.h, v1.h
	v_mov_b16_e32 v72.h, v1.h
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_bfe_i32 v34, v0, 4, 1
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v54, 16, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v2, v2, v54 :: v_dual_lshlrev_b32 v35, 16, v35
	v_dual_mul_f32 v12, v12, v35 :: v_dual_lshlrev_b32 v65, 2, v33
	v_dual_mul_f32 v10, v10, v35 :: v_dual_and_b32 v55, 0xe0, v0
	v_dual_mul_f32 v9, v9, v35 :: v_dual_lshlrev_b32 v40, 2, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshl_or_b32 v38, v38, 9, v65
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v11, v11, v35 :: v_dual_lshlrev_b32 v56, 16, v56
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshrrev_b32_e32 v71, 3, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v40, v55, 4, v40
	v_xor_b32_e32 v38, v38, v39
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v16, v16, v35 :: v_dual_lshlrev_b32 v37, 16, v37
	v_dual_mul_f32 v18, v18, v35 :: v_dual_lshlrev_b32 v41, 16, v41
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v9, v9, v56
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xor_b32_e32 v40, v40, v71
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v14, v14, v35 :: v_dual_add_nc_u32 v71, 0, v38
	v_dual_mul_f32 v13, v13, v35 :: v_dual_lshlrev_b32 v42, 16, v42
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v10, v10, v37 :: v_dual_lshlrev_b32 v43, 16, v43
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v15, v15, v35 :: v_dual_lshlrev_b32 v44, 16, v44
	v_dual_mul_f32 v20, v20, v35 :: v_dual_lshlrev_b32 v45, 16, v45
	v_dual_mul_f32 v17, v17, v35 :: v_dual_lshlrev_b32 v46, 16, v46
	v_dual_mul_f32 v4, v4, v54 :: v_dual_lshlrev_b32 v47, 16, v47
	v_dual_mul_f32 v22, v22, v35 :: v_dual_lshlrev_b32 v53, 16, v53
	v_dual_mul_f32 v24, v24, v35 :: v_dual_lshlrev_b32 v49, 16, v49
	v_dual_mul_f32 v19, v19, v35 :: v_dual_lshlrev_b32 v50, 16, v50
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v12, v12, v42 :: v_dual_lshlrev_b32 v51, 16, v51
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v21, v21, v35 :: v_dual_lshlrev_b32 v52, 16, v52
	v_dual_mul_f32 v23, v23, v35 :: v_dual_lshlrev_b32 v48, 16, v48
	v_dual_mul_f32 v35, v57, v54 :: v_dual_lshlrev_b32 v36, 16, v36
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v11, v11, v41 :: v_dual_mul_f32 v6, v6, v54
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v27, v27, v54 :: v_dual_mul_f32 v2, v2, v37
	v_mul_f32_e32 v29, v29, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v32, v32, v54 :: v_dual_mul_f32 v35, v35, v56
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v1.l, v9.h
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v3, v3, v54 :: v_dual_mul_f32 v14, v14, v44
	v_dual_mul_f32 v25, v25, v54 :: v_dual_mul_f32 v24, v24, v36
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v17, v17, v47 :: v_dual_mul_f32 v26, v26, v54
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v31, v31, v54 :: v_dual_mul_f32 v6, v6, v44
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v27, v27, v49 :: v_dual_mul_f32 v32, v32, v36
	v_dual_mul_f32 v29, v29, v51 :: v_dual_and_b32 v36, 1, v1
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v1.l, v10.h
	v_mov_b16_e32 v59.l, v2.h
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v3, v3, v41 :: v_dual_mul_f32 v4, v4, v42
	v_dual_mul_f32 v26, v26, v53 :: v_dual_mul_f32 v31, v31, v48
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v58.l, v35.h
	v_add3_u32 v9, v9, v36, 0x7fff
	v_and_b32_e32 v36, 1, v59
	v_and_b32_e32 v41, 1, v1
	v_mov_b16_e32 v1.l, v11.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v13, v13, v43 :: v_dual_mul_f32 v8, v8, v54
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s16, v2, v2
	v_and_b32_e32 v37, 1, v58
	v_add3_u32 v2, v2, v36, 0x7fff
	v_and_b32_e32 v36, 1, v1
	v_mov_b16_e32 v1.l, v12.h
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v30, v30, v54 :: v_dual_mul_f32 v23, v23, v48
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s15, v35, v35
	v_add3_u32 v35, v35, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v37, 1, v1
	v_mov_b16_e32 v1.l, v13.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v15, v15, v45 :: v_dual_mul_f32 v16, v16, v46
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s0, v10, v10
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v25, v25, v47 :: v_dual_mul_f32 v30, v30, v52
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v9.l, 0x7fff, v9.h, vcc_lo
	v_add3_u32 v10, v10, v41, 0x7fff
	v_cndmask_b16 v9.h, 0x7fff, v35.h, s15
	v_and_b32_e32 v35, 1, v1
	v_mov_b16_e32 v1.l, v14.h
	v_mov_b16_e32 v39.h, v1.h
	v_cmp_o_f32_e64 s1, v11, v11
	v_mov_b16_e32 v39.l, v30.h
	v_cndmask_b16 v2.l, 0x7fff, v10.h, s0
	v_add3_u32 v10, v11, v36, 0x7fff
	v_and_b32_e32 v11, 1, v1
	v_mov_b16_e32 v1.l, v15.h
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v5, v5, v54 :: v_dual_mul_f32 v18, v18, v53
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_and_b32_e32 v39, 1, v39
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v7, v7, v54 :: v_dual_mul_f32 v22, v22, v52
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_and_b32_e32 v36, 1, v1
	v_mov_b16_e32 v1.l, v16.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v5, v5, v43 :: v_dual_mul_f32 v8, v8, v46
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v60.l, v3.h
	v_cmp_o_f32_e64 s28, v30, v30
	v_add3_u32 v30, v30, v39, 0x7fff
	v_and_b32_e32 v39, 1, v1
	v_mov_b16_e32 v1.l, v17.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v19, v19, v49 :: v_dual_mul_f32 v28, v28, v54
	v_mul_f32_e32 v7, v7, v45
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v61.l, v4.h
	v_mov_b16_e32 v62.l, v5.h
	v_and_b32_e32 v42, 1, v60
	v_and_b32_e32 v41, 1, v1
	v_mov_b16_e32 v1.l, v18.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v28, v28, v50
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s17, v3, v3
	v_mov_b16_e32 v64.l, v7.h
	v_and_b32_e32 v43, 1, v61
	v_and_b32_e32 v44, 1, v62
	v_add3_u32 v3, v3, v42, 0x7fff
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v20, v20, v50 :: v_dual_mul_f32 v21, v21, v51
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s2, v12, v12
	v_cmp_o_f32_e64 s3, v13, v13
	v_add3_u32 v12, v12, v37, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v10.h, s1
	v_add3_u32 v10, v13, v35, 0x7fff
	v_and_b32_e32 v13, 1, v1
	v_mov_b16_e32 v1.l, v19.h
	v_mov_b16_e32 v67.l, v25.h
	v_cmp_o_f32_e64 s18, v4, v4
	v_cmp_o_f32_e64 s19, v5, v5
	v_mov_b16_e32 v63.l, v6.h
	v_and_b32_e32 v46, 1, v64
	v_add3_u32 v4, v4, v43, 0x7fff
	v_add3_u32 v5, v5, v44, 0x7fff
	v_cmp_o_f32_e64 s5, v15, v15
	v_cndmask_b16 v4.l, 0x7fff, v12.h, s2
	v_cndmask_b16 v5.l, 0x7fff, v10.h, s3
	v_add3_u32 v10, v15, v36, 0x7fff
	v_and_b32_e32 v12, 1, v1
	v_mov_b16_e32 v1.l, v20.h
	v_and_b32_e32 v48, 1, v67
	v_cmp_o_f32_e64 s21, v7, v7
	v_mov_b16_e32 v66.l, v8.h
	v_and_b32_e32 v45, 1, v63
	v_add3_u32 v7, v7, v46, 0x7fff
	v_cmp_o_f32_e64 s4, v14, v14
	v_cmp_o_f32_e64 s7, v17, v17
	v_add3_u32 v11, v14, v11, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v10.h, s5
	v_add3_u32 v10, v17, v41, 0x7fff
	v_and_b32_e32 v14, 1, v1
	v_mov_b16_e32 v1.l, v21.h
	v_cmp_o_f32_e64 s23, v25, v25
	v_add3_u32 v25, v25, v48, 0x7fff
	v_mov_b16_e32 v68.l, v26.h
	v_cmp_o_f32_e64 s20, v6, v6
	v_and_b32_e32 v47, 1, v66
	v_add3_u32 v6, v6, v45, 0x7fff
	v_cmp_o_f32_e64 s6, v16, v16
	v_cndmask_b16 v6.l, 0x7fff, v11.h, s4
	v_add3_u32 v11, v16, v39, 0x7fff
	v_cndmask_b16 v25.l, 0x7fff, v10.h, s7
	v_add3_u32 v10, v19, v12, 0x7fff
	v_and_b32_e32 v12, 1, v1
	v_mov_b16_e32 v1.l, v22.h
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v80, 0x2040, v38, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s23
	v_mov_b16_e32 v69.l, v27.h
	v_and_b32_e32 v49, 1, v68
	v_cmp_o_f32_e64 s22, v8, v8
	v_add3_u32 v8, v8, v47, 0x7fff
	v_cmp_o_f32_e64 s8, v18, v18
	v_cndmask_b16 v8.l, 0x7fff, v11.h, s6
	v_add3_u32 v11, v18, v13, 0x7fff
	.loc	1 1534 34                       ; ragged.py:1534:34
	ds_store_b32 v71, v9
	ds_store_b32 v80, v25
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_and_b32_e32 v9, 1, v1
	v_mov_b16_e32 v1.l, v23.h
	v_cmp_o_f32_e64 s24, v26, v26
	v_and_b32_e32 v50, 1, v69
	v_add3_u32 v26, v26, v49, 0x7fff
	v_cndmask_b16 v26.l, 0x7fff, v11.h, s8
	v_and_b32_e32 v11, 1, v1
	v_mov_b16_e32 v1.l, v24.h
	v_mov_b16_e32 v70.l, v29.h
	v_mov_b16_e32 v65.h, v1.h
	v_mov_b16_e32 v55.h, v1.h
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v73, v38, 4, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v65.l, v28.h
	v_mov_b16_e32 v55.l, v31.h
	v_mov_b16_e32 v72.l, v32.h
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s16
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v81, 0x2044, v38, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s9, v19, v19
	v_cmp_o_f32_e64 s25, v27, v27
	v_add3_u32 v27, v27, v50, 0x7fff
	v_cndmask_b16 v26.h, 0x7fff, v26.h, s24
	v_and_b32_e32 v1, 1, v1
	v_and_b32_e32 v52, 1, v70
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v74, v38, 8, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s11, v21, v21
	v_and_b32_e32 v51, 1, v65
	v_and_b32_e32 v53, 1, v55
	v_and_b32_e32 v54, 1, v72
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s17
	.loc	1 1534 34                       ; ragged.py:1534:34
	ds_store_b32 v73, v2
	ds_store_b32 v81, v26
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v2, v21, v12, 0x7fff
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v82, 0x2048, v38, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v27.h, 0x7fff, v27.h, s25
	v_cndmask_b16 v27.l, 0x7fff, v10.h, s9
	v_cmp_o_f32_e64 s14, v24, v24
	v_add3_u32 v1, v24, v1, 0x7fff
	v_cmp_o_f32_e64 s27, v29, v29
	v_add3_u32 v29, v29, v52, 0x7fff
	v_cmp_o_f32_e64 s10, v20, v20
	v_cmp_o_f32_e64 s12, v22, v22
	v_cmp_o_f32_e64 s13, v23, v23
	v_cmp_o_f32_e64 s26, v28, v28
	v_cmp_o_f32_e64 s29, v31, v31
	v_cmp_o_f32_e64 s30, v32, v32
	v_add3_u32 v28, v28, v51, 0x7fff
	v_add3_u32 v31, v31, v53, 0x7fff
	v_add3_u32 v32, v32, v54, 0x7fff
	v_add3_u32 v10, v20, v14, 0x7fff
	.loc	1 1534 34                       ; ragged.py:1534:34
	ds_store_b32 v74, v3
	ds_store_b32 v82, v27
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v29.l, 0x7fff, v2.h, s11
	v_add3_u32 v2, v22, v9, 0x7fff
	v_add3_u32 v3, v23, v11, 0x7fff
	v_cndmask_b16 v32.l, 0x7fff, v1.h, s14
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_and_or_b32 v1, 0x2040, v34, v40
	v_xad_u32 v75, v38, 12, 0
	v_xad_u32 v76, v38, 16, 0
	v_xad_u32 v77, v38, 20, 0
	v_xad_u32 v78, v38, 24, 0
	v_xad_u32 v79, v38, 28, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s18
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s19
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s20
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s21
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s22
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v83, 0x204c, v38, 0
	v_xad_u32 v84, 0x2050, v38, 0
	v_xad_u32 v85, 0x2054, v38, 0
	v_xad_u32 v86, 0x2058, v38, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v28.h, 0x7fff, v28.h, s26
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s27
	v_cndmask_b16 v30.h, 0x7fff, v30.h, s28
	v_cndmask_b16 v31.h, 0x7fff, v31.h, s29
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s30
	v_cndmask_b16 v28.l, 0x7fff, v10.h, s10
	v_cndmask_b16 v30.l, 0x7fff, v2.h, s12
	v_cndmask_b16 v31.l, 0x7fff, v3.h, s13
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v2, 0x205c, v38, 0
	v_add_nc_u32_e32 v3, 0, v1
	ds_store_b32 v75, v4
	ds_store_b32 v83, v28
	ds_store_b32 v76, v5
	ds_store_b32 v84, v29
	ds_store_b32 v77, v6
	ds_store_b32 v85, v30
	ds_store_b32 v78, v7
	ds_store_b32 v86, v31
	ds_store_b32 v79, v8
	ds_store_b32 v2, v32
	v_xad_u32 v2, v1, 64, 0
	v_xad_u32 v4, 0x1020, v1, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[13:14], v3 offset1:32
	ds_load_2addr_b32 v[5:6], v3 offset0:64 offset1:96
	v_xad_u32 v3, 0x1060, v1, 0
	ds_load_2addr_b32 v[15:16], v2 offset1:32
	ds_load_2addr_b32 v[7:8], v2 offset0:64 offset1:96
	ds_load_2addr_b32 v[9:10], v4 offset1:32
	ds_load_2addr_b32 v[1:2], v4 offset0:64 offset1:96
	ds_load_2addr_b32 v[11:12], v3 offset1:32
	ds_load_2addr_b32 v[3:4], v3 offset0:64 offset1:96
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v0, 5, v0
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_lshr_b32 s0, s35, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s0, s35, s0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v17, s57, v0
	.loc	1 1536 31                       ; ragged.py:1536:31
	v_lshl_or_b32 v0, s56, 5, v33
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_ashr_i32 s1, s0, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v17
	.loc	1 1542 54                       ; ragged.py:1542:54
	v_cmp_gt_i32_e32 vcc_lo, s1, v0
	.loc	1 1542 33 is_stmt 0             ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1543 17 is_stmt 1             ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_10
; %bb.9:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s44, v17
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v20, v13, v15, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_10:
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
	s_cbranch_execz .LBB0_12
; %bb.11:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s44, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v20, v9, v11, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_12:
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
	s_cbranch_execz .LBB0_14
; %bb.13:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s44, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v20, v14, v16, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_14:
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
	s_cbranch_execz .LBB0_16
; %bb.15:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s44, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v20, v10, v12, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_16:
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
	s_cbranch_execz .LBB0_18
; %bb.17:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s44, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v20, v5, v7, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_18:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 40, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_20
; %bb.19:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s44, v18
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
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_20:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 48, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_22
; %bb.21:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s44, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v20, v6, v8, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_22:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 56, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_24
; %bb.23:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s44, v18
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
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_24:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 64, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_26
; %bb.25:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s44, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v13, v13, v15, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v13, off
.LBB0_26:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(7)
	v_or_b32_e32 v13, 0x48, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v13
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_28
; %bb.27:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v13, s44, v13
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v9, v11, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[18:19], null, v13, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v9, off
.LBB0_28:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(3)
	v_or_b32_e32 v9, 0x50, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v9
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_30
; %bb.29:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v9, s44, v9
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[18:19], null, v9, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v9, v14, v16, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v13, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v14, null, s47, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[13:14], v9, off
.LBB0_30:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v9, 0x58, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v9
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_32
; %bb.31:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v9, s44, v9
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v11, v10, v12, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[13:14], null, v9, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v14, 31, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[13:14], 2, v[13:14]
	v_add_co_u32 v9, s0, s46, v13
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s47, v14, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[9:10], v11, off
.LBB0_32:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v9, 0x60, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v9
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_34
; %bb.33:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v9, s44, v9
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v5, v5, v7, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[9:10], null, v9, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v10, 31, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	v_add_co_u32 v9, s0, s46, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s47, v10, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[9:10], v5, off
.LBB0_34:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v5, 0x68, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v5
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_36
; %bb.35:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v5, s44, v5
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[9:10], null, v5, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v3, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v10, 31, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	v_add_co_u32 v9, s0, s46, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s47, v10, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[9:10], v1, off
.LBB0_36:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(2)
	v_or_b32_e32 v1, 0x70, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_38
; %bb.37:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s44, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[9:10], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v6, v8, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v10, 31, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	v_add_co_u32 v5, s0, s46, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, s47, v10, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[5:6], v1, off
.LBB0_38:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 0x78, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_40
; %bb.39:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s44, v1
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
	v_add_co_u32 v0, vcc_lo, s46, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s47, v1, vcc_lo
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[0:1], v2, off
.LBB0_40:
	.loc	1 1276 5 is_stmt 1              ; ragged.py:1276:5
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 90
		.amdhsa_next_free_sgpr 58
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.num_vgpr, 90
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.numbered_sgpr, 58
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8680
; TotalNumSgprs: 60
; NumVgprs: 90
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 11
; NumSGPRsForWavesPerEU: 60
; NumVGPRsForWavesPerEU: 90
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     60
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     90
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
