	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[60:61], s[0:1], 0x30
	s_load_b128 s[44:47], s[0:1], 0x20
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s8, s2
	s_clause 0x1
	s_load_b256 s[48:55], s[0:1], 0x0
	s_load_b32 s65, s[0:1], 0x38
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v74, 1, v0
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v79, 2, v0
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v71, 1, v0
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_lshlrev_b32_e32 v77, 3, v0
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v72, 15, v0
	v_bfe_u32 v76, v0, 4, 1
	v_lshlrev_b32_e32 v73, 1, v0
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_lshlrev_b32_e32 v65, 4, v71
	v_and_b32_e32 v66, 24, v77
	v_and_b32_e32 v78, 24, v74
	v_and_b32_e32 v75, 16, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s60, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s61, 0xff
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
	s_ashr_i32 s11, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s10, s5, 8
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
	s_mul_i32 s30, s8, s60
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s7, s10
	s_mul_i32 s12, s4, s6
	s_ashr_i32 s13, s9, 31
	s_sub_i32 s5, s5, s12
	s_add_i32 s9, s4, 1
	s_sub_i32 s12, s5, s6
	s_cmp_ge_u32 s5, s6
	.loc	1 1359 39                       ; ragged.py:1359:39
	s_mul_i32 s67, s8, s61
	.loc	1 1306 17                       ; ragged.py:1306:17
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
	s_lshl_b32 s63, s6, 6
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s7, s7, s12
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v2, s63, v79
	.loc	1 1310 18                       ; ragged.py:1310:18
	s_lshl_b32 s62, s7, 8
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_add_u32 s4, s44, s4
	s_addc_u32 s5, s45, s5
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s62, v74
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s12, s[4:5], 0x0
	.loc	1 1322 22                       ; ragged.py:1322:22
	s_lshl_b32 s66, s3, 5
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s38, s60, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v3, 0x80, v1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s61, v1
	.loc	1 1350 21                       ; ragged.py:1350:21
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s0, s12, 31
	s_lshr_b32 s0, s0, 26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s0, s12, s0
	s_ashr_i32 s3, s0, 6
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s61, v3
	.loc	1 1349 39                       ; ragged.py:1349:39
	s_lshl_b32 s3, s3, 5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cmp_ge_i32 s66, s3
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	s_mul_i32 s11, s11, s8
	v_dual_mov_b32 v41, 0 :: v_dual_lshlrev_b32 v2, 1, v0
	s_sub_i32 s8, s13, s11
	s_lshl_b32 s2, s2, 8
	s_sub_i32 s8, s8, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v42, v41 :: v_dual_and_b32 v3, 24, v2
	s_mul_i32 s10, s10, s8
	v_and_or_b32 v2, v2, 30, v76
	s_lshl_b32 s8, s10, 8
	v_lshl_or_b32 v3, v72, 5, v3
	s_add_i32 s8, s8, s67
	v_add3_u32 v1, s63, s30, v79
	v_add3_u32 v5, s8, s2, v74
	v_xor_b32_e32 v4, v77, v78
	v_dual_mov_b32 v43, v41 :: v_dual_lshlrev_b32 v80, 2, v2
	v_xor_b32_e32 v2, 8, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[67:68], null, s65, v5, v[65:66]
	v_dual_mov_b32 v45, v41 :: v_dual_add_nc_u32 v8, 0x80, v5
	v_xor_b32_e32 v6, 16, v3
	v_xor_b32_e32 v7, 24, v3
	v_xor_b32_e32 v81, 4, v80
	v_mad_u64_u32 v[68:69], null, s65, v8, v[65:66]
	v_mad_u64_u32 v[69:70], null, v1, s65, v[66:67]
	v_dual_mov_b32 v47, v41 :: v_dual_add_nc_u32 v70, 0, v4
	v_dual_mov_b32 v57, v41 :: v_dual_add_nc_u32 v82, 0, v3
	v_dual_mov_b32 v44, v41 :: v_dual_add_nc_u32 v83, 0, v2
	v_dual_mov_b32 v59, v41 :: v_dual_add_nc_u32 v84, 0, v6
	v_dual_mov_b32 v46, v41 :: v_dual_add_nc_u32 v85, 0, v7
	v_mov_b32_e32 v48, v41
	v_mov_b32_e32 v58, v41
	v_mov_b32_e32 v60, v41
	v_mov_b32_e32 v61, v41
	v_mov_b32_e32 v62, v41
	v_mov_b32_e32 v63, v41
	v_mov_b32_e32 v64, v41
	v_mov_b32_e32 v49, v41
	v_mov_b32_e32 v50, v41
	v_mov_b32_e32 v51, v41
	v_mov_b32_e32 v52, v41
	v_mov_b32_e32 v53, v41
	v_mov_b32_e32 v54, v41
	v_mov_b32_e32 v55, v41
	v_mov_b32_e32 v56, v41
	v_mov_b32_e32 v33, v41
	v_mov_b32_e32 v34, v41
	v_mov_b32_e32 v35, v41
	v_mov_b32_e32 v36, v41
	v_mov_b32_e32 v37, v41
	v_mov_b32_e32 v38, v41
	v_mov_b32_e32 v39, v41
	v_mov_b32_e32 v40, v41
	v_mov_b32_e32 v25, v41
	v_mov_b32_e32 v26, v41
	v_mov_b32_e32 v27, v41
	v_mov_b32_e32 v28, v41
	v_mov_b32_e32 v29, v41
	v_mov_b32_e32 v30, v41
	v_mov_b32_e32 v31, v41
	v_mov_b32_e32 v32, v41
	v_mov_b32_e32 v17, v41
	v_mov_b32_e32 v18, v41
	v_mov_b32_e32 v19, v41
	v_mov_b32_e32 v20, v41
	v_mov_b32_e32 v21, v41
	v_mov_b32_e32 v22, v41
	v_mov_b32_e32 v23, v41
	v_mov_b32_e32 v24, v41
	v_mov_b32_e32 v9, v41
	v_mov_b32_e32 v10, v41
	v_mov_b32_e32 v11, v41
	v_mov_b32_e32 v12, v41
	v_mov_b32_e32 v13, v41
	v_mov_b32_e32 v14, v41
	v_mov_b32_e32 v15, v41
	v_mov_b32_e32 v16, v41
	v_mov_b32_e32 v1, v41
	v_mov_b32_e32 v2, v41
	v_mov_b32_e32 v3, v41
	v_mov_b32_e32 v4, v41
	v_mov_b32_e32 v5, v41
	v_mov_b32_e32 v6, v41
	v_mov_b32_e32 v7, v41
	v_mov_b32_e32 v8, v41
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s5, s49, 0xffff
	s_mov_b32 s4, s48
	s_and_b32 s9, s51, 0xffff
	s_mov_b32 s8, s50
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
	v_cmp_eq_u32_e32 vcc_lo, 0, v75
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1362 34                       ; ragged.py:1362:34
	v_add_nc_u32_e32 v86, s66, v69
	v_add_nc_u32_e32 v87, s66, v67
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_add_nc_u32_e32 v88, s66, v68
	.loc	1 1374 21                       ; ragged.py:1374:21
	s_add_i32 s66, s66, 32
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cmp_lt_i32 s66, s3
	.loc	1 1362 34                       ; ragged.py:1362:34
	v_cndmask_b32_e64 v86, 0x80000000, v86, s38
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_cndmask_b32_e64 v87, 0x80000000, v87, s1
	v_cndmask_b32_e64 v90, 0x80000000, v88, s0
	.loc	1 1362 34                       ; ragged.py:1362:34
	buffer_load_b64 v[94:95], v86, s[4:7], 0 offen
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_clause 0x1
	buffer_load_b128 v[86:89], v87, s[8:11], 0 offen
	buffer_load_b128 v[90:93], v90, s[8:11], 0 offen
	.loc	1 1362 34                       ; ragged.py:1362:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v70, v[94:95]
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v98, v80, v86
	ds_bpermute_b32 v99, v80, v87
	ds_bpermute_b32 v100, v81, v86
	ds_bpermute_b32 v101, v81, v87
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v102, v80, v90
	ds_bpermute_b32 v103, v80, v91
	ds_bpermute_b32 v104, v81, v90
	ds_bpermute_b32 v105, v81, v91
	.loc	1 1362 34                       ; ragged.py:1362:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[94:97], v82 offset1:1
	.loc	1 1363 34                       ; ragged.py:1363:34
	ds_bpermute_b32 v106, v80, v92
	ds_bpermute_b32 v107, v80, v93
	ds_bpermute_b32 v108, v81, v92
	ds_bpermute_b32 v109, v81, v93
	v_dual_cndmask_b32 v86, v100, v98 :: v_dual_cndmask_b32 v87, v101, v99
	v_dual_cndmask_b32 v90, v104, v102 :: v_dual_cndmask_b32 v91, v105, v103
	.loc	1 1364 31                       ; ragged.py:1364:31
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[86:87], v[94:95], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[86:87], v[96:97], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[90:91], v[94:95], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[90:91], v[96:97], v[33:40] neg_lo:[1,1,0]
	.loc	1 1362 34                       ; ragged.py:1362:34
	ds_load_2addr_stride64_b64 v[94:97], v82 offset0:2 offset1:3
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_waitcnt lgkmcnt(1)
	v_dual_cndmask_b32 v92, v108, v106 :: v_dual_cndmask_b32 v93, v109, v107
	.loc	1 1364 31                       ; ragged.py:1364:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[86:87], v[94:95], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[86:87], v[96:97], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[90:91], v[94:95], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[90:91], v[96:97], v[1:8] neg_lo:[1,1,0]
	.loc	1 1363 34                       ; ragged.py:1363:34
	ds_bpermute_b32 v94, v80, v88
	ds_bpermute_b32 v95, v80, v89
	ds_bpermute_b32 v96, v81, v88
	ds_bpermute_b32 v97, v81, v89
	.loc	1 1362 34                       ; ragged.py:1362:34
	ds_load_2addr_stride64_b64 v[86:89], v83 offset1:1
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_waitcnt lgkmcnt(1)
	v_dual_cndmask_b32 v90, v96, v94 :: v_dual_cndmask_b32 v91, v97, v95
	.loc	1 1364 31                       ; ragged.py:1364:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[92:93], v[86:87], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[92:93], v[88:89], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[90:91], v[86:87], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[90:91], v[88:89], v[49:56] neg_lo:[1,1,0]
	.loc	1 1362 34                       ; ragged.py:1362:34
	ds_load_2addr_stride64_b64 v[86:89], v83 offset0:2 offset1:3
	.loc	1 1364 31                       ; ragged.py:1364:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[90:91], v[86:87], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[90:91], v[88:89], v[9:16] neg_lo:[1,1,0]
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_cndmask_b32_e32 v91, v99, v101, vcc_lo
	.loc	1 1364 31                       ; ragged.py:1364:31
	v_wmma_i32_16x16x16_iu4 v[17:24], v[92:93], v[86:87], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[92:93], v[88:89], v[1:8] neg_lo:[1,1,0]
	.loc	1 1362 34                       ; ragged.py:1362:34
	ds_load_2addr_stride64_b64 v[86:89], v84 offset1:1
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_dual_cndmask_b32 v90, v98, v100 :: v_dual_cndmask_b32 v93, v103, v105
	v_cndmask_b32_e32 v92, v102, v104, vcc_lo
	.loc	1 1364 31                       ; ragged.py:1364:31
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[90:91], v[86:87], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[92:93], v[86:87], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[90:91], v[88:89], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[92:93], v[88:89], v[33:40] neg_lo:[1,1,0]
	.loc	1 1362 34                       ; ragged.py:1362:34
	ds_load_2addr_stride64_b64 v[86:89], v84 offset0:2 offset1:3
	.loc	1 1364 31                       ; ragged.py:1364:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[90:91], v[86:87], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[90:91], v[88:89], v[9:16] neg_lo:[1,1,0]
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_cndmask_b32_e32 v91, v95, v97, vcc_lo
	.loc	1 1364 31                       ; ragged.py:1364:31
	v_wmma_i32_16x16x16_iu4 v[17:24], v[92:93], v[86:87], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[92:93], v[88:89], v[1:8] neg_lo:[1,1,0]
	.loc	1 1362 34                       ; ragged.py:1362:34
	ds_load_2addr_stride64_b64 v[86:89], v85 offset1:1
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_dual_cndmask_b32 v90, v94, v96 :: v_dual_cndmask_b32 v93, v107, v109
	v_cndmask_b32_e32 v92, v106, v108, vcc_lo
	.loc	1 1364 31                       ; ragged.py:1364:31
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[90:91], v[86:87], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[92:93], v[86:87], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[90:91], v[88:89], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[92:93], v[88:89], v[33:40] neg_lo:[1,1,0]
	.loc	1 1362 34                       ; ragged.py:1362:34
	ds_load_2addr_stride64_b64 v[86:89], v85 offset0:2 offset1:3
	.loc	1 1364 31                       ; ragged.py:1364:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[90:91], v[86:87], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[92:93], v[86:87], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[90:91], v[88:89], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[92:93], v[88:89], v[1:8] neg_lo:[1,1,0]
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
	v_mov_b32_e32 v40, v8
	v_mov_b32_e32 v39, v8
	v_mov_b32_e32 v38, v8
	v_mov_b32_e32 v37, v8
	v_mov_b32_e32 v36, v8
	v_mov_b32_e32 v35, v8
	v_mov_b32_e32 v34, v8
	v_mov_b32_e32 v33, v8
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
	v_mov_b32_e32 v48, v8
	v_mov_b32_e32 v47, v8
	v_mov_b32_e32 v46, v8
	v_mov_b32_e32 v45, v8
	v_mov_b32_e32 v44, v8
	v_mov_b32_e32 v43, v8
	v_mov_b32_e32 v42, v8
	v_mov_b32_e32 v41, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 1314 27 is_stmt 1             ; ragged.py:1314:27
	s_add_i32 s2, s12, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1314 26 is_stmt 0             ; ragged.py:1314:26
	s_lshr_b32 s3, s2, 31
	s_add_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s3, s2, 1
	.loc	1 1375 20 is_stmt 1             ; ragged.py:1375:20
	s_cmp_lt_i32 s66, s3
	.loc	1 1375 17 is_stmt 0             ; ragged.py:1375:17
	s_cbranch_scc1 .LBB0_7
