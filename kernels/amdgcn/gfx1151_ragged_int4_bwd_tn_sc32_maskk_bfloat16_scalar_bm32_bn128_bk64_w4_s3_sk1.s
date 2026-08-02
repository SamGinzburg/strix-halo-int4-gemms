	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[18:19], s[0:1], 0x30
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v51, 15, v0
	v_and_b32_e32 v67, 16, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s18, 31
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s19, 0x7f
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s5, s6, s4
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_abs_i32 s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s4
	s_sub_i32 s8, 0, s4
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
	s_xor_b32 s8, s2, s5
	s_mul_hi_u32 s7, s9, s7
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s10, s7, s4
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s7, 1
	s_sub_i32 s11, s9, s4
	s_cmp_ge_u32 s9, s4
	s_cselect_b32 s7, s10, s7
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s7, 1
	s_cmp_ge_u32 s9, s4
	s_cselect_b32 s4, s10, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s7, s6
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s4, s4, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s9, s7
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s4, s4, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s8, 0, s7
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s5, s4, s5
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s10, s2
	s_xor_b32 s11, s2, s6
	s_ashr_i32 s11, s11, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s9
	s_mul_hi_u32 s5, s9, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s9, s5
	s_load_b64 s[8:9], s[0:1], 0x20
	s_mul_hi_u32 s5, s10, s5
	s_mul_i32 s12, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s10, s10, s12
	s_add_i32 s12, s5, 1
	s_sub_i32 s13, s10, s7
	s_cmp_ge_u32 s10, s7
	s_cselect_b32 s5, s12, s5
	s_cselect_b32 s10, s13, s10
	s_add_i32 s12, s5, 1
	s_cmp_ge_u32 s10, s7
	s_cselect_b32 s5, s12, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_xor_b32 s7, s5, s11
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s5, s4, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s7, s7, s11
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[10:11], s[4:5], 2
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s5, s7, s6
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s31, s7, 5
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s6, s2, s5
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s8, s8, s10
	s_addc_u32 s9, s9, s11
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v1, s31, v51
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s8, s[8:9], 0x0
	s_mov_b32 s7, 0
	.loc	1 1513 37                       ; ragged.py:1513:37
	s_mul_i32 s5, s4, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v2, 16, v1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s17, s18, v1
	v_cmp_gt_i32_e64 s2, s18, v2
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s9, s8, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_gt_i32 s9, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge45_crit_edge
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_and_b32_e32 v17, 16, v0
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	s_add_i32 s33, s31, s5
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26                          ; ragged.py:0:26
	s_mov_b32 s7, -1
                                        ; implicit-def: $sgpr33
                                        ; implicit-def: $vgpr17
.LBB0_3:                                ; %Flow212
	s_load_b64 s[28:29], s[0:1], 0x28
	v_dual_mov_b32 v46, 0 :: v_dual_and_b32 v63, 0x70, v0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v81, 0
	v_mov_b32_e32 v80, 0
	v_mov_b32_e32 v82, 0
	v_mov_b32_e32 v84, 0
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_lshl_b32 s30, s6, 7
	s_cbranch_vccnz .LBB0_12
