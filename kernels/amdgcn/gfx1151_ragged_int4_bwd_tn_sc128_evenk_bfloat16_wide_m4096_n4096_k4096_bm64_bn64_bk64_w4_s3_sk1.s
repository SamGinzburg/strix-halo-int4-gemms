	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[10:11], s[0:1], 0x30
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s8, s2
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v2, 15, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s10, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s11, 63
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
	s_ashr_i32 s29, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s28, s5, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s28, s29
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
	s_abs_i32 s12, s28
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s5, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s6, s12
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v1, 2, v0
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_or_b32 v41, v1, 16, v2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_u32_f32 s8, s6
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s6, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s12
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s6, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_i32 s5, s5, s8
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s4, s2, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_hi_u32 s5, s8, s5
	s_abs_i32 s7, s4
	s_add_i32 s5, s8, s5
	s_load_b64 s[8:9], s[0:1], 0x20
	s_mul_hi_u32 s5, s7, s5
	s_xor_b32 s13, s4, s28
	s_mul_i32 s14, s5, s12
	s_ashr_i32 s30, s13, 31
	s_sub_i32 s7, s7, s14
	s_add_i32 s13, s5, 1
	s_sub_i32 s14, s7, s12
	s_cmp_ge_u32 s7, s12
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v42, 32, v41
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cselect_b32 s5, s13, s5
	s_cselect_b32 s7, s14, s7
	s_add_i32 s13, s5, 1
	s_cmp_ge_u32 s7, s12
	.loc	1 1513 37                       ; ragged.py:1513:37
	s_mul_i32 s33, s6, s10
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cselect_b32 s5, s13, s5
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s7, s6, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s31, s5, s30
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[12:13], s[6:7], 2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, s31, s30
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s7, s5, s28
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s23, s5, 6
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s5, s4, s7
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s8, s8, s12
	s_addc_u32 s9, s9, s13
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v3, s23, v41
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s4, s[8:9], 0x0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v4, s23, v42
	s_mov_b32 s9, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s8, s10, v3
	v_cmp_gt_i32_e64 s7, s10, v4
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s4, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_gt_i32 s4, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge4_crit_edge
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s22, s23, s33
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s9, -1
                                        ; implicit-def: $sgpr22
.LBB0_3:                                ; %Flow277
	s_load_b64 s[20:21], s[0:1], 0x28
	v_lshrrev_b32_e32 v47, 1, v0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_lshl_b32 s9, s5, 6
	s_cbranch_vccnz .LBB0_10
