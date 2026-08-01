	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
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
	v_and_b32_e32 v67, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
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
	s_ashr_i32 s5, s5, 7
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
	s_abs_i32 s9, s5
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s6, s6, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s7, s9
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s12, s6, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s6, 0, s9
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s12, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s7
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s4
	.loc	1 1513 37                       ; ragged.py:1513:37
	s_mul_i32 s28, s12, s18
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s8, s2
	s_xor_b32 s10, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	s_ashr_i32 s10, s10, 31
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s6, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s7, s6
	s_add_i32 s4, s7, s4
	s_load_b64 s[6:7], s[0:1], 0x20
	s_mul_hi_u32 s4, s8, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s4, s9
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s4, 1
	s_sub_i32 s13, s8, s9
	s_cmp_ge_u32 s8, s9
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s8, s13, s8
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s8, s9
	s_cselect_b32 s4, s11, s4
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s13, s12, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s4, s4, s10
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[8:9], s[12:13], 2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s10, s4, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s4, s10, s5
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s33, s10, 5
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s4, s2, s4
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s6, s8
	s_addc_u32 s7, s7, s9
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v1, s33, v67
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s13, s[6:7], 0x0
	s_mov_b32 s5, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v2, 16, v1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s17, s18, v1
	v_cmp_gt_i32_e64 s2, s18, v2
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s13, s13, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_gt_i32 s13, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge46_crit_edge
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s27, s33, s28
	s_lshl_b32 s26, s19, 4
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s5, -1
                                        ; implicit-def: $sgpr27
                                        ; implicit-def: $sgpr26
.LBB0_3:                                ; %Flow259
	s_load_b64 s[24:25], s[0:1], 0x28
	v_dual_mov_b32 v66, 0 :: v_dual_and_b32 v85, 0x70, v0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v95, 0
	v_mov_b32_e32 v98, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s16, s4, 7
	s_cbranch_vccnz .LBB0_10
