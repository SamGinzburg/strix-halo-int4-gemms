	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x30
	s_load_b64 s[8:9], s[0:1], 0x20
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s11, s2
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s20, 31
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s21, 0x7f
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
	s_ashr_i32 s7, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s7, s4
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s10, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s6
	s_mul_hi_u32 s10, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s10
	s_xor_b32 s10, s2, s4
	s_mul_hi_u32 s6, s11, s6
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s12, s6, s5
	s_sub_i32 s11, s11, s12
	s_add_i32 s12, s6, 1
	s_sub_i32 s13, s11, s5
	s_cmp_ge_u32 s11, s5
	s_cselect_b32 s6, s12, s6
	s_cselect_b32 s11, s13, s11
	s_add_i32 s12, s6, 1
	s_cmp_ge_u32 s11, s5
	s_cselect_b32 s5, s12, s6
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s11, s7
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s5, s5, s10
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s6, s11
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s12, s5, s10
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s11
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s12, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s13, s6
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s6, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s4, s6
	s_mul_i32 s5, s5, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s13, s5
	s_xor_b32 s5, s6, s7
	s_add_i32 s13, s13, s2
	s_ashr_i32 s5, s5, 31
	s_mul_hi_u32 s2, s4, s13
	s_mul_i32 s10, s2, s11
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s10
	s_add_i32 s10, s2, 1
	s_sub_i32 s13, s4, s11
	s_cmp_ge_u32 s4, s11
	s_cselect_b32 s2, s10, s2
	s_cselect_b32 s4, s13, s4
	s_add_i32 s10, s2, 1
	s_cmp_ge_u32 s4, s11
	s_cselect_b32 s2, s10, s2
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s13, s12, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s2, s2, s5
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[10:11], s[12:13], 2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s4, s2, s5
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_add_u32 s8, s8, s10
	s_addc_u32 s9, s9, s11
	s_mov_b32 s5, 0
	s_load_b32 s2, s[8:9], 0x0
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s7, s4, s7
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s2, s2, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_gt_i32 s2, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge8_crit_edge
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_and_b32_e32 v2, 32, v0
	v_and_b32_e32 v1, 16, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 34 is_stmt 0                ; ragged.py:0:34
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow86
	s_load_b64 s[22:23], s[0:1], 0x28
	v_dual_mov_b32 v48, 0 :: v_dual_and_b32 v33, 31, v0
	v_dual_mov_b32 v51, 0 :: v_dual_and_b32 v50, 15, v0
	v_dual_mov_b32 v52, 0 :: v_dual_and_b32 v49, 64, v0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v78, 0
	v_mov_b32_e32 v83, 0
	s_sub_i32 s25, s6, s7
	s_lshl_b32 s26, s4, 5
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_mul_i32 s24, s12, s20
	s_cbranch_vccnz .LBB0_11