; %bb.5:                                ; %._crit_edge._crit_edge
	.loc	1 1415 17 is_stmt 1             ; ragged.py:1415:17
	v_lshlrev_b32_e32 v67, 1, v0
	.loc	1 1404 21                       ; ragged.py:1404:21
	s_add_i32 s64, s63, s30
	.loc	1 1411 21                       ; ragged.py:1411:21
	s_add_i32 s39, s62, s67
	s_cbranch_execz .LBB0_8
; %bb.6:
	.loc	1 0 21 is_stmt 0                ; ragged.py:0:21
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v73, v67
	s_branch .LBB0_9
.LBB0_7:
                                        ; implicit-def: $sgpr64
                                        ; implicit-def: $sgpr39
                                        ; implicit-def: $vgpr67
.LBB0_8:
	.loc	1 1386 33 is_stmt 1             ; ragged.py:1386:33
	s_and_b32 s4, s12, 0x80000001
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mul_lo_u32 v79, s65, v79
	.loc	1 1386 33                       ; ragged.py:1386:33
	s_cmp_eq_u32 s4, 1
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v103, s66, v66
	.loc	1 1386 33                       ; ragged.py:1386:33
	s_cselect_b32 s68, -1, 0
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_add_i32 s64, s63, s30
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_or_b32_e32 v81, 6, v65
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_mul_i32 s33, s64, s65
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_or_b32_e32 v67, 1, v65
	v_or_b32_e32 v68, 2, v65
	v_or_b32_e32 v69, 3, v65
	v_or_b32_e32 v70, 4, v65
	v_or_b32_e32 v80, 5, v65
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v108, 1, v103
	.loc	1 1387 42                       ; ragged.py:1387:42
	s_add_i32 s34, s66, s33
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v97, s66, v81
	v_or_b32_e32 v109, 2, v103
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add3_u32 v66, s34, v79, v66
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s2, s3, v103
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v91, s66, v65
	v_or_b32_e32 v110, 3, v103
	v_or_b32_e32 v92, s66, v67
	v_or_b32_e32 v93, s66, v68
	v_or_b32_e32 v94, s66, v69
	v_or_b32_e32 v95, s66, v70
	v_or_b32_e32 v96, s66, v80
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s39, s3, v108
	.loc	1 1386 63                       ; ragged.py:1386:63
	s_add_i32 s69, s3, -1
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v111, 4, v103
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s40, s3, v109
	v_cmp_gt_i32_e64 s22, s3, v97
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s33, s69, v97
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add_nc_u32_e32 v79, 1, v66
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_mul_lo_u32 v97, s65, v74
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v112, 5, v103
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s2, s38, s2
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s41, s3, v110
	v_cmp_gt_i32_e64 s28, s3, v91
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s12, s69, v91
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add_nc_u32_e32 v91, 2, v66
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_or_b32_e32 v82, 7, v65
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v113, 6, v103
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s27, s3, v92
	v_cmp_gt_i32_e64 s26, s3, v93
	v_cmp_gt_i32_e64 s25, s3, v94
	v_cmp_gt_i32_e64 s24, s3, v95
	v_cmp_gt_i32_e64 s23, s3, v96
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s10, s69, v92
	v_cmp_eq_u32_e64 s11, s69, v93
	v_cmp_eq_u32_e64 s29, s69, v94
	v_cmp_eq_u32_e64 s30, s69, v95
	v_cmp_eq_u32_e64 s31, s69, v96
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_add_nc_u32_e32 v92, 3, v66
	v_add_nc_u32_e32 v93, 4, v66
	v_add_nc_u32_e32 v94, 5, v66
	v_add_nc_u32_e32 v95, 6, v66
	v_add_nc_u32_e32 v96, 7, v66
	.loc	1 1387 34 is_stmt 0             ; ragged.py:1387:34
	v_cndmask_b32_e64 v66, 0x80000000, v66, s2
	.loc	1 1387 66                       ; ragged.py:1387:66
	s_and_b32 s2, s38, s39
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s42, s3, v111
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_add_i32 s39, s62, s67
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v114, 7, v103
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v79, 0x80000000, v79, s2
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s2, s38, s40
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s43, s3, v112
	.loc	1 1388 42                       ; ragged.py:1388:42
	s_mul_i32 s40, s39, s65
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v91, 0x80000000, v91, s2
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s2, s38, s41
	.loc	1 1317 18 is_stmt 1             ; ragged.py:1317:18
	v_or_b32_e32 v83, 8, v65
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v98, s66, v82
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s44, s3, v113
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add3_u32 v97, s66, s40, v97
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v92, 0x80000000, v92, s2
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s2, s38, s42
	.loc	1 1317 18 is_stmt 1             ; ragged.py:1317:18
	v_or_b32_e32 v84, 9, v65
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s45, s3, v114
	.loc	1 1317 18                       ; ragged.py:1317:18
	v_or_b32_e32 v85, 10, v65
	v_or_b32_e32 v86, 11, v65
	v_or_b32_e32 v87, 12, v65
	v_or_b32_e32 v88, 13, v65
	v_or_b32_e32 v89, 14, v65
	v_or_b32_e32 v90, 15, v65
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v93, 0x80000000, v93, s2
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s2, s38, s43
	.loc	1 1376 26 is_stmt 1             ; ragged.py:1376:26
	v_or_b32_e32 v99, s66, v83
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s21, s3, v98
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s34, s69, v98
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v94, 0x80000000, v94, s2
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s2, s38, s44
	.loc	1 1388 42 is_stmt 1             ; ragged.py:1388:42
	v_add_nc_u32_e32 v98, v97, v65
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v100, s66, v84
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v95, 0x80000000, v95, s2
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s2, s38, s45
	.loc	1 1376 26 is_stmt 1             ; ragged.py:1376:26
	v_or_b32_e32 v101, s66, v85
	v_or_b32_e32 v102, s66, v86
	v_or_b32_e32 v104, s66, v87
	v_or_b32_e32 v105, s66, v88
	v_or_b32_e32 v106, s66, v89
	v_or_b32_e32 v107, s66, v90
	.loc	1 1387 34                       ; ragged.py:1387:34
	s_and_b32 s57, s49, 0xffff
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	s_mov_b32 s56, s48
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_lshl_add_u32 v97, s65, 7, v97
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v96, 0x80000000, v96, s2
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s20, s3, v99
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s35, s69, v99
	.loc	1 1387 34                       ; ragged.py:1387:34
	s_clause 0x7
	buffer_load_u8 v99, v66, s[56:59], 0 offen
	buffer_load_u8 v79, v79, s[56:59], 0 offen
	buffer_load_u8 v91, v91, s[56:59], 0 offen
	buffer_load_u8 v92, v92, s[56:59], 0 offen
	buffer_load_u8 v93, v93, s[56:59], 0 offen
	buffer_load_u8 v94, v94, s[56:59], 0 offen
	buffer_load_u8 v95, v95, s[56:59], 0 offen
	buffer_load_u8 v96, v96, s[56:59], 0 offen
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add_nc_u32_e32 v66, 1, v98
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s2, s1, s28
	.loc	1 1385 30 is_stmt 1             ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s19, s3, v100
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s36, s69, v100
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add_nc_u32_e32 v100, 2, v98
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s18, s3, v101
	v_cmp_gt_i32_e64 s17, s3, v102
	v_cmp_gt_i32_e64 s16, s3, v104
	v_cmp_gt_i32_e64 s13, s3, v105
	v_cmp_gt_i32_e64 s14, s3, v106
	v_cmp_gt_i32_e64 s15, s3, v107
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s9, s69, v103
	v_cmp_eq_u32_e32 vcc_lo, s69, v108
	v_cmp_eq_u32_e64 s3, s69, v109
	v_cmp_eq_u32_e64 s4, s69, v110
	v_cmp_eq_u32_e64 s5, s69, v111
	v_cmp_eq_u32_e64 s6, s69, v112
	v_cmp_eq_u32_e64 s7, s69, v113
	v_cmp_eq_u32_e64 s8, s69, v114
	v_cmp_eq_u32_e64 s37, s69, v101
	.loc	1 1388 42                       ; ragged.py:1388:42
	v_add_nc_u32_e32 v101, 3, v98
	v_add_nc_u32_e32 v103, 4, v98
	v_add_nc_u32_e32 v108, 5, v98
	v_add_nc_u32_e32 v109, 6, v98
	v_add_nc_u32_e32 v110, 7, v98
	v_add_nc_u32_e32 v111, 8, v98
	v_add_nc_u32_e32 v112, 9, v98
	v_add_nc_u32_e32 v113, 10, v98
	v_add_nc_u32_e32 v114, 11, v98
	v_add_nc_u32_e32 v115, 12, v98
	v_add_nc_u32_e32 v116, 13, v98
	v_add_nc_u32_e32 v65, v97, v65
	v_add_nc_u32_e32 v117, 14, v98
	v_add_nc_u32_e32 v67, v97, v67
	v_add_nc_u32_e32 v68, v97, v68
	v_add_nc_u32_e32 v69, v97, v69
	v_add_nc_u32_e32 v70, v97, v70
	v_add_nc_u32_e32 v80, v97, v80
	v_add_nc_u32_e32 v81, v97, v81
	v_add_nc_u32_e32 v82, v97, v82
	v_add_nc_u32_e32 v83, v97, v83
	v_add_nc_u32_e32 v84, v97, v84
	v_add_nc_u32_e32 v85, v97, v85
	v_add_nc_u32_e32 v86, v97, v86
	v_add_nc_u32_e32 v87, v97, v87
	v_add_nc_u32_e32 v88, v97, v88
	v_add_nc_u32_e32 v89, v97, v89
	v_add_nc_u32_e32 v90, v97, v90
	v_add_nc_u32_e32 v97, 15, v98
	.loc	1 1388 34 is_stmt 0             ; ragged.py:1388:34
	v_cndmask_b32_e64 v98, 0x80000000, v98, s2
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s1, s27
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_and_b32 s57, s51, 0xffff
	v_cndmask_b32_e64 v66, 0x80000000, v66, s2
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s1, s26
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_mov_b32 s56, s50
	v_cndmask_b32_e64 v100, 0x80000000, v100, s2
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s1, s25
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s12, s68, s12
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v101, 0x80000000, v101, s2
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s2, s1, s24
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s10, s68, s10
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v103, 0x80000000, v103, s2
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s2, s1, s23
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s11, s68, s11
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v108, 0x80000000, v108, s2
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s2, s1, s22
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s3, s68, s3
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v109, 0x80000000, v109, s2
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s2, s1, s21
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s4, s68, s4
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v110, 0x80000000, v110, s2
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s2, s1, s20
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_clause 0x7
	buffer_load_u8 v98, v98, s[56:59], 0 offen
	buffer_load_u8 v118, v66, s[56:59], 0 offen
	buffer_load_u8 v100, v100, s[56:59], 0 offen
	buffer_load_u8 v101, v101, s[56:59], 0 offen
	buffer_load_u8 v103, v103, s[56:59], 0 offen
	buffer_load_u8 v108, v108, s[56:59], 0 offen
	buffer_load_u8 v109, v109, s[56:59], 0 offen
	buffer_load_u8 v110, v110, s[56:59], 0 offen
	v_cndmask_b32_e64 v66, 0x80000000, v111, s2
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s2, s1, s19
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s5, s68, s5
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v111, 0x80000000, v112, s2
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s2, s1, s18
	.loc	1 1390 34 is_stmt 1             ; ragged.py:1390:34
	v_and_or_b32 v76, v73, 30, v76
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v112, 0x80000000, v113, s2
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s2, s1, s17
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s6, s68, s6
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v113, 0x80000000, v114, s2
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s2, s1, s16
	.loc	1 1390 34 is_stmt 1             ; ragged.py:1390:34
	v_lshlrev_b32_e32 v76, 2, v76
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v114, 0x80000000, v115, s2
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s2, s1, s13
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s8, s68, s8
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v115, 0x80000000, v116, s2
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s2, s1, s14
	s_and_b32 s1, s1, s15
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v116, 0x80000000, v117, s2
	v_cndmask_b32_e64 v97, 0x80000000, v97, s1
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s1, s0, s28
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_clause 0x7
	buffer_load_u8 v117, v66, s[56:59], 0 offen
	buffer_load_u8 v111, v111, s[56:59], 0 offen
	buffer_load_u8 v112, v112, s[56:59], 0 offen
	buffer_load_u8 v113, v113, s[56:59], 0 offen
	buffer_load_u8 v114, v114, s[56:59], 0 offen
	buffer_load_u8 v115, v115, s[56:59], 0 offen
	buffer_load_u8 v116, v116, s[56:59], 0 offen
	buffer_load_u8 v97, v97, s[56:59], 0 offen
	v_cndmask_b32_e64 v65, 0x80000000, v65, s1
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s1, s0, s27
	.loc	1 1386 56 is_stmt 1             ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s2, s69, v105
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v66, 0x80000000, v67, s1
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s1, s0, s26
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s9, s68, s9
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v67, 0x80000000, v68, s1
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s1, s0, s25
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s2, s68, s2
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v68, 0x80000000, v69, s1
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s1, s0, s24
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s7, s68, s7
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v69, 0x80000000, v70, s1
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s1, s0, s23
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s23, s68, s37
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v70, 0x80000000, v80, s1
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s1, s0, s22
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s22, s68, s36
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v80, 0x80000000, v81, s1
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s1, s0, s21
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s21, s68, s35
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v81, 0x80000000, v82, s1
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s1, s0, s20
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_clause 0x7
	buffer_load_u8 v119, v65, s[56:59], 0 offen
	buffer_load_u8 v120, v66, s[56:59], 0 offen
	buffer_load_u8 v121, v67, s[56:59], 0 offen
	buffer_load_u8 v122, v68, s[56:59], 0 offen
	buffer_load_u8 v123, v69, s[56:59], 0 offen
	buffer_load_u8 v124, v70, s[56:59], 0 offen
	buffer_load_u8 v125, v80, s[56:59], 0 offen
	buffer_load_u8 v126, v81, s[56:59], 0 offen
	v_cndmask_b32_e64 v65, 0x80000000, v83, s1
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s1, s0, s19
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s19, s68, s33
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v66, 0x80000000, v84, s1
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s1, s0, s18
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s18, s68, s31
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v67, 0x80000000, v85, s1
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s1, s0, s17
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s17, s68, s30
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v68, 0x80000000, v86, s1
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s1, s0, s16
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s20, s68, s34
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v69, 0x80000000, v87, s1
	.loc	1 1388 66 is_stmt 0             ; ragged.py:1388:66
	s_and_b32 s1, s0, s13
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_clause 0x4
	buffer_load_u8 v127, v65, s[56:59], 0 offen
	buffer_load_u8 v128, v66, s[56:59], 0 offen
	buffer_load_u8 v129, v67, s[56:59], 0 offen
	buffer_load_u8 v130, v68, s[56:59], 0 offen
	buffer_load_u8 v131, v69, s[56:59], 0 offen
	v_cndmask_b32_e64 v65, 0x80000000, v88, s1
	.loc	1 1388 66                       ; ragged.py:1388:66
	s_and_b32 s1, s0, s14
	s_and_b32 s0, s0, s15
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e64 v66, 0x80000000, v89, s1
	v_cndmask_b32_e64 v67, 0x80000000, v90, s0
	s_clause 0x2
	buffer_load_u8 v132, v65, s[56:59], 0 offen
	buffer_load_u8 v133, v66, s[56:59], 0 offen
	buffer_load_u8 v134, v67, s[56:59], 0 offen
	.loc	1 1386 32 is_stmt 1             ; ragged.py:1386:32
	s_and_b32 s15, s68, vcc_lo
	.loc	1 1386 56 is_stmt 0             ; ragged.py:1386:56
	v_cmp_eq_u32_e64 s0, s69, v102
	v_cmp_eq_u32_e64 s1, s69, v104
	v_cmp_eq_u32_e64 s13, s69, v106
	v_cmp_eq_u32_e64 s14, s69, v107
	.loc	1 1386 32                       ; ragged.py:1386:32
	s_and_b32 s16, s68, s29
	s_and_b32 s0, s68, s0
	s_and_b32 s1, s68, s1
	s_and_b32 s13, s68, s13
	s_and_b32 s14, s68, s14
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_xad_u32 v77, v77, v78, 0
	v_and_b32_e32 v78, 24, v73
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cmp_eq_u32_e32 vcc_lo, 0, v75
	.loc	1 1389 62                       ; ragged.py:1389:62
	s_waitcnt vmcnt(39)
	v_and_b16 v65.l, v99.l, 15
	s_waitcnt vmcnt(38)
	v_and_b16 v65.h, v79.l, 15
	s_waitcnt vmcnt(37)
	v_and_b16 v66.l, v91.l, 15
	s_waitcnt vmcnt(36)
	v_and_b16 v66.h, v92.l, 15
	s_waitcnt vmcnt(35)
	v_and_b16 v67.l, v93.l, 15
	s_waitcnt vmcnt(34)
	v_and_b16 v67.h, v94.l, 15
	.loc	1 1389 34 is_stmt 0             ; ragged.py:1389:34
	v_cndmask_b16 v65.h, v79.l, v65.h, s15
	v_cndmask_b16 v66.l, v91.l, v66.l, s3
	v_cndmask_b16 v66.h, v92.l, v66.h, s4
	v_cndmask_b16 v67.l, v93.l, v67.l, s5
	v_cndmask_b16 v67.h, v94.l, v67.h, s6
	.loc	1 1389 62                       ; ragged.py:1389:62
	s_waitcnt vmcnt(32)
	v_and_b16 v68.h, v96.l, 15
	v_and_b16 v68.l, v95.l, 15
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_cndmask_b16 v65.l, v99.l, v65.l, s9
	v_lshlrev_b16 v66.h, 8, v66.h
	v_lshlrev_b16 v67.h, 8, v67.h
	v_cndmask_b16 v68.h, v96.l, v68.h, s8
	v_cndmask_b16 v68.l, v95.l, v68.l, s7
	v_lshlrev_b16 v65.h, 8, v65.h
	v_lshl_or_b32 v95, v72, 5, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v68.h, 8, v68.h
	v_xad_u32 v96, v95, 8, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b16 v68.h, v68.l, v68.h
	v_or_b16 v68.l, v67.l, v67.h
	v_or_b16 v67.h, v66.l, v66.h
	v_or_b16 v67.l, v65.l, v65.h
	ds_store_b64 v77, v[67:68]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1390 62 is_stmt 1             ; ragged.py:1390:62
	s_waitcnt vmcnt(31)
	v_and_b16 v69.l, v98.l, 15
	s_waitcnt vmcnt(30)
	v_and_b16 v69.h, v118.l, 15
	s_waitcnt vmcnt(29)
	v_and_b16 v70.l, v100.l, 15
	s_waitcnt vmcnt(28)
	v_and_b16 v70.h, v101.l, 15
	s_waitcnt vmcnt(27)
	v_and_b16 v79.l, v103.l, 15
	s_waitcnt vmcnt(26)
	v_and_b16 v79.h, v108.l, 15
	s_waitcnt vmcnt(25)
	v_and_b16 v80.l, v109.l, 15
	s_waitcnt vmcnt(24)
	v_and_b16 v80.h, v110.l, 15
	.loc	1 1390 34 is_stmt 0             ; ragged.py:1390:34
	v_cndmask_b16 v69.h, v118.l, v69.h, s10
	v_cndmask_b16 v81.h, v103.l, v79.l, s17
	v_cndmask_b16 v82.l, v108.l, v79.h, s18
	v_cndmask_b16 v82.h, v109.l, v80.l, s19
	v_cndmask_b16 v83.l, v110.l, v80.h, s20
	v_cndmask_b16 v70.h, v101.l, v70.h, s16
	v_cndmask_b16 v69.l, v98.l, v69.l, s12
	v_cndmask_b16 v70.l, v100.l, v70.l, s11
	v_lshlrev_b16 v69.h, 8, v69.h
	s_delay_alu instid0(VALU_DEP_4)
	v_lshlrev_b16 v70.h, 8, v70.h
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(23)
	v_and_b16 v81.l, v117.l, 15
	s_waitcnt vmcnt(22)
	v_and_b16 v79.l, v111.l, 15
	s_waitcnt vmcnt(21)
	v_and_b16 v79.h, v112.l, 15
	s_waitcnt vmcnt(20)
	v_and_b16 v80.l, v113.l, 15
	s_waitcnt vmcnt(19)
	v_and_b16 v80.h, v114.l, 15
	s_waitcnt vmcnt(18)
	v_and_b16 v83.h, v115.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v84.l, v111.l, v79.l, s22
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(17)
	v_and_b16 v79.l, v116.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v85.l, v113.l, v80.l, s0
	v_cndmask_b16 v84.h, v112.l, v79.h, s23
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(16)
	v_and_b16 v79.h, v97.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v85.h, v114.l, v80.h, s1
	v_cndmask_b16 v86.h, v116.l, v79.l, s13
	v_cndmask_b16 v81.l, v117.l, v81.l, s21
	v_cndmask_b16 v83.h, v115.l, v83.h, s2
	v_cndmask_b16 v87.l, v97.l, v79.h, s14
	v_or_b16 v97.h, v70.l, v70.h
	v_or_b16 v97.l, v69.l, v69.h
	v_lshlrev_b16 v69.l, 8, v83.l
	v_lshlrev_b16 v69.h, 8, v82.l
	v_lshlrev_b16 v70.l, 8, v85.l
	v_lshlrev_b16 v70.h, 8, v84.l
	v_lshlrev_b16 v82.l, 8, v87.l
	v_or_b16 v98.h, v82.h, v69.l
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(15)
	v_and_b16 v80.l, v119.l, 15
	s_waitcnt vmcnt(14)
	v_and_b16 v80.h, v120.l, 15
	s_waitcnt vmcnt(13)
	v_and_b16 v86.l, v121.l, 15
	s_waitcnt vmcnt(12)
	v_and_b16 v79.l, v122.l, 15
	s_waitcnt vmcnt(11)
	v_and_b16 v79.h, v123.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v87.h, v119.l, v80.l, s12
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(10)
	v_and_b16 v80.l, v124.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v88.l, v120.l, v80.h, s10
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(9)
	v_and_b16 v80.h, v125.l, 15
	s_waitcnt vmcnt(8)
	v_and_b16 v88.h, v126.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v89.l, v122.l, v79.l, s16
	v_cndmask_b16 v90.l, v124.l, v80.l, s18
	v_cndmask_b16 v89.h, v123.l, v79.h, s17
	v_cndmask_b16 v90.h, v125.l, v80.h, s19
	v_cndmask_b16 v88.h, v126.l, v88.h, s20
	v_cndmask_b16 v86.l, v121.l, v86.l, s11
	v_or_b16 v98.l, v81.h, v69.h
	v_or_b16 v84.h, v84.h, v70.l
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(7)
	v_and_b16 v79.l, v127.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v79.h, v128.l, 15
	s_waitcnt vmcnt(5)
	v_and_b16 v80.l, v129.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v80.h, v130.l, 15
	s_waitcnt vmcnt(3)
	v_and_b16 v91.l, v131.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v91.h, v127.l, v79.l, s21
	v_cndmask_b16 v92.l, v128.l, v79.h, s22
	v_cndmask_b16 v92.h, v129.l, v80.l, s23
	v_cndmask_b16 v93.l, v130.l, v80.h, s0
	v_or_b16 v84.l, v81.l, v70.h
	.loc	1 1390 62                       ; ragged.py:1390:62
	s_waitcnt vmcnt(2)
	v_and_b16 v79.l, v132.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v79.h, v133.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v80.l, v134.l, 15
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_lshlrev_b16 v69.l, 8, v83.h
	v_lshlrev_b16 v69.h, 8, v89.l
	v_cndmask_b16 v93.h, v132.l, v79.l, s2
	v_lshlrev_b16 v70.l, 8, v88.l
	v_cndmask_b16 v94.h, v134.l, v80.l, s14
	v_lshlrev_b16 v70.h, 8, v88.h
	v_cndmask_b16 v91.l, v131.l, v91.l, s1
	v_cndmask_b16 v94.l, v133.l, v79.h, s13
	v_or_b16 v82.h, v86.h, v82.l
	v_lshlrev_b16 v81.l, 8, v90.l
	v_or_b16 v82.l, v85.h, v69.l
	v_or_b16 v83.h, v86.l, v69.h
	v_or_b16 v83.l, v87.h, v70.l
	v_or_b16 v81.h, v90.h, v70.h
	v_lshlrev_b16 v69.l, 8, v93.l
	v_lshlrev_b16 v69.h, 8, v92.l
	v_lshlrev_b16 v70.l, 8, v94.h
	v_lshlrev_b16 v70.h, 8, v93.h
	v_or_b16 v81.l, v89.h, v81.l
	v_or_b16 v85.h, v92.h, v69.l
	v_or_b16 v85.l, v91.h, v69.h
	v_or_b16 v69.h, v94.l, v70.l
	v_or_b16 v69.l, v91.l, v70.h
	v_xor_b32_e32 v70, 4, v76
	ds_bpermute_b32 v114, v76, v81
	ds_bpermute_b32 v101, v76, v97
	ds_bpermute_b32 v102, v76, v98
	ds_bpermute_b32 v103, v76, v84
	ds_bpermute_b32 v117, v70, v81
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_add_nc_u32_e32 v77, 0, v95
	.loc	1 1390 34                       ; ragged.py:1390:34
	ds_bpermute_b32 v104, v76, v82
	ds_bpermute_b32 v105, v70, v97
	ds_bpermute_b32 v106, v70, v98
	ds_bpermute_b32 v107, v70, v84
	ds_bpermute_b32 v108, v70, v82
	ds_bpermute_b32 v113, v76, v83
	ds_bpermute_b32 v116, v70, v83
	ds_bpermute_b32 v115, v76, v85
	ds_bpermute_b32 v118, v76, v69
	ds_bpermute_b32 v119, v70, v85
	ds_bpermute_b32 v120, v70, v69
	.loc	1 1389 34                       ; ragged.py:1389:34
	ds_load_2addr_stride64_b64 v[81:84], v96 offset1:1
	ds_load_2addr_stride64_b64 v[85:88], v96 offset0:2 offset1:3
	v_xad_u32 v69, v95, 16, 0
	v_xad_u32 v121, v95, 24, 0
	ds_load_2addr_stride64_b64 v[89:92], v69 offset1:1
	ds_load_2addr_stride64_b64 v[93:96], v69 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[97:100], v121 offset1:1
	.loc	1 1390 34                       ; ragged.py:1390:34
	s_waitcnt lgkmcnt(16)
	v_cndmask_b32_e32 v110, v117, v114, vcc_lo
	.loc	1 1389 34                       ; ragged.py:1389:34
	ds_load_2addr_stride64_b64 v[65:68], v77 offset1:1
	ds_load_2addr_stride64_b64 v[77:80], v77 offset0:2 offset1:3
	.loc	1 1390 34                       ; ragged.py:1390:34
	s_waitcnt lgkmcnt(16)
	v_cndmask_b32_e32 v69, v105, v101, vcc_lo
	s_waitcnt lgkmcnt(15)
	v_dual_cndmask_b32 v75, v101, v105 :: v_dual_cndmask_b32 v70, v106, v102
	s_waitcnt lgkmcnt(14)
	v_dual_cndmask_b32 v76, v102, v106 :: v_dual_cndmask_b32 v105, v107, v103
	s_waitcnt lgkmcnt(13)
	v_dual_cndmask_b32 v107, v103, v107 :: v_dual_cndmask_b32 v106, v108, v104
	s_waitcnt lgkmcnt(11)
	v_cndmask_b32_e32 v109, v116, v113, vcc_lo
	v_cndmask_b32_e32 v108, v104, v108, vcc_lo
	.loc	1 1389 34                       ; ragged.py:1389:34
	ds_load_2addr_stride64_b64 v[101:104], v121 offset0:2 offset1:3
	.loc	1 1390 34                       ; ragged.py:1390:34
	s_waitcnt lgkmcnt(8)
	v_dual_cndmask_b32 v111, v119, v115 :: v_dual_cndmask_b32 v112, v120, v118
	.loc	1 1391 31                       ; ragged.py:1391:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[69:70], v[65:66], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[109:110], v[65:66], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[69:70], v[67:68], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[109:110], v[67:68], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[69:70], v[77:78], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[109:110], v[77:78], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[69:70], v[79:80], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[109:110], v[79:80], v[1:8] neg_lo:[1,1,0]
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_dual_cndmask_b32 v65, v113, v116 :: v_dual_cndmask_b32 v66, v114, v117
	.loc	1 1391 31                       ; ragged.py:1391:31
	v_wmma_i32_16x16x16_iu4 v[41:48], v[105:106], v[81:82], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[111:112], v[81:82], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[105:106], v[83:84], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[111:112], v[83:84], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[105:106], v[85:86], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[111:112], v[85:86], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[105:106], v[87:88], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[111:112], v[87:88], v[1:8] neg_lo:[1,1,0]
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_dual_cndmask_b32 v81, v115, v119 :: v_dual_cndmask_b32 v82, v118, v120
	.loc	1 1391 31                       ; ragged.py:1391:31
	v_wmma_i32_16x16x16_iu4 v[41:48], v[75:76], v[89:90], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[65:66], v[89:90], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[75:76], v[91:92], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[65:66], v[91:92], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[75:76], v[93:94], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[93:94], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[75:76], v[95:96], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[65:66], v[95:96], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[107:108], v[97:98], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[81:82], v[97:98], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[107:108], v[99:100], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[81:82], v[99:100], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[107:108], v[101:102], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[81:82], v[101:102], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[107:108], v[103:104], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[81:82], v[103:104], v[1:8] neg_lo:[1,1,0]
