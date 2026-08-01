	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b128 s[12:15], s[0:1], 0x20
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v67, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s28, 31
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s29, 0x7f
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
	s_ashr_i32 s4, s4, 5
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s6, s5, 7
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v69, 0
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s6, s4
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v71, 0
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_abs_i32 s5, s4
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	s_cvt_f32_u32 s7, s5
	s_sub_i32 s8, 0, s5
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v75, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v76, 0 :: v_dual_and_b32 v33, 31, v0
	v_dual_mov_b32 v78, 0 :: v_dual_and_b32 v49, 15, v0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
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
	s_mul_i32 s10, s7, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s7, 1
	s_sub_i32 s11, s9, s5
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s7, s10, s7
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s7, 1
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s5, s10, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s7, s6
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s5, s5, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s9, s7
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s16, s5, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s7
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s16, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s8, s2, s6
	s_ashr_i32 s8, s8, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s5, s9
	s_mul_hi_u32 s4, s9, s5
	s_abs_i32 s5, s2
	s_add_i32 s9, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s9
	s_mul_i32 s9, s4, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s9
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s5, s7
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s5, s10, s5
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s9, s4
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s17, s16, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[4:5], s[16:17], 2
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s6, s7, s6
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s31, s7, 5
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s30, s2, s6
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_add_u32 s4, s12, s4
	s_addc_u32 s5, s13, s5
	s_mov_b32 s13, 0
	s_load_b32 s22, s[4:5], 0x0
	.loc	1 1513 37                       ; ragged.py:1513:37
	s_mul_i32 s12, s16, s28
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s2, s22, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_lt_i32 s2, 2
	s_cbranch_scc1 .LBB0_8
; %bb.1:                                ; %.lr.ph16
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1
	s_load_b256 s[4:11], s[0:1], 0x0
	s_load_b64 s[24:25], s[0:1], 0x38
	.loc	1 1310 18 is_stmt 1             ; ragged.py:1310:18
	v_lshl_or_b32 v34, s30, 7, v0
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_lshrrev_b32_e32 v77, 5, v0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v1, s31, v49
	v_add3_u32 v4, s31, s12, v49
	v_dual_mov_b32 v76, 0 :: v_dual_and_b32 v5, 0x70, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[35:36], null, s28, v77, v[33:34]
	v_dual_mov_b32 v79, 0 :: v_dual_lshlrev_b32 v6, 5, v0
	v_or_b32_e32 v2, s31, v33
	v_or_b32_e32 v3, 16, v1
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s17, s2, 31
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v1
	v_mad_u64_u32 v[36:37], null, s28, 12, v[35:36]
	v_mad_u64_u32 v[37:38], null, s29, 3, v[34:35]
	v_mad_u64_u32 v[38:39], null, s29, 5, v[34:35]
	v_mad_u64_u32 v[39:40], null, s29, 6, v[34:35]
	v_dual_mov_b32 v80, 0 :: v_dual_and_b32 v1, 0x60, v0
	v_mad_u64_u32 v[40:41], null, s29, 7, v[34:35]
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v7, 16, v4
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v92, v4, s25
	v_dual_mov_b32 v75, 0 :: v_dual_lshlrev_b32 v4, 2, v5
	v_dual_mov_b32 v73, 0 :: v_dual_lshlrev_b32 v8, 1, v0
	v_dual_mov_b32 v71, 0 :: v_dual_and_b32 v6, 32, v6
	v_mad_u64_u32 v[41:42], null, s29, 9, v[34:35]
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_add_i32 s17, s2, s17
	v_mad_u64_u32 v[42:43], null, s29, 10, v[34:35]
	v_mad_u64_u32 v[43:44], null, s29, 11, v[34:35]
	s_ashr_i32 s33, s17, 1
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_lshr_b32 s17, s22, 31
	v_mad_u64_u32 v[44:45], null, s29, 12, v[34:35]
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s28, v2
	v_cmp_gt_i32_e64 s1, s28, v3
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v85, 0, v49
	v_mad_u64_u32 v[45:46], null, s29, 13, v[34:35]
	v_or_b32_e32 v2, 0x380, v0
	v_or_b32_e32 v3, 0x780, v0
	v_lshrrev_b32_e32 v1, 1, v1
	v_mul_lo_u32 v93, v7, s25
	v_dual_mov_b32 v72, 0 :: v_dual_and_b32 v7, 28, v8
	v_add3_u32 v4, 0, v4, v6
	v_dual_mov_b32 v70, 0 :: v_dual_lshlrev_b32 v5, 1, v5
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_add_i32 s17, s22, s17
	v_mad_u64_u32 v[46:47], null, s29, 14, v[34:35]
	v_mad_u64_u32 v[47:48], null, s29, 15, v[34:35]
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s34, s3, 4
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_ashr_i32 s35, s17, 1
	s_and_b32 s17, s5, 0xffff
	s_and_b32 s21, s7, 0xffff
	s_bitcmp1_b32 s22, 0
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s2, s29, v34
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v82, 4, v77
	v_or_b32_e32 v83, 8, v77
	v_or_b32_e32 v84, 12, v77
	v_lshl_add_u32 v86, s28, 2, v35
	v_lshl_add_u32 v87, s28, 3, v35
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v88, s29, v34
	v_lshl_add_u32 v89, s29, 1, v34
	v_lshl_add_u32 v90, s29, 2, v34
	v_lshl_add_u32 v91, s29, 3, v34
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v94, 0, v0
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v95, 0, v2
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v96, 0, v3
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v97, v85, v1
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v98, v4, v7
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v99, 0, v5
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_mov_b32_e32 v48, 0
	s_cselect_b32 s7, -1, 0
	s_add_i32 s38, s33, -1
	.loc	1 1464 43                       ; ragged.py:1464:43
	s_mul_i32 s36, s16, s24
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s37, s16, s25
	s_mov_b32 s16, s4
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_mov_b32 s20, s6
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s25, s11, 0xffff
	s_mov_b32 s24, s10
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshr_b32 s39, s38, 4
	s_mov_b32 s3, 0
	s_branch .LBB0_3
