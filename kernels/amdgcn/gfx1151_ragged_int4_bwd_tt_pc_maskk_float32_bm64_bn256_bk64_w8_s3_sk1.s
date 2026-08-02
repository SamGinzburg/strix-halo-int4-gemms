	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[72:73], s[0:1], 0x30
	s_load_b128 s[64:67], s[0:1], 0x20
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
	s_clause 0x1
	s_load_b32 s76, s[0:1], 0x38
	s_load_b256 s[56:63], s[0:1], 0x0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v88, 1, v0
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v69, 63, v0
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_and_b32_e32 v85, 1, v0
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v86, 15, v0
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_and_b32_e32 v70, 0xc0, v0
	v_lshlrev_b32_e32 v87, 1, v0
	v_and_b32_e32 v66, 16, v0
	v_lshlrev_b32_e32 v67, 4, v85
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s72, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s73, 0xff
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
	s_lshr_b32 s7, s7, 24
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
	s_ashr_i32 s5, s5, 8
	v_mul_lo_u32 v68, s76, v88
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_abs_i32 s6, s4
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s7, s8
	s_add_i32 s7, s7, s8
	s_xor_b32 s8, s2, s4
	s_mul_hi_u32 s7, s9, s7
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s10, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_sub_i32 s74, s6, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s6, 0, s7
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s74, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s4
	.loc	1 1355 39                       ; ragged.py:1355:39
	s_mul_i32 s51, s74, s76
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s8, s2, s5
	.loc	1 1359 39                       ; ragged.py:1359:39
	s_mul_i32 s50, s74, s73
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_ashr_i32 s8, s8, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s9
	s_mul_hi_u32 s4, s9, s6
	s_abs_i32 s6, s2
	s_add_i32 s9, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s6, s9
	s_mul_i32 s9, s4, s7
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_ashr_i32 s75, s74, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s6, s4, s8
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s7, s6, s5
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[4:5], s[74:75], 2
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s2, s2, s7
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s75, s6, 6
	.loc	1 1310 18                       ; ragged.py:1310:18
	s_lshl_b32 s55, s2, 8
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_add_u32 s4, s64, s4
	s_addc_u32 s5, s65, s5
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s55, v88
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s12, s[4:5], 0x0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v2, s75, v69
	.loc	1 1322 22                       ; ragged.py:1322:22
	s_lshl_b32 s49, s3, 5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v3, 0x80, v1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s73, v1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s2, s72, v2
	.loc	1 1350 21                       ; ragged.py:1350:21
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s0, s12, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s0, s0, 26
	s_add_i32 s0, s12, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s3, s0, 6
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s73, v3
	.loc	1 1349 39                       ; ragged.py:1349:39
	s_lshl_b32 s3, s3, 5
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cmp_ge_i32 s49, s3
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_xor_b32_e32 v3, v87, v88
	v_dual_mov_b32 v33, 0 :: v_dual_and_b32 v4, 24, v87
	v_bfe_u32 v5, v0, 4, 1
	.loc	1 1317 18 is_stmt 1             ; ragged.py:1317:18
	v_lshrrev_b32_e32 v1, 3, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v3, 24, v3
	v_lshl_or_b32 v4, v86, 5, v4
	v_mov_b32_e32 v34, v33
	v_and_or_b32 v5, v87, 30, v5
	v_mul_lo_u32 v2, s72, v1
	v_xor_b32_e32 v1, v3, v1
	v_lshl_add_u32 v3, v69, 5, 0
	v_xor_b32_e32 v6, 8, v4
	v_xor_b32_e32 v7, 16, v4
	v_xor_b32_e32 v8, 24, v4
	v_xor_b32_e32 v9, 0x208, v4
	v_xor_b32_e32 v10, 0x218, v4
	v_xor_b32_e32 v11, 0x210, v4
	v_xor_b32_e32 v12, 0x410, v4
	v_xor_b32_e32 v13, 0x418, v4
	v_dual_mov_b32 v36, v33 :: v_dual_lshlrev_b32 v71, 2, v5
	v_xor_b32_e32 v5, 0x408, v4
	v_xor_b32_e32 v14, 0x618, v4
	v_xor_b32_e32 v15, 0x610, v4
	v_xor_b32_e32 v16, 0x608, v4
	s_add_i32 s8, s55, s50
	v_xor_b32_e32 v72, 4, v71
	s_mul_i32 s8, s8, s76
	.loc	1 1352 23                       ; ragged.py:1352:23
	v_add3_u32 v65, v69, v2, s75
	v_add3_u32 v73, v67, v68, s8
	v_dual_mov_b32 v35, v33 :: v_dual_add_nc_u32 v74, v3, v1
	v_dual_mov_b32 v38, v33 :: v_dual_add_nc_u32 v75, 0, v4
	v_dual_mov_b32 v37, v33 :: v_dual_add_nc_u32 v76, 0, v6
	v_dual_mov_b32 v40, v33 :: v_dual_add_nc_u32 v77, 0, v7
	v_dual_mov_b32 v39, v33 :: v_dual_add_nc_u32 v78, 0, v8
	v_dual_mov_b32 v58, v33 :: v_dual_add_nc_u32 v79, 0, v9
	v_dual_mov_b32 v57, v33 :: v_dual_add_nc_u32 v80, 0, v10
	v_dual_mov_b32 v60, v33 :: v_dual_add_nc_u32 v81, 0, v11
	v_dual_mov_b32 v59, v33 :: v_dual_add_nc_u32 v82, 0, v12
	v_dual_mov_b32 v62, v33 :: v_dual_add_nc_u32 v83, 0, v13
	v_dual_mov_b32 v61, v33 :: v_dual_add_nc_u32 v84, 0, v5
	v_dual_mov_b32 v64, v33 :: v_dual_add_nc_u32 v89, 0, v14
	v_dual_mov_b32 v63, v33 :: v_dual_add_nc_u32 v90, 0, v15
	v_dual_mov_b32 v50, v33 :: v_dual_add_nc_u32 v91, 0, v16
	v_mov_b32_e32 v49, v33
	v_mov_b32_e32 v51, v33
	v_mov_b32_e32 v52, v33
	v_mov_b32_e32 v53, v33
	v_mov_b32_e32 v54, v33
	v_mov_b32_e32 v55, v33
	v_mov_b32_e32 v56, v33
	v_mov_b32_e32 v41, v33
	v_mov_b32_e32 v42, v33
	v_mov_b32_e32 v43, v33
	v_mov_b32_e32 v44, v33
	v_mov_b32_e32 v45, v33
	v_mov_b32_e32 v46, v33
	v_mov_b32_e32 v47, v33
	v_mov_b32_e32 v48, v33
	v_mov_b32_e32 v25, v33
	v_mov_b32_e32 v26, v33
	v_mov_b32_e32 v27, v33
	v_mov_b32_e32 v28, v33
	v_mov_b32_e32 v29, v33
	v_mov_b32_e32 v30, v33
	v_mov_b32_e32 v31, v33
	v_mov_b32_e32 v32, v33
	v_mov_b32_e32 v17, v33
	v_mov_b32_e32 v18, v33
	v_mov_b32_e32 v19, v33
	v_mov_b32_e32 v20, v33
	v_mov_b32_e32 v21, v33
	v_mov_b32_e32 v22, v33
	v_mov_b32_e32 v23, v33
	v_mov_b32_e32 v24, v33
	v_mov_b32_e32 v9, v33
	v_mov_b32_e32 v10, v33
	v_mov_b32_e32 v11, v33
	v_mov_b32_e32 v12, v33
	v_mov_b32_e32 v13, v33
	v_mov_b32_e32 v14, v33
	v_mov_b32_e32 v15, v33
	v_mov_b32_e32 v16, v33
	v_mov_b32_e32 v1, v33
	v_mov_b32_e32 v2, v33
	v_mov_b32_e32 v3, v33
	v_mov_b32_e32 v4, v33
	v_mov_b32_e32 v5, v33
	v_mov_b32_e32 v6, v33
	v_mov_b32_e32 v7, v33
	v_mov_b32_e32 v8, v33
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_lshl_b32 s13, s72, 1
	s_mul_i32 s14, s72, 3
	s_lshl_b32 s15, s72, 2
	s_mul_i32 s16, s72, 5
	s_mul_i32 s17, s72, 6
	s_mul_i32 s18, s72, 7
	s_and_b32 s5, s57, 0xffff
	s_mov_b32 s4, s56
	s_lshl_b32 s19, s76, 7
	s_and_b32 s9, s59, 0xffff
	s_mov_b32 s8, s58
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
	v_cmp_eq_u32_e32 vcc_lo, 0, v66
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_add_nc_u32_e32 v92, s49, v73
	.loc	1 1362 42 is_stmt 1             ; ragged.py:1362:42
	s_add_i32 s20, s49, s51
	.loc	1 1374 21                       ; ragged.py:1374:21
	s_add_i32 s49, s49, 32
	v_mad_u64_u32 v[100:101], null, s20, s72, v[65:66]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v96, s19, v92
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_cndmask_b32_e64 v93, 0x80000000, v92, s1
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cmp_lt_i32 s49, s3
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_cndmask_b32_e64 v96, 0x80000000, v96, s0
	s_clause 0x1
	buffer_load_b128 v[92:95], v93, s[8:11], 0 offen
	buffer_load_b128 v[96:99], v96, s[8:11], 0 offen
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v109, v71, v95
	ds_bpermute_b32 v113, v72, v95
	v_add_nc_u32_e32 v102, s16, v100
	ds_bpermute_b32 v106, v71, v92
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v114, v71, v96
	ds_bpermute_b32 v118, v72, v96
	v_add_nc_u32_e32 v103, s18, v100
	ds_bpermute_b32 v110, v72, v92
	v_add_nc_u32_e32 v105, s14, v100
	v_add_nc_u32_e32 v101, s15, v100
	ds_bpermute_b32 v107, v71, v93
	ds_bpermute_b32 v111, v72, v93
	ds_bpermute_b32 v117, v71, v99
	ds_bpermute_b32 v121, v72, v99
	v_add_nc_u32_e32 v104, s17, v100
	v_add_nc_u32_e32 v93, s72, v100
	ds_bpermute_b32 v108, v71, v94
	ds_bpermute_b32 v112, v72, v94
	v_add_nc_u32_e32 v92, s13, v100
	.loc	1 1362 34                       ; ragged.py:1362:34
	v_cndmask_b32_e64 v94, 0x80000000, v100, s2
	.loc	1 1363 34                       ; ragged.py:1363:34
	ds_bpermute_b32 v115, v71, v97
	ds_bpermute_b32 v119, v72, v97
	.loc	1 1362 34                       ; ragged.py:1362:34
	v_cndmask_b32_e64 v97, 0x80000000, v103, s2
	v_cndmask_b32_e64 v96, 0x80000000, v102, s2
	v_cndmask_b32_e64 v99, 0x80000000, v105, s2
	.loc	1 1363 34                       ; ragged.py:1363:34
	ds_bpermute_b32 v116, v71, v98
	ds_bpermute_b32 v120, v72, v98
	.loc	1 1362 34                       ; ragged.py:1362:34
	v_cndmask_b32_e64 v95, 0x80000000, v101, s2
	v_cndmask_b32_e64 v98, 0x80000000, v104, s2
	v_cndmask_b32_e64 v93, 0x80000000, v93, s2
	v_cndmask_b32_e64 v92, 0x80000000, v92, s2
	s_clause 0x7
	buffer_load_u8 v94, v94, s[4:7], 0 offen
	buffer_load_u8 v97, v97, s[4:7], 0 offen
	buffer_load_u8 v96, v96, s[4:7], 0 offen
	buffer_load_u8 v99, v99, s[4:7], 0 offen
	buffer_load_u8 v100, v93, s[4:7], 0 offen
	buffer_load_u8 v98, v98, s[4:7], 0 offen
	buffer_load_u8 v95, v95, s[4:7], 0 offen
	buffer_load_u8 v101, v92, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(6)
	v_lshlrev_b16 v92.l, 8, v97.l
	s_waitcnt vmcnt(5)
	v_lshlrev_b16 v92.h, 8, v96.l
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v93.l, 8, v99.l
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v93.h, 8, v100.l
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_cndmask_b32_e32 v99, v111, v107, vcc_lo
	.loc	1 1362 34                       ; ragged.py:1362:34
	s_waitcnt vmcnt(1)
	v_or_b16 v95.h, v98.l, v92.l
	v_or_b16 v95.l, v95.l, v92.h
	s_waitcnt vmcnt(0)
	v_or_b16 v94.h, v101.l, v93.l
	v_or_b16 v94.l, v94.l, v93.h
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_cndmask_b32_e32 v98, v110, v106, vcc_lo
	v_dual_cndmask_b32 v100, v118, v114 :: v_dual_cndmask_b32 v101, v119, v115
	.loc	1 1362 34                       ; ragged.py:1362:34
	ds_store_b64 v74, v[94:95]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[92:93], v79
	ds_load_b64 v[96:97], v82
	ds_load_b64 v[104:105], v78
	.loc	1 1364 31                       ; ragged.py:1364:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[98:99], v[92:93], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[100:101], v[92:93], v[41:48] neg_lo:[1,1,0]
	.loc	1 1362 34                       ; ragged.py:1362:34
	ds_load_2addr_stride64_b64 v[92:95], v75 offset1:1
	.loc	1 1364 31                       ; ragged.py:1364:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[98:99], v[96:97], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[100:101], v[96:97], v[17:24] neg_lo:[1,1,0]
	.loc	1 1362 34                       ; ragged.py:1362:34
	ds_load_b64 v[96:97], v89
	.loc	1 1364 31                       ; ragged.py:1364:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[98:99], v[92:93], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[100:101], v[92:93], v[57:64] neg_lo:[1,1,0]
	.loc	1 1362 34                       ; ragged.py:1362:34
	ds_load_b64 v[92:93], v83
	ds_load_b64 v[102:103], v90
	.loc	1 1364 31                       ; ragged.py:1364:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[98:99], v[96:97], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[100:101], v[96:97], v[1:8] neg_lo:[1,1,0]
	.loc	1 1362 34                       ; ragged.py:1362:34
	ds_load_b64 v[96:97], v76
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_dual_cndmask_b32 v98, v112, v108 :: v_dual_cndmask_b32 v99, v113, v109
	v_dual_cndmask_b32 v100, v120, v116 :: v_dual_cndmask_b32 v101, v121, v117
	.loc	1 1364 31                       ; ragged.py:1364:31
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[98:99], v[102:103], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[100:101], v[102:103], v[1:8] neg_lo:[1,1,0]
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_dual_cndmask_b32 v102, v106, v110 :: v_dual_cndmask_b32 v103, v107, v111
	v_dual_cndmask_b32 v106, v108, v112 :: v_dual_cndmask_b32 v107, v109, v113
	.loc	1 1364 31                       ; ragged.py:1364:31
	v_wmma_i32_16x16x16_iu4 v[49:56], v[98:99], v[94:95], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[98:99], v[92:93], v[25:32] neg_lo:[1,1,0]
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_cndmask_b32_e32 v111, v115, v119, vcc_lo
	.loc	1 1364 31                       ; ragged.py:1364:31
	v_wmma_i32_16x16x16_iu4 v[41:48], v[100:101], v[94:95], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[100:101], v[92:93], v[17:24] neg_lo:[1,1,0]
	.loc	1 1362 34                       ; ragged.py:1362:34
	ds_load_2addr_stride64_b64 v[92:95], v75 offset0:2 offset1:3
	ds_load_b64 v[112:113], v84
	.loc	1 1364 31                       ; ragged.py:1364:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[98:99], v[96:97], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[100:101], v[96:97], v[57:64] neg_lo:[1,1,0]
	.loc	1 1362 34                       ; ragged.py:1362:34
	ds_load_b64 v[96:97], v77
	ds_load_b64 v[108:109], v81
	ds_load_b64 v[98:99], v80
	ds_load_b64 v[100:101], v91
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_cndmask_b32_e32 v110, v114, v118, vcc_lo
	v_dual_cndmask_b32 v114, v116, v120 :: v_dual_cndmask_b32 v115, v117, v121
	.loc	1 1364 31                       ; ragged.py:1364:31
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[102:103], v[92:93], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[110:111], v[92:93], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[102:103], v[96:97], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[110:111], v[96:97], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[102:103], v[98:99], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[110:111], v[98:99], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[102:103], v[100:101], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[110:111], v[100:101], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[106:107], v[104:105], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[114:115], v[104:105], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[106:107], v[108:109], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[114:115], v[108:109], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[106:107], v[112:113], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[114:115], v[112:113], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[106:107], v[94:95], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[114:115], v[94:95], v[1:8] neg_lo:[1,1,0]
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
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
	v_mov_b32_e32 v48, v8
	v_mov_b32_e32 v47, v8
	v_mov_b32_e32 v46, v8
	v_mov_b32_e32 v45, v8
	v_mov_b32_e32 v44, v8
	v_mov_b32_e32 v43, v8
	v_mov_b32_e32 v42, v8
	v_mov_b32_e32 v41, v8
	v_mov_b32_e32 v56, v8
	v_mov_b32_e32 v55, v8
	v_mov_b32_e32 v54, v8
	v_mov_b32_e32 v53, v8
	v_mov_b32_e32 v52, v8
	v_mov_b32_e32 v51, v8
	v_mov_b32_e32 v50, v8
	v_mov_b32_e32 v49, v8
	v_mov_b32_e32 v64, v8
	v_mov_b32_e32 v63, v8
	v_mov_b32_e32 v62, v8
	v_mov_b32_e32 v61, v8
	v_mov_b32_e32 v60, v8
	v_mov_b32_e32 v59, v8
	v_mov_b32_e32 v58, v8
	v_mov_b32_e32 v57, v8
	v_mov_b32_e32 v40, v8
	v_mov_b32_e32 v39, v8
	v_mov_b32_e32 v38, v8
	v_mov_b32_e32 v37, v8
	v_mov_b32_e32 v36, v8
	v_mov_b32_e32 v35, v8
	v_mov_b32_e32 v34, v8
	v_mov_b32_e32 v33, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 1314 27 is_stmt 1             ; ragged.py:1314:27
	s_add_i32 s3, s12, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1314 26 is_stmt 0             ; ragged.py:1314:26
	s_lshr_b32 s4, s3, 31
	s_add_i32 s3, s3, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s3, s3, 1
	.loc	1 1375 20 is_stmt 1             ; ragged.py:1375:20
	s_cmp_lt_i32 s49, s3
	.loc	1 1375 17 is_stmt 0             ; ragged.py:1375:17
	s_cbranch_scc1 .LBB0_6