; %bb.4:                                ; %.preheader.lr.ph
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x38
	s_load_b256 s[12:19], s[0:1], 0x0
	v_dual_mov_b32 v68, 0 :: v_dual_lshlrev_b32 v3, 4, v0
	.loc	1 1424 23 is_stmt 1             ; ragged.py:1424:23
	s_lshl_b32 s36, s3, 5
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_bfe_u32 v4, v0, 4, 1
	v_dual_mov_b32 v66, 0 :: v_dual_and_b32 v5, 16, v47
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v69, 0 :: v_dual_and_b32 v6, 48, v3
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s37, s4, 1
	s_cmp_lt_i32 s36, 64
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_mul_i32 s29, s29, s6
	s_cselect_b32 s38, -1, 0
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or3_b32 v64, v4, v5, s9
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v4, s23, v6
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v7, s9, v6
	v_add3_u32 v71, 0, v5, v2
	s_add_i32 s22, s23, s33
	v_or_b32_e32 v65, 32, v64
	.loc	1 1429 43                       ; ragged.py:1429:43
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s34, s6, s34
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s3, s6, s35
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add3_u32 v1, s34, s36, v1
	s_sub_i32 s6, s30, s29
	s_mov_b32 s24, s12
	s_sub_i32 s6, s6, s31
	s_mov_b32 s12, s14
	v_mul_lo_u32 v2, s11, v1
	v_mul_lo_u32 v1, s10, v1
	s_mul_i32 s28, s28, s6
	s_lshl_b32 s14, s2, 6
	s_lshl_b32 s6, s28, 6
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s1, s10, v4
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s4, s11, v7
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v4, s22, v41
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v7, s22, v42
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_add_i32 s14, s14, s6
	s_lshl_b32 s6, s31, 6
	v_add3_u32 v88, s14, v2, v6
	v_add3_u32 v1, v1, s6, v6
	v_cndmask_b32_e64 v2, 0, 1, s38
	v_mul_lo_u32 v72, v4, s35
	v_mul_lo_u32 v73, v7, s35
	s_lshl_b32 s6, s30, 6
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s11, v64
	v_cmp_gt_i32_e64 s5, s11, v65
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v70, 0, v41
	v_or_b32_e32 v74, 2, v64
	v_or_b32_e32 v75, 4, v64
	v_or_b32_e32 v76, 6, v64
	v_or_b32_e32 v77, 8, v64
	v_or_b32_e32 v78, 10, v64
	v_or_b32_e32 v79, 12, v64
	v_or_b32_e32 v80, 14, v64
	v_or_b32_e32 v81, 34, v64
	v_or_b32_e32 v82, 36, v64
	v_or_b32_e32 v83, 38, v64
	v_or_b32_e32 v84, 40, v64
	v_or_b32_e32 v85, 42, v64
	v_or_b32_e32 v86, 44, v64
	v_or_b32_e32 v87, 46, v64
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_subrev_nc_u32_e32 v89, s6, v1
	v_cmp_ne_u32_e64 s6, 1, v2
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v90, 0, v3
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v34, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	s_add_i32 s37, s37, -1
	s_and_b32 s25, s13, 0xffff
	s_and_b32 s13, s15, 0xffff
	s_mov_b32 s23, 0
	s_lshr_b32 s33, s37, 6
	s_sub_i32 s2, s36, 32
	s_lshl_b32 s34, s11, 6
	s_lshl_b32 s35, s11, 5
	s_lshl_b32 s36, s10, 6
	s_lshl_b32 s10, s10, 5
	s_mov_b32 s28, s16
	s_mov_b32 s29, s17
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v17, v72, s23, 1
	v_add_lshl_u32 v18, v73, s23, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s14, s23, s3
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v89, s36, v89
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s14, s14, s11
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v17, 0x80000000, v17, s8
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v19, v64, s14, 1
	v_add_lshl_u32 v28, v81, s14, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v18, 0x80000000, v18, s7
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v20, v74, s14, 1
	v_add_lshl_u32 v27, v65, s14, 1
	v_add_lshl_u32 v21, v75, s14, 1
	v_add_lshl_u32 v30, v83, s14, 1
	v_add_lshl_u32 v22, v76, s14, 1
	v_add_lshl_u32 v29, v82, s14, 1
	v_add_lshl_u32 v23, v77, s14, 1
	v_add_lshl_u32 v24, v78, s14, 1
	v_add_lshl_u32 v25, v79, s14, 1
	v_add_lshl_u32 v26, v80, s14, 1
	v_add_lshl_u32 v31, v84, s14, 1
	v_add_lshl_u32 v32, v85, s14, 1
	v_add_lshl_u32 v107, v86, s14, 1
	v_add_lshl_u32 v108, v87, s14, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x1
	buffer_load_u16 v17, v17, s[28:31], 0 offen
	buffer_load_u16 v18, v18, s[28:31], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	v_cndmask_b32_e64 v28, 0x80000000, v28, s5
	v_cndmask_b32_e64 v20, 0x80000000, v20, s0
	v_cndmask_b32_e64 v27, 0x80000000, v27, s5
	v_cndmask_b32_e64 v21, 0x80000000, v21, s0
	v_cndmask_b32_e64 v30, 0x80000000, v30, s5
	v_cndmask_b32_e64 v22, 0x80000000, v22, s0
	v_cndmask_b32_e64 v29, 0x80000000, v29, s5
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	v_cndmask_b32_e64 v24, 0x80000000, v24, s0
	v_cndmask_b32_e64 v25, 0x80000000, v25, s0
	v_cndmask_b32_e64 v26, 0x80000000, v26, s0
	v_cndmask_b32_e64 v31, 0x80000000, v31, s5
	v_cndmask_b32_e64 v32, 0x80000000, v32, s5
	v_cndmask_b32_e64 v107, 0x80000000, v107, s5
	v_cndmask_b32_e64 v108, 0x80000000, v108, s5
	s_clause 0xf
	buffer_load_u16 v19, v19, s[16:19], 0 offen
	buffer_load_u16 v20, v20, s[16:19], 0 offen
	buffer_load_u16 v21, v21, s[16:19], 0 offen
	buffer_load_u16 v22, v22, s[16:19], 0 offen
	buffer_load_u16 v23, v23, s[16:19], 0 offen
	buffer_load_u16 v24, v24, s[16:19], 0 offen
	buffer_load_u16 v25, v25, s[16:19], 0 offen
	buffer_load_u16 v26, v26, s[16:19], 0 offen
	buffer_load_u16 v28, v28, s[16:19], 0 offen
	buffer_load_u16 v27, v27, s[16:19], 0 offen
	buffer_load_u16 v30, v30, s[16:19], 0 offen
	buffer_load_u16 v29, v29, s[16:19], 0 offen
	buffer_load_u16 v32, v32, s[16:19], 0 offen
	buffer_load_u16 v31, v31, s[16:19], 0 offen
	buffer_load_u16 v108, v108, s[16:19], 0 offen
	buffer_load_u16 v107, v107, s[16:19], 0 offen
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s14, s23, 1
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_lg_u32 s23, s33
	s_mov_b32 s23, s14
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v18, 16, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v16, v16, v18 :: v_dual_lshlrev_b32 v17, 16, v17
	v_dual_mul_f32 v105, v105, v17 :: v_dual_add_nc_u32 v88, s34, v88
	v_mul_f32_e32 v106, v106, v17
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v104, v104, v17 :: v_dual_lshlrev_b32 v19, 16, v19
	s_waitcnt vmcnt(14)
	v_dual_mul_f32 v101, v101, v17 :: v_dual_lshlrev_b32 v20, 16, v20
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v99, v99, v17 :: v_dual_lshlrev_b32 v22, 16, v22
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v97, v97, v17 :: v_dual_lshlrev_b32 v24, 16, v24
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v95, v95, v17 :: v_dual_lshlrev_b32 v26, 16, v26
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v93, v93, v17 :: v_dual_lshlrev_b32 v28, 16, v28
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v102, v102, v17 :: v_dual_lshlrev_b32 v27, 16, v27
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v30, 16, v30
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v100, v100, v17 :: v_dual_lshlrev_b32 v31, 16, v31
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v98, v98, v17 :: v_dual_lshlrev_b32 v107, 16, v107
	v_mul_f32_e32 v103, v103, v17
	v_dual_mul_f32 v12, v12, v18 :: v_dual_lshlrev_b32 v21, 16, v21
	v_dual_mul_f32 v14, v14, v18 :: v_dual_lshlrev_b32 v25, 16, v25
	v_dual_mul_f32 v10, v10, v18 :: v_dual_lshlrev_b32 v29, 16, v29
	v_dual_mul_f32 v15, v15, v18 :: v_dual_lshlrev_b32 v32, 16, v32
	v_dual_mul_f32 v11, v11, v18 :: v_dual_lshlrev_b32 v108, 16, v108
	v_dual_mul_f32 v96, v96, v17 :: v_dual_mul_f32 v13, v13, v18
	v_dual_mul_f32 v94, v94, v17 :: v_dual_mul_f32 v9, v9, v18
	v_dual_mul_f32 v92, v92, v17 :: v_dual_mul_f32 v7, v7, v18
	v_dual_mul_f32 v17, v91, v17 :: v_dual_mul_f32 v8, v8, v18
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_dual_fmac_f32 v69, v106, v19 :: v_dual_mul_f32 v4, v4, v18
	v_fmac_f32_e32 v63, v102, v23
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v3, v3, v18 :: v_dual_fmac_f32 v68, v105, v20
	v_dual_mul_f32 v6, v6, v18 :: v_dual_fmac_f32 v67, v104, v21
	v_dual_mul_f32 v5, v5, v18 :: v_dual_fmac_f32 v50, v15, v19
	v_dual_mul_f32 v2, v2, v18 :: v_dual_fmac_f32 v61, v100, v25
	v_dual_mul_f32 v1, v1, v18 :: v_dual_fmac_f32 v48, v11, v21
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_dual_fmac_f32 v66, v103, v22 :: v_dual_fmac_f32 v59, v98, v27
	v_dual_fmac_f32 v62, v101, v24 :: v_dual_fmac_f32 v57, v96, v29
	v_dual_fmac_f32 v60, v99, v26 :: v_dual_fmac_f32 v55, v94, v31
	v_dual_fmac_f32 v58, v97, v28 :: v_dual_fmac_f32 v53, v92, v107
	v_dual_fmac_f32 v56, v95, v30 :: v_dual_fmac_f32 v51, v16, v20
	v_dual_fmac_f32 v54, v93, v32 :: v_dual_fmac_f32 v49, v12, v22
	v_dual_fmac_f32 v52, v17, v108 :: v_dual_fmac_f32 v39, v7, v27
	v_dual_fmac_f32 v45, v13, v23 :: v_dual_fmac_f32 v46, v14, v24
	v_dual_fmac_f32 v43, v9, v25 :: v_dual_fmac_f32 v44, v10, v26
	v_dual_fmac_f32 v40, v8, v28 :: v_dual_fmac_f32 v37, v3, v29
	v_dual_fmac_f32 v38, v4, v30 :: v_dual_fmac_f32 v35, v5, v31
	v_fmac_f32_e32 v36, v6, v32
	v_dual_fmac_f32 v34, v1, v107 :: v_dual_fmac_f32 v33, v2, v108
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_10
.LBB0_6:                                ; %.preheader
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	.loc	1 1426 27 is_stmt 1             ; ragged.py:1426:27
	s_and_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v92, v88
	v_mov_b32_e32 v91, v89
	s_mov_b32 s37, s2
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
.LBB0_8:                                ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1436 38 is_stmt 1             ; ragged.py:1436:38
	v_cndmask_b32_e64 v93, 0x80000000, v91, s1
	.loc	1 1437 38                       ; ragged.py:1437:38
	v_cndmask_b32_e64 v97, 0x80000000, v92, s4
	s_mov_b32 s14, s26
	s_mov_b32 s15, s27
	.loc	1 1426 27                       ; ragged.py:1426:27
	v_add_nc_u32_e32 v92, s35, v92
	.loc	1 1436 38                       ; ragged.py:1436:38
	buffer_load_b128 v[93:96], v93, s[24:27], 0 offen
	.loc	1 1437 38                       ; ragged.py:1437:38
	buffer_load_b128 v[97:100], v97, s[12:15], 0 offen
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1426 27                       ; ragged.py:1426:27
	v_add_nc_u32_e32 v91, s10, v91
	s_add_i32 s37, s37, 32
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s37, 32
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_waitcnt vmcnt(1)
	ds_store_b128 v90, v[93:96]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1438 35                       ; ragged.py:1438:35
	ds_load_u8 v93, v70 offset:192
	ds_load_u8 v95, v70 offset:128
	ds_load_u8 v96, v70 offset:64
	ds_load_u8 v94, v70 offset:448
	ds_load_u8 v101, v70 offset:384
	ds_load_u8 v102, v70 offset:320
	ds_load_u8 v103, v70 offset:256
	ds_load_u8 v104, v70 offset:704
	ds_load_u8 v105, v70 offset:640
	ds_load_u8 v106, v70 offset:576
	ds_load_u8 v107, v70 offset:512
	ds_load_u8 v108, v70 offset:960
	ds_load_u8 v109, v70 offset:896
	ds_load_u8 v110, v70 offset:832
	ds_load_u8 v111, v70 offset:768
	ds_load_u8 v112, v70 offset:1216
	ds_load_u8 v113, v70 offset:1152
	ds_load_u8 v114, v70 offset:1088
	ds_load_u8 v115, v70 offset:1024
	ds_load_u8 v116, v70 offset:1472
	ds_load_u8 v117, v70 offset:1408
	ds_load_u8 v118, v70 offset:1344
	ds_load_u8 v119, v70 offset:1280
	ds_load_u8 v120, v70 offset:1728
	ds_load_u8 v121, v70 offset:1664
	ds_load_u8 v122, v70 offset:1600
	ds_load_u8 v123, v70 offset:1536
	ds_load_u8 v124, v70 offset:1984
	ds_load_u8 v125, v70 offset:1920
	ds_load_u8 v126, v70 offset:1856
	ds_load_u8 v127, v70 offset:1792
	ds_load_u8 v128, v70 offset:224
	ds_load_u8 v129, v70 offset:160
	ds_load_u8 v130, v70 offset:96
	ds_load_u8 v131, v70 offset:480
	ds_load_u8 v132, v70 offset:416
	ds_load_u8 v133, v70 offset:352
	ds_load_u8 v134, v70 offset:288
	ds_load_u8 v135, v70
	ds_load_u8 v136, v70 offset:32
	ds_load_u8 v137, v70 offset:736
	ds_load_u8 v138, v70 offset:672
	ds_load_u8 v139, v70 offset:608
	ds_load_u8 v140, v70 offset:544
	ds_load_u8 v141, v70 offset:992
	ds_load_u8 v142, v70 offset:928
	ds_load_u8 v143, v70 offset:864
	ds_load_u8 v144, v70 offset:800
	ds_load_u8 v145, v70 offset:1248
	ds_load_u8 v146, v70 offset:1184
	ds_load_u8 v147, v70 offset:1120
	ds_load_u8 v148, v70 offset:1056
	ds_load_u8 v149, v70 offset:1504
	ds_load_u8 v150, v70 offset:1440
	ds_load_u8 v151, v70 offset:1376
	ds_load_u8 v152, v70 offset:1312
	ds_load_u8 v153, v70 offset:1760
	ds_load_u8 v154, v70 offset:1696
	ds_load_u8 v155, v70 offset:1632
	ds_load_u8 v156, v70 offset:1568
	ds_load_u8 v157, v70 offset:2016
	ds_load_u8 v158, v70 offset:1952
	ds_load_u8 v159, v70 offset:1888
	ds_load_u8 v160, v70 offset:1824
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v96, v135, v96, 0xc0c0004
	v_perm_b32 v93, v95, v93, 0xc0c0004
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v90, v[97:100]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1438 35                       ; ragged.py:1438:35
	v_lshl_or_b32 v93, v93, 16, v96
	ds_load_u8 v95, v71 offset:320
	ds_load_u8 v96, v71 offset:256
	v_perm_b32 v97, v103, v102, 0xc0c0004
	v_perm_b32 v94, v101, v94, 0xc0c0004
	v_perm_b32 v99, v105, v104, 0xc0c0004
	v_perm_b32 v103, v113, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v94, v94, 16, v97
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v71 offset:448
	ds_load_u8 v97, v71 offset:384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v96, v96, 16, v95
	ds_load_u8 v95, v71 offset:64
	ds_load_u8 v97, v71
	ds_load_u8 v135, v71 offset:32
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v95, v97, v95, 0xc0c0004
	ds_load_u8 v97, v71 offset:192
	ds_load_u8 v98, v71 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	v_perm_b32 v98, v109, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v95, v97, 16, v95
	v_perm_b32 v97, v111, v110, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[95:96], v[93:94], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v98, v98, 16, v97
	v_perm_b32 v97, v107, v106, 0xc0c0004
	v_perm_b32 v107, v121, v120, 0xc0c0004
	v_lshl_or_b32 v97, v99, 16, v97
	ds_load_u8 v99, v71 offset:832
	ds_load_u8 v100, v71 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v71 offset:960
	ds_load_u8 v101, v71 offset:896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v100, v100, 16, v99
	ds_load_u8 v99, v71 offset:576
	ds_load_u8 v101, v71 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v101, v99, 0xc0c0004
	ds_load_u8 v101, v71 offset:704
	ds_load_u8 v102, v71 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	v_perm_b32 v102, v117, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v99, v101, 16, v99
	v_perm_b32 v101, v119, v118, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[99:100], v[97:98], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v102, v102, 16, v101
	v_perm_b32 v101, v115, v114, 0xc0c0004
	v_lshl_or_b32 v101, v103, 16, v101
	ds_load_u8 v103, v71 offset:1344
	ds_load_u8 v104, v71 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v71 offset:1472
	ds_load_u8 v105, v71 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v104, 16, v103
	ds_load_u8 v103, v71 offset:1088
	ds_load_u8 v105, v71 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v105, v103, 0xc0c0004
	ds_load_u8 v105, v71 offset:1216
	ds_load_u8 v106, v71 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	v_perm_b32 v106, v125, v124, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v103, v105, 16, v103
	v_perm_b32 v105, v127, v126, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[103:104], v[101:102], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v106, v106, 16, v105
	v_perm_b32 v105, v123, v122, 0xc0c0004
	v_lshl_or_b32 v105, v107, 16, v105
	ds_load_u8 v107, v71 offset:1856
	ds_load_u8 v108, v71 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v71 offset:1984
	ds_load_u8 v109, v71 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v108, v108, 16, v107
	ds_load_u8 v107, v71 offset:1600
	ds_load_u8 v109, v71 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v109, v107, 0xc0c0004
	ds_load_u8 v109, v71 offset:1728
	ds_load_u8 v110, v71 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v107, v109, 16, v107
	ds_load_u8 v109, v71 offset:352
	ds_load_u8 v110, v71 offset:288
	v_wmma_i32_16x16x16_iu4 v[1:8], v[107:108], v[105:106], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v71 offset:480
	ds_load_u8 v111, v71 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	ds_load_u8 v111, v71 offset:224
	ds_load_u8 v112, v71 offset:160
	v_lshl_or_b32 v110, v110, 16, v109
	ds_load_u8 v109, v71 offset:96
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v135, v109, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v109, v111, 16, v109
	v_wmma_i32_16x16x16_iu4 v[9:16], v[109:110], v[93:94], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v93, v71 offset:864
	ds_load_u8 v94, v71 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v71 offset:992
	ds_load_u8 v111, v71 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v111, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v94, v94, 16, v93
	ds_load_u8 v93, v71 offset:608
	ds_load_u8 v111, v71 offset:544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v111, v93, 0xc0c0004
	ds_load_u8 v111, v71 offset:736
	ds_load_u8 v112, v71 offset:672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v93, v111, 16, v93
	v_wmma_i32_16x16x16_iu4 v[9:16], v[93:94], v[97:98], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v97, v71 offset:1376
	ds_load_u8 v98, v71 offset:1312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v71 offset:1504
	ds_load_u8 v111, v71 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v111, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v98, v98, 16, v97
	ds_load_u8 v97, v71 offset:1120
	ds_load_u8 v111, v71 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v111, v97, 0xc0c0004
	ds_load_u8 v111, v71 offset:1248
	ds_load_u8 v112, v71 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v97, v111, 16, v97
	v_wmma_i32_16x16x16_iu4 v[9:16], v[97:98], v[101:102], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v101, v71 offset:1888
	ds_load_u8 v102, v71 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v71 offset:2016
	ds_load_u8 v111, v71 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v111, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v102, v102, 16, v101
	ds_load_u8 v101, v71 offset:1632
	ds_load_u8 v111, v71 offset:1568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v111, v101, 0xc0c0004
	ds_load_u8 v111, v71 offset:1760
	ds_load_u8 v112, v71 offset:1696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v101, v111, 16, v101
	v_perm_b32 v111, v129, v128, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[101:102], v[105:106], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v105, v134, v133, 0xc0c0004
	v_perm_b32 v106, v132, v131, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v106, v106, 16, v105
	v_perm_b32 v105, v136, v130, 0xc0c0004
	v_lshl_or_b32 v105, v111, 16, v105
	v_perm_b32 v111, v138, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[95:96], v[105:106], v[17:24] neg_lo:[1,1,0]
	v_perm_b32 v95, v144, v143, 0xc0c0004
	v_perm_b32 v96, v142, v141, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[109:110], v[105:106], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v96, v96, 16, v95
	v_perm_b32 v95, v140, v139, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v95, v111, 16, v95
	v_perm_b32 v111, v146, v145, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[99:100], v[95:96], v[17:24] neg_lo:[1,1,0]
	v_perm_b32 v99, v152, v151, 0xc0c0004
	v_perm_b32 v100, v150, v149, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[93:94], v[95:96], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v100, v100, 16, v99
	v_perm_b32 v99, v148, v147, 0xc0c0004
	v_lshl_or_b32 v99, v111, 16, v99
	v_perm_b32 v111, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[103:104], v[99:100], v[17:24] neg_lo:[1,1,0]
	v_perm_b32 v103, v160, v159, 0xc0c0004
	v_perm_b32 v104, v158, v157, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[97:98], v[99:100], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v104, v104, 16, v103
	v_perm_b32 v103, v156, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v103, v111, 16, v103
	v_wmma_i32_16x16x16_iu4 v[17:24], v[107:108], v[103:104], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[101:102], v[103:104], v[25:32] neg_lo:[1,1,0]
	.loc	1 1426 27                       ; ragged.py:1426:27
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v106, v1
	v_cvt_f32_i32_e32 v105, v2
	v_cvt_f32_i32_e32 v104, v3
	v_cvt_f32_i32_e32 v103, v4
	v_cvt_f32_i32_e32 v102, v5
	v_cvt_f32_i32_e32 v101, v6
	v_cvt_f32_i32_e32 v100, v7
	v_cvt_f32_i32_e32 v99, v8
	v_cvt_f32_i32_e32 v98, v9
	v_cvt_f32_i32_e32 v97, v10
	v_cvt_f32_i32_e32 v96, v11
	v_cvt_f32_i32_e32 v95, v12
	v_cvt_f32_i32_e32 v94, v13
	v_cvt_f32_i32_e32 v93, v14
	v_cvt_f32_i32_e32 v92, v15
	v_cvt_f32_i32_e32 v91, v16
	v_cvt_f32_i32_e32 v15, v17
	v_cvt_f32_i32_e32 v16, v18
	v_cvt_f32_i32_e32 v11, v19
	v_cvt_f32_i32_e32 v12, v20
	v_cvt_f32_i32_e32 v13, v21
	v_cvt_f32_i32_e32 v14, v22
	v_cvt_f32_i32_e32 v9, v23
	v_cvt_f32_i32_e32 v10, v24
	v_cvt_f32_i32_e32 v7, v25
	v_cvt_f32_i32_e32 v8, v26
	v_cvt_f32_i32_e32 v3, v27
	v_cvt_f32_i32_e32 v4, v28
	v_cvt_f32_i32_e32 v5, v29
	v_cvt_f32_i32_e32 v6, v30
	v_cvt_f32_i32_e32 v1, v31
	v_cvt_f32_i32_e32 v2, v32
	s_branch .LBB0_5
