	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b128 s[40:43], s[0:1], 0x20
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
	s_clause 0x1
	s_load_b256 s[20:27], s[0:1], 0x0
	s_load_b32 s14, s[0:1], 0x38
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v60, 0x7f, v0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v42, 2, v0
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v44, 15, v0
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_lshlrev_b32_e32 v38, 3, v0
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v37, 32, v0
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v45, 0xc0, v0
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_and_b32_e32 v43, 0x80, v0
	v_lshlrev_b32_e32 v40, 1, v0
	v_and_b32_e32 v33, 24, v38
	v_lshlrev_b32_e32 v39, 5, v44
	v_lshlrev_b32_e32 v41, 4, v37
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s28, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s29, 63
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s5, s4
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
	.loc	1 1355 39                       ; ragged.py:1355:39
	s_mul_i32 s12, s30, s14
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s8, s2, s5
	.loc	1 1359 39                       ; ragged.py:1359:39
	s_mul_i32 s15, s30, s29
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_ashr_i32 s8, s8, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s9, v1
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_and_b32_e32 v36, 24, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 1306 17                       ; ragged.py:1306:17
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
	s_sub_i32 s2, s2, s7
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s33, s6, 7
	.loc	1 1310 18                       ; ragged.py:1310:18
	s_lshl_b32 s31, s2, 6
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_add_u32 s4, s40, s4
	s_addc_u32 s5, s41, s5
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v1, s33, v60
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s16, s[4:5], 0x0
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s31, v42
	.loc	1 1322 22                       ; ragged.py:1322:22
	s_lshl_b32 s13, s3, 5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s1, s28, v1
	.loc	1 1350 21                       ; ragged.py:1350:21
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s0, s16, 31
	s_lshr_b32 s0, s0, 26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s0, s16, s0
	s_ashr_i32 s2, s0, 6
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s29, v2
	.loc	1 1349 39                       ; ragged.py:1349:39
	s_lshl_b32 s2, s2, 5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cmp_ge_i32 s13, s2
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_lshrrev_b32_e32 v1, 4, v43
	v_xor_b32_e32 v10, v38, v36
	v_mov_b32_e32 v9, 0
	v_and_b32_e32 v3, 24, v40
	v_lshrrev_b32_e32 v4, 3, v45
	v_mul_lo_u32 v2, s28, v1
	v_add_nc_u32_e32 v52, 0, v10
	v_mov_b32_e32 v10, v9
	v_xor3_b32 v1, v36, v1, v3
	v_xor_b32_e32 v4, v3, v4
	v_or3_b32 v3, v3, v41, v39
	v_add3_u32 v6, s31, s15, v42
	s_mov_b32 s7, 0x31027000
	v_lshl_or_b32 v1, v60, 5, v1
	s_mov_b32 s6, 0x7ffffffe
	v_xor_b32_e32 v12, 16, v3
	v_mad_u64_u32 v[34:35], null, v6, s14, v[33:34]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v46, 0, v1
	v_lshlrev_b32_e32 v5, 3, v45
	v_dual_mov_b32 v30, v9 :: v_dual_add_nc_u32 v55, 0, v12
	v_mov_b32_e32 v12, v9
	v_xor_b32_e32 v11, 8, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v4, v4, v5, v39
	v_xor_b32_e32 v5, 16, v1
	v_xor_b32_e32 v13, 24, v3
	.loc	1 1352 23                       ; ragged.py:1352:23
	v_add3_u32 v35, v60, v2, s33
	v_dual_mov_b32 v28, v9 :: v_dual_add_nc_u32 v53, 0, v3
	v_xor_b32_e32 v6, 8, v4
	v_xor_b32_e32 v7, 16, v4
	v_xor_b32_e32 v8, 24, v4
	v_dual_mov_b32 v14, v9 :: v_dual_add_nc_u32 v47, 0, v5
	v_add_nc_u32_e32 v48, 0, v4
	v_dual_mov_b32 v16, v9 :: v_dual_add_nc_u32 v49, 0, v6
	v_add_nc_u32_e32 v50, 0, v7
	v_dual_mov_b32 v26, v9 :: v_dual_add_nc_u32 v51, 0, v8
	v_dual_mov_b32 v25, v9 :: v_dual_add_nc_u32 v54, 0, v11
	v_dual_mov_b32 v27, v9 :: v_dual_add_nc_u32 v56, 0, v13
	v_mov_b32_e32 v11, v9
	v_mov_b32_e32 v13, v9
	v_mov_b32_e32 v15, v9
	v_mov_b32_e32 v29, v9
	v_mov_b32_e32 v31, v9
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
	s_lshl_b32 s3, s28, 1
	s_mul_i32 s17, s28, 3
	s_lshl_b32 s18, s28, 2
	s_mul_i32 s19, s28, 5
	s_mul_i32 s34, s28, 6
	s_mul_i32 s35, s28, 7
	s_lshl_b32 s36, s28, 4
	s_mul_i32 s37, s28, 17
	s_mul_i32 s38, s28, 18
	s_mul_i32 s39, s28, 19
	s_mul_i32 s40, s28, 20
	s_mul_i32 s41, s28, 21
	s_mul_i32 s44, s28, 22
	s_mul_i32 s45, s28, 23
	s_and_b32 s5, s21, 0xffff
	s_mov_b32 s4, s20
	s_and_b32 s9, s23, 0xffff
	s_mov_b32 s8, s22
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1362 42                       ; ragged.py:1362:42
	s_add_i32 s46, s13, s12
	.loc	1 1363 42                       ; ragged.py:1363:42
	v_add_nc_u32_e32 v59, s13, v34
	v_mad_u64_u32 v[57:58], null, s46, s28, v[35:36]
	.loc	1 1374 21                       ; ragged.py:1374:21
	s_add_i32 s13, s13, 32
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cmp_lt_i32 s13, s2
	v_add_nc_u32_e32 v66, s35, v57
	v_add_nc_u32_e32 v64, s19, v57
	v_add_nc_u32_e32 v62, s17, v57
	v_add_nc_u32_e32 v58, s28, v57
	v_add_nc_u32_e32 v63, s18, v57
	v_add_nc_u32_e32 v65, s34, v57
	v_add_nc_u32_e32 v67, s36, v57
	v_add_nc_u32_e32 v68, s37, v57
	v_add_nc_u32_e32 v69, s38, v57
	v_add_nc_u32_e32 v70, s39, v57
	v_add_nc_u32_e32 v71, s40, v57
	v_add_nc_u32_e32 v72, s41, v57
	v_add_nc_u32_e32 v73, s44, v57
	v_add_nc_u32_e32 v74, s45, v57
	v_add_nc_u32_e32 v61, s3, v57
	.loc	1 1362 34                       ; ragged.py:1362:34
	v_cndmask_b32_e64 v57, 0x80000000, v57, s1
	v_cndmask_b32_e64 v66, 0x80000000, v66, s1
	v_cndmask_b32_e64 v64, 0x80000000, v64, s1
	v_cndmask_b32_e64 v62, 0x80000000, v62, s1
	v_cndmask_b32_e64 v58, 0x80000000, v58, s1
	v_cndmask_b32_e64 v63, 0x80000000, v63, s1
	v_cndmask_b32_e64 v65, 0x80000000, v65, s1
	v_cndmask_b32_e64 v67, 0x80000000, v67, s1
	v_cndmask_b32_e64 v68, 0x80000000, v68, s1
	v_cndmask_b32_e64 v69, 0x80000000, v69, s1
	v_cndmask_b32_e64 v70, 0x80000000, v70, s1
	v_cndmask_b32_e64 v71, 0x80000000, v71, s1
	v_cndmask_b32_e64 v72, 0x80000000, v72, s1
	v_cndmask_b32_e64 v73, 0x80000000, v73, s1
	v_cndmask_b32_e64 v74, 0x80000000, v74, s1
	v_cndmask_b32_e64 v61, 0x80000000, v61, s1
	s_clause 0xf
	buffer_load_u8 v75, v57, s[4:7], 0 offen
	buffer_load_u8 v57, v66, s[4:7], 0 offen
	buffer_load_u8 v64, v64, s[4:7], 0 offen
	buffer_load_u8 v62, v62, s[4:7], 0 offen
	buffer_load_u8 v66, v58, s[4:7], 0 offen
	buffer_load_u8 v74, v74, s[4:7], 0 offen
	buffer_load_u8 v72, v72, s[4:7], 0 offen
	buffer_load_u8 v70, v70, s[4:7], 0 offen
	buffer_load_u8 v68, v68, s[4:7], 0 offen
	buffer_load_u8 v65, v65, s[4:7], 0 offen
	buffer_load_u8 v63, v63, s[4:7], 0 offen
	buffer_load_u8 v76, v61, s[4:7], 0 offen
	buffer_load_u8 v73, v73, s[4:7], 0 offen
	buffer_load_u8 v71, v71, s[4:7], 0 offen
	buffer_load_u8 v69, v69, s[4:7], 0 offen
	buffer_load_u8 v67, v67, s[4:7], 0 offen
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_cndmask_b32_e64 v58, 0x80000000, v59, s0
	buffer_load_b64 v[77:78], v58, s[8:11], 0 offen
	.loc	1 1362 34                       ; ragged.py:1362:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	v_lshlrev_b16 v57.l, 8, v57.l
	s_waitcnt vmcnt(14)
	v_lshlrev_b16 v57.h, 8, v64.l
	s_waitcnt vmcnt(13)
	v_lshlrev_b16 v58.l, 8, v62.l
	s_waitcnt vmcnt(12)
	v_lshlrev_b16 v58.h, 8, v66.l
	s_waitcnt vmcnt(11)
	v_lshlrev_b16 v59.l, 8, v74.l
	s_waitcnt vmcnt(10)
	v_lshlrev_b16 v59.h, 8, v72.l
	s_waitcnt vmcnt(9)
	v_lshlrev_b16 v61.l, 8, v70.l
	s_waitcnt vmcnt(8)
	v_lshlrev_b16 v61.h, 8, v68.l
	s_waitcnt vmcnt(6)
	v_or_b16 v63.h, v65.l, v57.l
	v_or_b16 v63.l, v63.l, v57.h
	s_waitcnt vmcnt(5)
	v_or_b16 v62.h, v76.l, v58.l
	v_or_b16 v62.l, v75.l, v58.h
	s_waitcnt vmcnt(4)
	v_or_b16 v58.h, v73.l, v59.l
	s_waitcnt vmcnt(3)
	v_or_b16 v58.l, v71.l, v59.h
	s_waitcnt vmcnt(2)
	v_or_b16 v57.h, v69.l, v61.l
	s_waitcnt vmcnt(1)
	v_or_b16 v57.l, v67.l, v61.h
	ds_store_b64 v46, v[62:63]
	ds_store_b64 v47, v[57:58]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[61:64], v48 offset1:4
	ds_load_2addr_stride64_b64 v[65:68], v49 offset1:4
	ds_load_2addr_stride64_b64 v[69:72], v50 offset1:4
	ds_load_2addr_stride64_b64 v[73:76], v51 offset1:4
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v52, v[77:78]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[77:80], v53 offset1:2
	ds_load_2addr_stride64_b64 v[81:84], v54 offset1:2
	ds_load_2addr_stride64_b64 v[85:88], v55 offset1:2
	ds_load_2addr_stride64_b64 v[89:92], v56 offset1:2
	.loc	1 1364 31                       ; ragged.py:1364:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[77:78], v[61:62], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[79:80], v[61:62], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[77:78], v[63:64], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[79:80], v[63:64], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[81:82], v[65:66], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[83:84], v[65:66], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[81:82], v[67:68], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[83:84], v[67:68], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[85:86], v[69:70], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[87:88], v[69:70], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[85:86], v[71:72], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[87:88], v[71:72], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[89:90], v[73:74], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[91:92], v[73:74], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[89:90], v[75:76], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[91:92], v[75:76], v[1:8] neg_lo:[1,1,0]
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
	s_add_i32 s2, s16, 1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v34, 2, v45
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, s3
	s_ashr_i32 s35, s2, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1375 20                       ; ragged.py:1375:20
	s_cmp_lt_i32 s13, s35
	.loc	1 1375 17 is_stmt 0             ; ragged.py:1375:17
	s_cbranch_scc1 .LBB0_6
