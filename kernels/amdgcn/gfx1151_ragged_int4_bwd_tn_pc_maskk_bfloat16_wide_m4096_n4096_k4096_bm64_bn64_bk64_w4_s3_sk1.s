	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x30
	s_load_b128 s[12:15], s[0:1], 0x20
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s8, s2
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v3, 15, v0
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v56, 2, v0
	v_lshrrev_b32_e32 v52, 1, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_or_b32 v51, v56, 16, v3
	v_and_b32_e32 v53, 16, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v55, 0, v51
	v_add3_u32 v54, 0, v53, v3
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s24, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s25, 63
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
	s_ashr_i32 s18, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s20, s5, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s20, s18
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
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s26, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s6
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s26, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s8
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s7, s2, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_readfirstlane_b32 s8, v1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshlrev_b32_e32 v1, 4, v0
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_f32 s8, s8, 0x4f7ffffe
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v2, 48, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_u32_f32 s8, s8
	s_mul_i32 s5, s5, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s8, s5
	s_abs_i32 s5, s7
	s_add_i32 s8, s8, s4
	s_mul_hi_u32 s4, s5, s8
	s_xor_b32 s8, s7, s20
	s_mul_i32 s9, s4, s6
	s_ashr_i32 s22, s8, 31
	s_sub_i32 s5, s5, s9
	s_add_i32 s8, s4, 1
	s_sub_i32 s9, s5, s6
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s4, s8, s4
	s_cselect_b32 s5, s9, s5
	s_add_i32 s8, s4, 1
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s4, s8, s4
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s27, s26, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s23, s4, s22
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[4:5], s[26:27], 2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s6, s23, s22
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s8, s6, s20
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s28, s6, 6
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s7, s7, s8
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v34, s28, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	s_lshl_b32 s27, s7, 6
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_add_u32 s4, s12, s4
	s_addc_u32 s5, s13, s5
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v33, s27, v2
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s12, s[4:5], 0x0
	s_clause 0x1
	s_load_b256 s[4:11], s[0:1], 0x0
	s_load_b32 s16, s[0:1], 0x38
	.loc	1 1322 22                       ; ragged.py:1322:22
	s_lshl_b32 s1, s3, 5
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s25, v33
	.loc	1 1350 21                       ; ragged.py:1350:21
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s0, s12, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s0, s0, 26
	s_add_i32 s3, s12, s0
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s24, v34
	.loc	1 1350 21                       ; ragged.py:1350:21
	s_ashr_i32 s3, s3, 6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1349 39                       ; ragged.py:1349:39
	s_lshl_b32 s13, s3, 5
	.loc	1 1355 39                       ; ragged.py:1355:39
	s_mul_i32 s3, s26, s16
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cmp_ge_i32 s1, s13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	v_add3_u32 v3, s3, s1, v56
	s_mul_i32 s21, s18, s26
	v_mov_b32_e32 v17, 0
	s_sub_i32 s29, s22, s21
	s_lshl_b32 s2, s2, 6
	v_mul_lo_u32 v4, s24, v3
	s_sub_i32 s29, s29, s23
	v_mul_lo_u32 v3, s25, v3
	s_lshl_b32 s23, s23, 6
	s_mul_i32 s29, s20, s29
	s_lshl_b32 s22, s22, 6
	s_lshl_b32 s29, s29, 6
	v_dual_mov_b32 v18, v17 :: v_dual_add_nc_u32 v59, 0, v1
	v_add3_u32 v4, v4, s23, v2
	s_add_i32 s2, s2, s29
	v_mov_b32_e32 v19, v17
	v_add3_u32 v57, s2, v3, v2
	v_mov_b32_e32 v20, v17
	v_subrev_nc_u32_e32 v58, s22, v4
	v_mov_b32_e32 v21, v17
	v_mov_b32_e32 v22, v17
	v_mov_b32_e32 v23, v17
	v_mov_b32_e32 v24, v17
	v_mov_b32_e32 v25, v17
	v_mov_b32_e32 v26, v17
	v_mov_b32_e32 v27, v17
	v_mov_b32_e32 v28, v17
	v_mov_b32_e32 v29, v17
	v_mov_b32_e32 v30, v17
	v_mov_b32_e32 v31, v17
	v_mov_b32_e32 v32, v17
	v_mov_b32_e32 v9, v17
	v_mov_b32_e32 v10, v17
	v_mov_b32_e32 v11, v17
	v_mov_b32_e32 v12, v17
	v_mov_b32_e32 v13, v17
	v_mov_b32_e32 v14, v17
	v_mov_b32_e32 v15, v17
	v_mov_b32_e32 v16, v17
	v_mov_b32_e32 v1, v17
	v_mov_b32_e32 v2, v17
	v_mov_b32_e32 v3, v17
	v_mov_b32_e32 v4, v17
	v_mov_b32_e32 v5, v17
	v_mov_b32_e32 v6, v17
	v_mov_b32_e32 v7, v17
	v_mov_b32_e32 v8, v17
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s17, s5, 0xffff
	s_mov_b32 s16, s4
	s_and_b32 s21, s7, 0xffff
	s_mov_b32 s20, s6
	s_lshl_b32 s2, s25, 5
	s_lshl_b32 s29, s24, 5
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1362 34                       ; ragged.py:1362:34
	v_cndmask_b32_e64 v35, 0x80000000, v58, s0
	.loc	1 1363 34                       ; ragged.py:1363:34
	v_cndmask_b32_e32 v39, 0x80000000, v57, vcc_lo
	.loc	1 1352 23                       ; ragged.py:1352:23
	v_add_nc_u32_e32 v57, s2, v57
	v_add_nc_u32_e32 v58, s29, v58
	.loc	1 1374 21                       ; ragged.py:1374:21
	s_add_i32 s1, s1, 32
	.loc	1 1362 34                       ; ragged.py:1362:34
	buffer_load_b128 v[35:38], v35, s[16:19], 0 offen
	.loc	1 1363 34                       ; ragged.py:1363:34
	buffer_load_b128 v[39:42], v39, s[20:23], 0 offen
	.loc	1 1362 34                       ; ragged.py:1362:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1352 23                       ; ragged.py:1352:23
	s_cmp_lt_i32 s1, s13
	.loc	1 1362 34                       ; ragged.py:1362:34
	s_waitcnt vmcnt(1)
	ds_store_b128 v59, v[35:38]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1364 31                       ; ragged.py:1364:31
	ds_load_u8 v35, v55 offset:192
	ds_load_u8 v36, v55 offset:128
	ds_load_u8 v37, v55 offset:64
	ds_load_u8 v38, v55 offset:448
	ds_load_u8 v43, v55 offset:384
	ds_load_u8 v44, v55 offset:320
	ds_load_u8 v45, v55 offset:256
	ds_load_u8 v46, v55 offset:704
	ds_load_u8 v47, v55 offset:640
	ds_load_u8 v48, v55 offset:576
	ds_load_u8 v49, v55 offset:512
	ds_load_u8 v50, v55 offset:960
	ds_load_u8 v92, v55 offset:896
	ds_load_u8 v93, v55 offset:832
	ds_load_u8 v94, v55 offset:768
	ds_load_u8 v95, v55 offset:1216
	ds_load_u8 v96, v55 offset:1152
	ds_load_u8 v97, v55 offset:1088
	ds_load_u8 v98, v55 offset:1024
	ds_load_u8 v99, v55 offset:1472
	ds_load_u8 v100, v55 offset:1408
	ds_load_u8 v101, v55 offset:1344
	ds_load_u8 v102, v55 offset:1280
	ds_load_u8 v103, v55 offset:1728
	ds_load_u8 v104, v55 offset:1664
	ds_load_u8 v105, v55 offset:1600
	ds_load_u8 v106, v55 offset:1536
	ds_load_u8 v107, v55 offset:1984
	ds_load_u8 v108, v55 offset:1920
	ds_load_u8 v109, v55 offset:1856
	ds_load_u8 v110, v55 offset:1792
	ds_load_u8 v60, v55 offset:224
	ds_load_u8 v61, v55 offset:160
	ds_load_u8 v62, v55 offset:96
	ds_load_u8 v63, v55 offset:480
	ds_load_u8 v64, v55 offset:416
	ds_load_u8 v65, v55 offset:352
	ds_load_u8 v66, v55 offset:288
	ds_load_u8 v111, v55
	ds_load_u8 v67, v55 offset:32
	ds_load_u8 v68, v55 offset:736
	ds_load_u8 v69, v55 offset:672
	ds_load_u8 v70, v55 offset:608
	ds_load_u8 v71, v55 offset:544
	ds_load_u8 v72, v55 offset:992
	ds_load_u8 v73, v55 offset:928
	ds_load_u8 v74, v55 offset:864
	ds_load_u8 v75, v55 offset:800
	ds_load_u8 v76, v55 offset:1248
	ds_load_u8 v77, v55 offset:1184
	ds_load_u8 v78, v55 offset:1120
	ds_load_u8 v79, v55 offset:1056
	ds_load_u8 v80, v55 offset:1504
	ds_load_u8 v81, v55 offset:1440
	ds_load_u8 v82, v55 offset:1376
	ds_load_u8 v83, v55 offset:1312
	ds_load_u8 v84, v55 offset:1760
	ds_load_u8 v85, v55 offset:1696
	ds_load_u8 v86, v55 offset:1632
	ds_load_u8 v87, v55 offset:1568
	ds_load_u8 v88, v55 offset:2016
	ds_load_u8 v89, v55 offset:1952
	ds_load_u8 v90, v55 offset:1888
	ds_load_u8 v91, v55 offset:1824
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v59, v[39:42]
	.loc	1 1364 31                       ; ragged.py:1364:31
	v_perm_b32 v39, v45, v44, 0xc0c0004
	v_perm_b32 v38, v43, v38, 0xc0c0004
	v_perm_b32 v37, v111, v37, 0xc0c0004
	v_perm_b32 v35, v36, v35, 0xc0c0004
	.loc	1 1363 34                       ; ragged.py:1363:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1364 31                       ; ragged.py:1364:31
	v_lshl_or_b32 v36, v38, 16, v39
	v_perm_b32 v42, v47, v46, 0xc0c0004
	v_lshl_or_b32 v35, v35, 16, v37
	ds_load_u8 v37, v54 offset:320
	ds_load_u8 v38, v54 offset:256
	v_perm_b32 v111, v61, v60, 0xc0c0004
	v_perm_b32 v74, v75, v74, 0xc0c0004
	v_perm_b32 v72, v73, v72, 0xc0c0004
	v_perm_b32 v70, v71, v70, 0xc0c0004
	v_perm_b32 v73, v69, v68, 0xc0c0004
	v_perm_b32 v75, v83, v82, 0xc0c0004
	v_perm_b32 v80, v81, v80, 0xc0c0004
	v_perm_b32 v78, v79, v78, 0xc0c0004
	v_perm_b32 v76, v77, v76, 0xc0c0004
	v_lshl_or_b32 v71, v72, 16, v74
	v_lshl_or_b32 v70, v73, 16, v70
	v_perm_b32 v77, v91, v90, 0xc0c0004
	v_perm_b32 v79, v89, v88, 0xc0c0004
	v_perm_b32 v81, v87, v86, 0xc0c0004
	v_perm_b32 v82, v85, v84, 0xc0c0004
	v_lshl_or_b32 v73, v80, 16, v75
	v_lshl_or_b32 v72, v76, 16, v78
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v54 offset:448
	ds_load_u8 v39, v54 offset:384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	ds_load_u8 v39, v54 offset:64
	ds_load_u8 v40, v54
	v_lshl_or_b32 v38, v38, 16, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v54 offset:192
	ds_load_u8 v41, v54 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	v_perm_b32 v41, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v37, v40, 16, v39
	v_perm_b32 v39, v94, v93, 0xc0c0004
	v_perm_b32 v40, v92, v50, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[37:38], v[35:36], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v40, v40, 16, v39
	v_lshl_or_b32 v39, v42, 16, v41
	ds_load_u8 v41, v54 offset:832
	ds_load_u8 v42, v54 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v54 offset:960
	ds_load_u8 v43, v54 offset:896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v54 offset:576
	ds_load_u8 v44, v54 offset:512
	v_lshl_or_b32 v46, v42, 16, v41
	v_perm_b32 v41, v102, v101, 0xc0c0004
	v_perm_b32 v42, v100, v99, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v42, 16, v41
	ds_load_u8 v41, v54 offset:1344
	ds_load_u8 v42, v54 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v54 offset:704
	ds_load_u8 v45, v54 offset:640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v45, v44, 16, v43
	v_perm_b32 v43, v98, v97, 0xc0c0004
	v_perm_b32 v44, v96, v95, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[45:46], v[39:40], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v47, v44, 16, v43
	ds_load_u8 v42, v54 offset:1472
	ds_load_u8 v43, v54 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	ds_load_u8 v43, v54 offset:1088
	ds_load_u8 v44, v54 offset:1024
	v_lshl_or_b32 v50, v42, 16, v41
	v_perm_b32 v41, v110, v109, 0xc0c0004
	v_perm_b32 v42, v108, v107, 0xc0c0004
	v_perm_b32 v109, v64, v63, 0xc0c0004
	v_perm_b32 v110, v67, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v42, v42, 16, v41
	v_lshl_or_b32 v68, v111, 16, v110
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v54 offset:1216
	ds_load_u8 v49, v54 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v49, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v49, v44, 16, v43
	v_perm_b32 v43, v106, v105, 0xc0c0004
	v_perm_b32 v44, v104, v103, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[49:50], v[47:48], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v41, v44, 16, v43
	ds_load_u8 v43, v54 offset:1856
	ds_load_u8 v44, v54 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v54 offset:1984
	ds_load_u8 v92, v54 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v92, v44, 0xc0c0004
	ds_load_u8 v92, v54 offset:1600
	ds_load_u8 v93, v54 offset:1536
	v_lshl_or_b32 v44, v44, 16, v43
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v54 offset:1728
	ds_load_u8 v94, v54 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v93, 16, v92
	ds_load_u8 v92, v54 offset:352
	ds_load_u8 v93, v54 offset:288
	v_wmma_i32_16x16x16_iu4 v[17:24], v[43:44], v[41:42], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v54 offset:480
	ds_load_u8 v94, v54 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v54 offset:32
	ds_load_u8 v95, v54 offset:96
	v_lshl_or_b32 v61, v93, 16, v92
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v94, v95, 0xc0c0004
	ds_load_u8 v95, v54 offset:224
	ds_load_u8 v96, v54 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v54 offset:864
	ds_load_u8 v97, v54 offset:800
	v_lshl_or_b32 v60, v95, 16, v94
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[60:61], v[35:36], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v36, v79, 16, v77
	v_lshl_or_b32 v35, v82, 16, v81
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	ds_load_u8 v97, v54 offset:992
	ds_load_u8 v98, v54 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v54 offset:608
	ds_load_u8 v99, v54 offset:544
	v_lshl_or_b32 v63, v97, 16, v96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	ds_load_u8 v99, v54 offset:736
	ds_load_u8 v100, v54 offset:672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v54 offset:1376
	ds_load_u8 v101, v54 offset:1312
	v_lshl_or_b32 v62, v99, 16, v98
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[62:63], v[39:40], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	ds_load_u8 v101, v54 offset:1504
	ds_load_u8 v102, v54 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v54 offset:1120
	ds_load_u8 v103, v54 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	ds_load_u8 v103, v54 offset:1248
	ds_load_u8 v104, v54 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v54 offset:1888
	ds_load_u8 v105, v54 offset:1824
	v_lshl_or_b32 v64, v103, 16, v102
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	ds_load_u8 v105, v54 offset:2016
	ds_load_u8 v106, v54 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v54 offset:1632
	ds_load_u8 v107, v54 offset:1568
	v_lshl_or_b32 v67, v105, 16, v104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v54 offset:1760
	ds_load_u8 v108, v54 offset:1696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	v_perm_b32 v108, v66, v65, 0xc0c0004
	v_lshl_or_b32 v65, v101, 16, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v66, v107, 16, v106
	v_lshl_or_b32 v69, v109, 16, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[64:65], v[47:48], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[37:38], v[68:69], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[60:61], v[68:69], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[66:67], v[41:42], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[70:71], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[62:63], v[70:71], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[49:50], v[72:73], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[64:65], v[72:73], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[35:36], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[66:67], v[35:36], v[1:8] neg_lo:[1,1,0]
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
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 1314 27 is_stmt 1             ; ragged.py:1314:27
	s_add_i32 s2, s12, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1314 26 is_stmt 0             ; ragged.py:1314:26
	s_lshr_b32 s13, s2, 31
	s_add_i32 s2, s2, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s2, s2, 1
	.loc	1 1375 20 is_stmt 1             ; ragged.py:1375:20
	s_cmp_ge_i32 s1, s2
	.loc	1 1375 17 is_stmt 0             ; ragged.py:1375:17
	s_cbranch_scc1 .LBB0_6