; %bb.4:                                ; %.preheader.lr.ph
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v3, s26, v50
	v_or_b32_e32 v2, s26, v33
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_lshrrev_b32_e32 v1, 3, v0
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x38
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v4, 16, v3
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s27, s3, 4
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s20, v2
	v_bfe_i32 v2, v0, 3, 1
	v_dual_mov_b32 v78, 0 :: v_dual_and_b32 v1, 12, v1
	v_cmp_gt_i32_e64 s3, s20, v4
	v_dual_mov_b32 v83, 0 :: v_dual_lshlrev_b32 v4, 4, v0
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_lshl_or_b32 v34, s25, 7, v0
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s1, s20, v3
	v_bfe_i32 v3, v0, 4, 1
	v_dual_mov_b32 v81, 0 :: v_dual_and_b32 v2, 0x88, v2
	v_dual_mov_b32 v74, 0 :: v_dual_and_b32 v5, 0x70, v4
	v_bfe_i32 v6, v0, 5, 1
	v_mad_u64_u32 v[35:36], null, s20, v1, v[33:34]
	v_dual_mov_b32 v76, 0 :: v_dual_and_b32 v3, 0x108, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b32_e32 v7, v2, v5
	v_dual_mov_b32 v77, 0 :: v_dual_and_b32 v6, 0x108, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v3, v3, v2
	v_add3_u32 v8, s26, s24, v50
	v_dual_mov_b32 v75, 0 :: v_dual_and_b32 v10, 0x70, v0
	v_xor_b32_e32 v6, v7, v6
	v_dual_mov_b32 v73, 0 :: v_dual_lshlrev_b32 v12, 5, v0
	v_mad_u64_u32 v[36:37], null, s20, 3, v[35:36]
	v_mad_u64_u32 v[37:38], null, s21, 3, v[34:35]
	v_mad_u64_u32 v[38:39], null, s21, 5, v[34:35]
	v_mad_u64_u32 v[39:40], null, s21, 6, v[34:35]
	v_mad_u64_u32 v[40:41], null, s21, 7, v[34:35]
	v_xor_b32_e32 v1, v3, v1
	v_and_or_b32 v3, 0x670, v4, v3
	v_lshl_or_b32 v6, v49, 3, v6
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v13, 16, v8
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v86, v8, s17
	v_dual_mov_b32 v71, 0 :: v_dual_lshlrev_b32 v8, 2, v10
	v_dual_mov_b32 v69, 0 :: v_dual_lshlrev_b32 v14, 1, v0
	v_dual_mov_b32 v67, 0 :: v_dual_and_b32 v12, 32, v12
	v_mad_u64_u32 v[41:42], null, s21, 9, v[34:35]
	v_mad_u64_u32 v[42:43], null, s21, 10, v[34:35]
	v_mad_u64_u32 v[43:44], null, s21, 11, v[34:35]
	v_mad_u64_u32 v[44:45], null, s21, 12, v[34:35]
	v_mad_u64_u32 v[45:46], null, s21, 13, v[34:35]
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v5, 0, v5
	v_xor_b32_e32 v4, 8, v7
	v_xor_b32_e32 v7, 0x108, v7
	v_xor_b32_e32 v9, 8, v3
	v_xor_b32_e32 v11, 8, v6
	v_mul_lo_u32 v87, v13, s17
	v_dual_mov_b32 v68, 0 :: v_dual_and_b32 v13, 28, v14
	v_add3_u32 v8, 0, v8, v12
	v_dual_mov_b32 v65, 0 :: v_dual_lshlrev_b32 v10, 1, v10
	v_mad_u64_u32 v[46:47], null, s21, 14, v[34:35]
	v_mad_u64_u32 v[47:48], null, s21, 15, v[34:35]
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s18, s2, 1
	s_cmp_lt_i32 s27, 16
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s2, s21, v34
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v79, s21, v34
	v_lshl_add_u32 v80, s21, 1, v34
	v_lshl_add_u32 v82, s21, 2, v34
	v_lshl_add_u32 v85, s21, 3, v34
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v88, v5, v1
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v89, v5, v2
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v90, 0, v4
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v91, 0, v7
	v_dual_mov_b32 v59, 0 :: v_dual_add_nc_u32 v92, 0, v3
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v93, 0, v9
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v94, 0, v6
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v95, 0, v11
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v96, v8, v13
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v97, 0, v10
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v51, 0
	v_mov_b32_e32 v52, 0
	v_mov_b32_e32 v48, 0
	s_cselect_b32 s28, -1, 0
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_add_i32 s18, s18, -1
	.loc	1 1429 43                       ; ragged.py:1429:43
	s_mul_i32 s29, s12, s16
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s30, s12, s17
	s_and_b32 s13, s5, 0xffff
	s_mov_b32 s12, s4
	s_and_b32 s5, s7, 0xffff
	s_mov_b32 s4, s6
	s_mov_b32 s31, 0
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshr_b32 s33, s18, 4
	s_mov_b32 s16, s8
	s_mov_b32 s17, s9
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s14
	s_mov_b32 s11, s15
	s_mov_b32 s6, 0
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s6, s31, s30
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v17, v86, s31, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s6, s6, s21
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v18, v87, s31, 1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v19, v34, s6, 1
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s7, s31, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v17, 0x80000000, v17, s1
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s6, s7, 4
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_lg_u32 s31, s33
	s_mov_b32 s31, s7
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x1
	buffer_load_u16 v17, v17, s[16:19], 0 offen
	buffer_load_u16 v18, v18, s[16:19], 0 offen
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
	v_dual_mul_f32 v31, v112, v17 :: v_dual_lshlrev_b32 v18, 16, v19
	v_mul_f32_e32 v30, v113, v17
	v_mul_f32_e32 v110, v110, v17
	v_mul_f32_e32 v32, v111, v17
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_store_b32 v96, v18
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v111, v14, v29
	v_mul_f32_e32 v112, v13, v29
	v_mul_f32_e32 v114, v11, v29
	v_mul_f32_e32 v113, v12, v29
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[11:14], v97 offset:256
	ds_load_b128 v[25:28], v97 offset:272
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v8, v8, v29
	v_mul_f32_e32 v98, v98, v17
	v_mul_f32_e32 v102, v102, v17
	v_mul_f32_e32 v103, v103, v17
	v_mul_f32_e32 v10, v10, v29
	v_mul_f32_e32 v100, v100, v17
	v_mul_f32_e32 v101, v101, v17
	v_mul_f32_e32 v6, v6, v29
	v_mul_f32_e32 v4, v4, v29
	v_mul_f32_e32 v3, v3, v29
	v_mul_f32_e32 v5, v5, v29
	v_mul_f32_e32 v2, v2, v29
	v_mul_f32_e32 v16, v16, v29
	v_mul_f32_e32 v1, v1, v29
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[21:24], v97 offset:16
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v7, v7, v29
	v_mul_f32_e32 v9, v9, v29
	.loc	1 1525 17                       ; ragged.py:1525:17
	s_waitcnt lgkmcnt(2)
	v_fmac_f32_e32 v57, v8, v11
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v99, v99, v17 :: v_dual_fmac_f32 v66, v98, v28
	v_mul_f32_e32 v104, v104, v17
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_fmac_f32_e32 v55, v6, v13
	v_fmac_f32_e32 v53, v4, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v67, v99, v27
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v105, v105, v17 :: v_dual_fmac_f32 v72, v104, v12
	v_mul_f32_e32 v106, v106, v17
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_fmac_f32_e32 v56, v7, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v52, v3, v26 :: v_dual_fmac_f32 v73, v105, v11
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v107, v107, v17
	v_mul_f32_e32 v108, v108, v17
	v_mul_f32_e32 v109, v109, v17
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[17:20], v97
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v15, v15, v29 :: v_dual_fmac_f32 v54, v5, v14
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_fmac_f32_e32 v51, v2, v27
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v74, v106, v24 :: v_dual_fmac_f32 v75, v107, v23
	v_dual_fmac_f32 v76, v108, v22 :: v_dual_fmac_f32 v77, v109, v21
	v_dual_fmac_f32 v60, v114, v22 :: v_dual_fmac_f32 v61, v113, v21
	v_dual_fmac_f32 v59, v10, v23 :: v_dual_fmac_f32 v68, v100, v26
	v_fmac_f32_e32 v69, v101, v25
	v_fmac_f32_e32 v58, v9, v24
	v_fmac_f32_e32 v48, v1, v28
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v78, v30, v17
	v_dual_fmac_f32 v84, v31, v18 :: v_dual_fmac_f32 v81, v110, v20
	v_fmac_f32_e32 v83, v32, v19
	v_fmac_f32_e32 v65, v16, v17
	v_fmac_f32_e32 v62, v112, v20
	v_fmac_f32_e32 v64, v15, v18
	v_dual_fmac_f32 v63, v111, v19 :: v_dual_fmac_f32 v70, v102, v14
	v_fmac_f32_e32 v71, v103, v13
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
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	.loc	1 1426 27 is_stmt 1             ; ragged.py:1426:27
	s_and_not1_b32 vcc_lo, exec_lo, s28
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v1, 0
	s_add_i32 s34, s6, s29
	s_mov_b32 s35, s27
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
	s_add_i32 s36, s34, s35
	v_add_nc_u32_e32 v98, s20, v35
	s_mul_i32 s37, s36, s20
	.loc	1 1437 46                       ; ragged.py:1437:46
	s_mul_i32 s36, s36, s21
	v_lshl_add_u32 v99, s20, 1, v35
	v_add_nc_u32_e32 v100, s36, v34
	v_add_nc_u32_e32 v101, s36, v79
	.loc	1 1436 46                       ; ragged.py:1436:46
	s_add_i32 s37, s37, s26
	.loc	1 1437 46                       ; ragged.py:1437:46
	v_add_nc_u32_e32 v102, s36, v80
	v_add_nc_u32_e32 v103, s36, v37
	v_add_nc_u32_e32 v104, s36, v82
	v_add_nc_u32_e32 v105, s36, v38
	v_add_nc_u32_e32 v106, s36, v39
	v_add_nc_u32_e32 v107, s36, v40
	v_add_nc_u32_e32 v108, s36, v85
	v_add_nc_u32_e32 v109, s36, v41
	v_add_nc_u32_e32 v110, s36, v42
	v_add_nc_u32_e32 v111, s36, v43
	v_add_nc_u32_e32 v112, s36, v44
	v_add_nc_u32_e32 v113, s36, v45
	v_add_nc_u32_e32 v114, s36, v46
	v_add_nc_u32_e32 v115, s36, v47
	v_add_nc_u32_e32 v116, s37, v35
	v_add_nc_u32_e32 v117, s37, v36
	v_add_nc_u32_e32 v98, s37, v98
	v_add_nc_u32_e32 v99, s37, v99
	.loc	1 1437 38 is_stmt 0             ; ragged.py:1437:38
	v_cndmask_b32_e64 v100, 0x80000000, v100, s2
	v_cndmask_b32_e64 v101, 0x80000000, v101, s2
	v_cndmask_b32_e64 v102, 0x80000000, v102, s2
	s_mov_b32 s6, s14
	s_mov_b32 s7, s15
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
	.loc	1 1436 38 is_stmt 1             ; ragged.py:1436:38
	v_cndmask_b32_e64 v116, 0x80000000, v116, s0
	v_cndmask_b32_e64 v117, 0x80000000, v117, s0
	v_cndmask_b32_e64 v98, 0x80000000, v98, s0
	v_cndmask_b32_e64 v99, 0x80000000, v99, s0
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_clause 0xf
	buffer_load_u8 v118, v100, s[4:7], 0 offen
	buffer_load_u8 v100, v101, s[4:7], 0 offen
	buffer_load_u8 v119, v102, s[4:7], 0 offen
	buffer_load_u8 v101, v103, s[4:7], 0 offen
	buffer_load_u8 v103, v104, s[4:7], 0 offen
	buffer_load_u8 v102, v105, s[4:7], 0 offen
	buffer_load_u8 v104, v106, s[4:7], 0 offen
	buffer_load_u8 v105, v107, s[4:7], 0 offen
	buffer_load_u8 v107, v108, s[4:7], 0 offen
	buffer_load_u8 v106, v109, s[4:7], 0 offen
	buffer_load_u8 v108, v110, s[4:7], 0 offen
	buffer_load_u8 v109, v111, s[4:7], 0 offen
	buffer_load_u8 v110, v115, s[4:7], 0 offen
	buffer_load_u8 v111, v113, s[4:7], 0 offen
	buffer_load_u8 v113, v114, s[4:7], 0 offen
	buffer_load_u8 v112, v112, s[4:7], 0 offen
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_clause 0x3
	buffer_load_u8 v114, v117, s[12:15], 0 offen
	buffer_load_u8 v115, v98, s[12:15], 0 offen
	buffer_load_u8 v117, v99, s[12:15], 0 offen
	buffer_load_u8 v116, v116, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1448 25                       ; ragged.py:1448:25
	s_add_i32 s6, s35, 16
	.loc	1 1426 27                       ; ragged.py:1426:27
	s_cmp_lt_i32 s35, 0
	s_mov_b32 s35, s6
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_waitcnt vmcnt(18)
	v_lshlrev_b16 v99.h, 8, v100.l
	s_waitcnt vmcnt(16)
	v_lshlrev_b16 v99.l, 8, v101.l
	s_waitcnt vmcnt(14)
	v_lshlrev_b16 v98.h, 8, v102.l
	s_waitcnt vmcnt(12)
	v_lshlrev_b16 v98.l, 8, v105.l
	v_or_b16 v103.h, v119.l, v99.l
	s_waitcnt vmcnt(10)
	v_lshlrev_b16 v101.h, 8, v106.l
	s_waitcnt vmcnt(8)
	v_lshlrev_b16 v101.l, 8, v109.l
	s_waitcnt vmcnt(7)
	v_lshlrev_b16 v100.l, 8, v110.l
	s_waitcnt vmcnt(6)
	v_lshlrev_b16 v100.h, 8, v111.l
	v_or_b16 v104.h, v104.l, v98.l
	v_or_b16 v104.l, v103.l, v98.h
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v102.l, 8, v114.l
	s_waitcnt vmcnt(2)
	v_lshlrev_b16 v102.h, 8, v115.l
	.loc	1 1437 38                       ; ragged.py:1437:38
	v_or_b16 v103.l, v118.l, v99.h
	v_or_b16 v106.h, v113.l, v100.l
	v_or_b16 v106.l, v112.l, v100.h
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_waitcnt vmcnt(1)
	v_or_b16 v98.h, v117.l, v102.l
	s_waitcnt vmcnt(0)
	v_or_b16 v98.l, v116.l, v102.h
	.loc	1 1437 38                       ; ragged.py:1437:38
	v_or_b16 v105.h, v108.l, v101.l
	v_or_b16 v105.l, v107.l, v101.h
	.loc	1 1436 38                       ; ragged.py:1436:38
	ds_store_b32 v88, v98
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[98:101], v89 offset1:32
	ds_load_b64 v[110:111], v90
	ds_load_b64 v[112:113], v91
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v92, v[103:104]
	ds_store_b64 v93, v[105:106]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[102:105], v94 offset1:2
	ds_load_2addr_stride64_b64 v[106:109], v95 offset1:2
	.loc	1 1438 35                       ; ragged.py:1438:35
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[102:103], v[98:99], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[104:105], v[98:99], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[102:103], v[112:113], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[104:105], v[112:113], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[106:107], v[110:111], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[108:109], v[110:111], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[106:107], v[100:101], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[108:109], v[100:101], v[25:32] neg_lo:[1,1,0]
	.loc	1 1426 27                       ; ragged.py:1426:27
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v113, v1
	v_cvt_f32_i32_e32 v112, v2
	v_cvt_f32_i32_e32 v111, v3
	v_cvt_f32_i32_e32 v110, v4
	v_cvt_f32_i32_e32 v109, v5
	v_cvt_f32_i32_e32 v108, v6
	v_cvt_f32_i32_e32 v107, v7
	v_cvt_f32_i32_e32 v106, v8
	v_cvt_f32_i32_e32 v105, v9
	v_cvt_f32_i32_e32 v104, v10
	v_cvt_f32_i32_e32 v103, v11
	v_cvt_f32_i32_e32 v102, v12
	v_cvt_f32_i32_e32 v101, v13
	v_cvt_f32_i32_e32 v100, v14
	v_cvt_f32_i32_e32 v99, v15
	v_cvt_f32_i32_e32 v98, v16
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
.LBB0_10:                               ; %Flow85
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_and_b32_e32 v2, 32, v0
	v_and_b32_e32 v1, 16, v0
