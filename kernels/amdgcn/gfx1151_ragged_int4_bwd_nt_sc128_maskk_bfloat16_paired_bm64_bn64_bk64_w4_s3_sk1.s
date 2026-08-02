	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x30
	s_load_b128 s[36:39], s[0:1], 0x20
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s8, s2
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v61, 0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s56, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s57, 63
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
	s_ashr_i32 s24, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s19, s5, 6
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v75, 0
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s19, s24
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_abs_i32 s5, s4
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_and_b32 v38, 15, v0
	v_dual_mov_b32 v90, 0 :: v_dual_and_b32 v39, 64, v0
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v37, 16, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_3)
	.loc	1 1304 20                       ; ragged.py:1304:20
	v_readfirstlane_b32 s6, v1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v40, 32, v0
	s_mov_b32 s60, 0
	.loc	1 1304 20                       ; ragged.py:1304:20
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
	s_abs_i32 s6, s19
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s5, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s8, s6
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s20, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s6
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s20, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s8
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s7, s2, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_cvt_u32_f32 s8, s8
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s5, s8
	s_mul_hi_u32 s4, s8, s5
	s_abs_i32 s5, s7
	s_add_i32 s8, s8, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s8
	s_xor_b32 s8, s7, s19
	s_mul_i32 s9, s4, s6
	s_ashr_i32 s25, s8, 31
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
	s_ashr_i32 s21, s20, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s26, s4, s25
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[4:5], s[20:21], 2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s6, s26, s25
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s8, s6, s19
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s59, s6, 6
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s58, s7, s8
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_add_u32 s4, s36, s4
	s_addc_u32 s5, s37, s5
	.loc	1 1466 43                       ; ragged.py:1466:43
	s_mul_i32 s37, s20, s56
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s21, s[4:5], 0x0
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s18, s21, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_lt_i32 s18, 2
	s_cbranch_scc1 .LBB0_8
; %bb.1:                                ; %.lr.ph10
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v1, 2, v39
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x38
	s_load_b256 s[40:47], s[0:1], 0x0
	v_lshrrev_b32_e32 v2, 4, v37
	v_lshrrev_b32_e32 v3, 1, v40
	v_or_b32_e32 v5, v1, v38
	v_lshrrev_b32_e32 v4, 1, v0
	.loc	1 1310 18                       ; ragged.py:1310:18
	s_lshl_b32 s27, s58, 6
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s28, s18, 31
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or3_b32 v57, v2, v3, s27
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v6, s59, v5
	v_or_b32_e32 v1, s59, v4
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s27, v4
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_add_i32 s28, s18, s28
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s62, s3, 5
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s56, v6
	v_dual_mov_b32 v87, 0 :: v_dual_lshlrev_b32 v6, 4, v0
	v_cmp_gt_i32_e32 vcc_lo, s56, v1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s29, s57, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v90, 0 :: v_dual_and_b32 v33, 16, v6
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_ashr_i32 s61, s28, 1
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_lshr_b32 s28, s21, 31
	s_add_i32 s3, s59, s37
	s_add_i32 s28, s21, s28
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[1:2], null, s22, v4, v[33:34]
	v_dual_mov_b32 v85, 0 :: v_dual_lshlrev_b32 v2, 1, v0
	s_ashr_i32 s63, s28, 1
	.loc	1 1468 43                       ; ragged.py:1468:43
	s_mul_i32 s28, s20, s57
	s_and_b32 s49, s41, 0xffff
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v83, 0 :: v_dual_and_b32 v2, 24, v2
	s_add_i32 s66, s27, s28
	s_and_b32 s41, s43, 0xffff
	s_bitcmp1_b32 s21, 0
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_mul_i32 s24, s24, s20
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s64, s20, s23
	v_lshl_or_b32 v2, v38, 5, v2
	s_cselect_b32 s67, -1, 0
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_sub_i32 s20, s25, s24
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v3, 32, v5
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_sub_i32 s20, s20, s26
	v_lshl_or_b32 v93, v39, 3, v2
	s_mul_i32 s19, s19, s20
	v_lshl_or_b32 v94, v40, 4, v2
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v2, s3, v5
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v7, s59, v3
	s_mul_i32 s65, s3, s22
	v_dual_mov_b32 v46, 0 :: v_dual_add_nc_u32 v3, s3, v3
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s3, s19, 6
	s_lshl_b32 s2, s2, 6
	s_add_i32 s3, s3, s28
	v_mul_lo_u32 v117, v2, s23
	v_add3_u32 v2, s3, s2, v4
	s_mul_i32 s66, s66, s22
	s_lshl_b32 s19, s26, 6
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v89, s65, v1
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v91, s66, v1
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v102, 1, v1
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v103, 2, v1
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v104, 3, v1
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v105, 4, v1
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v106, 5, v1
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v107, 6, v1
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v108, 7, v1
	v_dual_mov_b32 v56, 0 :: v_dual_add_nc_u32 v109, 8, v1
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v110, 9, v1
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v111, 10, v1
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v112, 11, v1
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v113, 12, v1
	v_dual_mov_b32 v51, 0 :: v_dual_add_nc_u32 v114, 13, v1
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v115, 14, v1
	v_dual_mov_b32 v47, 0 :: v_dual_add_nc_u32 v116, 15, v1
	v_add3_u32 v1, s37, s19, v4
	v_mad_u64_u32 v[34:35], null, s22, v2, v[33:34]
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s1, s56, v7
	v_dual_mov_b32 v86, 0 :: v_dual_and_b32 v7, 24, v0
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s2, s25, 6
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v58, 2, v57
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_subrev_nc_u32_e32 v1, s2, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v59, 4, v57
	v_or_b32_e32 v60, 6, v57
	v_or_b32_e32 v62, 8, v57
	v_or_b32_e32 v63, 10, v57
	v_or_b32_e32 v65, 12, v57
	v_or_b32_e32 v66, 14, v57
	v_or_b32_e32 v67, 32, v57
	v_or_b32_e32 v68, 34, v57
	v_or_b32_e32 v69, 36, v57
	v_or_b32_e32 v70, 38, v57
	v_or_b32_e32 v71, 40, v57
	v_or_b32_e32 v72, 42, v57
	v_or_b32_e32 v73, 44, v57
	v_or_b32_e32 v74, 46, v57
	v_xor_b32_e32 v92, v6, v7
	v_mul_lo_u32 v118, v3, s23
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_mad_u64_u32 v[35:36], null, s22, v1, v[33:34]
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s36, s57, v57
	v_cmp_gt_i32_e64 s4, s57, v58
	v_cmp_gt_i32_e64 s5, s57, v59
	v_cmp_gt_i32_e64 s6, s57, v60
	v_cmp_gt_i32_e64 s7, s57, v62
	v_cmp_gt_i32_e64 s8, s57, v63
	v_cmp_gt_i32_e64 s9, s57, v65
	v_cmp_gt_i32_e64 s10, s57, v66
	v_cmp_gt_i32_e64 s11, s57, v67
	v_cmp_gt_i32_e64 s12, s57, v68
	v_cmp_gt_i32_e64 s13, s57, v69
	v_cmp_gt_i32_e64 s14, s57, v70
	v_cmp_gt_i32_e64 s15, s57, v71
	v_cmp_gt_i32_e64 s16, s57, v72
	v_cmp_gt_i32_e64 s17, s57, v73
	v_cmp_gt_i32_e64 s18, s57, v74
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v82, 14, v33
	v_or_b32_e32 v84, 15, v33
	v_xor_b32_e32 v95, 8, v92
	v_xor_b32_e32 v96, 8, v93
	v_xor_b32_e32 v97, 16, v93
	v_xor_b32_e32 v98, 24, v93
	v_xor_b32_e32 v99, 8, v94
	v_xor_b32_e32 v100, 16, v94
	v_xor_b32_e32 v101, 24, v94
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	s_add_i32 s68, s61, -1
	s_mov_b32 s48, s40
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	s_mov_b32 s40, s42
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s53, s47, 0xffff
	s_mov_b32 s52, s46
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshr_b32 s69, s68, 6
	s_mov_b32 s2, 0
	s_branch .LBB0_3