; %bb.4:                                ; %.preheader.lr.ph
	v_dual_mov_b32 v98, 0 :: v_dual_and_b32 v1, 31, v0
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_lshrrev_b32_e32 v2, 5, v0
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v33, s16, v0
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x38
	s_load_b256 s[4:11], s[0:1], 0x0
	v_dual_mov_b32 v96, 0 :: v_dual_and_b32 v3, 0x60, v0
	v_mad_u64_u32 v[34:35], null, s18, v2, v[1:2]
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s3, s3, 5
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s29, s13, 1
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v99, 0, v67
	v_lshrrev_b32_e32 v3, 1, v3
	s_cmp_lt_i32 s3, 32
	v_mad_u64_u32 v[36:37], null, s18, 12, v[34:35]
	v_mad_u64_u32 v[37:38], null, s18, 20, v[34:35]
	v_mad_u64_u32 v[38:39], null, s18, 24, v[34:35]
	v_mad_u64_u32 v[39:40], null, s18, 28, v[34:35]
	v_mad_u64_u32 v[40:41], null, s19, 3, v[33:34]
	v_mad_u64_u32 v[41:42], null, s19, 5, v[33:34]
	v_mad_u64_u32 v[42:43], null, s19, 6, v[33:34]
	v_mad_u64_u32 v[43:44], null, s19, 7, v[33:34]
	v_mad_u64_u32 v[44:45], null, s19, 9, v[33:34]
	v_mad_u64_u32 v[45:46], null, s19, 10, v[33:34]
	v_mad_u64_u32 v[46:47], null, s19, 11, v[33:34]
	v_mad_u64_u32 v[47:48], null, s19, 12, v[33:34]
	v_mad_u64_u32 v[48:49], null, s19, 13, v[33:34]
	v_mad_u64_u32 v[49:50], null, s19, 14, v[33:34]
	v_mad_u64_u32 v[50:51], null, s19, 15, v[33:34]
	s_cselect_b32 s30, -1, 0
	v_mad_u64_u32 v[51:52], null, s19, 17, v[33:34]
	s_add_i32 s27, s33, s28
	v_mad_u64_u32 v[52:53], null, s19, 18, v[33:34]
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v5, s27, v67
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v108, v99, v3
	v_dual_mov_b32 v86, 0 :: v_dual_lshlrev_b32 v3, 5, v0
	v_mad_u64_u32 v[53:54], null, s19, 19, v[33:34]
	v_mad_u64_u32 v[54:55], null, s19, 20, v[33:34]
	v_mad_u64_u32 v[55:56], null, s19, 21, v[33:34]
	v_mad_u64_u32 v[56:57], null, s19, 22, v[33:34]
	v_mad_u64_u32 v[57:58], null, s19, 23, v[33:34]
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v1, s33, v1
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v8, 16, v5
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v109, v5, s23
	v_dual_mov_b32 v84, 0 :: v_dual_lshlrev_b32 v5, 2, v85
	v_dual_mov_b32 v82, 0 :: v_dual_lshlrev_b32 v9, 1, v0
	v_dual_mov_b32 v80, 0 :: v_dual_and_b32 v3, 32, v3
	v_mad_u64_u32 v[58:59], null, s19, 24, v[33:34]
	v_mad_u64_u32 v[59:60], null, s19, 25, v[33:34]
	v_mad_u64_u32 v[60:61], null, s19, 26, v[33:34]
	v_mad_u64_u32 v[61:62], null, s19, 27, v[33:34]
	v_mad_u64_u32 v[62:63], null, s19, 28, v[33:34]
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s1, s18, v1
	v_or_b32_e32 v1, 0x380, v0
	v_or_b32_e32 v2, 0x3f0, v0
	v_or_b32_e32 v4, 0x780, v0
	v_or_b32_e32 v6, 0xb80, v0
	v_or_b32_e32 v7, 0xf80, v0
	v_mul_lo_u32 v110, v8, s23
	v_dual_mov_b32 v93, 0 :: v_dual_and_b32 v8, 28, v9
	v_add3_u32 v3, 0, v5, v3
	v_cndmask_b32_e64 v5, 0, 1, s30
	v_dual_mov_b32 v78, 0 :: v_dual_lshlrev_b32 v9, 1, v85
	v_mad_u64_u32 v[63:64], null, s19, 29, v[33:34]
	v_mad_u64_u32 v[64:65], null, s19, 30, v[33:34]
	v_mad_u64_u32 v[65:66], null, s19, 31, v[33:34]
	s_lshl_b32 s26, s19, 4
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s19, v33
	v_lshl_add_u32 v100, s18, 2, v34
	v_lshl_add_u32 v101, s18, 3, v34
	.loc	1 1429 43                       ; ragged.py:1429:43
	s_mul_i32 s35, s12, s22
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s36, s12, s23
	v_lshl_add_u32 v102, s18, 4, v34
	s_mov_b32 s12, s4
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v103, s19, v33
	v_lshl_add_u32 v104, s19, 1, v33
	v_lshl_add_u32 v105, s19, 2, v33
	v_lshl_add_u32 v106, s19, 3, v33
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v107, s26, v33
	v_cmp_ne_u32_e64 s4, 1, v5
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v111, 0, v0
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v112, 0, v1
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v113, 0, v2
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v114, 0, v4
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v115, 0, v6
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v116, 0, v7
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v117, v3, v8
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v118, 0, v9
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v66, 0
	v_mov_b32_e32 v77, 0
	v_mov_b32_e32 v75, 0
	v_mov_b32_e32 v73, 0
	v_mov_b32_e32 v71, 0
	v_mov_b32_e32 v69, 0
	v_mov_b32_e32 v35, 0
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_add_i32 s29, s29, -1
	s_mov_b32 s34, 0
	s_and_b32 s13, s5, 0xffff
	s_and_b32 s21, s7, 0xffff
	s_mov_b32 s20, s6
	s_lshr_b32 s5, s29, 5
	s_mov_b32 s28, s8
	s_mov_b32 s29, s9
	s_mov_b32 s30, s14
	s_mov_b32 s31, s15
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s14
	s_mov_b32 s11, s15
	s_mov_b32 s6, 0
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s6, s34, s36
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v17, v109, s34, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s6, s6, s19
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v18, v110, s34, 1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v19, v33, s6, 1
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s7, s34, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v17, 0x80000000, v17, s17
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s6, s7, 5
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_lg_u32 s34, s5
	s_mov_b32 s34, s7
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x1
	buffer_load_u16 v17, v17, s[28:31], 0 offen
	buffer_load_u16 v18, v18, s[28:31], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	.loc	1 1524 21                       ; ragged.py:1524:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v17, 16, v17
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v29, 16, v18
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v31, v133, v17 :: v_dual_lshlrev_b32 v18, 16, v19
	v_mul_f32_e32 v30, v134, v17
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_store_b32 v117, v18
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v8, v8, v29
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[25:28], v118 offset:272
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v5, v5, v29
	v_mul_f32_e32 v135, v11, v29
	v_mul_f32_e32 v133, v13, v29
	v_mul_f32_e32 v119, v119, v17
	v_mul_f32_e32 v125, v125, v17
	v_mul_f32_e32 v126, v126, v17
	v_mul_f32_e32 v127, v127, v17
	v_mul_f32_e32 v128, v128, v17
	v_mul_f32_e32 v131, v131, v17
	v_mul_f32_e32 v129, v129, v17
	v_mul_f32_e32 v32, v132, v17
	v_mul_f32_e32 v132, v14, v29
	v_mul_f32_e32 v1, v1, v29
	v_mul_f32_e32 v134, v12, v29
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[11:14], v118 offset:256
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v2, v2, v29
	v_mul_f32_e32 v7, v7, v29
	v_mul_f32_e32 v130, v130, v17
	v_mul_f32_e32 v6, v6, v29
	v_mul_f32_e32 v4, v4, v29
	.loc	1 1525 17                       ; ragged.py:1525:17
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v66, v2, v27 :: v_dual_mul_f32 v9, v9, v29
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[21:24], v118 offset:16
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v3, v3, v29
	v_mul_f32_e32 v16, v16, v29
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_dual_fmac_f32 v68, v4, v25 :: v_dual_fmac_f32 v35, v1, v28
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v69, v3, v26
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v72, v7, v12
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v15, v15, v29
	v_mul_f32_e32 v121, v121, v17
	v_mul_f32_e32 v123, v123, v17
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_dual_fmac_f32 v73, v8, v11 :: v_dual_mul_f32 v10, v10, v29
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v120, v120, v17
	v_mul_f32_e32 v122, v122, v17
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_fmac_f32_e32 v84, v121, v26
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v124, v124, v17 :: v_dual_fmac_f32 v87, v123, v14
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[17:20], v118
	.loc	1 1525 17                       ; ragged.py:1525:17
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v77, v134, v21 :: v_dual_fmac_f32 v74, v9, v24
	v_fmac_f32_e32 v88, v124, v13
	v_dual_fmac_f32 v71, v6, v13 :: v_dual_fmac_f32 v70, v5, v14
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v76, v135, v22 :: v_dual_fmac_f32 v95, v30, v17
	v_dual_fmac_f32 v98, v31, v18 :: v_dual_fmac_f32 v81, v16, v17
	v_dual_fmac_f32 v80, v15, v18 :: v_dual_fmac_f32 v79, v132, v19
	v_fmac_f32_e32 v78, v133, v20
	v_fmac_f32_e32 v82, v119, v28
	v_dual_fmac_f32 v89, v125, v12 :: v_dual_fmac_f32 v90, v126, v11
	v_dual_fmac_f32 v91, v127, v24 :: v_dual_fmac_f32 v92, v128, v23
	v_dual_fmac_f32 v96, v131, v20 :: v_dual_fmac_f32 v93, v129, v22
	v_dual_fmac_f32 v97, v32, v19 :: v_dual_fmac_f32 v94, v130, v21
	v_fmac_f32_e32 v75, v10, v23
	v_dual_fmac_f32 v83, v120, v27 :: v_dual_fmac_f32 v86, v122, v25
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_10
.LBB0_6:                                ; %.preheader
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	.loc	1 1426 27 is_stmt 1             ; ragged.py:1426:27
	s_and_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v1, 0
	s_add_i32 s6, s6, s35
	s_mov_b32 s7, s3
	s_delay_alu instid0(VALU_DEP_1)
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
	.loc	1 1436 46 is_stmt 1             ; ragged.py:1436:46
	s_add_i32 s37, s6, s7
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_mov_b32 s22, s14
	.loc	1 1437 46 is_stmt 0             ; ragged.py:1437:46
	s_mul_i32 s38, s37, s19
	.loc	1 1436 46 is_stmt 1             ; ragged.py:1436:46
	s_mul_i32 s37, s37, s18
	.loc	1 1437 46                       ; ragged.py:1437:46
	v_add_nc_u32_e32 v119, s38, v33
	v_add_nc_u32_e32 v120, s38, v103
	v_add_nc_u32_e32 v121, s38, v104
	v_add_nc_u32_e32 v122, s38, v40
	.loc	1 1436 46                       ; ragged.py:1436:46
	s_add_i32 s37, s37, s33
	.loc	1 1437 46                       ; ragged.py:1437:46
	v_add_nc_u32_e32 v123, s38, v105
	v_add_nc_u32_e32 v124, s38, v41
	v_add_nc_u32_e32 v125, s38, v42
	v_add_nc_u32_e32 v126, s38, v43
	v_add_nc_u32_e32 v143, s38, v58
	v_add_nc_u32_e32 v144, s38, v59
	v_add_nc_u32_e32 v145, s38, v60
	v_add_nc_u32_e32 v146, s38, v61
	v_add_nc_u32_e32 v147, s38, v62
	v_add_nc_u32_e32 v148, s38, v63
	v_add_nc_u32_e32 v149, s38, v64
	v_add_nc_u32_e32 v150, s38, v65
	v_add_nc_u32_e32 v127, s38, v106
	v_add_nc_u32_e32 v128, s38, v44
	v_add_nc_u32_e32 v129, s38, v45
	v_add_nc_u32_e32 v130, s38, v46
	v_add_nc_u32_e32 v131, s38, v47
	v_add_nc_u32_e32 v132, s38, v48
	v_add_nc_u32_e32 v133, s38, v49
	v_add_nc_u32_e32 v134, s38, v50
	v_add_nc_u32_e32 v135, s38, v107
	v_add_nc_u32_e32 v136, s38, v51
	v_add_nc_u32_e32 v137, s38, v52
	v_add_nc_u32_e32 v138, s38, v53
	v_add_nc_u32_e32 v139, s38, v54
	v_add_nc_u32_e32 v140, s38, v55
	v_add_nc_u32_e32 v141, s38, v56
	v_add_nc_u32_e32 v142, s38, v57
	v_add_nc_u32_e32 v151, s37, v34
	v_add_nc_u32_e32 v152, s37, v100
	v_add_nc_u32_e32 v153, s37, v101
	v_add_nc_u32_e32 v154, s37, v36
	v_add_nc_u32_e32 v155, s37, v102
	v_add_nc_u32_e32 v156, s37, v37
	v_add_nc_u32_e32 v157, s37, v38
	v_add_nc_u32_e32 v158, s37, v39
	.loc	1 1437 38 is_stmt 0             ; ragged.py:1437:38
	v_cndmask_b32_e64 v119, 0x80000000, v119, s0
	v_cndmask_b32_e64 v120, 0x80000000, v120, s0
	v_cndmask_b32_e64 v121, 0x80000000, v121, s0
	s_mov_b32 s23, s15
	v_cndmask_b32_e64 v122, 0x80000000, v122, s0
	v_cndmask_b32_e64 v123, 0x80000000, v123, s0
	v_cndmask_b32_e64 v124, 0x80000000, v124, s0
	v_cndmask_b32_e64 v125, 0x80000000, v125, s0
	v_cndmask_b32_e64 v126, 0x80000000, v126, s0
	v_cndmask_b32_e64 v143, 0x80000000, v143, s0
	v_cndmask_b32_e64 v144, 0x80000000, v144, s0
	v_cndmask_b32_e64 v145, 0x80000000, v145, s0
	v_cndmask_b32_e64 v146, 0x80000000, v146, s0
	v_cndmask_b32_e64 v147, 0x80000000, v147, s0
	v_cndmask_b32_e64 v148, 0x80000000, v148, s0
	v_cndmask_b32_e64 v149, 0x80000000, v149, s0
	v_cndmask_b32_e64 v150, 0x80000000, v150, s0
	v_cndmask_b32_e64 v127, 0x80000000, v127, s0
	v_cndmask_b32_e64 v128, 0x80000000, v128, s0
	v_cndmask_b32_e64 v129, 0x80000000, v129, s0
	v_cndmask_b32_e64 v130, 0x80000000, v130, s0
	v_cndmask_b32_e64 v131, 0x80000000, v131, s0
	v_cndmask_b32_e64 v132, 0x80000000, v132, s0
	v_cndmask_b32_e64 v133, 0x80000000, v133, s0
	v_cndmask_b32_e64 v134, 0x80000000, v134, s0
	v_cndmask_b32_e64 v135, 0x80000000, v135, s0
	v_cndmask_b32_e64 v136, 0x80000000, v136, s0
	v_cndmask_b32_e64 v137, 0x80000000, v137, s0
	v_cndmask_b32_e64 v138, 0x80000000, v138, s0
	v_cndmask_b32_e64 v139, 0x80000000, v139, s0
	v_cndmask_b32_e64 v140, 0x80000000, v140, s0
	v_cndmask_b32_e64 v141, 0x80000000, v141, s0
	v_cndmask_b32_e64 v142, 0x80000000, v142, s0
	.loc	1 1436 38 is_stmt 1             ; ragged.py:1436:38
	v_cndmask_b32_e64 v151, 0x80000000, v151, s1
	v_cndmask_b32_e64 v152, 0x80000000, v152, s1
	v_cndmask_b32_e64 v153, 0x80000000, v153, s1
	v_cndmask_b32_e64 v154, 0x80000000, v154, s1
	v_cndmask_b32_e64 v155, 0x80000000, v155, s1
	v_cndmask_b32_e64 v156, 0x80000000, v156, s1
	v_cndmask_b32_e64 v157, 0x80000000, v157, s1
	v_cndmask_b32_e64 v158, 0x80000000, v158, s1
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_clause 0x1f
	buffer_load_u8 v175, v119, s[20:23], 0 offen
	buffer_load_u8 v176, v120, s[20:23], 0 offen
	buffer_load_u8 v177, v121, s[20:23], 0 offen
	buffer_load_u8 v178, v122, s[20:23], 0 offen
	buffer_load_u8 v179, v123, s[20:23], 0 offen
	buffer_load_u8 v180, v124, s[20:23], 0 offen
	buffer_load_u8 v181, v125, s[20:23], 0 offen
	buffer_load_u8 v182, v126, s[20:23], 0 offen
	buffer_load_u8 v183, v127, s[20:23], 0 offen
	buffer_load_u8 v184, v128, s[20:23], 0 offen
	buffer_load_u8 v185, v129, s[20:23], 0 offen
	buffer_load_u8 v186, v130, s[20:23], 0 offen
	buffer_load_u8 v187, v131, s[20:23], 0 offen
	buffer_load_u8 v188, v132, s[20:23], 0 offen
	buffer_load_u8 v189, v133, s[20:23], 0 offen
	buffer_load_u8 v190, v134, s[20:23], 0 offen
	buffer_load_u8 v191, v135, s[20:23], 0 offen
	buffer_load_u8 v192, v136, s[20:23], 0 offen
	buffer_load_u8 v193, v137, s[20:23], 0 offen
	buffer_load_u8 v194, v138, s[20:23], 0 offen
	buffer_load_u8 v195, v139, s[20:23], 0 offen
	buffer_load_u8 v196, v140, s[20:23], 0 offen
	buffer_load_u8 v197, v141, s[20:23], 0 offen
	buffer_load_u8 v198, v142, s[20:23], 0 offen
	buffer_load_u8 v143, v143, s[20:23], 0 offen
	buffer_load_u8 v144, v144, s[20:23], 0 offen
	buffer_load_u8 v145, v145, s[20:23], 0 offen
	buffer_load_u8 v146, v146, s[20:23], 0 offen
	buffer_load_u8 v147, v147, s[20:23], 0 offen
	buffer_load_u8 v148, v148, s[20:23], 0 offen
	buffer_load_u8 v149, v149, s[20:23], 0 offen
	buffer_load_u8 v150, v150, s[20:23], 0 offen
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_clause 0x7
	buffer_load_u8 v119, v151, s[12:15], 0 offen
	buffer_load_u8 v120, v152, s[12:15], 0 offen
	buffer_load_u8 v121, v153, s[12:15], 0 offen
	buffer_load_u8 v122, v154, s[12:15], 0 offen
	buffer_load_u8 v123, v155, s[12:15], 0 offen
	buffer_load_u8 v124, v156, s[12:15], 0 offen
	buffer_load_u8 v125, v157, s[12:15], 0 offen
	buffer_load_u8 v126, v158, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1448 25                       ; ragged.py:1448:25
	s_add_i32 s22, s7, 32
	.loc	1 1426 27                       ; ragged.py:1426:27
	s_cmp_lt_i32 s7, 0
	s_mov_b32 s7, s22
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_waitcnt vmcnt(7)
	ds_store_b8 v111, v119
	s_waitcnt vmcnt(6)
	ds_store_b8 v111, v120 offset:128
	s_waitcnt vmcnt(5)
	ds_store_b8 v111, v121 offset:256
	s_waitcnt vmcnt(4)
	ds_store_b8 v111, v122 offset:384
	s_waitcnt vmcnt(3)
	ds_store_b8 v111, v123 offset:512
	s_waitcnt vmcnt(2)
	ds_store_b8 v111, v124 offset:640
	s_waitcnt vmcnt(1)
	ds_store_b8 v111, v125 offset:768
	s_waitcnt vmcnt(0)
	ds_store_b8 v112, v126
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1438 35                       ; ragged.py:1438:35
	ds_load_u8 v151, v99 offset:160
	ds_load_u8 v152, v99 offset:128
	ds_load_u8 v171, v99 offset:240
	ds_load_u8 v172, v99 offset:208
	ds_load_u8 v173, v99 offset:176
	ds_load_u8 v174, v99 offset:144
	ds_load_u8 v155, v99 offset:224
	ds_load_u8 v158, v99 offset:192
	ds_load_u8 v199, v99 offset:96
	ds_load_u8 v200, v99 offset:64
	ds_load_u8 v201, v99 offset:112
	ds_load_u8 v202, v99 offset:80
	ds_load_u8 v203, v99 offset:48
	ds_load_u8 v204, v99 offset:32
	ds_load_u8 v205, v99
	ds_load_u8 v206, v99 offset:16
	ds_load_u8 v207, v99 offset:352
	ds_load_u8 v208, v99 offset:320
	ds_load_u8 v209, v99 offset:288
	ds_load_u8 v210, v99 offset:256
	ds_load_u8 v159, v99 offset:368
	ds_load_u8 v160, v99 offset:336
	ds_load_u8 v163, v99 offset:304
	ds_load_u8 v164, v99 offset:272
	ds_load_u8 v211, v99 offset:480
	ds_load_u8 v212, v99 offset:448
	ds_load_u8 v213, v99 offset:416
	ds_load_u8 v214, v99 offset:384
	ds_load_u8 v167, v99 offset:496
	ds_load_u8 v168, v99 offset:464
	ds_load_u8 v169, v99 offset:432
	ds_load_u8 v170, v99 offset:400
	ds_load_u8 v153, v99 offset:608
	ds_load_u8 v154, v99 offset:576
	ds_load_u8 v156, v99 offset:544
	ds_load_u8 v157, v99 offset:512
	ds_load_u8 v131, v99 offset:624
	ds_load_u8 v132, v99 offset:592
	ds_load_u8 v137, v99 offset:560
	ds_load_u8 v138, v99 offset:528
	ds_load_u8 v161, v99 offset:736
	ds_load_u8 v162, v99 offset:704
	ds_load_u8 v165, v99 offset:672
	ds_load_u8 v166, v99 offset:640
	ds_load_u8 v139, v99 offset:752
	ds_load_u8 v140, v99 offset:720
	ds_load_u8 v141, v99 offset:688
	ds_load_u8 v142, v99 offset:656
	ds_load_u8 v129, v99 offset:992
	ds_load_u8 v130, v99 offset:960
	ds_load_u8 v135, v99 offset:928
	ds_load_u8 v136, v99 offset:896
	ds_load_u8 v119, v113
	ds_load_u8 v120, v99 offset:976
	ds_load_u8 v121, v99 offset:944
	ds_load_u8 v122, v99 offset:912
	ds_load_u8 v127, v99 offset:864
	ds_load_u8 v128, v99 offset:832
	ds_load_u8 v133, v99 offset:800
	ds_load_u8 v134, v99 offset:768
	ds_load_u8 v123, v99 offset:880
	ds_load_u8 v124, v99 offset:848
	ds_load_u8 v125, v99 offset:816
	ds_load_u8 v126, v99 offset:784
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v111, v175
	ds_store_b8 v111, v176 offset:128
	ds_store_b8 v111, v177 offset:256
	ds_store_b8 v111, v178 offset:384
	ds_store_b8 v111, v179 offset:512
	ds_store_b8 v111, v180 offset:640
	ds_store_b8 v111, v181 offset:768
	ds_store_b8 v111, v183 offset:1024
	ds_store_b8 v111, v184 offset:1152
	ds_store_b8 v111, v185 offset:1280
	ds_store_b8 v111, v186 offset:1408
	ds_store_b8 v111, v187 offset:1536
	ds_store_b8 v111, v188 offset:1664
	ds_store_b8 v111, v189 offset:1792
	ds_store_b8 v111, v191 offset:2048
	ds_store_b8 v111, v192 offset:2176
	ds_store_b8 v111, v193 offset:2304
	ds_store_b8 v111, v194 offset:2432
	ds_store_b8 v111, v195 offset:2560
	ds_store_b8 v111, v196 offset:2688
	ds_store_b8 v111, v197 offset:2816
	ds_store_b8 v111, v143 offset:3072
	ds_store_b8 v111, v144 offset:3200
	ds_store_b8 v111, v145 offset:3328
	ds_store_b8 v111, v146 offset:3456
	ds_store_b8 v111, v147 offset:3584
	ds_store_b8 v111, v148 offset:3712
	ds_store_b8 v112, v182
	ds_store_b8 v114, v190
	ds_store_b8 v115, v198
	ds_store_b8 v111, v149 offset:3840
	ds_store_b8 v116, v150
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1438 35                       ; ragged.py:1438:35
	ds_load_u8 v176, v108 offset:576
	ds_load_u8 v183, v108 offset:1024
	ds_load_u8 v185, v108 offset:1408
	ds_load_u8 v187, v108 offset:1280
	v_perm_b32 v173, v174, v173, 0xc0c0004
	ds_load_u8 v174, v108 offset:1536
	ds_load_u8 v179, v108 offset:1792
	v_perm_b32 v156, v157, v156, 0xc0c0004
	ds_load_u8 v157, v108 offset:2432
	v_perm_b32 v153, v154, v153, 0xc0c0004
	ds_load_u8 v154, v108 offset:2304
	ds_load_u8 v181, v108 offset:1152
	ds_load_u8 v147, v108 offset:640
	ds_load_u8 v148, v108 offset:512
	ds_load_u8 v175, v108 offset:704
	ds_load_u8 v149, v108 offset:896
	ds_load_u8 v150, v108 offset:768
	v_perm_b32 v144, v158, v155, 0xc0c0004
	ds_load_u8 v155, v108 offset:384
	ds_load_u8 v177, v108 offset:960
	v_perm_b32 v171, v172, v171, 0xc0c0004
	ds_load_u8 v172, v108 offset:1728
	v_perm_b32 v190, v132, v131, 0xc0c0004
	ds_load_u8 v131, v108 offset:3840
	v_perm_b32 v192, v130, v129, 0xc0c0004
	ds_load_u8 v129, v108 offset:3072
	v_perm_b32 v143, v152, v151, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v185, v187, v185, 0xc0c0004
	ds_load_u8 v151, v108 offset:128
	ds_load_u8 v152, v108
	v_perm_b32 v163, v164, v163, 0xc0c0004
	ds_load_u8 v164, v108 offset:2944
	ds_load_u8 v130, v108 offset:3456
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	v_perm_b32 v154, v154, v157, 0xc0c0004
	ds_load_u8 v157, v108 offset:2240
	ds_load_u8 v187, v108 offset:1216
	ds_load_u8 v158, v108 offset:256
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v148, v150, v149, 0xc0c0004
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v108 offset:2816
	v_perm_b32 v194, v128, v127, 0xc0c0004
	ds_load_u8 v127, v108 offset:3328
	v_perm_b32 v169, v170, v169, 0xc0c0004
	ds_load_u8 v170, v108 offset:2560
	v_perm_b32 v181, v183, v181, 0xc0c0004
	v_perm_b32 v167, v168, v167, 0xc0c0004
	ds_load_u8 v168, v108 offset:2752
	v_perm_b32 v141, v142, v141, 0xc0c0004
	ds_load_u8 v142, v108 offset:3584
	ds_load_u8 v183, v108 offset:1856
	v_perm_b32 v165, v166, v165, 0xc0c0004
	ds_load_u8 v166, v108 offset:2176
	v_perm_b32 v161, v162, v161, 0xc0c0004
	v_perm_b32 v188, v140, v139, 0xc0c0004
	v_perm_b32 v189, v138, v137, 0xc0c0004
	ds_load_u8 v137, v108 offset:3968
	ds_load_u8 v132, v108 offset:3200
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v150, v158, v155, 0xc0c0004
	ds_load_u8 v155, v108 offset:192
	ds_load_u8 v158, v108 offset:64
	v_perm_b32 v149, v152, v151, 0xc0c0004
	ds_load_u8 v152, v108 offset:832
	v_perm_b32 v151, v176, v175, 0xc0c0004
	ds_load_u8 v175, v108 offset:448
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v197, v127, v130, 0xc0c0004
	ds_load_u8 v127, v108 offset:3264
	ds_load_u8 v162, v108 offset:2048
	v_perm_b32 v160, v160, v164, 0xc0c0004
	ds_load_u8 v164, v108 offset:3008
	ds_load_u8 v139, v108 offset:3776
	ds_load_u8 v128, v108 offset:3648
	v_perm_b32 v145, v200, v199, 0xc0c0004
	v_perm_b32 v146, v205, v204, 0xc0c0004
	v_perm_b32 v176, v202, v201, 0xc0c0004
	v_perm_b32 v178, v206, v203, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v195, v131, v137, 0xc0c0004
	ds_load_u8 v131, v108 offset:4032
	v_perm_b32 v180, v214, v213, 0xc0c0004
	v_perm_b32 v182, v212, v211, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v155, v158, v155, 0xc0c0004
	ds_load_u8 v158, v108 offset:320
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v152, v152, v177, 0xc0c0004
	ds_load_u8 v177, v108 offset:1920
	v_perm_b32 v184, v210, v209, 0xc0c0004
	v_perm_b32 v186, v208, v207, 0xc0c0004
	v_perm_b32 v202, v126, v125, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v162, v162, v166, 0xc0c0004
	ds_load_u8 v166, v108 offset:2880
	v_perm_b32 v203, v124, v123, 0xc0c0004
	v_perm_b32 v204, v122, v121, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v198, v128, v139, 0xc0c0004
	v_perm_b32 v205, v120, v119, 0xc0c0004
	v_lshl_or_b32 v120, v144, 16, v143
	v_lshl_or_b32 v119, v145, 16, v146
	v_lshl_or_b32 v122, v148, 16, v147
	v_lshl_or_b32 v121, v150, 16, v149
	v_lshl_or_b32 v124, v152, 16, v151
	v_lshl_or_b32 v126, v171, 16, v173
	v_lshl_or_b32 v125, v176, 16, v178
	v_perm_b32 v193, v134, v133, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v158, v158, v175, 0xc0c0004
	ds_load_u8 v175, v108 offset:1664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v177, v179, v177, 0xc0c0004
	ds_load_u8 v179, v108 offset:1984
	v_lshl_or_b32 v134, v167, 16, v169
	v_lshl_or_b32 v123, v158, 16, v155
	v_lshl_or_b32 v133, v159, 16, v163
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v164, v166, v164, 0xc0c0004
	ds_load_u8 v166, v108 offset:2496
	v_wmma_i32_16x16x16_iu4 v[1:8], v[121:122], v[119:120], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[123:124], v[119:120], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[121:122], v[125:126], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[123:124], v[125:126], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v191, v136, v135, 0xc0c0004
	v_lshl_or_b32 v136, v161, 16, v165
	v_lshl_or_b32 v135, v153, 16, v156
	v_lshl_or_b32 v137, v154, 16, v162
	v_lshl_or_b32 v143, v194, 16, v193
	v_lshl_or_b32 v144, v192, 16, v191
	v_lshl_or_b32 v119, v203, 16, v202
	v_lshl_or_b32 v120, v205, 16, v204
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v174, v174, v175, 0xc0c0004
	ds_load_u8 v175, v108 offset:1600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v179, v183, v179, 0xc0c0004
	ds_load_u8 v183, v108 offset:1472
	v_perm_b32 v196, v129, v132, 0xc0c0004
	ds_load_u8 v129, v108 offset:3904
	ds_load_u8 v128, v108 offset:3136
	v_lshl_or_b32 v130, v177, 16, v174
	v_lshl_or_b32 v145, v197, 16, v196
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v172, v175, v172, 0xc0c0004
	ds_load_u8 v175, v108 offset:1088
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v199, v129, v131, 0xc0c0004
	ds_load_u8 v129, v108 offset:3520
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v200, v128, v127, 0xc0c0004
	ds_load_u8 v127, v108 offset:3392
	v_lshl_or_b32 v128, v182, 16, v180
	v_lshl_or_b32 v132, v179, 16, v172
	v_lshl_or_b32 v148, v199, 16, v198
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v175, v175, v187, 0xc0c0004
	ds_load_u8 v187, v108 offset:1344
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v201, v127, v129, 0xc0c0004
	v_lshl_or_b32 v127, v186, 16, v184
	v_lshl_or_b32 v129, v185, 16, v181
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v147, v201, 16, v200
	v_wmma_i32_16x16x16_iu4 v[1:8], v[129:130], v[127:128], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[129:130], v[133:134], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v187, v183, 0xc0c0004
	ds_load_u8 v187, v108 offset:2688
	v_lshl_or_b32 v131, v183, 16, v175
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[131:132], v[127:128], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[131:132], v[133:134], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v170, v187, 0xc0c0004
	ds_load_u8 v187, v108 offset:2624
	v_lshl_or_b32 v138, v160, 16, v170
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[137:138], v[135:136], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v187, v168, 0xc0c0004
	ds_load_u8 v187, v108 offset:2112
	v_lshl_or_b32 v140, v164, 16, v168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v187, v157, 0xc0c0004
	ds_load_u8 v187, v108 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v187, v166, 0xc0c0004
	ds_load_u8 v187, v108 offset:3712
	v_lshl_or_b32 v139, v166, 16, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[139:140], v[135:136], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[147:148], v[143:144], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v142, v187, 0xc0c0004
	v_lshl_or_b32 v142, v188, 16, v141
	v_lshl_or_b32 v141, v190, 16, v189
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v146, v195, 16, v187
	v_wmma_i32_16x16x16_iu4 v[17:24], v[137:138], v[141:142], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[139:140], v[141:142], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[145:146], v[143:144], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[145:146], v[119:120], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[147:148], v[119:120], v[25:32] neg_lo:[1,1,0]
	.loc	1 1426 27                       ; ragged.py:1426:27
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1510 27 is_stmt 1             ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v134, v1
	v_cvt_f32_i32_e32 v133, v2
	v_cvt_f32_i32_e32 v132, v3
	v_cvt_f32_i32_e32 v131, v4
	v_cvt_f32_i32_e32 v130, v5
	v_cvt_f32_i32_e32 v129, v6
	v_cvt_f32_i32_e32 v128, v7
	v_cvt_f32_i32_e32 v127, v8
	v_cvt_f32_i32_e32 v126, v9
	v_cvt_f32_i32_e32 v125, v10
	v_cvt_f32_i32_e32 v124, v11
	v_cvt_f32_i32_e32 v123, v12
	v_cvt_f32_i32_e32 v122, v13
	v_cvt_f32_i32_e32 v121, v14
	v_cvt_f32_i32_e32 v120, v15
	v_cvt_f32_i32_e32 v119, v16
	v_cvt_f32_i32_e32 v16, v17
	v_cvt_f32_i32_e32 v15, v18
	v_cvt_f32_i32_e32 v14, v19
	v_cvt_f32_i32_e32 v13, v20
	v_cvt_f32_i32_e32 v12, v21
	v_cvt_f32_i32_e32 v11, v22
	v_cvt_f32_i32_e32 v10, v23
	v_cvt_f32_i32_e32 v9, v24
	v_cvt_f32_i32_e32 v8, v25
	v_cvt_f32_i32_e32 v7, v26
	v_cvt_f32_i32_e32 v6, v27
	v_cvt_f32_i32_e32 v5, v28
	v_cvt_f32_i32_e32 v4, v29
	v_cvt_f32_i32_e32 v3, v30
	v_cvt_f32_i32_e32 v2, v31
	v_cvt_f32_i32_e32 v1, v32
	s_branch .LBB0_5