.LBB0_11:                               ; %._crit_edge8
	.loc	1 1532 33 is_stmt 1             ; ragged.py:1532:33
	v_bfe_u32 v4, v84, 16, 1
	v_bfe_u32 v3, v78, 16, 1
	v_cmp_o_f32_e64 s0, v84, v84
	v_bfe_u32 v8, v76, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v78, v78
	v_add3_u32 v4, v84, v4, 0x7fff
	v_add3_u32 v3, v78, v3, 0x7fff
	v_bfe_u32 v6, v81, 16, 1
	v_add3_u32 v8, v76, v8, 0x7fff
	v_bfe_u32 v11, v73, 16, 1
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s0
	v_cmp_o_f32_e64 s0, v76, v76
	v_bfe_u32 v5, v83, 16, 1
	v_cndmask_b16 v3.l, 0x7fff, v3.h, vcc_lo
	v_add3_u32 v6, v81, v6, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v81, v81
	v_bfe_u32 v7, v77, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s0
	v_add3_u32 v11, v73, v11, 0x7fff
	v_cmp_o_f32_e64 s0, v73, v73
	v_bfe_u32 v14, v70, 16, 1
	v_cmp_o_f32_e64 s1, v83, v83
	v_add3_u32 v5, v83, v5, 0x7fff
	v_bfe_u32 v9, v75, 16, 1
	v_cndmask_b16 v6.l, 0x7fff, v6.h, vcc_lo
	v_add3_u32 v7, v77, v7, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v77, v77
	v_bfe_u32 v10, v74, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s0
	v_add3_u32 v14, v70, v14, 0x7fff
	v_cmp_o_f32_e64 s0, v70, v70
	v_bfe_u32 v17, v67, 16, 1
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s1
	v_add3_u32 v9, v75, v9, 0x7fff
	v_cmp_o_f32_e64 s1, v75, v75
	v_bfe_u32 v12, v72, 16, 1
	v_cndmask_b16 v7.l, 0x7fff, v7.h, vcc_lo
	v_add3_u32 v10, v74, v10, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v74, v74
	v_bfe_u32 v13, v71, 16, 1
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s0
	v_add3_u32 v17, v67, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v67, v67
	v_bfe_u32 v20, v64, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s1
	v_add3_u32 v12, v72, v12, 0x7fff
	v_cmp_o_f32_e64 s1, v72, v72
	v_bfe_u32 v15, v69, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, vcc_lo
	v_add3_u32 v13, v71, v13, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v71, v71
	v_bfe_u32 v16, v68, 16, 1
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s0
	v_add3_u32 v20, v64, v20, 0x7fff
	v_cmp_o_f32_e64 s0, v64, v64
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s1
	v_add3_u32 v15, v69, v15, 0x7fff
	v_cmp_o_f32_e64 s1, v69, v69
	v_bfe_u32 v18, v66, 16, 1
	v_cndmask_b16 v13.l, 0x7fff, v13.h, vcc_lo
	v_add3_u32 v16, v68, v16, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v68, v68
	v_bfe_u32 v19, v65, 16, 1
	v_cndmask_b16 v4.h, 0x7fff, v20.h, s0
	v_bfe_u32 v20, v61, 16, 1
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s1
	v_add3_u32 v18, v66, v18, 0x7fff
	v_cmp_o_f32_e64 s1, v66, v66
	v_bfe_u32 v21, v63, 16, 1
	v_cndmask_b16 v16.l, 0x7fff, v16.h, vcc_lo
	v_add3_u32 v19, v65, v19, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	v_add3_u32 v20, v61, v20, 0x7fff
	v_cmp_o_f32_e64 s0, v61, v61
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s1
	v_add3_u32 v21, v63, v21, 0x7fff
	v_cmp_o_f32_e64 s1, v63, v63
	v_cndmask_b16 v3.h, 0x7fff, v19.h, vcc_lo
	v_bfe_u32 v19, v62, 16, 1
	v_cndmask_b16 v7.h, 0x7fff, v20.h, s0
	v_bfe_u32 v20, v58, 16, 1
	v_cndmask_b16 v5.h, 0x7fff, v21.h, s1
	v_bfe_u32 v21, v60, 16, 1
	v_add3_u32 v19, v62, v19, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v62, v62
	v_add3_u32 v20, v58, v20, 0x7fff
	v_cmp_o_f32_e64 s0, v58, v58
	v_add3_u32 v21, v60, v21, 0x7fff
	v_cmp_o_f32_e64 s1, v60, v60
	v_cndmask_b16 v6.h, 0x7fff, v19.h, vcc_lo
	v_bfe_u32 v19, v59, 16, 1
	v_cndmask_b16 v10.h, 0x7fff, v20.h, s0
	v_bfe_u32 v20, v55, 16, 1
	v_cndmask_b16 v8.h, 0x7fff, v21.h, s1
	v_bfe_u32 v21, v57, 16, 1
	v_add3_u32 v19, v59, v19, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v59, v59
	v_add3_u32 v20, v55, v20, 0x7fff
	v_cmp_o_f32_e64 s0, v55, v55
	v_add3_u32 v21, v57, v21, 0x7fff
	v_cmp_o_f32_e64 s1, v57, v57
	v_cndmask_b16 v9.h, 0x7fff, v19.h, vcc_lo
	v_bfe_u32 v19, v56, 16, 1
	v_bfe_u32 v22, v53, 16, 1
	v_cndmask_b16 v13.h, 0x7fff, v20.h, s0
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_cmp_eq_u32_e64 s0, 0, v49
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v11.h, 0x7fff, v21.h, s1
	v_bfe_u32 v21, v54, 16, 1
	v_add3_u32 v19, v56, v19, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v56, v56
	v_add3_u32 v20, v53, v22, 0x7fff
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshlrev_b32_e32 v22, 2, v33
	v_cndmask_b32_e64 v23, 0x1040, 0, s0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v21, v54, v21, 0x7fff
	v_cmp_o_f32_e64 s1, v54, v54
	v_cndmask_b16 v12.h, 0x7fff, v19.h, vcc_lo
	v_bfe_u32 v19, v52, 16, 1
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xor3_b32 v2, v22, v2, v23
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_bfe_u32 v24, v48, 16, 1
	v_cndmask_b16 v14.h, 0x7fff, v21.h, s1
	v_bfe_u32 v21, v51, 16, 1
	v_add3_u32 v19, v52, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v52, v52
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshl_or_b32 v2, v50, 8, v2
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e32 vcc_lo, v53, v53
	v_add3_u32 v21, v51, v21, 0x7fff
	v_cmp_o_f32_e64 s2, v51, v51
	v_add3_u32 v22, v48, v24, 0x7fff
	v_cmp_o_f32_e64 s3, v48, v48
	v_cndmask_b16 v16.h, 0x7fff, v19.h, s1
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_add_nc_u32_e32 v19, 0, v2
	v_lshlrev_b32_e32 v23, 2, v0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v15.h, 0x7fff, v20.h, vcc_lo
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v20, v2, 4, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v17.h, 0x7fff, v21.h, s2
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v21, v2, 8, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v18.h, 0x7fff, v22.h, s3
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v22, v2, 12, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b32 v19, v3, v11 offset1:32
	ds_store_2addr_b32 v20, v4, v12 offset1:32
	ds_store_2addr_b32 v21, v5, v13 offset1:32
	ds_store_2addr_b32 v22, v6, v14 offset1:32
	v_and_b32_e32 v3, 0xbc, v23
	v_cndmask_b32_e64 v4, 0x104, 0, s0
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	v_xad_u32 v5, v2, 16, 0
	v_xad_u32 v6, v2, 20, 0
	ds_store_2addr_b32 v5, v7, v15 offset1:32
	ds_store_2addr_b32 v6, v8, v16 offset1:32
	v_cndmask_b32_e64 v1, 0x1040, 0, vcc_lo
	v_xor_b32_e32 v3, v4, v3
	v_xad_u32 v4, v2, 24, 0
	v_xad_u32 v2, v2, 28, 0
	ds_store_2addr_b32 v4, v9, v17 offset1:32
	ds_store_2addr_b32 v2, v10, v18 offset1:32
	v_or_b32_e32 v1, v3, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1536 56                       ; ragged.py:1536:56
	v_and_b32_e32 v0, 63, v0
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_lshr_b32 s0, s21, 31
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_add_nc_u32_e32 v2, 0, v1
	v_xad_u32 v3, v1, 64, 0
	v_xad_u32 v4, 0x208, v1, 0
	v_xad_u32 v5, 0x248, v1, 0
	v_xad_u32 v6, 0x410, v1, 0
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
	v_lshrrev_b32_e32 v3, 6, v49
	.loc	1 1536 31                       ; ragged.py:1536:31
	v_lshl_or_b32 v0, s25, 6, v0
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_add_i32 s0, s21, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_ashr_i32 s1, s0, 1
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v3, s26, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1542 54                       ; ragged.py:1542:54
	v_cmp_gt_i32_e32 vcc_lo, s1, v0
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s20, v3
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_13
; %bb.12:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s24, v3
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_13:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s20, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_15
; %bb.14:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s24, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_15:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s20, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_17
; %bb.16:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s24, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_17:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 6, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s20, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_19
; %bb.18:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s24, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_19:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 8, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s20, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_21
; %bb.20:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s24, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_21:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 10, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s20, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_23
; %bb.22:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s24, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_23:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 12, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s20, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_25
; %bb.24:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s24, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_25:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 14, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s20, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_27
; %bb.26:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s24, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_27:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 16, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s20, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_29
; %bb.28:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s24, v18
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
	v_add_co_u32 v16, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s23, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[16:17], v20, off