; %bb.5:                                ; %._crit_edge._crit_edge
	.loc	1 1411 21 is_stmt 1             ; ragged.py:1411:21
	s_add_i32 s34, s31, s15
	v_or_b32_e32 v34, v34, v44
	s_cbranch_execz .LBB0_7
	s_branch .LBB0_8
.LBB0_6:
                                        ; implicit-def: $sgpr34
	.loc	1 0 21 is_stmt 0                ; ragged.py:0:21
	v_or_b32_e32 v34, v34, v44
.LBB0_7:
	.loc	1 1317 18 is_stmt 1             ; ragged.py:1317:18
	v_lshrrev_b32_e32 v61, 7, v43
	.loc	1 1386 33                       ; ragged.py:1386:33
	s_and_b32 s6, s16, 0x80000001
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_mul_lo_u32 v42, s14, v42
	.loc	1 1386 33                       ; ragged.py:1386:33
	s_cmp_eq_u32 s6, 1
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_or_b32_e32 v68, 1, v33
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v59, s13, v61
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mul_lo_u32 v61, s28, v61
	.loc	1 1386 33                       ; ragged.py:1386:33
	s_cselect_b32 s36, -1, 0
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_add_i32 s7, s13, s12
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_add_i32 s34, s31, s15
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_mul_i32 s8, s7, s28
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v35, 6, v59
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_add_i32 s9, s8, s33
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v43, 10, v59
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add3_u32 v60, s9, v60, v61
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v44, 12, v59
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s2, s35, v35
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v45, 14, v59
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s3, s35, v43
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mad_u64_u32 v[61:62], null, s28, 6, v[60:61]
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s2, s1, s2
	.loc	1 1376 26 is_stmt 1             ; ragged.py:1376:26
	v_or_b32_e32 v46, 18, v59
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s4, s35, v44
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v47, 20, v59
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s5, s35, v45
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v48, 22, v59
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mad_u64_u32 v[62:63], null, s28, 10, v[60:61]
	v_mad_u64_u32 v[63:64], null, s28, 12, v[60:61]
	v_mad_u64_u32 v[64:65], null, s28, 14, v[60:61]
	v_mad_u64_u32 v[65:66], null, s28, 18, v[60:61]
	v_mad_u64_u32 v[66:67], null, s28, 20, v[60:61]
	.loc	1 1387 34 is_stmt 0             ; ragged.py:1387:34
	v_cndmask_b32_e64 v67, 0x80000000, v61, s2
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s2, s1, s3
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s6, s35, v46
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v79, 0x80000000, v62, s2
	.loc	1 1387 42 is_stmt 0             ; ragged.py:1387:42
	v_mad_u64_u32 v[61:62], null, s28, 22, v[60:61]
	.loc	1 1376 26 is_stmt 1             ; ragged.py:1376:26
	v_or_b32_e32 v49, 24, v59
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s2, s1, s4
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s7, s35, v47
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v80, 0x80000000, v63, s2
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s2, s1, s5
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s8, s35, v48
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v81, 0x80000000, v64, s2
	.loc	1 1387 42 is_stmt 0             ; ragged.py:1387:42
	v_mad_u64_u32 v[62:63], null, s28, 24, v[60:61]
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s2, s1, s6
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s9, s35, v49
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v65, 0x80000000, v65, s2
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s2, s1, s7
	.loc	1 1376 26 is_stmt 1             ; ragged.py:1376:26
	v_or_b32_e32 v50, 26, v59
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v66, 0x80000000, v66, s2
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s2, s1, s8
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mad_u64_u32 v[63:64], null, s28, 26, v[60:61]
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v64, 0x80000000, v61, s2
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s2, s1, s9
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s10, s35, v50
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v82, 0x80000000, v62, s2
	.loc	1 1387 42 is_stmt 0             ; ragged.py:1387:42
	v_mad_u64_u32 v[61:62], null, s28, 28, v[60:61]
	.loc	1 1376 26 is_stmt 1             ; ragged.py:1376:26
	v_or_b32_e32 v51, 28, v59
	v_or_b32_e32 v52, 30, v59
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e32 vcc_lo, s35, v59
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s2, s1, s10
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_or_b32_e32 v69, 2, v33
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s11, s35, v51
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v83, 0x80000000, v63, s2
	.loc	1 1387 42 is_stmt 0             ; ragged.py:1387:42
	v_mad_u64_u32 v[62:63], null, s28, 30, v[60:61]
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s12, s35, v52
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, vcc_lo
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v54, s13, v33
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s2, s34, s14
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e32 v63, 0x80000000, v60, vcc_lo
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s11
	.loc	1 1317 18 is_stmt 1             ; ragged.py:1317:18
	v_or_b32_e32 v70, 3, v33
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v84, s13, s2, v42
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v53, s13, v68
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e32 v61, 0x80000000, v61, vcc_lo
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 vcc_lo, s1, s12
	.loc	1 1317 18 is_stmt 1             ; ragged.py:1317:18
	v_or_b32_e32 v71, 4, v33
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v55, s13, v69
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e32 vcc_lo, s35, v54
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v56, s13, v70
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add_nc_u32_e32 v68, v84, v68
	v_add_nc_u32_e32 v85, v84, v33
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s6, s35, v53
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v57, s13, v71
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_or_b32_e32 v72, 5, v33
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s7, s35, v55
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_or_b32_e32 v73, 6, v33
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_dual_cndmask_b32 v85, 0x80000000, v85 :: v_dual_add_nc_u32 v70, v84, v70
	.loc	1 1388 42 is_stmt 0             ; ragged.py:1388:42
	v_add_nc_u32_e32 v69, v84, v69
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s8, s35, v56
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v42, 2, v59
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s6
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_or_b32_e32 v74, 7, v33
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s9, s35, v57
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v58, s13, v72
	v_or_b32_e32 v33, 4, v59
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s7
	.loc	1 1387 42 is_stmt 1             ; ragged.py:1387:42
	v_lshl_add_u32 v75, s28, 1, v60
	v_lshl_add_u32 v76, s28, 2, v60
	v_lshl_add_u32 v77, s28, 3, v60
	v_lshl_add_u32 v78, s28, 4, v60
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v60, s13, v73
	v_or_b32_e32 v86, 8, v59
	v_or_b32_e32 v87, 16, v59
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_dual_cndmask_b32 v69, 0x80000000, v69 :: v_dual_add_nc_u32 v72, v84, v72
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s8
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s2, s35, v42
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add_nc_u32_e32 v71, v84, v71
	.loc	1 1388 34 is_stmt 0             ; ragged.py:1388:34
	v_dual_cndmask_b32 v70, 0x80000000, v70 :: v_dual_add_nc_u32 v73, v84, v73
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s9
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_dual_cndmask_b32 v71, 0x80000000, v71 :: v_dual_add_nc_u32 v84, v84, v74
	.loc	1 1376 26 is_stmt 1             ; ragged.py:1376:26
	v_or_b32_e32 v74, s13, v74
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s3, s35, v33
	v_cmp_gt_i32_e64 s10, s35, v58
	v_cmp_gt_i32_e64 s4, s35, v86
	v_cmp_gt_i32_e64 s5, s35, v87
	v_cmp_gt_i32_e64 s11, s35, v60
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s2, s1, s2
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s12, s35, v74
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v75, 0x80000000, v75, s2
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s2, s1, s3
	.loc	1 1388 66 is_stmt 1             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s10
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v76, 0x80000000, v76, s2
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s2, s1, s4
	s_and_b32 s1, s1, s5
	.loc	1 1388 34 is_stmt 1             ; ragged.py:1388:34
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s11
	.loc	1 1387 34 is_stmt 1             ; ragged.py:1387:34
	s_and_b32 s17, s21, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_mov_b32 s16, s20
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	v_cndmask_b32_e64 v78, 0x80000000, v78, s1
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_dual_cndmask_b32 v73, 0x80000000, v73 :: v_dual_and_b32 v40, 24, v40
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 vcc_lo, s0, s12
	.loc	1 1387 34 is_stmt 1             ; ragged.py:1387:34
	s_clause 0xf
	buffer_load_u8 v63, v63, s[16:19], 0 offen
	buffer_load_u8 v75, v75, s[16:19], 0 offen
	buffer_load_u8 v76, v76, s[16:19], 0 offen
	buffer_load_u8 v67, v67, s[16:19], 0 offen
	buffer_load_u8 v77, v77, s[16:19], 0 offen
	buffer_load_u8 v79, v79, s[16:19], 0 offen
	buffer_load_u8 v80, v80, s[16:19], 0 offen
	buffer_load_u8 v81, v81, s[16:19], 0 offen
	buffer_load_u8 v78, v78, s[16:19], 0 offen
	buffer_load_u8 v65, v65, s[16:19], 0 offen
	buffer_load_u8 v66, v66, s[16:19], 0 offen
	buffer_load_u8 v64, v64, s[16:19], 0 offen
	buffer_load_u8 v82, v82, s[16:19], 0 offen
	buffer_load_u8 v83, v83, s[16:19], 0 offen
	buffer_load_u8 v61, v61, s[16:19], 0 offen
	buffer_load_u8 v62, v62, s[16:19], 0 offen
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_and_b32 s17, s23, 0xffff
	s_mov_b32 s16, s22
	v_cndmask_b32_e32 v84, 0x80000000, v84, vcc_lo
	s_clause 0x7
	buffer_load_u8 v85, v85, s[16:19], 0 offen
	buffer_load_u8 v68, v68, s[16:19], 0 offen
	buffer_load_u8 v69, v69, s[16:19], 0 offen
	buffer_load_u8 v70, v70, s[16:19], 0 offen
	buffer_load_u8 v71, v71, s[16:19], 0 offen
	buffer_load_u8 v72, v72, s[16:19], 0 offen
	buffer_load_u8 v73, v73, s[16:19], 0 offen
	buffer_load_u8 v84, v84, s[16:19], 0 offen
	.loc	1 1386 63                       ; ragged.py:1386:63
	s_add_i32 s35, s35, -1
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_xad_u32 v90, v38, v36, 0
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e32 vcc_lo, s35, v54
	v_cmp_eq_u32_e64 s0, s35, v59
	v_cmp_eq_u32_e64 s1, s35, v53
	v_cmp_eq_u32_e64 s3, s35, v56
	v_cmp_eq_u32_e64 s5, s35, v58
	v_cmp_eq_u32_e64 s7, s35, v74
	.loc	1 1386 32 is_stmt 0             ; ragged.py:1386:32
	s_and_b32 s22, s36, vcc_lo
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e32 vcc_lo, s35, v42
	v_cmp_eq_u32_e64 s8, s35, v33
	v_cmp_eq_u32_e64 s12, s35, v44
	v_cmp_eq_u32_e64 s13, s35, v45
	v_cmp_eq_u32_e64 s15, s35, v46
	v_cmp_eq_u32_e64 s16, s35, v47
	v_cmp_eq_u32_e64 s10, s35, v86
	v_cmp_eq_u32_e64 s9, s35, v35
	v_cmp_eq_u32_e64 s14, s35, v87
	v_cmp_eq_u32_e64 s2, s35, v55
	v_cmp_eq_u32_e64 s4, s35, v57
	v_cmp_eq_u32_e64 s6, s35, v60
	v_cmp_eq_u32_e64 s11, s35, v43
	v_cmp_eq_u32_e64 s17, s35, v48
	v_cmp_eq_u32_e64 s18, s35, v49
	v_cmp_eq_u32_e64 s19, s35, v50
	v_cmp_eq_u32_e64 s20, s35, v51
	v_cmp_eq_u32_e64 s21, s35, v52
	.loc	1 1386 32                       ; ragged.py:1386:32
	s_and_b32 s0, s36, s0
	s_and_b32 s1, s36, s1
	s_and_b32 s3, s36, s3
	s_and_b32 s5, s36, s5
	s_and_b32 s7, s36, s7
	s_and_b32 s23, s36, vcc_lo
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_add_nc_u32_e32 v88, 0, v0
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_or3_b32 v91, v39, v40, v41
	.loc	1 1386 32                       ; ragged.py:1386:32
	s_and_b32 s8, s36, s8
	s_and_b32 s10, s36, s10
	s_and_b32 s9, s36, s9
	s_and_b32 s14, s36, s14
	s_and_b32 s2, s36, s2
	s_and_b32 s4, s36, s4
	s_and_b32 s6, s36, s6
	s_and_b32 s11, s36, s11
	s_and_b32 s12, s36, s12
	s_and_b32 s13, s36, s13
	s_and_b32 s15, s36, s15
	s_and_b32 s16, s36, s16
	s_and_b32 s17, s36, s17
	s_and_b32 s18, s36, s18
	s_and_b32 s19, s36, s19
	s_and_b32 s20, s36, s20
	s_and_b32 s21, s36, s21
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_add_nc_u32_e32 v89, 0, v34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_add_nc_u32_e32 v53, 0, v91
	.loc	1 1389 62                       ; ragged.py:1389:62
	s_waitcnt vmcnt(23)
	v_and_b16 v33.l, v63.l, 15
	s_waitcnt vmcnt(22)
	v_and_b16 v33.h, v75.l, 15
	s_waitcnt vmcnt(21)
	v_and_b16 v35.l, v76.l, 15
	s_waitcnt vmcnt(20)
	v_and_b16 v38.h, v67.l, 15
	s_waitcnt vmcnt(19)
	v_and_b16 v38.l, v77.l, 15
	.loc	1 1389 34 is_stmt 0             ; ragged.py:1389:34
	v_cndmask_b16 v33.l, v63.l, v33.l, s0
	.loc	1 1389 62                       ; ragged.py:1389:62
	s_waitcnt vmcnt(18)
	v_and_b16 v39.l, v79.l, 15
	s_waitcnt vmcnt(17)
	v_and_b16 v39.h, v80.l, 15
	s_waitcnt vmcnt(15)
	v_and_b16 v35.h, v78.l, 15
	v_and_b16 v40.l, v81.l, 15
	s_waitcnt vmcnt(14)
	v_and_b16 v40.h, v65.l, 15
	s_waitcnt vmcnt(13)
	v_and_b16 v41.l, v66.l, 15
	s_waitcnt vmcnt(12)
	v_and_b16 v41.h, v64.l, 15
	.loc	1 1390 62 is_stmt 1             ; ragged.py:1390:62
	s_waitcnt vmcnt(6)
	v_and_b16 v44.h, v68.l, 15
	.loc	1 1389 62                       ; ragged.py:1389:62
	v_and_b16 v42.l, v82.l, 15
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(4)
	v_and_b16 v45.h, v70.l, 15
	.loc	1 1389 62                       ; ragged.py:1389:62
	v_and_b16 v42.h, v83.l, 15
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(2)
	v_and_b16 v46.h, v72.l, 15
	.loc	1 1389 62                       ; ragged.py:1389:62
	v_and_b16 v43.l, v61.l, 15
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(0)
	v_and_b16 v47.h, v84.l, 15
	.loc	1 1389 62                       ; ragged.py:1389:62
	v_and_b16 v43.h, v62.l, 15
	.loc	1 1390 62                       ; ragged.py:1390:62
	v_and_b16 v44.l, v85.l, 15
	v_and_b16 v45.l, v69.l, 15
	v_and_b16 v46.l, v71.l, 15
	v_and_b16 v47.l, v73.l, 15
	.loc	1 1390 34 is_stmt 0             ; ragged.py:1390:34
	v_cndmask_b16 v44.h, v68.l, v44.h, s1
	v_cndmask_b16 v45.h, v70.l, v45.h, s3
	v_cndmask_b16 v46.h, v72.l, v46.h, s5
	v_cndmask_b16 v47.h, v84.l, v47.h, s7
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_cndmask_b16 v33.h, v75.l, v33.h, s23
	v_cndmask_b16 v35.l, v76.l, v35.l, s8
	v_cndmask_b16 v38.l, v77.l, v38.l, s10
	v_cndmask_b16 v35.h, v78.l, v35.h, s14
	v_cndmask_b16 v38.h, v67.l, v38.h, s9
	v_cndmask_b16 v39.l, v79.l, v39.l, s11
	v_cndmask_b16 v39.h, v80.l, v39.h, s12
	v_cndmask_b16 v40.l, v81.l, v40.l, s13
	v_cndmask_b16 v40.h, v65.l, v40.h, s15
	v_cndmask_b16 v41.l, v66.l, v41.l, s16
	v_cndmask_b16 v41.h, v64.l, v41.h, s17
	v_cndmask_b16 v42.l, v82.l, v42.l, s18
	v_cndmask_b16 v42.h, v83.l, v42.h, s19
	v_cndmask_b16 v43.l, v61.l, v43.l, s20
	v_cndmask_b16 v43.h, v62.l, v43.h, s21
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v44.l, v85.l, v44.l, s22
	v_cndmask_b16 v45.l, v69.l, v45.l, s2
	v_cndmask_b16 v46.l, v71.l, v46.l, s4
	v_cndmask_b16 v47.l, v73.l, v47.l, s6
	.loc	1 1389 34                       ; ragged.py:1389:34
	ds_store_b8 v88, v33
	ds_store_b8_d16_hi v88, v33 offset:256
	ds_store_b8 v88, v35 offset:512
	ds_store_b8 v88, v38 offset:1024
	ds_store_b8_d16_hi v88, v38 offset:768
	ds_store_b8 v88, v39 offset:1280
	ds_store_b8_d16_hi v88, v39 offset:1536
	ds_store_b8 v88, v40 offset:1792
	ds_store_b8_d16_hi v88, v35 offset:2048
	ds_store_b8_d16_hi v88, v40 offset:2304
	ds_store_b8 v88, v41 offset:2560
	ds_store_b8_d16_hi v88, v41 offset:2816
	ds_store_b8 v88, v42 offset:3072
	ds_store_b8_d16_hi v88, v42 offset:3328
	ds_store_b8 v88, v43 offset:3584
	ds_store_b8_d16_hi v88, v43 offset:3840
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_lshlrev_b16 v33.l, 8, v47.h
	v_lshlrev_b16 v33.h, 8, v46.h
	v_lshlrev_b16 v35.l, 8, v45.h
	v_lshlrev_b16 v35.h, 8, v44.h
	.loc	1 1389 34                       ; ragged.py:1389:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1391 31                       ; ragged.py:1391:31
	ds_load_u8 v40, v89 offset:384
	ds_load_u8 v41, v89 offset:256
	ds_load_u8 v42, v89 offset:128
	ds_load_u8 v43, v89
	ds_load_u8 v50, v89 offset:448
	ds_load_u8 v51, v89 offset:320
	ds_load_u8 v52, v89 offset:192
	ds_load_u8 v60, v89 offset:64
	ds_load_u8 v48, v89 offset:896
	ds_load_u8 v49, v89 offset:768
	ds_load_u8 v54, v89 offset:640
	ds_load_u8 v55, v89 offset:512
	ds_load_u8 v61, v89 offset:960
	ds_load_u8 v62, v89 offset:832
	ds_load_u8 v63, v89 offset:704
	ds_load_u8 v64, v89 offset:576
	ds_load_u8 v56, v89 offset:1408
	ds_load_u8 v57, v89 offset:1280
	ds_load_u8 v58, v89 offset:1152
	ds_load_u8 v59, v89 offset:1024
	ds_load_u8 v65, v89 offset:1472
	ds_load_u8 v66, v89 offset:1344
	ds_load_u8 v67, v89 offset:1216
	ds_load_u8 v68, v89 offset:1088
	ds_load_u8 v69, v89 offset:1920
	ds_load_u8 v70, v89 offset:1792
	ds_load_u8 v71, v89 offset:1664
	ds_load_u8 v72, v89 offset:1536
	ds_load_u8 v73, v89 offset:1984
	ds_load_u8 v74, v89 offset:1856
	ds_load_u8 v75, v89 offset:1728
	ds_load_u8 v76, v89 offset:1600
	ds_load_u8 v77, v89 offset:2432
	ds_load_u8 v78, v89 offset:2304
	ds_load_u8 v79, v89 offset:2176
	ds_load_u8 v80, v89 offset:2048
	ds_load_u8 v81, v89 offset:2496
	ds_load_u8 v82, v89 offset:2368
	ds_load_u8 v83, v89 offset:2240
	ds_load_u8 v84, v89 offset:2112
	ds_load_u8 v85, v89 offset:2944
	ds_load_u8 v86, v89 offset:2816
	ds_load_u8 v87, v89 offset:2688
	ds_load_u8 v88, v89 offset:2560
	ds_load_u8 v92, v89 offset:3008
	ds_load_u8 v93, v89 offset:2880
	ds_load_u8 v94, v89 offset:2752
	ds_load_u8 v95, v89 offset:2624
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_or_b16 v39.h, v47.l, v33.l
	v_or_b16 v39.l, v46.l, v33.h
	v_or_b16 v38.h, v45.l, v35.l
	v_or_b16 v38.l, v44.l, v35.h
	.loc	1 1391 31                       ; ragged.py:1391:31
	ds_load_u8 v96, v89 offset:3456
	ds_load_u8 v97, v89 offset:3328
	ds_load_u8 v98, v89 offset:3200
	ds_load_u8 v99, v89 offset:3072
	ds_load_u8 v100, v89 offset:3520
	ds_load_u8 v101, v89 offset:3392
	ds_load_u8 v102, v89 offset:3264
	ds_load_u8 v103, v89 offset:3136
	ds_load_u8 v33, v89 offset:3968
	ds_load_u8 v35, v89 offset:3840
	ds_load_u8 v104, v89 offset:3712
	ds_load_u8 v105, v89 offset:3584
	ds_load_u8 v106, v89 offset:4032
	ds_load_u8 v107, v89 offset:3904
	ds_load_u8 v108, v89 offset:3776
	ds_load_u8 v89, v89 offset:3648
	.loc	1 1390 34                       ; ragged.py:1390:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v90, v[38:39]
	.loc	1 1391 31                       ; ragged.py:1391:31
	v_perm_b32 v38, v55, v54, 0xc0c0004
	v_perm_b32 v39, v49, v48, 0xc0c0004
	v_perm_b32 v42, v43, v42, 0xc0c0004
	v_perm_b32 v40, v41, v40, 0xc0c0004
	.loc	1 1390 34                       ; ragged.py:1390:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1391 31                       ; ragged.py:1391:31
	v_lshl_or_b32 v55, v39, 16, v38
	v_perm_b32 v46, v72, v71, 0xc0c0004
	v_lshl_or_b32 v54, v40, 16, v42
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_xad_u32 v42, v91, 8, 0
	ds_load_2addr_stride64_b64 v[38:41], v53 offset1:2
	.loc	1 1391 31                       ; ragged.py:1391:31
	v_perm_b32 v47, v70, v69, 0xc0c0004
	v_perm_b32 v53, v59, v58, 0xc0c0004
	v_perm_b32 v56, v57, v56, 0xc0c0004
	v_perm_b32 v58, v88, v87, 0xc0c0004
	.loc	1 1390 34                       ; ragged.py:1390:34
	ds_load_2addr_stride64_b64 v[42:45], v42 offset1:2
	v_xad_u32 v48, v91, 16, 0
	.loc	1 1391 31                       ; ragged.py:1391:31
	v_perm_b32 v59, v86, v85, 0xc0c0004
	v_perm_b32 v69, v80, v79, 0xc0c0004
	v_perm_b32 v70, v78, v77, 0xc0c0004
	v_perm_b32 v52, v60, v52, 0xc0c0004
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v57, v47, 16, v46
	.loc	1 1390 34                       ; ragged.py:1390:34
	ds_load_2addr_stride64_b64 v[46:49], v48 offset1:2
	.loc	1 1391 31                       ; ragged.py:1391:31
	v_lshl_or_b32 v56, v56, 16, v53
	v_lshl_or_b32 v59, v59, 16, v58
	v_lshl_or_b32 v58, v70, 16, v69
	v_perm_b32 v69, v105, v104, 0xc0c0004
	v_perm_b32 v53, v64, v63, 0xc0c0004
	v_perm_b32 v61, v62, v61, 0xc0c0004
	v_perm_b32 v33, v35, v33, 0xc0c0004
	v_lshl_or_b32 v60, v50, 16, v52
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_xad_u32 v50, v91, 24, 0
	.loc	1 1391 31                       ; ragged.py:1391:31
	v_perm_b32 v62, v76, v75, 0xc0c0004
	v_lshl_or_b32 v61, v61, 16, v53
	v_perm_b32 v64, v74, v73, 0xc0c0004
	v_perm_b32 v67, v68, v67, 0xc0c0004
	.loc	1 1390 34                       ; ragged.py:1390:34
	ds_load_2addr_stride64_b64 v[50:53], v50 offset1:2
	.loc	1 1391 31                       ; ragged.py:1391:31
	v_lshl_or_b32 v63, v33, 16, v69
	v_perm_b32 v33, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[38:39], v[54:55], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v35, v99, v98, 0xc0c0004
	v_perm_b32 v65, v97, v96, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[40:41], v[54:55], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[38:39], v[60:61], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v39, v64, 16, v62
	v_lshl_or_b32 v38, v33, 16, v67
	v_perm_b32 v33, v95, v94, 0xc0c0004
	v_perm_b32 v54, v93, v92, 0xc0c0004
	v_perm_b32 v55, v84, v83, 0xc0c0004
	v_perm_b32 v64, v82, v81, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[40:41], v[60:61], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[42:43], v[56:57], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v62, v65, 16, v35
	v_wmma_i32_16x16x16_iu4 v[25:32], v[44:45], v[56:57], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[42:43], v[38:39], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v43, v54, 16, v33
	v_lshl_or_b32 v42, v64, 16, v55
	v_perm_b32 v33, v89, v108, 0xc0c0004
	v_perm_b32 v35, v107, v106, 0xc0c0004
	v_perm_b32 v40, v103, v102, 0xc0c0004
	v_perm_b32 v41, v101, v100, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[44:45], v[38:39], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[46:47], v[58:59], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[48:49], v[58:59], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[46:47], v[42:43], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v39, v35, 16, v33
	v_lshl_or_b32 v38, v41, 16, v40
	v_wmma_i32_16x16x16_iu4 v[1:8], v[48:49], v[42:43], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[50:51], v[62:63], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[52:53], v[62:63], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[50:51], v[38:39], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[52:53], v[38:39], v[1:8] neg_lo:[1,1,0]