.LBB0_2:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v119, v117, s60, 1
	v_add_lshl_u32 v120, v118, s60, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s2, s60, s64
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_mov_b32 s46, s50
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s2, s2, s57
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v119, 0x80000000, v119, s0
	v_cndmask_b32_e64 v120, 0x80000000, v120, s1
	s_mov_b32 s47, s51
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v121, v57, s2, 1
	v_add_lshl_u32 v129, v67, s2, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x1
	buffer_load_u16 v119, v119, s[44:47], 0 offen
	buffer_load_u16 v120, v120, s[44:47], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v122, v58, s2, 1
	v_add_lshl_u32 v130, v68, s2, 1
	v_add_lshl_u32 v123, v59, s2, 1
	v_add_lshl_u32 v131, v69, s2, 1
	v_add_lshl_u32 v124, v60, s2, 1
	v_add_lshl_u32 v132, v70, s2, 1
	v_add_lshl_u32 v125, v62, s2, 1
	v_add_lshl_u32 v126, v63, s2, 1
	v_add_lshl_u32 v127, v65, s2, 1
	v_add_lshl_u32 v128, v66, s2, 1
	v_add_lshl_u32 v133, v71, s2, 1
	v_add_lshl_u32 v134, v72, s2, 1
	v_add_lshl_u32 v135, v73, s2, 1
	v_add_lshl_u32 v136, v74, s2, 1
	v_cndmask_b32_e64 v121, 0x80000000, v121, s36
	v_cndmask_b32_e64 v129, 0x80000000, v129, s11
	v_cndmask_b32_e64 v122, 0x80000000, v122, s4
	v_cndmask_b32_e64 v130, 0x80000000, v130, s12
	v_cndmask_b32_e64 v123, 0x80000000, v123, s5
	v_cndmask_b32_e64 v131, 0x80000000, v131, s13
	s_mov_b32 s54, s50
	s_mov_b32 s55, s51
	v_cndmask_b32_e64 v124, 0x80000000, v124, s6
	v_cndmask_b32_e64 v132, 0x80000000, v132, s14
	v_cndmask_b32_e64 v125, 0x80000000, v125, s7
	v_cndmask_b32_e64 v126, 0x80000000, v126, s8
	v_cndmask_b32_e64 v127, 0x80000000, v127, s9
	v_cndmask_b32_e64 v128, 0x80000000, v128, s10
	v_cndmask_b32_e64 v133, 0x80000000, v133, s15
	v_cndmask_b32_e64 v134, 0x80000000, v134, s16
	v_cndmask_b32_e64 v135, 0x80000000, v135, s17
	v_cndmask_b32_e64 v136, 0x80000000, v136, s18
	s_clause 0xf
	buffer_load_u16 v121, v121, s[52:55], 0 offen
	buffer_load_u16 v122, v122, s[52:55], 0 offen
	buffer_load_u16 v123, v123, s[52:55], 0 offen
	buffer_load_u16 v124, v124, s[52:55], 0 offen
	buffer_load_u16 v125, v125, s[52:55], 0 offen
	buffer_load_u16 v126, v126, s[52:55], 0 offen
	buffer_load_u16 v127, v127, s[52:55], 0 offen
	buffer_load_u16 v128, v128, s[52:55], 0 offen
	buffer_load_u16 v129, v129, s[52:55], 0 offen
	buffer_load_u16 v130, v130, s[52:55], 0 offen
	buffer_load_u16 v131, v131, s[52:55], 0 offen
	buffer_load_u16 v132, v132, s[52:55], 0 offen
	buffer_load_u16 v133, v133, s[52:55], 0 offen
	buffer_load_u16 v134, v134, s[52:55], 0 offen
	buffer_load_u16 v135, v135, s[52:55], 0 offen
	buffer_load_u16 v136, v136, s[52:55], 0 offen
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
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
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s3, s60, 1
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v35, 64, v35
	s_lshl_b32 s2, s3, 6
	s_cmp_lg_u32 s60, s69
	s_mov_b32 s60, s3
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v119, 16, v119
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(16)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v29, v119, v29 :: v_dual_lshlrev_b32 v120, 16, v120
	v_mul_f32_e32 v2, v120, v2
	v_mul_f32_e32 v26, v119, v26
	v_dual_mul_f32 v27, v119, v27 :: v_dual_add_nc_u32 v34, 64, v34
	v_mul_f32_e32 v28, v119, v28
	v_mul_f32_e32 v30, v119, v30
	v_mul_f32_e32 v31, v119, v31
	v_mul_f32_e32 v32, v119, v32
	v_mul_f32_e32 v17, v119, v17
	v_mul_f32_e32 v18, v119, v18
	v_mul_f32_e32 v19, v119, v19
	v_mul_f32_e32 v20, v119, v20
	v_mul_f32_e32 v21, v119, v21
	v_mul_f32_e32 v22, v119, v22
	v_mul_f32_e32 v23, v119, v23
	v_mul_f32_e32 v24, v119, v24
	v_mul_f32_e32 v1, v1, v120
	v_mul_f32_e32 v25, v25, v119
	v_mul_f32_e32 v3, v120, v3
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v121, 16, v121
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v122, 16, v122
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v123, 16, v123
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v124, 16, v124
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v125, 16, v125
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v126, 16, v126
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v127, 16, v127
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v128, 16, v128
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v129, 16, v129
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v130, 16, v130
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v131, 16, v131
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v132, 16, v132
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v133, 16, v133
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v134, 16, v134
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v135, 16, v135
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v136, 16, v136
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v4, v120, v4 :: v_dual_fmac_f32 v85, v30, v126
	v_dual_mul_f32 v5, v120, v5 :: v_dual_fmac_f32 v90, v26, v122
	v_dual_mul_f32 v6, v120, v6 :: v_dual_fmac_f32 v83, v31, v127
	v_dual_mul_f32 v7, v120, v7 :: v_dual_fmac_f32 v86, v29, v125
	v_dual_mul_f32 v8, v120, v8 :: v_dual_fmac_f32 v79, v18, v130
	v_dual_mul_f32 v9, v120, v9 :: v_dual_fmac_f32 v88, v27, v123
	v_dual_mul_f32 v10, v120, v10 :: v_dual_fmac_f32 v53, v1, v121
	v_dual_mul_f32 v11, v120, v11 :: v_dual_fmac_f32 v80, v17, v129
	v_dual_mul_f32 v12, v120, v12 :: v_dual_fmac_f32 v75, v22, v134
	v_dual_mul_f32 v13, v120, v13 :: v_dual_fmac_f32 v78, v19, v131
	v_dual_mul_f32 v14, v120, v14 :: v_dual_fmac_f32 v55, v3, v123
	v_dual_mul_f32 v15, v120, v15 :: v_dual_fmac_f32 v76, v21, v133
	v_dual_mul_f32 v16, v120, v16 :: v_dual_fmac_f32 v51, v5, v125
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_dual_fmac_f32 v87, v28, v124 :: v_dual_fmac_f32 v64, v23, v135
	v_dual_fmac_f32 v81, v32, v128 :: v_dual_fmac_f32 v52, v25, v121
	v_dual_fmac_f32 v77, v20, v132 :: v_dual_fmac_f32 v56, v2, v122
	v_dual_fmac_f32 v61, v24, v136 :: v_dual_fmac_f32 v50, v6, v126
	v_dual_fmac_f32 v54, v4, v124 :: v_dual_fmac_f32 v49, v7, v127
	v_dual_fmac_f32 v48, v8, v128 :: v_dual_fmac_f32 v47, v9, v129
	v_dual_fmac_f32 v46, v10, v130 :: v_dual_fmac_f32 v45, v11, v131
	v_dual_fmac_f32 v44, v12, v132 :: v_dual_fmac_f32 v43, v13, v133
	v_dual_fmac_f32 v42, v14, v134 :: v_dual_fmac_f32 v41, v15, v135
	v_fmac_f32_e32 v36, v16, v136
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_8
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 1456 54                       ; ragged.py:1456:54
	s_sub_i32 s3, s63, s2
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v16, 0
	.loc	1 1454 45                       ; ragged.py:1454:45
	v_med3_i32 v2, s3, 0, 64
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v12, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1458 41                       ; ragged.py:1458:41
	v_readfirstlane_b32 s3, v2
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	s_and_b32 s19, s3, 0x60
	s_mov_b32 s3, s62
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_ge_i32 s62, s19
	s_cbranch_scc1 .LBB0_6