.LBB0_10:                               ; %._crit_edge46
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v10, 1, v85
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v21, v95, 16, 1
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	s_mul_i32 s3, s27, s19
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v22, v97, 16, 1
	v_bfe_u32 v23, v96, 16, 1
	.loc	1 1310 36 is_stmt 1             ; ragged.py:1310:36
	v_or_b32_e32 v1, 0x47, v10
	v_or_b32_e32 v2, 0x46, v10
	v_or_b32_e32 v4, 0x44, v10
	v_or_b32_e32 v5, 0x43, v10
	v_or_b32_e32 v6, 0x42, v10
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v8, s16, v1
	v_or_b32_e32 v9, s16, v2
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v3, 0x45, v10
	v_or_b32_e32 v7, 0x41, v10
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v12, s16, v4
	v_or_b32_e32 v13, s16, v5
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s19, v8
	v_cmp_gt_i32_e64 s0, s19, v9
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v9, s16, v6
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v8, 64, v10
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v11, s16, v3
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s4, s19, v12
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v12, s16, v7
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s5, s19, v13
	v_cmp_gt_i32_e64 s6, s19, v9
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v13, s16, v8
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v9, 7, v10
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s19, v11
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v11, 6, v10
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s7, s19, v12
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v12, 5, v10
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s8, s19, v13
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v15, s16, v9
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v13, 4, v10
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v16, s16, v11
	v_or_b32_e32 v17, s16, v12
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v14, 3, v10
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s9, s19, v15
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v15, s16, v13
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s10, s19, v16
	v_cmp_gt_i32_e64 s11, s19, v17
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v18, s16, v14
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v16, 2, v10
	v_or_b32_e32 v17, 1, v10
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s12, s19, v15
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v15, s19, v67
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s13, s19, v18
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v18, s16, v16
	v_or_b32_e32 v19, s16, v17
	v_or_b32_e32 v20, s16, v10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add3_u32 v22, v97, v22, 0x7fff
	v_cmp_o_f32_e64 s18, v97, v97
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s14, s19, v18
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add3_u32 v18, s3, s16, v15
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s15, s19, v19
	v_cmp_gt_i32_e64 s16, s19, v20
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add3_u32 v19, v95, v21, 0x7fff
	v_cmp_o_f32_e64 s3, v95, v95
	v_bfe_u32 v20, v98, 16, 1
	v_add3_u32 v23, v96, v23, 0x7fff
	v_cmp_o_f32_e64 s19, v96, v96
	v_bfe_u32 v24, v93, 16, 1
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s3
	v_add3_u32 v20, v98, v20, 0x7fff
	v_cmp_o_f32_e64 s3, v98, v98
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s18
	v_cndmask_b16 v22.h, 0x7fff, v23.h, s19
	v_bfe_u32 v23, v92, 16, 1
	v_add3_u32 v24, v93, v24, 0x7fff
	v_cndmask_b16 v19.h, 0x7fff, v20.h, s3
	v_bfe_u32 v20, v94, 16, 1
	v_cmp_o_f32_e64 s3, v94, v94
	v_cmp_o_f32_e64 s18, v93, v93
	v_bfe_u32 v25, v91, 16, 1
	v_add3_u32 v23, v92, v23, 0x7fff
	v_add3_u32 v20, v94, v20, 0x7fff
	v_cmp_o_f32_e64 s19, v92, v92
	v_bfe_u32 v26, v89, 16, 1
	v_add3_u32 v25, v91, v25, 0x7fff
	v_bfe_u32 v27, v87, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s3
	v_cndmask_b16 v20.h, 0x7fff, v24.h, s18
	v_bfe_u32 v24, v90, 16, 1
	v_cmp_o_f32_e64 s3, v91, v91
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s19
	v_cmp_o_f32_e64 s18, v90, v90
	v_add3_u32 v26, v89, v26, 0x7fff
	v_add3_u32 v24, v90, v24, 0x7fff
	v_cmp_o_f32_e64 s19, v89, v89
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s3
	v_bfe_u32 v25, v88, 16, 1
	v_cmp_o_f32_e64 s3, v88, v88
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s18
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s19
	v_bfe_u32 v26, v86, 16, 1
	v_add3_u32 v25, v88, v25, 0x7fff
	v_add3_u32 v27, v87, v27, 0x7fff
	v_cmp_o_f32_e64 s18, v87, v87
	v_bfe_u32 v28, v84, 16, 1
	v_add3_u32 v26, v86, v26, 0x7fff
	v_cmp_o_f32_e64 s19, v86, v86
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s3
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s18
	v_bfe_u32 v27, v83, 16, 1
	v_bfe_u32 v29, v82, 16, 1
	v_add3_u32 v28, v84, v28, 0x7fff
	v_cmp_o_f32_e64 s3, v84, v84
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s19
	v_add3_u32 v27, v83, v27, 0x7fff
	v_cmp_o_f32_e64 s18, v83, v83
	v_add3_u32 v29, v82, v29, 0x7fff
	v_cmp_o_f32_e64 s19, v82, v82
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s3
	v_bfe_u32 v28, v81, 16, 1
	v_bfe_u32 v30, v80, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s18
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s19
	v_bfe_u32 v29, v79, 16, 1
	v_add3_u32 v28, v81, v28, 0x7fff
	v_cmp_o_f32_e64 s3, v81, v81
	v_add3_u32 v30, v80, v30, 0x7fff
	v_cmp_o_f32_e64 s18, v80, v80
	v_bfe_u32 v31, v78, 16, 1
	v_add3_u32 v29, v79, v29, 0x7fff
	v_cmp_o_f32_e64 s19, v79, v79
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s3
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s18
	v_bfe_u32 v30, v77, 16, 1
	v_bfe_u32 v32, v76, 16, 1
	v_add3_u32 v31, v78, v31, 0x7fff
	v_cmp_o_f32_e64 s3, v78, v78
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s19
	v_add3_u32 v30, v77, v30, 0x7fff
	v_cmp_o_f32_e64 s18, v77, v77
	v_add3_u32 v32, v76, v32, 0x7fff
	v_cmp_o_f32_e64 s19, v76, v76
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s3
	v_bfe_u32 v31, v75, 16, 1
	v_bfe_u32 v33, v74, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s18
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s19
	v_bfe_u32 v32, v73, 16, 1
	v_add3_u32 v31, v75, v31, 0x7fff
	v_cmp_o_f32_e64 s3, v75, v75
	v_add3_u32 v33, v74, v33, 0x7fff
	v_cmp_o_f32_e64 s18, v74, v74
	v_bfe_u32 v34, v72, 16, 1
	v_add3_u32 v32, v73, v32, 0x7fff
	v_cmp_o_f32_e64 s19, v73, v73
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s3
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s18
	v_bfe_u32 v33, v71, 16, 1
	v_bfe_u32 v36, v70, 16, 1
	v_add3_u32 v34, v72, v34, 0x7fff
	v_cmp_o_f32_e64 s3, v72, v72
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s19
	v_add3_u32 v33, v71, v33, 0x7fff
	v_cmp_o_f32_e64 s18, v71, v71
	v_add3_u32 v36, v70, v36, 0x7fff
	v_cmp_o_f32_e64 s19, v70, v70
	v_bfe_u32 v37, v68, 16, 1
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s3
	v_bfe_u32 v34, v69, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s18
	v_cndmask_b16 v33.h, 0x7fff, v36.h, s19
	v_add3_u32 v36, v68, v37, 0x7fff
	v_bfe_u32 v37, v66, 16, 1
	v_cmp_o_f32_e64 s3, v68, v68
	v_and_b32_e32 v0, 16, v0
	v_add3_u32 v34, v69, v34, 0x7fff
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	v_add_nc_u32_e32 v15, s26, v18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v38, v35, 16, 1
	v_add3_u32 v37, v66, v37, 0x7fff
	v_cmp_o_f32_e64 s19, v66, v66
	v_cndmask_b16 v34.l, 0x7fff, v36.h, s3
	v_cmp_eq_u32_e64 s3, 0, v0
	v_mov_b32_e32 v36, 0x5410
	v_add3_u32 v38, v35, v38, 0x7fff
	v_cmp_o_f32_e64 s20, v35, v35
	v_cndmask_b16 v0.l, 0x7fff, v37.h, s19
	v_cndmask_b32_e64 v35, v20, v19, s3
	v_cndmask_b32_e64 v19, v19, v20, s3
	v_cndmask_b32_e64 v20, v23, v22, s3
	v_cndmask_b32_e64 v22, v22, v23, s3
	v_cndmask_b32_e64 v23, v26, v24, s3
	v_cndmask_b32_e64 v24, v24, v26, s3
	v_cndmask_b32_e64 v26, v27, v25, s3
	v_mov_b32_e32 v37, 0x7632
	v_cndmask_b32_e64 v25, v25, v27, s3
	v_cndmask_b32_e64 v27, v30, v28, s3
	v_cndmask_b32_e64 v28, v28, v30, s3
	v_cndmask_b32_e64 v30, 0x1054, v36, s3
	v_cndmask_b32_e64 v36, 0x3276, v37, s3
	v_cmp_o_f32_e64 s18, v69, v69
	v_cndmask_b16 v0.h, 0x7fff, v38.h, s20
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add_lshl_u32 v18, v18, v10, 1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_lshl_or_b32 v30, v30, 8, v30
	v_lshl_or_b32 v36, v36, 8, v36
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s18
	s_mov_b32 s18, 0x76543210
	v_cndmask_b32_e64 v37, v31, v29, s3
	v_and_b32_e32 v30, 0x540054, v30
	v_and_b32_e32 v36, 0x760076, v36
	v_cndmask_b32_e64 v29, v29, v31, s3
	v_cndmask_b32_e64 v31, v34, v32, s3
	v_cndmask_b32_e64 v32, v32, v34, s3
	v_lshl_or_b32 v30, v30, 4, v30
	v_cndmask_b32_e64 v34, v0, v33, s3
	v_cndmask_b32_e64 v0, v33, v0, s3
	v_permlanex16_b32 v19, v19, s18, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v33, v36, 4, v36
	v_and_b32_e32 v30, 0x5040504, v30
	v_add_lshl_u32 v1, v15, v1, 1
	v_add_nc_u32_e32 v50, 2, v18
	v_mov_b16_e32 v21.h, 0
	v_permlanex16_b32 v22, v22, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v24, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v25, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v28, s18, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v33, 0x7060706, v33
	v_permlanex16_b32 v29, v29, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v32, s18, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v36, v19, v35, v30
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s3, s17, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_nc_u32_e32 v51, 4, v18
	v_cndmask_b32_e64 v52, 0x80000000, v18, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s17, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v19, v19, v35, v33
	v_cndmask_b32_e64 v50, 0x80000000, v50, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s17, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v35, v22, v20, v30
	v_perm_b32 v20, v22, v20, v33
	v_perm_b32 v22, v24, v23, v30
	v_perm_b32 v23, v24, v23, v33
	v_perm_b32 v24, v25, v26, v30
	v_perm_b32 v25, v25, v26, v33
	v_perm_b32 v26, v28, v27, v30
	v_perm_b32 v27, v28, v27, v33
	v_perm_b32 v28, v29, v37, v30
	v_perm_b32 v29, v29, v37, v33
	v_perm_b32 v37, v32, v31, v30
	v_perm_b32 v31, v32, v31, v33
	v_mov_b16_e32 v32.l, v36.h
	v_mov_b16_e32 v32.h, v21.h
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	v_cndmask_b32_e64 v51, 0x80000000, v51, s3
	buffer_store_b16 v36, v52, s[24:27], 0 offen
	v_add_nc_u32_e32 v36, 6, v18
	v_mov_b16_e32 v21.l, v19.h
	s_clause 0x1
	buffer_store_b16 v32, v50, s[24:27], 0 offen
	buffer_store_b16 v19, v51, s[24:27], 0 offen
	v_add_nc_u32_e32 v19, 8, v18
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s17, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_permlanex16_b32 v0, v0, s18, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v32, 0x80000000, v36, s3
	v_add_nc_u32_e32 v36, 10, v18
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s17, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_nc_u32_e32 v50, 12, v18
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s17, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v30, v0, v34, v30
	v_cndmask_b32_e64 v36, 0x80000000, v36, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s17, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_perm_b32 v0, v0, v34, v33
	v_mov_b16_e32 v34.l, v35.h
	v_mov_b16_e32 v34.h, v21.h
	v_cndmask_b32_e64 v50, 0x80000000, v50, s3
	s_clause 0x1
	buffer_store_b16 v21, v32, s[24:27], 0 offen
	buffer_store_b16 v35, v19, s[24:27], 0 offen
	v_add_nc_u32_e32 v19, 14, v18
	v_mov_b16_e32 v33.l, v20.h
	s_clause 0x1
	buffer_store_b16 v34, v36, s[24:27], 0 offen
	buffer_store_b16 v20, v50, s[24:27], 0 offen
	v_add_nc_u32_e32 v20, 0x80, v18
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s17, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v33.h, v21.h
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
	v_add_nc_u32_e32 v21, 0x82, v18
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s17, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_nc_u32_e32 v32, 0x84, v18
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s17, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v39.l, v22.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s17, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v33, v19, s[24:27], 0 offen
	buffer_store_b16 v22, v20, s[24:27], 0 offen
	v_cndmask_b32_e64 v32, 0x80000000, v32, s3
	v_add_nc_u32_e32 v19, 0x86, v18
	v_add_nc_u32_e32 v20, 0x88, v18
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s17, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v39, v21, s[24:27], 0 offen
	buffer_store_b16 v23, v32, s[24:27], 0 offen
	v_add_nc_u32_e32 v21, 0x8a, v18
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s17, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_nc_u32_e32 v22, 0x8c, v18
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s17, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_nc_u32_e32 v18, 0x8e, v18
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s17, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v10, v15, v10, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s17, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v38.l, v23.h
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v40.l, v25.h
	v_mov_b16_e32 v41.l, v24.h
	v_add_lshl_u32 v17, v15, v17, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	v_add_lshl_u32 v16, v15, v16, 1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x5
	buffer_store_b16 v38, v19, s[24:27], 0 offen
	buffer_store_b16 v24, v20, s[24:27], 0 offen
	buffer_store_b16 v41, v21, s[24:27], 0 offen
	buffer_store_b16 v25, v22, s[24:27], 0 offen
	buffer_store_b16 v40, v18, s[24:27], 0 offen
	buffer_store_b16 v26, v10, s[24:27], 0 offen
	v_add_lshl_u32 v10, v15, v14, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v13, v15, v13, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v12, v15, v12, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v11, v15, v11, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v9, v15, v9, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v8, v15, v8, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v7, v15, v7, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v6, v15, v6, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v5, v15, v5, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v4, v15, v4, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v15, v3, 1
	v_add_lshl_u32 v2, v15, v2, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s2, s4
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v42.l, v27.h
	v_mov_b16_e32 v43.l, v26.h
	v_mov_b16_e32 v44.l, v29.h
	v_mov_b16_e32 v45.l, v28.h
	v_mov_b16_e32 v46.l, v31.h
	v_mov_b16_e32 v47.l, v37.h
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s1, s2, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s0, s2, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_mov_b16_e32 v49.l, v30.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_mov_b16_e32 v48.l, v0.h
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0xe
	buffer_store_b16 v43, v17, s[24:27], 0 offen
	buffer_store_b16 v27, v16, s[24:27], 0 offen
	buffer_store_b16 v42, v10, s[24:27], 0 offen
	buffer_store_b16 v28, v13, s[24:27], 0 offen
	buffer_store_b16 v45, v12, s[24:27], 0 offen
	buffer_store_b16 v29, v11, s[24:27], 0 offen
	buffer_store_b16 v44, v9, s[24:27], 0 offen
	buffer_store_b16 v37, v8, s[24:27], 0 offen
	buffer_store_b16 v47, v7, s[24:27], 0 offen
	buffer_store_b16 v31, v6, s[24:27], 0 offen
	buffer_store_b16 v46, v5, s[24:27], 0 offen
	buffer_store_b16 v30, v4, s[24:27], 0 offen
	buffer_store_b16 v49, v3, s[24:27], 0 offen
	buffer_store_b16 v0, v2, s[24:27], 0 offen
	buffer_store_b16 v48, v1, s[24:27], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 215
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.num_vgpr, 215
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.numbered_sgpr, 39
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9232
; TotalNumSgprs: 41
; NumVgprs: 215
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 41
; NumVGPRsForWavesPerEU: 215
; Occupancy: 7
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     41
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc64_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     215
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