; %bb.4:                                ; %.lr.ph44
	v_dual_mov_b32 v84, 0 :: v_dual_and_b32 v1, 31, v0
	v_dual_mov_b32 v82, 0 :: v_dual_and_b32 v3, 0x60, v0
	s_clause 0x1
	s_load_b256 s[20:27], s[0:1], 0x0
	s_load_b64 s[6:7], s[0:1], 0x38
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v2, s31, v1
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s0, s9, 31
	v_bfe_i32 v4, v0, 3, 1
	s_add_i32 s9, s9, s0
	v_bfe_i32 v5, v0, 4, 1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s18, v2
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_lshrrev_b32_e32 v2, 3, v3
	v_dual_mov_b32 v79, 0 :: v_dual_lshlrev_b32 v6, 4, v0
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v32, s30, v0
	v_dual_mov_b32 v77, 0 :: v_dual_and_b32 v96, 0x88, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[33:34], null, s18, v2, v[1:2]
	v_dual_mov_b32 v75, 0 :: v_dual_and_b32 v4, 0x108, v5
	v_dual_mov_b32 v78, 0 :: v_dual_and_b32 v5, 0x70, v6
	v_bfe_i32 v7, v0, 5, 1
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_lshr_b32 s1, s8, 31
	v_mad_u64_u32 v[34:35], null, s18, 3, v[33:34]
	s_add_i32 s1, s8, s1
	v_mad_u64_u32 v[35:36], null, s19, 3, v[32:33]
	v_xor_b32_e32 v4, v4, v96
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_ashr_i32 s34, s9, 1
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s35, s3, 4
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_ashr_i32 s44, s1, 1
	s_waitcnt lgkmcnt(0)
	s_and_b32 s37, s21, 0xffff
	v_mad_u64_u32 v[36:37], null, s19, 5, v[32:33]
	v_or_b32_e32 v8, v96, v5
	v_dual_mov_b32 v76, 0 :: v_dual_and_b32 v7, 0x108, v7
	s_and_b32 s21, s23, 0xffff
	v_mad_u64_u32 v[37:38], null, s19, 6, v[32:33]
	s_bitcmp1_b32 s8, 0
	v_mad_u64_u32 v[38:39], null, s19, 7, v[32:33]
	v_mad_u64_u32 v[39:40], null, s19, 9, v[32:33]
	s_cselect_b32 s48, -1, 0
	s_add_i32 s33, s31, s5
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_lshrrev_b32_e32 v85, 5, v0
	v_mad_u64_u32 v[40:41], null, s19, 10, v[32:33]
	v_xor_b32_e32 v2, v4, v2
	v_mad_u64_u32 v[41:42], null, s19, 11, v[32:33]
	v_dual_mov_b32 v74, 0 :: v_dual_lshlrev_b32 v9, 3, v0
	v_xor_b32_e32 v7, v8, v7
	v_and_or_b32 v98, 0x670, v6, v4
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v6, s33, v51
	v_dual_mov_b32 v68, 0 :: v_dual_lshlrev_b32 v11, 5, v0
	v_mad_u64_u32 v[42:43], null, s19, 12, v[32:33]
	v_mad_u64_u32 v[43:44], null, s19, 13, v[32:33]
	v_mad_u64_u32 v[44:45], null, s19, 14, v[32:33]
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_mad_u64_u32 v[45:46], null, s18, v85, v[1:2]
	v_and_or_b32 v99, 0x200, v9, v7
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v9, 16, v6
	v_mul_lo_u32 v102, v6, s7
	v_dual_mov_b32 v71, 0 :: v_dual_lshlrev_b32 v6, 2, v63
	v_dual_mov_b32 v69, 0 :: v_dual_lshlrev_b32 v12, 1, v0
	v_dual_mov_b32 v66, 0 :: v_dual_and_b32 v11, 32, v11
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v89, 0, v51
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v97, 0, v5
	v_xor_b32_e32 v5, 8, v8
	v_xor_b32_e32 v8, 0x108, v8
	v_xor_b32_e32 v1, 8, v98
	v_xor_b32_e32 v4, 8, v99
	v_or_b32_e32 v7, 0x380, v0
	v_or_b32_e32 v10, 0x780, v0
	v_lshrrev_b32_e32 v3, 1, v3
	v_mul_lo_u32 v103, v9, s7
	v_dual_mov_b32 v64, 0 :: v_dual_and_b32 v9, 28, v12
	v_add3_u32 v6, 0, v6, v11
	v_dual_mov_b32 v62, 0 :: v_dual_lshlrev_b32 v11, 1, v63
	v_mad_u64_u32 v[47:48], null, s19, 15, v[32:33]
	v_mad_u64_u32 v[48:49], null, s18, 12, v[45:46]
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v86, 4, v85
	v_or_b32_e32 v87, 8, v85
	v_or_b32_e32 v88, 12, v85
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v90, s18, v33
	v_lshl_add_u32 v91, s18, 1, v33
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v92, s19, v32
	v_lshl_add_u32 v93, s19, 1, v32
	v_lshl_add_u32 v94, s19, 2, v32
	v_lshl_add_u32 v95, s19, 3, v32
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_lshl_add_u32 v100, s18, 2, v45
	v_lshl_add_u32 v101, s18, 3, v45
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v104, v97, v2
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v105, 0, v5
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v106, 0, v8
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v107, 0, v1
	v_dual_mov_b32 v59, 0 :: v_dual_add_nc_u32 v108, 0, v4
	v_dual_mov_b32 v56, 0 :: v_dual_add_nc_u32 v109, 0, v0
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v110, 0, v7
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v111, 0, v10
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v112, v89, v3
	v_dual_mov_b32 v52, 0 :: v_dual_add_nc_u32 v113, v6, v9
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v114, 0, v11
	v_mov_b32_e32 v46, 0
	s_add_i32 s49, s34, -1
	.loc	1 1464 43                       ; ragged.py:1464:43
	s_mul_i32 s45, s4, s6
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s46, s4, s7
	.loc	1 1421 13                       ; ragged.py:1421:13
	s_mov_b32 s47, 0
	s_mov_b32 s36, s20
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_mov_b32 s20, s22
	s_and_b32 s25, s25, 0xffff
	s_and_b32 s41, s27, 0xffff
	s_mov_b32 s40, s26
	.loc	1 1421 19 is_stmt 0             ; ragged.py:1421:19
	s_lshr_b32 s50, s49, 4
	s_mov_b32 s1, 0
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s19, v32
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v49, v102, s47, 1
	s_mov_b32 s26, s38
	s_mov_b32 s27, s39
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s1, s47, s46
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v50, v103, s47, 1
	v_cndmask_b32_e64 v49, 0x80000000, v49, s17
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s1, s1, s19
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_mov_b32 s42, s38
	v_add_lshl_u32 v115, v32, s1, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v50, 0x80000000, v50, s2
	buffer_load_u16 v49, v49, s[24:27], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_mov_b32 s43, s39
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v116, v0
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e32 v115, 0x80000000, v115, vcc_lo
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v117, v1
	v_cvt_f32_i32_e32 v118, v2
	v_cvt_f32_i32_e32 v119, v3
	v_cvt_f32_i32_e32 v120, v4
	v_cvt_f32_i32_e32 v121, v5
	v_cvt_f32_i32_e32 v122, v6
	v_cvt_f32_i32_e32 v123, v7
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s3, s47, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s1, s3, 4
	s_cmp_lg_u32 s47, s50
	s_mov_b32 s47, s3
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v49
	buffer_load_u16 v50, v50, s[24:27], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	buffer_load_u16 v115, v115, s[40:43], 0 offen
	.loc	1 1524 21                       ; ragged.py:1524:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v24, v24, v0
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v26, v26, v0 :: v_dual_lshlrev_b32 v49, 16, v50
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v115
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v25, v25, v0
	v_mul_f32_e32 v27, v27, v0
	v_dual_mul_f32 v28, v28, v0 :: v_dual_mul_f32 v115, v9, v49
	v_dual_mul_f32 v29, v29, v0 :: v_dual_mul_f32 v126, v12, v49
	v_dual_mul_f32 v30, v30, v0 :: v_dual_mul_f32 v125, v11, v49
	v_dual_mul_f32 v31, v31, v0 :: v_dual_mul_f32 v128, v14, v49
	v_dual_mul_f32 v16, v16, v0 :: v_dual_mul_f32 v127, v13, v49
	v_dual_mul_f32 v17, v17, v0 :: v_dual_mul_f32 v116, v116, v49
	v_dual_mul_f32 v18, v18, v0 :: v_dual_mul_f32 v129, v15, v49
	v_dual_mul_f32 v19, v19, v0 :: v_dual_mul_f32 v118, v118, v49
	v_dual_mul_f32 v20, v20, v0 :: v_dual_mul_f32 v117, v117, v49
	v_dual_mul_f32 v21, v21, v0 :: v_dual_mul_f32 v120, v120, v49
	v_dual_mul_f32 v22, v22, v0 :: v_dual_mul_f32 v119, v119, v49
	v_dual_mul_f32 v23, v23, v0 :: v_dual_mul_f32 v122, v122, v49
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_store_b32 v113, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v114
	ds_load_b128 v[4:7], v114 offset:16
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v50, v8, v49
	v_mul_f32_e32 v124, v10, v49
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[8:11], v114 offset:256
	ds_load_b128 v[12:15], v114 offset:272
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v121, v121, v49
	v_mul_f32_e32 v49, v123, v49
	.loc	1 1525 17                       ; ragged.py:1525:17
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v81, v24, v0 :: v_dual_fmac_f32 v84, v25, v1
	v_dual_fmac_f32 v83, v26, v2 :: v_dual_fmac_f32 v82, v27, v3
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v80, v28, v4 :: v_dual_fmac_f32 v79, v29, v5
	v_dual_fmac_f32 v78, v30, v6 :: v_dual_fmac_f32 v77, v31, v7
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v74, v18, v10
	v_dual_fmac_f32 v76, v16, v8 :: v_dual_fmac_f32 v75, v17, v9
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v72, v20, v12 :: v_dual_fmac_f32 v73, v19, v11
	v_dual_fmac_f32 v70, v22, v14 :: v_dual_fmac_f32 v71, v21, v13
	v_dual_fmac_f32 v68, v50, v0 :: v_dual_fmac_f32 v69, v23, v15
	v_fmac_f32_e32 v62, v126, v4
	v_dual_fmac_f32 v66, v115, v1 :: v_dual_fmac_f32 v65, v124, v2
	v_dual_fmac_f32 v64, v125, v3 :: v_dual_fmac_f32 v61, v127, v5
	v_dual_fmac_f32 v60, v128, v6 :: v_dual_fmac_f32 v59, v129, v7
	v_dual_fmac_f32 v58, v116, v8 :: v_dual_fmac_f32 v57, v117, v9
	v_dual_fmac_f32 v56, v118, v10 :: v_dual_fmac_f32 v55, v119, v11
	v_dual_fmac_f32 v54, v120, v12 :: v_dual_fmac_f32 v53, v121, v13
	v_fmac_f32_e32 v52, v122, v14
	v_fmac_f32_e32 v46, v49, v15
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_11
.LBB0_6:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 1456 54                       ; ragged.py:1456:54
	s_sub_i32 s3, s44, s1
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v6, 0
	.loc	1 1454 45                       ; ragged.py:1454:45
	v_med3_i32 v0, s3, 0, 16
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v2, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1458 41                       ; ragged.py:1458:41
	v_readfirstlane_b32 s3, v0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v0, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	s_and_b32 s4, s3, 16
	s_mov_b32 s3, s35
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_ge_i32 s35, s4
	s_cbranch_scc1 .LBB0_9