.LBB0_9:
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v65, s63, v72
	.loc	1 1404 21                       ; ragged.py:1404:21
	v_add_lshl_u32 v66, s64, v72, 1
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v69, 16, v65
	v_or_b32_e32 v68, 32, v65
	v_or_b32_e32 v67, 48, v65
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s6, s60, v65
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_nc_u32_e32 v70, 32, v66
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s1, s60, v69
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_nc_u32_e32 v75, 64, v66
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s60, v68
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e64 v65, 0x80000000, v66, s6
	v_add_nc_u32_e32 v66, 0x60, v66
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s60, v67
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e64 v69, 0x80000000, v70, s1
	v_cndmask_b32_e64 v68, 0x80000000, v75, s0
	s_and_b32 s21, s53, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s52
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v77, v11
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_and_b32_e32 v11, 28, v73
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_clause 0x3
	buffer_load_u16 v65, v65, s[20:23], 0 offen
	buffer_load_u16 v67, v69, s[20:23], 0 offen
	buffer_load_u16 v68, v68, s[20:23], 0 offen
	buffer_load_u16 v66, v66, s[20:23], 0 offen
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v69, s62, v0
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_lshl_u32 v70, s39, v0, 1
	s_and_b32 s21, s55, 0xffff
	s_mov_b32 s20, s54
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s2, s61, v69
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_and_b32_e32 v74, 0x70, v74
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v89, v7
	v_cvt_f32_i32_e32 v83, v1
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v69, 0x80000000, v70, s2
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v70, 4, v0
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_and_b32_e32 v0, 0xf0, v0
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v1, s61, v72
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v88, v6
	.loc	1 1410 36                       ; ragged.py:1410:36
	buffer_load_u16 v69, v69, s[20:23], 0 offen
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_and_or_b32 v70, v70, 1, v74
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v78, v12
	v_cvt_f32_i32_e32 v79, v13
	v_cvt_f32_i32_e32 v87, v5
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v7, 0x84, v70
	v_or_b32_e32 v6, 0x86, v70
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshlrev_b32_e32 v12, 5, v71
	v_lshl_add_u32 v13, v0, 2, 0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v5, 0x88, v70
	v_or_b32_e32 v94, 2, v70
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v98, s62, v7
	.loc	1 1401 19 is_stmt 1             ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v86, v4
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v4, 0x8a, v70
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s2, s64, s61
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v93, 4, v70
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v97, s62, v6
	.loc	1 1401 19 is_stmt 1             ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v80, v14
	v_cvt_f32_i32_e32 v85, v3
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v3, 0x8c, v70
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v14, s62, v70
	.loc	1 1401 19 is_stmt 1             ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v76, v10
	v_cvt_f32_i32_e32 v82, v16
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add3_u32 v10, s2, s62, v1
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v92, 6, v70
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_add3_u32 v11, v13, v12, v11
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v16, s62, v5
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v84, v2
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v2, 0x8e, v70
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s9, s61, v98
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v98, s62, v94
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v81, v15
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v91, 8, v70
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v15, s62, v4
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s7, s61, v97
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v97, s62, v93
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v74, 10, v70
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v13, s62, v3
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s8, s61, v14
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_lshl_add_u32 v71, v0, 1, 0
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[0:1], null, s61, 48, v[10:11]
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s5, s61, v16
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v16, s62, v92
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v73, 12, v70
	.loc	1 1545 17 is_stmt 1             ; ragged.py:1545:17
	v_add_lshl_u32 v1, v10, v70, 2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v12, s62, v2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s18, s61, v98
	v_cmp_gt_i32_e64 s4, s61, v15
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v15, s62, v91
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v72, 14, v70
	.loc	1 1545 17 is_stmt 1             ; ragged.py:1545:17
	v_add_lshl_u32 v14, v10, v94, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s17, s61, v97
	v_cmp_gt_i32_e64 s3, s61, v13
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v13, s62, v74
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s6, s8
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v75, v9
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v9, 0x80, v70
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v101, v10, v93, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s16, s61, v16
	v_cmp_gt_i32_e64 s2, s61, v12
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v12, s62, v73
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s6, s18
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v90, v8
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v8, 0x82, v70
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v102, v10, v92, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s15, s61, v15
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v114, s62, v72
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v97, 0x80000000, v14, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s6, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v103, v10, v91, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s14, s61, v13
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v100, s62, v9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v98, 0x80000000, v101, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s6, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v104, v10, v74, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s13, s61, v12
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v99, s62, v8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v101, 0x80000000, v102, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s6, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v105, v10, v73, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s12, s61, v114
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v102, 0x80000000, v103, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s6, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v106, v10, v72, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s11, s61, v100
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v103, 0x80000000, v104, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s6, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v107, v10, v9, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s10, s61, v99
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v104, 0x80000000, v105, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s6, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v108, v10, v8, 2
	v_cndmask_b32_e64 v105, 0x80000000, v106, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s6, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v109, v10, v7, 2
	v_cndmask_b32_e64 v106, 0x80000000, v107, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s6, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v110, v10, v6, 2
	v_cndmask_b32_e64 v107, 0x80000000, v108, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s6, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v111, v10, v5, 2
	v_cndmask_b32_e64 v108, 0x80000000, v109, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s6, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v112, v10, v4, 2
	v_cndmask_b32_e64 v109, 0x80000000, v110, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s6, s5
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_lshl_add_u32 v95, s61, 4, v10
	v_lshl_add_u32 v96, s61, 5, v10
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_add_lshl_u32 v113, v10, v3, 2
	v_add_lshl_u32 v10, v10, v2, 2
	v_cndmask_b32_e64 v110, 0x80000000, v111, s19
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s19, s6, s4
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v44, v44
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v111, 0x80000000, v112, s19
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s19, s6, s3
	s_and_b32 s6, s6, s2
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v112, 0x80000000, v113, s19
	v_add_lshl_u32 v99, v95, v70, 2
	v_add_lshl_u32 v100, v95, v94, 2
	s_and_b32 s21, s47, 0xffff
	s_mov_b32 s20, s46
	v_add_lshl_u32 v114, v95, v93, 2
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v12, 16, v65
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v65, 0x80000000, v10, s6
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v10, 16, v67
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s6, s1, s8
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v53, v53, v10
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v57, v57, v12 :: v_dual_lshlrev_b32 v66, 16, v66
	v_mul_f32_e32 v41, v41, v12
	v_mul_f32_e32 v42, v42, v12
	v_mul_f32_e32 v43, v43, v12
	v_mul_f32_e32 v45, v45, v12
	v_mul_f32_e32 v47, v47, v12
	v_dual_mul_f32 v50, v50, v10 :: v_dual_lshlrev_b32 v67, 16, v68
	v_dual_mul_f32 v44, v44, v12 :: v_dual_mul_f32 v55, v55, v10
	v_dual_mul_f32 v46, v46, v12 :: v_dual_mul_f32 v33, v33, v10
	v_dual_mul_f32 v48, v48, v12 :: v_dual_mul_f32 v35, v35, v10
	v_dual_mul_f32 v58, v58, v12 :: v_dual_mul_f32 v37, v37, v10
	v_mul_f32_e32 v59, v59, v12
	v_dual_mul_f32 v60, v60, v12 :: v_dual_mul_f32 v39, v39, v10
	v_dual_mul_f32 v61, v61, v12 :: v_dual_mul_f32 v52, v52, v10
	v_dual_mul_f32 v62, v62, v12 :: v_dual_mul_f32 v25, v25, v67
	v_dual_mul_f32 v63, v63, v12 :: v_dual_mul_f32 v54, v54, v10
	v_dual_mul_f32 v64, v64, v12 :: v_dual_mul_f32 v27, v27, v67
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v49, v49, v10 :: v_dual_lshlrev_b32 v12, 16, v69
	v_mul_f32_e32 v51, v51, v10
	v_dual_mul_f32 v56, v56, v10 :: v_dual_mul_f32 v29, v29, v67
	v_dual_mul_f32 v34, v34, v10 :: v_dual_mul_f32 v31, v31, v67
	v_dual_mul_f32 v36, v36, v10 :: v_dual_mul_f32 v69, v18, v67
	v_dual_mul_f32 v38, v38, v10 :: v_dual_mul_f32 v113, v19, v67
	v_mul_f32_e32 v40, v40, v10
	.loc	1 1415 17                       ; ragged.py:1415:17
	ds_store_b32 v11, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v71
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v26, v26, v67 :: v_dual_mul_f32 v19, v76, v66
	v_mul_f32_e32 v28, v28, v67
	v_mul_f32_e32 v68, v17, v67
	v_dual_mul_f32 v115, v20, v67 :: v_dual_mul_f32 v18, v75, v66
	v_dual_mul_f32 v20, v77, v66 :: v_dual_mul_f32 v23, v23, v67
	.loc	1 1415 17                       ; ragged.py:1415:17
	ds_load_b128 v[14:17], v71 offset:16
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v116, v21, v67 :: v_dual_mul_f32 v21, v78, v66
	v_mul_f32_e32 v30, v30, v67
	v_mul_f32_e32 v32, v32, v67
	v_mul_f32_e32 v22, v22, v67
	v_dual_mul_f32 v24, v24, v67 :: v_dual_mul_f32 v67, v79, v66
	v_mul_f32_e32 v79, v81, v66
	v_mul_f32_e32 v81, v83, v66
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v83, v85, v66 :: v_dual_mul_f32 v76, v19, v11
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v41, v41, v10 :: v_dual_mul_f32 v42, v42, v11
	v_mul_f32_e32 v77, v20, v12
	v_dual_mul_f32 v43, v43, v12 :: v_dual_mul_f32 v44, v44, v13
	v_mul_f32_e32 v75, v18, v10
	v_dual_mul_f32 v49, v49, v10 :: v_dual_mul_f32 v50, v50, v11
	v_dual_mul_f32 v51, v51, v12 :: v_dual_mul_f32 v52, v52, v13
	v_dual_mul_f32 v25, v25, v10 :: v_dual_mul_f32 v26, v26, v11
	v_dual_mul_f32 v27, v27, v12 :: v_dual_mul_f32 v28, v28, v13
	v_dual_mul_f32 v78, v21, v13 :: v_dual_mul_f32 v85, v87, v66
	ds_load_b128 v[10:13], v71 offset:512
	ds_load_b128 v[18:21], v71 offset:528
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v45, v45, v14 :: v_dual_mul_f32 v46, v46, v15
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v71, v80, v66
	v_dual_mul_f32 v80, v82, v66 :: v_dual_mul_f32 v47, v47, v16
	v_mul_f32_e32 v82, v84, v66
	v_mul_f32_e32 v84, v86, v66
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v48, v48, v17 :: v_dual_mul_f32 v53, v53, v14
	v_mul_f32_e32 v54, v54, v15
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v86, v88, v66 :: v_dual_mul_f32 v55, v55, v16
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v56, v56, v17 :: v_dual_mul_f32 v29, v29, v14
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v87, v89, v66
	v_dual_mul_f32 v66, v90, v66 :: v_dual_mul_f32 v31, v31, v16
	.loc	1 1415 17                       ; ragged.py:1415:17
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v30, v30, v15 :: v_dual_mul_f32 v57, v57, v10
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v58, v58, v11 :: v_dual_mul_f32 v61, v61, v18
	v_dual_mul_f32 v59, v59, v12 :: v_dual_mul_f32 v60, v60, v13
	v_dual_mul_f32 v62, v62, v19 :: v_dual_mul_f32 v33, v33, v10
	v_mul_f32_e32 v63, v63, v20
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0xe
	buffer_store_b32 v41, v1, s[20:23], 0 offen
	buffer_store_b32 v42, v97, s[20:23], 0 offen
	buffer_store_b32 v43, v98, s[20:23], 0 offen
	buffer_store_b32 v44, v101, s[20:23], 0 offen
	buffer_store_b32 v45, v102, s[20:23], 0 offen
	buffer_store_b32 v46, v103, s[20:23], 0 offen
	buffer_store_b32 v47, v104, s[20:23], 0 offen
	buffer_store_b32 v48, v105, s[20:23], 0 offen
	buffer_store_b32 v57, v106, s[20:23], 0 offen
	buffer_store_b32 v58, v107, s[20:23], 0 offen
	buffer_store_b32 v59, v108, s[20:23], 0 offen
	buffer_store_b32 v60, v109, s[20:23], 0 offen
	buffer_store_b32 v61, v110, s[20:23], 0 offen
	buffer_store_b32 v62, v111, s[20:23], 0 offen
	buffer_store_b32 v63, v112, s[20:23], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v99, s6
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s6, s1, s18
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v64, v64, v21 :: v_dual_mul_f32 v37, v37, v18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v41, 0x80000000, v100, s6
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s6, s1, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v64, v65, s[20:23], 0 offen
	buffer_store_b32 v49, v1, s[20:23], 0 offen
	v_cndmask_b32_e64 v42, 0x80000000, v114, s6
	v_add_lshl_u32 v1, v95, v92, 2
	s_clause 0x1
	buffer_store_b32 v50, v41, s[20:23], 0 offen
	buffer_store_b32 v51, v42, s[20:23], 0 offen
	v_add_lshl_u32 v41, v95, v91, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s6, s1, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v42, v95, v74, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s6
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s6, s1, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v43, v95, v73, 2
	v_cndmask_b32_e64 v41, 0x80000000, v41, s6
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s6, s1, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v52, v1, s[20:23], 0 offen
	buffer_store_b32 v53, v41, s[20:23], 0 offen
	v_cndmask_b32_e64 v42, 0x80000000, v42, s6
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s6, s1, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v95, v72, 2
	v_cndmask_b32_e64 v43, 0x80000000, v43, s6
	v_add_lshl_u32 v41, v95, v9, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s6, s1, s12
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v39, v39, v20
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v54, v42, s[20:23], 0 offen
	buffer_store_b32 v55, v43, s[20:23], 0 offen
	v_add_lshl_u32 v42, v95, v8, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s6
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s6, s1, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v43, v95, v7, 2
	v_cndmask_b32_e64 v41, 0x80000000, v41, s6
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s6, s1, s10
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v34, v34, v11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v42, 0x80000000, v42, s6
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s6, s1, s9
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v35, v35, v12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v43, 0x80000000, v43, s6
	s_clause 0x1
	buffer_store_b32 v56, v1, s[20:23], 0 offen
	buffer_store_b32 v33, v41, s[20:23], 0 offen
	v_add_lshl_u32 v1, v95, v6, 2
	v_add_lshl_u32 v33, v95, v5, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s6, s1, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v34, v42, s[20:23], 0 offen
	buffer_store_b32 v35, v43, s[20:23], 0 offen
	v_add_lshl_u32 v34, v95, v4, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s6
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s6, s1, s5
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v36, v36, v13 :: v_dual_mul_f32 v69, v69, v11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v35, v95, v3, 2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s6
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s6, s1, s4
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v38, v38, v19 :: v_dual_mul_f32 v89, v115, v13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v34, 0x80000000, v34, s6
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s6, s1, s3
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v36, v1, s[20:23], 0 offen
	buffer_store_b32 v37, v33, s[20:23], 0 offen
	v_cndmask_b32_e64 v35, 0x80000000, v35, s6
	v_add_lshl_u32 v1, v95, v2, 2
	v_add_lshl_u32 v33, v96, v70, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s1, s2
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v38, v34, s[20:23], 0 offen
	buffer_store_b32 v39, v35, s[20:23], 0 offen
	v_add_lshl_u32 v34, v96, v94, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s8
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v40, v40, v21 :: v_dual_mul_f32 v23, v23, v20
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v35, v96, v93, 2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v40, v1, s[20:23], 0 offen
	buffer_store_b32 v25, v33, s[20:23], 0 offen
	v_cndmask_b32_e64 v34, 0x80000000, v34, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v96, v92, 2
	v_cndmask_b32_e64 v35, 0x80000000, v35, s1
	v_add_lshl_u32 v25, v96, v91, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v26, v34, s[20:23], 0 offen
	buffer_store_b32 v27, v35, s[20:23], 0 offen
	v_add_lshl_u32 v26, v96, v74, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v27, v96, v73, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v28, v1, s[20:23], 0 offen
	buffer_store_b32 v29, v25, s[20:23], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v26, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v96, v72, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s1
	v_add_lshl_u32 v25, v96, v9, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s12
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v32, v32, v17 :: v_dual_mul_f32 v15, v71, v15
	v_mul_f32_e32 v17, v80, v17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v30, v26, s[20:23], 0 offen
	buffer_store_b32 v31, v27, s[20:23], 0 offen
	v_add_lshl_u32 v26, v96, v8, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v27, v96, v7, 2
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v68, v68, v10 :: v_dual_mul_f32 v11, v82, v11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v25, 0x80000000, v25, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s10
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v88, v113, v12 :: v_dual_mul_f32 v13, v84, v13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v26, 0x80000000, v26, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v32, v1, s[20:23], 0 offen
	buffer_store_b32 v68, v25, s[20:23], 0 offen
	v_cndmask_b32_e64 v27, 0x80000000, v27, s1
	v_add_lshl_u32 v1, v96, v6, 2
	v_add_lshl_u32 v25, v96, v5, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v69, v26, s[20:23], 0 offen
	buffer_store_b32 v88, v27, s[20:23], 0 offen
	v_add_lshl_u32 v26, v96, v4, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v27, v96, v3, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s4
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v90, v116, v18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v26, 0x80000000, v26, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s0, s3
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v22, v22, v19
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v27, 0x80000000, v27, s1
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v19, v86, v19
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v89, v1, s[20:23], 0 offen
	buffer_store_b32 v90, v25, s[20:23], 0 offen
	v_add_lshl_u32 v1, v96, v2, 2
	s_clause 0x1
	buffer_store_b32 v22, v26, s[20:23], 0 offen
	buffer_store_b32 v23, v27, s[20:23], 0 offen
	v_add_lshl_u32 v22, v0, v70, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, s0, s2
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v24, v24, v21
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v23, v0, v94, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s0
	v_add_lshl_u32 v25, v0, v93, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v24, v1, s[20:23], 0 offen
	buffer_store_b32 v75, v22, s[20:23], 0 offen
	v_add_lshl_u32 v1, v0, v92, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v22, v0, v91, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s16
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v14, v67, v14 :: v_dual_mul_f32 v21, v66, v21
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v76, v23, s[20:23], 0 offen
	buffer_store_b32 v77, v25, s[20:23], 0 offen
	v_add_lshl_u32 v23, v0, v74, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s0
	v_add_lshl_u32 v24, v0, v73, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v78, v1, s[20:23], 0 offen
	buffer_store_b32 v14, v22, s[20:23], 0 offen
	v_add_lshl_u32 v1, v0, v72, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v9, v0, v9, 2
	v_cndmask_b32_e64 v24, 0x80000000, v24, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s12
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v16, v79, v16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s11
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v10, v81, v10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v8, v0, v8, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	v_add_lshl_u32 v7, v0, v7, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x3
	buffer_store_b32 v15, v23, s[20:23], 0 offen
	buffer_store_b32 v16, v24, s[20:23], 0 offen
	buffer_store_b32 v17, v1, s[20:23], 0 offen
	buffer_store_b32 v10, v9, s[20:23], 0 offen
	v_add_lshl_u32 v1, v0, v6, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v5, v0, v5, 2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v4, v0, v4, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v0, v3, 2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	v_add_lshl_u32 v0, v0, v2, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s4
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v12, v83, v12
	v_mul_f32_e32 v18, v85, v18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v2, 0x80000000, v4, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, vcc_lo, s3
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v20, v87, v20
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x6
	buffer_store_b32 v11, v8, s[20:23], 0 offen
	buffer_store_b32 v12, v7, s[20:23], 0 offen
	buffer_store_b32 v13, v1, s[20:23], 0 offen
	buffer_store_b32 v18, v5, s[20:23], 0 offen
	buffer_store_b32 v19, v2, s[20:23], 0 offen
	buffer_store_b32 v20, v3, s[20:23], 0 offen
	buffer_store_b32 v21, v0, s[20:23], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 135
		.amdhsa_next_free_sgpr 70
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 135
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 70
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9324
; TotalNumSgprs: 72
; NumVgprs: 135
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 16
; NumSGPRsForWavesPerEU: 72
; NumVGPRsForWavesPerEU: 135
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     72
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     135
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