; %bb.5:                                ; %._crit_edge._crit_edge
	.loc	1 1411 21 is_stmt 1             ; ragged.py:1411:21
	s_add_i32 s64, s55, s50
	s_cbranch_execz .LBB0_7
	s_branch .LBB0_8
.LBB0_6:
                                        ; implicit-def: $sgpr64
.LBB0_7:
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_lshrrev_b32_e32 v82, 6, v70
	.loc	1 1386 33                       ; ragged.py:1386:33
	s_and_b32 s4, s12, 0x80000001
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_or_b32_e32 v94, 2, v67
	.loc	1 1386 33                       ; ragged.py:1386:33
	s_cmp_eq_u32 s4, 1
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_or_b32_e32 v95, 3, v67
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v70, s49, v82
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mul_lo_u32 v82, s72, v82
	.loc	1 1386 33                       ; ragged.py:1386:33
	s_cselect_b32 s65, -1, 0
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_add_i32 s51, s49, s51
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_or_b32_e32 v93, 1, v67
	v_or_b32_e32 v96, 4, v67
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_mul_i32 s51, s51, s72
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_or_b32_e32 v81, 5, v67
	.loc	1 1386 63                       ; ragged.py:1386:63
	s_add_i32 s77, s3, -1
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_add_i32 s51, s51, s75
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v89, s49, v94
	v_or_b32_e32 v90, s49, v95
	v_or_b32_e32 v107, 4, v70
	v_or_b32_e32 v108, 8, v70
	v_or_b32_e32 v109, 12, v70
	v_or_b32_e32 v110, 16, v70
	v_or_b32_e32 v111, 20, v70
	v_or_b32_e32 v65, 24, v70
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s41, s3, v70
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s18, s77, v70
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v70, 28, v70
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add3_u32 v69, s51, v69, v82
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v83, s49, v67
	v_or_b32_e32 v84, s49, v93
	v_or_b32_e32 v91, s49, v96
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_or_b32_e32 v79, 7, v67
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v92, s49, v81
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_or_b32_e32 v80, 6, v67
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s43, s3, v108
	v_cmp_gt_i32_e64 s38, s3, v89
	v_cmp_gt_i32_e64 s37, s3, v90
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s15, s77, v89
	v_cmp_eq_u32_e64 s14, s77, v90
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mad_u64_u32 v[89:90], null, s72, 20, v[69:70]
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s40, s3, v83
	v_cmp_gt_i32_e64 s39, s3, v84
	v_cmp_gt_i32_e64 s36, s3, v91
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s17, s77, v83
	v_cmp_eq_u32_e64 s16, s77, v84
	v_cmp_eq_u32_e64 s13, s77, v91
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mad_u64_u32 v[83:84], null, s72, 12, v[69:70]
	v_mad_u64_u32 v[90:91], null, s72, 24, v[69:70]
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v98, s49, v79
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s44, s3, v109
	v_cmp_gt_i32_e64 s45, s3, v110
	v_cmp_gt_i32_e64 s46, s3, v111
	v_cmp_gt_i32_e64 s47, s3, v65
	v_cmp_gt_i32_e64 s35, s3, v92
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s12, s77, v92
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_lshl_add_u32 v92, s72, 3, v69
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v97, s49, v80
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_lshl_add_u32 v84, s72, 4, v69
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s43, s2, s43
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s33, s3, v98
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s10, s77, v98
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s41, s2, s41
	s_and_b32 s44, s2, s44
	s_and_b32 s45, s2, s45
	s_and_b32 s46, s2, s46
	s_and_b32 s47, s2, s47
	.loc	1 1387 34 is_stmt 0             ; ragged.py:1387:34
	v_cndmask_b32_e64 v98, 0x80000000, v92, s43
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mad_u64_u32 v[91:92], null, s72, 28, v[69:70]
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	s_add_i32 s64, s55, s50
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s42, s3, v107
	v_cmp_gt_i32_e64 s48, s3, v70
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_or_b32_e32 v74, 12, v67
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s34, s3, v97
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s11, s77, v97
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_lshl_add_u32 v82, s72, 2, v69
	.loc	1 1387 34 is_stmt 0             ; ragged.py:1387:34
	v_cndmask_b32_e64 v97, 0x80000000, v69, s41
	v_cndmask_b32_e64 v69, 0x80000000, v83, s44
	v_cndmask_b32_e64 v83, 0x80000000, v84, s45
	v_cndmask_b32_e64 v84, 0x80000000, v89, s46
	v_cndmask_b32_e64 v89, 0x80000000, v90, s47
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	s_mul_i32 s47, s64, s76
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_or_b32_e32 v78, 8, v67
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v68, s49, s47, v68
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s42, s2, s42
	s_and_b32 s2, s2, s48
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_or_b32_e32 v73, 13, v67
	v_or_b32_e32 v72, 14, v67
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v103, s49, v74
	.loc	1 1387 34                       ; ragged.py:1387:34
	s_and_b32 s69, s57, 0xffff
	s_mov_b32 s71, 0x31027000
	s_mov_b32 s70, 0x7ffffffe
	s_mov_b32 s68, s56
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_or_b32_e32 v77, 9, v67
	v_or_b32_e32 v76, 10, v67
	v_or_b32_e32 v75, 11, v67
	v_or_b32_e32 v71, 15, v67
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v90, 0x80000000, v91, s2
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v99, s49, v78
	.loc	1 1387 34                       ; ragged.py:1387:34
	s_clause 0x4
	buffer_load_u8 v91, v69, s[68:71], 0 offen
	buffer_load_u8 v83, v83, s[68:71], 0 offen
	buffer_load_u8 v84, v84, s[68:71], 0 offen
	buffer_load_u8 v89, v89, s[68:71], 0 offen
	buffer_load_u8 v69, v90, s[68:71], 0 offen
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add_nc_u32_e32 v90, v68, v67
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v104, s49, v73
	v_or_b32_e32 v105, s49, v72
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s27, s3, v103
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v100, s49, v77
	v_or_b32_e32 v101, s49, v76
	v_or_b32_e32 v102, s49, v75
	v_or_b32_e32 v106, s49, v71
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s31, s3, v99
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s20, s77, v109
	v_cmp_eq_u32_e64 s9, s77, v99
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add_nc_u32_e32 v99, 2, v90
	v_lshl_add_u32 v68, s76, 7, v68
	v_add_nc_u32_e32 v109, 12, v90
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v82, 0x80000000, v82, s42
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s26, s3, v104
	v_cmp_gt_i32_e64 s25, s3, v105
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s42, s1, s40
	s_and_b32 s44, s1, s38
	s_and_b32 s52, s1, s27
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s30, s3, v100
	v_cmp_gt_i32_e64 s29, s3, v101
	v_cmp_gt_i32_e64 s28, s3, v102
	v_cmp_gt_i32_e64 s24, s3, v106
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s21, s77, v110
	v_cmp_eq_u32_e64 s19, s77, v111
	v_cmp_eq_u32_e64 s8, s77, v100
	.loc	1 1387 34                       ; ragged.py:1387:34
	s_clause 0x2
	buffer_load_u8 v92, v97, s[68:71], 0 offen
	buffer_load_u8 v97, v82, s[68:71], 0 offen
	buffer_load_u8 v82, v98, s[68:71], 0 offen
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add_nc_u32_e32 v98, 1, v90
	v_add_nc_u32_e32 v100, 3, v90
	v_add_nc_u32_e32 v110, 13, v90
	v_add_nc_u32_e32 v67, v68, v67
	v_add_nc_u32_e32 v93, v68, v93
	v_add_nc_u32_e32 v94, v68, v94
	v_add_nc_u32_e32 v95, v68, v95
	v_add_nc_u32_e32 v96, v68, v96
	.loc	1 1388 34 is_stmt 0             ; ragged.py:1388:34
	v_cndmask_b32_e64 v111, 0x80000000, v90, s42
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add_nc_u32_e32 v81, v68, v81
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v99, 0x80000000, v99, s44
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add_nc_u32_e32 v80, v68, v80
	v_add_nc_u32_e32 v79, v68, v79
	v_add_nc_u32_e32 v78, v68, v78
	v_add_nc_u32_e32 v77, v68, v77
	v_add_nc_u32_e32 v76, v68, v76
	v_add_nc_u32_e32 v75, v68, v75
	v_add_nc_u32_e32 v74, v68, v74
	v_add_nc_u32_e32 v73, v68, v73
	v_add_nc_u32_e32 v72, v68, v72
	v_add_nc_u32_e32 v68, v68, v71
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v71, 0x80000000, v109, s52
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add_nc_u32_e32 v109, 14, v90
	.loc	1 1386 56 is_stmt 1             ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s23, s77, v107
	v_cmp_eq_u32_e64 s22, s77, v108
	v_cmp_eq_u32_e64 s7, s77, v101
	v_cmp_eq_u32_e64 s6, s77, v102
	v_cmp_eq_u32_e64 s5, s77, v103
	v_cmp_eq_u32_e64 s4, s77, v104
	v_cmp_eq_u32_e64 s3, s77, v105
	v_cmp_eq_u32_e32 vcc_lo, s77, v106
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add_nc_u32_e32 v101, 4, v90
	v_add_nc_u32_e32 v102, 5, v90
	v_add_nc_u32_e32 v103, 6, v90
	v_add_nc_u32_e32 v104, 7, v90
	v_add_nc_u32_e32 v105, 8, v90
	v_add_nc_u32_e32 v106, 9, v90
	v_add_nc_u32_e32 v107, 10, v90
	v_add_nc_u32_e32 v108, 11, v90
	v_add_nc_u32_e32 v90, 15, v90
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s43, s1, s39
	s_and_b32 s41, s1, s37
	s_and_b32 s53, s1, s26
	s_and_b32 s54, s1, s25
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_and_b32 s69, s59, 0xffff
	s_mov_b32 s68, s58
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s1, s36
	s_and_b32 s45, s1, s35
	s_and_b32 s46, s1, s34
	s_and_b32 s47, s1, s33
	s_and_b32 s48, s1, s31
	s_and_b32 s49, s1, s30
	s_and_b32 s50, s1, s29
	s_and_b32 s51, s1, s28
	s_and_b32 s1, s1, s24
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v98, 0x80000000, v98, s43
	s_clause 0x2
	buffer_load_u8 v111, v111, s[68:71], 0 offen
	buffer_load_u8 v99, v99, s[68:71], 0 offen
	buffer_load_u8 v112, v71, s[68:71], 0 offen
	v_cndmask_b32_e64 v100, 0x80000000, v100, s41
	v_cndmask_b32_e64 v110, 0x80000000, v110, s53
	v_cndmask_b32_e64 v71, 0x80000000, v109, s54
	v_cndmask_b32_e64 v90, 0x80000000, v90, s1
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s1, s0, s40
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v108, 0x80000000, v108, s51
	v_cndmask_b32_e64 v67, 0x80000000, v67, s1
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s1, s0, s39
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_clause 0x1
	buffer_load_u8 v98, v98, s[68:71], 0 offen
	buffer_load_u8 v109, v110, s[68:71], 0 offen
	v_cndmask_b32_e64 v101, 0x80000000, v101, s2
	s_clause 0x1
	buffer_load_u8 v100, v100, s[68:71], 0 offen
	buffer_load_u8 v110, v71, s[68:71], 0 offen
	v_cndmask_b32_e64 v71, 0x80000000, v93, s1
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s1, s0, s38
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_clause 0x2
	buffer_load_u8 v108, v108, s[68:71], 0 offen
	buffer_load_u8 v90, v90, s[68:71], 0 offen
	buffer_load_u8 v93, v67, s[68:71], 0 offen
	v_cndmask_b32_e64 v67, 0x80000000, v94, s1
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s1, s0, s37
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v102, 0x80000000, v102, s45
	s_clause 0x1
	buffer_load_u8 v101, v101, s[68:71], 0 offen
	buffer_load_u8 v94, v71, s[68:71], 0 offen
	v_cndmask_b32_e64 v71, 0x80000000, v95, s1
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s1, s0, s36
	.loc	1 1388 34                       ; ragged.py:1388:34
	buffer_load_u8 v95, v67, s[68:71], 0 offen
	v_cndmask_b32_e64 v67, 0x80000000, v96, s1
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s1, s0, s35
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v103, 0x80000000, v103, s46
	s_clause 0x1
	buffer_load_u8 v102, v102, s[68:71], 0 offen
	buffer_load_u8 v96, v71, s[68:71], 0 offen
	v_cndmask_b32_e64 v71, 0x80000000, v81, s1
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s1, s0, s34
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_clause 0x1
	buffer_load_u8 v103, v103, s[68:71], 0 offen
	buffer_load_u8 v81, v67, s[68:71], 0 offen
	v_cndmask_b32_e64 v104, 0x80000000, v104, s47
	buffer_load_u8 v113, v71, s[68:71], 0 offen
	v_cndmask_b32_e64 v67, 0x80000000, v80, s1
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s1, s0, s33
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v105, 0x80000000, v105, s48
	v_cndmask_b32_e64 v71, 0x80000000, v79, s1
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s1, s0, s31
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_clause 0x1
	buffer_load_u8 v104, v104, s[68:71], 0 offen
	buffer_load_u8 v114, v67, s[68:71], 0 offen
	v_cndmask_b32_e64 v106, 0x80000000, v106, s49
	buffer_load_u8 v115, v71, s[68:71], 0 offen
	v_cndmask_b32_e64 v67, 0x80000000, v78, s1
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s1, s0, s30
	.loc	1 1388 34                       ; ragged.py:1388:34
	buffer_load_u8 v105, v105, s[68:71], 0 offen
	v_cndmask_b32_e64 v71, 0x80000000, v77, s1
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s1, s0, s29
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_clause 0x1
	buffer_load_u8 v116, v67, s[68:71], 0 offen
	buffer_load_u8 v106, v106, s[68:71], 0 offen
	v_cndmask_b32_e64 v107, 0x80000000, v107, s50
	buffer_load_u8 v117, v71, s[68:71], 0 offen
	v_cndmask_b32_e64 v67, 0x80000000, v76, s1
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s1, s0, s28
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s2, s65, s18
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v71, 0x80000000, v75, s1
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s1, s0, s27
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_clause 0x1
	buffer_load_u8 v118, v67, s[68:71], 0 offen
	buffer_load_u8 v107, v107, s[68:71], 0 offen
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s18, s65, s23
	.loc	1 1388 34                       ; ragged.py:1388:34
	buffer_load_u8 v119, v71, s[68:71], 0 offen
	v_cndmask_b32_e64 v67, 0x80000000, v74, s1
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s1, s0, s26
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s14, s65, s14
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v71, 0x80000000, v73, s1
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s1, s0, s25
	s_and_b32 s0, s0, s24
	.loc	1 1388 34                       ; ragged.py:1388:34
	buffer_load_u8 v120, v67, s[68:71], 0 offen
	v_cndmask_b32_e64 v68, 0x80000000, v68, s0
	buffer_load_u8 v121, v71, s[68:71], 0 offen
	v_cndmask_b32_e64 v67, 0x80000000, v72, s1
	s_clause 0x1
	buffer_load_u8 v122, v67, s[68:71], 0 offen
	buffer_load_u8 v123, v68, s[68:71], 0 offen
	.loc	1 1386 56 is_stmt 1             ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s1, s77, v70
	v_cmp_eq_u32_e64 s0, s77, v65
	.loc	1 1386 32 is_stmt 0             ; ragged.py:1386:32
	s_and_b32 s10, s65, s10
	s_and_b32 s8, s65, s8
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	s_waitcnt lgkmcnt(0)
	.loc	1 1386 32                       ; ragged.py:1386:32
	s_and_b32 s1, s65, s1
	s_and_b32 s0, s65, s0
	.loc	1 1389 34                       ; ragged.py:1389:34
	s_barrier
	.loc	1 1386 32                       ; ragged.py:1386:32
	s_and_b32 s12, s65, s12
	s_and_b32 s11, s65, s11
	s_and_b32 s9, s65, s9
	s_and_b32 s6, s65, s6
	s_and_b32 s13, s65, s13
	s_and_b32 s7, s65, s7
	s_and_b32 s4, s65, s4
	s_and_b32 s3, s65, s3
	s_and_b32 s5, s65, s5
	.loc	1 1389 62                       ; ragged.py:1389:62
	s_waitcnt vmcnt(39)
	v_and_b16 v68.l, v91.l, 15
	s_waitcnt vmcnt(38)
	v_and_b16 v67.h, v83.l, 15
	s_waitcnt vmcnt(37)
	v_and_b16 v68.h, v84.l, 15
	s_waitcnt vmcnt(35)
	v_and_b16 v69.h, v89.l, 15
	v_and_b16 v70.l, v69.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1389 34 is_stmt 0             ; ragged.py:1389:34
	v_cndmask_b16 v69.h, v89.l, v69.h, s0
	v_cndmask_b16 v69.l, v69.l, v70.l, s1
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s1, s65, s16
	s_and_b32 s0, s65, s17
	.loc	1 1389 62                       ; ragged.py:1389:62
	s_waitcnt vmcnt(34)
	v_and_b16 v65.l, v92.l, 15
	s_waitcnt vmcnt(33)
	v_and_b16 v65.h, v97.l, 15
	s_waitcnt vmcnt(32)
	v_and_b16 v67.l, v82.l, 15
	.loc	1 1389 34 is_stmt 0             ; ragged.py:1389:34
	v_cndmask_b16 v65.l, v92.l, v65.l, s2
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s2, s65, s22
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_cndmask_b16 v65.h, v97.l, v65.h, s18
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b16 v67.l, v82.l, v67.l, s2
	.loc	1 1386 32                       ; ragged.py:1386:32
	s_and_b32 s2, s65, s20
	s_and_b32 s18, s65, s21
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_cndmask_b16 v68.l, v91.l, v68.l, s2
	v_add_nc_u32_e32 v91, 0, v0
	v_cndmask_b16 v67.h, v83.l, v67.h, s18
	.loc	1 1386 32                       ; ragged.py:1386:32
	s_and_b32 s18, s65, s19
	s_and_b32 s2, s65, s15
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_cndmask_b16 v68.h, v84.l, v68.h, s18
	ds_store_b8 v91, v65
	ds_store_b8_d16_hi v91, v65 offset:256
	ds_store_b8 v91, v67 offset:512
	ds_store_b8 v91, v68 offset:768
	ds_store_b8_d16_hi v91, v67 offset:1024
	ds_store_b8_d16_hi v91, v68 offset:1280
	ds_store_b8_d16_hi v91, v69 offset:1536
	ds_store_b8 v91, v69 offset:1792
	.loc	1 1386 32                       ; ragged.py:1386:32
	s_and_b32 s15, s65, vcc_lo
	.loc	1 1389 34                       ; ragged.py:1389:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cmp_eq_u32_e32 vcc_lo, 0, v66
	.loc	1 1390 62 is_stmt 0             ; ragged.py:1390:62
	s_waitcnt vmcnt(31)
	v_and_b16 v70.h, v111.l, 15
	s_waitcnt vmcnt(30)
	v_and_b16 v71.l, v99.l, 15
	s_waitcnt vmcnt(29)
	v_and_b16 v76.l, v112.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v70.h, v111.l, v70.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v71.l, v99.l, v71.l, s2
	v_cndmask_b16 v76.l, v112.l, v76.l, s5
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(28)
	v_and_b16 v70.l, v98.l, 15
	s_waitcnt vmcnt(27)
	v_and_b16 v76.h, v109.l, 15
	s_waitcnt vmcnt(26)
	v_and_b16 v71.h, v100.l, 15
	s_waitcnt vmcnt(25)
	v_and_b16 v77.l, v110.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v70.l, v98.l, v70.l, s1
	v_cndmask_b16 v76.h, v109.l, v76.h, s4
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(24)
	v_and_b16 v75.h, v108.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v71.h, v100.l, v71.h, s14
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(23)
	v_and_b16 v77.h, v90.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_lshlrev_b16 v65.h, 8, v70.l
	v_cndmask_b16 v77.l, v110.l, v77.l, s3
	v_cndmask_b16 v75.h, v108.l, v75.h, s6
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(21)
	v_and_b16 v72.l, v101.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v77.h, v90.l, v77.h, s15
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(20)
	v_and_b16 v78.h, v94.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_lshlrev_b16 v65.l, 8, v71.h
	v_or_b16 v69.l, v70.h, v65.h
	v_cndmask_b16 v72.l, v101.l, v72.l, s13
	.loc	1 1390 62                       ; ragged.py:1390:62
	v_and_b16 v78.l, v93.l, 15
	s_waitcnt vmcnt(19)
	v_and_b16 v79.l, v95.l, 15
	s_waitcnt vmcnt(18)
	v_and_b16 v72.h, v102.l, 15
	s_waitcnt vmcnt(17)
	v_and_b16 v79.h, v96.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v78.h, v94.l, v78.h, s1
	v_or_b16 v69.h, v71.l, v65.l
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(16)
	v_and_b16 v73.l, v103.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v72.h, v102.l, v72.h, s12
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(15)
	v_and_b16 v80.l, v81.l, 15
	s_waitcnt vmcnt(14)
	v_and_b16 v80.h, v113.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v79.h, v96.l, v79.h, s14
	v_cndmask_b16 v73.l, v103.l, v73.l, s11
	v_lshlrev_b16 v67.h, 8, v72.h
	v_cndmask_b16 v80.l, v81.l, v80.l, s13
	v_cndmask_b16 v80.h, v113.l, v80.h, s12
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(13)
	v_and_b16 v73.h, v104.l, 15
	s_waitcnt vmcnt(12)
	v_and_b16 v81.l, v114.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_lshlrev_b16 v65.l, 8, v75.h
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(11)
	v_and_b16 v81.h, v115.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v78.l, v93.l, v78.l, s0
	v_cndmask_b16 v73.h, v104.l, v73.h, s10
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(10)
	v_and_b16 v74.l, v105.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v79.l, v95.l, v79.l, s2
	v_cndmask_b16 v81.h, v115.l, v81.h, s10
	v_cndmask_b16 v81.l, v114.l, v81.l, s11
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(8)
	v_and_b16 v74.h, v106.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v74.l, v105.l, v74.l, s9
	v_lshlrev_b16 v67.l, 8, v73.h
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(7)
	v_and_b16 v82.h, v117.l, 15
	v_and_b16 v82.l, v116.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v74.h, v106.l, v74.h, s8
	v_or_b16 v70.l, v72.l, v67.h
	v_or_b16 v70.h, v73.l, v67.l
	v_lshlrev_b16 v67.l, 8, v77.h
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(5)
	v_and_b16 v75.l, v107.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_lshlrev_b16 v65.h, 8, v74.h
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(4)
	v_and_b16 v83.h, v119.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_lshlrev_b32_e32 v73, 3, v0
	.loc	1 1390 62                       ; ragged.py:1390:62
	v_and_b16 v83.l, v118.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v75.l, v107.l, v75.l, s7
	v_or_b16 v71.l, v74.l, v65.h
	v_lshrrev_b32_e32 v74, 2, v66
	v_cndmask_b16 v82.h, v117.l, v82.h, s8
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(3)
	v_and_b16 v84.l, v120.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v83.h, v119.l, v83.h, s6
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(2)
	v_and_b16 v84.h, v121.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_lshlrev_b16 v67.h, 8, v76.h
	v_lshlrev_b16 v68.l, 8, v79.h
	v_or_b16 v71.h, v75.l, v65.l
	v_or_b16 v72.h, v77.l, v67.l
	v_cndmask_b16 v84.h, v121.l, v84.h, s4
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(0)
	v_and_b16 v89.h, v123.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_lshlrev_b16 v65.l, 8, v78.h
	v_lshlrev_b16 v65.h, 8, v81.h
	v_lshlrev_b16 v67.l, 8, v80.h
	v_and_or_b32 v73, 0x78, v73, v74
	.loc	1 1390 62                       ; ragged.py:1390:62
	v_and_b16 v89.l, v122.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v90.h, v123.l, v89.h, s15
	v_cndmask_b16 v82.l, v116.l, v82.l, s9
	v_cndmask_b16 v83.l, v118.l, v83.l, s7
	v_cndmask_b16 v84.l, v120.l, v84.l, s5
	v_or_b16 v72.l, v76.l, v67.h
	v_or_b16 v68.h, v79.l, v68.l
	v_lshlrev_b16 v67.h, 8, v83.h
	v_or_b16 v68.l, v78.l, v65.l
	v_or_b16 v74.h, v81.l, v65.h
	v_or_b16 v74.l, v80.l, v67.l
	v_xor_b32_e32 v76, 4, v73
	v_lshlrev_b16 v65.l, 8, v82.h
	v_lshlrev_b16 v67.l, 8, v84.h
	v_cndmask_b16 v90.l, v122.l, v89.l, s3
	v_lshlrev_b16 v65.h, 8, v90.h
	v_or_b16 v75.h, v83.l, v67.h
	ds_bpermute_b32 v77, v73, v69
	ds_bpermute_b32 v69, v76, v69
	v_or_b16 v75.l, v82.l, v65.l
	v_or_b16 v65.l, v84.l, v67.l
	ds_bpermute_b32 v67, v73, v70
	ds_bpermute_b32 v78, v73, v71
	ds_bpermute_b32 v70, v76, v70
	ds_bpermute_b32 v79, v73, v72
	ds_bpermute_b32 v71, v76, v71
	ds_bpermute_b32 v72, v76, v72
	ds_bpermute_b32 v80, v73, v68
	ds_bpermute_b32 v83, v73, v74
	ds_bpermute_b32 v84, v76, v68
	ds_bpermute_b32 v74, v76, v74
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_add_nc_u32_e32 v89, 0, v86
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_or_b16 v65.h, v90.l, v65.h
	ds_bpermute_b32 v90, v73, v75
	ds_bpermute_b32 v91, v76, v75
	.loc	1 1391 31                       ; ragged.py:1391:31
	ds_load_u8 v94, v89 offset:320
	ds_load_u8 v95, v89 offset:256
	ds_load_u8 v96, v89 offset:448
	ds_load_u8 v97, v89 offset:384
	.loc	1 1390 34                       ; ragged.py:1390:34
	ds_bpermute_b32 v92, v73, v65
	ds_bpermute_b32 v93, v76, v65
	s_waitcnt lgkmcnt(18)
	v_cndmask_b32_e32 v81, v69, v77, vcc_lo
	v_cndmask_b32_e32 v65, v77, v69, vcc_lo
	.loc	1 1391 31                       ; ragged.py:1391:31
	ds_load_u8 v108, v89 offset:1856
	ds_load_u8 v109, v89 offset:1792
	ds_load_u8 v110, v89 offset:1984
	ds_load_u8 v111, v89 offset:1920
	ds_load_u8 v112, v89 offset:1600
	ds_load_u8 v113, v89 offset:1536
	.loc	1 1390 34                       ; ragged.py:1390:34
	s_waitcnt lgkmcnt(21)
	v_cndmask_b32_e32 v82, v70, v67, vcc_lo
	v_cndmask_b32_e32 v66, v67, v70, vcc_lo
	s_waitcnt lgkmcnt(19)
	v_cndmask_b32_e32 v77, v71, v78, vcc_lo
	v_cndmask_b32_e32 v67, v78, v71, vcc_lo
	s_waitcnt lgkmcnt(18)
	v_cndmask_b32_e32 v78, v72, v79, vcc_lo
	v_cndmask_b32_e32 v68, v79, v72, vcc_lo
	s_waitcnt lgkmcnt(15)
	v_cndmask_b32_e32 v75, v84, v80, vcc_lo
	s_waitcnt lgkmcnt(14)
	v_dual_cndmask_b32 v71, v80, v84 :: v_dual_cndmask_b32 v76, v74, v83
	v_cndmask_b32_e32 v72, v83, v74, vcc_lo
	.loc	1 1391 31                       ; ragged.py:1391:31
	ds_load_u8 v79, v89 offset:64
	ds_load_u8 v80, v89
	ds_load_u8 v83, v89 offset:192
	ds_load_u8 v84, v89 offset:128
	.loc	1 1390 34                       ; ragged.py:1390:34
	s_waitcnt lgkmcnt(16)
	v_cndmask_b32_e32 v73, v91, v90, vcc_lo
	v_cndmask_b32_e32 v69, v90, v91, vcc_lo
	.loc	1 1391 31                       ; ragged.py:1391:31
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v90, v95, v94, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v91, v97, v96, 0xc0c0004
	.loc	1 1390 34                       ; ragged.py:1390:34
	s_waitcnt lgkmcnt(10)
	v_cndmask_b32_e32 v74, v93, v92, vcc_lo
	v_cndmask_b32_e32 v70, v92, v93, vcc_lo
	.loc	1 1391 31                       ; ragged.py:1391:31
	ds_load_u8 v92, v89 offset:832
	ds_load_u8 v93, v89 offset:768
	ds_load_u8 v94, v89 offset:960
	ds_load_u8 v95, v89 offset:896
	ds_load_u8 v96, v89 offset:576
	ds_load_u8 v97, v89 offset:512
	ds_load_u8 v98, v89 offset:704
	ds_load_u8 v99, v89 offset:640
	ds_load_u8 v100, v89 offset:1344
	ds_load_u8 v101, v89 offset:1280
	ds_load_u8 v102, v89 offset:1472
	ds_load_u8 v103, v89 offset:1408
	ds_load_u8 v104, v89 offset:1088
	ds_load_u8 v105, v89 offset:1024
	ds_load_u8 v106, v89 offset:1216
	ds_load_u8 v107, v89 offset:1152
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	v_lshl_or_b32 v80, v91, 16, v90
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v90, v95, v94, 0xc0c0004
	ds_load_u8 v94, v89 offset:1728
	ds_load_u8 v95, v89 offset:1664
	v_perm_b32 v83, v84, v83, 0xc0c0004
	v_perm_b32 v84, v93, v92, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v93, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v98, v105, v104, 0xc0c0004
	ds_load_u8 v92, v89 offset:16
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v99, v107, v106, 0xc0c0004
	v_perm_b32 v91, v97, v96, 0xc0c0004
	v_perm_b32 v96, v101, v100, 0xc0c0004
	v_perm_b32 v97, v103, v102, 0xc0c0004
	v_lshl_or_b32 v84, v90, 16, v84
	v_lshl_or_b32 v90, v99, 16, v98
	ds_load_u8 v98, v89 offset:336
	ds_load_u8 v99, v89 offset:272
	ds_load_u8 v100, v89 offset:464
	ds_load_u8 v101, v89 offset:400
	ds_load_u8 v102, v89 offset:80
	ds_load_u8 v103, v89 offset:208
	ds_load_u8 v104, v89 offset:144
	v_lshl_or_b32 v79, v83, 16, v79
	v_lshl_or_b32 v83, v93, 16, v91
	v_lshl_or_b32 v91, v97, 16, v96
	v_perm_b32 v93, v109, v108, 0xc0c0004
	v_perm_b32 v96, v111, v110, 0xc0c0004
	v_perm_b32 v97, v113, v112, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[81:82], v[79:80], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v89 offset:848
	ds_load_u8 v105, v89 offset:784
	ds_load_u8 v106, v89 offset:976
	ds_load_u8 v107, v89 offset:912
	ds_load_u8 v108, v89 offset:592
	ds_load_u8 v109, v89 offset:528
	ds_load_u8 v110, v89 offset:720
	ds_load_u8 v111, v89 offset:656
	v_wmma_i32_16x16x16_iu4 v[57:64], v[75:76], v[79:80], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v112, v89 offset:48
	v_wmma_i32_16x16x16_iu4 v[33:40], v[77:78], v[83:84], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v80, v96, 16, v93
	v_lshl_or_b32 v79, v94, 16, v97
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[73:74], v[83:84], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v99, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v92, v92, v102, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[65:66], v[90:91], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v100, v104, v103, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[71:72], v[90:91], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v84, v99, 16, v98
	v_wmma_i32_16x16x16_iu4 v[33:40], v[67:68], v[79:80], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v83, v100, 16, v92
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v92, v105, v95, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v93, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v94, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v95, v111, v110, 0xc0c0004
	ds_load_u8 v96, v89 offset:1360
	ds_load_u8 v97, v89 offset:1296
	ds_load_u8 v98, v89 offset:1488
	ds_load_u8 v99, v89 offset:1424
	ds_load_u8 v100, v89 offset:1104
	ds_load_u8 v101, v89 offset:1040
	ds_load_u8 v102, v89 offset:1232
	ds_load_u8 v103, v89 offset:1168
	ds_load_u8 v104, v89 offset:1872
	ds_load_u8 v105, v89 offset:1808
	ds_load_u8 v106, v89 offset:2000
	ds_load_u8 v107, v89 offset:1936
	ds_load_u8 v108, v89 offset:1616
	ds_load_u8 v109, v89 offset:1552
	ds_load_u8 v110, v89 offset:1744
	ds_load_u8 v111, v89 offset:1680
	v_wmma_i32_16x16x16_iu4 v[49:56], v[81:82], v[83:84], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v91, v93, 16, v92
	v_wmma_i32_16x16x16_iu4 v[57:64], v[69:70], v[79:80], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v90, v95, 16, v94
	v_wmma_i32_16x16x16_iu4 v[41:48], v[75:76], v[83:84], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v79, v97, v96, 0xc0c0004
	ds_load_u8 v92, v89 offset:32
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v80, v99, v98, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[49:56], v[77:78], v[90:91], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v93, v101, v100, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[73:74], v[90:91], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v94, v103, v102, 0xc0c0004
	v_lshl_or_b32 v84, v80, 16, v79
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v95, v105, v104, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v96, v107, v106, 0xc0c0004
	v_lshl_or_b32 v83, v94, 16, v93
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v97, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v98, v111, v110, 0xc0c0004
	v_lshl_or_b32 v80, v96, 16, v95
	v_wmma_i32_16x16x16_iu4 v[49:56], v[65:66], v[83:84], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[71:72], v[83:84], v[41:48] neg_lo:[1,1,0]
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_or_b32_e32 v110, 0x3f0, v0
	.loc	1 1391 31                       ; ragged.py:1391:31
	v_lshl_or_b32 v79, v98, 16, v97
	ds_load_u8 v90, v89 offset:352
	ds_load_u8 v91, v89 offset:288
	ds_load_u8 v93, v89 offset:480
	ds_load_u8 v94, v89 offset:416
	ds_load_u8 v95, v89 offset:96
	ds_load_u8 v96, v89 offset:224
	ds_load_u8 v97, v89 offset:160
	ds_load_u8 v98, v89 offset:864
	ds_load_u8 v99, v89 offset:800
	ds_load_u8 v100, v89 offset:992
	ds_load_u8 v101, v89 offset:928
	ds_load_u8 v102, v89 offset:608
	ds_load_u8 v103, v89 offset:544
	ds_load_u8 v104, v89 offset:736
	ds_load_u8 v105, v89 offset:672
	ds_load_u8 v106, v89 offset:1376
	ds_load_u8 v107, v89 offset:1312
	ds_load_u8 v108, v89 offset:1504
	ds_load_u8 v109, v89 offset:1440
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v83, v91, v90, 0xc0c0004
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_add_nc_u32_e32 v110, 0, v110
	.loc	1 1391 31                       ; ragged.py:1391:31
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v84, v94, v93, 0xc0c0004
	ds_load_u8 v90, v89 offset:1120
	ds_load_u8 v93, v89 offset:1056
	ds_load_u8 v94, v89 offset:1248
	ds_load_u8 v111, v89 offset:1184
	v_wmma_i32_16x16x16_iu4 v[49:56], v[67:68], v[79:80], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[69:70], v[79:80], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v91, v84, 16, v83
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v83, v92, v95, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v84, v97, v96, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v92, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v95, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v96, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v97, v105, v104, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v98, v107, v106, 0xc0c0004
	ds_load_u8 v100, v89 offset:368
	ds_load_u8 v101, v89 offset:304
	ds_load_u8 v102, v89 offset:496
	ds_load_u8 v103, v89 offset:432
	ds_load_u8 v104, v89 offset:112
	ds_load_u8 v105, v89 offset:240
	ds_load_u8 v106, v89 offset:176
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v99, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v107, v93, v90, 0xc0c0004
	v_lshl_or_b32 v90, v84, 16, v83
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v94, v111, v94, 0xc0c0004
	v_lshl_or_b32 v93, v95, 16, v92
	v_lshl_or_b32 v92, v97, 16, v96
	v_lshl_or_b32 v84, v99, 16, v98
	v_wmma_i32_16x16x16_iu4 v[25:32], v[81:82], v[90:91], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v83, v94, 16, v107
	ds_load_u8 v96, v89 offset:1888
	ds_load_u8 v97, v89 offset:1824
	ds_load_u8 v98, v89 offset:2016
	ds_load_u8 v99, v89 offset:1952
	ds_load_u8 v107, v89 offset:1632
	ds_load_u8 v108, v89 offset:1568
	ds_load_u8 v109, v89 offset:880
	ds_load_u8 v111, v89 offset:816
	ds_load_u8 v113, v89 offset:1760
	v_wmma_i32_16x16x16_iu4 v[17:24], v[75:76], v[90:91], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v94, v101, v100, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[77:78], v[92:93], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v95, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v100, v112, v104, 0xc0c0004
	ds_load_u8 v102, v110
	ds_load_u8 v103, v89 offset:944
	ds_load_u8 v104, v89 offset:1696
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v101, v106, v105, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[73:74], v[92:93], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v95, v95, 16, v94
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[83:84], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v94, v101, 16, v100
	ds_load_u8 v100, v89 offset:624
	ds_load_u8 v101, v89 offset:560
	ds_load_u8 v105, v89 offset:752
	ds_load_u8 v106, v89 offset:688
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_or_b32_e32 v97, 0x7f0, v0
	.loc	1 1391 31                       ; ragged.py:1391:31
	v_wmma_i32_16x16x16_iu4 v[9:16], v[81:82], v[94:95], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[75:76], v[94:95], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v99, v111, v109, 0xc0c0004
	ds_load_u8 v109, v89 offset:1392
	ds_load_u8 v110, v89 offset:1328
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_add_nc_u32_e32 v97, 0, v97
	.loc	1 1391 31                       ; ragged.py:1391:31
	v_wmma_i32_16x16x16_iu4 v[17:24], v[71:72], v[83:84], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	v_perm_b32 v103, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v104, v104, v113, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v82, v102, 16, v99
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v81, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v90, v106, v105, 0xc0c0004
	ds_load_u8 v91, v89 offset:1520
	ds_load_u8 v99, v89 offset:1456
	ds_load_u8 v100, v89 offset:1136
	ds_load_u8 v101, v89 offset:1072
	ds_load_u8 v102, v89 offset:1264
	ds_load_u8 v105, v89 offset:1200
	v_lshl_or_b32 v81, v90, 16, v81
	v_lshl_or_b32 v90, v98, 16, v96
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v106, v110, v109, 0xc0c0004
	ds_load_u8 v107, v89 offset:1904
	ds_load_u8 v108, v89 offset:1840
	ds_load_u8 v97, v97
	ds_load_u8 v109, v89 offset:1968
	ds_load_u8 v110, v89 offset:1648
	ds_load_u8 v111, v89 offset:1584
	ds_load_u8 v112, v89 offset:1776
	ds_load_u8 v113, v89 offset:1712
	v_lshl_or_b32 v89, v104, 16, v103
	v_wmma_i32_16x16x16_iu4 v[9:16], v[77:78], v[81:82], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[73:74], v[81:82], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[67:68], v[89:90], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[69:70], v[89:90], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v91, v99, v91, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v96, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v98, v105, v102, 0xc0c0004
	v_lshl_or_b32 v78, v91, 16, v106
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v75, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v76, v109, v97, 0xc0c0004
	v_lshl_or_b32 v77, v98, 16, v96
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v91, v111, v110, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v113, v112, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[77:78], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v66, v76, 16, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v65, v92, 16, v91
	v_wmma_i32_16x16x16_iu4 v[1:8], v[71:72], v[77:78], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[67:68], v[65:66], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[69:70], v[65:66], v[1:8] neg_lo:[1,1,0]
