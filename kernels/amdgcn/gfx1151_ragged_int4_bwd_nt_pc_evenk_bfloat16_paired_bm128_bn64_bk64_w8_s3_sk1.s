	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[34:35], s[0:1], 0x30
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s8, s2
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
	s_ashr_i32 s21, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s20, s5, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s20, s21
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
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s6, s20
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
	s_sub_i32 s10, s2, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_hi_u32 s4, s9, s5
	s_abs_i32 s7, s10
	s_add_i32 s9, s9, s4
	s_xor_b32 s11, s10, s20
	s_mul_hi_u32 s9, s7, s9
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_i32 s12, s9, s6
	s_ashr_i32 s22, s11, 31
	s_sub_i32 s7, s7, s12
	s_add_i32 s11, s9, 1
	s_sub_i32 s12, s7, s6
	s_cmp_ge_u32 s7, s6
	.loc	1 1329 39                       ; ragged.py:1329:39
	s_mul_i32 s31, s8, s34
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cselect_b32 s9, s11, s9
	s_cselect_b32 s7, s12, s7
	s_add_i32 s11, s9, 1
	s_cmp_ge_u32 s7, s6
	.loc	1 1331 39                       ; ragged.py:1331:39
	s_mul_i32 s17, s8, s35
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cselect_b32 s6, s11, s9
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s9, s8, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s23, s6, s22
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[6:7], s[8:9], 2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s11, s23, s22
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s12, s11, s20
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s38, s11, 7
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s33, s10, s12
	s_mov_b32 s10, 0
	.loc	1 1310 18                       ; ragged.py:1310:18
	s_lshl_b32 s16, s33, 6
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s6
	s_addc_u32 s5, s5, s7
	.loc	1 1322 22                       ; ragged.py:1322:22
	s_lshl_b32 s19, s3, 5
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
	s_ashr_i32 s18, s4, 1
	.loc	1 1324 23 is_stmt 1             ; ragged.py:1324:23
	s_cmp_lt_i32 s19, s18
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1404 21                       ; ragged.py:1404:21
	s_add_i32 s3, s38, s31
	.loc	1 1411 21                       ; ragged.py:1411:21
	s_add_i32 s9, s16, s17
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 21 is_stmt 0                ; ragged.py:0:21
	s_mov_b32 s10, -1
                                        ; implicit-def: $sgpr3
                                        ; implicit-def: $sgpr9
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x10
	s_load_b64 s[36:37], s[0:1], 0x28
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v36, 15, v0
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v37, 0xc0, v0
	v_dual_mov_b32 v33, 0 :: v_dual_and_b32 v38, 32, v0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_mov_b32_e32 v23, 0
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x0
	s_load_b32 s1, s[0:1], 0x38
	.loc	1 1324 23 is_stmt 1             ; ragged.py:1324:23
	s_mul_i32 s21, s21, s8
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v3, 1, v0
	.loc	1 1324 23                       ; ragged.py:1324:23
	s_sub_i32 s8, s22, s21
	s_add_i32 s3, s38, s31
	s_sub_i32 s8, s8, s23
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v4, 2, v0
	.loc	1 1324 23                       ; ragged.py:1324:23
	s_mul_i32 s20, s20, s8
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_lshlrev_b32_e32 v6, 3, v0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v8, s38, v3
	v_add_nc_u32_e32 v11, s3, v3
	v_and_b32_e32 v3, 24, v3
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_lshlrev_b32_e32 v5, 4, v0
	v_lshlrev_b32_e32 v1, 1, v0
	.loc	1 1324 23                       ; ragged.py:1324:23
	s_lshl_b32 s8, s20, 6
	s_lshl_b32 s2, s2, 6
	s_add_i32 s8, s8, s17
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v10, s16, v4
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_and_b32_e32 v2, 24, v6
	v_xor_b32_e32 v3, v6, v3
	.loc	1 1324 23                       ; ragged.py:1324:23
	v_add3_u32 v4, s8, s2, v4
	v_and_b32_e32 v9, 24, v1
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_and_b32_e32 v1, 16, v5
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v8
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s35, v10
	.loc	1 1324 23                       ; ragged.py:1324:23
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[33:34], null, s1, v4, v[2:3]
	v_lshl_or_b32 v9, v36, 5, v9
	v_mad_u64_u32 v[34:35], null, v11, s1, v[1:2]
	v_mov_b32_e32 v1, 0
	v_and_b32_e32 v7, 24, v0
	v_add_nc_u32_e32 v44, 0, v3
	s_mov_b32 s11, 0x31027000
	s_and_b32 s13, s13, 0xffff
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v4, v1
	v_xor_b32_e32 v5, v5, v7
	v_lshl_or_b32 v7, v37, 3, v9
	v_lshl_or_b32 v9, v38, 4, v9
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v11, v1
	v_xor_b32_e32 v8, 8, v5
	v_xor_b32_e32 v10, 8, v7
	v_xor_b32_e32 v12, 16, v7
	v_xor_b32_e32 v13, 24, v7
	v_xor_b32_e32 v6, 8, v9
	v_xor_b32_e32 v14, 16, v9
	v_xor_b32_e32 v15, 24, v9
	v_add_nc_u32_e32 v35, 0, v5
	v_add_nc_u32_e32 v39, 0, v8
	v_dual_mov_b32 v5, v1 :: v_dual_add_nc_u32 v40, 0, v7
	v_dual_mov_b32 v16, v1 :: v_dual_add_nc_u32 v41, 0, v10
	v_dual_mov_b32 v7, v1 :: v_dual_add_nc_u32 v42, 0, v12
	v_dual_mov_b32 v26, v1 :: v_dual_add_nc_u32 v43, 0, v13
	v_dual_mov_b32 v28, v1 :: v_dual_add_nc_u32 v45, 0, v9
	v_add_nc_u32_e32 v46, 0, v6
	v_dual_mov_b32 v30, v1 :: v_dual_add_nc_u32 v47, 0, v14
	v_dual_mov_b32 v13, v1 :: v_dual_add_nc_u32 v48, 0, v15
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v24, v1
	s_mov_b32 s10, 0x7ffffffe
	s_and_b32 s15, s15, 0xffff
	s_mov_b32 s8, s12
	s_mov_b32 s9, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1334 34                       ; ragged.py:1334:34
	v_add_nc_u32_e32 v49, s19, v34
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_add_nc_u32_e32 v50, s19, v33
	.loc	1 1346 21                       ; ragged.py:1346:21
	s_add_i32 s19, s19, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1324 23                       ; ragged.py:1324:23
	s_cmp_lt_i32 s19, s18
	.loc	1 1334 34                       ; ragged.py:1334:34
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1335 34                       ; ragged.py:1335:34
	v_cndmask_b32_e64 v53, 0x80000000, v50, s0
	.loc	1 1334 34                       ; ragged.py:1334:34
	buffer_load_b128 v[49:52], v49, s[8:11], 0 offen
	.loc	1 1335 34                       ; ragged.py:1335:34
	buffer_load_b64 v[65:66], v53, s[12:15], 0 offen
	.loc	1 1334 34                       ; ragged.py:1334:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b64 v35, v[49:50]
	ds_store_b64 v39, v[51:52]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[49:52], v40 offset1:4
	ds_load_2addr_stride64_b64 v[53:56], v41 offset1:4
	ds_load_2addr_stride64_b64 v[57:60], v42 offset1:4
	ds_load_2addr_stride64_b64 v[61:64], v43 offset1:4
	.loc	1 1335 34                       ; ragged.py:1335:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v44, v[65:66]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[65:68], v45 offset1:2
	ds_load_2addr_stride64_b64 v[69:72], v46 offset1:2
	ds_load_2addr_stride64_b64 v[73:76], v47 offset1:2
	ds_load_2addr_stride64_b64 v[77:80], v48 offset1:2
	.loc	1 1336 31                       ; ragged.py:1336:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[65:66], v[49:50], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[67:68], v[49:50], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[51:52], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[67:68], v[51:52], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[69:70], v[53:54], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[71:72], v[53:54], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[69:70], v[55:56], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[71:72], v[55:56], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[73:74], v[57:58], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[75:76], v[57:58], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[73:74], v[59:60], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[75:76], v[59:60], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[77:78], v[61:62], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[79:80], v[61:62], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[77:78], v[63:64], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[79:80], v[63:64], v[17:24] neg_lo:[1,1,0]
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
	s_add_i32 s9, s16, s17