.LBB0_2:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s3, s13, s37
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v100, v92, s13, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s3, s3, s29
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v101, v93, s13, 1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v102, v34, s3, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_mov_b32 s10, s18
	v_cndmask_b32_e64 v100, 0x80000000, v100, s0
	s_mov_b32 s11, s19
	v_cndmask_b32_e64 v101, 0x80000000, v101, s1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e64 v102, 0x80000000, v102, s2
	s_mov_b32 s26, s18
	s_mov_b32 s27, s19
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x1
	buffer_load_u16 v100, v100, s[8:11], 0 offen
	buffer_load_u16 v101, v101, s[8:11], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	buffer_load_u16 v102, v102, s[24:27], 0 offen
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v103, v1
	v_cvt_f32_i32_e32 v104, v2
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v105, v3
	v_cvt_f32_i32_e32 v106, v4
	v_cvt_f32_i32_e32 v107, v5
	v_cvt_f32_i32_e32 v108, v6
	v_cvt_f32_i32_e32 v109, v7
	.loc	1 1524 21                       ; ragged.py:1524:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v110, v8
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s4, s13, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s3, s4, 4
	s_cmp_lg_u32 s13, s39
	s_mov_b32 s13, s4
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v1, 16, v100
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v25, v25, v1 :: v_dual_lshlrev_b32 v2, 16, v102
	v_mul_f32_e32 v26, v26, v1
	v_mul_f32_e32 v27, v27, v1
	v_mul_f32_e32 v28, v28, v1
	v_mul_f32_e32 v29, v29, v1
	v_mul_f32_e32 v30, v30, v1
	v_mul_f32_e32 v31, v31, v1
	v_mul_f32_e32 v32, v32, v1
	v_mul_f32_e32 v17, v17, v1
	v_mul_f32_e32 v18, v18, v1
	v_mul_f32_e32 v19, v19, v1
	v_mul_f32_e32 v20, v20, v1
	v_mul_f32_e32 v21, v21, v1
	v_mul_f32_e32 v22, v22, v1
	v_mul_f32_e32 v23, v23, v1
	v_mul_f32_e32 v24, v24, v1
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_store_b32 v98, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v99
	ds_load_b128 v[5:8], v99 offset:16
	.loc	1 1525 17                       ; ragged.py:1525:17
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v79, v27, v3 :: v_dual_lshlrev_b32 v100, 16, v101
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v101, v9, v100
	v_mul_f32_e32 v102, v10, v100
	v_mul_f32_e32 v111, v11, v100
	v_mul_f32_e32 v112, v12, v100
	v_mul_f32_e32 v113, v13, v100
	v_mul_f32_e32 v114, v14, v100
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[9:12], v99 offset:256
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v115, v15, v100
	v_mul_f32_e32 v116, v16, v100
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[13:16], v99 offset:272
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v103, v103, v100
	v_mul_f32_e32 v104, v104, v100
	v_mul_f32_e32 v105, v105, v100
	v_mul_f32_e32 v106, v106, v100
	v_mul_f32_e32 v107, v107, v100
	v_mul_f32_e32 v108, v108, v100
	v_mul_f32_e32 v109, v109, v100
	v_dual_mul_f32 v100, v110, v100 :: v_dual_fmac_f32 v81, v25, v1
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_fmac_f32_e32 v80, v26, v2
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v78, v28, v4 :: v_dual_fmac_f32 v75, v30, v6
	v_dual_fmac_f32 v76, v29, v5 :: v_dual_fmac_f32 v73, v32, v8
	v_fmac_f32_e32 v74, v31, v7
	v_dual_fmac_f32 v64, v101, v1 :: v_dual_fmac_f32 v61, v112, v4
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v72, v17, v9 :: v_dual_fmac_f32 v69, v20, v12
	v_dual_fmac_f32 v71, v18, v10 :: v_dual_fmac_f32 v70, v19, v11
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v67, v22, v14 :: v_dual_fmac_f32 v68, v21, v13
	v_dual_fmac_f32 v65, v24, v16 :: v_dual_fmac_f32 v66, v23, v15
	v_dual_fmac_f32 v63, v102, v2 :: v_dual_fmac_f32 v62, v111, v3
	v_dual_fmac_f32 v59, v114, v6 :: v_dual_fmac_f32 v60, v113, v5
	v_dual_fmac_f32 v57, v116, v8 :: v_dual_fmac_f32 v58, v115, v7
	v_dual_fmac_f32 v55, v104, v10 :: v_dual_fmac_f32 v56, v103, v9
	v_dual_fmac_f32 v53, v106, v12 :: v_dual_fmac_f32 v54, v105, v11
	v_dual_fmac_f32 v51, v108, v14 :: v_dual_fmac_f32 v52, v107, v13
	v_fmac_f32_e32 v50, v109, v15
	v_fmac_f32_e32 v48, v100, v16
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_8
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 1456 54                       ; ragged.py:1456:54
	s_sub_i32 s4, s35, s3
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v7, 0
	.loc	1 1454 45                       ; ragged.py:1454:45
	v_med3_i32 v1, s4, 0, 16
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v3, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1458 41                       ; ragged.py:1458:41
	v_readfirstlane_b32 s4, v1
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	s_and_b32 s5, s4, 16
	s_mov_b32 s4, s34
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_ge_i32 s34, s5
	s_cbranch_scc1 .LBB0_6
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v25, 0
	s_add_i32 s6, s3, s36
	s_mov_b32 s4, s34
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v26, v25
	v_mov_b32_e32 v27, v25
	v_mov_b32_e32 v28, v25
	v_mov_b32_e32 v29, v25
	v_mov_b32_e32 v30, v25
	v_mov_b32_e32 v31, v25
	v_mov_b32_e32 v32, v25
	v_mov_b32_e32 v17, v25
	v_mov_b32_e32 v18, v25
	v_mov_b32_e32 v19, v25
	v_mov_b32_e32 v20, v25
	v_mov_b32_e32 v21, v25
	v_mov_b32_e32 v22, v25
	v_mov_b32_e32 v23, v25
	v_mov_b32_e32 v24, v25
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v10, v25
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v12, v25
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v14, v25
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v16, v25
	v_mov_b32_e32 v1, v25
	v_mov_b32_e32 v2, v25
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v6, v25
	v_mov_b32_e32 v7, v25
	v_mov_b32_e32 v8, v25
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1471 46 is_stmt 1             ; ragged.py:1471:46
	s_add_i32 s10, s6, s4
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_mov_b32 s22, s18
	.loc	1 1471 46                       ; ragged.py:1471:46
	s_mul_i32 s11, s10, s28
	.loc	1 1472 46                       ; ragged.py:1472:46
	s_mul_i32 s10, s10, s29
	.loc	1 1471 46                       ; ragged.py:1471:46
	s_add_i32 s11, s11, s31
	.loc	1 1472 46                       ; ragged.py:1472:46
	v_add_nc_u32_e32 v100, s10, v34
	v_add_nc_u32_e32 v101, s10, v88
	v_add_nc_u32_e32 v102, s10, v89
	v_add_nc_u32_e32 v103, s10, v37
	v_add_nc_u32_e32 v104, s10, v90
	v_add_nc_u32_e32 v105, s10, v38
	v_add_nc_u32_e32 v106, s10, v39
	v_add_nc_u32_e32 v107, s10, v40
	v_add_nc_u32_e32 v108, s10, v91
	v_add_nc_u32_e32 v109, s10, v41
	v_add_nc_u32_e32 v110, s10, v42
	v_add_nc_u32_e32 v111, s10, v43
	v_add_nc_u32_e32 v112, s10, v44
	v_add_nc_u32_e32 v113, s10, v45
	v_add_nc_u32_e32 v114, s10, v46
	v_add_nc_u32_e32 v115, s10, v47
	v_add_nc_u32_e32 v116, s11, v35
	v_add_nc_u32_e32 v117, s11, v86
	v_add_nc_u32_e32 v118, s11, v87
	v_add_nc_u32_e32 v119, s11, v36
	.loc	1 1472 38 is_stmt 0             ; ragged.py:1472:38
	v_cndmask_b32_e64 v100, 0x80000000, v100, s2
	v_cndmask_b32_e64 v101, 0x80000000, v101, s2
	v_cndmask_b32_e64 v102, 0x80000000, v102, s2
	s_mov_b32 s23, s19
	v_cndmask_b32_e64 v103, 0x80000000, v103, s2
	v_cndmask_b32_e64 v104, 0x80000000, v104, s2
	v_cndmask_b32_e64 v105, 0x80000000, v105, s2
	v_cndmask_b32_e64 v106, 0x80000000, v106, s2
	v_cndmask_b32_e64 v107, 0x80000000, v107, s2
	v_cndmask_b32_e64 v108, 0x80000000, v108, s2
	v_cndmask_b32_e64 v109, 0x80000000, v109, s2
	v_cndmask_b32_e64 v110, 0x80000000, v110, s2
	v_cndmask_b32_e64 v111, 0x80000000, v111, s2
	v_cndmask_b32_e64 v112, 0x80000000, v112, s2
	v_cndmask_b32_e64 v113, 0x80000000, v113, s2
	v_cndmask_b32_e64 v114, 0x80000000, v114, s2
	v_cndmask_b32_e64 v115, 0x80000000, v115, s2
	.loc	1 1471 38 is_stmt 1             ; ragged.py:1471:38
	v_dual_cndmask_b32 v116, 0x80000000, v116 :: v_dual_cndmask_b32 v117, 0x80000000, v117
	v_dual_cndmask_b32 v118, 0x80000000, v118 :: v_dual_cndmask_b32 v119, 0x80000000, v119
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_clause 0xf
	buffer_load_u8 v100, v100, s[20:23], 0 offen
	buffer_load_u8 v101, v101, s[20:23], 0 offen
	buffer_load_u8 v102, v102, s[20:23], 0 offen
	buffer_load_u8 v103, v103, s[20:23], 0 offen
	buffer_load_u8 v104, v104, s[20:23], 0 offen
	buffer_load_u8 v105, v105, s[20:23], 0 offen
	buffer_load_u8 v106, v106, s[20:23], 0 offen
	buffer_load_u8 v107, v107, s[20:23], 0 offen
	buffer_load_u8 v108, v108, s[20:23], 0 offen
	buffer_load_u8 v109, v109, s[20:23], 0 offen
	buffer_load_u8 v110, v110, s[20:23], 0 offen
	buffer_load_u8 v111, v111, s[20:23], 0 offen
	buffer_load_u8 v112, v112, s[20:23], 0 offen
	buffer_load_u8 v113, v113, s[20:23], 0 offen
	buffer_load_u8 v114, v114, s[20:23], 0 offen
	buffer_load_u8 v115, v115, s[20:23], 0 offen
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_clause 0x3
	buffer_load_u8 v116, v116, s[16:19], 0 offen
	buffer_load_u8 v117, v117, s[16:19], 0 offen
	buffer_load_u8 v118, v118, s[16:19], 0 offen
	buffer_load_u8 v119, v119, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1483 25                       ; ragged.py:1483:25
	s_add_i32 s4, s4, 16
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt vmcnt(3)
	ds_store_b8 v94, v116
	s_waitcnt vmcnt(2)
	ds_store_b8 v94, v117 offset:128
	s_waitcnt vmcnt(1)
	ds_store_b8 v94, v118 offset:256
	s_waitcnt vmcnt(0)
	ds_store_b8 v94, v119 offset:384
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1473 35                       ; ragged.py:1473:35
	ds_load_u8 v116, v85 offset:224
	ds_load_u8 v117, v85 offset:192
	ds_load_u8 v118, v85 offset:160
	ds_load_u8 v119, v85 offset:128
	ds_load_u8 v120, v85 offset:240
	ds_load_u8 v121, v85 offset:208
	ds_load_u8 v122, v85 offset:176
	ds_load_u8 v123, v85 offset:144
	ds_load_u8 v124, v85 offset:96
	ds_load_u8 v125, v85 offset:64
	ds_load_u8 v126, v85 offset:112
	ds_load_u8 v127, v85 offset:80
	ds_load_u8 v128, v85
	ds_load_u8 v129, v85 offset:16
	ds_load_u8 v130, v85 offset:32
	ds_load_u8 v131, v85 offset:48
	ds_load_u8 v132, v85 offset:352
	ds_load_u8 v133, v85 offset:320
	ds_load_u8 v134, v85 offset:288
	ds_load_u8 v135, v85 offset:256
	ds_load_u8 v136, v85 offset:368
	ds_load_u8 v137, v85 offset:336
	ds_load_u8 v138, v85 offset:304
	ds_load_u8 v139, v85 offset:272
	ds_load_u8 v140, v85 offset:480
	ds_load_u8 v141, v85 offset:448
	ds_load_u8 v142, v85 offset:416
	ds_load_u8 v143, v85 offset:384
	ds_load_u8 v144, v85 offset:496
	ds_load_u8 v145, v85 offset:464
	ds_load_u8 v146, v85 offset:432
	ds_load_u8 v147, v85 offset:400
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v94, v100
	ds_store_b8 v94, v101 offset:128
	ds_store_b8 v94, v102 offset:256
	ds_store_b8 v94, v103 offset:384
	ds_store_b8 v94, v104 offset:512
	ds_store_b8 v94, v105 offset:640
	ds_store_b8 v94, v106 offset:768
	ds_store_b8 v94, v108 offset:1024
	ds_store_b8 v94, v109 offset:1152
	ds_store_b8 v94, v110 offset:1280
	ds_store_b8 v94, v111 offset:1408
	ds_store_b8 v94, v112 offset:1536
	ds_store_b8 v94, v113 offset:1664
	ds_store_b8 v95, v107
	ds_store_b8 v94, v114 offset:1792
	ds_store_b8 v96, v115
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1473 35                       ; ragged.py:1473:35
	ds_load_u8 v100, v97 offset:640
	ds_load_u8 v101, v97 offset:512
	ds_load_u8 v102, v97 offset:896
	ds_load_u8 v103, v97 offset:768
	ds_load_u8 v104, v97 offset:960
	ds_load_u8 v105, v97 offset:832
	ds_load_u8 v106, v97 offset:704
	ds_load_u8 v107, v97 offset:576
	ds_load_u8 v108, v97 offset:128
	ds_load_u8 v109, v97
	ds_load_u8 v110, v97 offset:384
	ds_load_u8 v111, v97 offset:256
	ds_load_u8 v112, v97 offset:448
	ds_load_u8 v113, v97 offset:320
	ds_load_u8 v114, v97 offset:192
	ds_load_u8 v115, v97 offset:64
	ds_load_u8 v148, v97 offset:1664
	ds_load_u8 v149, v97 offset:1536
	ds_load_u8 v150, v97 offset:1920
	ds_load_u8 v151, v97 offset:1792
	ds_load_u8 v152, v97 offset:1984
	ds_load_u8 v153, v97 offset:1856
	ds_load_u8 v154, v97 offset:1728
	ds_load_u8 v155, v97 offset:1600
	ds_load_u8 v156, v97 offset:1152
	ds_load_u8 v157, v97 offset:1024
	ds_load_u8 v158, v97 offset:1408
	ds_load_u8 v159, v97 offset:1280
	ds_load_u8 v160, v97 offset:1472
	ds_load_u8 v161, v97 offset:1344
	ds_load_u8 v162, v97 offset:1216
	ds_load_u8 v163, v97 offset:1088
	v_perm_b32 v118, v119, v118, 0xc0c0004
	v_perm_b32 v116, v117, v116, 0xc0c0004
	v_perm_b32 v117, v125, v124, 0xc0c0004
	v_perm_b32 v119, v128, v130, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v124, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v109, v111, v110, 0xc0c0004
	v_perm_b32 v111, v141, v140, 0xc0c0004
	v_perm_b32 v110, v143, v142, 0xc0c0004
	v_perm_b32 v125, v135, v134, 0xc0c0004
	v_perm_b32 v135, v107, v106, 0xc0c0004
	v_perm_b32 v140, v105, v104, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	v_perm_b32 v112, v113, v112, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v113, v155, v154, 0xc0c0004
	v_perm_b32 v115, v153, v152, 0xc0c0004
	v_perm_b32 v122, v123, v122, 0xc0c0004
	v_perm_b32 v120, v121, v120, 0xc0c0004
	v_perm_b32 v121, v127, v126, 0xc0c0004
	v_perm_b32 v123, v129, v131, 0xc0c0004
	v_perm_b32 v128, v133, v132, 0xc0c0004
	v_perm_b32 v130, v149, v148, 0xc0c0004
	v_perm_b32 v132, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v133, v157, v156, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v134, v159, v158, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v163, v162, 0xc0c0004
	v_perm_b32 v142, v161, v160, 0xc0c0004
	v_perm_b32 v126, v147, v146, 0xc0c0004
	v_perm_b32 v127, v145, v144, 0xc0c0004
	v_perm_b32 v129, v139, v138, 0xc0c0004
	v_perm_b32 v131, v137, v136, 0xc0c0004
	v_lshl_or_b32 v101, v116, 16, v118
	v_lshl_or_b32 v100, v117, 16, v119
	v_lshl_or_b32 v103, v102, 16, v124
	v_lshl_or_b32 v102, v109, 16, v108
	v_lshl_or_b32 v105, v111, 16, v110
	v_lshl_or_b32 v109, v140, 16, v135
	v_lshl_or_b32 v108, v112, 16, v114
	v_lshl_or_b32 v111, v115, 16, v113
	v_lshl_or_b32 v113, v120, 16, v122
	v_lshl_or_b32 v112, v121, 16, v123
	v_lshl_or_b32 v104, v128, 16, v125
	v_lshl_or_b32 v107, v132, 16, v130
	v_lshl_or_b32 v106, v134, 16, v133
	v_lshl_or_b32 v110, v142, 16, v141
	v_lshl_or_b32 v115, v127, 16, v126
	v_lshl_or_b32 v114, v131, 16, v129
	v_wmma_i32_16x16x16_iu4 v[25:32], v[102:103], v[100:101], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[108:109], v[100:101], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[102:103], v[112:113], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[108:109], v[112:113], v[1:8] neg_lo:[1,1,0]
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_lt_i32 s4, s5
	.loc	1 1473 35                       ; ragged.py:1473:35
	v_wmma_i32_16x16x16_iu4 v[25:32], v[106:107], v[104:105], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[110:111], v[104:105], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[106:107], v[114:115], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[110:111], v[114:115], v[1:8] neg_lo:[1,1,0]
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1452 25                       ; ragged.py:1452:25
	s_sub_i32 s5, s33, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1450 42                       ; ragged.py:1450:42
	s_min_i32 s6, s5, 16
	.loc	1 1484 24                       ; ragged.py:1484:24
	s_cmp_ge_i32 s4, s6
	.loc	1 1484 21 is_stmt 0             ; ragged.py:1484:21
	s_cbranch_scc1 .LBB0_2