; %bb.5:
	.loc	1 1387 42 is_stmt 1             ; ragged.py:1387:42
	v_add3_u32 v38, s1, s3, v56
	.loc	1 1376 26                       ; ragged.py:1376:26
	v_or_b32_e32 v42, s1, v56
	.loc	1 1386 33                       ; ragged.py:1386:33
	s_and_b32 s3, s12, 0x80000001
	s_mov_b32 s19, 0x31027000
	s_cmp_eq_u32 s3, 1
	.loc	1 1387 42                       ; ragged.py:1387:42
	v_mad_u64_u32 v[34:35], null, v38, s24, v[34:35]
	.loc	1 1385 30                       ; ragged.py:1385:30
	v_cmp_gt_i32_e64 s1, s2, v42
	.loc	1 1386 33                       ; ragged.py:1386:33
	s_cselect_b32 s3, -1, 0
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 1387 34                       ; ragged.py:1387:34
	s_mov_b32 s16, s4
	s_and_b32 s17, s5, 0xffff
	.loc	1 1387 66 is_stmt 0             ; ragged.py:1387:66
	s_and_b32 s0, s0, s1
	.loc	1 1388 66 is_stmt 1             ; ragged.py:1388:66
	s_and_b32 vcc_lo, vcc_lo, s1
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_cndmask_b32_e64 v34, 0x80000000, v34, s0
	.loc	1 1386 63                       ; ragged.py:1386:63
	s_add_i32 s2, s2, -1
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_lshl_add_u32 v62, v0, 4, 0
	.loc	1 1387 34                       ; ragged.py:1387:34
	buffer_load_b128 v[34:37], v34, s[16:19], 0 offen
	.loc	1 1388 34                       ; ragged.py:1388:34
	s_and_b32 s17, s7, 0xffff
	s_mov_b32 s16, s6
	.loc	1 1388 42 is_stmt 0             ; ragged.py:1388:42
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[38:39], null, v38, s25, v[33:34]
	.loc	1 1387 34 is_stmt 1             ; ragged.py:1387:34
	v_lshrrev_b64 v[57:58], 24, v[34:35]
	v_lshrrev_b64 v[58:59], 24, v[36:37]
	v_lshrrev_b32_e32 v63, 8, v34
	v_lshrrev_b32_e32 v64, 8, v35
	v_lshrrev_b32_e32 v65, 24, v35
	v_lshrrev_b32_e32 v66, 8, v36
	.loc	1 1388 34                       ; ragged.py:1388:34
	v_cndmask_b32_e32 v33, 0x80000000, v38, vcc_lo
	.loc	1 1386 56                       ; ragged.py:1386:56
	v_cmp_eq_u32_e32 vcc_lo, s2, v42
	.loc	1 1387 34                       ; ragged.py:1387:34
	v_lshrrev_b32_e32 v67, 8, v37
	v_lshrrev_b32_e32 v68, 24, v37
	.loc	1 1389 62                       ; ragged.py:1389:62
	v_and_b16 v42.l, v35.l, 15
	.loc	1 1388 34                       ; ragged.py:1388:34
	buffer_load_b128 v[38:41], v33, s[16:19], 0 offen
	.loc	1 1389 62                       ; ragged.py:1389:62
	v_and_b16 v33.l, v34.l, 15
	v_and_b16 v33.h, v34.h, 15
	v_and_b16 v42.h, v35.h, 15
	v_and_b16 v43.l, v36.l, 15
	v_and_b16 v43.h, v36.h, 15
	v_and_b16 v44.l, v37.l, 15
	v_and_b16 v44.h, v37.h, 15
	.loc	1 1386 32                       ; ragged.py:1386:32
	s_and_b32 s0, s3, vcc_lo
	.loc	1 1389 62                       ; ragged.py:1389:62
	v_and_b16 v49.l, v63.l, 15
	v_and_b16 v49.h, v64.l, 15
	v_and_b16 v50.l, v65.l, 15
	v_and_b16 v50.h, v66.l, 15
	v_and_b16 v56.l, v67.l, 15
	v_and_b16 v56.h, v68.l, 15
	.loc	1 1389 34 is_stmt 0             ; ragged.py:1389:34
	v_cndmask_b16 v33.l, v34.l, v33.l, s0
	v_cndmask_b16 v33.h, v34.h, v33.h, s0
	v_cndmask_b16 v34.l, v35.l, v42.l, s0
	v_cndmask_b16 v34.h, v35.h, v42.h, s0
	v_cndmask_b16 v35.l, v36.l, v43.l, s0
	v_cndmask_b16 v35.h, v36.h, v43.h, s0
	v_cndmask_b16 v36.l, v37.l, v44.l, s0
	v_cndmask_b16 v36.h, v37.h, v44.h, s0
	.loc	1 1389 62                       ; ragged.py:1389:62
	v_and_b16 v37.l, v57.l, 15
	v_and_b16 v37.h, v58.l, 15
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_and_b16 v35.l, 0xff, v35.l
	v_and_b16 v36.l, 0xff, v36.l
	v_and_b16 v36.h, 0xff, v36.h
	v_cndmask_b16 v37.l, v57.l, v37.l, s0
	v_cndmask_b16 v37.h, v58.l, v37.h, s0
	v_and_b16 v35.h, 0xff, v35.h
	v_and_b16 v34.l, 0xff, v34.l
	v_and_b16 v34.h, 0xff, v34.h
	v_and_b16 v33.l, 0xff, v33.l
	v_and_b16 v33.h, 0xff, v33.h
	v_lshlrev_b16 v37.h, 8, v37.h
	v_lshlrev_b16 v37.l, 8, v37.l
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v35.h, v35.h, v37.h
	v_or_b16 v33.h, v33.h, v37.l
	.loc	1 1388 34 is_stmt 1             ; ragged.py:1388:34
	s_waitcnt vmcnt(0)
	v_lshrrev_b64 v[59:60], 24, v[38:39]
	v_lshrrev_b64 v[60:61], 24, v[40:41]
	v_lshrrev_b32_e32 v69, 8, v38
	v_lshrrev_b32_e32 v70, 8, v39
	v_lshrrev_b32_e32 v71, 24, v39
	v_lshrrev_b32_e32 v72, 8, v40
	v_lshrrev_b32_e32 v61, 8, v41
	v_lshrrev_b32_e32 v73, 24, v41
	.loc	1 1390 62                       ; ragged.py:1390:62
	v_and_b16 v45.l, v38.l, 15
	v_and_b16 v45.h, v38.h, 15
	v_and_b16 v46.l, v39.l, 15
	v_and_b16 v46.h, v39.h, 15
	v_and_b16 v47.l, v40.l, 15
	v_and_b16 v47.h, v40.h, 15
	v_and_b16 v48.l, v41.l, 15
	v_and_b16 v48.h, v41.h, 15
	v_and_b16 v42.l, v69.l, 15
	v_and_b16 v42.h, v70.l, 15
	v_and_b16 v43.l, v71.l, 15
	v_and_b16 v43.h, v72.l, 15
	v_and_b16 v44.l, v61.l, 15
	v_and_b16 v44.h, v73.l, 15
	.loc	1 1390 34 is_stmt 0             ; ragged.py:1390:34
	v_cndmask_b16 v38.l, v38.l, v45.l, s0
	v_cndmask_b16 v38.h, v38.h, v45.h, s0
	v_cndmask_b16 v39.l, v39.l, v46.l, s0
	v_cndmask_b16 v39.h, v39.h, v46.h, s0
	v_cndmask_b16 v40.l, v40.l, v47.l, s0
	v_cndmask_b16 v40.h, v40.h, v47.h, s0
	v_cndmask_b16 v41.l, v41.l, v48.l, s0
	v_cndmask_b16 v41.h, v41.h, v48.h, s0
	.loc	1 1390 62                       ; ragged.py:1390:62
	v_and_b16 v45.l, v59.l, 15
	v_and_b16 v45.h, v60.l, 15
	.loc	1 1389 34 is_stmt 1             ; ragged.py:1389:34
	v_cndmask_b16 v46.l, v63.l, v49.l, s0
	v_cndmask_b16 v46.h, v64.l, v49.h, s0
	v_cndmask_b16 v47.l, v65.l, v50.l, s0
	v_cndmask_b16 v47.h, v66.l, v50.h, s0
	v_cndmask_b16 v48.l, v67.l, v56.l, s0
	v_cndmask_b16 v48.h, v68.l, v56.h, s0
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_cndmask_b16 v42.l, v69.l, v42.l, s0
	v_cndmask_b16 v42.h, v70.l, v42.h, s0
	v_cndmask_b16 v43.l, v71.l, v43.l, s0
	v_cndmask_b16 v43.h, v72.l, v43.h, s0
	v_cndmask_b16 v44.l, v61.l, v44.l, s0
	v_cndmask_b16 v44.h, v73.l, v44.h, s0
	v_and_b16 v49.l, 0xff, v40.l
	v_and_b16 v49.h, 0xff, v40.h
	v_and_b16 v50.l, 0xff, v39.l
	v_and_b16 v50.h, 0xff, v38.l
	v_and_b16 v56.l, 0xff, v38.h
	v_cndmask_b16 v38.l, v59.l, v45.l, s0
	v_cndmask_b16 v38.h, v60.l, v45.h, s0
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_lshlrev_b16 v39.l, 8, v48.l
	v_lshlrev_b16 v40.l, 8, v48.h
	v_lshlrev_b16 v40.h, 8, v47.h
	v_lshlrev_b16 v45.l, 8, v46.h
	v_lshlrev_b16 v45.h, 8, v47.l
	v_lshlrev_b16 v46.l, 8, v46.l
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_and_b16 v41.l, 0xff, v41.l
	v_and_b16 v41.h, 0xff, v41.h
	v_and_b16 v39.h, 0xff, v39.h
	v_lshlrev_b16 v44.l, 8, v44.l
	v_lshlrev_b16 v44.h, 8, v44.h
	v_lshlrev_b16 v43.h, 8, v43.h
	v_lshlrev_b16 v42.h, 8, v42.h
	v_lshlrev_b16 v43.l, 8, v43.l
	v_lshlrev_b16 v42.l, 8, v42.l
	v_lshlrev_b16 v46.h, 8, v38.h
	v_lshlrev_b16 v47.l, 8, v38.l
	.loc	1 1389 34                       ; ragged.py:1389:34
	v_or_b16 v36.l, v36.l, v39.l
	v_or_b16 v36.h, v36.h, v40.l
	v_or_b16 v35.l, v35.l, v40.h
	v_or_b16 v34.l, v34.l, v45.l
	v_or_b16 v34.h, v34.h, v45.h
	v_or_b16 v33.l, v33.l, v46.l
	.loc	1 1390 34                       ; ragged.py:1390:34
	v_or_b16 v40.l, v41.l, v44.l
	v_or_b16 v40.h, v41.h, v44.h
	v_or_b16 v39.l, v49.l, v43.h
	v_or_b16 v38.l, v50.l, v42.h
	v_or_b16 v38.h, v39.h, v43.l
	v_or_b16 v37.l, v50.h, v42.l
	v_or_b16 v39.h, v49.h, v46.h
	v_or_b16 v37.h, v56.l, v47.l
	.loc	1 1389 34                       ; ragged.py:1389:34
	ds_store_b128 v62, v[33:36]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1391 31                       ; ragged.py:1391:31
	ds_load_u8 v33, v55 offset:448
	ds_load_u8 v34, v55 offset:384
	ds_load_u8 v35, v55 offset:320
	ds_load_u8 v36, v55 offset:256
	ds_load_u8 v41, v55 offset:480
	ds_load_u8 v42, v55 offset:416
	ds_load_u8 v43, v55 offset:352
	ds_load_u8 v44, v55 offset:288
	ds_load_u8 v45, v55 offset:192
	ds_load_u8 v46, v55 offset:128
	ds_load_u8 v47, v55 offset:64
	ds_load_u8 v48, v55 offset:224
	ds_load_u8 v49, v55 offset:160
	ds_load_u8 v50, v55 offset:96
	ds_load_u8 v56, v55
	ds_load_u8 v57, v55 offset:32
	ds_load_u8 v58, v55 offset:704
	ds_load_u8 v59, v55 offset:640
	ds_load_u8 v60, v55 offset:576
	ds_load_u8 v61, v55 offset:512
	ds_load_u8 v63, v55 offset:736
	ds_load_u8 v64, v55 offset:672
	ds_load_u8 v65, v55 offset:608
	ds_load_u8 v66, v55 offset:544
	ds_load_u8 v67, v55 offset:960
	ds_load_u8 v68, v55 offset:896
	ds_load_u8 v69, v55 offset:832
	ds_load_u8 v70, v55 offset:768
	ds_load_u8 v71, v55 offset:992
	ds_load_u8 v72, v55 offset:928
	ds_load_u8 v73, v55 offset:864
	ds_load_u8 v74, v55 offset:800
	ds_load_u8 v75, v55 offset:1216
	ds_load_u8 v76, v55 offset:1152
	ds_load_u8 v77, v55 offset:1088
	ds_load_u8 v78, v55 offset:1024
	ds_load_u8 v79, v55 offset:1248
	ds_load_u8 v80, v55 offset:1184
	ds_load_u8 v81, v55 offset:1120
	ds_load_u8 v82, v55 offset:1056
	ds_load_u8 v83, v55 offset:1472
	ds_load_u8 v84, v55 offset:1408
	ds_load_u8 v85, v55 offset:1344
	ds_load_u8 v86, v55 offset:1280
	ds_load_u8 v87, v55 offset:1504
	ds_load_u8 v88, v55 offset:1440
	ds_load_u8 v89, v55 offset:1376
	ds_load_u8 v90, v55 offset:1312
	ds_load_u8 v91, v55 offset:1728
	ds_load_u8 v92, v55 offset:1664
	ds_load_u8 v93, v55 offset:1600
	ds_load_u8 v94, v55 offset:1536
	ds_load_u8 v95, v55 offset:1760
	ds_load_u8 v96, v55 offset:1696
	ds_load_u8 v97, v55 offset:1632
	ds_load_u8 v98, v55 offset:1568
	ds_load_u8 v99, v55 offset:1984
	ds_load_u8 v100, v55 offset:1920
	ds_load_u8 v101, v55 offset:1856
	ds_load_u8 v102, v55 offset:1792
	ds_load_u8 v103, v55 offset:2016
	ds_load_u8 v104, v55 offset:1952
	ds_load_u8 v105, v55 offset:1888
	ds_load_u8 v55, v55 offset:1824
	.loc	1 1390 34                       ; ragged.py:1390:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v62, v[37:40]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1391 31                       ; ragged.py:1391:31
	ds_load_u8 v37, v54 offset:64
	ds_load_u8 v38, v54
	ds_load_u8 v39, v54 offset:192
	ds_load_u8 v40, v54 offset:128
	ds_load_u8 v62, v54 offset:224
	ds_load_u8 v106, v54 offset:160
	ds_load_u8 v107, v54 offset:96
	ds_load_u8 v108, v54 offset:32
	ds_load_u8 v109, v54 offset:1344
	ds_load_u8 v110, v54 offset:1280
	ds_load_u8 v111, v54 offset:1472
	ds_load_u8 v112, v54 offset:1408
	ds_load_u8 v113, v54 offset:1088
	ds_load_u8 v114, v54 offset:1024
	ds_load_u8 v115, v54 offset:1216
	ds_load_u8 v116, v54 offset:1152
	v_perm_b32 v35, v36, v35, 0xc0c0004
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v54 offset:1856
	ds_load_u8 v36, v54 offset:1792
	ds_load_u8 v117, v54 offset:1984
	ds_load_u8 v118, v54 offset:1920
	v_perm_b32 v60, v61, v60, 0xc0c0004
	v_perm_b32 v58, v59, v58, 0xc0c0004
	v_perm_b32 v59, v86, v85, 0xc0c0004
	v_perm_b32 v61, v84, v83, 0xc0c0004
	v_perm_b32 v77, v78, v77, 0xc0c0004
	v_perm_b32 v75, v76, v75, 0xc0c0004
	v_perm_b32 v76, v102, v101, 0xc0c0004
	v_perm_b32 v78, v100, v99, 0xc0c0004
	ds_load_u8 v83, v54 offset:320
	ds_load_u8 v84, v54 offset:256
	ds_load_u8 v85, v54 offset:448
	ds_load_u8 v86, v54 offset:384
	ds_load_u8 v99, v54 offset:480
	ds_load_u8 v100, v54 offset:416
	ds_load_u8 v101, v54 offset:352
	ds_load_u8 v102, v54 offset:288
	v_perm_b32 v93, v94, v93, 0xc0c0004
	v_perm_b32 v91, v92, v91, 0xc0c0004
	v_perm_b32 v43, v44, v43, 0xc0c0004
	v_perm_b32 v41, v42, v41, 0xc0c0004
	v_perm_b32 v44, v57, v50, 0xc0c0004
	v_perm_b32 v48, v49, v48, 0xc0c0004
	v_perm_b32 v49, v74, v73, 0xc0c0004
	v_perm_b32 v50, v72, v71, 0xc0c0004
	ds_load_u8 v42, v54 offset:832
	ds_load_u8 v57, v54 offset:768
	ds_load_u8 v71, v54 offset:960
	ds_load_u8 v72, v54 offset:896
	ds_load_u8 v73, v54 offset:992
	ds_load_u8 v74, v54 offset:928
	ds_load_u8 v92, v54 offset:864
	ds_load_u8 v94, v54 offset:800
	v_perm_b32 v65, v66, v65, 0xc0c0004
	v_perm_b32 v63, v64, v63, 0xc0c0004
	v_perm_b32 v64, v90, v89, 0xc0c0004
	v_perm_b32 v66, v88, v87, 0xc0c0004
	v_perm_b32 v81, v82, v81, 0xc0c0004
	v_perm_b32 v79, v80, v79, 0xc0c0004
	v_perm_b32 v55, v55, v105, 0xc0c0004
	v_perm_b32 v80, v104, v103, 0xc0c0004
	ds_load_u8 v82, v54 offset:576
	ds_load_u8 v87, v54 offset:512
	ds_load_u8 v88, v54 offset:704
	ds_load_u8 v89, v54 offset:640
	ds_load_u8 v90, v54 offset:736
	ds_load_u8 v103, v54 offset:672
	ds_load_u8 v104, v54 offset:608
	ds_load_u8 v105, v54 offset:544
	v_perm_b32 v47, v56, v47, 0xc0c0004
	v_perm_b32 v45, v46, v45, 0xc0c0004
	v_perm_b32 v46, v70, v69, 0xc0c0004
	v_perm_b32 v56, v68, v67, 0xc0c0004
	ds_load_u8 v67, v54 offset:1600
	ds_load_u8 v68, v54 offset:1536
	ds_load_u8 v69, v54 offset:1728
	ds_load_u8 v70, v54 offset:1664
	v_perm_b32 v97, v98, v97, 0xc0c0004
	v_perm_b32 v95, v96, v95, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v84, v86, v85, 0xc0c0004
	ds_load_u8 v85, v54 offset:1504
	ds_load_u8 v86, v54 offset:1440
	ds_load_u8 v96, v54 offset:1376
	ds_load_u8 v98, v54 offset:1312
	v_perm_b32 v119, v38, v37, 0xc0c0004
	v_perm_b32 v120, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v57, v57, v42, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v37, v54 offset:1248
	ds_load_u8 v38, v54 offset:1184
	ds_load_u8 v39, v54 offset:1120
	ds_load_u8 v40, v54 offset:1056
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v72, v87, v82, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v82, v89, v88, 0xc0c0004
	v_perm_b32 v87, v110, v109, 0xc0c0004
	v_perm_b32 v88, v112, v111, 0xc0c0004
	ds_load_u8 v42, v54 offset:2016
	ds_load_u8 v89, v54 offset:1952
	ds_load_u8 v109, v54 offset:1888
	ds_load_u8 v110, v54 offset:1824
	v_perm_b32 v111, v114, v113, 0xc0c0004
	v_perm_b32 v113, v36, v34, 0xc0c0004
	ds_load_u8 v34, v54 offset:1760
	ds_load_u8 v36, v54 offset:1696
	ds_load_u8 v114, v54 offset:1632
	ds_load_u8 v54, v54 offset:1568
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v68, v70, v69, 0xc0c0004
	v_perm_b32 v69, v102, v101, 0xc0c0004
	v_perm_b32 v70, v100, v99, 0xc0c0004
	v_perm_b32 v99, v108, v107, 0xc0c0004
	v_perm_b32 v62, v106, v62, 0xc0c0004
	v_perm_b32 v92, v94, v92, 0xc0c0004
	v_perm_b32 v73, v74, v73, 0xc0c0004
	v_perm_b32 v74, v105, v104, 0xc0c0004
	v_perm_b32 v90, v103, v90, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v94, v98, v96, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v96, v38, v37, 0xc0c0004
	v_lshl_or_b32 v38, v61, 16, v59
	v_lshl_or_b32 v61, v70, 16, v69
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v89, v89, v42, 0xc0c0004
	v_lshl_or_b32 v42, v41, 16, v43
	v_lshl_or_b32 v41, v48, 16, v44
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v101, v36, v34, 0xc0c0004
	v_lshl_or_b32 v34, v33, 16, v35
	v_lshl_or_b32 v33, v45, 16, v47
	v_lshl_or_b32 v35, v58, 16, v60
	v_lshl_or_b32 v44, v50, 16, v49
	v_lshl_or_b32 v50, v84, 16, v83
	v_lshl_or_b32 v49, v120, 16, v119
	v_lshl_or_b32 v60, v62, 16, v99
	v_perm_b32 v112, v116, v115, 0xc0c0004
	v_perm_b32 v85, v86, v85, 0xc0c0004
	v_perm_b32 v86, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v54, v114, 0xc0c0004
	v_lshl_or_b32 v36, v56, 16, v46
	v_lshl_or_b32 v43, v63, 16, v65
	v_lshl_or_b32 v48, v80, 16, v55
	v_lshl_or_b32 v55, v71, 16, v57
	v_lshl_or_b32 v54, v82, 16, v72
	v_lshl_or_b32 v63, v73, 16, v92
	v_lshl_or_b32 v62, v90, 16, v74
	v_wmma_i32_16x16x16_iu4 v[17:24], v[49:50], v[33:34], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[60:61], v[33:34], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[49:50], v[41:42], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[60:61], v[41:42], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v115, v118, v117, 0xc0c0004
	v_perm_b32 v98, v110, v109, 0xc0c0004
	v_lshl_or_b32 v37, v75, 16, v77
	v_lshl_or_b32 v46, v66, 16, v64
	v_lshl_or_b32 v45, v79, 16, v81
	v_lshl_or_b32 v57, v88, 16, v87
	v_lshl_or_b32 v56, v112, 16, v111
	v_lshl_or_b32 v65, v85, 16, v94
	v_lshl_or_b32 v64, v96, 16, v86
	v_wmma_i32_16x16x16_iu4 v[17:24], v[54:55], v[35:36], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[62:63], v[35:36], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[54:55], v[43:44], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[62:63], v[43:44], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v40, v78, 16, v76
	v_lshl_or_b32 v39, v91, 16, v93
	v_lshl_or_b32 v47, v95, 16, v97
	v_lshl_or_b32 v59, v115, 16, v113
	v_lshl_or_b32 v58, v68, 16, v67
	v_lshl_or_b32 v34, v89, 16, v98
	v_lshl_or_b32 v33, v101, 16, v100
	v_wmma_i32_16x16x16_iu4 v[17:24], v[56:57], v[37:38], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[64:65], v[37:38], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[56:57], v[45:46], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[64:65], v[45:46], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[58:59], v[39:40], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[33:34], v[39:40], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[58:59], v[47:48], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[33:34], v[47:48], v[1:8] neg_lo:[1,1,0]