.LBB0_8:
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v65, s75, v86
	.loc	1 1404 33                       ; ragged.py:1404:33
	s_mul_i32 s0, s74, s72
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v78, v57
	.loc	1 1404 21                       ; ragged.py:1404:21
	s_add_i32 s4, s75, s0
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v57, v49
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v68, 16, v65
	.loc	1 1404 21                       ; ragged.py:1404:21
	v_add_lshl_u32 v69, s4, v86, 1
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v67, 32, v65
	v_or_b32_e32 v66, 48, v65
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s3, s72, v65
	v_cmp_gt_i32_e64 s1, s72, v68
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_nc_u32_e32 v70, 32, v69
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s72, v67
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v79, v58
	v_cvt_f32_i32_e32 v58, v50
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_nc_u32_e32 v71, 64, v69
	v_cndmask_b32_e64 v65, 0x80000000, v69, s3
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s72, v66
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v81, v60
	v_cvt_f32_i32_e32 v60, v52
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_nc_u32_e32 v69, 0x60, v69
	v_cndmask_b32_e64 v68, 0x80000000, v70, s1
	v_cndmask_b32_e64 v67, 0x80000000, v71, s0
	s_and_b32 s21, s61, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s60
	v_cndmask_b32_e32 v70, 0x80000000, v69, vcc_lo
	s_clause 0x3
	buffer_load_u16 v69, v65, s[20:23], 0 offen
	buffer_load_u16 v66, v68, s[20:23], 0 offen
	buffer_load_u16 v67, v67, s[20:23], 0 offen
	buffer_load_u16 v68, v70, s[20:23], 0 offen
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v65, s55, v0
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v70, s64, v0, 1
	s_and_b32 s21, s63, 0xffff
	s_mov_b32 s20, s62
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v50, v54
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s2, s73, v65
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v54, v27
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v92, 4, v0
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v83, v15
	v_cvt_f32_i32_e32 v77, v40
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v65, 0x80000000, v70, s2
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v70, v33
	v_cvt_f32_i32_e32 v40, v44
	v_cvt_f32_i32_e32 v44, v1
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v1, s73, v86
	.loc	1 1410 36                       ; ragged.py:1410:36
	buffer_load_u16 v65, v65, s[20:23], 0 offen
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v71, v34
	v_cvt_f32_i32_e32 v76, v39
	v_cvt_f32_i32_e32 v39, v43
	v_cvt_f32_i32_e32 v43, v31
	v_cvt_f32_i32_e32 v31, v7
	v_cvt_f32_i32_e32 v75, v38
	v_cvt_f32_i32_e32 v38, v42
	v_cvt_f32_i32_e32 v42, v30
	v_cvt_f32_i32_e32 v30, v6
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s4, s4, s73
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v74, v37
	v_cvt_f32_i32_e32 v37, v41
	v_cvt_f32_i32_e32 v41, v29
	v_cvt_f32_i32_e32 v29, v5
	v_cvt_f32_i32_e32 v73, v36
	v_cvt_f32_i32_e32 v80, v59
	v_cvt_f32_i32_e32 v59, v51
	v_cvt_f32_i32_e32 v49, v53
	v_cvt_f32_i32_e32 v51, v55
	v_cvt_f32_i32_e32 v33, v45
	v_cvt_f32_i32_e32 v36, v48
	v_cvt_f32_i32_e32 v48, v25
	v_cvt_f32_i32_e32 v53, v26
	v_cvt_f32_i32_e32 v55, v28
	v_cvt_f32_i32_e32 v26, v17
	v_cvt_f32_i32_e32 v27, v18
	v_cvt_f32_i32_e32 v28, v19
	v_cvt_f32_i32_e32 v25, v20
	v_cvt_f32_i32_e32 v19, v21
	v_cvt_f32_i32_e32 v20, v22
	v_cvt_f32_i32_e32 v21, v23
	v_cvt_f32_i32_e32 v22, v24
	v_cvt_f32_i32_e32 v45, v2
	v_cvt_f32_i32_e32 v24, v8
	v_cvt_f32_i32_e32 v72, v35
	v_cvt_f32_i32_e32 v35, v47
	v_cvt_f32_i32_e32 v47, v4
	v_cvt_f32_i32_e32 v84, v16
	v_cvt_f32_i32_e32 v34, v46
	v_cvt_f32_i32_e32 v46, v3
	v_cvt_f32_i32_e32 v82, v14
	v_cvt_f32_i32_e32 v90, v11
	v_cvt_f32_i32_e32 v52, v56
	v_cvt_f32_i32_e32 v56, v13
	v_cvt_f32_i32_e32 v91, v12
	v_cvt_f32_i32_e32 v89, v10
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_and_b32 s21, s67, 0xffff
	s_mov_b32 s20, s66
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v67, 16, v67
	v_lshlrev_b32_e32 v69, 16, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v48, v48, v67 :: v_dual_lshlrev_b32 v23, 5, v85
	v_dual_mul_f32 v54, v54, v67 :: v_dual_and_b32 v93, 0x70, v88
	v_mul_f32_e32 v70, v70, v69
	v_dual_mul_f32 v71, v71, v69 :: v_dual_and_b32 v0, 0xf0, v0
	v_dual_mul_f32 v73, v73, v69 :: v_dual_and_b32 v18, 28, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_and_or_b32 v15, v92, 1, v93
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshl_add_u32 v86, v0, 2, 0
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add3_u32 v87, s4, s55, v1
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v88, v9
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshl_add_u32 v85, v0, 1, 0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v7, 0x84, v15
	v_or_b32_e32 v6, 0x86, v15
	v_or_b32_e32 v5, 0x88, v15
	v_or_b32_e32 v2, 0x8e, v15
	v_or_b32_e32 v8, 0x82, v15
	v_or_b32_e32 v17, 2, v15
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v111, s55, v7
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v4, 0x8a, v15
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v92, s55, v15
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v16, 4, v15
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v110, s55, v6
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v3, 0x8c, v15
	v_or_b32_e32 v14, 6, v15
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v109, s55, v5
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v11, 12, v15
	.loc	1 1415 17 is_stmt 1             ; ragged.py:1415:17
	v_add3_u32 v86, v86, v23, v18
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_lshl_add_u32 v23, s73, 4, v87
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v93, s55, v2
	v_or_b32_e32 v112, s55, v8
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s9, s73, v111
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v111, s55, v17
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v13, 8, v15
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v95, s55, v4
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s2, s73, v92
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[0:1], null, s73, 48, v[87:88]
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s8, s73, v110
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v110, s55, v16
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v12, 10, v15
	.loc	1 1545 17 is_stmt 1             ; ragged.py:1545:17
	v_add_lshl_u32 v1, v87, v15, 2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v94, s55, v3
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s7, s73, v109
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v109, s55, v14
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s4, s73, v93
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v93, s55, v11
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s10, s73, v112
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v112, v23, v15, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s18, s73, v111
	v_cmp_gt_i32_e64 s6, s73, v95
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v95, s55, v13
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s2
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v10, 14, v15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v92, v87, v17, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s17, s73, v110
	v_cmp_gt_i32_e64 s5, s73, v94
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v94, s55, v12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s1, s2
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v9, 0x80, v15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v96, v87, v16, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s16, s73, v109
	v_cmp_gt_i32_e64 s13, s73, v93
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v93, 0x80000000, v112, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v97, v87, v14, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s15, s73, v95
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v114, s55, v10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v92, 0x80000000, v92, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v98, v87, v13, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s14, s73, v94
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v113, s55, v9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v94, 0x80000000, v96, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v99, v87, v12, 2
	v_cndmask_b32_e64 v95, 0x80000000, v97, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v100, v87, v11, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s12, s73, v114
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v96, 0x80000000, v98, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v101, v87, v10, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s11, s73, v113
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v97, 0x80000000, v99, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v102, v87, v9, 2
	v_cndmask_b32_e64 v98, 0x80000000, v100, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v103, v87, v8, 2
	v_cndmask_b32_e64 v99, 0x80000000, v101, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v104, v87, v7, 2
	v_cndmask_b32_e64 v100, 0x80000000, v102, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v105, v87, v6, 2
	v_cndmask_b32_e64 v101, 0x80000000, v103, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v106, v87, v5, 2
	v_cndmask_b32_e64 v102, 0x80000000, v104, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v107, v87, v4, 2
	v_cndmask_b32_e64 v103, 0x80000000, v105, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v108, v87, v3, 2
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v75, v75, v69 :: v_dual_lshlrev_b32 v66, 16, v66
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v77, v77, v69 :: v_dual_lshlrev_b32 v68, 16, v68
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v42, v42, v67 :: v_dual_lshlrev_b32 v65, 16, v65
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v104, 0x80000000, v106, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s6
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v72, v72, v69 :: v_dual_mul_f32 v59, v59, v66
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v105, 0x80000000, v107, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s3, s5
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v74, v74, v69 :: v_dual_mul_f32 v53, v53, v67
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v106, 0x80000000, v108, s19
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v76, v76, v69 :: v_dual_mul_f32 v55, v55, v67
	v_mul_f32_e32 v78, v78, v69
	v_mul_f32_e32 v79, v79, v69
	v_mul_f32_e32 v80, v80, v69
	v_mul_f32_e32 v81, v81, v69
	v_dual_mul_f32 v61, v61, v69 :: v_dual_mul_f32 v50, v50, v66
	v_dual_mul_f32 v62, v62, v69 :: v_dual_mul_f32 v49, v49, v66
	v_dual_mul_f32 v63, v63, v69 :: v_dual_mul_f32 v52, v52, v66
	v_dual_mul_f32 v64, v64, v69 :: v_dual_mul_f32 v51, v51, v66
	v_mul_f32_e32 v69, v88, v68
	v_mul_f32_e32 v88, v89, v68
	v_mul_f32_e32 v89, v90, v68
	v_mul_f32_e32 v90, v91, v68
	v_dual_mul_f32 v84, v84, v68 :: v_dual_mul_f32 v91, v37, v66
	v_dual_mul_f32 v107, v38, v66 :: v_dual_mul_f32 v112, v28, v67
	v_mul_f32_e32 v108, v39, v66
	v_dual_mul_f32 v109, v40, v66 :: v_dual_mul_f32 v110, v26, v67
	.loc	1 1415 17                       ; ragged.py:1415:17
	ds_store_b32 v86, v65
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[37:40], v85
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v57, v57, v66
	v_mul_f32_e32 v58, v58, v66
	v_dual_mul_f32 v60, v60, v66 :: v_dual_mul_f32 v41, v41, v67
	v_dual_mul_f32 v56, v56, v68 :: v_dual_mul_f32 v43, v43, v67
	v_mul_f32_e32 v82, v82, v68
	v_dual_mul_f32 v32, v32, v67 :: v_dual_mul_f32 v83, v83, v68
	v_dual_mul_f32 v111, v27, v67 :: v_dual_mul_f32 v44, v44, v68
	v_mul_f32_e32 v65, v25, v67
	v_dual_mul_f32 v45, v45, v68 :: v_dual_mul_f32 v34, v34, v66
	v_dual_mul_f32 v46, v46, v68 :: v_dual_mul_f32 v33, v33, v66
	v_dual_mul_f32 v47, v47, v68 :: v_dual_mul_f32 v36, v36, v66
	v_dual_mul_f32 v35, v35, v66 :: v_dual_mul_f32 v86, v20, v67
	v_dual_mul_f32 v66, v19, v67 :: v_dual_mul_f32 v117, v30, v68
	v_dual_mul_f32 v115, v21, v67 :: v_dual_mul_f32 v118, v31, v68
	v_dual_mul_f32 v67, v22, v67 :: v_dual_mul_f32 v116, v29, v68
	.loc	1 1415 17                       ; ragged.py:1415:17
	ds_load_b128 v[19:22], v85 offset:16
	.loc	1 1408 17                       ; ragged.py:1408:17
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v68, v24, v68 :: v_dual_mul_f32 v71, v71, v38
	.loc	1 1415 17                       ; ragged.py:1415:17
	ds_load_b128 v[24:27], v85 offset:512
	ds_load_b128 v[28:31], v85 offset:528
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_lshl_add_u32 v18, s73, 5, v87
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_add_lshl_u32 v87, v87, v2, 2
	v_add_lshl_u32 v113, v23, v17, 2
	.loc	1 1415 17 is_stmt 1             ; ragged.py:1415:17
	v_dual_mul_f32 v70, v70, v37 :: v_dual_mul_f32 v73, v73, v40
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s3, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v114, v23, v16, 2
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v72, v72, v39 :: v_dual_mul_f32 v57, v57, v37
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v87, 0x80000000, v87, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s18
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v48, v48, v37 :: v_dual_mul_f32 v55, v55, v40
	v_dual_mul_f32 v54, v54, v39 :: v_dual_mul_f32 v37, v69, v37
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v69, v74, v19 :: v_dual_mul_f32 v74, v75, v20
	v_dual_mul_f32 v58, v58, v38 :: v_dual_mul_f32 v59, v59, v39
	v_dual_mul_f32 v60, v60, v40 :: v_dual_mul_f32 v53, v53, v38
	v_dual_mul_f32 v38, v88, v38 :: v_dual_mul_f32 v39, v89, v39
	v_dual_mul_f32 v40, v90, v40 :: v_dual_mul_f32 v75, v76, v21
	v_dual_mul_f32 v76, v77, v22 :: v_dual_mul_f32 v51, v51, v21
	v_dual_mul_f32 v49, v49, v19 :: v_dual_mul_f32 v50, v50, v20
	v_dual_mul_f32 v52, v52, v22 :: v_dual_mul_f32 v41, v41, v19
	v_dual_mul_f32 v42, v42, v20 :: v_dual_mul_f32 v43, v43, v21
	v_dual_mul_f32 v32, v32, v22 :: v_dual_mul_f32 v21, v83, v21
	v_dual_mul_f32 v19, v56, v19 :: v_dual_mul_f32 v20, v82, v20
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v22, v84, v22 :: v_dual_mul_f32 v77, v79, v25
	v_dual_mul_f32 v56, v78, v24 :: v_dual_mul_f32 v79, v81, v27
	v_dual_mul_f32 v78, v80, v26 :: v_dual_mul_f32 v81, v107, v25
	v_dual_mul_f32 v80, v91, v24 :: v_dual_mul_f32 v83, v109, v27
	v_dual_mul_f32 v82, v108, v26 :: v_dual_mul_f32 v85, v111, v25
	v_dual_mul_f32 v84, v110, v24 :: v_dual_mul_f32 v65, v65, v27
	v_dual_mul_f32 v88, v112, v26 :: v_dual_mul_f32 v25, v45, v25
	v_dual_mul_f32 v24, v44, v24 :: v_dual_mul_f32 v27, v47, v27
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v26, v46, v26 :: v_dual_mul_f32 v47, v64, v31
	v_dual_mul_f32 v44, v61, v28 :: v_dual_mul_f32 v45, v62, v29
	v_dual_mul_f32 v46, v63, v30 :: v_dual_mul_f32 v33, v33, v28
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0xe
	buffer_store_b32 v70, v1, s[20:23], 0 offen
	buffer_store_b32 v71, v92, s[20:23], 0 offen
	buffer_store_b32 v72, v94, s[20:23], 0 offen
	buffer_store_b32 v73, v95, s[20:23], 0 offen
	buffer_store_b32 v69, v96, s[20:23], 0 offen
	buffer_store_b32 v74, v97, s[20:23], 0 offen
	buffer_store_b32 v75, v98, s[20:23], 0 offen
	buffer_store_b32 v76, v99, s[20:23], 0 offen
	buffer_store_b32 v56, v100, s[20:23], 0 offen
	buffer_store_b32 v77, v101, s[20:23], 0 offen
	buffer_store_b32 v78, v102, s[20:23], 0 offen
	buffer_store_b32 v79, v103, s[20:23], 0 offen
	buffer_store_b32 v44, v104, s[20:23], 0 offen
	buffer_store_b32 v45, v105, s[20:23], 0 offen
	buffer_store_b32 v46, v106, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v113, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v45, v23, v14, 2
	v_cndmask_b32_e64 v44, 0x80000000, v114, s3
	s_clause 0x3
	buffer_store_b32 v47, v87, s[20:23], 0 offen
	buffer_store_b32 v57, v93, s[20:23], 0 offen
	buffer_store_b32 v58, v1, s[20:23], 0 offen
	buffer_store_b32 v59, v44, s[20:23], 0 offen
	v_add_lshl_u32 v1, v23, v13, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v46, v23, v11, 2
	v_cndmask_b32_e64 v44, 0x80000000, v45, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v45, v23, v12, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v60, v44, s[20:23], 0 offen
	buffer_store_b32 v49, v1, s[20:23], 0 offen
	v_add_lshl_u32 v1, v23, v10, 2
	v_cndmask_b32_e64 v45, 0x80000000, v45, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v44, v23, v9, 2
	v_cndmask_b32_e64 v46, 0x80000000, v46, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v50, v45, s[20:23], 0 offen
	buffer_store_b32 v51, v46, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v45, v23, v8, 2
	v_cndmask_b32_e64 v44, 0x80000000, v44, s3
	v_add_lshl_u32 v46, v23, v7, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v52, v1, s[20:23], 0 offen
	buffer_store_b32 v80, v44, s[20:23], 0 offen
	v_add_lshl_u32 v1, v23, v6, 2
	v_cndmask_b32_e64 v45, 0x80000000, v45, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v44, v23, v5, 2
	v_cndmask_b32_e64 v46, 0x80000000, v46, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v81, v45, s[20:23], 0 offen
	buffer_store_b32 v82, v46, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v45, v23, v4, 2
	v_cndmask_b32_e64 v44, 0x80000000, v44, s3
	v_add_lshl_u32 v46, v23, v3, 2
	s_clause 0x1
	buffer_store_b32 v83, v1, s[20:23], 0 offen
	buffer_store_b32 v33, v44, s[20:23], 0 offen
	v_add_lshl_u32 v1, v23, v2, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v23, v18, v15, 2
	v_cndmask_b32_e64 v45, 0x80000000, v45, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s1, s5
	s_and_b32 s1, s1, s4
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v34, v34, v29 :: v_dual_mul_f32 v35, v35, v30
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v46, 0x80000000, v46, s3
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s2
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v36, v36, v31 :: v_dual_mul_f32 v61, v66, v28
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v33, v18, v17, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s1
	s_clause 0x1
	buffer_store_b32 v34, v45, s[20:23], 0 offen
	buffer_store_b32 v35, v46, s[20:23], 0 offen
	v_add_lshl_u32 v34, v18, v16, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v36, v1, s[20:23], 0 offen
	buffer_store_b32 v48, v23, s[20:23], 0 offen
	v_add_lshl_u32 v1, v18, v14, 2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v23, v18, v13, 2
	v_cndmask_b32_e64 v34, 0x80000000, v34, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v53, v33, s[20:23], 0 offen
	buffer_store_b32 v54, v34, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v33, v18, v12, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s1
	v_add_lshl_u32 v34, v18, v11, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v55, v1, s[20:23], 0 offen
	buffer_store_b32 v41, v23, s[20:23], 0 offen
	v_add_lshl_u32 v1, v18, v10, 2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v23, v18, v9, 2
	v_cndmask_b32_e64 v34, 0x80000000, v34, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v42, v33, s[20:23], 0 offen
	buffer_store_b32 v43, v34, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v33, v18, v8, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s1
	v_add_lshl_u32 v34, v18, v7, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v32, v1, s[20:23], 0 offen
	buffer_store_b32 v84, v23, s[20:23], 0 offen
	v_add_lshl_u32 v1, v18, v6, 2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v23, v18, v5, 2
	v_cndmask_b32_e64 v34, 0x80000000, v34, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v32, v18, v4, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v85, v33, s[20:23], 0 offen
	buffer_store_b32 v88, v34, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s1
	s_clause 0x1
	buffer_store_b32 v65, v1, s[20:23], 0 offen
	buffer_store_b32 v61, v23, s[20:23], 0 offen
	v_add_lshl_u32 v1, v18, v2, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v33, v18, v3, 2
	v_add_lshl_u32 v15, v0, v15, 2
	v_cndmask_b32_e64 v32, 0x80000000, v32, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s5
	s_and_b32 s0, s0, s4
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v62, v86, v29 :: v_dual_mul_f32 v63, v115, v30
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s2
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v64, v67, v31 :: v_dual_mul_f32 v29, v117, v29
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	v_add_lshl_u32 v17, v0, v17, 2
	v_cndmask_b32_e64 v15, 0x80000000, v15, s0
	v_add_lshl_u32 v16, v0, v16, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x3
	buffer_store_b32 v62, v32, s[20:23], 0 offen
	buffer_store_b32 v63, v33, s[20:23], 0 offen
	buffer_store_b32 v64, v1, s[20:23], 0 offen
	buffer_store_b32 v37, v15, s[20:23], 0 offen
	v_add_lshl_u32 v1, v0, v14, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v13, v0, v13, 2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v12, v0, v12, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v11, v0, v11, 2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x3
	buffer_store_b32 v38, v17, s[20:23], 0 offen
	buffer_store_b32 v39, v16, s[20:23], 0 offen
	buffer_store_b32 v40, v1, s[20:23], 0 offen
	buffer_store_b32 v19, v13, s[20:23], 0 offen
	v_add_lshl_u32 v1, v0, v10, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v9, v0, v9, 2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v8, v0, v8, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v7, v0, v7, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x3
	buffer_store_b32 v20, v12, s[20:23], 0 offen
	buffer_store_b32 v21, v11, s[20:23], 0 offen
	buffer_store_b32 v22, v1, s[20:23], 0 offen
	buffer_store_b32 v24, v9, s[20:23], 0 offen
	v_add_lshl_u32 v1, v0, v6, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v5, v0, v5, 2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v4, v0, v4, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v0, v3, 2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	v_add_lshl_u32 v0, v0, v2, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s6
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v28, v116, v28
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v2, 0x80000000, v4, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s5
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v30, v118, v30 :: v_dual_mul_f32 v31, v68, v31
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x6
	buffer_store_b32 v25, v8, s[20:23], 0 offen
	buffer_store_b32 v26, v7, s[20:23], 0 offen
	buffer_store_b32 v27, v1, s[20:23], 0 offen
	buffer_store_b32 v28, v5, s[20:23], 0 offen
	buffer_store_b32 v29, v2, s[20:23], 0 offen
	buffer_store_b32 v30, v3, s[20:23], 0 offen
	buffer_store_b32 v31, v0, s[20:23], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 124
		.amdhsa_next_free_sgpr 78
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 124
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 78
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11964
; TotalNumSgprs: 80
; NumVgprs: 124
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 15
; NumSGPRsForWavesPerEU: 80
; NumVGPRsForWavesPerEU: 124
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     80
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     124
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