; %bb.7:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v24, 0
	s_add_i32 s5, s1, s45
	s_mov_b32 s3, s35
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v25, v24
	v_mov_b32_e32 v26, v24
	v_mov_b32_e32 v27, v24
	v_mov_b32_e32 v28, v24
	v_mov_b32_e32 v29, v24
	v_mov_b32_e32 v30, v24
	v_mov_b32_e32 v31, v24
	v_mov_b32_e32 v16, v24
	v_mov_b32_e32 v17, v24
	v_mov_b32_e32 v18, v24
	v_mov_b32_e32 v19, v24
	v_mov_b32_e32 v20, v24
	v_mov_b32_e32 v21, v24
	v_mov_b32_e32 v22, v24
	v_mov_b32_e32 v23, v24
	v_mov_b32_e32 v8, v24
	v_mov_b32_e32 v9, v24
	v_mov_b32_e32 v10, v24
	v_mov_b32_e32 v11, v24
	v_mov_b32_e32 v12, v24
	v_mov_b32_e32 v13, v24
	v_mov_b32_e32 v14, v24
	v_mov_b32_e32 v15, v24
	v_mov_b32_e32 v0, v24
	v_mov_b32_e32 v1, v24
	v_mov_b32_e32 v2, v24
	v_mov_b32_e32 v3, v24
	v_mov_b32_e32 v4, v24
	v_mov_b32_e32 v5, v24
	v_mov_b32_e32 v6, v24
	v_mov_b32_e32 v7, v24
.LBB0_8:                                ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1471 46 is_stmt 1             ; ragged.py:1471:46
	s_add_i32 s6, s5, s3
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_mov_b32 s22, s38
	.loc	1 1471 46                       ; ragged.py:1471:46
	s_mul_i32 s7, s6, s18
	.loc	1 1472 46                       ; ragged.py:1472:46
	s_mul_i32 s6, s6, s19
	.loc	1 1471 46                       ; ragged.py:1471:46
	s_add_i32 s7, s7, s31
	.loc	1 1472 46                       ; ragged.py:1472:46
	v_add_nc_u32_e32 v49, s6, v32
	v_add_nc_u32_e32 v50, s6, v92
	v_add_nc_u32_e32 v115, s6, v93
	v_add_nc_u32_e32 v116, s6, v35
	v_add_nc_u32_e32 v117, s6, v94
	v_add_nc_u32_e32 v118, s6, v36
	v_add_nc_u32_e32 v119, s6, v37
	v_add_nc_u32_e32 v120, s6, v38
	v_add_nc_u32_e32 v121, s6, v95
	v_add_nc_u32_e32 v122, s6, v39
	v_add_nc_u32_e32 v123, s6, v40
	v_add_nc_u32_e32 v124, s6, v41
	v_add_nc_u32_e32 v125, s6, v42
	v_add_nc_u32_e32 v126, s6, v43
	v_add_nc_u32_e32 v127, s6, v44
	v_add_nc_u32_e32 v128, s6, v47
	v_add_nc_u32_e32 v129, s7, v33
	v_add_nc_u32_e32 v130, s7, v90
	v_add_nc_u32_e32 v131, s7, v91
	v_add_nc_u32_e32 v132, s7, v34
	.loc	1 1472 38 is_stmt 0             ; ragged.py:1472:38
	v_dual_cndmask_b32 v49, 0x80000000, v49 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	v_dual_cndmask_b32 v115, 0x80000000, v115 :: v_dual_cndmask_b32 v116, 0x80000000, v116
	s_mov_b32 s23, s39
	v_dual_cndmask_b32 v117, 0x80000000, v117 :: v_dual_cndmask_b32 v118, 0x80000000, v118
	v_dual_cndmask_b32 v119, 0x80000000, v119 :: v_dual_cndmask_b32 v120, 0x80000000, v120
	v_dual_cndmask_b32 v121, 0x80000000, v121 :: v_dual_cndmask_b32 v122, 0x80000000, v122
	v_dual_cndmask_b32 v123, 0x80000000, v123 :: v_dual_cndmask_b32 v124, 0x80000000, v124
	v_dual_cndmask_b32 v125, 0x80000000, v125 :: v_dual_cndmask_b32 v126, 0x80000000, v126
	v_dual_cndmask_b32 v127, 0x80000000, v127 :: v_dual_cndmask_b32 v128, 0x80000000, v128
	.loc	1 1471 38 is_stmt 1             ; ragged.py:1471:38
	v_cndmask_b32_e64 v129, 0x80000000, v129, s0
	v_cndmask_b32_e64 v130, 0x80000000, v130, s0
	v_cndmask_b32_e64 v131, 0x80000000, v131, s0
	v_cndmask_b32_e64 v132, 0x80000000, v132, s0
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_clause 0xf
	buffer_load_u8 v133, v49, s[20:23], 0 offen
	buffer_load_u8 v134, v50, s[20:23], 0 offen
	buffer_load_u8 v135, v115, s[20:23], 0 offen
	buffer_load_u8 v50, v116, s[20:23], 0 offen
	buffer_load_u8 v136, v117, s[20:23], 0 offen
	buffer_load_u8 v115, v118, s[20:23], 0 offen
	buffer_load_u8 v118, v119, s[20:23], 0 offen
	buffer_load_u8 v49, v120, s[20:23], 0 offen
	buffer_load_u8 v121, v121, s[20:23], 0 offen
	buffer_load_u8 v117, v122, s[20:23], 0 offen
	buffer_load_u8 v122, v123, s[20:23], 0 offen
	buffer_load_u8 v116, v124, s[20:23], 0 offen
	buffer_load_u8 v119, v128, s[20:23], 0 offen
	buffer_load_u8 v120, v126, s[20:23], 0 offen
	buffer_load_u8 v123, v125, s[20:23], 0 offen
	buffer_load_u8 v124, v127, s[20:23], 0 offen
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_clause 0x3
	buffer_load_u8 v125, v132, s[36:39], 0 offen
	buffer_load_u8 v126, v130, s[36:39], 0 offen
	buffer_load_u8 v127, v131, s[36:39], 0 offen
	buffer_load_u8 v128, v129, s[36:39], 0 offen
	v_add_nc_u32_e32 v129, v97, v96
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_add_nc_u32_e32 v131, 0, v98
	v_add_nc_u32_e32 v132, 0, v99
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1483 25                       ; ragged.py:1483:25
	s_add_i32 s3, s3, 16
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_lt_i32 s3, s4
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt vmcnt(16)
	v_lshlrev_b16 v50.h, 8, v134.l
	v_lshlrev_b16 v50.l, 8, v50.l
	s_waitcnt vmcnt(12)
	v_lshlrev_b16 v49.h, 8, v115.l
	v_lshlrev_b16 v49.l, 8, v49.l
	s_waitcnt vmcnt(7)
	v_or_b16 v119.h, v135.l, v50.l
	v_lshlrev_b16 v116.h, 8, v117.l
	v_lshlrev_b16 v116.l, 8, v116.l
	v_lshlrev_b16 v115.l, 8, v119.l
	s_waitcnt vmcnt(6)
	v_lshlrev_b16 v115.h, 8, v120.l
	v_or_b16 v119.l, v133.l, v50.h
	v_or_b16 v120.h, v118.l, v49.l
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v117.l, 8, v125.l
	s_waitcnt vmcnt(2)
	v_lshlrev_b16 v117.h, 8, v126.l
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_or_b16 v50.h, v124.l, v115.l
	v_or_b16 v50.l, v123.l, v115.h
	v_or_b16 v120.l, v136.l, v49.h
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt vmcnt(1)
	v_or_b16 v115.h, v127.l, v117.l
	s_waitcnt vmcnt(0)
	v_or_b16 v115.l, v128.l, v117.h
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_or_b16 v49.h, v122.l, v116.l
	v_or_b16 v49.l, v121.l, v116.h
	.loc	1 1471 38                       ; ragged.py:1471:38
	ds_store_b32 v104, v115
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[115:118], v129 offset1:32
	ds_load_b64 v[127:128], v105
	ds_load_b64 v[129:130], v106
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v131, v[119:120]
	ds_store_b64 v107, v[49:50]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[119:122], v132 offset1:2
	ds_load_2addr_stride64_b64 v[123:126], v108 offset1:2
	.loc	1 1473 35                       ; ragged.py:1473:35
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[24:31], v[119:120], v[115:116], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[121:122], v[115:116], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[119:120], v[129:130], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[121:122], v[129:130], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[24:31], v[123:124], v[127:128], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[125:126], v[127:128], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[123:124], v[117:118], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[125:126], v[117:118], v[0:7] neg_lo:[1,1,0]
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cbranch_scc1 .LBB0_8
.LBB0_9:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1452 25                       ; ragged.py:1452:25
	s_sub_i32 s4, s34, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1450 42                       ; ragged.py:1450:42
	s_min_i32 s6, s4, 16
	.loc	1 1484 24                       ; ragged.py:1484:24
	s_cmp_ge_i32 s3, s6
	.loc	1 1484 21 is_stmt 0             ; ragged.py:1484:21
	s_cbranch_scc1 .LBB0_5
