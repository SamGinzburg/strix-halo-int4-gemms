	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b128 s[36:39], s[0:1], 0x20
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
	s_clause 0x1
	s_load_b256 s[20:27], s[0:1], 0x0
	s_load_b32 s18, s[0:1], 0x38
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v45, 0x7f, v0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v44, 2, v0
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_lshlrev_b32_e32 v42, 3, v0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_and_b32_e32 v38, 32, v0
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v37, 0xc0, v0
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_and_b32_e32 v46, 0x80, v0
	v_lshlrev_b32_e32 v39, 1, v0
	v_lshrrev_b32_e32 v43, 1, v0
	v_and_b32_e32 v33, 24, v42
	v_lshlrev_b32_e32 v41, 4, v38
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v36, 15, v0
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
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s5, s5, 6
	s_mov_b64 s[28:29], s[26:27]
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s5, s4
	v_lshlrev_b32_e32 v40, 5, v36
	.loc	1 1304 20                       ; ragged.py:1304:20
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
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s7, s5
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s6, s6, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s9, s7
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s30, s6, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s6, 0, s7
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s30, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s4
	.loc	1 1359 39                       ; ragged.py:1359:39
	s_mul_i32 s26, s30, s35
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s8, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	s_ashr_i32 s8, s8, 31
	v_readfirstlane_b32 s9, v1
	v_mov_b32_e32 v1, 0
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s6, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s9, s6
	s_abs_i32 s6, s2
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s4, s7
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s6, s7
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s4, s9, s4
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s31, s30, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s6, s4, s8
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s7, s6, s5
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[4:5], s[30:31], 2
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s33, s2, s7
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s40, s6, 7
	.loc	1 1310 18                       ; ragged.py:1310:18
	s_lshl_b32 s31, s33, 6
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_add_u32 s4, s36, s4
	s_addc_u32 s5, s37, s5
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v2, s40, v45
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s2, s[4:5], 0x0
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v3, s31, v44
	.loc	1 1322 22                       ; ragged.py:1322:22
	s_lshl_b32 s19, s3, 5
	.loc	1 1355 39                       ; ragged.py:1355:39
	s_mul_i32 s37, s30, s18
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s1, s34, v2
	.loc	1 1350 21                       ; ragged.py:1350:21
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s0, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s0, s0, 26
	s_add_i32 s0, s2, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s3, s0, 6
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s35, v3
	.loc	1 1349 39                       ; ragged.py:1349:39
	s_lshl_b32 s3, s3, 5
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cmp_ge_i32 s19, s3
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v4, 24, v43
	v_and_b32_e32 v3, 24, v39
	v_lshrrev_b32_e32 v5, 3, v37
	v_lshlrev_b32_e32 v6, 3, v37
	.loc	1 1317 18 is_stmt 1             ; ragged.py:1317:18
	v_lshrrev_b32_e32 v1, 4, v46
	v_add3_u32 v7, s31, s26, v44
	v_mov_b32_e32 v23, v9
	v_xor_b32_e32 v5, v3, v5
	v_mov_b32_e32 v24, v9
	v_mul_lo_u32 v2, s34, v1
	v_mad_u64_u32 v[34:35], null, v7, s18, v[33:34]
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v5, v5, v6, v40
	v_mov_b32_e32 v25, v9
	v_mov_b32_e32 v14, v9
	v_mov_b32_e32 v26, v9
	v_mov_b32_e32 v27, v9
	v_xor_b32_e32 v10, 24, v5
	v_xor_b32_e32 v7, 8, v5
	v_xor_b32_e32 v8, 16, v5
	.loc	1 1352 23                       ; ragged.py:1352:23
	v_add3_u32 v35, v45, v2, s40
	v_add_nc_u32_e32 v49, 0, v5
	v_dual_mov_b32 v17, v9 :: v_dual_add_nc_u32 v52, 0, v10
	v_mov_b32_e32 v10, v9
	v_xor3_b32 v1, v3, v4, v1
	v_or3_b32 v3, v3, v41, v40
	v_xor_b32_e32 v4, v42, v4
	v_dual_mov_b32 v15, v9 :: v_dual_add_nc_u32 v50, 0, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v1, v45, 5, v1
	v_xor_b32_e32 v11, 8, v3
	v_xor_b32_e32 v12, 16, v3
	v_xor_b32_e32 v13, 24, v3
	v_dual_mov_b32 v16, v9 :: v_dual_add_nc_u32 v51, 0, v8
	v_xor_b32_e32 v6, 16, v1
	v_add_nc_u32_e32 v47, 0, v1
	v_dual_mov_b32 v18, v9 :: v_dual_add_nc_u32 v53, 0, v4
	v_dual_mov_b32 v19, v9 :: v_dual_add_nc_u32 v54, 0, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v48, 0, v6
	v_dual_mov_b32 v20, v9 :: v_dual_add_nc_u32 v55, 0, v11
	v_dual_mov_b32 v21, v9 :: v_dual_add_nc_u32 v56, 0, v12
	v_dual_mov_b32 v22, v9 :: v_dual_add_nc_u32 v57, 0, v13
	v_mov_b32_e32 v11, v9
	v_mov_b32_e32 v12, v9
	v_mov_b32_e32 v13, v9
	v_mov_b32_e32 v1, v9
	v_mov_b32_e32 v2, v9
	v_mov_b32_e32 v3, v9
	v_mov_b32_e32 v4, v9
	v_mov_b32_e32 v5, v9
	v_mov_b32_e32 v6, v9
	v_mov_b32_e32 v7, v9
	v_mov_b32_e32 v8, v9
	v_mov_b32_e32 v28, v9
	v_mov_b32_e32 v29, v9
	v_mov_b32_e32 v30, v9
	v_mov_b32_e32 v31, v9
	v_mov_b32_e32 v32, v9
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_lshl_b32 s12, s34, 1
	s_mul_i32 s13, s34, 3
	s_lshl_b32 s14, s34, 2
	s_mul_i32 s15, s34, 5
	s_mul_i32 s16, s34, 6
	s_mul_i32 s17, s34, 7
	s_lshl_b32 s27, s34, 4
	s_mul_i32 s36, s34, 17
	s_mul_i32 s41, s34, 18
	s_mul_i32 s42, s34, 19
	s_mul_i32 s43, s34, 20
	s_mul_i32 s44, s34, 21
	s_mul_i32 s45, s34, 22
	s_mul_i32 s46, s34, 23
	s_and_b32 s5, s21, 0xffff
	s_mov_b32 s4, s20
	s_and_b32 s9, s23, 0xffff
	s_mov_b32 s8, s22
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1362 42                       ; ragged.py:1362:42
	s_add_i32 s47, s19, s37
	.loc	1 1363 42                       ; ragged.py:1363:42
	v_add_nc_u32_e32 v60, s19, v34
	v_mad_u64_u32 v[58:59], null, s47, s34, v[35:36]
	.loc	1 1374 21                       ; ragged.py:1374:21
	s_add_i32 s19, s19, 32
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cmp_lt_i32 s19, s3
	v_add_nc_u32_e32 v66, s17, v58
	v_add_nc_u32_e32 v64, s15, v58
	v_add_nc_u32_e32 v62, s13, v58
	v_add_nc_u32_e32 v59, s34, v58
	v_add_nc_u32_e32 v63, s14, v58
	v_add_nc_u32_e32 v65, s16, v58
	v_add_nc_u32_e32 v67, s27, v58
	v_add_nc_u32_e32 v68, s36, v58
	v_add_nc_u32_e32 v69, s41, v58
	v_add_nc_u32_e32 v70, s42, v58
	v_add_nc_u32_e32 v71, s43, v58
	v_add_nc_u32_e32 v72, s44, v58
	v_add_nc_u32_e32 v73, s45, v58
	v_add_nc_u32_e32 v61, s12, v58
	v_add_nc_u32_e32 v74, s46, v58
	.loc	1 1362 34                       ; ragged.py:1362:34
	v_cndmask_b32_e64 v58, 0x80000000, v58, s1
	v_cndmask_b32_e64 v66, 0x80000000, v66, s1
	v_cndmask_b32_e64 v64, 0x80000000, v64, s1
	v_cndmask_b32_e64 v62, 0x80000000, v62, s1
	v_cndmask_b32_e64 v59, 0x80000000, v59, s1
	v_cndmask_b32_e64 v63, 0x80000000, v63, s1
	v_cndmask_b32_e64 v65, 0x80000000, v65, s1
	v_cndmask_b32_e64 v67, 0x80000000, v67, s1
	v_cndmask_b32_e64 v68, 0x80000000, v68, s1
	v_cndmask_b32_e64 v69, 0x80000000, v69, s1
	v_cndmask_b32_e64 v70, 0x80000000, v70, s1
	v_cndmask_b32_e64 v71, 0x80000000, v71, s1
	v_cndmask_b32_e64 v72, 0x80000000, v72, s1
	v_cndmask_b32_e64 v73, 0x80000000, v73, s1
	v_cndmask_b32_e64 v61, 0x80000000, v61, s1
	v_cndmask_b32_e64 v74, 0x80000000, v74, s1
	s_clause 0xf
	buffer_load_u8 v76, v58, s[4:7], 0 offen
	buffer_load_u8 v58, v66, s[4:7], 0 offen
	buffer_load_u8 v64, v64, s[4:7], 0 offen
	buffer_load_u8 v62, v62, s[4:7], 0 offen
	buffer_load_u8 v66, v59, s[4:7], 0 offen
	buffer_load_u8 v77, v74, s[4:7], 0 offen
	buffer_load_u8 v72, v72, s[4:7], 0 offen
	buffer_load_u8 v70, v70, s[4:7], 0 offen
	buffer_load_u8 v68, v68, s[4:7], 0 offen
	buffer_load_u8 v65, v65, s[4:7], 0 offen
	buffer_load_u8 v63, v63, s[4:7], 0 offen
	buffer_load_u8 v78, v61, s[4:7], 0 offen
	buffer_load_u8 v73, v73, s[4:7], 0 offen
	buffer_load_u8 v71, v71, s[4:7], 0 offen
	buffer_load_u8 v69, v69, s[4:7], 0 offen
	buffer_load_u8 v67, v67, s[4:7], 0 offen
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_cndmask_b32_e64 v59, 0x80000000, v60, s0
	buffer_load_b64 v[74:75], v59, s[8:11], 0 offen
	.loc	1 1362 34                       ; ragged.py:1362:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	v_lshlrev_b16 v58.l, 8, v58.l
	s_waitcnt vmcnt(14)
	v_lshlrev_b16 v58.h, 8, v64.l
	s_waitcnt vmcnt(13)
	v_lshlrev_b16 v59.l, 8, v62.l
	s_waitcnt vmcnt(12)
	v_lshlrev_b16 v59.h, 8, v66.l
	s_waitcnt vmcnt(11)
	v_lshlrev_b16 v60.l, 8, v77.l
	s_waitcnt vmcnt(10)
	v_lshlrev_b16 v60.h, 8, v72.l
	s_waitcnt vmcnt(9)
	v_lshlrev_b16 v61.l, 8, v70.l
	s_waitcnt vmcnt(8)
	v_lshlrev_b16 v61.h, 8, v68.l
	s_waitcnt vmcnt(6)
	v_or_b16 v63.h, v65.l, v58.l
	v_or_b16 v63.l, v63.l, v58.h
	s_waitcnt vmcnt(5)
	v_or_b16 v62.h, v78.l, v59.l
	v_or_b16 v62.l, v76.l, v59.h
	s_waitcnt vmcnt(4)
	v_or_b16 v59.h, v73.l, v60.l
	s_waitcnt vmcnt(3)
	v_or_b16 v59.l, v71.l, v60.h
	s_waitcnt vmcnt(2)
	v_or_b16 v58.h, v69.l, v61.l
	s_waitcnt vmcnt(1)
	v_or_b16 v58.l, v67.l, v61.h
	ds_store_b64 v47, v[62:63]
	ds_store_b64 v48, v[58:59]
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
	s_add_i32 s3, s2, 1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v34, 2, v37
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s4, s3, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s3, s4
	s_ashr_i32 s27, s3, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1375 20                       ; ragged.py:1375:20
	s_cmp_lt_i32 s19, s27
	.loc	1 1375 17 is_stmt 0             ; ragged.py:1375:17
	s_cbranch_scc1 .LBB0_6