; %bb.7:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	s_add_i32 s4, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s5, s4, 1
	s_or_b32 s10, s4, 2
	s_or_b32 s11, s4, 3
	s_or_b32 s22, s4, 4
	s_or_b32 s23, s4, 5
	s_or_b32 s26, s4, 6
	s_or_b32 s27, s4, 7
	s_or_b32 s40, s4, 8
	s_or_b32 s41, s4, 9
	s_or_b32 s42, s4, 10
	s_or_b32 s43, s4, 11
	s_or_b32 s44, s4, 12
	s_or_b32 s45, s4, 13
	s_or_b32 s46, s4, 14
	s_or_b32 s47, s4, 15
	.loc	1 1494 35                       ; ragged.py:1494:35
	s_sub_i32 s48, s5, s3
	s_sub_i32 s49, s10, s3
	s_sub_i32 s50, s11, s3
	s_sub_i32 s51, s22, s3
	s_sub_i32 s52, s23, s3
	s_sub_i32 s53, s26, s3
	s_sub_i32 s54, s27, s3
	s_sub_i32 s55, s40, s3
	s_sub_i32 s56, s41, s3
	s_sub_i32 s57, s42, s3
	s_sub_i32 s58, s43, s3
	s_sub_i32 s59, s44, s3
	s_sub_i32 s60, s45, s3
	s_sub_i32 s61, s46, s3
	s_sub_i32 s62, s47, s3
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	s_cmp_lt_i32 s48, s6
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v100, s4, v77
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s48, -1, 0
	s_cmp_lt_i32 s49, s6
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v101, s4, v82
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s49, -1, 0
	s_cmp_lt_i32 s50, s6
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v102, s4, v83
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s51, s6
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v103, s4, v84
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s52, s6
	.loc	1 1494 35 is_stmt 0             ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v104, s3, v100
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s53, s6
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v105, s3, v101
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s54, s6
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v106, s3, v102
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s55, s6
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v107, s3, v103
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s56, s6
	v_cmp_gt_i32_e64 s3, s6, v104
	s_cselect_b32 s56, -1, 0
	s_cmp_lt_i32 s57, s6
	s_cselect_b32 s57, -1, 0
	s_cmp_lt_i32 s58, s6
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s59, s6
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s60, s6
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s61, s6
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s62, s6
	s_cselect_b32 s62, -1, 0
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	s_cmp_eq_u32 s4, s38
	s_cselect_b32 s63, -1, 0
	s_cmp_eq_u32 s5, s38
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s5, s6, v106
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s64, -1, 0
	s_cmp_eq_u32 s10, s38
	s_cselect_b32 s10, -1, 0
	s_cmp_eq_u32 s11, s38
	s_cselect_b32 s11, -1, 0
	s_cmp_eq_u32 s22, s38
	s_cselect_b32 s65, -1, 0
	s_cmp_eq_u32 s23, s38
	s_cselect_b32 s66, -1, 0
	s_cmp_eq_u32 s26, s38
	s_cselect_b32 s26, -1, 0
	s_cmp_eq_u32 s27, s38
	s_cselect_b32 s27, -1, 0
	s_cmp_eq_u32 s40, s38
	s_cselect_b32 s40, -1, 0
	s_cmp_eq_u32 s41, s38
	s_cselect_b32 s41, -1, 0
	s_cmp_eq_u32 s42, s38
	s_cselect_b32 s42, -1, 0
	s_cmp_eq_u32 s43, s38
	s_cselect_b32 s43, -1, 0
	s_cmp_eq_u32 s44, s38
	s_cselect_b32 s44, -1, 0
	s_cmp_eq_u32 s45, s38
	s_cselect_b32 s45, -1, 0
	s_cmp_eq_u32 s46, s38
	s_cselect_b32 s46, -1, 0
	s_cmp_eq_u32 s47, s38
	s_cselect_b32 s47, -1, 0
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_add_i32 s22, s4, s36
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s4, s6, v105
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_mul_i32 s23, s22, s28
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s3
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_add_i32 s23, s23, s31
	.loc	1 1494 34 is_stmt 1             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s6, s6, v107
	v_add_nc_u32_e32 v104, s23, v35
	v_add_nc_u32_e32 v105, s23, v86
	v_add_nc_u32_e32 v106, s23, v87
	v_add_nc_u32_e32 v107, s23, v36
	.loc	1 1497 46                       ; ragged.py:1497:46
	s_mul_i32 s22, s22, s29
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v104, 0x80000000, v104, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s4
	.loc	1 1497 46 is_stmt 1             ; ragged.py:1497:46
	v_add_nc_u32_e32 v109, s22, v88
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v105, 0x80000000, v105, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s5
	.loc	1 1497 46 is_stmt 1             ; ragged.py:1497:46
	v_add_nc_u32_e32 v110, s22, v89
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v106, 0x80000000, v106, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s6
	.loc	1 1497 46 is_stmt 1             ; ragged.py:1497:46
	v_add_nc_u32_e32 v111, s22, v37
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v107, 0x80000000, v107, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s2, s48
	.loc	1 1497 46 is_stmt 0             ; ragged.py:1497:46
	v_add_nc_u32_e32 v112, s22, v90
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v109, 0x80000000, v109, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s2, s49
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v113, s22, v38
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v110, 0x80000000, v110, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s2, s50
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v108, s22, v34
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v111, 0x80000000, v111, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s2, s51
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v114, s22, v39
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v112, 0x80000000, v112, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s2, s52
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v115, s22, v40
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v113, 0x80000000, v113, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s2, s53
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v116, s22, v91
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v108, 0x80000000, v108, s2
	v_cndmask_b32_e64 v114, 0x80000000, v114, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s2, s54
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v117, s22, v41
	v_add_nc_u32_e32 v118, s22, v42
	v_add_nc_u32_e32 v119, s22, v43
	v_add_nc_u32_e32 v120, s22, v44
	v_add_nc_u32_e32 v121, s22, v45
	v_add_nc_u32_e32 v122, s22, v46
	v_add_nc_u32_e32 v123, s22, v47
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	v_cndmask_b32_e64 v115, 0x80000000, v115, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s2, s55
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x7
	buffer_load_u8 v124, v108, s[20:23], 0 offen
	buffer_load_u8 v125, v109, s[20:23], 0 offen
	buffer_load_u8 v110, v110, s[20:23], 0 offen
	buffer_load_u8 v111, v111, s[20:23], 0 offen
	buffer_load_u8 v112, v112, s[20:23], 0 offen
	buffer_load_u8 v113, v113, s[20:23], 0 offen
	buffer_load_u8 v114, v114, s[20:23], 0 offen
	buffer_load_u8 v115, v115, s[20:23], 0 offen
	v_cndmask_b32_e64 v108, 0x80000000, v116, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s2, s56
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s4, s38, v101
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v109, 0x80000000, v117, s3
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s3, s2, s57
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s5, s38, v102
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v116, 0x80000000, v118, s3
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s3, s2, s58
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s6, s38, v103
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v117, 0x80000000, v119, s3
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s3, s2, s59
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s4, s4, s7
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v118, 0x80000000, v120, s3
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s3, s2, s60
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s5, s5, s7
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v119, 0x80000000, v121, s3
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s3, s2, s61
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s6, s6, s7
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v120, 0x80000000, v122, s3
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s3, s2, s62
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s10, s10, s7
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v121, 0x80000000, v123, s3
	s_clause 0x7
	buffer_load_u8 v122, v108, s[20:23], 0 offen
	buffer_load_u8 v123, v109, s[20:23], 0 offen
	buffer_load_u8 v116, v116, s[20:23], 0 offen
	buffer_load_u8 v117, v117, s[20:23], 0 offen
	buffer_load_u8 v118, v118, s[20:23], 0 offen
	buffer_load_u8 v119, v119, s[20:23], 0 offen
	buffer_load_u8 v120, v120, s[20:23], 0 offen
	buffer_load_u8 v121, v121, s[20:23], 0 offen
	.loc	1 1496 38                       ; ragged.py:1496:38
	s_clause 0x3
	buffer_load_u8 v126, v104, s[16:19], 0 offen
	buffer_load_u8 v127, v105, s[16:19], 0 offen
	buffer_load_u8 v128, v106, s[16:19], 0 offen
	buffer_load_u8 v129, v107, s[16:19], 0 offen
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s3, s38, v100
	.loc	1 1495 36 is_stmt 0             ; ragged.py:1495:36
	s_and_b32 s22, s63, s7
	s_and_b32 s23, s64, s7
	s_and_b32 s11, s11, s7
	s_and_b32 s48, s65, s7
	s_and_b32 s3, s3, s7
	s_and_b32 s49, s66, s7
	s_and_b32 s26, s26, s7
	s_and_b32 s27, s27, s7
	s_and_b32 s40, s40, s7
	s_and_b32 s41, s41, s7
	s_and_b32 s42, s42, s7
	s_and_b32 s43, s43, s7
	s_and_b32 s44, s44, s7
	s_and_b32 s45, s45, s7
	s_and_b32 s46, s46, s7
	s_and_b32 s47, s47, s7
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(19)
	v_and_b16 v100.l, v124.l, 15
	s_waitcnt vmcnt(18)
	v_and_b16 v100.h, v125.l, 15
	s_waitcnt vmcnt(17)
	v_and_b16 v101.l, v110.l, 15
	s_waitcnt vmcnt(16)
	v_and_b16 v101.h, v111.l, 15
	s_waitcnt vmcnt(15)
	v_and_b16 v102.l, v112.l, 15
	s_waitcnt vmcnt(14)
	v_and_b16 v102.h, v113.l, 15
	s_waitcnt vmcnt(13)
	v_and_b16 v103.l, v114.l, 15
	s_waitcnt vmcnt(12)
	v_and_b16 v103.h, v115.l, 15
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v100.l, v124.l, v100.l, s22
	v_cndmask_b16 v100.h, v125.l, v100.h, s23
	v_cndmask_b16 v101.l, v110.l, v101.l, s10
	v_cndmask_b16 v101.h, v111.l, v101.h, s11
	v_cndmask_b16 v102.l, v112.l, v102.l, s48
	v_cndmask_b16 v102.h, v113.l, v102.h, s49
	v_cndmask_b16 v103.l, v114.l, v103.l, s26
	v_cndmask_b16 v103.h, v115.l, v103.h, s27
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(11)
	v_and_b16 v104.l, v122.l, 15
	s_waitcnt vmcnt(10)
	v_and_b16 v104.h, v123.l, 15
	s_waitcnt vmcnt(9)
	v_and_b16 v105.l, v116.l, 15
	s_waitcnt vmcnt(8)
	v_and_b16 v105.h, v117.l, 15
	s_waitcnt vmcnt(7)
	v_and_b16 v106.l, v118.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v106.h, v119.l, 15
	s_waitcnt vmcnt(5)
	v_and_b16 v107.l, v120.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v107.h, v121.l, 15
	.loc	1 1498 66 is_stmt 1             ; ragged.py:1498:66
	s_waitcnt vmcnt(3)
	v_and_b16 v108.l, v126.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v108.h, v127.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v109.l, v128.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v109.h, v129.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v104.l, v122.l, v104.l, s40
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v108.l, v126.l, v108.l, s3
	v_cndmask_b16 v108.h, v127.l, v108.h, s4
	v_cndmask_b16 v109.l, v128.l, v109.l, s5
	v_cndmask_b16 v109.h, v129.l, v109.h, s6
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v104.h, v123.l, v104.h, s41
	v_cndmask_b16 v105.l, v116.l, v105.l, s42
	v_cndmask_b16 v105.h, v117.l, v105.h, s43
	v_cndmask_b16 v106.l, v118.l, v106.l, s44
	v_cndmask_b16 v106.h, v119.l, v106.h, s45
	v_cndmask_b16 v107.l, v120.l, v107.l, s46
	v_cndmask_b16 v107.h, v121.l, v107.h, s47
	.loc	1 1498 38                       ; ragged.py:1498:38
	ds_store_b8 v94, v108
	ds_store_b8_d16_hi v94, v108 offset:128
	ds_store_b8 v94, v109 offset:256
	ds_store_b8_d16_hi v94, v109 offset:384
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1500 35                       ; ragged.py:1500:35
	ds_load_u8 v108, v85 offset:224
	ds_load_u8 v109, v85 offset:192
	ds_load_u8 v110, v85 offset:160
	ds_load_u8 v111, v85 offset:128
	ds_load_u8 v112, v85 offset:240
	ds_load_u8 v113, v85 offset:208
	ds_load_u8 v114, v85 offset:176
	ds_load_u8 v115, v85 offset:144
	ds_load_u8 v116, v85 offset:96
	ds_load_u8 v117, v85 offset:64
	ds_load_u8 v118, v85 offset:112
	ds_load_u8 v119, v85 offset:80
	ds_load_u8 v120, v85
	ds_load_u8 v121, v85 offset:16
	ds_load_u8 v122, v85 offset:32
	ds_load_u8 v123, v85 offset:48
	ds_load_u8 v124, v85 offset:352
	ds_load_u8 v125, v85 offset:320
	ds_load_u8 v126, v85 offset:288
	ds_load_u8 v127, v85 offset:256
	ds_load_u8 v128, v85 offset:368
	ds_load_u8 v129, v85 offset:336
	ds_load_u8 v130, v85 offset:304
	ds_load_u8 v131, v85 offset:272
	ds_load_u8 v132, v85 offset:480
	ds_load_u8 v133, v85 offset:448
	ds_load_u8 v134, v85 offset:416
	ds_load_u8 v135, v85 offset:384
	ds_load_u8 v136, v85 offset:496
	ds_load_u8 v137, v85 offset:464
	ds_load_u8 v138, v85 offset:432
	ds_load_u8 v139, v85 offset:400
	.loc	1 1499 38                       ; ragged.py:1499:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v94, v100
	ds_store_b8_d16_hi v94, v100 offset:128
	ds_store_b8 v94, v101 offset:256
	ds_store_b8_d16_hi v94, v101 offset:384
	ds_store_b8 v94, v102 offset:512
	ds_store_b8_d16_hi v94, v102 offset:640
	ds_store_b8 v94, v103 offset:768
	ds_store_b8 v94, v104 offset:1024
	ds_store_b8_d16_hi v94, v104 offset:1152
	ds_store_b8 v94, v105 offset:1280
	ds_store_b8_d16_hi v94, v105 offset:1408
	ds_store_b8 v94, v106 offset:1536
	ds_store_b8_d16_hi v94, v106 offset:1664
	ds_store_b8_d16_hi v95, v103
	ds_store_b8 v94, v107 offset:1792
	ds_store_b8_d16_hi v96, v107
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1500 35                       ; ragged.py:1500:35
	ds_load_u8 v100, v97 offset:640
	ds_load_u8 v101, v97 offset:512
	ds_load_u8 v102, v97 offset:896
	ds_load_u8 v103, v97 offset:768
	ds_load_u8 v104, v97 offset:960
	ds_load_u8 v105, v97 offset:832
	ds_load_u8 v106, v97 offset:704
	ds_load_u8 v107, v97 offset:576
	ds_load_u8 v140, v97 offset:128
	ds_load_u8 v141, v97
	ds_load_u8 v142, v97 offset:384
	ds_load_u8 v143, v97 offset:256
	ds_load_u8 v144, v97 offset:448
	ds_load_u8 v145, v97 offset:320
	ds_load_u8 v146, v97 offset:192
	ds_load_u8 v147, v97 offset:64
	ds_load_u8 v148, v97 offset:1664
	ds_load_u8 v149, v97 offset:1536
	ds_load_u8 v150, v97 offset:1920
	ds_load_u8 v151, v97 offset:1792
	ds_load_u8 v152, v97 offset:1984
	ds_load_u8 v153, v97 offset:1856
	ds_load_u8 v154, v97 offset:1728
	ds_load_u8 v155, v97 offset:1600
	ds_load_u8 v156, v97 offset:1152
	ds_load_u8 v157, v97 offset:1024
	ds_load_u8 v158, v97 offset:1408
	ds_load_u8 v159, v97 offset:1280
	ds_load_u8 v160, v97 offset:1472
	ds_load_u8 v161, v97 offset:1344
	ds_load_u8 v162, v97 offset:1216
	ds_load_u8 v163, v97 offset:1088
	v_perm_b32 v110, v111, v110, 0xc0c0004
	v_perm_b32 v108, v109, v108, 0xc0c0004
	v_perm_b32 v109, v117, v116, 0xc0c0004
	v_perm_b32 v111, v120, v122, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v116, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v117, v141, v140, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v120, v143, v142, 0xc0c0004
	v_perm_b32 v140, v105, v104, 0xc0c0004
	v_perm_b32 v122, v135, v134, 0xc0c0004
	v_perm_b32 v135, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v141, v147, v146, 0xc0c0004
	v_perm_b32 v142, v145, v144, 0xc0c0004
	v_perm_b32 v114, v115, v114, 0xc0c0004
	v_perm_b32 v112, v113, v112, 0xc0c0004
	v_perm_b32 v115, v119, v118, 0xc0c0004
	v_perm_b32 v118, v121, v123, 0xc0c0004
	v_perm_b32 v132, v133, v132, 0xc0c0004
	v_perm_b32 v126, v127, v126, 0xc0c0004
	v_perm_b32 v124, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v125, v149, v148, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v127, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v133, v157, v156, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v134, v159, v158, 0xc0c0004
	v_perm_b32 v143, v155, v154, 0xc0c0004
	v_perm_b32 v144, v153, v152, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v163, v162, 0xc0c0004
	v_perm_b32 v146, v161, v160, 0xc0c0004
	v_perm_b32 v119, v139, v138, 0xc0c0004
	v_perm_b32 v121, v137, v136, 0xc0c0004
	v_perm_b32 v123, v131, v130, 0xc0c0004
	v_perm_b32 v128, v129, v128, 0xc0c0004
	v_lshl_or_b32 v101, v108, 16, v110
	v_lshl_or_b32 v100, v109, 16, v111
	v_lshl_or_b32 v103, v102, 16, v116
	v_lshl_or_b32 v102, v120, 16, v117
	v_lshl_or_b32 v109, v140, 16, v135
	v_lshl_or_b32 v108, v142, 16, v141
	v_lshl_or_b32 v113, v112, 16, v114
	v_lshl_or_b32 v112, v115, 16, v118
	v_lshl_or_b32 v105, v132, 16, v122
	v_lshl_or_b32 v104, v124, 16, v126
	v_lshl_or_b32 v107, v127, 16, v125
	v_lshl_or_b32 v106, v134, 16, v133
	v_lshl_or_b32 v111, v144, 16, v143
	v_lshl_or_b32 v110, v146, 16, v145
	v_lshl_or_b32 v115, v121, 16, v119
	v_lshl_or_b32 v114, v128, 16, v123
	v_wmma_i32_16x16x16_iu4 v[25:32], v[102:103], v[100:101], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[108:109], v[100:101], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[102:103], v[112:113], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[108:109], v[112:113], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[106:107], v[104:105], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[110:111], v[104:105], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[106:107], v[114:115], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[110:111], v[114:115], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_2