; %bb.10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	s_add_i32 s10, s3, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s26, s10, 1
	s_or_b32 s27, s10, 2
	s_or_b32 s42, s10, 3
	s_or_b32 s43, s10, 4
	s_or_b32 s51, s10, 5
	s_or_b32 s52, s10, 6
	s_or_b32 s53, s10, 7
	s_or_b32 s54, s10, 8
	s_or_b32 s55, s10, 9
	s_or_b32 s56, s10, 10
	s_or_b32 s57, s10, 11
	s_or_b32 s58, s10, 12
	s_or_b32 s59, s10, 13
	s_or_b32 s60, s10, 14
	s_or_b32 s61, s10, 15
	.loc	1 1494 35                       ; ragged.py:1494:35
	s_sub_i32 s7, s26, s1
	s_sub_i32 s8, s27, s1
	s_sub_i32 s9, s42, s1
	s_sub_i32 s14, s43, s1
	s_sub_i32 s15, s51, s1
	s_sub_i32 s16, s52, s1
	s_sub_i32 s22, s53, s1
	s_sub_i32 s23, s54, s1
	s_sub_i32 s62, s55, s1
	s_sub_i32 s63, s56, s1
	s_sub_i32 s64, s57, s1
	s_sub_i32 s65, s58, s1
	s_sub_i32 s66, s59, s1
	s_sub_i32 s72, s60, s1
	s_sub_i32 s73, s61, s1
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	s_cmp_lt_i32 s7, s6
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v49, s10, v85
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s11, -1, 0
	s_cmp_lt_i32 s8, s6
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v50, s10, v86
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s12, -1, 0
	s_cmp_lt_i32 s9, s6
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v115, s10, v87
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s13, -1, 0
	s_cmp_lt_i32 s14, s6
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v116, s10, v88
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s15, s6
	.loc	1 1494 35 is_stmt 0             ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v117, s1, v49
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s16, s6
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v118, s1, v50
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s22, s6
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v119, s1, v115
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s22, -1, 0
	s_cmp_lt_i32 s23, s6
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v120, s1, v116
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s62, s6
	v_cmp_gt_i32_e64 s1, s6, v117
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s63, s6
	v_cmp_gt_i32_e64 s3, s6, v118
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s64, s6
	v_cmp_gt_i32_e64 s4, s6, v119
	s_cselect_b32 s69, -1, 0
	s_cmp_lt_i32 s65, s6
	v_cmp_gt_i32_e64 s5, s6, v120
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s66, s6
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s7, s49, v50
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s72, s6
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s8, s49, v115
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s73, s6
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s6, s49, v49
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s73, -1, 0
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cmp_eq_u32 s10, s49
	v_cmp_eq_u32_e64 s9, s49, v116
	s_cselect_b32 s62, -1, 0
	s_cmp_eq_u32 s26, s49
	s_cselect_b32 s74, -1, 0
	s_cmp_eq_u32 s27, s49
	s_cselect_b32 s75, -1, 0
	s_cmp_eq_u32 s42, s49
	s_cselect_b32 s76, -1, 0
	s_cmp_eq_u32 s43, s49
	s_cselect_b32 s77, -1, 0
	s_cmp_eq_u32 s51, s49
	s_cselect_b32 s78, -1, 0
	s_cmp_eq_u32 s52, s49
	s_cselect_b32 s79, -1, 0
	s_cmp_eq_u32 s53, s49
	s_cselect_b32 s80, -1, 0
	s_cmp_eq_u32 s54, s49
	s_cselect_b32 s81, -1, 0
	s_cmp_eq_u32 s55, s49
	s_cselect_b32 s82, -1, 0
	s_cmp_eq_u32 s56, s49
	s_cselect_b32 s83, -1, 0
	s_cmp_eq_u32 s57, s49
	s_cselect_b32 s84, -1, 0
	s_cmp_eq_u32 s58, s49
	s_cselect_b32 s85, -1, 0
	s_cmp_eq_u32 s59, s49
	s_cselect_b32 s86, -1, 0
	s_cmp_eq_u32 s60, s49
	s_cselect_b32 s87, -1, 0
	s_cmp_eq_u32 s61, s49
	s_cselect_b32 s88, -1, 0
	.loc	1 1495 36 is_stmt 0             ; ragged.py:1495:36
	s_and_b32 s27, s74, s48
	.loc	1 1496 46 is_stmt 1             ; ragged.py:1496:46
	s_add_i32 s74, s10, s45
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s63, s6, s48
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_mul_i32 s6, s74, s18
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s1, s0, s1
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_add_i32 s6, s6, s31
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, s0, s3
	v_add_nc_u32_e32 v49, s6, v45
	v_add_nc_u32_e32 v50, s6, v100
	v_add_nc_u32_e32 v115, s6, v101
	s_and_b32 s4, s0, s4
	v_add_nc_u32_e32 v116, s6, v48
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v49, 0x80000000, v49, s1
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s5, s0, s5
	.loc	1 1497 46 is_stmt 1             ; ragged.py:1497:46
	s_mul_i32 s74, s74, s19
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s64, s7, s48
	s_and_b32 s66, s9, s48
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v117, v49, s[36:39], 0 offen
	v_cndmask_b32_e64 v49, 0x80000000, v50, s3
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v50, s74, v92
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s7, vcc_lo, s11
	s_and_b32 s9, vcc_lo, s13
	s_and_b32 s10, vcc_lo, s14
	.loc	1 1496 38 is_stmt 1             ; ragged.py:1496:38
	buffer_load_u8 v118, v49, s[36:39], 0 offen
	v_cndmask_b32_e64 v49, 0x80000000, v115, s4
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s13, vcc_lo, s22
	s_and_b32 s14, vcc_lo, s23
	.loc	1 1497 38 is_stmt 0             ; ragged.py:1497:38
	s_mov_b32 s22, s38
	s_mov_b32 s23, s39
	.loc	1 1496 38 is_stmt 1             ; ragged.py:1496:38
	buffer_load_u8 v115, v49, s[36:39], 0 offen
	v_cndmask_b32_e64 v49, 0x80000000, v116, s5
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v119, s74, v93
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s65, s8, s48
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s8, vcc_lo, s12
	.loc	1 1497 46 is_stmt 0             ; ragged.py:1497:46
	v_add_nc_u32_e32 v120, s74, v35
	.loc	1 1496 38 is_stmt 1             ; ragged.py:1496:38
	buffer_load_u8 v116, v49, s[36:39], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v49, s74, v32
	v_add_nc_u32_e32 v121, s74, v94
	v_add_nc_u32_e32 v122, s74, v36
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s11, vcc_lo, s15
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v123, s74, v37
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s12, vcc_lo, s16
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v124, s74, v38
	v_add_nc_u32_e32 v125, s74, v95
	v_add_nc_u32_e32 v126, s74, v39
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v133, v49, s[20:23], 0 offen
	v_cndmask_b32_e64 v49, 0x80000000, v50, s7
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s15, vcc_lo, s67
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v127, s74, v40
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s16, vcc_lo, s68
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v128, s74, v41
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v134, v49, s[20:23], 0 offen
	v_cndmask_b32_e64 v49, 0x80000000, v119, s8
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s6, vcc_lo, s69
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v129, s74, v42
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s5, vcc_lo, s70
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v130, s74, v43
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v135, v49, s[20:23], 0 offen
	v_cndmask_b32_e64 v49, 0x80000000, v120, s9
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s4, vcc_lo, s71
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v131, s74, v44
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, vcc_lo, s72
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v132, s74, v47
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v136, v49, s[20:23], 0 offen
	v_cndmask_b32_e64 v49, 0x80000000, v121, s10
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s73
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s26, s62, s48
	s_and_b32 s42, s75, s48
	s_and_b32 s43, s76, s48
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v137, v49, s[20:23], 0 offen
	v_cndmask_b32_e64 v49, 0x80000000, v122, s11
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s51, s77, s48
	s_and_b32 s52, s78, s48
	s_and_b32 s53, s79, s48
	s_and_b32 s54, s80, s48
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v138, v49, s[20:23], 0 offen
	v_cndmask_b32_e64 v49, 0x80000000, v123, s12
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s55, s81, s48
	s_and_b32 s56, s82, s48
	s_and_b32 s57, s83, s48
	s_and_b32 s58, s84, s48
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v123, v49, s[20:23], 0 offen
	v_cndmask_b32_e64 v49, 0x80000000, v124, s13
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s59, s85, s48
	s_and_b32 s60, s86, s48
	s_and_b32 s61, s87, s48
	s_and_b32 s62, s88, s48
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v124, v49, s[20:23], 0 offen
	v_cndmask_b32_e64 v49, 0x80000000, v125, s14
	buffer_load_u8 v125, v49, s[20:23], 0 offen
	v_cndmask_b32_e64 v49, 0x80000000, v126, s15
	buffer_load_u8 v126, v49, s[20:23], 0 offen
	v_cndmask_b32_e64 v49, 0x80000000, v127, s16
	buffer_load_u8 v127, v49, s[20:23], 0 offen
	v_cndmask_b32_e64 v49, 0x80000000, v128, s6
	buffer_load_u8 v128, v49, s[20:23], 0 offen
	v_cndmask_b32_e64 v49, 0x80000000, v129, s5
	buffer_load_u8 v129, v49, s[20:23], 0 offen
	v_cndmask_b32_e64 v49, 0x80000000, v130, s4
	buffer_load_u8 v130, v49, s[20:23], 0 offen
	v_cndmask_b32_e64 v49, 0x80000000, v131, s3
	buffer_load_u8 v139, v49, s[20:23], 0 offen
	v_cndmask_b32_e64 v49, 0x80000000, v132, s1
	buffer_load_u8 v140, v49, s[20:23], 0 offen
	.loc	1 1498 38                       ; ragged.py:1498:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1498 66 is_stmt 0             ; ragged.py:1498:66
	s_waitcnt vmcnt(19)
	v_and_b16 v49.l, v117.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v49.l, v117.l, v49.l, s63
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(18)
	v_and_b16 v49.h, v118.l, 15
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v49.h, v118.l, v49.h, s64
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(17)
	v_and_b16 v50.l, v115.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v50.l, v115.l, v50.l, s65
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(16)
	v_and_b16 v50.h, v116.l, 15
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v50.h, v116.l, v50.h, s66
	ds_store_b8 v109, v49
	ds_store_b8_d16_hi v109, v49 offset:128
	ds_store_b8 v109, v50 offset:256
	ds_store_b8_d16_hi v109, v50 offset:384
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1499 66 is_stmt 1             ; ragged.py:1499:66
	s_waitcnt vmcnt(15)
	v_and_b16 v115.l, v133.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v131.l, v133.l, v115.l, s26
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(14)
	v_and_b16 v115.h, v134.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v131.h, v134.l, v115.h, s27
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(13)
	v_and_b16 v116.l, v135.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v132.l, v135.l, v116.l, s42
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(12)
	v_and_b16 v116.h, v136.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v132.h, v136.l, v116.h, s43
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(11)
	v_and_b16 v117.l, v137.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v133.l, v137.l, v117.l, s51
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(10)
	v_and_b16 v117.h, v138.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v133.h, v138.l, v117.h, s52
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(9)
	v_and_b16 v118.l, v123.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v134.l, v123.l, v118.l, s53
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(8)
	v_and_b16 v118.h, v124.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v134.h, v124.l, v118.h, s54
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(7)
	v_and_b16 v119.l, v125.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v135.l, v125.l, v119.l, s55
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(6)
	v_and_b16 v119.h, v126.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v135.h, v126.l, v119.h, s56
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(5)
	v_and_b16 v120.l, v127.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v136.l, v127.l, v120.l, s57
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(4)
	v_and_b16 v120.h, v128.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v136.h, v128.l, v120.h, s58
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(3)
	v_and_b16 v121.l, v129.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v137.l, v129.l, v121.l, s59
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(2)
	v_and_b16 v121.h, v130.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v137.h, v130.l, v121.h, s60
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(1)
	v_and_b16 v122.l, v139.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v138.l, v139.l, v122.l, s61
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v122.h, v140.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v138.h, v140.l, v122.h, s62
	.loc	1 1500 35 is_stmt 1             ; ragged.py:1500:35
	ds_load_u8 v49, v89 offset:96
	ds_load_u8 v50, v89 offset:64
	ds_load_u8 v139, v89 offset:224
	ds_load_u8 v140, v89 offset:192
	ds_load_u8 v141, v89 offset:160
	ds_load_u8 v142, v89 offset:128
	ds_load_u8 v143, v89 offset:352
	ds_load_u8 v144, v89 offset:320
	ds_load_u8 v145, v89 offset:288
	ds_load_u8 v146, v89 offset:256
	ds_load_u8 v147, v89 offset:480
	ds_load_u8 v148, v89 offset:448
	ds_load_u8 v149, v89 offset:416
	ds_load_u8 v150, v89 offset:384
	ds_load_u8 v115, v89 offset:112
	ds_load_u8 v116, v89 offset:80
	ds_load_u8 v117, v89 offset:240
	ds_load_u8 v118, v89 offset:208
	ds_load_u8 v119, v89 offset:176
	ds_load_u8 v121, v89 offset:144
	ds_load_u8 v151, v89
	ds_load_u8 v125, v89 offset:16
	ds_load_u8 v152, v89 offset:32
	ds_load_u8 v126, v89 offset:48
	ds_load_u8 v120, v89 offset:368
	ds_load_u8 v122, v89 offset:336
	ds_load_u8 v123, v89 offset:304
	ds_load_u8 v124, v89 offset:272
	ds_load_u8 v127, v89 offset:496
	ds_load_u8 v128, v89 offset:464
	ds_load_u8 v129, v89 offset:432
	ds_load_u8 v130, v89 offset:400
	.loc	1 1499 38                       ; ragged.py:1499:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v109, v131
	ds_store_b8_d16_hi v109, v131 offset:128
	ds_store_b8 v109, v132 offset:256
	ds_store_b8_d16_hi v109, v132 offset:384
	ds_store_b8 v109, v133 offset:512
	ds_store_b8_d16_hi v109, v133 offset:640
	ds_store_b8 v109, v134 offset:768
	ds_store_b8_d16_hi v110, v134
	ds_store_b8 v109, v135 offset:1024
	ds_store_b8_d16_hi v109, v135 offset:1152
	ds_store_b8 v109, v136 offset:1280
	ds_store_b8_d16_hi v109, v136 offset:1408
	ds_store_b8 v109, v137 offset:1536
	ds_store_b8_d16_hi v109, v137 offset:1664
	ds_store_b8 v109, v138 offset:1792
	ds_store_b8_d16_hi v111, v138
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_perm_b32 v131, v142, v141, 0xc0c0004
	v_perm_b32 v132, v140, v139, 0xc0c0004
	v_perm_b32 v49, v50, v49, 0xc0c0004
	.loc	1 1499 38                       ; ragged.py:1499:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_perm_b32 v115, v116, v115, 0xc0c0004
	v_lshl_or_b32 v132, v132, 16, v131
	v_perm_b32 v50, v151, v152, 0xc0c0004
	v_perm_b32 v116, v125, v126, 0xc0c0004
	v_perm_b32 v119, v121, v119, 0xc0c0004
	v_perm_b32 v117, v118, v117, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v131, v49, 16, v50
	ds_load_u8 v49, v112 offset:640
	ds_load_u8 v50, v112 offset:512
	v_lshl_or_b32 v116, v115, 16, v116
	v_perm_b32 v118, v128, v127, 0xc0c0004
	v_perm_b32 v115, v130, v129, 0xc0c0004
	v_lshl_or_b32 v117, v117, 16, v119
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v119, v118, 16, v115
	v_perm_b32 v115, v124, v123, 0xc0c0004
	v_perm_b32 v118, v122, v120, 0xc0c0004
	v_lshl_or_b32 v118, v118, 16, v115
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v112 offset:896
	ds_load_u8 v133, v112 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v133, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v134, v50, 16, v49
	ds_load_u8 v49, v112 offset:128
	ds_load_u8 v50, v112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v112 offset:384
	ds_load_u8 v133, v112 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v133, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v133, v50, 16, v49
	v_perm_b32 v49, v150, v149, 0xc0c0004
	v_perm_b32 v50, v148, v147, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[24:31], v[133:134], v[131:132], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[133:134], v[116:117], v[8:15] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v136, v50, 16, v49
	v_perm_b32 v49, v146, v145, 0xc0c0004
	v_perm_b32 v50, v144, v143, 0xc0c0004
	v_lshl_or_b32 v135, v50, 16, v49
	ds_load_u8 v49, v112 offset:1664
	ds_load_u8 v50, v112 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v112 offset:1920
	ds_load_u8 v137, v112 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v137, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v49, v112 offset:1152
	ds_load_u8 v137, v112 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v137, v49, 0xc0c0004
	ds_load_u8 v137, v112 offset:1408
	ds_load_u8 v138, v112 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v137, 16, v49
	ds_load_u8 v137, v112 offset:704
	ds_load_u8 v138, v112 offset:576
	v_wmma_i32_16x16x16_iu4 v[24:31], v[49:50], v[135:136], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[49:50], v[118:119], v[8:15] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v112 offset:960
	ds_load_u8 v139, v112 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v138, v138, 16, v137
	ds_load_u8 v137, v112 offset:192
	ds_load_u8 v139, v112 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v139, v137, 0xc0c0004
	ds_load_u8 v139, v112 offset:448
	ds_load_u8 v140, v112 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v137, v139, 16, v137
	v_wmma_i32_16x16x16_iu4 v[16:23], v[137:138], v[131:132], v[16:23] neg_lo:[1,1,0]
	ds_load_u8 v131, v112 offset:1728
	ds_load_u8 v132, v112 offset:1600
	v_wmma_i32_16x16x16_iu4 v[0:7], v[137:138], v[116:117], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	ds_load_u8 v132, v112 offset:1984
	ds_load_u8 v139, v112 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v139, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v132, v132, 16, v131
	ds_load_u8 v131, v112 offset:1216
	ds_load_u8 v139, v112 offset:1088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v139, v131, 0xc0c0004
	ds_load_u8 v139, v112 offset:1472
	ds_load_u8 v140, v112 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v131, v139, 16, v131
	v_wmma_i32_16x16x16_iu4 v[16:23], v[131:132], v[135:136], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[131:132], v[118:119], v[0:7] neg_lo:[1,1,0]
	s_branch .LBB0_5