; %bb.5:                                ; %._crit_edge._crit_edge
	.loc	1 1411 21 is_stmt 1             ; ragged.py:1411:21
	s_add_i32 s36, s31, s26
	v_or_b32_e32 v34, v34, v36
	s_cbranch_execz .LBB0_7
	s_branch .LBB0_8
.LBB0_6:
                                        ; implicit-def: $sgpr36
	.loc	1 0 21 is_stmt 0                ; ragged.py:0:21
	v_or_b32_e32 v34, v34, v36
.LBB0_7:
	.loc	1 1317 18 is_stmt 1             ; ragged.py:1317:18
	v_lshrrev_b32_e32 v63, 7, v46
	.loc	1 1386 33                       ; ragged.py:1386:33
	s_and_b32 s2, s2, 0x80000001
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_mul_lo_u32 v44, s18, v44
	.loc	1 1386 33                       ; ragged.py:1386:33
	s_cmp_eq_u32 s2, 1
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_or_b32_e32 v72, 1, v33
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v48, s19, v63
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mul_lo_u32 v63, s34, v63
	.loc	1 1386 33                       ; ragged.py:1386:33
	s_cselect_b32 s41, -1, 0
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_add_i32 s5, s19, s37
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_add_i32 s36, s31, s26
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_mul_i32 s5, s5, s34
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v55, 6, v48
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_add_i32 s5, s5, s40
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v57, 10, v48
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add3_u32 v66, s5, v45, v63
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v58, 12, v48
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s12, s27, v55
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v59, 14, v48
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s13, s27, v57
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mad_u64_u32 v[63:64], null, s34, 6, v[66:67]
	v_mad_u64_u32 v[64:65], null, s34, 10, v[66:67]
	v_mad_u64_u32 v[67:68], null, s34, 12, v[66:67]
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v60, 18, v48
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s14, s27, v58
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v61, 20, v48
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s12, s1, s12
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s15, s27, v59
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v79, 0x80000000, v63, s12
	.loc	1 1387 42 is_stmt 0             ; ragged.py:1387:42
	v_mad_u64_u32 v[68:69], null, s34, 14, v[66:67]
	v_mad_u64_u32 v[69:70], null, s34, 18, v[66:67]
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s12, s1, s13
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s16, s27, v60
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v80, 0x80000000, v64, s12
	.loc	1 1387 42 is_stmt 0             ; ragged.py:1387:42
	v_mad_u64_u32 v[63:64], null, s34, 20, v[66:67]
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s12, s1, s14
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s17, s27, v61
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v81, 0x80000000, v67, s12
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s12, s1, s15
	.loc	1 1376 26 is_stmt 1             ; ragged.py:1376:26
	v_or_b32_e32 v45, 22, v48
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v82, 0x80000000, v68, s12
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s12, s1, s16
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mad_u64_u32 v[67:68], null, s34, 22, v[66:67]
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v83, 0x80000000, v69, s12
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s12, s1, s17
	.loc	1 1376 26 is_stmt 1             ; ragged.py:1376:26
	v_or_b32_e32 v65, 28, v48
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v84, 0x80000000, v63, s12
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s12, s27, v45
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v63, 24, v48
	v_or_b32_e32 v64, 26, v48
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mad_u64_u32 v[68:69], null, s34, 24, v[66:67]
	v_mad_u64_u32 v[69:70], null, s34, 26, v[66:67]
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s12, s1, s12
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mad_u64_u32 v[70:71], null, s34, 28, v[66:67]
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s13, s27, v63
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v71, 0x80000000, v67, s12
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s12, s27, v65
	v_cmp_gt_i32_e64 s14, s27, v64
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v88, 30, v48
	v_or_b32_e32 v49, 2, v48
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s13, s1, s13
	s_and_b32 s12, s1, s12
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v50, 4, v48
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v85, 0x80000000, v68, s13
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s13, s1, s14
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v70, 0x80000000, v70, s12
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s12, s27, v48
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mad_u64_u32 v[67:68], null, s34, 30, v[66:67]
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v56, 8, v48
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v69, 0x80000000, v69, s13
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s13, s27, v88
	v_cmp_gt_i32_e32 vcc_lo, s27, v49
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s14, s36, s18
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v90, 16, v48
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_or_b32_e32 v73, 2, v33
	v_or_b32_e32 v74, 3, v33
	v_or_b32_e32 v75, 4, v33
	v_or_b32_e32 v76, 5, v33
	v_or_b32_e32 v77, 6, v33
	v_or_b32_e32 v78, 7, v33
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s2, s27, v50
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_lshl_add_u32 v86, s34, 1, v66
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v44, s19, s14, v44
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s12, s1, s12
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v35, s19, v33
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s3, s27, v56
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_lshl_add_u32 v87, s34, 2, v66
	v_lshl_add_u32 v89, s34, 3, v66
	v_lshl_add_u32 v68, s34, 4, v66
	.loc	1 1387 34 is_stmt 0             ; ragged.py:1387:34
	v_cndmask_b32_e64 v66, 0x80000000, v66, s12
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s12, s1, s13
	.loc	1 1376 26 is_stmt 1             ; ragged.py:1376:26
	v_or_b32_e32 v46, s19, v72
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, vcc_lo
	.loc	1 1387 34 is_stmt 0             ; ragged.py:1387:34
	v_cndmask_b32_e64 v67, 0x80000000, v67, s12
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s12, s27, v90
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v47, s19, v73
	v_or_b32_e32 v51, s19, v74
	v_or_b32_e32 v52, s19, v75
	v_or_b32_e32 v53, s19, v76
	v_or_b32_e32 v54, s19, v77
	v_or_b32_e32 v62, s19, v78
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add_nc_u32_e32 v33, v44, v33
	v_add_nc_u32_e32 v72, v44, v72
	v_add_nc_u32_e32 v73, v44, v73
	v_add_nc_u32_e32 v74, v44, v74
	v_add_nc_u32_e32 v75, v44, v75
	v_add_nc_u32_e32 v76, v44, v76
	v_add_nc_u32_e32 v77, v44, v77
	v_add_nc_u32_e32 v44, v44, v78
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e32 v78, 0x80000000, v86, vcc_lo
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s2
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s4, s27, v35
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e32 v86, 0x80000000, v87, vcc_lo
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s3
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s7, s27, v46
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e32 v87, 0x80000000, v89, vcc_lo
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s12
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s8, s27, v47
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s4
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s9, s27, v51
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s7
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s10, s27, v52
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s8
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s11, s27, v53
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s9
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s6, s27, v54
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v74, 0x80000000, v74, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s10
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s5, s27, v62
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s11
	.loc	1 1387 34 is_stmt 1             ; ragged.py:1387:34
	s_and_b32 s17, s21, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_mov_b32 s16, s20
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s6
	.loc	1 1387 34 is_stmt 1             ; ragged.py:1387:34
	s_clause 0xf
	buffer_load_u8 v66, v66, s[16:19], 0 offen
	buffer_load_u8 v78, v78, s[16:19], 0 offen
	buffer_load_u8 v86, v86, s[16:19], 0 offen
	buffer_load_u8 v87, v87, s[16:19], 0 offen
	buffer_load_u8 v80, v80, s[16:19], 0 offen
	buffer_load_u8 v81, v81, s[16:19], 0 offen
	buffer_load_u8 v82, v82, s[16:19], 0 offen
	buffer_load_u8 v79, v79, s[16:19], 0 offen
	buffer_load_u8 v68, v68, s[16:19], 0 offen
	buffer_load_u8 v83, v83, s[16:19], 0 offen
	buffer_load_u8 v84, v84, s[16:19], 0 offen
	buffer_load_u8 v71, v71, s[16:19], 0 offen
	buffer_load_u8 v85, v85, s[16:19], 0 offen
	buffer_load_u8 v69, v69, s[16:19], 0 offen
	buffer_load_u8 v70, v70, s[16:19], 0 offen
	buffer_load_u8 v67, v67, s[16:19], 0 offen
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_and_b32 s17, s23, 0xffff
	s_mov_b32 s16, s22
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s5
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_dual_cndmask_b32 v44, 0x80000000, v44 :: v_dual_add_nc_u32 v93, 0, v34
	s_clause 0x7
	buffer_load_u8 v89, v33, s[16:19], 0 offen
	buffer_load_u8 v72, v72, s[16:19], 0 offen
	buffer_load_u8 v73, v73, s[16:19], 0 offen
	buffer_load_u8 v74, v74, s[16:19], 0 offen
	buffer_load_u8 v75, v75, s[16:19], 0 offen
	buffer_load_u8 v76, v76, s[16:19], 0 offen
	buffer_load_u8 v77, v77, s[16:19], 0 offen
	buffer_load_u8 v91, v44, s[16:19], 0 offen
	.loc	1 1386 63 is_stmt 1             ; ragged.py:1386:63
	s_add_i32 s27, s27, -1
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_and_b32_e32 v33, 24, v43
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e32 vcc_lo, s27, v35
	v_cmp_eq_u32_e64 s4, s27, v53
	v_cmp_eq_u32_e64 s6, s27, v62
	v_cmp_eq_u32_e64 s7, s27, v48
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_xad_u32 v94, v42, v33, 0
	.loc	1 1386 32                       ; ragged.py:1386:32
	s_and_b32 s22, s41, vcc_lo
	.loc	1 1386 56 is_stmt 0             ; ragged.py:1386:56
	v_cmp_eq_u32_e32 vcc_lo, s27, v49
	v_cmp_eq_u32_e64 s2, s27, v51
	v_cmp_eq_u32_e64 s8, s27, v50
	v_cmp_eq_u32_e64 s10, s27, v56
	v_cmp_eq_u32_e64 s9, s27, v55
	v_cmp_eq_u32_e64 s3, s27, v52
	v_cmp_eq_u32_e64 s5, s27, v54
	v_cmp_eq_u32_e64 s11, s27, v57
	v_cmp_eq_u32_e64 s12, s27, v58
	v_cmp_eq_u32_e64 s13, s27, v59
	v_cmp_eq_u32_e64 s14, s27, v90
	v_cmp_eq_u32_e64 s15, s27, v60
	v_cmp_eq_u32_e64 s16, s27, v61
	v_cmp_eq_u32_e64 s17, s27, v45
	v_cmp_eq_u32_e64 s18, s27, v63
	v_cmp_eq_u32_e64 s19, s27, v64
	v_cmp_eq_u32_e64 s20, s27, v65
	v_cmp_eq_u32_e64 s21, s27, v88
	.loc	1 1386 32                       ; ragged.py:1386:32
	s_and_b32 s7, s41, s7
	s_and_b32 s4, s41, s4
	s_and_b32 s6, s41, s6
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s0, s27, v46
	.loc	1 1386 32                       ; ragged.py:1386:32
	s_and_b32 s23, s41, vcc_lo
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_add_nc_u32_e32 v92, 0, v0
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s1, s27, v47
	.loc	1 1386 32 is_stmt 0             ; ragged.py:1386:32
	s_and_b32 s8, s41, s8
	s_and_b32 s10, s41, s10
	s_and_b32 s9, s41, s9
	s_and_b32 s3, s41, s3
	s_and_b32 s5, s41, s5
	s_and_b32 s14, s41, s14
	s_and_b32 s11, s41, s11
	s_and_b32 s12, s41, s12
	s_and_b32 s13, s41, s13
	s_and_b32 s15, s41, s15
	s_and_b32 s16, s41, s16
	s_and_b32 s17, s41, s17
	s_and_b32 s18, s41, s18
	s_and_b32 s19, s41, s19
	s_and_b32 s20, s41, s20
	s_and_b32 s21, s41, s21
	s_and_b32 s0, s41, s0
	s_and_b32 s2, s41, s2
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1386 32                       ; ragged.py:1386:32
	s_and_b32 s1, s41, s1
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_and_b32_e32 v39, 24, v39
	.loc	1 1389 62                       ; ragged.py:1389:62
	s_waitcnt vmcnt(23)
	v_and_b16 v33.l, v66.l, 15
	s_waitcnt vmcnt(22)
	v_and_b16 v33.h, v78.l, 15
	s_waitcnt vmcnt(21)
	v_and_b16 v35.l, v86.l, 15
	s_waitcnt vmcnt(20)
	v_and_b16 v42.l, v87.l, 15
	s_waitcnt vmcnt(19)
	v_and_b16 v43.l, v80.l, 15
	.loc	1 1389 34 is_stmt 0             ; ragged.py:1389:34
	v_cndmask_b16 v33.l, v66.l, v33.l, s7
	.loc	1 1389 62                       ; ragged.py:1389:62
	s_waitcnt vmcnt(18)
	v_and_b16 v43.h, v81.l, 15
	s_waitcnt vmcnt(16)
	v_and_b16 v42.h, v79.l, 15
	s_waitcnt vmcnt(15)
	v_and_b16 v35.h, v68.l, 15
	v_and_b16 v44.l, v82.l, 15
	s_waitcnt vmcnt(14)
	v_and_b16 v44.h, v83.l, 15
	s_waitcnt vmcnt(13)
	v_and_b16 v45.l, v84.l, 15
	s_waitcnt vmcnt(12)
	v_and_b16 v45.h, v71.l, 15
	s_waitcnt vmcnt(11)
	v_and_b16 v46.l, v85.l, 15
	s_waitcnt vmcnt(10)
	v_and_b16 v46.h, v69.l, 15
	s_waitcnt vmcnt(9)
	v_and_b16 v47.l, v70.l, 15
	s_waitcnt vmcnt(8)
	v_and_b16 v47.h, v67.l, 15
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_cndmask_b16 v33.h, v78.l, v33.h, s23
	.loc	1 1390 62 is_stmt 1             ; ragged.py:1390:62
	s_waitcnt vmcnt(6)
	v_and_b16 v48.h, v72.l, 15
	s_waitcnt vmcnt(3)
	v_and_b16 v50.l, v75.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v50.h, v76.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v51.l, v77.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v51.h, v91.l, 15
	v_and_b16 v49.h, v74.l, 15
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_cndmask_b16 v35.l, v86.l, v35.l, s8
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v50.h, v76.l, v50.h, s4
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_cndmask_b16 v42.l, v87.l, v42.l, s10
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v51.h, v91.l, v51.h, s6
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_cndmask_b16 v42.h, v79.l, v42.h, s9
	v_cndmask_b16 v35.h, v68.l, v35.h, s14
	.loc	1 1390 62                       ; ragged.py:1390:62
	v_and_b16 v48.l, v89.l, 15
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_cndmask_b16 v43.l, v80.l, v43.l, s11
	v_cndmask_b16 v43.h, v81.l, v43.h, s12
	v_cndmask_b16 v44.l, v82.l, v44.l, s13
	v_cndmask_b16 v44.h, v83.l, v44.h, s15
	v_cndmask_b16 v45.l, v84.l, v45.l, s16
	v_cndmask_b16 v45.h, v71.l, v45.h, s17
	v_cndmask_b16 v46.l, v85.l, v46.l, s18
	v_cndmask_b16 v46.h, v69.l, v46.h, s19
	v_cndmask_b16 v47.l, v70.l, v47.l, s20
	v_cndmask_b16 v47.h, v67.l, v47.h, s21
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v50.l, v75.l, v50.l, s3
	v_cndmask_b16 v51.l, v77.l, v51.l, s5
	.loc	1 1389 34                       ; ragged.py:1389:34
	ds_store_b8 v92, v33
	ds_store_b8_d16_hi v92, v33 offset:256
	ds_store_b8 v92, v35 offset:512
	ds_store_b8 v92, v42 offset:1024
	ds_store_b8_d16_hi v92, v42 offset:768
	ds_store_b8 v92, v43 offset:1280
	ds_store_b8_d16_hi v92, v43 offset:1536
	ds_store_b8 v92, v44 offset:1792
	ds_store_b8_d16_hi v92, v35 offset:2048
	ds_store_b8_d16_hi v92, v44 offset:2304
	ds_store_b8 v92, v45 offset:2560
	ds_store_b8_d16_hi v92, v45 offset:2816
	ds_store_b8 v92, v46 offset:3072
	ds_store_b8_d16_hi v92, v46 offset:3328
	ds_store_b8 v92, v47 offset:3584
	ds_store_b8_d16_hi v92, v47 offset:3840
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_lshlrev_b16 v33.l, 8, v51.h
	v_lshlrev_b16 v33.h, 8, v50.h
	.loc	1 1390 62 is_stmt 0             ; ragged.py:1390:62
	v_and_b16 v49.l, v73.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v48.h, v72.l, v48.h, s0
	v_cndmask_b16 v49.h, v74.l, v49.h, s2
	v_cndmask_b16 v48.l, v89.l, v48.l, s22
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_or_b16 v43.h, v51.l, v33.l
	v_or_b16 v43.l, v50.l, v33.h
	.loc	1 1391 31                       ; ragged.py:1391:31
	ds_load_u8 v33, v93 offset:2944
	ds_load_u8 v50, v93 offset:2816
	ds_load_u8 v51, v93 offset:2688
	ds_load_u8 v88, v93 offset:2560
	ds_load_u8 v89, v93 offset:3008
	ds_load_u8 v90, v93 offset:2880
	ds_load_u8 v91, v93 offset:2752
	ds_load_u8 v92, v93 offset:2624
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v49.l, v73.l, v49.l, s1
	.loc	1 1391 31                       ; ragged.py:1391:31
	ds_load_u8 v44, v93 offset:384
	ds_load_u8 v45, v93 offset:256
	ds_load_u8 v46, v93 offset:128
	ds_load_u8 v47, v93
	ds_load_u8 v52, v93 offset:448
	ds_load_u8 v53, v93 offset:320
	ds_load_u8 v54, v93 offset:192
	ds_load_u8 v61, v93 offset:64
	ds_load_u8 v55, v93 offset:896
	ds_load_u8 v56, v93 offset:768
	ds_load_u8 v57, v93 offset:640
	ds_load_u8 v58, v93 offset:512
	ds_load_u8 v62, v93 offset:960
	ds_load_u8 v63, v93 offset:832
	ds_load_u8 v64, v93 offset:704
	ds_load_u8 v65, v93 offset:576
	ds_load_u8 v59, v93 offset:1408
	ds_load_u8 v60, v93 offset:1280
	ds_load_u8 v66, v93 offset:1152
	ds_load_u8 v67, v93 offset:1024
	ds_load_u8 v68, v93 offset:1472
	ds_load_u8 v69, v93 offset:1344
	ds_load_u8 v70, v93 offset:1216
	ds_load_u8 v71, v93 offset:1088
	ds_load_u8 v72, v93 offset:1920
	ds_load_u8 v73, v93 offset:1792
	ds_load_u8 v74, v93 offset:1664
	ds_load_u8 v75, v93 offset:1536
	ds_load_u8 v76, v93 offset:1984
	ds_load_u8 v77, v93 offset:1856
	ds_load_u8 v78, v93 offset:1728
	ds_load_u8 v79, v93 offset:1600
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_lshlrev_b16 v35.l, 8, v49.h
	v_lshlrev_b16 v35.h, 8, v48.h
	.loc	1 1391 31                       ; ragged.py:1391:31
	ds_load_u8 v80, v93 offset:2432
	ds_load_u8 v81, v93 offset:2304
	ds_load_u8 v82, v93 offset:2176
	ds_load_u8 v83, v93 offset:2048
	ds_load_u8 v84, v93 offset:2496
	ds_load_u8 v85, v93 offset:2368
	ds_load_u8 v86, v93 offset:2240
	ds_load_u8 v87, v93 offset:2112
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v54, v61, v54, 0xc0c0004
	v_perm_b32 v52, v53, v52, 0xc0c0004
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_or_b16 v42.h, v49.l, v35.l
	v_or_b16 v42.l, v48.l, v35.h
	.loc	1 1391 31                       ; ragged.py:1391:31
	ds_load_u8 v35, v93 offset:3456
	ds_load_u8 v48, v93 offset:3328
	ds_load_u8 v49, v93 offset:3200
	ds_load_u8 v95, v93 offset:3072
	ds_load_u8 v96, v93 offset:3520
	ds_load_u8 v97, v93 offset:3392
	ds_load_u8 v98, v93 offset:3264
	ds_load_u8 v99, v93 offset:3136
	ds_load_u8 v100, v93 offset:3968
	ds_load_u8 v101, v93 offset:3840
	ds_load_u8 v102, v93 offset:3712
	ds_load_u8 v103, v93 offset:3584
	ds_load_u8 v104, v93 offset:4032
	ds_load_u8 v105, v93 offset:3904
	ds_load_u8 v106, v93 offset:3776
	ds_load_u8 v93, v93 offset:3648
	.loc	1 1390 34                       ; ragged.py:1390:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1391 31                       ; ragged.py:1391:31
	v_perm_b32 v64, v65, v64, 0xc0c0004
	.loc	1 1390 34                       ; ragged.py:1390:34
	ds_store_b64 v94, v[42:43]
	v_or3_b32 v94, v40, v39, v41
	.loc	1 1391 31                       ; ragged.py:1391:31
	v_perm_b32 v39, v58, v57, 0xc0c0004
	v_perm_b32 v40, v56, v55, 0xc0c0004
	v_perm_b32 v33, v50, v33, 0xc0c0004
	v_perm_b32 v42, v45, v44, 0xc0c0004
	v_perm_b32 v43, v75, v74, 0xc0c0004
	v_perm_b32 v44, v73, v72, 0xc0c0004
	v_lshl_or_b32 v56, v40, 16, v39
	v_perm_b32 v39, v88, v51, 0xc0c0004
	v_perm_b32 v41, v47, v46, 0xc0c0004
	v_perm_b32 v45, v67, v66, 0xc0c0004
	v_perm_b32 v46, v60, v59, 0xc0c0004
	v_perm_b32 v40, v83, v82, 0xc0c0004
	v_perm_b32 v47, v81, v80, 0xc0c0004
	v_lshl_or_b32 v60, v33, 16, v39
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_add_nc_u32_e32 v39, 0, v94
	.loc	1 1391 31                       ; ragged.py:1391:31
	v_lshl_or_b32 v58, v44, 16, v43
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_xad_u32 v43, v94, 8, 0
	.loc	1 1391 31                       ; ragged.py:1391:31
	v_lshl_or_b32 v55, v42, 16, v41
	v_lshl_or_b32 v57, v46, 16, v45
	v_lshl_or_b32 v59, v47, 16, v40
	.loc	1 1390 34                       ; ragged.py:1390:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[39:42], v39 offset1:2
	ds_load_2addr_stride64_b64 v[43:46], v43 offset1:2
	v_xad_u32 v47, v94, 16, 0
	.loc	1 1391 31                       ; ragged.py:1391:31
	v_perm_b32 v33, v103, v102, 0xc0c0004
	v_perm_b32 v51, v101, v100, 0xc0c0004
	v_perm_b32 v66, v95, v49, 0xc0c0004
	v_perm_b32 v35, v48, v35, 0xc0c0004
	v_perm_b32 v62, v63, v62, 0xc0c0004
	.loc	1 1390 34                       ; ragged.py:1390:34
	ds_load_2addr_stride64_b64 v[47:50], v47 offset1:2
	.loc	1 1391 31                       ; ragged.py:1391:31
	v_lshl_or_b32 v61, v52, 16, v54
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_xad_u32 v52, v94, 24, 0
	.loc	1 1391 31                       ; ragged.py:1391:31
	v_perm_b32 v65, v79, v78, 0xc0c0004
	v_lshl_or_b32 v62, v62, 16, v64
	v_perm_b32 v67, v77, v76, 0xc0c0004
	v_lshl_or_b32 v64, v51, 16, v33
	v_perm_b32 v33, v71, v70, 0xc0c0004
	v_lshl_or_b32 v63, v35, 16, v66
	.loc	1 1390 34                       ; ragged.py:1390:34
	ds_load_2addr_stride64_b64 v[51:54], v52 offset1:2
	.loc	1 1391 31                       ; ragged.py:1391:31
	v_perm_b32 v35, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[39:40], v[55:56], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[41:42], v[55:56], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[39:40], v[61:62], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v40, v67, 16, v65
	v_lshl_or_b32 v39, v35, 16, v33
	v_perm_b32 v33, v92, v91, 0xc0c0004
	v_perm_b32 v35, v90, v89, 0xc0c0004
	v_perm_b32 v55, v87, v86, 0xc0c0004
	v_perm_b32 v56, v85, v84, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[41:42], v[61:62], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[57:58], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[43:44], v[39:40], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v44, v35, 16, v33
	v_lshl_or_b32 v43, v56, 16, v55
	v_perm_b32 v33, v93, v106, 0xc0c0004
	v_perm_b32 v35, v105, v104, 0xc0c0004
	v_perm_b32 v41, v99, v98, 0xc0c0004
	v_perm_b32 v42, v97, v96, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[45:46], v[57:58], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[45:46], v[39:40], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[47:48], v[59:60], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[47:48], v[43:44], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v40, v35, 16, v33
	v_lshl_or_b32 v39, v42, 16, v41
	v_wmma_i32_16x16x16_iu4 v[17:24], v[49:50], v[59:60], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[49:50], v[43:44], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[51:52], v[63:64], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[51:52], v[39:40], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[53:54], v[63:64], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[53:54], v[39:40], v[25:32] neg_lo:[1,1,0]