.LBB0_8:
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v33, 4, v0
	v_lshrrev_b32_e32 v35, 1, v37
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v59, 64, v34
	.loc	1 1309 18 is_stmt 0             ; ragged.py:1309:18
	v_or_b32_e32 v64, s33, v34
	.loc	1 1404 33 is_stmt 1             ; ragged.py:1404:33
	s_mul_i32 s0, s30, s28
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_and_b32 s45, s25, 0xffff
	.loc	1 1404 21                       ; ragged.py:1404:21
	s_add_i32 s2, s33, s0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_and_or_b32 v33, v33, 1, v35
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v63, s33, v59
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_lshl_u32 v65, s2, v34, 1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v64
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_lshl_u32 v66, s2, v59, 1
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v57, 2, v33
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s28, v63
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v56, 4, v33
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e64 v64, 0x80000000, v65, s0
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v65, s31, v33
	v_or_b32_e32 v62, s31, v57
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e32 v63, 0x80000000, v66, vcc_lo
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v66, s34, v33, 1
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v55, 6, v33
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s29, v65
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v61, s31, v56
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v57, s34, v57, 1
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v53, 8, v33
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v60, s31, v55
	.loc	1 1410 36 is_stmt 1             ; ragged.py:1410:36
	v_cndmask_b32_e64 v65, 0x80000000, v66, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s29, v62
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v56, s34, v56, 1
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v49, 10, v33
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v58, s31, v53
	.loc	1 1410 36 is_stmt 1             ; ragged.py:1410:36
	v_add_lshl_u32 v55, s34, v55, 1
	v_cndmask_b32_e64 v57, 0x80000000, v57, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s29, v61
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v43, 12, v33
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v54, s31, v49
	.loc	1 1410 36 is_stmt 1             ; ragged.py:1410:36
	v_add_lshl_u32 v53, s34, v53, 1
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v42, 14, v33
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v56, 0x80000000, v56, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s29, v60
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v52, s31, v43
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v49, s34, v49, 1
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v41, 32, v33
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v51, s31, v42
	.loc	1 1410 36 is_stmt 1             ; ragged.py:1410:36
	v_cndmask_b32_e64 v55, 0x80000000, v55, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s29, v58
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v43, s34, v43, 1
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v40, 34, v33
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v50, s31, v41
	.loc	1 1410 36 is_stmt 1             ; ragged.py:1410:36
	v_add_lshl_u32 v42, s34, v42, 1
	v_cndmask_b32_e64 v53, 0x80000000, v53, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s29, v54
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v39, 36, v33
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v48, s31, v40
	.loc	1 1410 36 is_stmt 1             ; ragged.py:1410:36
	v_add_lshl_u32 v41, s34, v41, 1
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v38, 38, v33
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v49, 0x80000000, v49, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s29, v52
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v47, s31, v39
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v40, s34, v40, 1
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v37, 40, v33
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v46, s31, v38
	.loc	1 1410 36 is_stmt 1             ; ragged.py:1410:36
	v_cndmask_b32_e64 v43, 0x80000000, v43, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s29, v51
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v39, s34, v39, 1
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_mov_b32 s44, s24
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v42, 0x80000000, v42, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s29, v50
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_clause 0x1
	buffer_load_u16 v64, v64, s[44:47], 0 offen
	buffer_load_u16 v63, v63, s[44:47], 0 offen
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v35, 42, v33
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v45, s31, v37
	.loc	1 1410 36 is_stmt 1             ; ragged.py:1410:36
	v_add_lshl_u32 v38, s34, v38, 1
	v_cndmask_b32_e64 v41, 0x80000000, v41, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s29, v48
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v44, s31, v35
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v37, s34, v37, 1
	s_and_b32 s45, s27, 0xffff
	s_mov_b32 s44, s26
	v_cndmask_b32_e64 v40, 0x80000000, v40, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s29, v47
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_clause 0x7
	buffer_load_u16 v52, v65, s[44:47], 0 offen
	buffer_load_u16 v54, v57, s[44:47], 0 offen
	buffer_load_u16 v56, v56, s[44:47], 0 offen
	buffer_load_u16 v55, v55, s[44:47], 0 offen
	buffer_load_u16 v53, v53, s[44:47], 0 offen
	buffer_load_u16 v57, v49, s[44:47], 0 offen
	buffer_load_u16 v58, v43, s[44:47], 0 offen
	buffer_load_u16 v60, v42, s[44:47], 0 offen
	v_add_lshl_u32 v35, s34, v35, 1
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s2, s2, s29
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v70, v1
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v39, 0x80000000, v39, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s29, v46
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s2, s2, s31
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v71, v2
	v_cvt_f32_i32_e32 v72, v3
	v_cvt_f32_i32_e32 v73, v4
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v38, 0x80000000, v38, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s29, v45
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[3:4], null, s29, v34, s[2:3]
	v_mad_u64_u32 v[1:2], null, s29, v59, s[2:3]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v37, 0x80000000, v37, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s29, v44
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v35, 0x80000000, v35, s1
	s_clause 0x5
	buffer_load_u16 v61, v40, s[44:47], 0 offen
	buffer_load_u16 v62, v41, s[44:47], 0 offen
	buffer_load_u16 v65, v38, s[44:47], 0 offen
	buffer_load_u16 v66, v39, s[44:47], 0 offen
	buffer_load_u16 v67, v35, s[44:47], 0 offen
	buffer_load_u16 v68, v37, s[44:47], 0 offen
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v35, 44, v33
	v_or_b32_e32 v33, 46, v33
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v37, s31, v35
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v35, s34, v35, 1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v38, s31, v33
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v33, s34, v33, 1
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s29, v37
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v35, 0x80000000, v35, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s29, v38
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	s_clause 0x1
	buffer_load_u16 v51, v35, s[44:47], 0 offen
	buffer_load_u16 v50, v33, s[44:47], 0 offen
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v74, v5
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v5.h, 0
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v69, s31, v36
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v33, 39, v36
	.loc	1 1545 17 is_stmt 1             ; ragged.py:1545:17
	v_mov_b16_e32 v92.h, v5.h
	v_mov_b16_e32 v94.h, v5.h
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v35, 38, v36
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s29, v69
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v69.h, v5.h
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v37, 37, v36
	v_or_b32_e32 v38, 36, v36
	v_or_b32_e32 v39, 35, v36
	v_or_b32_e32 v40, 34, v36
	v_or_b32_e32 v41, 33, v36
	v_or_b32_e32 v42, 32, v36
	v_or_b32_e32 v43, 7, v36
	v_or_b32_e32 v44, 6, v36
	v_or_b32_e32 v45, 5, v36
	v_or_b32_e32 v46, 4, v36
	v_or_b32_e32 v47, 3, v36
	v_or_b32_e32 v48, 2, v36
	v_or_b32_e32 v49, 1, v36
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v90.h, v5.h
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v75, s31, v33
	v_or_b32_e32 v76, s31, v35
	v_or_b32_e32 v77, s31, v37
	v_or_b32_e32 v78, s31, v38
	v_or_b32_e32 v79, s31, v39
	v_or_b32_e32 v80, s31, v40
	v_or_b32_e32 v81, s31, v41
	v_or_b32_e32 v82, s31, v42
	v_or_b32_e32 v83, s31, v43
	v_or_b32_e32 v84, s31, v44
	v_or_b32_e32 v85, s31, v45
	v_or_b32_e32 v86, s31, v46
	v_or_b32_e32 v87, s31, v47
	v_or_b32_e32 v88, s31, v48
	v_or_b32_e32 v89, s31, v49
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v91.h, v5.h
	v_mov_b16_e32 v93.h, v5.h
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s2, s29, v75
	v_cmp_gt_i32_e64 s3, s29, v76
	v_cmp_gt_i32_e64 s4, s29, v77
	v_cmp_gt_i32_e64 s5, s29, v78
	v_cmp_gt_i32_e64 s6, s29, v79
	v_cmp_gt_i32_e64 s7, s29, v80
	v_cmp_gt_i32_e64 s8, s29, v81
	v_cmp_gt_i32_e64 s9, s29, v82
	v_cmp_gt_i32_e64 s10, s29, v83
	v_cmp_gt_i32_e64 s11, s29, v84
	v_cmp_gt_i32_e64 s12, s29, v85
	v_cmp_gt_i32_e64 s13, s29, v86
	v_cmp_gt_i32_e64 s14, s29, v87
	v_cmp_gt_i32_e64 s15, s29, v88
	v_cmp_gt_i32_e64 s16, s29, v89
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v8, v8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_and_b32_e32 v0, 16, v0
	s_and_b32 s45, s43, 0xffff
	s_mov_b32 s44, s42
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v2, 16, v64
	.loc	1 1408 17                       ; ragged.py:1408:17
	s_waitcnt vmcnt(16)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v9, v9, v2 :: v_dual_lshlrev_b32 v4, 16, v63
	v_dual_mul_f32 v10, v10, v2 :: v_dual_mul_f32 v17, v4, v17
	v_mul_f32_e32 v11, v11, v2
	v_mul_f32_e32 v12, v12, v2
	v_dual_mul_f32 v13, v13, v2 :: v_dual_mul_f32 v20, v4, v20
	v_dual_mul_f32 v14, v14, v2 :: v_dual_mul_f32 v19, v4, v19
	v_dual_mul_f32 v15, v15, v2 :: v_dual_mul_f32 v24, v4, v24
	v_mul_f32_e32 v16, v16, v2
	v_dual_mul_f32 v25, v25, v2 :: v_dual_mul_f32 v34, v4, v71
	v_dual_mul_f32 v26, v26, v2 :: v_dual_mul_f32 v21, v4, v21
	v_mul_f32_e32 v27, v27, v2
	v_mul_f32_e32 v28, v28, v2
	v_mul_f32_e32 v29, v29, v2
	v_dual_mul_f32 v30, v30, v2 :: v_dual_mul_f32 v23, v4, v23
	v_mul_f32_e32 v31, v31, v2
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v2, v32, v2 :: v_dual_lshlrev_b32 v53, 16, v53
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_lshlrev_b32_e32 v32, 16, v52
	.loc	1 1408 17                       ; ragged.py:1408:17
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v63, v4, v72 :: v_dual_lshlrev_b32 v58, 16, v58
	v_mul_f32_e32 v18, v4, v18
	v_dual_mul_f32 v59, v4, v73 :: v_dual_lshlrev_b32 v54, 16, v54
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v9, v9, v32
	v_dual_mul_f32 v17, v17, v32 :: v_dual_lshlrev_b32 v32, 16, v55
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_lshlrev_b32_e32 v55, 16, v56
	v_lshlrev_b32_e32 v56, 16, v57
	.loc	1 1408 17                       ; ragged.py:1408:17
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v52, v4, v70 :: v_dual_lshlrev_b32 v57, 16, v60
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v60, 16, v61
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v12, v12, v32 :: v_dual_lshlrev_b32 v61, 16, v62
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v15, v15, v58 :: v_dual_lshlrev_b32 v62, 16, v65
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v20, v20, v32 :: v_dual_lshlrev_b32 v65, 16, v66
	v_dual_mul_f32 v14, v14, v56 :: v_dual_mul_f32 v23, v23, v58
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v22, v4, v22
	v_dual_mul_f32 v64, v4, v74 :: v_dual_mul_f32 v13, v13, v53
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v5.l, v17.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v11, v11, v55
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v92.l, v23.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v32, v52, v61
	v_dual_mul_f32 v52, v63, v65 :: v_dual_mul_f32 v7, v4, v7
	v_dual_mul_f32 v10, v10, v54 :: v_dual_mul_f32 v25, v25, v61
	v_dual_mul_f32 v18, v18, v54 :: v_dual_mul_f32 v27, v27, v65
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v54, v9, 16, 1
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v6, v4, v6 :: v_dual_mul_f32 v19, v19, v55
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v21, v21, v53 :: v_dual_lshlrev_b32 v66, 16, v67
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v67, 16, v68
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v22, v22, v56 :: v_dual_mul_f32 v53, v59, v62
	v_mul_f32_e32 v26, v26, v60
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_and_b32_e32 v56, 1, v5
	v_mov_b16_e32 v5.l, v20.h
	v_bfe_u32 v59, v13, 16, 1
	v_mov_b16_e32 v94.l, v52.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v34, v34, v60
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v60, v14, 16, 1
	v_cmp_o_f32_e64 s17, v9, v9
	v_add3_u32 v9, v9, v54, 0x7fff
	v_bfe_u32 v54, v10, 16, 1
	v_mov_b16_e32 v69.l, v18.h
	v_cmp_o_f32_e64 s18, v17, v17
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v16, v16, v57 :: v_dual_mul_f32 v29, v29, v67
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v90.l, v19.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v24, v24, v57
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v57, v11, 16, 1
	v_cmp_o_f32_e64 s25, v13, v13
	v_cmp_o_f32_e64 s26, v14, v14
	v_add3_u32 v17, v17, v56, 0x7fff
	v_and_b32_e32 v56, 1, v5
	v_add3_u32 v13, v13, v59, 0x7fff
	v_add3_u32 v14, v14, v60, 0x7fff
	v_mov_b16_e32 v5.l, v22.h
	v_cmp_o_f32_e64 s19, v10, v10
	v_bfe_u32 v58, v12, 16, 1
	v_add3_u32 v10, v10, v54, 0x7fff
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v55, v64, v67 :: v_dual_and_b32 v54, 1, v69
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s21, v11, v11
	v_mov_b16_e32 v91.l, v21.h
	v_bfe_u32 v61, v15, 16, 1
	v_bfe_u32 v64, v26, 16, 1
	v_add3_u32 v11, v11, v57, 0x7fff
	v_and_b32_e32 v57, 1, v90
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s25
	v_cndmask_b16 v13.h, 0x7fff, v14.h, s26
	v_and_b32_e32 v14, 1, v5
	v_mov_b16_e32 v5.l, v24.h
	v_cmp_o_f32_e64 s22, v12, v12
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s17
	v_add3_u32 v12, v12, v58, 0x7fff
	v_cndmask_b16 v9.h, 0x7fff, v10.h, s19
	v_add3_u32 v10, v18, v54, 0x7fff
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v28, v28, v62
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s23, v20, v20
	v_cmp_o_f32_e64 s29, v15, v15
	v_bfe_u32 v62, v16, 16, 1
	v_cmp_o_f32_e64 s35, v26, v26
	v_and_b32_e32 v58, 1, v91
	v_add3_u32 v15, v15, v61, 0x7fff
	v_and_b32_e32 v59, 1, v92
	v_mov_b16_e32 v93.l, v32.h
	v_add3_u32 v26, v26, v64, 0x7fff
	v_and_b32_e32 v61, 1, v94
	v_cndmask_b16 v10.l, 0x7fff, v17.h, s18
	v_add3_u32 v17, v20, v56, 0x7fff
	v_and_b32_e32 v20, 1, v5
	v_mov_b16_e32 v5.l, v34.h
	v_cmp_o_f32_e64 s24, v19, v19
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s21
	v_cndmask_b16 v11.h, 0x7fff, v12.h, s22
	v_add3_u32 v12, v19, v57, 0x7fff
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v6, v6, v66
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s20, v18, v18
	v_cmp_o_f32_e64 s28, v21, v21
	v_cmp_o_f32_e64 s30, v16, v16
	v_add3_u32 v16, v16, v62, 0x7fff
	v_and_b32_e32 v60, 1, v93
	v_add3_u32 v18, v21, v58, 0x7fff
	v_cndmask_b16 v19.h, 0x7fff, v26.h, s35
	v_and_b32_e32 v26, 1, v5
	v_mov_b16_e32 v5.l, v53.h
	v_cndmask_b16 v17.l, 0x7fff, v12.h, s24
	v_add3_u32 v12, v22, v14, 0x7fff
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v30, v30, v66
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s31, v24, v24
	v_cmp_o_f32_e64 s33, v23, v23
	v_cmp_o_f32_e64 s36, v34, v34
	v_cmp_o_f32_e64 s37, v32, v32
	v_bfe_u32 v67, v29, 16, 1
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s29
	v_cndmask_b16 v15.h, 0x7fff, v16.h, s30
	v_add3_u32 v16, v23, v59, 0x7fff
	v_add3_u32 v21, v32, v60, 0x7fff
	v_and_b32_e32 v14, 1, v5
	v_cndmask_b16 v12.l, 0x7fff, v18.h, s28
	v_add3_u32 v18, v24, v20, 0x7fff
	v_add3_u32 v20, v34, v26, 0x7fff
	v_mov_b16_e32 v5.l, v6.h
	v_cmp_o_f32_e64 s27, v22, v22
	v_cndmask_b16 v16.l, 0x7fff, v16.h, s33
	v_cndmask_b16 v18.l, 0x7fff, v21.h, s37
	v_cndmask_b16 v16.h, 0x7fff, v18.h, s31
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s36
	v_add3_u32 v20, v29, v67, 0x7fff
	v_bfe_u32 v21, v30, 16, 1
	v_mov_b16_e32 v22.l, v55.h
	v_mov_b16_e32 v22.h, v5.h
	v_cmp_o_f32_e64 s17, v29, v29
	v_and_b32_e32 v24, 1, v5
	v_add3_u32 v21, v30, v21, 0x7fff
	v_cmp_o_f32_e64 s18, v30, v30
	v_and_b32_e32 v22, 1, v22
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s17
	v_add3_u32 v24, v6, v24, 0x7fff
	v_cmp_o_f32_e64 s17, v6, v6
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s18
	v_add3_u32 v6, v55, v22, 0x7fff
	.loc	1 1408 17                       ; ragged.py:1408:17
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v4, v4, v8 :: v_dual_lshlrev_b32 v21, 16, v51
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s17
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 16, v50
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s17, v55, v55
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v8, v31, v21
	v_mul_f32_e32 v7, v7, v21
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v63, v25, 16, 1
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v4, v4, v24
	v_mul_f32_e32 v2, v2, v24
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v21, v8, 16, 1
	v_mov_b16_e32 v24.l, v7.h
	v_mov_b16_e32 v24.h, v5.h
	v_mov_b16_e32 v5.l, v4.h
	v_cndmask_b16 v22.l, 0x7fff, v6.h, s17
	v_add3_u32 v21, v8, v21, 0x7fff
	v_cmp_o_f32_e64 s17, v8, v8
	v_cmp_o_f32_e64 s34, v25, v25
	v_and_b32_e32 v8, 1, v5
	v_add3_u32 v25, v25, v63, 0x7fff
	v_bfe_u32 v6, v2, 16, 1
	v_and_b32_e32 v24, 1, v24
	v_cmp_o_f32_e64 s19, v4, v4
	v_add3_u32 v8, v4, v8, 0x7fff
	v_cndmask_b16 v4.l, 0x7fff, v21.h, s17
	v_cmp_eq_u32_e64 s17, 0, v0
	v_cndmask_b16 v19.l, 0x7fff, v25.h, s34
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s20
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s27
	v_add3_u32 v6, v2, v6, 0x7fff
	v_cmp_o_f32_e64 s18, v2, v2
	v_add3_u32 v2, v7, v24, 0x7fff
	v_cmp_o_f32_e64 s20, v7, v7
	v_cndmask_b16 v0.h, 0x7fff, v8.h, s19
	v_cndmask_b32_e64 v7, v15, v11, s17
	v_cndmask_b32_e64 v8, v11, v15, s17
	v_mov_b32_e32 v15, 0x5410
	v_cndmask_b16 v4.h, 0x7fff, v6.h, s18
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s20
	v_cndmask_b32_e64 v2, v13, v9, s17
	v_cndmask_b32_e64 v6, v9, v13, s17
	v_cndmask_b32_e64 v9, v20, v19, s17
	v_cndmask_b32_e64 v11, v19, v20, s17
	v_mov_b32_e32 v19, 0x7632
	v_cndmask_b32_e64 v20, v12, v10, s17
	v_cndmask_b32_e64 v10, v10, v12, s17
	v_cndmask_b32_e64 v12, 0x1054, v15, s17
	v_bfe_u32 v65, v27, 16, 1
	v_bfe_u32 v66, v28, 16, 1
	v_cndmask_b32_e64 v15, 0x3276, v19, s17
	v_cmp_o_f32_e64 s38, v27, v27
	v_lshl_or_b32 v12, v12, 8, v12
	v_cmp_o_f32_e64 s39, v28, v28
	v_cmp_o_f32_e64 s40, v53, v53
	v_cmp_o_f32_e64 s41, v52, v52
	v_add3_u32 v27, v27, v65, 0x7fff
	v_add3_u32 v28, v28, v66, 0x7fff
	v_add3_u32 v25, v52, v61, 0x7fff
	v_add3_u32 v14, v53, v14, 0x7fff
	v_lshl_or_b32 v15, v15, 8, v15
	v_and_b32_e32 v12, 0x540054, v12
	v_cndmask_b16 v23.l, 0x7fff, v27.h, s38
	v_cndmask_b16 v23.h, 0x7fff, v28.h, s39
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s23
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s40
	v_cndmask_b16 v14.l, 0x7fff, v25.h, s41
	v_and_b32_e32 v15, 0x760076, v15
	v_lshl_or_b32 v12, v12, 4, v12
	s_mov_b32 s18, 0x76543210
	v_cndmask_b32_e64 v13, v4, v23, s17
	v_cndmask_b32_e64 v4, v23, v4, s17
	v_cndmask_b32_e64 v19, v16, v17, s17
	v_cndmask_b32_e64 v16, v17, v16, s17
	v_cndmask_b32_e64 v17, v22, v18, s17
	v_cndmask_b32_e64 v18, v18, v22, s17
	v_cndmask_b32_e64 v21, v0, v14, s17
	v_cndmask_b32_e64 v0, v14, v0, s17
	v_permlanex16_b32 v6, v6, s18, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v14, v15, 4, v15
	v_and_b32_e32 v12, 0x5040504, v12
	v_add_lshl_u32 v50, v3, v36, 1
	v_permlanex16_b32 v8, v8, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v4, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v10, s18, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v14, 0x7060706, v14
	v_permlanex16_b32 v15, v16, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v18, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s18, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v18, v6, v2, v12
	v_add_lshl_u32 v51, v3, v49, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v52, v3, v48, 1
	v_cndmask_b32_e64 v50, 0x80000000, v50, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v2, v6, v2, v14
	v_perm_b32 v6, v8, v7, v12
	v_perm_b32 v7, v8, v7, v14
	v_perm_b32 v8, v11, v9, v12
	v_perm_b32 v9, v11, v9, v14
	v_perm_b32 v11, v4, v13, v12
	v_perm_b32 v4, v4, v13, v14
	v_perm_b32 v13, v10, v20, v12
	v_perm_b32 v10, v10, v20, v14
	v_perm_b32 v20, v15, v19, v12
	v_perm_b32 v15, v15, v19, v14
	v_perm_b32 v19, v16, v17, v12
	v_perm_b32 v16, v16, v17, v14
	v_perm_b32 v12, v0, v21, v12
	v_perm_b32 v0, v0, v21, v14
	v_mov_b16_e32 v14.l, v18.h
	v_mov_b16_e32 v14.h, v5.h
	v_cndmask_b32_e64 v51, 0x80000000, v51, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v18, v50, s[44:47], 0 offen
	v_cndmask_b32_e64 v50, 0x80000000, v52, s17
	v_add_lshl_u32 v18, v3, v47, 1
	buffer_store_b16 v14, v51, s[44:47], 0 offen
	v_add_lshl_u32 v14, v3, v46, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v5.l, v2.h
	buffer_store_b16 v2, v50, s[44:47], 0 offen
	v_add_lshl_u32 v2, v3, v45, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v21.l, v6.h
	v_cndmask_b32_e64 v14, 0x80000000, v14, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v21.h, v5.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s17
	v_mov_b16_e32 v17.h, v5.h
	v_mov_b16_e32 v22.h, v5.h
	v_mov_b16_e32 v23.h, v5.h
	v_mov_b16_e32 v24.h, v5.h
	v_mov_b16_e32 v25.h, v5.h
	v_mov_b16_e32 v26.h, v5.h
	v_mov_b16_e32 v27.h, v5.h
	v_mov_b16_e32 v28.h, v5.h
	v_mov_b16_e32 v29.h, v5.h
	v_mov_b16_e32 v30.h, v5.h
	v_mov_b16_e32 v31.h, v5.h
	v_mov_b16_e32 v32.h, v5.h
	v_mov_b16_e32 v34.h, v5.h
	buffer_store_b16 v5, v18, s[44:47], 0 offen
	v_add_lshl_u32 v5, v3, v44, 1
	buffer_store_b16 v6, v14, s[44:47], 0 offen
	v_add_lshl_u32 v6, v3, v43, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v21, v2, s[44:47], 0 offen
	v_add_lshl_u32 v2, v3, v42, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v17.l, v7.h
	v_cndmask_b32_e64 v6, 0x80000000, v6, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v7, v5, s[44:47], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s17
	v_add_lshl_u32 v5, v3, v41, 1
	buffer_store_b16 v17, v6, s[44:47], 0 offen
	v_add_lshl_u32 v6, v3, v40, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v8, v2, s[44:47], 0 offen
	v_add_lshl_u32 v2, v3, v39, 1
	v_mov_b16_e32 v23.l, v8.h
	v_cndmask_b32_e64 v5, 0x80000000, v5, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v22.l, v9.h
	v_cndmask_b32_e64 v6, 0x80000000, v6, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v23, v5, s[44:47], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s17
	v_add_lshl_u32 v5, v3, v38, 1
	buffer_store_b16 v9, v6, s[44:47], 0 offen
	v_add_lshl_u32 v6, v3, v37, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v22, v2, s[44:47], 0 offen
	v_add_lshl_u32 v2, v3, v35, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v25.l, v11.h
	v_cndmask_b32_e64 v6, 0x80000000, v6, s17
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s17, s0, s3
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v3, v33, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s17
	buffer_store_b16 v11, v5, s[44:47], 0 offen
	v_add_lshl_u32 v5, v1, v36, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, s0, s2
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v25, v6, s[44:47], 0 offen
	buffer_store_b16 v4, v2, s[44:47], 0 offen
	v_add_lshl_u32 v2, v1, v49, 1
	v_mov_b16_e32 v24.l, v4.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v27.l, v13.h
	v_cndmask_b32_e64 v4, 0x80000000, v5, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v24, v3, s[44:47], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_add_lshl_u32 v3, v1, v48, 1
	buffer_store_b16 v13, v4, s[44:47], 0 offen
	v_add_lshl_u32 v4, v1, v47, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v27, v2, s[44:47], 0 offen
	v_add_lshl_u32 v2, v1, v46, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v26.l, v10.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v10, v3, s[44:47], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_add_lshl_u32 v3, v1, v45, 1
	buffer_store_b16 v26, v4, s[44:47], 0 offen
	v_add_lshl_u32 v4, v1, v44, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v20, v2, s[44:47], 0 offen
	v_add_lshl_u32 v2, v1, v43, 1
	v_mov_b16_e32 v29.l, v20.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v28.l, v15.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v29, v3, s[44:47], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_add_lshl_u32 v3, v1, v42, 1
	buffer_store_b16 v15, v4, s[44:47], 0 offen
	v_add_lshl_u32 v4, v1, v41, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v28, v2, s[44:47], 0 offen
	v_add_lshl_u32 v2, v1, v40, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v31.l, v19.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v19, v3, s[44:47], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_add_lshl_u32 v3, v1, v39, 1
	buffer_store_b16 v31, v4, s[44:47], 0 offen
	v_add_lshl_u32 v4, v1, v38, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	buffer_store_b16 v16, v2, s[44:47], 0 offen
	v_add_lshl_u32 v2, v1, v37, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v5, v1, v35, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_add_lshl_u32 v1, v1, v33, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v30.l, v16.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s3
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v34.l, v12.h
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	v_mov_b16_e32 v32.l, v0.h
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b16 v30, v3, s[44:47], 0 offen
	buffer_store_b16 v12, v4, s[44:47], 0 offen
	buffer_store_b16 v34, v2, s[44:47], 0 offen
	buffer_store_b16 v0, v5, s[44:47], 0 offen
	buffer_store_b16 v32, v1, s[44:47], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 109
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.num_vgpr, 109
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9964
; TotalNumSgprs: 50
; NumVgprs: 109
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 13
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 109
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     109
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