.LBB0_10:                               ; %._crit_edge4
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v1, 24, v47
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v2, v69, 16, 1
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	s_mul_i32 s0, s22, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cmp_o_f32_e64 s1, v69, v69
	v_bfe_u32 v5, v68, 16, 1
	.loc	1 1310 18 is_stmt 1             ; ragged.py:1310:18
	v_or_b32_e32 v3, s9, v1
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add3_u32 v18, s0, s9, v1
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_add3_u32 v2, v69, v2, 0x7fff
	v_bfe_u32 v6, v67, 16, 1
	v_cmp_o_f32_e64 s2, v67, v67
	.loc	1 1310 18 is_stmt 1             ; ragged.py:1310:18
	v_or_b32_e32 v1, 32, v3
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s11, v3
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add3_u32 v3, v68, v5, 0x7fff
	v_add3_u32 v5, v67, v6, 0x7fff
	v_cmp_o_f32_e64 s3, v66, v66
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s11, v1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s1
	v_bfe_u32 v2, v66, 16, 1
	v_cmp_o_f32_e64 s1, v68, v68
	v_bfe_u32 v6, v61, 16, 1
	v_bfe_u32 v7, v60, 16, 1
	v_bfe_u32 v8, v58, 16, 1
	v_add3_u32 v2, v66, v2, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v3.h, s1
	v_bfe_u32 v3, v63, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v5.h, s2
	v_bfe_u32 v5, v62, 16, 1
	v_cmp_o_f32_e64 s1, v63, v63
	v_cmp_o_f32_e64 s2, v62, v62
	v_add3_u32 v3, v63, v3, 0x7fff
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s3
	v_add3_u32 v5, v62, v5, 0x7fff
	v_add3_u32 v6, v61, v6, 0x7fff
	v_cmp_o_f32_e64 s3, v61, v61
	v_cndmask_b16 v3.l, 0x7fff, v3.h, s1
	v_add3_u32 v7, v60, v7, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v5.h, s2
	v_bfe_u32 v5, v59, 16, 1
	v_cmp_o_f32_e64 s1, v60, v60
	v_cndmask_b16 v6.l, 0x7fff, v6.h, s3
	v_cmp_o_f32_e64 s2, v59, v59
	v_add3_u32 v8, v58, v8, 0x7fff
	v_add3_u32 v5, v59, v5, 0x7fff
	v_cmp_o_f32_e64 s3, v58, v58
	v_cndmask_b16 v6.h, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v57, 16, 1
	v_bfe_u32 v9, v56, 16, 1
	v_mov_b16_e32 v4.h, 0
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s2
	v_cndmask_b16 v5.h, 0x7fff, v8.h, s3
	v_bfe_u32 v8, v55, 16, 1
	v_add3_u32 v7, v57, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v57, v57
	v_add3_u32 v9, v56, v9, 0x7fff
	v_cmp_o_f32_e64 s2, v56, v56
	v_bfe_u32 v10, v54, 16, 1
	v_bfe_u32 v11, v53, 16, 1
	v_add3_u32 v8, v55, v8, 0x7fff
	v_cmp_o_f32_e64 s3, v55, v55
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s1
	v_cndmask_b16 v7.h, 0x7fff, v9.h, s2
	v_add3_u32 v9, v54, v10, 0x7fff
	v_cmp_o_f32_e64 s1, v54, v54
	v_add3_u32 v10, v53, v11, 0x7fff
	v_mov_b16_e32 v11.l, v50.h
	v_mov_b16_e32 v11.h, v4.h
	v_mov_b16_e32 v4.l, v51.h
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s3
	v_bfe_u32 v12, v52, 16, 1
	v_cndmask_b16 v8.h, 0x7fff, v9.h, s1
	v_and_b32_e32 v9, 1, v11
	v_and_b32_e32 v11, 1, v4
	v_mov_b16_e32 v4.l, v49.h
	v_cmp_o_f32_e64 s2, v53, v53
	v_add3_u32 v12, v52, v12, 0x7fff
	v_cmp_o_f32_e64 s1, v52, v52
	v_add3_u32 v9, v50, v9, 0x7fff
	v_cmp_o_f32_e64 s3, v50, v50
	v_mov_b16_e32 v13.l, v48.h
	v_mov_b16_e32 v13.h, v4.h
	v_and_b32_e32 v14, 1, v4
	v_add3_u32 v11, v51, v11, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s2
	v_cndmask_b16 v10.h, 0x7fff, v12.h, s1
	v_cndmask_b16 v11.l, 0x7fff, v9.h, s3
	v_and_b32_e32 v9, 1, v13
	v_add3_u32 v12, v49, v14, 0x7fff
	v_cmp_o_f32_e64 s1, v49, v49
	v_mov_b16_e32 v4.l, v46.h
	v_mov_b16_e32 v13.l, v45.h
	v_add3_u32 v9, v48, v9, 0x7fff
	v_mov_b16_e32 v15.l, v43.h
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s1
	v_cmp_o_f32_e64 s1, v48, v48
	v_and_b32_e32 v14, 1, v4
	v_and_b32_e32 v13, 1, v13
	v_mov_b16_e32 v15.h, v4.h
	v_mov_b16_e32 v4.l, v44.h
	v_cmp_o_f32_e64 s2, v51, v51
	v_cndmask_b16 v12.l, 0x7fff, v9.h, s1
	v_add3_u32 v13, v45, v13, 0x7fff
	v_and_b32_e32 v9, 1, v15
	v_and_b32_e32 v15, 1, v4
	v_cmp_o_f32_e64 s1, v45, v45
	v_mov_b16_e32 v4.l, v40.h
	v_add3_u32 v14, v46, v14, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s2
	v_cmp_o_f32_e64 s2, v46, v46
	v_add3_u32 v9, v43, v9, 0x7fff
	v_cmp_o_f32_e64 s3, v43, v43
	v_mov_b16_e32 v20.l, v39.h
	v_mov_b16_e32 v20.h, v4.h
	v_cndmask_b16 v14.l, 0x7fff, v13.h, s1
	v_and_b32_e32 v13, 1, v4
	v_mov_b16_e32 v4.l, v38.h
	v_add3_u32 v15, v44, v15, 0x7fff
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s2
	v_cmp_o_f32_e64 s2, v44, v44
	v_cndmask_b16 v15.l, 0x7fff, v9.h, s3
	v_and_b32_e32 v9, 1, v20
	v_add3_u32 v13, v40, v13, 0x7fff
	v_cmp_o_f32_e64 s1, v40, v40
	v_mov_b16_e32 v20.l, v37.h
	v_and_b32_e32 v21, 1, v4
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s2
	v_add3_u32 v9, v39, v9, 0x7fff
	v_cmp_o_f32_e64 s2, v39, v39
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s1
	v_and_b32_e32 v20, 1, v20
	v_add3_u32 v21, v38, v21, 0x7fff
	v_cmp_o_f32_e64 s1, v38, v38
	v_cndmask_b16 v13.l, 0x7fff, v9.h, s2
	v_mov_b16_e32 v9.l, v35.h
	v_mov_b16_e32 v9.h, v4.h
	v_add3_u32 v20, v37, v20, 0x7fff
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s1
	v_mov_b16_e32 v4.l, v36.h
	v_cmp_o_f32_e64 s1, v37, v37
	v_mov_b16_e32 v22.l, v34.h
	v_mov_b16_e32 v22.h, v4.h
	v_and_b32_e32 v9, 1, v9
	v_and_b32_e32 v23, 1, v4
	v_mov_b16_e32 v4.l, v33.h
	v_cndmask_b16 v21.l, 0x7fff, v20.h, s1
	v_and_b32_e32 v20, 1, v22
	v_add3_u32 v9, v35, v9, 0x7fff
	v_add3_u32 v22, v36, v23, 0x7fff
	v_and_b32_e32 v4, 1, v4
	v_cmp_o_f32_e64 s1, v36, v36
	v_cmp_o_f32_e64 s2, v35, v35
	v_add3_u32 v20, v34, v20, 0x7fff
	v_and_b32_e32 v0, 16, v0
	v_cmp_o_f32_e64 s4, v34, v34
	v_add3_u32 v4, v33, v4, 0x7fff
	v_cmp_o_f32_e64 s3, v33, v33
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s1
	v_cmp_eq_u32_e64 s1, 0, v0
	v_cndmask_b16 v22.l, 0x7fff, v9.h, s2
	v_cndmask_b16 v0.l, 0x7fff, v20.h, s4
	v_mov_b32_e32 v9, 0x5410
	v_mov_b32_e32 v20, 0x7632
	v_cndmask_b16 v0.h, 0x7fff, v4.h, s3
	v_cndmask_b32_e64 v4, v3, v1, s1
	v_cndmask_b32_e64 v1, v1, v3, s1
	v_cndmask_b32_e64 v3, v6, v2, s1
	v_cndmask_b32_e64 v2, v2, v6, s1
	v_cndmask_b32_e64 v6, v8, v5, s1
	v_cndmask_b32_e64 v5, v5, v8, s1
	v_cndmask_b32_e64 v8, v10, v7, s1
	v_cndmask_b32_e64 v7, v7, v10, s1
	v_cndmask_b32_e64 v10, v14, v11, s1
	v_cndmask_b32_e64 v11, v11, v14, s1
	v_cndmask_b32_e64 v9, 0x1054, v9, s1
	v_cndmask_b32_e64 v14, 0x3276, v20, s1
	s_mov_b32 s2, 0x76543210
	v_cndmask_b32_e64 v20, v15, v12, s1
	v_cndmask_b32_e64 v12, v12, v15, s1
	v_lshl_or_b32 v9, v9, 8, v9
	v_lshl_or_b32 v14, v14, 8, v14
	v_cndmask_b32_e64 v15, v22, v13, s1
	v_cndmask_b32_e64 v13, v13, v22, s1
	v_cndmask_b32_e64 v22, v0, v21, s1
	v_and_b32_e32 v9, 0x540054, v9
	v_and_b32_e32 v14, 0x760076, v14
	v_cndmask_b32_e64 v0, v21, v0, s1
	v_permlanex16_b32 v21, v2, s2, 0xfedcba98 op_sel:[1,0]
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	v_mul_lo_u32 v16, s11, v41
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_lshl_or_b32 v2, v9, 4, v9
	v_lshl_or_b32 v9, v14, 4, v14
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v17, s11, v42
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_permlanex16_b32 v1, v1, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v14, 0x5040504, v2
	v_and_b32_e32 v23, 0x7060706, v9
	v_permlanex16_b32 v12, v12, s2, 0xfedcba98 op_sel:[1,0]
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add_nc_u32_e32 v19, 32, v18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_permlanex16_b32 v24, v0, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v4, v14
	v_perm_b32 v1, v1, v4, v23
	v_perm_b32 v4, v5, v6, v14
	v_perm_b32 v5, v5, v6, v23
	v_perm_b32 v6, v7, v8, v14
	v_perm_b32 v7, v7, v8, v23
	v_perm_b32 v8, v11, v10, v14
	v_perm_b32 v9, v11, v10, v23
	v_perm_b32 v10, v12, v20, v14
	v_perm_b32 v11, v12, v20, v23
	v_add_lshl_u32 v20, v18, v16, 1
	v_add_lshl_u32 v16, v19, v16, 1
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s1, s8, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v18, v18, v17, 1
	v_permlanex16_b32 v13, v13, s2, 0xfedcba98 op_sel:[1,0]
	v_add_lshl_u32 v17, v19, v17, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s8, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v2, v21, v3, v14
	v_perm_b32 v3, v21, v3, v23
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, s7, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 vcc_lo, s7, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s0
	v_perm_b32 v12, v13, v15, v14
	v_perm_b32 v13, v13, v15, v23
	v_perm_b32 v14, v24, v22, v14
	v_perm_b32 v15, v24, v22, v23
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v20, s[20:23], 0 offen
	buffer_store_b128 v[4:7], v16, s[20:23], 0 offen
	buffer_store_b128 v[8:11], v18, s[20:23], 0 offen
	buffer_store_b128 v[12:15], v17, s[20:23], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 161
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
		.amdhsa_inst_pref_size 56
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.num_vgpr, 161
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.numbered_sgpr, 39
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7048
; TotalNumSgprs: 41
; NumVgprs: 161
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 20
; NumSGPRsForWavesPerEU: 41
; NumVGPRsForWavesPerEU: 161
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     41
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn64_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     161
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