.LBB0_8:
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v33, 4, v0
	v_lshrrev_b32_e32 v35, 1, v38
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v39, 64, v34
	.loc	1 1404 33                       ; ragged.py:1404:33
	s_mul_i32 s37, s30, s34
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_and_b32 s25, s25, 0xffff
	.loc	1 1404 21                       ; ragged.py:1404:21
	s_add_i32 s0, s40, s37
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_and_or_b32 v33, v33, 1, v35
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v35, s40, v34
	v_or_b32_e32 v40, s40, v39
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_lshl_u32 v34, s0, v34, 1
	v_add_lshl_u32 v39, s0, v39, 1
	s_mov_b32 s27, 0x31027000
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v35
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v41, 2, v33
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v56, s31, v33
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v42, 4, v33
	.loc	1 1403 36 is_stmt 1             ; ragged.py:1403:36
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v40
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v43, 6, v33
	v_or_b32_e32 v44, 8, v33
	v_or_b32_e32 v45, 10, v33
	v_or_b32_e32 v46, 12, v33
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e32 v35, 0x80000000, v39, vcc_lo
	s_clause 0x1
	buffer_load_u16 v39, v34, s[24:27], 0 offen
	buffer_load_u16 v35, v35, s[24:27], 0 offen
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v47, 14, v33
	v_or_b32_e32 v48, 32, v33
	v_or_b32_e32 v49, 34, v33
	v_or_b32_e32 v50, 36, v33
	v_or_b32_e32 v51, 38, v33
	v_or_b32_e32 v52, 40, v33
	v_or_b32_e32 v53, 42, v33
	v_or_b32_e32 v54, 44, v33
	v_or_b32_e32 v55, 46, v33
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v57, s31, v41
	.loc	1 1410 36 is_stmt 1             ; ragged.py:1410:36
	v_add_lshl_u32 v33, s36, v33, 1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v56
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v58, s31, v42
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v34, s36, v41, 1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v59, s31, v43
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v40, s36, v42, 1
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v57
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v60, s31, v44
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v41, s36, v43, 1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v61, s31, v45
	v_or_b32_e32 v62, s31, v46
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v58
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v63, s31, v47
	v_or_b32_e32 v64, s31, v48
	v_or_b32_e32 v65, s31, v49
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v48, s36, v48, 1
	v_cndmask_b32_e32 v42, 0x80000000, v40, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v59
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v40, s36, v44, 1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v66, s31, v50
	v_or_b32_e32 v67, s31, v51
	v_or_b32_e32 v68, s31, v52
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v43, 0x80000000, v41, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v60
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v41, s36, v45, 1
	v_add_lshl_u32 v45, s36, v47, 1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v69, s31, v53
	v_or_b32_e32 v70, s31, v54
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v44, 0x80000000, v40, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v61
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v40, s36, v46, 1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v71, s31, v55
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s30, s26
	v_cndmask_b32_e32 v46, 0x80000000, v41, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v62
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_mov_b32 s31, s27
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v56, 0x80000000, v40, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v63
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshl_or_b32 v37, v37, 1, v38
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v2, v2
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v57, 0x80000000, v45, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v64
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_clause 0x7
	buffer_load_u16 v47, v33, s[28:31], 0 offen
	buffer_load_u16 v40, v34, s[28:31], 0 offen
	buffer_load_u16 v41, v42, s[28:31], 0 offen
	buffer_load_u16 v42, v43, s[28:31], 0 offen
	buffer_load_u16 v43, v44, s[28:31], 0 offen
	buffer_load_u16 v44, v46, s[28:31], 0 offen
	buffer_load_u16 v45, v56, s[28:31], 0 offen
	buffer_load_u16 v46, v57, s[28:31], 0 offen
	v_add_lshl_u32 v33, s36, v49, 1
	v_add_lshl_u32 v49, s36, v51, 1
	v_add_lshl_u32 v51, s36, v53, 1
	v_cndmask_b32_e32 v34, 0x80000000, v48, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v65
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v48, s36, v50, 1
	v_add_lshl_u32 v53, s36, v55, 1
	v_add_lshl_u32 v50, s36, v52, 1
	v_add_lshl_u32 v52, s36, v54, 1
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v66
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v57, v1
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v67
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v7, v7
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v68
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v25, v25
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v69
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v27, v27
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v51, 0x80000000, v51, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v70
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v29, v29
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v52, 0x80000000, v52, vcc_lo
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v71
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v31, v31
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e32 v53, 0x80000000, v53, vcc_lo
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v1.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v58.h, v1.h
	v_mov_b16_e32 v59.h, v1.h
	v_mov_b16_e32 v62.h, v1.h
	v_mov_b16_e32 v65.h, v1.h
	v_mov_b16_e32 v61.h, v1.h
	v_mov_b16_e32 v60.h, v1.h
	v_mov_b16_e32 v69.h, v1.h
	v_mov_b16_e32 v63.h, v1.h
	v_mov_b16_e32 v66.h, v1.h
	v_mov_b16_e32 v68.h, v1.h
	v_mov_b16_e32 v67.h, v1.h
	v_mov_b16_e32 v70.h, v1.h
	v_mov_b16_e32 v72.h, v1.h
	v_mov_b16_e32 v71.h, v1.h
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v39, 16, v39
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_clause 0x7
	buffer_load_u16 v54, v34, s[28:31], 0 offen
	buffer_load_u16 v55, v33, s[28:31], 0 offen
	buffer_load_u16 v48, v48, s[28:31], 0 offen
	buffer_load_u16 v49, v49, s[28:31], 0 offen
	buffer_load_u16 v50, v50, s[28:31], 0 offen
	buffer_load_u16 v51, v51, s[28:31], 0 offen
	buffer_load_u16 v52, v52, s[28:31], 0 offen
	buffer_load_u16 v53, v53, s[28:31], 0 offen
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_and_b32_e32 v33, 31, v0
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshlrev_b32_e32 v38, 2, v36
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v9, v9, v39 :: v_dual_and_b32 v56, 0xe0, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v13, v13, v39 :: v_dual_lshlrev_b32 v64, 2, v33
	v_mul_f32_e32 v12, v12, v39
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v35, 16, v35
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshrrev_b32_e32 v73, 3, v56
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v10, v10, v39
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshl_or_b32 v36, v36, 9, v64
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v11, v11, v39
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshl_or_b32 v38, v56, 4, v38
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v14, v14, v39
	v_mul_f32_e32 v16, v16, v39
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xor_b32_e32 v36, v36, v37
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v15, v15, v39
	v_mul_f32_e32 v17, v17, v39
	v_mul_f32_e32 v18, v18, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v19, v19, v39 :: v_dual_add_nc_u32 v56, 0, v36
	v_mul_f32_e32 v20, v20, v39
	v_mul_f32_e32 v21, v21, v39
	v_mul_f32_e32 v22, v22, v39
	v_mul_f32_e32 v23, v23, v39
	v_mul_f32_e32 v2, v2, v35
	v_mul_f32_e32 v3, v3, v35
	v_mul_f32_e32 v24, v24, v39
	v_mul_f32_e32 v5, v5, v35
	v_mul_f32_e32 v4, v4, v35
	v_mul_f32_e32 v6, v6, v35
	v_mul_f32_e32 v8, v8, v35
	v_mul_f32_e32 v7, v7, v35
	v_mul_f32_e32 v26, v26, v35
	v_mul_f32_e32 v27, v27, v35
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v37.h, v1.h
	v_mov_b16_e32 v64.h, v1.h
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v74, v36, 4, 0
	v_xad_u32 v81, 0x2040, v36, 0
	v_xad_u32 v82, 0x2044, v36, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xad_u32 v75, v36, 8, 0
	v_xad_u32 v83, 0x2048, v36, 0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_bfe_i32 v34, v0, 4, 1
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v76, v36, 12, 0
	v_xad_u32 v77, v36, 16, 0
	v_xad_u32 v78, v36, 20, 0
	v_xad_u32 v84, 0x204c, v36, 0
	v_xad_u32 v85, 0x2050, v36, 0
	v_xad_u32 v79, v36, 24, 0
	v_xad_u32 v80, v36, 28, 0
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v0, 5, v0
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v39, 16, v47
	.loc	1 1408 17                       ; ragged.py:1408:17
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v47, v57, v35 :: v_dual_lshlrev_b32 v48, 16, v48
	v_mul_f32_e32 v30, v30, v35
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v32, v32, v35 :: v_dual_lshlrev_b32 v49, 16, v49
	v_mul_f32_e32 v25, v25, v35
	v_mul_f32_e32 v28, v28, v35
	v_mul_f32_e32 v29, v29, v35
	v_mul_f32_e32 v31, v31, v35
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_lshlrev_b32_e32 v35, 16, v40
	v_lshlrev_b32_e32 v40, 16, v41
	v_lshlrev_b32_e32 v41, 16, v42
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v50, 16, v50
	v_lshlrev_b32_e32 v42, 16, v43
	v_lshlrev_b32_e32 v43, 16, v44
	v_lshlrev_b32_e32 v44, 16, v45
	v_lshlrev_b32_e32 v45, 16, v46
	v_lshlrev_b32_e32 v46, 16, v54
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v21, v21, v50
	v_mul_f32_e32 v13, v13, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v15, v15, v44 :: v_dual_mul_f32 v16, v16, v45
	v_dual_mul_f32 v5, v5, v42 :: v_dual_mul_f32 v4, v4, v41
	v_mul_f32_e32 v47, v47, v39
	v_mul_f32_e32 v9, v9, v39
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v39, 16, v51
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v51, 16, v52
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v52, 16, v53
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v20, v20, v49
	v_dual_mul_f32 v29, v29, v50 :: v_dual_lshlrev_b32 v54, 16, v55
	v_mul_f32_e32 v3, v3, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v17, v17, v46 :: v_dual_mul_f32 v24, v24, v52
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v1.l, v47.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v10, v10, v35
	v_dual_mul_f32 v26, v26, v54 :: v_dual_mul_f32 v27, v27, v48
	v_mul_f32_e32 v32, v32, v52
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v58.l, v9.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v2, v2, v35 :: v_dual_mul_f32 v11, v11, v40
	v_mul_f32_e32 v19, v19, v48
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_and_b32_e32 v35, 1, v1
	v_mov_b16_e32 v59.l, v10.h
	v_mov_b16_e32 v62.l, v13.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v22, v22, v39
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v65.l, v15.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v30, v30, v39 :: v_dual_and_b32 v39, 1, v58
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_mov_b16_e32 v1.l, v2.h
	v_cmp_o_f32_e64 s0, v9, v9
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v12, v12, v41
	v_mul_f32_e32 v14, v14, v43
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v9, v9, v39, 0x7fff
	v_and_b32_e32 v39, 1, v1
	v_and_b32_e32 v40, 1, v59
	v_mov_b16_e32 v1.l, v3.h
	v_add3_u32 v35, v47, v35, 0x7fff
	v_cmp_o_f32_e64 s2, v10, v10
	v_mov_b16_e32 v61.l, v12.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v23, v23, v51
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v35.l, 0x7fff, v9.h, s0
	v_add3_u32 v9, v10, v40, 0x7fff
	v_and_b32_e32 v10, 1, v1
	v_mov_b16_e32 v1.l, v4.h
	v_cmp_o_f32_e64 s1, v2, v2
	v_mov_b16_e32 v60.l, v11.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v6, v6, v43
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_and_b32_e32 v42, 1, v61
	v_mov_b16_e32 v37.l, v23.h
	v_add3_u32 v2, v2, v39, 0x7fff
	v_and_b32_e32 v39, 1, v1
	v_mov_b16_e32 v1.l, v5.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v8, v8, v45 :: v_dual_mul_f32 v7, v7, v44
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_and_b32_e32 v41, 1, v60
	v_and_b32_e32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v40, 1, v1
	v_mov_b16_e32 v1.l, v6.h
	v_mov_b16_e32 v69.l, v20.h
	v_cmp_o_f32_e64 s28, v23, v23
	v_and_b32_e32 v45, 1, v65
	v_add3_u32 v23, v23, v37, 0x7fff
	v_and_b32_e32 v37, 1, v1
	v_mov_b16_e32 v1.l, v7.h
	v_mov_b16_e32 v64.l, v19.h
	v_and_b32_e32 v43, 1, v62
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v18, v18, v54
	v_mul_f32_e32 v25, v25, v46
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s3, v3, v3
	v_cmp_o_f32_e64 s12, v15, v15
	v_and_b32_e32 v50, 1, v69
	v_add3_u32 v15, v15, v45, 0x7fff
	v_add3_u32 v3, v3, v10, 0x7fff
	v_and_b32_e32 v10, 1, v1
	v_mov_b16_e32 v1.l, v8.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v28, v28, v49
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s8, v13, v13
	v_and_b32_e32 v49, 1, v64
	v_add3_u32 v13, v13, v43, 0x7fff
	v_cmp_o_f32_e64 s22, v20, v20
	v_add3_u32 v20, v20, v50, 0x7fff
	v_cndmask_b16 v13.l, 0x7fff, v15.h, s12
	v_and_b32_e32 v15, 1, v1
	v_mov_b16_e32 v1.l, v25.h
	v_cmp_o_f32_e64 s20, v19, v19
	v_add3_u32 v19, v19, v49, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v20.h, s22
	v_cmp_o_f32_e64 s4, v11, v11
	v_and_b32_e32 v20, 1, v1
	v_mov_b16_e32 v1.l, v26.h
	v_add3_u32 v11, v11, v41, 0x7fff
	v_cmp_o_f32_e64 s5, v4, v4
	v_cmp_o_f32_e64 s7, v5, v5
	v_mov_b16_e32 v63.l, v14.h
	v_and_b32_e32 v41, 1, v1
	v_mov_b16_e32 v1.l, v27.h
	v_cmp_o_f32_e64 s9, v6, v6
	v_mov_b16_e32 v66.l, v16.h
	v_add3_u32 v4, v4, v39, 0x7fff
	v_add3_u32 v5, v5, v40, 0x7fff
	v_add3_u32 v6, v6, v37, 0x7fff
	v_and_b32_e32 v37, 1, v1
	v_mov_b16_e32 v1.l, v28.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v31, v31, v51 :: v_dual_and_b32 v46, 1, v66
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s6, v12, v12
	v_cmp_o_f32_e64 s11, v7, v7
	v_mov_b16_e32 v68.l, v18.h
	v_and_b32_e32 v44, 1, v63
	v_add3_u32 v12, v12, v42, 0x7fff
	v_cndmask_b16 v2.l, 0x7fff, v9.h, s2
	v_cndmask_b16 v3.l, 0x7fff, v11.h, s4
	v_cndmask_b16 v9.h, 0x7fff, v4.h, s5
	v_add3_u32 v4, v7, v10, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v5.h, s7
	v_and_b32_e32 v5, 1, v1
	v_mov_b16_e32 v1.l, v29.h
	v_mov_b16_e32 v67.l, v17.h
	v_cmp_o_f32_e64 s10, v14, v14
	v_cmp_o_f32_e64 s13, v8, v8
	v_cmp_o_f32_e64 s14, v16, v16
	v_cmp_o_f32_e64 s15, v25, v25
	v_and_b32_e32 v48, 1, v68
	v_add3_u32 v14, v14, v44, 0x7fff
	v_add3_u32 v16, v16, v46, 0x7fff
	v_cndmask_b16 v9.l, 0x7fff, v12.h, s6
	v_cndmask_b16 v11.l, 0x7fff, v13.h, s8
	v_cndmask_b16 v12.h, 0x7fff, v6.h, s9
	v_cndmask_b16 v13.h, 0x7fff, v4.h, s11
	v_add3_u32 v4, v8, v15, 0x7fff
	v_add3_u32 v6, v25, v20, 0x7fff
	v_and_b32_e32 v8, 1, v1
	v_mov_b16_e32 v1.l, v30.h
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	v_and_b32_e32 v47, 1, v67
	v_cmp_o_f32_e64 s18, v18, v18
	v_cmp_o_f32_e64 s19, v27, v27
	v_add3_u32 v18, v18, v48, 0x7fff
	v_cndmask_b16 v12.l, 0x7fff, v14.h, s10
	v_cndmask_b16 v14.l, 0x7fff, v16.h, s14
	v_cndmask_b16 v14.h, 0x7fff, v4.h, s13
	v_cndmask_b16 v16.h, 0x7fff, v6.h, s15
	v_add3_u32 v4, v27, v37, 0x7fff
	v_and_b32_e32 v6, 1, v1
	v_mov_b16_e32 v1.l, v31.h
	v_mov_b16_e32 v70.l, v21.h
	v_cmp_o_f32_e64 s16, v17, v17
	v_cmp_o_f32_e64 s17, v26, v26
	v_add3_u32 v17, v17, v47, 0x7fff
	v_add3_u32 v7, v26, v41, 0x7fff
	v_mov_b16_e32 v72.l, v24.h
	v_cndmask_b16 v17.l, 0x7fff, v18.h, s18
	v_cndmask_b16 v18.h, 0x7fff, v4.h, s19
	v_add3_u32 v4, v28, v5, 0x7fff
	v_and_b32_e32 v5, 1, v1
	v_mov_b16_e32 v1.l, v32.h
	v_mov_b16_e32 v71.l, v22.h
	v_and_b32_e32 v51, 1, v70
	v_cndmask_b16 v35.h, 0x7fff, v35.h, vcc_lo
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s1
	v_cndmask_b16 v16.l, 0x7fff, v17.h, s16
	v_cndmask_b16 v17.h, 0x7fff, v7.h, s17
	v_and_b32_e32 v53, 1, v72
	v_and_b32_e32 v1, 1, v1
	v_cmp_o_f32_e64 s23, v29, v29
	v_cmp_o_f32_e64 s24, v21, v21
	v_and_b32_e32 v52, 1, v71
	v_add3_u32 v21, v21, v51, 0x7fff
	.loc	1 1534 34                       ; ragged.py:1534:34
	ds_store_b32 v56, v35
	ds_store_b32 v81, v16
	ds_store_b32 v74, v2
	ds_store_b32 v82, v17
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v2, v29, v8, 0x7fff
	v_cmp_o_f32_e64 s29, v32, v32
	v_cmp_o_f32_e64 s30, v24, v24
	v_add3_u32 v24, v24, v53, 0x7fff
	v_add3_u32 v1, v32, v1, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v18.l, 0x7fff, v19.h, s20
	v_cmp_o_f32_e64 s21, v28, v28
	v_cmp_o_f32_e64 s25, v30, v30
	v_cmp_o_f32_e64 s26, v22, v22
	v_add3_u32 v22, v22, v52, 0x7fff
	v_cndmask_b16 v21.l, 0x7fff, v21.h, s24
	v_cndmask_b16 v21.h, 0x7fff, v2.h, s23
	v_add3_u32 v2, v30, v6, 0x7fff
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s30
	v_cndmask_b16 v24.h, 0x7fff, v1.h, s29
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xor_b32_e32 v1, v38, v73
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s27, v31, v31
	.loc	1 1534 34                       ; ragged.py:1534:34
	ds_store_b32 v75, v3
	ds_store_b32 v83, v18
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v3, v31, v5, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s26
	v_cndmask_b16 v19.h, 0x7fff, v4.h, s21
	v_cndmask_b16 v22.h, 0x7fff, v2.h, s25
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v2, 0x2054, v36, 0
	v_and_or_b32 v1, 0x2040, v34, v1
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s28
	v_cndmask_b16 v23.h, 0x7fff, v3.h, s27
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v3, 0x2058, v36, 0
	ds_store_b32 v76, v9
	ds_store_b32 v84, v19
	ds_store_b32 v77, v11
	ds_store_b32 v85, v21
	ds_store_b32 v78, v12
	ds_store_b32 v2, v22
	v_xad_u32 v2, 0x205c, v36, 0
	ds_store_b32 v79, v13
	ds_store_b32 v3, v23
	v_add_nc_u32_e32 v3, 0, v1
	ds_store_b32 v80, v14
	ds_store_b32 v2, v24
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
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_lshr_b32 s0, s35, 31
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v17, s40, v0
	.loc	1 1536 31                       ; ragged.py:1536:31
	v_lshl_or_b32 v0, s33, 5, v33
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
	s_cbranch_execz .LBB0_10