; %bb.4:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v25, 0
	s_mov_b32 s3, s62
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
	v_mov_b32_e32 v1, v25
	v_mov_b32_e32 v2, v25
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v6, v25
	v_mov_b32_e32 v7, v25
	v_mov_b32_e32 v8, v25
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v10, v25
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v12, v25
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v14, v25
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v16, v25
.LBB0_5:                                ; %.lr.ph
                                        ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1471 38 is_stmt 1             ; ragged.py:1471:38
	v_add_nc_u32_e32 v119, s3, v35
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_add_nc_u32_e32 v120, s3, v34
	s_mov_b32 s42, s50
	s_mov_b32 s43, s51
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_add_nc_u32_e32 v139, 0, v92
	v_dual_cndmask_b32 v119, 0x80000000, v119 :: v_dual_add_nc_u32 v128, 0, v96
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_cndmask_b32_e64 v123, 0x80000000, v120, s29
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_add_nc_u32_e32 v127, 0, v93
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_add_nc_u32_e32 v141, 0, v94
	.loc	1 1471 38                       ; ragged.py:1471:38
	buffer_load_b128 v[119:122], v119, s[48:51], 0 offen
	.loc	1 1472 38                       ; ragged.py:1472:38
	buffer_load_b128 v[123:126], v123, s[40:43], 0 offen
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_add_nc_u32_e32 v140, 0, v95
	v_add_nc_u32_e32 v131, 0, v97
	v_add_nc_u32_e32 v135, 0, v98
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_add_nc_u32_e32 v142, 0, v99
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_add_nc_u32_e32 v143, 0, v100
	v_add_nc_u32_e32 v147, 0, v101
	.loc	1 1483 25                       ; ragged.py:1483:25
	s_add_i32 s3, s3, 32
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt vmcnt(1)
	ds_store_b64 v139, v[119:120]
	ds_store_b64 v140, v[121:122]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[119:122], v127 offset1:2
	ds_load_2addr_stride64_b64 v[127:130], v128 offset1:2
	ds_load_2addr_stride64_b64 v[131:134], v131 offset1:2
	ds_load_2addr_stride64_b64 v[135:138], v135 offset1:2
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v139, v[123:124]
	ds_store_b64 v140, v[125:126]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[123:126], v141 offset1:2
	ds_load_2addr_stride64_b64 v[139:142], v142 offset1:2
	ds_load_2addr_stride64_b64 v[143:146], v143 offset1:2
	ds_load_2addr_stride64_b64 v[147:150], v147 offset1:2
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_lt_i32 s3, s19
	.loc	1 1473 35                       ; ragged.py:1473:35
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[123:124], v[119:120], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[125:126], v[119:120], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[123:124], v[121:122], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[125:126], v[121:122], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[139:140], v[127:128], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[141:142], v[127:128], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[139:140], v[129:130], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[141:142], v[129:130], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[143:144], v[131:132], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[145:146], v[131:132], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[143:144], v[133:134], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[145:146], v[133:134], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[147:148], v[135:136], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[149:150], v[135:136], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[147:148], v[137:138], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[149:150], v[137:138], v[9:16] neg_lo:[1,1,0]
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1452 25                       ; ragged.py:1452:25
	s_sub_i32 s19, s61, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1450 42                       ; ragged.py:1450:42
	s_min_i32 s19, s19, 64
	.loc	1 1484 24                       ; ragged.py:1484:24
	s_cmp_ge_i32 s3, s19
	.loc	1 1484 21 is_stmt 0             ; ragged.py:1484:21
	s_cbranch_scc1 .LBB0_2