.LBB0_7:                                ; %._crit_edge
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v24, 2, v37
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v34, 4, v0
	v_lshrrev_b32_e32 v35, 1, v38
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s1, s5, 0xffff
	s_mov_b32 s2, 0x7ffffffe
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v24, v24, v36
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_mov_b32 s0, s4
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_and_or_b32 v34, v34, 1, v35
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshl_or_b32 v37, v37, 1, v38
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v35, 64, v24
	.loc	1 1309 18 is_stmt 0             ; ragged.py:1309:18
	v_or_b32_e32 v39, s38, v24
	.loc	1 1403 36 is_stmt 1             ; ragged.py:1403:36
	v_add_lshl_u32 v24, s3, v24, 1
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v40, 2, v34
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v56, s16, v34
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v48, s38, v35
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v39
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_lshl_u32 v35, s3, v35, 1
	s_mov_b32 s3, 0x31027000
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v41, 4, v34
	v_or_b32_e32 v42, 6, v34
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v48
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v57, s16, v40
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v43, 8, v34
	v_or_b32_e32 v44, 10, v34
	v_or_b32_e32 v45, 12, v34
	.loc	1 1403 36 is_stmt 1             ; ragged.py:1403:36
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v56
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_clause 0x1
	buffer_load_u16 v39, v24, s[0:3], 0 offen
	buffer_load_u16 v35, v35, s[0:3], 0 offen
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v24, s9, v34, 1
	.loc	1 1310 36                       ; ragged.py:1310:36
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
	v_or_b32_e32 v58, s16, v41
	.loc	1 1410 36 is_stmt 1             ; ragged.py:1410:36
	v_add_lshl_u32 v34, s9, v40, 1
	v_add_lshl_u32 v40, s9, v41, 1
	v_add_lshl_u32 v41, s9, v42, 1
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v57
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v59, s16, v42
	v_or_b32_e32 v60, s16, v43
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v42, s9, v43, 1
	v_add_lshl_u32 v43, s9, v44, 1
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v58
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v61, s16, v44
	v_or_b32_e32 v62, s16, v45
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v44, s9, v45, 1
	v_add_lshl_u32 v45, s9, v46, 1
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v59
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v63, s16, v46
	v_or_b32_e32 v64, s16, v47
	v_or_b32_e32 v65, s16, v49
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v46, s9, v47, 1
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v60
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_and_b32 s1, s7, 0xffff
	s_mov_b32 s0, s6
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v66, s16, v50
	v_or_b32_e32 v67, s16, v51
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v61
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v68, s16, v52
	v_or_b32_e32 v69, s16, v53
	v_or_b32_e32 v70, s16, v54
	v_or_b32_e32 v48, s16, v55
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v62
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_bfe_i32 v57, v0, 4, 1
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v63
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v64
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_clause 0x7
	buffer_load_u16 v47, v24, s[0:3], 0 offen
	buffer_load_u16 v56, v34, s[0:3], 0 offen
	buffer_load_u16 v40, v40, s[0:3], 0 offen
	buffer_load_u16 v41, v41, s[0:3], 0 offen
	buffer_load_u16 v42, v42, s[0:3], 0 offen
	buffer_load_u16 v43, v43, s[0:3], 0 offen
	buffer_load_u16 v44, v44, s[0:3], 0 offen
	buffer_load_u16 v45, v45, s[0:3], 0 offen
	v_add_lshl_u32 v24, s9, v49, 1
	v_add_lshl_u32 v49, s9, v51, 1
	v_add_lshl_u32 v51, s9, v53, 1
	v_cndmask_b32_e32 v34, 0x80000000, v46, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v65
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v46, s9, v50, 1
	v_add_lshl_u32 v50, s9, v52, 1
	v_add_lshl_u32 v52, s9, v54, 1
	v_add_lshl_u32 v53, s9, v55, 1
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v66
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v67
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v68
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(9)
	v_dual_cndmask_b32 v50, 0x80000000, v50 :: v_dual_lshlrev_b32 v39, 16, v39
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v69
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v35, 16, v35
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v26, v26, v39 :: v_dual_and_b32 v55, 0xe0, v0
	v_mul_f32_e32 v33, v33, v39
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v51, 0x80000000, v51, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v70
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v25, v25, v39 :: v_dual_lshlrev_b32 v38, 2, v36
	v_mul_f32_e32 v31, v31, v39
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshrrev_b32_e32 v69, 3, v55
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v52, 0x80000000, v52, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v48
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v27, v27, v39
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshl_or_b32 v38, v55, 4, v38
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v28, v28, v39
	v_dual_mul_f32 v29, v29, v39 :: v_dual_cndmask_b32 v48, 0x80000000, v53
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_clause 0x7
	buffer_load_u16 v53, v34, s[0:3], 0 offen
	buffer_load_u16 v54, v24, s[0:3], 0 offen
	buffer_load_u16 v46, v46, s[0:3], 0 offen
	buffer_load_u16 v49, v49, s[0:3], 0 offen
	buffer_load_u16 v50, v50, s[0:3], 0 offen
	buffer_load_u16 v51, v51, s[0:3], 0 offen
	buffer_load_u16 v52, v52, s[0:3], 0 offen
	buffer_load_u16 v48, v48, s[0:3], 0 offen
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xor_b32_e32 v38, v38, v69
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_and_b32_e32 v24, 31, v0
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v30, v30, v39
	v_mul_f32_e32 v32, v32, v39
	v_mul_f32_e32 v17, v17, v39
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_and_or_b32 v38, 0x2040, v57, v38
	v_lshlrev_b32_e32 v66, 2, v24
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v18, v18, v39
	v_mul_f32_e32 v19, v19, v39
	v_mul_f32_e32 v20, v20, v39
	v_dual_mul_f32 v21, v21, v39 :: v_dual_add_nc_u32 v86, 0, v38
	v_mul_f32_e32 v23, v23, v39
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v34.h, 0
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshl_or_b32 v36, v36, 9, v66
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xad_u32 v87, v38, 64, 0
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v1, v1, v35
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v58.h, v34.h
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xor_b32_e32 v36, v36, v37
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v37.h, v34.h
	v_mov_b16_e32 v59.h, v34.h
	v_mov_b16_e32 v60.h, v34.h
	v_mov_b16_e32 v61.h, v34.h
	v_mov_b16_e32 v62.h, v34.h
	v_mov_b16_e32 v63.h, v34.h
	v_mov_b16_e32 v64.h, v34.h
	v_mov_b16_e32 v67.h, v34.h
	v_mov_b16_e32 v65.h, v34.h
	v_mov_b16_e32 v68.h, v34.h
	v_mov_b16_e32 v55.h, v34.h
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_add_nc_u32_e32 v57, 0, v36
	v_xad_u32 v79, 0x2040, v36, 0
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v40, 16, v40
	.loc	1 1408 17                       ; ragged.py:1408:17
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v22, v22, v39 :: v_dual_lshlrev_b32 v41, 16, v41
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_lshlrev_b32_e32 v39, 16, v47
	v_lshlrev_b32_e32 v47, 16, v56
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v44, 16, v44
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v26, v26, v40 :: v_dual_mul_f32 v27, v27, v41
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_lshlrev_b32_e32 v42, 16, v42
	.loc	1 1408 17                       ; ragged.py:1408:17
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v2, v2, v35 :: v_dual_lshlrev_b32 v45, 16, v45
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_lshlrev_b32_e32 v43, 16, v43
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s1, v26, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v28, v28, v42 :: v_dual_mul_f32 v31, v31, v45
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s2, v27, v27
	v_mov_b16_e32 v70.h, v34.h
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v72, v36, 4, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s3, v28, v28
	v_cmp_o_f32_e64 s6, v31, v31
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v80, 0x2044, v36, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v66.h, v34.h
	v_mov_b16_e32 v69.h, v34.h
	v_mov_b16_e32 v71.h, v34.h
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v73, v36, 8, 0
	v_xad_u32 v81, 0x2048, v36, 0
	v_xad_u32 v74, v36, 12, 0
	v_xad_u32 v75, v36, 16, 0
	v_xad_u32 v76, v36, 20, 0
	v_xad_u32 v82, 0x204c, v36, 0
	v_xad_u32 v83, 0x2050, v36, 0
	v_xad_u32 v84, 0x2054, v36, 0
	v_xad_u32 v77, v36, 24, 0
	v_xad_u32 v85, 0x2058, v36, 0
	v_xad_u32 v78, v36, 28, 0
	v_xad_u32 v88, 0x1020, v38, 0
	v_xad_u32 v36, 0x205c, v36, 0
	v_xad_u32 v38, 0x1060, v38, 0
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v0, 5, v0
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v3, v3, v35
	v_mul_f32_e32 v10, v10, v35
	v_mul_f32_e32 v5, v5, v35
	v_mul_f32_e32 v12, v12, v35
	v_mul_f32_e32 v7, v7, v35
	v_mul_f32_e32 v14, v14, v35
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v30, v30, v44 :: v_dual_mul_f32 v9, v9, v35
	v_mul_f32_e32 v3, v3, v40
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v11, v11, v35
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v5, v5, v42
	v_mul_f32_e32 v7, v7, v44
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s5, v30, v30
	v_mov_b16_e32 v60.l, v3.h
	v_cmp_o_f32_e64 s17, v3, v3
	v_mov_b16_e32 v62.l, v5.h
	v_cmp_o_f32_e64 s19, v5, v5
	v_mov_b16_e32 v64.l, v7.h
	v_cmp_o_f32_e64 s21, v7, v7
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v53, 16, v53
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v1, v1, v39 :: v_dual_lshlrev_b32 v54, 16, v54
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v33, v33, v39 :: v_dual_lshlrev_b32 v50, 16, v50
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v51, 16, v51
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v25, v25, v47 :: v_dual_lshlrev_b32 v52, 16, v52
	v_mul_f32_e32 v20, v20, v50
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v34.l, v33.h
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_lshlrev_b32_e32 v46, 16, v46
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v48, 16, v48
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v4, v4, v35 :: v_dual_mul_f32 v17, v17, v54
	v_dual_mul_f32 v6, v6, v35 :: v_dual_mul_f32 v19, v19, v49
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v8, v8, v35 :: v_dual_mul_f32 v23, v23, v48
	v_dual_mul_f32 v13, v13, v35 :: v_dual_mul_f32 v32, v32, v53
	v_dual_mul_f32 v15, v15, v35 :: v_dual_mul_f32 v18, v18, v46
	v_dual_mul_f32 v16, v16, v35 :: v_dual_mul_f32 v9, v9, v53
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v22, v22, v52
	v_mul_f32_e32 v10, v10, v54
	v_dual_mul_f32 v14, v14, v51 :: v_dual_and_b32 v35, 1, v34
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v58.l, v1.h
	v_mov_b16_e32 v34.l, v25.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v16, v16, v48
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_mov_b16_e32 v37.l, v14.h
	v_and_b32_e32 v39, 1, v58
	v_add3_u32 v33, v33, v35, 0x7fff
	v_and_b32_e32 v35, 1, v34
	v_mov_b16_e32 v34.l, v26.h
	v_cmp_o_f32_e64 s15, v1, v1
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v1, v1, v39, 0x7fff
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v29, v29, v43 :: v_dual_mul_f32 v4, v4, v41
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_and_b32_e32 v39, 1, v34
	v_mov_b16_e32 v34.l, v27.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v2, v2, v47 :: v_dual_mul_f32 v11, v11, v46
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s28, v14, v14
	v_add3_u32 v14, v14, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v37, 1, v34
	v_mov_b16_e32 v34.l, v28.h
	v_mov_b16_e32 v59.l, v2.h
	v_cndmask_b16 v1.l, 0x7fff, v33.h, vcc_lo
	v_cmp_o_f32_e64 s0, v25, v25
	v_add3_u32 v25, v25, v35, 0x7fff
	v_and_b32_e32 v33, 1, v34
	v_mov_b16_e32 v34.l, v29.h
	v_and_b32_e32 v40, 1, v59
	v_cmp_o_f32_e64 s16, v2, v2
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v6, v6, v43 :: v_dual_and_b32 v41, 1, v60
	v_mul_f32_e32 v13, v13, v50
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_and_b32_e32 v35, 1, v34
	v_mov_b16_e32 v34.l, v30.h
	v_add3_u32 v2, v2, v40, 0x7fff
	v_add3_u32 v3, v3, v41, 0x7fff
	v_mov_b16_e32 v61.l, v4.h
	v_add3_u32 v26, v26, v39, 0x7fff
	v_and_b32_e32 v40, 1, v34
	v_mov_b16_e32 v34.l, v31.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v21, v21, v51 :: v_dual_mul_f32 v8, v8, v45
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v63.l, v6.h
	v_and_b32_e32 v42, 1, v61
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v41, 1, v34
	v_mov_b16_e32 v34.l, v32.h
	v_and_b32_e32 v43, 1, v62
	v_cndmask_b16 v2.l, 0x7fff, v25.h, s0
	v_add3_u32 v25, v27, v37, 0x7fff
	v_mov_b16_e32 v67.l, v9.h
	v_and_b32_e32 v39, 1, v34
	v_mov_b16_e32 v34.l, v17.h
	v_cndmask_b16 v3.l, 0x7fff, v26.h, s1
	v_add3_u32 v26, v28, v33, 0x7fff
	v_cmp_o_f32_e64 s18, v4, v4
	v_mov_b16_e32 v65.l, v8.h
	v_and_b32_e32 v27, 1, v34
	v_mov_b16_e32 v34.l, v18.h
	v_and_b32_e32 v44, 1, v63
	v_add3_u32 v4, v4, v42, 0x7fff
	v_cmp_o_f32_e64 s4, v29, v29
	v_and_b32_e32 v45, 1, v64
	v_add3_u32 v5, v5, v43, 0x7fff
	v_cndmask_b16 v4.l, 0x7fff, v25.h, s2
	v_add3_u32 v25, v29, v35, 0x7fff
	v_and_b32_e32 v28, 1, v34
	v_mov_b16_e32 v34.l, v19.h
	v_mov_b16_e32 v68.l, v10.h
	v_and_b32_e32 v47, 1, v67
	v_cndmask_b16 v5.l, 0x7fff, v26.h, s3
	v_add3_u32 v26, v30, v40, 0x7fff
	v_cmp_o_f32_e64 s20, v6, v6
	v_and_b32_e32 v46, 1, v65
	v_add3_u32 v6, v6, v44, 0x7fff
	v_add3_u32 v7, v7, v45, 0x7fff
	v_cndmask_b16 v6.l, 0x7fff, v25.h, s4
	v_add3_u32 v25, v31, v41, 0x7fff
	v_and_b32_e32 v29, 1, v34
	v_mov_b16_e32 v34.l, v20.h
	v_cmp_o_f32_e64 s7, v32, v32
	v_cmp_o_f32_e64 s23, v9, v9
	v_and_b32_e32 v48, 1, v68
	v_add3_u32 v9, v9, v47, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v26.h, s5
	v_add3_u32 v26, v32, v39, 0x7fff
	v_cmp_o_f32_e64 s22, v8, v8
	v_add3_u32 v8, v8, v46, 0x7fff
	v_mov_b16_e32 v55.l, v11.h
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s15
	v_cndmask_b16 v8.l, 0x7fff, v25.h, s6
	v_and_b32_e32 v25, 1, v34
	v_mov_b16_e32 v34.l, v21.h
	v_cmp_o_f32_e64 s8, v17, v17
	v_cmp_o_f32_e64 s24, v10, v10
	v_add3_u32 v10, v10, v48, 0x7fff
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s23
	v_add3_u32 v17, v17, v27, 0x7fff
	v_cndmask_b16 v9.l, 0x7fff, v26.h, s7
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v12, v12, v49 :: v_dual_mul_f32 v15, v15, v52
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v70.l, v13.h
	v_and_b32_e32 v49, 1, v55
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s16
	.loc	1 1534 34                       ; ragged.py:1534:34
	ds_store_b32 v57, v1
	ds_store_b32 v79, v9
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_and_b32_e32 v1, 1, v34
	v_mov_b16_e32 v34.l, v22.h
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s24
	v_cndmask_b16 v10.l, 0x7fff, v17.h, s8
	v_mov_b16_e32 v66.l, v12.h
	v_mov_b16_e32 v69.l, v15.h
	v_and_b32_e32 v51, 1, v70
	v_cmp_o_f32_e64 s9, v18, v18
	v_cmp_o_f32_e64 s11, v20, v20
	v_cmp_o_f32_e64 s25, v11, v11
	v_mov_b16_e32 v71.l, v16.h
	v_add3_u32 v11, v11, v49, 0x7fff
	v_add3_u32 v18, v18, v28, 0x7fff
	.loc	1 1534 34                       ; ragged.py:1534:34
	ds_store_b32 v72, v2
	ds_store_b32 v80, v10
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v2, v20, v25, 0x7fff
	v_and_b32_e32 v10, 1, v34
	v_mov_b16_e32 v34.l, v23.h
	v_and_b32_e32 v50, 1, v66
	v_cmp_o_f32_e64 s27, v13, v13
	v_and_b32_e32 v52, 1, v69
	v_add3_u32 v13, v13, v51, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s17
	v_and_b32_e32 v53, 1, v71
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s25
	v_cndmask_b16 v11.l, 0x7fff, v18.h, s9
	v_cndmask_b16 v13.l, 0x7fff, v2.h, s11
	v_and_b32_e32 v2, 1, v34
	v_cmp_o_f32_e64 s10, v19, v19
	v_cmp_o_f32_e64 s12, v21, v21
	v_cmp_o_f32_e64 s26, v12, v12
	v_add3_u32 v12, v12, v50, 0x7fff
	v_add3_u32 v9, v19, v29, 0x7fff
	v_add3_u32 v1, v21, v1, 0x7fff
	v_cmp_o_f32_e64 s13, v22, v22
	v_cmp_o_f32_e64 s29, v15, v15
	v_add3_u32 v15, v15, v52, 0x7fff
	.loc	1 1534 34                       ; ragged.py:1534:34
	ds_store_b32 v73, v3
	ds_store_b32 v81, v11
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v3, v22, v10, 0x7fff
	v_cmp_o_f32_e64 s14, v23, v23
	v_cmp_o_f32_e64 s30, v16, v16
	v_add3_u32 v16, v16, v53, 0x7fff
	v_add3_u32 v2, v23, v2, 0x7fff
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s18
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s19
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s20
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s26
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s27
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s28
	v_cndmask_b16 v12.l, 0x7fff, v9.h, s10
	v_cndmask_b16 v14.l, 0x7fff, v1.h, s12
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s21
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s29
	v_cndmask_b16 v15.l, 0x7fff, v3.h, s13
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s22
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s30
	v_cndmask_b16 v16.l, 0x7fff, v2.h, s14
	.loc	1 1534 34                       ; ragged.py:1534:34
	ds_store_b32 v74, v4
	ds_store_b32 v82, v12
	ds_store_b32 v75, v5
	ds_store_b32 v83, v13
	ds_store_b32 v76, v6
	ds_store_b32 v84, v14
	ds_store_b32 v77, v7
	ds_store_b32 v85, v15
	ds_store_b32 v78, v8
	ds_store_b32 v36, v16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[13:14], v86 offset1:32
	ds_load_2addr_b32 v[5:6], v86 offset0:64 offset1:96
	ds_load_2addr_b32 v[15:16], v87 offset1:32
	ds_load_2addr_b32 v[7:8], v87 offset0:64 offset1:96
	ds_load_2addr_b32 v[9:10], v88 offset1:32
	ds_load_2addr_b32 v[1:2], v88 offset0:64 offset1:96
	ds_load_2addr_b32 v[11:12], v38 offset1:32
	ds_load_2addr_b32 v[3:4], v38 offset0:64 offset1:96
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
	v_add_co_u32 v18, s0, s36, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s37, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_9:
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
	s_cbranch_execz .LBB0_11