.LBB0_11:                               ; %Flow211
	.loc	1 0 35 is_stmt 0                ; ragged.py:0:35
	v_mov_b32_e32 v17, v67
.LBB0_12:                               ; %._crit_edge45
	.loc	1 1310 36 is_stmt 1             ; ragged.py:1310:36
	v_lshrrev_b32_e32 v9, 1, v63
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v20, s19, v51
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_bfe_u32 v21, v81, 16, 1
	v_bfe_u32 v23, v82, 16, 1
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s3, s33, s19
	.loc	1 1310 36 is_stmt 1             ; ragged.py:1310:36
	v_or_b32_e32 v0, 0x47, v9
	v_or_b32_e32 v4, 0x43, v9
	v_or_b32_e32 v1, 0x46, v9
	v_or_b32_e32 v2, 0x45, v9
	v_or_b32_e32 v3, 0x44, v9
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v7, s30, v0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v6, 0x41, v9
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v12, s30, v4
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v5, 0x42, v9
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v8, s30, v1
	v_or_b32_e32 v10, s30, v2
	v_or_b32_e32 v11, s30, v3
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s19, v7
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v7, 64, v9
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s5, s19, v12
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v12, s30, v6
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v14, 3, v9
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s19, v8
	v_cmp_gt_i32_e64 s1, s19, v10
	v_cmp_gt_i32_e64 s4, s19, v11
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v11, s30, v5
	v_or_b32_e32 v13, s30, v7
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v8, 7, v9
	v_or_b32_e32 v10, 6, v9
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s7, s19, v12
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v12, 4, v9
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v19, s30, v14
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s6, s19, v11
	v_cmp_gt_i32_e64 s8, s19, v13
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v13, s30, v8
	v_or_b32_e32 v15, s30, v10
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v11, 5, v9
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v18, s30, v12
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v16, 1, v9
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s13, s19, v19
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v19, s30, v9
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s9, s19, v13
	v_cmp_gt_i32_e64 s10, s19, v15
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v13, s30, v11
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v15, 2, v9
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s12, s19, v18
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v18, s30, v16
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s16, s19, v19
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v19, v84, 16, 1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s11, s19, v13
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v13, s30, v15
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add3_u32 v20, s3, s30, v20
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_bfe_u32 v22, v83, 16, 1
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s15, s19, v18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add3_u32 v18, v81, v21, 0x7fff
	v_cmp_o_f32_e64 s3, v81, v81
	v_add3_u32 v19, v84, v19, 0x7fff
	v_cmp_o_f32_e64 s18, v84, v84
	v_add3_u32 v23, v82, v23, 0x7fff
	v_cmp_o_f32_e64 s20, v82, v82
	v_bfe_u32 v24, v80, 16, 1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s14, s19, v13
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_lshl_add_u32 v13, s19, 4, v20
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_add3_u32 v22, v83, v22, 0x7fff
	v_cmp_o_f32_e64 s19, v83, v83
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s3
	v_cndmask_b16 v18.h, 0x7fff, v19.h, s18
	v_cndmask_b16 v19.h, 0x7fff, v23.h, s20
	v_add3_u32 v23, v80, v24, 0x7fff
	v_bfe_u32 v24, v78, 16, 1
	v_bfe_u32 v25, v77, 16, 1
	v_cndmask_b16 v19.l, 0x7fff, v22.h, s19
	v_bfe_u32 v22, v79, 16, 1
	v_cmp_o_f32_e64 s3, v80, v80
	v_add3_u32 v24, v78, v24, 0x7fff
	v_cmp_o_f32_e64 s19, v78, v78
	v_add3_u32 v25, v77, v25, 0x7fff
	v_cmp_o_f32_e64 s20, v77, v77
	v_add3_u32 v22, v79, v22, 0x7fff
	v_cmp_o_f32_e64 s18, v79, v79
	v_cndmask_b16 v22.l, 0x7fff, v23.h, s3
	v_bfe_u32 v23, v76, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s19
	v_cndmask_b16 v24.h, 0x7fff, v25.h, s20
	v_bfe_u32 v25, v75, 16, 1
	v_bfe_u32 v27, v73, 16, 1
	v_bfe_u32 v26, v74, 16, 1
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s18
	v_add3_u32 v23, v76, v23, 0x7fff
	v_cmp_o_f32_e64 s3, v76, v76
	v_add3_u32 v25, v75, v25, 0x7fff
	v_cmp_o_f32_e64 s18, v75, v75
	v_add3_u32 v27, v73, v27, 0x7fff
	v_cmp_o_f32_e64 s20, v73, v73
	v_bfe_u32 v28, v72, 16, 1
	v_add3_u32 v26, v74, v26, 0x7fff
	v_cmp_o_f32_e64 s19, v74, v74
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s3
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s18
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s20
	v_add3_u32 v27, v72, v28, 0x7fff
	v_bfe_u32 v28, v70, 16, 1
	v_bfe_u32 v29, v69, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v26.h, s19
	v_bfe_u32 v26, v71, 16, 1
	v_cmp_o_f32_e64 s3, v72, v72
	v_add3_u32 v28, v70, v28, 0x7fff
	v_cmp_o_f32_e64 s19, v70, v70
	v_add3_u32 v29, v69, v29, 0x7fff
	v_cmp_o_f32_e64 s20, v69, v69
	v_add3_u32 v26, v71, v26, 0x7fff
	v_cmp_o_f32_e64 s18, v71, v71
	v_cndmask_b16 v26.l, 0x7fff, v27.h, s3
	v_bfe_u32 v27, v68, 16, 1
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s19
	v_cndmask_b16 v28.h, 0x7fff, v29.h, s20
	v_bfe_u32 v29, v66, 16, 1
	v_bfe_u32 v31, v64, 16, 1
	v_bfe_u32 v30, v65, 16, 1
	v_cndmask_b16 v26.h, 0x7fff, v26.h, s18
	v_add3_u32 v27, v68, v27, 0x7fff
	v_cmp_o_f32_e64 s3, v68, v68
	v_add3_u32 v29, v66, v29, 0x7fff
	v_cmp_o_f32_e64 s18, v66, v66
	v_add3_u32 v31, v64, v31, 0x7fff
	v_cmp_o_f32_e64 s20, v64, v64
	v_bfe_u32 v32, v62, 16, 1
	v_add3_u32 v30, v65, v30, 0x7fff
	v_cmp_o_f32_e64 s19, v65, v65
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s3
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s18
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s20
	v_add3_u32 v31, v62, v32, 0x7fff
	v_bfe_u32 v32, v60, 16, 1
	v_bfe_u32 v33, v59, 16, 1
	v_cndmask_b16 v29.l, 0x7fff, v30.h, s19
	v_bfe_u32 v30, v61, 16, 1
	v_cmp_o_f32_e64 s3, v62, v62
	v_add3_u32 v32, v60, v32, 0x7fff
	v_cmp_o_f32_e64 s19, v60, v60
	v_add3_u32 v33, v59, v33, 0x7fff
	v_cmp_o_f32_e64 s20, v59, v59
	v_add3_u32 v30, v61, v30, 0x7fff
	v_cmp_o_f32_e64 s18, v61, v61
	v_cndmask_b16 v30.l, 0x7fff, v31.h, s3
	v_bfe_u32 v31, v58, 16, 1
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s19
	v_cndmask_b16 v32.h, 0x7fff, v33.h, s20
	v_bfe_u32 v33, v57, 16, 1
	v_bfe_u32 v35, v55, 16, 1
	v_bfe_u32 v34, v56, 16, 1
	v_cndmask_b16 v30.h, 0x7fff, v30.h, s18
	v_add3_u32 v31, v58, v31, 0x7fff
	v_cmp_o_f32_e64 s3, v58, v58
	v_add3_u32 v33, v57, v33, 0x7fff
	v_cmp_o_f32_e64 s18, v57, v57
	v_add3_u32 v35, v55, v35, 0x7fff
	v_cmp_o_f32_e64 s20, v55, v55
	v_bfe_u32 v36, v54, 16, 1
	v_add3_u32 v34, v56, v34, 0x7fff
	v_cmp_o_f32_e64 s19, v56, v56
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s3
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s18
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s20
	v_add3_u32 v35, v54, v36, 0x7fff
	v_bfe_u32 v36, v52, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v34.h, s19
	v_bfe_u32 v34, v53, 16, 1
	v_cmp_o_f32_e64 s3, v54, v54
	v_bfe_u32 v37, v46, 16, 1
	v_add3_u32 v36, v52, v36, 0x7fff
	v_cmp_o_f32_e64 s19, v52, v52
	v_add3_u32 v34, v53, v34, 0x7fff
	v_cmp_o_f32_e64 s20, v46, v46
	v_add3_u32 v37, v46, v37, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s3
	v_cmp_eq_u32_e64 s3, 0, v17
	v_cndmask_b16 v17.l, 0x7fff, v36.h, s19
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add_lshl_u32 v20, v20, v9, 1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b32_e32 v36, 0x5410
	v_cndmask_b16 v17.h, 0x7fff, v37.h, s20
	v_cndmask_b32_e64 v35, v22, v18, s3
	v_cndmask_b32_e64 v18, v18, v22, s3
	v_cndmask_b32_e64 v22, v24, v19, s3
	v_cndmask_b32_e64 v19, v19, v24, s3
	v_cndmask_b32_e64 v24, v26, v23, s3
	v_cndmask_b32_e64 v23, v23, v26, s3
	v_cndmask_b32_e64 v26, v28, v25, s3
	v_dual_mov_b32 v37, 0x7632 :: v_dual_add_nc_u32 v50, 2, v20
	v_cndmask_b32_e64 v25, v25, v28, s3
	v_cndmask_b32_e64 v28, v30, v27, s3
	v_cndmask_b32_e64 v27, v27, v30, s3
	v_add_nc_u32_e32 v51, 4, v20
	v_cndmask_b32_e64 v30, 0x1054, v36, s3
	v_cndmask_b32_e64 v36, 0x3276, v37, s3
	v_cmp_o_f32_e64 s18, v53, v53
	v_cndmask_b32_e64 v37, v32, v29, s3
	v_cndmask_b32_e64 v29, v29, v32, s3
	v_lshl_or_b32 v30, v30, 8, v30
	v_lshl_or_b32 v36, v36, 8, v36
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s18
	s_mov_b32 s18, 0x76543210
	v_mov_b16_e32 v21.h, 0
	v_and_b32_e32 v30, 0x540054, v30
	v_and_b32_e32 v36, 0x760076, v36
	v_cndmask_b32_e64 v32, v34, v31, s3
	v_cndmask_b32_e64 v31, v31, v34, s3
	v_cndmask_b32_e64 v34, v17, v33, s3
	v_lshl_or_b32 v30, v30, 4, v30
	v_cndmask_b32_e64 v17, v33, v17, s3
	v_permlanex16_b32 v18, v18, s18, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v33, v36, 4, v36
	v_permlanex16_b32 v19, v19, s18, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v30, 0x5040504, v30
	v_permlanex16_b32 v23, v23, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v25, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v27, s18, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v33, 0x7060706, v33
	v_permlanex16_b32 v29, v29, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v31, s18, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v36, v18, v35, v30
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s3, s17, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v18, v18, v35, v33
	v_cndmask_b32_e64 v52, 0x80000000, v20, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s17, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v35, v19, v22, v30
	v_cndmask_b32_e64 v50, 0x80000000, v50, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s17, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v19, v19, v22, v33
	v_perm_b32 v22, v23, v24, v30
	v_perm_b32 v23, v23, v24, v33
	v_perm_b32 v24, v25, v26, v30
	v_perm_b32 v25, v25, v26, v33
	v_perm_b32 v26, v27, v28, v30
	v_perm_b32 v27, v27, v28, v33
	v_perm_b32 v28, v29, v37, v30
	v_perm_b32 v29, v29, v37, v33
	v_perm_b32 v37, v31, v32, v30
	v_perm_b32 v31, v31, v32, v33
	v_mov_b16_e32 v32.l, v36.h
	v_mov_b16_e32 v32.h, v21.h
	s_waitcnt lgkmcnt(0)
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	v_cndmask_b32_e64 v51, 0x80000000, v51, s3
	buffer_store_b16 v36, v52, s[28:31], 0 offen
	v_add_nc_u32_e32 v36, 6, v20
	v_mov_b16_e32 v21.l, v18.h
	s_clause 0x1
	buffer_store_b16 v32, v50, s[28:31], 0 offen
	buffer_store_b16 v18, v51, s[28:31], 0 offen
	v_add_nc_u32_e32 v18, 8, v20
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s17, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_permlanex16_b32 v17, v17, s18, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v32, 0x80000000, v36, s3
	v_add_nc_u32_e32 v36, 10, v20
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s17, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_nc_u32_e32 v50, 12, v20
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s17, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v30, v17, v34, v30
	v_cndmask_b32_e64 v36, 0x80000000, v36, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s17, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v17, v17, v34, v33
	v_mov_b16_e32 v34.l, v35.h
	v_mov_b16_e32 v34.h, v21.h
	v_cndmask_b32_e64 v50, 0x80000000, v50, s3
	s_clause 0x1
	buffer_store_b16 v21, v32, s[28:31], 0 offen
	buffer_store_b16 v35, v18, s[28:31], 0 offen
	v_add_nc_u32_e32 v18, 14, v20
	v_mov_b16_e32 v33.l, v19.h
	s_clause 0x1
	buffer_store_b16 v34, v36, s[28:31], 0 offen
	buffer_store_b16 v19, v50, s[28:31], 0 offen
	v_add_nc_u32_e32 v19, 0x80, v20
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s17, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v33.h, v21.h
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s17, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v38.h, v21.h
	v_mov_b16_e32 v39.h, v21.h
	v_mov_b16_e32 v40.h, v21.h
	v_mov_b16_e32 v41.h, v21.h
	v_mov_b16_e32 v42.h, v21.h
	v_mov_b16_e32 v43.h, v21.h
	v_mov_b16_e32 v44.h, v21.h
	v_mov_b16_e32 v45.h, v21.h
	v_mov_b16_e32 v46.h, v21.h
	v_mov_b16_e32 v47.h, v21.h
	v_mov_b16_e32 v48.h, v21.h
	v_mov_b16_e32 v49.h, v21.h
	v_add_nc_u32_e32 v21, 0x82, v20
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	v_add_nc_u32_e32 v32, 0x84, v20
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s17, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v33, v18, s[28:31], 0 offen
	buffer_store_b16 v22, v19, s[28:31], 0 offen
	v_add_nc_u32_e32 v18, 0x86, v20
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s17, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v39.l, v22.h
	v_add_nc_u32_e32 v19, 0x88, v20
	v_cndmask_b32_e64 v32, 0x80000000, v32, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s17, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v38.l, v23.h
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s17, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v39, v21, s[28:31], 0 offen
	buffer_store_b16 v23, v32, s[28:31], 0 offen
	v_add_nc_u32_e32 v21, 0x8a, v20
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	v_add_nc_u32_e32 v22, 0x8c, v20
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s17, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v38, v18, s[28:31], 0 offen
	buffer_store_b16 v24, v19, s[28:31], 0 offen
	v_add_nc_u32_e32 v18, 0x8e, v20
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s17, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v9, v13, v9, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s17, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v40.l, v25.h
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v41.l, v24.h
	v_add_lshl_u32 v16, v13, v16, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_add_lshl_u32 v15, v13, v15, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x3
	buffer_store_b16 v41, v21, s[28:31], 0 offen
	buffer_store_b16 v25, v22, s[28:31], 0 offen
	buffer_store_b16 v40, v18, s[28:31], 0 offen
	buffer_store_b16 v26, v9, s[28:31], 0 offen
	v_add_lshl_u32 v9, v13, v14, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v12, v13, v12, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v11, v13, v11, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v10, v13, v10, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v8, v13, v8, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v7, v13, v7, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v6, v13, v6, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v5, v13, v5, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v4, v13, v4, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v13, v3, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v13, v2, 1
	v_add_lshl_u32 v1, v13, v1, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v0, v13, v0, 1
	v_mov_b16_e32 v42.l, v27.h
	v_mov_b16_e32 v43.l, v26.h
	v_mov_b16_e32 v44.l, v29.h
	v_mov_b16_e32 v45.l, v28.h
	v_mov_b16_e32 v46.l, v31.h
	v_mov_b16_e32 v47.l, v37.h
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s2, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, s2, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v49.l, v30.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	v_mov_b16_e32 v48.l, v17.h
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0xe
	buffer_store_b16 v43, v16, s[28:31], 0 offen
	buffer_store_b16 v27, v15, s[28:31], 0 offen
	buffer_store_b16 v42, v9, s[28:31], 0 offen
	buffer_store_b16 v28, v12, s[28:31], 0 offen
	buffer_store_b16 v45, v11, s[28:31], 0 offen
	buffer_store_b16 v29, v10, s[28:31], 0 offen
	buffer_store_b16 v44, v8, s[28:31], 0 offen
	buffer_store_b16 v37, v7, s[28:31], 0 offen
	buffer_store_b16 v47, v6, s[28:31], 0 offen
	buffer_store_b16 v31, v5, s[28:31], 0 offen
	buffer_store_b16 v46, v4, s[28:31], 0 offen
	buffer_store_b16 v30, v3, s[28:31], 0 offen
	buffer_store_b16 v49, v2, s[28:31], 0 offen
	buffer_store_b16 v17, v1, s[28:31], 0 offen
	buffer_store_b16 v48, v0, s[28:31], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 153
		.amdhsa_next_free_sgpr 89
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.num_vgpr, 153
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.numbered_sgpr, 89
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9328
; TotalNumSgprs: 91
; NumVgprs: 153
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 19
; NumSGPRsForWavesPerEU: 91
; NumVGPRsForWavesPerEU: 153
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     91
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     153
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