; %bb.7:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_or_b32_e32 v119, 1, v33
	.loc	1 1485 30                       ; ragged.py:1485:30
	s_add_i32 s42, s3, s2
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v120, 2, v33
	v_or_b32_e32 v121, 3, v33
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v122, s42, v33
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v123, 4, v33
	v_or_b32_e32 v124, 5, v33
	v_or_b32_e32 v125, 6, v33
	v_or_b32_e32 v126, 7, v33
	v_or_b32_e32 v127, 8, v33
	v_or_b32_e32 v128, 9, v33
	v_or_b32_e32 v129, 10, v33
	v_or_b32_e32 v130, 11, v33
	v_or_b32_e32 v131, 12, v33
	v_or_b32_e32 v132, 13, v33
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v119, s42, v119
	v_or_b32_e32 v120, s42, v120
	v_or_b32_e32 v121, s42, v121
	v_or_b32_e32 v123, s42, v123
	v_or_b32_e32 v124, s42, v124
	v_or_b32_e32 v125, s42, v125
	v_or_b32_e32 v126, s42, v126
	v_or_b32_e32 v127, s42, v127
	v_or_b32_e32 v128, s42, v128
	v_or_b32_e32 v129, s42, v129
	v_or_b32_e32 v130, s42, v130
	v_or_b32_e32 v131, s42, v131
	v_or_b32_e32 v132, s42, v132
	v_or_b32_e32 v133, s42, v82
	v_or_b32_e32 v134, s42, v84
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v135, s2, v122
	v_subrev_nc_u32_e32 v136, s2, v119
	v_subrev_nc_u32_e32 v137, s2, v120
	v_subrev_nc_u32_e32 v138, s2, v121
	v_subrev_nc_u32_e32 v139, s2, v123
	v_subrev_nc_u32_e32 v140, s2, v124
	v_subrev_nc_u32_e32 v141, s2, v125
	v_subrev_nc_u32_e32 v142, s2, v126
	v_subrev_nc_u32_e32 v143, s2, v127
	v_subrev_nc_u32_e32 v144, s2, v128
	v_subrev_nc_u32_e32 v145, s2, v129
	v_subrev_nc_u32_e32 v146, s2, v130
	v_subrev_nc_u32_e32 v147, s2, v131
	v_subrev_nc_u32_e32 v148, s2, v132
	v_subrev_nc_u32_e32 v149, s2, v133
	v_subrev_nc_u32_e32 v150, s2, v134
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s35, s19, v135
	v_cmp_gt_i32_e64 s34, s19, v136
	.loc	1 1496 46 is_stmt 1             ; ragged.py:1496:46
	s_add_i32 s3, s42, s65
	v_add_nc_u32_e32 v135, s42, v89
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s33, s19, v137
	.loc	1 1496 46                       ; ragged.py:1496:46
	v_add_nc_u32_e32 v136, s3, v102
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s31, s19, v138
	v_cmp_gt_i32_e64 s30, s19, v139
	v_cmp_gt_i32_e64 s2, s19, v140
	v_cmp_gt_i32_e64 s28, s19, v141
	v_cmp_gt_i32_e64 s27, s19, v142
	v_cmp_gt_i32_e64 s26, s19, v143
	v_cmp_gt_i32_e64 s25, s19, v144
	v_cmp_gt_i32_e64 s24, s19, v145
	v_cmp_gt_i32_e64 s23, s19, v146
	v_cmp_gt_i32_e64 s22, s19, v147
	v_cmp_gt_i32_e64 s21, s19, v148
	v_cmp_gt_i32_e64 s20, s19, v149
	v_cmp_gt_i32_e64 s19, s19, v150
	.loc	1 1496 46                       ; ragged.py:1496:46
	v_add_nc_u32_e32 v137, s3, v103
	v_add_nc_u32_e32 v138, s3, v104
	v_add_nc_u32_e32 v139, s3, v105
	v_add_nc_u32_e32 v140, s3, v106
	v_add_nc_u32_e32 v141, s3, v107
	v_add_nc_u32_e32 v142, s3, v108
	v_add_nc_u32_e32 v143, s3, v109
	v_add_nc_u32_e32 v144, s3, v110
	v_add_nc_u32_e32 v145, s3, v111
	v_add_nc_u32_e32 v146, s3, v112
	v_add_nc_u32_e32 v147, s3, v113
	v_add_nc_u32_e32 v148, s3, v114
	v_add_nc_u32_e32 v149, s3, v115
	v_add_nc_u32_e32 v150, s3, v116
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s35
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	s_mov_b32 s43, s51
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v135, 0x80000000, v135, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s34
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	v_add_nc_u32_e32 v169, 0, v93
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v136, 0x80000000, v136, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s33
	.loc	1 1499 38 is_stmt 1             ; ragged.py:1499:38
	v_add_nc_u32_e32 v173, 0, v94
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v137, 0x80000000, v137, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s31
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	v_add_nc_u32_e32 v168, 0, v95
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v138, 0x80000000, v138, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s30
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	v_add_nc_u32_e32 v170, 0, v96
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v139, 0x80000000, v139, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s2
	.loc	1 1497 70 is_stmt 1             ; ragged.py:1497:70
	s_and_b32 s2, s29, s2
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v140, 0x80000000, v140, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s28
	.loc	1 1499 38 is_stmt 1             ; ragged.py:1499:38
	v_add_nc_u32_e32 v174, 0, v99
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v141, 0x80000000, v141, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s27
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	v_add_nc_u32_e32 v171, 0, v97
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v151, 0x80000000, v142, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s26
	.loc	1 1496 38                       ; ragged.py:1496:38
	s_clause 0x7
	buffer_load_u8 v142, v135, s[48:51], 0 offen
	buffer_load_u8 v135, v136, s[48:51], 0 offen
	buffer_load_u8 v136, v137, s[48:51], 0 offen
	buffer_load_u8 v137, v138, s[48:51], 0 offen
	buffer_load_u8 v138, v139, s[48:51], 0 offen
	buffer_load_u8 v139, v140, s[48:51], 0 offen
	buffer_load_u8 v140, v141, s[48:51], 0 offen
	buffer_load_u8 v141, v151, s[48:51], 0 offen
	v_cndmask_b32_e64 v143, 0x80000000, v143, s3
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s25
	.loc	1 1497 46 is_stmt 1             ; ragged.py:1497:46
	v_add_nc_u32_e32 v151, s42, v91
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v144, 0x80000000, v144, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s24
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	v_add_nc_u32_e32 v172, 0, v98
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v145, 0x80000000, v145, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v146, 0x80000000, v146, s3
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s22
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v147, 0x80000000, v147, s3
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v148, 0x80000000, v148, s3
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s20
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v149, 0x80000000, v149, s3
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s19
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v150, 0x80000000, v150, s3
	.loc	1 1497 46 is_stmt 1             ; ragged.py:1497:46
	s_add_i32 s3, s42, s66
	.loc	1 1497 38 is_stmt 0             ; ragged.py:1497:38
	s_mov_b32 s42, s50
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v156, s3, v106
	v_add_nc_u32_e32 v157, s3, v107
	v_add_nc_u32_e32 v158, s3, v108
	v_add_nc_u32_e32 v159, s3, v109
	v_add_nc_u32_e32 v160, s3, v110
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v156, 0x80000000, v156, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s29, s28
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v161, s3, v111
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v157, 0x80000000, v157, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s29, s27
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v162, s3, v112
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v167, 0x80000000, v158, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s29, s26
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v152, s3, v102
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v159, 0x80000000, v159, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s29, s25
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v153, s3, v103
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v160, 0x80000000, v160, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s29, s24
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v154, s3, v104
	v_add_nc_u32_e32 v155, s3, v105
	v_add_nc_u32_e32 v163, s3, v113
	v_add_nc_u32_e32 v164, s3, v114
	v_add_nc_u32_e32 v165, s3, v115
	v_add_nc_u32_e32 v166, s3, v116
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s29, s35
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v161, 0x80000000, v161, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s29, s23
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v151, 0x80000000, v151, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s29, s34
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v162, 0x80000000, v162, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s29, s22
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v152, 0x80000000, v152, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s29, s33
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v163, 0x80000000, v163, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s29, s21
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v153, 0x80000000, v153, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s29, s31
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v164, 0x80000000, v164, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s29, s20
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v154, 0x80000000, v154, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s29, s30
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v165, 0x80000000, v165, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s29, s19
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v155, 0x80000000, v155, s3
	s_clause 0x7
	buffer_load_u8 v158, v151, s[40:43], 0 offen
	buffer_load_u8 v151, v152, s[40:43], 0 offen
	buffer_load_u8 v152, v153, s[40:43], 0 offen
	buffer_load_u8 v153, v154, s[40:43], 0 offen
	buffer_load_u8 v154, v155, s[40:43], 0 offen
	buffer_load_u8 v155, v156, s[40:43], 0 offen
	buffer_load_u8 v156, v157, s[40:43], 0 offen
	buffer_load_u8 v157, v167, s[40:43], 0 offen
	v_cndmask_b32_e64 v166, 0x80000000, v166, s2
	.loc	1 1496 38 is_stmt 1             ; ragged.py:1496:38
	s_clause 0x7
	buffer_load_u8 v143, v143, s[48:51], 0 offen
	buffer_load_u8 v144, v144, s[48:51], 0 offen
	buffer_load_u8 v145, v145, s[48:51], 0 offen
	buffer_load_u8 v146, v146, s[48:51], 0 offen
	buffer_load_u8 v147, v147, s[48:51], 0 offen
	buffer_load_u8 v148, v148, s[48:51], 0 offen
	buffer_load_u8 v149, v149, s[48:51], 0 offen
	buffer_load_u8 v150, v150, s[48:51], 0 offen
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x7
	buffer_load_u8 v159, v159, s[40:43], 0 offen
	buffer_load_u8 v160, v160, s[40:43], 0 offen
	buffer_load_u8 v161, v161, s[40:43], 0 offen
	buffer_load_u8 v162, v162, s[40:43], 0 offen
	buffer_load_u8 v163, v163, s[40:43], 0 offen
	buffer_load_u8 v164, v164, s[40:43], 0 offen
	buffer_load_u8 v165, v165, s[40:43], 0 offen
	buffer_load_u8 v166, v166, s[40:43], 0 offen
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s20, s68, v119
	v_cmp_eq_u32_e64 s22, s68, v121
	v_cmp_eq_u32_e64 s24, s68, v124
	v_cmp_eq_u32_e64 s26, s68, v126
	v_cmp_eq_u32_e64 s19, s68, v134
	v_cmp_eq_u32_e64 s28, s68, v128
	v_cmp_eq_u32_e64 s31, s68, v130
	v_cmp_eq_u32_e64 s34, s68, v132
	v_cmp_eq_u32_e64 s2, s68, v122
	v_cmp_eq_u32_e64 s21, s68, v120
	v_cmp_eq_u32_e64 s23, s68, v123
	v_cmp_eq_u32_e64 s27, s68, v127
	v_cmp_eq_u32_e64 s30, s68, v129
	v_cmp_eq_u32_e64 s3, s68, v133
	v_cmp_eq_u32_e64 s25, s68, v125
	v_cmp_eq_u32_e64 s33, s68, v131
	.loc	1 1495 36 is_stmt 0             ; ragged.py:1495:36
	s_and_b32 s20, s20, s67
	s_and_b32 s22, s22, s67
	s_and_b32 s24, s24, s67
	s_and_b32 s26, s26, s67
	s_and_b32 s19, s19, s67
	s_and_b32 s28, s28, s67
	s_and_b32 s31, s31, s67
	s_and_b32 s34, s34, s67
	s_and_b32 s2, s2, s67
	s_and_b32 s21, s21, s67
	s_and_b32 s23, s23, s67
	s_and_b32 s25, s25, s67
	s_and_b32 s3, s3, s67
	s_and_b32 s27, s27, s67
	s_and_b32 s30, s30, s67
	s_and_b32 s33, s33, s67
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	v_add_nc_u32_e32 v167, 0, v92
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1498 66 is_stmt 0             ; ragged.py:1498:66
	s_waitcnt vmcnt(31)
	v_and_b16 v119.l, v142.l, 15
	s_waitcnt vmcnt(30)
	v_and_b16 v120.l, v135.l, 15
	s_waitcnt vmcnt(29)
	v_and_b16 v120.h, v136.l, 15
	s_waitcnt vmcnt(28)
	v_and_b16 v121.l, v137.l, 15
	s_waitcnt vmcnt(27)
	v_and_b16 v121.h, v138.l, 15
	s_waitcnt vmcnt(26)
	v_and_b16 v122.l, v139.l, 15
	s_waitcnt vmcnt(25)
	v_and_b16 v122.h, v140.l, 15
	s_waitcnt vmcnt(24)
	v_and_b16 v123.l, v141.l, 15
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v120.l, v135.l, v120.l, s20
	v_cndmask_b16 v121.l, v137.l, v121.l, s22
	v_cndmask_b16 v122.l, v139.l, v122.l, s24
	v_cndmask_b16 v119.l, v142.l, v119.l, s2
	v_cndmask_b16 v123.l, v141.l, v123.l, s26
	v_cndmask_b16 v120.h, v136.l, v120.h, s21
	v_cndmask_b16 v121.h, v138.l, v121.h, s23
	v_cndmask_b16 v122.h, v140.l, v122.h, s25
	v_lshlrev_b16 v122.l, 8, v122.l
	v_lshlrev_b16 v123.l, 8, v123.l
	v_lshlrev_b16 v121.l, 8, v121.l
	v_lshlrev_b16 v120.l, 8, v120.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b16 v122.l, v121.h, v122.l
	v_or_b16 v122.h, v122.h, v123.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b16 v121.h, v120.h, v121.l
	v_or_b16 v121.l, v119.l, v120.l
	.loc	1 1499 66 is_stmt 1             ; ragged.py:1499:66
	s_waitcnt vmcnt(23)
	v_and_b16 v119.h, v158.l, 15
	s_waitcnt vmcnt(22)
	v_and_b16 v127.h, v151.l, 15
	s_waitcnt vmcnt(21)
	v_and_b16 v128.l, v152.l, 15
	s_waitcnt vmcnt(20)
	v_and_b16 v128.h, v153.l, 15
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(14)
	v_and_b16 v124.l, v144.l, 15
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v129.h, v155.l, 15
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(12)
	v_and_b16 v125.l, v146.l, 15
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v130.h, v157.l, 15
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(10)
	v_and_b16 v126.l, v148.l, 15
	s_waitcnt vmcnt(8)
	v_and_b16 v127.l, v150.l, 15
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(6)
	v_and_b16 v131.h, v160.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v132.h, v162.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v133.h, v164.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v134.h, v166.l, 15
	v_and_b16 v129.l, v154.l, 15
	v_and_b16 v130.l, v156.l, 15
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v127.h, v151.l, v127.h, s20
	v_cndmask_b16 v128.h, v153.l, v128.h, s22
	v_cndmask_b16 v129.h, v155.l, v129.h, s24
	v_cndmask_b16 v130.h, v157.l, v130.h, s26
	.loc	1 1498 66 is_stmt 1             ; ragged.py:1498:66
	v_and_b16 v123.h, v143.l, 15
	v_and_b16 v124.h, v145.l, 15
	v_and_b16 v125.h, v147.l, 15
	v_and_b16 v126.h, v149.l, 15
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v131.l, v159.l, 15
	v_and_b16 v132.l, v161.l, 15
	v_and_b16 v133.l, v163.l, 15
	v_and_b16 v134.l, v165.l, 15
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v124.l, v144.l, v124.l, s28
	v_cndmask_b16 v125.l, v146.l, v125.l, s31
	v_cndmask_b16 v126.l, v148.l, v126.l, s34
	v_cndmask_b16 v127.l, v150.l, v127.l, s19
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v131.h, v160.l, v131.h, s28
	v_cndmask_b16 v132.h, v162.l, v132.h, s31
	v_cndmask_b16 v133.h, v164.l, v133.h, s34
	v_cndmask_b16 v134.h, v166.l, v134.h, s19
	v_cndmask_b16 v119.h, v158.l, v119.h, s2
	v_cndmask_b16 v128.l, v152.l, v128.l, s21
	v_cndmask_b16 v129.l, v154.l, v129.l, s23
	v_cndmask_b16 v130.l, v156.l, v130.l, s25
	v_lshlrev_b16 v130.h, 8, v130.h
	v_lshlrev_b16 v129.h, 8, v129.h
	v_lshlrev_b16 v128.h, 8, v128.h
	v_lshlrev_b16 v127.h, 8, v127.h
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v123.h, v143.l, v123.h, s27
	v_cndmask_b16 v124.h, v145.l, v124.h, s30
	v_cndmask_b16 v125.h, v147.l, v125.h, s33
	v_cndmask_b16 v126.h, v149.l, v126.h, s3
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v131.l, v159.l, v131.l, s27
	v_cndmask_b16 v132.l, v161.l, v132.l, s30
	v_cndmask_b16 v133.l, v163.l, v133.l, s33
	v_cndmask_b16 v134.l, v165.l, v134.l, s3
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_lshlrev_b16 v127.l, 8, v127.l
	v_lshlrev_b16 v126.l, 8, v126.l
	v_lshlrev_b16 v125.l, 8, v125.l
	v_lshlrev_b16 v124.l, 8, v124.l
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_lshlrev_b16 v134.h, 8, v134.h
	v_lshlrev_b16 v133.h, 8, v133.h
	v_lshlrev_b16 v132.h, 8, v132.h
	v_lshlrev_b16 v131.h, 8, v131.h
	v_or_b16 v136.h, v130.l, v130.h
	v_or_b16 v136.l, v129.l, v129.h
	v_or_b16 v135.h, v128.l, v128.h
	v_or_b16 v135.l, v119.h, v127.h
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_or_b16 v126.h, v126.h, v127.l
	v_or_b16 v126.l, v125.h, v126.l
	v_or_b16 v125.h, v124.h, v125.l
	v_or_b16 v125.l, v123.h, v124.l
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_or_b16 v138.h, v134.l, v134.h
	v_or_b16 v138.l, v133.l, v133.h
	v_or_b16 v137.h, v132.l, v132.h
	v_or_b16 v137.l, v131.l, v131.h
	.loc	1 1498 38                       ; ragged.py:1498:38
	ds_store_b64 v167, v[121:122]
	ds_store_b64 v168, v[125:126]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[119:122], v169 offset1:2
	ds_load_2addr_stride64_b64 v[123:126], v170 offset1:2
	ds_load_2addr_stride64_b64 v[127:130], v171 offset1:2
	ds_load_2addr_stride64_b64 v[131:134], v172 offset1:2
	.loc	1 1499 38                       ; ragged.py:1499:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v167, v[135:136]
	ds_store_b64 v168, v[137:138]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[135:138], v173 offset1:2
	ds_load_2addr_stride64_b64 v[139:142], v174 offset1:2
	v_add_nc_u32_e32 v143, 0, v100
	v_add_nc_u32_e32 v147, 0, v101
	ds_load_2addr_stride64_b64 v[143:146], v143 offset1:2
	ds_load_2addr_stride64_b64 v[147:150], v147 offset1:2
	.loc	1 1500 35                       ; ragged.py:1500:35
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[135:136], v[119:120], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[137:138], v[119:120], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[135:136], v[121:122], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[137:138], v[121:122], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[139:140], v[123:124], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[141:142], v[123:124], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[139:140], v[125:126], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[141:142], v[125:126], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[143:144], v[127:128], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[145:146], v[127:128], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[143:144], v[129:130], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[145:146], v[129:130], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[147:148], v[131:132], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[149:150], v[131:132], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[147:148], v[133:134], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[149:150], v[133:134], v[9:16] neg_lo:[1,1,0]
	s_branch .LBB0_2