.LBB0_8:                                ; %._crit_edge17
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_bfe_u32 v1, v81, 16, 1
	v_bfe_u32 v5, v78, 16, 1
	v_bfe_u32 v3, v80, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v81, v81
	v_bfe_u32 v4, v79, 16, 1
	v_add3_u32 v1, v81, v1, 0x7fff
	v_add3_u32 v5, v78, v5, 0x7fff
	v_cmp_o_f32_e64 s2, v78, v78
	v_bfe_u32 v6, v76, 16, 1
	v_bfe_u32 v9, v73, 16, 1
	v_add3_u32 v3, v80, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v80, v80
	v_add3_u32 v4, v79, v4, 0x7fff
	v_cmp_o_f32_e64 s1, v79, v79
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s2
	v_bfe_u32 v7, v75, 16, 1
	v_add3_u32 v6, v76, v6, 0x7fff
	v_bfe_u32 v8, v74, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v76, v76
	v_add3_u32 v9, v73, v9, 0x7fff
	v_cmp_o_f32_e64 s2, v73, v73
	v_bfe_u32 v10, v72, 16, 1
	v_bfe_u32 v13, v69, 16, 1
	v_cndmask_b16 v3.l, 0x7fff, v3.h, s0
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s1
	v_add3_u32 v7, v75, v7, 0x7fff
	v_cmp_o_f32_e64 s0, v75, v75
	v_add3_u32 v8, v74, v8, 0x7fff
	v_cmp_o_f32_e64 s1, v74, v74
	v_cndmask_b16 v6.l, 0x7fff, v6.h, vcc_lo
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s2
	v_bfe_u32 v11, v71, 16, 1
	v_add3_u32 v10, v72, v10, 0x7fff
	v_bfe_u32 v12, v70, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v72, v72
	v_add3_u32 v13, v69, v13, 0x7fff
	v_cmp_o_f32_e64 s2, v69, v69
	v_bfe_u32 v14, v68, 16, 1
	v_bfe_u32 v17, v65, 16, 1
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s0
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s1
	v_add3_u32 v11, v71, v11, 0x7fff
	v_cmp_o_f32_e64 s0, v71, v71
	v_add3_u32 v12, v70, v12, 0x7fff
	v_cmp_o_f32_e64 s1, v70, v70
	v_cndmask_b16 v10.l, 0x7fff, v10.h, vcc_lo
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s2
	v_bfe_u32 v15, v67, 16, 1
	v_add3_u32 v14, v68, v14, 0x7fff
	v_bfe_u32 v16, v66, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v68, v68
	v_add3_u32 v17, v65, v17, 0x7fff
	v_cmp_o_f32_e64 s2, v65, v65
	v_bfe_u32 v18, v64, 16, 1
	v_bfe_u32 v21, v61, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s0
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s1
	v_add3_u32 v15, v67, v15, 0x7fff
	v_cmp_o_f32_e64 s0, v67, v67
	v_add3_u32 v16, v66, v16, 0x7fff
	v_cmp_o_f32_e64 s1, v66, v66
	v_cndmask_b16 v14.l, 0x7fff, v14.h, vcc_lo
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s2
	v_bfe_u32 v19, v63, 16, 1
	v_add3_u32 v18, v64, v18, 0x7fff
	v_bfe_u32 v20, v62, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v64, v64
	v_add3_u32 v21, v61, v21, 0x7fff
	v_cmp_o_f32_e64 s2, v61, v61
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s0
	v_cndmask_b16 v16.l, 0x7fff, v16.h, s1
	v_add3_u32 v19, v63, v19, 0x7fff
	v_cmp_o_f32_e64 s0, v63, v63
	v_add3_u32 v20, v62, v20, 0x7fff
	v_cmp_o_f32_e64 s1, v62, v62
	v_cndmask_b16 v1.h, 0x7fff, v18.h, vcc_lo
	v_bfe_u32 v18, v60, 16, 1
	v_cndmask_b16 v5.h, 0x7fff, v21.h, s2
	v_bfe_u32 v21, v57, 16, 1
	v_cndmask_b16 v3.h, 0x7fff, v19.h, s0
	v_cndmask_b16 v4.h, 0x7fff, v20.h, s1
	v_bfe_u32 v19, v59, 16, 1
	v_add3_u32 v18, v60, v18, 0x7fff
	v_bfe_u32 v20, v58, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v60, v60
	v_add3_u32 v21, v57, v21, 0x7fff
	v_cmp_o_f32_e64 s2, v57, v57
	v_add3_u32 v19, v59, v19, 0x7fff
	v_cmp_o_f32_e64 s0, v59, v59
	v_add3_u32 v20, v58, v20, 0x7fff
	v_cmp_o_f32_e64 s1, v58, v58
	v_cndmask_b16 v6.h, 0x7fff, v18.h, vcc_lo
	v_bfe_u32 v18, v56, 16, 1
	v_cndmask_b16 v9.h, 0x7fff, v21.h, s2
	v_bfe_u32 v21, v53, 16, 1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_bfe_i32 v2, v0, 6, 1
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v7.h, 0x7fff, v19.h, s0
	v_cndmask_b16 v8.h, 0x7fff, v20.h, s1
	v_bfe_u32 v19, v55, 16, 1
	v_add3_u32 v18, v56, v18, 0x7fff
	v_bfe_u32 v20, v54, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v56, v56
	v_add3_u32 v21, v53, v21, 0x7fff
	v_cmp_o_f32_e64 s2, v53, v53
	v_bfe_u32 v22, v52, 16, 1
	v_add3_u32 v19, v55, v19, 0x7fff
	v_cmp_o_f32_e64 s0, v55, v55
	v_add3_u32 v20, v54, v20, 0x7fff
	v_cmp_o_f32_e64 s1, v54, v54
	v_cndmask_b16 v10.h, 0x7fff, v18.h, vcc_lo
	v_cndmask_b16 v13.h, 0x7fff, v21.h, s2
	v_add3_u32 v18, v52, v22, 0x7fff
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshlrev_b32_e32 v21, 2, v33
	v_and_b32_e32 v22, 32, v0
	v_and_b32_e32 v23, 0x1040, v2
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v11.h, 0x7fff, v19.h, s0
	v_cndmask_b16 v12.h, 0x7fff, v20.h, s1
	v_cmp_o_f32_e32 vcc_lo, v52, v52
	v_bfe_u32 v19, v51, 16, 1
	v_bfe_u32 v20, v50, 16, 1
	v_bfe_u32 v24, v48, 16, 1
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xor3_b32 v21, v21, v22, v23
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s0, v51, v51
	v_add3_u32 v19, v51, v19, 0x7fff
	v_add3_u32 v20, v50, v20, 0x7fff
	v_cmp_o_f32_e64 s1, v50, v50
	v_add3_u32 v22, v48, v24, 0x7fff
	v_cmp_o_f32_e64 s2, v48, v48
	v_cndmask_b16 v14.h, 0x7fff, v18.h, vcc_lo
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshl_or_b32 v18, v49, 8, v21
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v15.h, 0x7fff, v19.h, s0
	v_cndmask_b16 v16.h, 0x7fff, v20.h, s1
	v_cndmask_b16 v17.h, 0x7fff, v22.h, s2
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshlrev_b32_e32 v22, 2, v0
	v_add_nc_u32_e32 v19, 0, v18
	v_xad_u32 v20, v18, 4, 0
	v_xad_u32 v21, v18, 8, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b32 v19, v1, v10 offset1:32
	v_xad_u32 v1, v18, 12, 0
	ds_store_2addr_b32 v20, v3, v11 offset1:32
	ds_store_2addr_b32 v21, v4, v12 offset1:32
	v_and_b32_e32 v3, 0xbc, v22
	v_and_b32_e32 v2, 0x104, v2
	v_xad_u32 v4, v18, 20, 0
	ds_store_2addr_b32 v1, v5, v13 offset1:32
	v_xad_u32 v1, v18, 16, 0
	v_bfe_i32 v5, v0, 4, 1
	v_xor_b32_e32 v2, v2, v3
	ds_store_2addr_b32 v1, v6, v14 offset1:32
	ds_store_2addr_b32 v4, v7, v15 offset1:32
	v_xad_u32 v3, v18, 24, 0
	v_and_or_b32 v1, 0x1040, v5, v2
	v_xad_u32 v10, v18, 28, 0
	ds_store_2addr_b32 v3, v8, v16 offset1:32
	ds_store_2addr_b32 v10, v9, v17 offset1:32
	v_add_nc_u32_e32 v2, 0, v1
	v_xad_u32 v3, v1, 64, 0
	v_xad_u32 v4, 0x208, v1, 0
	v_xad_u32 v5, 0x248, v1, 0
	v_xad_u32 v6, 0x410, v1, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xad_u32 v7, 0x450, v1, 0
	v_xad_u32 v8, 0x618, v1, 0
	v_xad_u32 v9, 0x658, v1, 0
	ds_load_b32 v16, v2
	ds_load_b32 v17, v3
	ds_load_b32 v14, v4
	ds_load_b32 v15, v5
	ds_load_b32 v12, v6
	ds_load_b32 v13, v7
	ds_load_b32 v10, v8
	ds_load_b32 v11, v9
	v_xad_u32 v2, 0x820, v1, 0
	v_xad_u32 v3, 0x860, v1, 0
	v_xad_u32 v4, 0xa28, v1, 0
	v_xad_u32 v5, 0xa68, v1, 0
	v_xad_u32 v18, 0xc30, v1, 0
	v_xad_u32 v19, 0xc70, v1, 0
	v_xad_u32 v20, 0xe38, v1, 0
	v_xad_u32 v21, 0xe78, v1, 0
	ds_load_b32 v8, v2
	ds_load_b32 v9, v3
	ds_load_b32 v6, v4
	ds_load_b32 v7, v5
	ds_load_b32 v4, v18
	ds_load_b32 v5, v19
	ds_load_b32 v1, v20
	ds_load_b32 v2, v21
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v3, 6, v0
	.loc	1 1536 56                       ; ragged.py:1536:56
	v_and_b32_e32 v0, 63, v0
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_lshr_b32 s0, s29, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_add_i32 s0, s29, s0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v3, s31, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1536 31                       ; ragged.py:1536:31
	v_lshl_or_b32 v0, s30, 6, v0
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_ashr_i32 s1, s0, 1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v3
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
	v_add_nc_u32_e32 v18, s12, v3
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v20, v16, v17, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s14, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s15, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_10:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_12
; %bb.11:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s12, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v20, v14, v15, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s14, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s15, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_12:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_14
; %bb.13:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s12, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v20, v12, v13, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s14, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s15, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_14:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 6, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_16
; %bb.15:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s12, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v20, v10, v11, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s14, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s15, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_16:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 8, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_18
; %bb.17:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s12, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v20, v8, v9, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s14, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s15, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_18:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 10, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_20
; %bb.19:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s12, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v20, v6, v7, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s14, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s15, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_20:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 12, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_22
; %bb.21:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s12, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v20, v4, v5, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s14, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s15, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_22:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 14, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_24
; %bb.23:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s12, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v1, v2, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s14, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s15, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_24:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 16, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_26
; %bb.25:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s12, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v20, v16, v17, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v16, s0, s14, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s15, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[16:17], v20, off
.LBB0_26:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(15)
	v_or_b32_e32 v16, 18, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v16
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_28
; %bb.27:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v16, s12, v16
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v18, v14, v15, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[16:17], null, v16, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v17, 31, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_co_u32 v14, s0, s14, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v15, null, s15, v17, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[14:15], v18, off
.LBB0_28:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(13)
	v_or_b32_e32 v14, 20, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v14
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_30
; %bb.29:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v14, s12, v14
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v16, v12, v13, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[14:15], null, v14, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v15, 31, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[14:15], 2, v[14:15]
	v_add_co_u32 v12, s0, s14, v14
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s15, v15, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[12:13], v16, off
.LBB0_30:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(11)
	v_or_b32_e32 v12, 22, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v12
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_32
; %bb.31:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v12, s12, v12
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v14, v10, v11, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[12:13], null, v12, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v13, 31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_co_u32 v10, s0, s14, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, s15, v13, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[10:11], v14, off
.LBB0_32:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(9)
	v_or_b32_e32 v10, 24, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v10
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_34
; %bb.33:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v10, s12, v10
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v12, v8, v9, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[10:11], null, v10, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v11, 31, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	v_add_co_u32 v8, s0, s14, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s15, v11, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[8:9], v12, off
.LBB0_34:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(7)
	v_or_b32_e32 v8, 26, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v8
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_36
; %bb.35:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v8, s12, v8
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v10, v6, v7, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[8:9], null, v8, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v6, s0, s14, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, s15, v9, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[6:7], v10, off
.LBB0_36:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(5)
	v_or_b32_e32 v6, 28, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v6
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_38
; %bb.37:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v6, s12, v6
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v8, v4, v5, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[6:7], null, v6, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v7, 31, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[6:7], 2, v[6:7]
	v_add_co_u32 v4, s0, s14, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s15, v7, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[4:5], v8, off
.LBB0_38:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v3, 30, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s28, v3
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_40
; %bb.39:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v3, s12, v3
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v1, v2, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_mad_u64_u32 v[3:4], null, v3, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v4, 31, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[3:4], 2, v[3:4]
	v_add_co_u32 v0, vcc_lo, s14, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s15, v4, vcc_lo
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
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 164
		.amdhsa_next_free_sgpr 67
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.num_vgpr, 164
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.numbered_sgpr, 67
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10436
; TotalNumSgprs: 69
; NumVgprs: 164
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 20
; NumSGPRsForWavesPerEU: 69
; NumVGPRsForWavesPerEU: 164
; Occupancy: 9
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1
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
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     69
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     164
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