; %bb.9:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s37, v17
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
	v_add_co_u32 v18, s0, s38, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s39, v19, s0
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
	v_add_nc_u32_e32 v18, s37, v18
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
	v_add_co_u32 v18, s0, s38, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s39, v19, s0
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
	v_add_nc_u32_e32 v18, s37, v18
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
	v_add_co_u32 v18, s0, s38, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s39, v19, s0
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
	v_add_nc_u32_e32 v18, s37, v18
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
	v_add_co_u32 v18, s0, s38, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s39, v19, s0
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
	v_add_nc_u32_e32 v18, s37, v18
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
	v_add_co_u32 v18, s0, s38, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s39, v19, s0
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
	v_add_nc_u32_e32 v18, s37, v18
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
	v_add_co_u32 v18, s0, s38, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s39, v19, s0
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
	v_add_nc_u32_e32 v18, s37, v18
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
	v_add_co_u32 v18, s0, s38, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s39, v19, s0
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
	v_add_nc_u32_e32 v18, s37, v18
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
	v_add_co_u32 v18, s0, s38, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s39, v19, s0
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
	v_add_nc_u32_e32 v18, s37, v18
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
	v_add_co_u32 v18, s0, s38, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s39, v19, s0
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
	v_add_nc_u32_e32 v13, s37, v13
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
	v_add_co_u32 v18, s0, s38, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s39, v19, s0
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
	v_add_nc_u32_e32 v9, s37, v9
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[18:19], null, v9, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v9, v14, v16, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v13, s0, s38, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v14, null, s39, v19, s0
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
	v_add_nc_u32_e32 v9, s37, v9
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
	v_add_co_u32 v9, s0, s38, v13
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s39, v14, s0
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
	v_add_nc_u32_e32 v9, s37, v9
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
	v_add_co_u32 v9, s0, s38, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s39, v10, s0
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
	v_add_nc_u32_e32 v5, s37, v5
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
	v_add_co_u32 v9, s0, s38, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s39, v10, s0
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
	v_add_nc_u32_e32 v1, s37, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[9:10], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v6, v8, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v10, 31, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	v_add_co_u32 v5, s0, s38, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, s39, v10, s0
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
	v_add_nc_u32_e32 v1, s37, v1
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
	v_add_co_u32 v0, vcc_lo, s38, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s39, v1, vcc_lo
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[0:1], v2, off
.LBB0_40:
	.loc	1 1276 5 is_stmt 1              ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 107
		.amdhsa_next_free_sgpr 48
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.num_vgpr, 107
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10252
; TotalNumSgprs: 50
; NumVgprs: 107
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 13
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 107
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     107
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