.LBB0_29:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(15)
	v_or_b32_e32 v16, 18, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s20, v16
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_31
; %bb.30:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v16, s24, v16
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
	v_add_co_u32 v14, s0, s22, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v15, null, s23, v17, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[14:15], v18, off
.LBB0_31:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(13)
	v_or_b32_e32 v14, 20, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s20, v14
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_33
; %bb.32:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v14, s24, v14
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
	v_add_co_u32 v12, s0, s22, v14
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s23, v15, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[12:13], v16, off
.LBB0_33:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(11)
	v_or_b32_e32 v12, 22, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s20, v12
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_35
; %bb.34:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v12, s24, v12
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
	v_add_co_u32 v10, s0, s22, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, s23, v13, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[10:11], v14, off
.LBB0_35:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(9)
	v_or_b32_e32 v10, 24, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s20, v10
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_37
; %bb.36:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v10, s24, v10
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
	v_add_co_u32 v8, s0, s22, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s23, v11, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[8:9], v12, off
.LBB0_37:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(7)
	v_or_b32_e32 v8, 26, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s20, v8
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_39
; %bb.38:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v8, s24, v8
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
	v_add_co_u32 v6, s0, s22, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, s23, v9, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[6:7], v10, off
.LBB0_39:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(5)
	v_or_b32_e32 v6, 28, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s20, v6
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_41
; %bb.40:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v6, s24, v6
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
	v_add_co_u32 v4, s0, s22, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s23, v7, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[4:5], v8, off
.LBB0_41:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v3, 30, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s20, v3
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_43
; %bb.42:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v3, s24, v3
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
	v_add_co_u32 v0, vcc_lo, s22, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s23, v4, vcc_lo
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[0:1], v2, off
.LBB0_43:
	.loc	1 1276 5 is_stmt 1              ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 120
		.amdhsa_next_free_sgpr 38
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
		.amdhsa_inst_pref_size 53
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.num_vgpr, 120
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.numbered_sgpr, 38
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6720
; TotalNumSgprs: 40
; NumVgprs: 120
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 40
; NumVGPRsForWavesPerEU: 120
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     40
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     120
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