.LBB0_8:                                ; %._crit_edge11
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_bfe_u32 v1, v90, 16, 1
	v_bfe_u32 v6, v86, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v90, v90
	v_bfe_u32 v3, v88, 16, 1
	v_bfe_u32 v5, v87, 16, 1
	v_add3_u32 v1, v90, v1, 0x7fff
	v_add3_u32 v6, v86, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v86, v86
	v_bfe_u32 v10, v80, 16, 1
	v_mov_b16_e32 v4.h, 0
	v_add3_u32 v3, v88, v3, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v88, v88
	v_add3_u32 v5, v87, v5, 0x7fff
	v_cmp_o_f32_e64 s0, v87, v87
	v_bfe_u32 v8, v83, 16, 1
	v_cndmask_b16 v6.l, 0x7fff, v6.h, s1
	v_bfe_u32 v9, v81, 16, 1
	v_add3_u32 v10, v80, v10, 0x7fff
	v_cmp_o_f32_e64 s1, v80, v80
	v_bfe_u32 v14, v76, 16, 1
	v_mov_b16_e32 v4.l, v53.h
	v_cndmask_b16 v3.l, 0x7fff, v3.h, vcc_lo
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s0
	v_add3_u32 v8, v83, v8, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v83, v83
	v_add3_u32 v9, v81, v9, 0x7fff
	v_cmp_o_f32_e64 s0, v81, v81
	v_bfe_u32 v12, v78, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s1
	v_bfe_u32 v13, v77, 16, 1
	v_add3_u32 v14, v76, v14, 0x7fff
	v_cmp_o_f32_e64 s1, v76, v76
	v_mov_b16_e32 v19.h, v4.h
	v_and_b32_e32 v4, 1, v4
	v_bfe_u32 v7, v85, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v8.h, vcc_lo
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s0
	v_add3_u32 v12, v78, v12, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v78, v78
	v_add3_u32 v13, v77, v13, 0x7fff
	v_cmp_o_f32_e64 s0, v77, v77
	v_bfe_u32 v16, v64, 16, 1
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s1
	v_bfe_u32 v17, v61, 16, 1
	v_mov_b16_e32 v19.l, v52.h
	v_add3_u32 v4, v53, v4, 0x7fff
	v_cmp_o_f32_e64 s1, v53, v53
	v_bfe_u32 v21, v55, 16, 1
	v_add3_u32 v7, v85, v7, 0x7fff
	v_cmp_o_f32_e64 s2, v85, v85
	v_bfe_u32 v11, v79, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v12.h, vcc_lo
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s0
	v_add3_u32 v16, v64, v16, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v64, v64
	v_add3_u32 v17, v61, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v61, v61
	v_and_b32_e32 v19, 1, v19
	v_cndmask_b16 v20.h, 0x7fff, v4.h, s1
	v_add3_u32 v21, v55, v21, 0x7fff
	v_cmp_o_f32_e64 s1, v55, v55
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s2
	v_add3_u32 v11, v79, v11, 0x7fff
	v_cmp_o_f32_e64 s2, v79, v79
	v_bfe_u32 v15, v75, 16, 1
	v_cndmask_b16 v4.l, 0x7fff, v16.h, vcc_lo
	v_cndmask_b16 v16.l, 0x7fff, v17.h, s0
	v_add3_u32 v17, v52, v19, 0x7fff
	v_bfe_u32 v19, v56, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v52, v52
	v_cndmask_b16 v3.h, 0x7fff, v21.h, s1
	v_bfe_u32 v21, v49, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s2
	v_add3_u32 v15, v75, v15, 0x7fff
	v_cmp_o_f32_e64 s2, v75, v75
	v_bfe_u32 v22, v54, 16, 1
	v_add3_u32 v19, v56, v19, 0x7fff
	v_cmp_o_f32_e64 s0, v56, v56
	v_cndmask_b16 v20.l, 0x7fff, v17.h, vcc_lo
	v_bfe_u32 v17, v51, 16, 1
	v_add3_u32 v21, v49, v21, 0x7fff
	v_cmp_o_f32_e64 s1, v49, v49
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s2
	v_add3_u32 v22, v54, v22, 0x7fff
	v_cmp_o_f32_e64 s2, v54, v54
	v_cndmask_b16 v1.h, 0x7fff, v19.h, s0
	v_bfe_u32 v19, v50, 16, 1
	v_add3_u32 v17, v51, v17, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	v_cndmask_b16 v8.h, 0x7fff, v21.h, s1
	v_bfe_u32 v21, v45, 16, 1
	v_cndmask_b16 v5.h, 0x7fff, v22.h, s2
	v_bfe_u32 v22, v48, 16, 1
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_and_b32_e32 v18, 31, v0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v19, v50, v19, 0x7fff
	v_cmp_o_f32_e64 s0, v50, v50
	v_cndmask_b16 v6.h, 0x7fff, v17.h, vcc_lo
	v_bfe_u32 v17, v47, 16, 1
	v_add3_u32 v21, v45, v21, 0x7fff
	v_cmp_o_f32_e64 s1, v45, v45
	v_add3_u32 v22, v48, v22, 0x7fff
	v_cmp_o_f32_e64 s2, v48, v48
	v_cndmask_b16 v7.h, 0x7fff, v19.h, s0
	v_bfe_u32 v19, v46, 16, 1
	v_add3_u32 v17, v47, v17, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	v_cndmask_b16 v12.h, 0x7fff, v21.h, s1
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshlrev_b32_e32 v21, 2, v18
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v9.h, 0x7fff, v22.h, s2
	v_bfe_u32 v22, v44, 16, 1
	v_add3_u32 v19, v46, v19, 0x7fff
	v_cmp_o_f32_e64 s0, v46, v46
	v_cndmask_b16 v10.h, 0x7fff, v17.h, vcc_lo
	v_bfe_u32 v17, v43, 16, 1
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshl_or_b32 v21, v38, 8, v21
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v22, v44, v22, 0x7fff
	v_cmp_o_f32_e64 s2, v44, v44
	v_cndmask_b16 v11.h, 0x7fff, v19.h, s0
	v_bfe_u32 v19, v42, 16, 1
	v_add3_u32 v17, v43, v17, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xor_b32_e32 v21, v21, v40
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v13.h, 0x7fff, v22.h, s2
	v_bfe_u32 v22, v41, 16, 1
	v_add3_u32 v19, v42, v19, 0x7fff
	v_cmp_o_f32_e64 s0, v42, v42
	v_cndmask_b16 v14.h, 0x7fff, v17.h, vcc_lo
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshl_or_b32 v17, v39, 1, v21
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_bfe_u32 v23, v36, 16, 1
	v_add3_u32 v22, v41, v22, 0x7fff
	v_cmp_o_f32_e64 s1, v41, v41
	v_cndmask_b16 v15.h, 0x7fff, v19.h, s0
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_add_nc_u32_e32 v19, 0, v17
	v_xad_u32 v26, 0x1040, v17, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v23, v36, v23, 0x7fff
	v_cmp_o_f32_e64 s2, v36, v36
	v_cndmask_b16 v4.h, 0x7fff, v22.h, s1
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v21, v17, 4, 0
	v_xad_u32 v22, v17, 8, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xad_u32 v29, 0x1044, v17, 0
	ds_store_b32 v19, v20
	ds_store_b32 v26, v10
	v_xad_u32 v10, 0x1048, v17, 0
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v2, 0x60, v0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v16.h, 0x7fff, v23.h, s2
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v23, v17, 12, 0
	ds_store_b32 v21, v1
	ds_store_b32 v29, v11
	ds_store_b32 v22, v3
	ds_store_b32 v10, v12
	v_lshlrev_b32_e32 v3, 2, v38
	v_xad_u32 v1, 0x104c, v17, 0
	ds_store_b32 v23, v5
	ds_store_b32 v1, v13
	v_lshrrev_b32_e32 v1, 3, v2
	v_lshl_or_b32 v2, v2, 3, v3
	v_cmp_eq_u32_e32 vcc_lo, 0, v37
	v_xad_u32 v24, v17, 16, 0
	v_xad_u32 v25, v17, 20, 0
	v_xad_u32 v10, 0x1050, v17, 0
	v_xor_b32_e32 v1, v2, v1
	v_cndmask_b32_e64 v5, 0x1040, 0, vcc_lo
	v_xad_u32 v3, 0x1054, v17, 0
	v_xad_u32 v27, v17, 24, 0
	v_xad_u32 v2, 0x1058, v17, 0
	v_xad_u32 v28, v17, 28, 0
	v_or_b32_e32 v1, v1, v5
	ds_store_b32 v24, v6
	ds_store_b32 v10, v14
	ds_store_b32 v25, v7
	ds_store_b32 v3, v15
	v_xad_u32 v3, 0x105c, v17, 0
	ds_store_b32 v27, v8
	ds_store_b32 v2, v4
	ds_store_b32 v28, v9
	ds_store_b32 v3, v16
	v_add_nc_u32_e32 v2, 0, v1
	v_xad_u32 v3, v1, 64, 0
	v_xad_u32 v4, 0x410, v1, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[13:14], v2 offset1:32
	ds_load_2addr_b32 v[15:16], v3 offset1:32
	ds_load_2addr_b32 v[9:10], v4 offset1:32
	v_xad_u32 v2, 0x450, v1, 0
	v_xad_u32 v3, 0x820, v1, 0
	v_xad_u32 v4, 0x860, v1, 0
	v_xad_u32 v17, 0xc30, v1, 0
	v_xad_u32 v19, 0xc70, v1, 0
	ds_load_2addr_b32 v[11:12], v2 offset1:32
	ds_load_2addr_b32 v[5:6], v3 offset1:32
	ds_load_2addr_b32 v[7:8], v4 offset1:32
	ds_load_2addr_b32 v[1:2], v17 offset1:32
	ds_load_2addr_b32 v[3:4], v19 offset1:32
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v0, 5, v0
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_lshr_b32 s0, s57, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s0, s57, s0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v17, s59, v0
	.loc	1 1536 31                       ; ragged.py:1536:31
	v_lshl_or_b32 v0, s58, 5, v18
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_ashr_i32 s1, s0, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s56, v17
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
	v_add_nc_u32_e32 v18, s37, v17
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v20, v13, v15, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
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
	v_or_b32_e32 v18, 4, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s56, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_12