; %bb.10:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s31, v18
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
	v_add_co_u32 v18, s0, s36, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s37, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_11:
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
	s_cbranch_execz .LBB0_13
; %bb.12:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s31, v18
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
	v_add_co_u32 v18, s0, s36, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s37, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_13:
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
	s_cbranch_execz .LBB0_15
; %bb.14:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s31, v18
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
	v_add_co_u32 v18, s0, s36, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s37, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_15:
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
	s_cbranch_execz .LBB0_17
; %bb.16:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s31, v18
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
	v_add_co_u32 v18, s0, s36, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s37, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_17:
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
	s_cbranch_execz .LBB0_19
; %bb.18:
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
.LBB0_19:
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
	s_cbranch_execz .LBB0_21
; %bb.20:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s31, v18
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
	v_add_co_u32 v18, s0, s36, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s37, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_21:
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
	v_or_b32_e32 v18, 64, v17
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
	v_or_b32_e32 v13, 0x48, v17
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
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v9, v11, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
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
	s_waitcnt lgkmcnt(3)
	v_or_b32_e32 v9, 0x50, v17
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
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[18:19], null, v9, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v9, v14, v16, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v13, s0, s36, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v14, null, s37, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[13:14], v9, off
.LBB0_29:
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
	s_cbranch_execz .LBB0_31
; %bb.30:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v9, s31, v9
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
	v_add_co_u32 v9, s0, s36, v13
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s37, v14, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[9:10], v11, off
.LBB0_31:
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
	s_cbranch_execz .LBB0_33
; %bb.32:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v9, s31, v9
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
	v_add_co_u32 v9, s0, s36, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s37, v10, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[9:10], v5, off
.LBB0_33:
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
	s_cbranch_execz .LBB0_35
; %bb.34:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v5, s31, v5
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
	v_add_co_u32 v9, s0, s36, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s37, v10, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[9:10], v1, off
.LBB0_35:
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
	v_or_b32_e32 v1, 0x78, v17
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
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 89
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
		.amdhsa_inst_pref_size 50
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.num_vgpr, 89
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.numbered_sgpr, 39
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6276
; TotalNumSgprs: 41
; NumVgprs: 89
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 11
; NumSGPRsForWavesPerEU: 41
; NumVGPRsForWavesPerEU: 89
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     41
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     89
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