.LBB0_6:
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v35, 32, v51
	.loc	1 1309 18 is_stmt 0             ; ragged.py:1309:18
	v_or_b32_e32 v33, s28, v51
	.loc	1 1404 33 is_stmt 1             ; ragged.py:1404:33
	s_mul_i32 s0, s26, s24
	.loc	1 1403 36                       ; ragged.py:1403:36
	s_and_b32 s37, s9, 0xffff
	.loc	1 1404 21                       ; ragged.py:1404:21
	s_add_i32 s2, s28, s0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v36, s28, v35
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_lshl_u32 v34, s2, v51, 1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s24, v33
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_add_lshl_u32 v37, s2, v35, 1
	s_mov_b32 s39, 0x31027000
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s24, v36
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e64 v33, 0x80000000, v34, s0
	s_mov_b32 s36, s8
	.loc	1 1411 33                       ; ragged.py:1411:33
	s_mul_i32 s1, s26, s25
	.loc	1 1403 36                       ; ragged.py:1403:36
	v_cndmask_b32_e32 v36, 0x80000000, v37, vcc_lo
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v37, 4, v0
	.loc	1 1403 36                       ; ragged.py:1403:36
	buffer_load_u16 v34, v33, s[36:39], 0 offen
	.loc	1 1411 21                       ; ragged.py:1411:21
	s_add_i32 s3, s27, s1
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 1403 36                       ; ragged.py:1403:36
	buffer_load_u16 v33, v36, s[36:39], 0 offen
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_or_b32 v36, v37, 1, v53
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v37, s27, v36
	.loc	1 1411 21                       ; ragged.py:1411:21
	v_add_lshl_u32 v38, s3, v36, 1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v39, 32, v36
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s36, s10
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s25, v37
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_dual_mov_b32 v55, 0x5410 :: v_dual_add_nc_u32 v40, 4, v38
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v37, s27, v39
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_nc_u32_e32 v41, 8, v38
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_dual_mov_b32 v56, 0x7632 :: v_dual_add_nc_u32 v43, 16, v38
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v36, 0x80000000, v38, s1
	v_add_lshl_u32 v39, s3, v39, 1
	v_cndmask_b32_e64 v40, 0x80000000, v40, s1
	v_cndmask_b32_e64 v41, 0x80000000, v41, s1
	v_cndmask_b32_e64 v43, 0x80000000, v43, s1
	buffer_load_u16 v36, v36, s[36:39], 0 offen
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v15, v15
	.loc	1 1410 36                       ; ragged.py:1410:36
	buffer_load_u16 v40, v40, s[36:39], 0 offen
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v17, v17
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s2, s2, s25
	.loc	1 1401 19                       ; ragged.py:1401:19
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v54, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v6, v6
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v51, s25, v51
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_mov_b16_e32 v1.h, 0
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v35, s25, v35
	s_mov_b32 s33, 0x76543210
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v58.h, v1.h
	v_mov_b16_e32 v59.h, v1.h
	v_mov_b16_e32 v62.h, v1.h
	v_mov_b16_e32 v61.h, v1.h
	v_mov_b16_e32 v63.h, v1.h
	v_mov_b16_e32 v64.h, v1.h
	v_mov_b16_e32 v65.h, v1.h
	v_mov_b16_e32 v60.h, v1.h
	.loc	1 1403 36 is_stmt 1             ; ragged.py:1403:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v52, 24, v52
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_and_b32_e32 v0, 16, v0
	.loc	1 1408 17                       ; ragged.py:1408:17
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v20, v20, v34 :: v_dual_lshlrev_b32 v33, 16, v33
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_add_nc_u32_e32 v42, 12, v38
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v11, v33, v11 :: v_dual_add_nc_u32 v44, 20, v38
	v_dual_mul_f32 v12, v33, v12 :: v_dual_add_nc_u32 v45, 24, v38
	v_dual_mul_f32 v13, v33, v13 :: v_dual_add_nc_u32 v46, 28, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v44, 0x80000000, v44, s1
	v_cndmask_b32_e64 v45, 0x80000000, v45, s1
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v9, v33, v9
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v42, 0x80000000, v42, s1
	v_cndmask_b32_e64 v46, 0x80000000, v46, s1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s25, v37
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v3, v33, v3 :: v_dual_add_nc_u32 v48, 0x4c, v38
	v_dual_mul_f32 v16, v33, v16 :: v_dual_add_nc_u32 v47, 0x48, v38
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v37, 0x80000000, v39, s1
	s_clause 0x6
	buffer_load_u16 v39, v42, s[36:39], 0 offen
	buffer_load_u16 v41, v41, s[36:39], 0 offen
	buffer_load_u16 v42, v44, s[36:39], 0 offen
	buffer_load_u16 v43, v43, s[36:39], 0 offen
	buffer_load_u16 v44, v46, s[36:39], 0 offen
	buffer_load_u16 v45, v45, s[36:39], 0 offen
	buffer_load_u16 v37, v37, s[36:39], 0 offen
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v15, v33, v15 :: v_dual_add_nc_u32 v46, 0x44, v38
	v_dual_mul_f32 v5, v33, v5 :: v_dual_add_nc_u32 v50, 0x54, v38
	v_dual_mul_f32 v4, v33, v4 :: v_dual_add_nc_u32 v49, 0x50, v38
	v_dual_mul_f32 v8, v33, v8 :: v_dual_add_nc_u32 v53, 0x58, v38
	v_dual_mul_f32 v7, v33, v7 :: v_dual_add_nc_u32 v38, 0x5c, v38
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_cndmask_b32_e64 v46, 0x80000000, v46, s1
	v_cndmask_b32_e64 v48, 0x80000000, v48, s1
	v_cndmask_b32_e64 v47, 0x80000000, v47, s1
	v_cndmask_b32_e64 v50, 0x80000000, v50, s1
	v_cndmask_b32_e64 v49, 0x80000000, v49, s1
	buffer_load_u16 v46, v46, s[36:39], 0 offen
	v_cndmask_b32_e64 v53, 0x80000000, v53, s1
	v_cndmask_b32_e64 v38, 0x80000000, v38, s1
	s_clause 0x5
	buffer_load_u16 v48, v48, s[36:39], 0 offen
	buffer_load_u16 v47, v47, s[36:39], 0 offen
	buffer_load_u16 v50, v50, s[36:39], 0 offen
	buffer_load_u16 v49, v49, s[36:39], 0 offen
	buffer_load_u16 v38, v38, s[36:39], 0 offen
	buffer_load_u16 v53, v53, s[36:39], 0 offen
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v17, v17, v34
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v57, s27, v52
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add3_u32 v52, s2, s27, v52
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v18, v18, v34
	v_mul_f32_e32 v19, v19, v34
	v_mul_f32_e32 v21, v21, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v22, v22, v34 :: v_dual_add_nc_u32 v67, 32, v52
	v_mul_f32_e32 v23, v23, v34
	v_mul_f32_e32 v24, v24, v34
	v_mul_f32_e32 v25, v25, v34
	v_mul_f32_e32 v26, v26, v34
	v_mul_f32_e32 v27, v27, v34
	v_mul_f32_e32 v28, v28, v34
	v_mul_f32_e32 v30, v30, v34
	v_mul_f32_e32 v31, v31, v34
	v_mul_f32_e32 v32, v32, v34
	v_mul_f32_e32 v10, v33, v10
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v29, v29, v34 :: v_dual_lshlrev_b32 v34, 16, v36
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v66, 32, v57
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_mul_f32_e32 v2, v33, v2
	v_mul_f32_e32 v36, v33, v54
	v_mul_f32_e32 v6, v33, v6
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v17, v17, v34
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s2, s25, v57
	v_cmp_gt_i32_e64 s1, s25, v66
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v57, v52, v51, 1
	v_add_lshl_u32 v51, v67, v51, 1
	v_add_lshl_u32 v52, v52, v35, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s0, s2
	s_and_b32 s0, s0, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v57, 0x80000000, v57, s3
	v_cndmask_b32_e64 v51, 0x80000000, v51, s0
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_mov_b32 s36, s14
	v_cndmask_b32_e64 v52, 0x80000000, v52, s2
	v_add_lshl_u32 v35, v67, v35, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 vcc_lo, vcc_lo, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_and_b32 s37, s15, 0xffff
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v37, 16, v37
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v9, v9, v34 :: v_dual_lshlrev_b32 v34, 16, v39
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_lshlrev_b32_e32 v39, 16, v41
	v_lshlrev_b32_e32 v41, 16, v43
	.loc	1 1408 17                       ; ragged.py:1408:17
	v_dual_mul_f32 v14, v33, v14 :: v_dual_lshlrev_b32 v43, 16, v45
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_lshlrev_b32_e32 v33, 16, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v21, v21, v41 :: v_dual_lshlrev_b32 v40, 16, v42
	v_mul_f32_e32 v19, v19, v39
	v_dual_mul_f32 v23, v23, v43 :: v_dual_mul_f32 v18, v18, v33
	v_dual_mul_f32 v10, v10, v33 :: v_dual_mul_f32 v15, v15, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v14, v14, v40
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v33, v17, 16, 1
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v11, v11, v39 :: v_dual_lshlrev_b32 v42, 16, v44
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s0, v17, v17
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v20, v20, v34 :: v_dual_mul_f32 v13, v13, v41
	v_dual_mul_f32 v12, v12, v34 :: v_dual_mul_f32 v25, v25, v37
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v36, v36, v37 :: v_dual_lshlrev_b32 v39, 16, v47
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v58.l, v9.h
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v41, 16, v49
	v_lshlrev_b32_e32 v34, 16, v46
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add3_u32 v17, v17, v33, 0x7fff
	v_bfe_u32 v33, v18, 16, 1
	v_mov_b16_e32 v1.l, v10.h
	v_bfe_u32 v44, v19, 16, 1
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v22, v22, v40
	v_dual_mul_f32 v24, v24, v42 :: v_dual_mul_f32 v27, v27, v39
	v_dual_mul_f32 v16, v16, v42 :: v_dual_mul_f32 v3, v3, v39
	.loc	1 1410 36                       ; ragged.py:1410:36
	v_lshlrev_b32_e32 v37, 16, v48
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v5, v5, v41 :: v_dual_lshlrev_b32 v40, 16, v50
	.loc	1 1410 36                       ; ragged.py:1410:36
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v38, 16, v38
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v42, 16, v53
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v59.l, v11.h
	v_cmp_o_f32_e64 s3, v18, v18
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v28, v28, v37 :: v_dual_and_b32 v43, 1, v58
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s5, v19, v19
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v29, v29, v41 :: v_dual_mul_f32 v26, v26, v34
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add3_u32 v18, v18, v33, 0x7fff
	v_and_b32_e32 v33, 1, v1
	v_add3_u32 v19, v19, v44, 0x7fff
	v_mov_b16_e32 v1.l, v12.h
	v_bfe_u32 v45, v20, 16, 1
	v_bfe_u32 v46, v21, 16, 1
	v_bfe_u32 v47, v22, 16, 1
	v_bfe_u32 v48, v23, 16, 1
	v_bfe_u32 v49, v24, 16, 1
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v2, v2, v34
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v34, v25, 16, 1
	v_mov_b16_e32 v62.l, v36.h
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v4, v4, v37 :: v_dual_mul_f32 v31, v31, v42
	v_dual_mul_f32 v30, v30, v40 :: v_dual_mul_f32 v7, v7, v42
	v_dual_mul_f32 v32, v32, v38 :: v_dual_and_b32 v37, 1, v59
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s2, v9, v9
	v_mov_b16_e32 v61.l, v15.h
	v_add3_u32 v9, v9, v43, 0x7fff
	v_cndmask_b16 v18.l, 0x7fff, v19.h, s5
	v_and_b32_e32 v19, 1, v1
	v_cmp_o_f32_e64 s6, v20, v20
	v_cmp_o_f32_e64 s8, v11, v11
	v_cmp_o_f32_e64 s9, v21, v21
	v_cmp_o_f32_e64 s10, v22, v22
	v_cmp_o_f32_e64 s13, v23, v23
	v_cmp_o_f32_e64 s14, v24, v24
	v_cmp_o_f32_e64 s17, v25, v25
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_dual_mul_f32 v6, v6, v40 :: v_dual_and_b32 v39, 1, v61
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add3_u32 v20, v20, v45, 0x7fff
	v_add3_u32 v21, v21, v46, 0x7fff
	v_add3_u32 v22, v22, v47, 0x7fff
	v_add3_u32 v23, v23, v48, 0x7fff
	v_add3_u32 v24, v24, v49, 0x7fff
	v_add3_u32 v25, v25, v34, 0x7fff
	v_bfe_u32 v34, v26, 16, 1
	v_and_b32_e32 v40, 1, v62
	v_bfe_u32 v41, v27, 16, 1
	v_bfe_u32 v42, v28, 16, 1
	v_mov_b16_e32 v63.l, v3.h
	v_bfe_u32 v43, v29, 16, 1
	v_bfe_u32 v44, v30, 16, 1
	v_mov_b16_e32 v64.l, v5.h
	v_bfe_u32 v45, v31, 16, 1
	v_bfe_u32 v46, v32, 16, 1
	v_mov_b16_e32 v65.l, v7.h
	v_add3_u32 v11, v11, v37, 0x7fff
	v_mov_b16_e32 v1.l, v14.h
	v_cmp_o_f32_e64 s4, v10, v10
	v_add3_u32 v10, v10, v33, 0x7fff
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s2
	v_cmp_eq_u32_e64 s2, 0, v0
	v_add3_u32 v0, v12, v19, 0x7fff
	v_mov_b16_e32 v60.l, v13.h
	v_cmp_o_f32_e64 s18, v36, v36
	.loc	1 1415 17                       ; ragged.py:1415:17
	v_mul_f32_e32 v8, v8, v38
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s0
	v_cmp_o_f32_e64 s0, v26, v26
	v_cmp_o_f32_e64 s20, v27, v27
	v_cmp_o_f32_e64 s21, v28, v28
	v_cmp_o_f32_e64 s24, v29, v29
	v_cmp_o_f32_e64 s25, v30, v30
	v_cmp_o_f32_e64 s28, v31, v31
	v_cmp_o_f32_e64 s29, v32, v32
	v_cndmask_b16 v17.h, 0x7fff, v18.h, s3
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s6
	v_cndmask_b16 v20.l, 0x7fff, v21.h, s9
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s10
	v_cndmask_b16 v21.l, 0x7fff, v23.h, s13
	v_cndmask_b16 v21.h, 0x7fff, v24.h, s14
	v_cndmask_b16 v10.l, 0x7fff, v25.h, s17
	v_add3_u32 v22, v26, v34, 0x7fff
	v_add3_u32 v23, v36, v40, 0x7fff
	v_add3_u32 v24, v27, v41, 0x7fff
	v_add3_u32 v25, v28, v42, 0x7fff
	v_and_b32_e32 v26, 1, v63
	v_add3_u32 v27, v29, v43, 0x7fff
	v_add3_u32 v28, v30, v44, 0x7fff
	v_and_b32_e32 v29, 1, v64
	v_add3_u32 v30, v31, v45, 0x7fff
	v_add3_u32 v31, v32, v46, 0x7fff
	v_and_b32_e32 v32, 1, v65
	v_cndmask_b16 v0.l, 0x7fff, v11.h, s8
	v_and_b32_e32 v11, 1, v1
	v_mov_b16_e32 v1.l, v16.h
	v_cmp_o_f32_e64 s16, v15, v15
	v_add3_u32 v15, v15, v39, 0x7fff
	v_cmp_o_f32_e64 s11, v14, v14
	v_and_b32_e32 v38, 1, v60
	v_cmp_o_f32_e64 s23, v3, v3
	v_cmp_o_f32_e64 s27, v5, v5
	v_cmp_o_f32_e64 s31, v7, v7
	v_cndmask_b16 v9.h, 0x7fff, v10.h, s4
	v_cndmask_b16 v10.h, 0x7fff, v22.h, s0
	v_cndmask_b16 v15.l, 0x7fff, v23.h, s18
	v_cndmask_b16 v19.l, 0x7fff, v24.h, s20
	v_cndmask_b16 v19.h, 0x7fff, v25.h, s21
	v_add3_u32 v3, v3, v26, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v27.h, s24
	v_cndmask_b16 v22.h, 0x7fff, v28.h, s25
	v_add3_u32 v5, v5, v29, 0x7fff
	v_cndmask_b16 v23.l, 0x7fff, v30.h, s28
	v_cndmask_b16 v23.h, 0x7fff, v31.h, s29
	v_add3_u32 v7, v7, v32, 0x7fff
	v_cndmask_b32_e64 v24, v20, v17, s2
	v_cndmask_b32_e64 v17, v17, v20, s2
	v_cndmask_b32_e64 v20, v21, v18, s2
	v_cndmask_b32_e64 v18, v18, v21, s2
	v_cndmask_b32_e64 v21, 0x1054, v55, s2
	v_add3_u32 v11, v14, v11, 0x7fff
	v_and_b32_e32 v14, 1, v1
	v_mov_b16_e32 v1.l, v2.h
	v_cmp_o_f32_e64 s12, v13, v13
	v_cmp_o_f32_e64 s15, v16, v16
	v_add3_u32 v13, v13, v38, 0x7fff
	v_cndmask_b32_e64 v25, 0x3276, v56, s2
	v_cndmask_b16 v11.l, 0x7fff, v3.h, s23
	v_cndmask_b16 v26.l, 0x7fff, v5.h, s27
	v_cndmask_b16 v27.l, 0x7fff, v7.h, s31
	v_cndmask_b32_e64 v5, v22, v10, s2
	v_cndmask_b32_e64 v3, v10, v22, s2
	v_cndmask_b32_e64 v7, v23, v19, s2
	v_cndmask_b32_e64 v10, v19, v23, s2
	v_lshl_or_b32 v19, v21, 8, v21
	v_add3_u32 v14, v16, v14, 0x7fff
	v_and_b32_e32 v16, 1, v1
	v_mov_b16_e32 v1.l, v4.h
	v_cmp_o_f32_e64 s7, v12, v12
	v_cmp_o_f32_e64 s19, v2, v2
	v_cndmask_b16 v12.l, 0x7fff, v13.h, s12
	v_lshl_or_b32 v21, v25, 8, v25
	v_permlanex16_b32 v22, v3, s33, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v3, 0x540054, v19
	v_cndmask_b16 v13.h, 0x7fff, v14.h, s15
	v_add3_u32 v2, v2, v16, 0x7fff
	v_and_b32_e32 v14, 1, v1
	v_mov_b16_e32 v1.l, v6.h
	v_cmp_o_f32_e64 s22, v4, v4
	v_cndmask_b16 v13.l, 0x7fff, v15.h, s16
	v_cndmask_b16 v12.h, 0x7fff, v11.h, s11
	v_and_b32_e32 v19, 0x760076, v21
	v_lshl_or_b32 v3, v3, 4, v3
	v_cndmask_b16 v15.h, 0x7fff, v2.h, s19
	v_add3_u32 v2, v4, v14, 0x7fff
	v_and_b32_e32 v4, 1, v1
	v_mov_b16_e32 v1.l, v8.h
	v_cndmask_b32_e64 v16, v12, v9, s2
	v_cndmask_b32_e64 v9, v9, v12, s2
	v_lshl_or_b32 v12, v19, 4, v19
	v_and_b32_e32 v19, 0x5040504, v3
	v_and_b32_e32 v3, 1, v1
	v_cmp_o_f32_e64 s26, v6, v6
	v_cmp_o_f32_e64 s30, v8, v8
	v_add3_u32 v6, v6, v4, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s7
	v_add3_u32 v8, v8, v3, 0x7fff
	v_permlanex16_b32 v10, v10, s33, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v21, 0x7060706, v12
	v_cndmask_b16 v11.h, 0x7fff, v2.h, s22
	v_cndmask_b16 v26.h, 0x7fff, v6.h, s26
	v_cndmask_b16 v27.h, 0x7fff, v8.h, s30
	v_cndmask_b32_e64 v14, v13, v0, s2
	v_cndmask_b32_e64 v0, v0, v13, s2
	v_permlanex16_b32 v17, v17, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v18, s33, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v9, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v6, v10, v7, v19
	v_perm_b32 v7, v10, v7, v21
	v_cndmask_b32_e64 v10, v15, v26, s2
	v_cndmask_b32_e64 v13, v11, v27, s2
	v_permlanex16_b32 v12, v0, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v17, v24, v19
	v_perm_b32 v1, v17, v24, v21
	v_perm_b32 v2, v18, v20, v19
	v_perm_b32 v3, v18, v20, v21
	v_perm_b32 v8, v9, v16, v19
	v_perm_b32 v9, v9, v16, v21
	v_cndmask_b32_e64 v15, v26, v15, s2
	v_permlanex16_b32 v16, v10, s33, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v17, v27, v11, s2
	v_permlanex16_b32 v18, v13, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v4, v22, v5, v19
	v_perm_b32 v5, v22, v5, v21
	v_perm_b32 v10, v12, v14, v19
	v_perm_b32 v11, v12, v14, v21
	v_perm_b32 v12, v16, v15, v19
	v_perm_b32 v13, v16, v15, v21
	v_perm_b32 v14, v18, v17, v19
	v_perm_b32 v15, v18, v17, v21
	v_cndmask_b32_e32 v16, 0x80000000, v35, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v57, s[36:39], 0 offen
	buffer_store_b128 v[4:7], v51, s[36:39], 0 offen
	buffer_store_b128 v[8:11], v52, s[36:39], 0 offen
	buffer_store_b128 v[12:15], v16, s[36:39], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 121
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.num_vgpr, 121
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10036
; TotalNumSgprs: 42
; NumVgprs: 121
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 15
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 121
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     121
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