; %bb.11:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s37, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v20, v9, v11, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
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
.LBB0_12:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 8, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s56, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_14
; %bb.13:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s37, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v20, v5, v7, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
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
	v_or_b32_e32 v18, 12, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s56, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_16
; %bb.15:
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
.LBB0_16:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s56, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_18
; %bb.17:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s37, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v20, v14, v16, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
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
	v_or_b32_e32 v18, 20, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s56, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_20
; %bb.19:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s37, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v20, v10, v12, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
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
.LBB0_20:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 24, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s56, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_22
; %bb.21:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s37, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v20, v6, v8, 0x1000504
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
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
	v_or_b32_e32 v18, 28, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s56, v18
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
	v_or_b32_e32 v18, 32, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s56, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_26
; %bb.25:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s37, v18
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v13, v13, v15, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
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
	v_or_b32_e32 v13, 36, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s56, v13
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_28
; %bb.27:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v13, s37, v13
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v9, v9, v11, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
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
	s_waitcnt lgkmcnt(5)
	v_or_b32_e32 v9, 40, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s56, v9
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_30
; %bb.29:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v9, s37, v9
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v5, v7, 0x3020706
	.loc	1 1538 21                       ; ragged.py:1538:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v9, s1, v[0:1]
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s38, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s39, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v5, off
.LBB0_30:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(3)
	v_or_b32_e32 v5, 44, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s56, v5
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_32
; %bb.31:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v5, s37, v5
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[18:19], null, v5, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v3, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s38, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s39, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v1, off
.LBB0_32:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(1)
	v_or_b32_e32 v1, 48, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s56, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_34
; %bb.33:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s37, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[18:19], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v14, v16, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v13, s0, s38, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v14, null, s39, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[13:14], v1, off
.LBB0_34:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 52, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s56, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_36
; %bb.35:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s37, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[13:14], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v10, v12, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v14, 31, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[13:14], 2, v[13:14]
	v_add_co_u32 v9, s0, s38, v13
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s39, v14, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[9:10], v1, off
.LBB0_36:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 56, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s56, v1
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
	v_or_b32_e32 v1, 60, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s56, v1
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
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 175
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_vgpr, 175
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.numbered_sgpr, 70
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9364
; TotalNumSgprs: 72
; NumVgprs: 175
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 21
; NumSGPRsForWavesPerEU: 72
; NumVGPRsForWavesPerEU: 175
; Occupancy: 8
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     72
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     175
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
