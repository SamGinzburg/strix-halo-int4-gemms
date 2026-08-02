	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
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
	v_and_b32_e32 v47, 15, v0
	v_and_b32_e32 v68, 16, v0
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
	s_sub_i32 s4, s4, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s5, s4, s5
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s27, s4, 5
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s4, s2, s5
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s6, s8
	s_addc_u32 s7, s7, s9
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v1, s27, v47
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
; %bb.1:                                ; %.._crit_edge38_crit_edge
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_and_b32_e32 v17, 16, v0
	.loc	1 1545 26 is_stmt 0             ; ragged.py:1545:26
	s_add_i32 s26, s27, s28
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26                          ; ragged.py:0:26
	s_mov_b32 s5, -1
                                        ; implicit-def: $sgpr26
                                        ; implicit-def: $vgpr17
.LBB0_3:                                ; %Flow86
	s_load_b64 s[24:25], s[0:1], 0x28
	v_dual_mov_b32 v46, 0 :: v_dual_and_b32 v67, 0x70, v0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v77, 0
	v_mov_b32_e32 v80, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s16, s4, 7
	s_cbranch_vccnz .LBB0_11
; %bb.4:                                ; %.preheader.lr.ph
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_lshrrev_b32_e32 v2, 3, v0
	v_dual_mov_b32 v80, 0 :: v_dual_and_b32 v1, 31, v0
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x38
	s_load_b256 s[4:11], s[0:1], 0x0
	v_bfe_i32 v3, v0, 3, 1
	v_dual_mov_b32 v77, 0 :: v_dual_and_b32 v2, 12, v2
	v_bfe_i32 v4, v0, 4, 1
	v_bfe_i32 v6, v0, 5, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v70, 0 :: v_dual_and_b32 v3, 0x88, v3
	v_mad_u64_u32 v[33:34], null, s18, v2, v[1:2]
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v1, s27, v1
	v_dual_mov_b32 v79, 0 :: v_dual_and_b32 v4, 0x108, v4
	v_mov_b32_e32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_and_b32 v6, 0x108, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s1, s18, v1
	v_dual_mov_b32 v72, 0 :: v_dual_lshlrev_b32 v1, 4, v0
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s3, s3, 4
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s29, s13, 1
	v_xor_b32_e32 v4, v4, v3
	v_and_b32_e32 v5, 0x70, v1
	v_dual_mov_b32 v73, 0 :: v_dual_lshlrev_b32 v8, 3, v0
	s_cmp_lt_i32 s3, 16
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v32, s16, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b32_e32 v7, v3, v5
	s_cselect_b32 s30, -1, 0
	s_add_i32 s26, s27, s28
	v_xor_b32_e32 v2, v4, v2
	v_and_or_b32 v1, 0x670, v1, v4
	v_xor_b32_e32 v6, v7, v6
	v_dual_mov_b32 v64, 0 :: v_dual_lshlrev_b32 v11, 5, v0
	v_mad_u64_u32 v[34:35], null, s18, 3, v[33:34]
	s_delay_alu instid0(VALU_DEP_3)
	v_and_or_b32 v4, 0x200, v8, v6
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v8, s26, v47
	v_mad_u64_u32 v[35:36], null, s19, 3, v[32:33]
	v_mad_u64_u32 v[36:37], null, s19, 5, v[32:33]
	v_mad_u64_u32 v[37:38], null, s19, 6, v[32:33]
	v_mad_u64_u32 v[38:39], null, s19, 7, v[32:33]
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v12, 16, v8
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v87, v8, s23
	v_dual_mov_b32 v65, 0 :: v_dual_lshlrev_b32 v8, 2, v67
	v_dual_mov_b32 v63, 0 :: v_dual_lshlrev_b32 v0, 1, v0
	v_dual_mov_b32 v62, 0 :: v_dual_and_b32 v11, 32, v11
	v_mad_u64_u32 v[39:40], null, s19, 9, v[32:33]
	v_mad_u64_u32 v[40:41], null, s19, 10, v[32:33]
	v_mad_u64_u32 v[41:42], null, s19, 11, v[32:33]
	v_mad_u64_u32 v[42:43], null, s19, 12, v[32:33]
	v_mad_u64_u32 v[43:44], null, s19, 13, v[32:33]
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v5, 0, v5
	v_xor_b32_e32 v6, 8, v7
	v_xor_b32_e32 v7, 0x108, v7
	v_xor_b32_e32 v9, 8, v1
	v_xor_b32_e32 v10, 8, v4
	v_mul_lo_u32 v88, v12, s23
	v_dual_mov_b32 v61, 0 :: v_dual_and_b32 v0, 28, v0
	v_add3_u32 v8, 0, v8, v11
	v_cndmask_b32_e64 v11, 0, 1, s30
	v_dual_mov_b32 v59, 0 :: v_dual_lshlrev_b32 v12, 1, v67
	v_mad_u64_u32 v[44:45], null, s19, 14, v[32:33]
	v_mad_u64_u32 v[45:46], null, s19, 15, v[32:33]
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s19, v32
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v81, s18, v33
	v_lshl_add_u32 v82, s18, 1, v33
	.loc	1 1429 43                       ; ragged.py:1429:43
	s_mul_i32 s33, s12, s22
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s34, s12, s23
	s_mov_b32 s12, s4
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v83, s19, v32
	v_lshl_add_u32 v84, s19, 1, v32
	v_lshl_add_u32 v85, s19, 2, v32
	v_lshl_add_u32 v86, s19, 3, v32
	v_cmp_ne_u32_e64 s4, 1, v11
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v89, v5, v2
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v90, v5, v3
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v91, 0, v6
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v92, 0, v7
	v_dual_mov_b32 v56, 0 :: v_dual_add_nc_u32 v93, 0, v1
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v94, 0, v9
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v95, 0, v4
	v_dual_mov_b32 v51, 0 :: v_dual_add_nc_u32 v96, 0, v10
	v_dual_mov_b32 v52, 0 :: v_dual_add_nc_u32 v97, v8, v0
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v98, 0, v12
	v_mov_b32_e32 v50, 0
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v46, 0
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_add_i32 s29, s29, -1
	s_and_b32 s13, s5, 0xffff
	s_and_b32 s21, s7, 0xffff
	s_mov_b32 s20, s6
	s_mov_b32 s5, 0
	s_lshr_b32 s6, s29, 4
	s_mov_b32 s28, s8
	s_mov_b32 s29, s9
	s_mov_b32 s30, s14
	s_mov_b32 s31, s15
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s14
	s_mov_b32 s11, s15
	s_mov_b32 s7, 0
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s7, s5, s34
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v16, v87, s5, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s7, s7, s19
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v17, v88, s5, 1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v18, v32, s7, 1
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s22, s5, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v16, 0x80000000, v16, s17
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s7, s22, 4
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e64 v18, 0x80000000, v18, s0
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_lg_u32 s5, s6
	s_mov_b32 s5, s22
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x1
	buffer_load_u16 v16, v16, s[28:31], 0 offen
	buffer_load_u16 v17, v17, s[28:31], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	buffer_load_u16 v18, v18, s[8:11], 0 offen
	.loc	1 1524 21                       ; ragged.py:1524:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v16, 16, v16
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v28, 16, v17
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v30, v113, v16 :: v_dual_lshlrev_b32 v17, 16, v18
	v_mul_f32_e32 v29, v114, v16
	v_mul_f32_e32 v31, v112, v16
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_store_b32 v97, v17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v112, v13, v28
	v_mul_f32_e32 v113, v12, v28
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[24:27], v98 offset:272
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v2, v2, v28
	v_mul_f32_e32 v0, v0, v28
	v_mul_f32_e32 v115, v10, v28
	v_mul_f32_e32 v8, v8, v28
	v_mul_f32_e32 v114, v11, v28
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[10:13], v98 offset:256
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v9, v9, v28
	v_mul_f32_e32 v99, v99, v16
	v_mul_f32_e32 v100, v100, v16
	v_mul_f32_e32 v7, v7, v28
	v_mul_f32_e32 v103, v103, v16
	v_mul_f32_e32 v104, v104, v16
	v_mul_f32_e32 v101, v101, v16
	v_mul_f32_e32 v5, v5, v28
	v_mul_f32_e32 v4, v4, v28
	v_mul_f32_e32 v6, v6, v28
	v_mul_f32_e32 v3, v3, v28
	v_mul_f32_e32 v1, v1, v28
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[20:23], v98 offset:16
	.loc	1 1525 17                       ; ragged.py:1525:17
	s_waitcnt lgkmcnt(2)
	v_fmac_f32_e32 v63, v99, v27
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v105, v105, v16 :: v_dual_fmac_f32 v64, v100, v26
	v_mul_f32_e32 v106, v106, v16
	v_dual_mul_f32 v15, v15, v28 :: v_dual_fmac_f32 v48, v1, v26
	.loc	1 1525 17                       ; ragged.py:1525:17
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v71, v105, v11
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v107, v107, v16 :: v_dual_fmac_f32 v72, v106, v10
	v_mul_f32_e32 v108, v108, v16
	v_mul_f32_e32 v111, v111, v16
	v_mul_f32_e32 v109, v109, v16
	v_mul_f32_e32 v110, v110, v16
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_fmac_f32_e32 v54, v7, v10
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_dual_mul_f32 v102, v102, v16 :: v_dual_fmac_f32 v65, v101, v25
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[16:19], v98
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v14, v14, v28
	.loc	1 1525 17                       ; ragged.py:1525:17
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v52, v5, v12 :: v_dual_fmac_f32 v73, v107, v23
	v_fmac_f32_e32 v74, v108, v22
	v_fmac_f32_e32 v66, v102, v24
	v_dual_fmac_f32 v56, v9, v22 :: v_dual_fmac_f32 v51, v4, v13
	v_dual_fmac_f32 v53, v6, v11 :: v_dual_fmac_f32 v50, v3, v24
	v_dual_fmac_f32 v49, v2, v25 :: v_dual_fmac_f32 v46, v0, v27
	v_fmac_f32_e32 v57, v115, v21
	v_dual_fmac_f32 v55, v8, v23 :: v_dual_fmac_f32 v58, v114, v20
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v77, v29, v16 :: v_dual_fmac_f32 v80, v30, v17
	v_fmac_f32_e32 v79, v31, v18
	v_dual_fmac_f32 v78, v111, v19 :: v_dual_fmac_f32 v75, v109, v21
	v_fmac_f32_e32 v76, v110, v20
	v_dual_fmac_f32 v62, v15, v16 :: v_dual_fmac_f32 v59, v113, v19
	v_dual_fmac_f32 v61, v14, v17 :: v_dual_fmac_f32 v60, v112, v18
	v_dual_fmac_f32 v69, v103, v13 :: v_dual_fmac_f32 v70, v104, v12
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_10
.LBB0_6:                                ; %.preheader
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	.loc	1 1426 27 is_stmt 1             ; ragged.py:1426:27
	s_and_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v0, 0
	s_add_i32 s7, s7, s33
	s_mov_b32 s35, s3
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v1, v0
	v_mov_b32_e32 v2, v0
	v_mov_b32_e32 v3, v0
	v_mov_b32_e32 v4, v0
	v_mov_b32_e32 v5, v0
	v_mov_b32_e32 v6, v0
	v_mov_b32_e32 v7, v0
	v_mov_b32_e32 v8, v0
	v_mov_b32_e32 v9, v0
	v_mov_b32_e32 v10, v0
	v_mov_b32_e32 v11, v0
	v_mov_b32_e32 v12, v0
	v_mov_b32_e32 v13, v0
	v_mov_b32_e32 v14, v0
	v_mov_b32_e32 v15, v0
	v_mov_b32_e32 v16, v0
	v_mov_b32_e32 v17, v0
	v_mov_b32_e32 v18, v0
	v_mov_b32_e32 v19, v0
	v_mov_b32_e32 v20, v0
	v_mov_b32_e32 v21, v0
	v_mov_b32_e32 v22, v0
	v_mov_b32_e32 v23, v0
	v_mov_b32_e32 v24, v0
	v_mov_b32_e32 v25, v0
	v_mov_b32_e32 v26, v0
	v_mov_b32_e32 v27, v0
	v_mov_b32_e32 v28, v0
	v_mov_b32_e32 v29, v0
	v_mov_b32_e32 v30, v0
	v_mov_b32_e32 v31, v0
.LBB0_8:                                ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1436 46 is_stmt 1             ; ragged.py:1436:46
	s_add_i32 s36, s7, s35
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_mov_b32 s22, s14
	.loc	1 1436 46                       ; ragged.py:1436:46
	s_mul_i32 s37, s36, s18
	.loc	1 1437 46                       ; ragged.py:1437:46
	s_mul_i32 s36, s36, s19
	.loc	1 1436 46                       ; ragged.py:1436:46
	s_add_i32 s37, s37, s27
	.loc	1 1437 46                       ; ragged.py:1437:46
	v_add_nc_u32_e32 v99, s36, v32
	v_add_nc_u32_e32 v100, s36, v83
	v_add_nc_u32_e32 v101, s36, v84
	v_add_nc_u32_e32 v102, s36, v35
	v_add_nc_u32_e32 v103, s36, v85
	v_add_nc_u32_e32 v104, s36, v36
	v_add_nc_u32_e32 v105, s36, v37
	v_add_nc_u32_e32 v106, s36, v38
	v_add_nc_u32_e32 v107, s36, v86
	v_add_nc_u32_e32 v108, s36, v39
	v_add_nc_u32_e32 v109, s36, v40
	v_add_nc_u32_e32 v110, s36, v41
	v_add_nc_u32_e32 v111, s36, v42
	v_add_nc_u32_e32 v112, s36, v43
	v_add_nc_u32_e32 v113, s36, v44
	v_add_nc_u32_e32 v114, s36, v45
	v_add_nc_u32_e32 v115, s37, v33
	v_add_nc_u32_e32 v116, s37, v81
	v_add_nc_u32_e32 v117, s37, v82
	v_add_nc_u32_e32 v118, s37, v34
	.loc	1 1437 38 is_stmt 0             ; ragged.py:1437:38
	v_cndmask_b32_e64 v99, 0x80000000, v99, s0
	v_cndmask_b32_e64 v100, 0x80000000, v100, s0
	v_cndmask_b32_e64 v101, 0x80000000, v101, s0
	s_mov_b32 s23, s15
	v_cndmask_b32_e64 v102, 0x80000000, v102, s0
	v_cndmask_b32_e64 v103, 0x80000000, v103, s0
	v_cndmask_b32_e64 v104, 0x80000000, v104, s0
	v_cndmask_b32_e64 v105, 0x80000000, v105, s0
	v_cndmask_b32_e64 v106, 0x80000000, v106, s0
	v_cndmask_b32_e64 v107, 0x80000000, v107, s0
	v_cndmask_b32_e64 v108, 0x80000000, v108, s0
	v_cndmask_b32_e64 v109, 0x80000000, v109, s0
	v_cndmask_b32_e64 v110, 0x80000000, v110, s0
	v_cndmask_b32_e64 v111, 0x80000000, v111, s0
	v_cndmask_b32_e64 v112, 0x80000000, v112, s0
	v_cndmask_b32_e64 v113, 0x80000000, v113, s0
	v_cndmask_b32_e64 v114, 0x80000000, v114, s0
	.loc	1 1436 38 is_stmt 1             ; ragged.py:1436:38
	v_cndmask_b32_e64 v115, 0x80000000, v115, s1
	v_cndmask_b32_e64 v116, 0x80000000, v116, s1
	v_cndmask_b32_e64 v117, 0x80000000, v117, s1
	v_cndmask_b32_e64 v118, 0x80000000, v118, s1
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_clause 0xf
	buffer_load_u8 v119, v99, s[20:23], 0 offen
	buffer_load_u8 v120, v100, s[20:23], 0 offen
	buffer_load_u8 v121, v101, s[20:23], 0 offen
	buffer_load_u8 v100, v102, s[20:23], 0 offen
	buffer_load_u8 v122, v103, s[20:23], 0 offen
	buffer_load_u8 v101, v104, s[20:23], 0 offen
	buffer_load_u8 v104, v105, s[20:23], 0 offen
	buffer_load_u8 v99, v106, s[20:23], 0 offen
	buffer_load_u8 v106, v107, s[20:23], 0 offen
	buffer_load_u8 v103, v108, s[20:23], 0 offen
	buffer_load_u8 v108, v109, s[20:23], 0 offen
	buffer_load_u8 v102, v110, s[20:23], 0 offen
	buffer_load_u8 v105, v114, s[20:23], 0 offen
	buffer_load_u8 v107, v112, s[20:23], 0 offen
	buffer_load_u8 v109, v111, s[20:23], 0 offen
	buffer_load_u8 v110, v113, s[20:23], 0 offen
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_clause 0x3
	buffer_load_u8 v111, v118, s[12:15], 0 offen
	buffer_load_u8 v112, v116, s[12:15], 0 offen
	buffer_load_u8 v113, v117, s[12:15], 0 offen
	buffer_load_u8 v114, v115, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1448 25                       ; ragged.py:1448:25
	s_add_i32 s22, s35, 16
	.loc	1 1426 27                       ; ragged.py:1426:27
	s_cmp_lt_i32 s35, 0
	s_mov_b32 s35, s22
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_waitcnt vmcnt(16)
	v_lshlrev_b16 v100.h, 8, v120.l
	v_lshlrev_b16 v100.l, 8, v100.l
	s_waitcnt vmcnt(12)
	v_lshlrev_b16 v99.h, 8, v101.l
	v_lshlrev_b16 v99.l, 8, v99.l
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b16 v104.h, v121.l, v100.l
	s_waitcnt vmcnt(8)
	v_lshlrev_b16 v102.h, 8, v103.l
	v_lshlrev_b16 v102.l, 8, v102.l
	s_waitcnt vmcnt(7)
	v_lshlrev_b16 v101.l, 8, v105.l
	s_waitcnt vmcnt(6)
	v_lshlrev_b16 v101.h, 8, v107.l
	v_or_b16 v105.h, v104.l, v99.l
	v_or_b16 v105.l, v122.l, v99.h
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v103.l, 8, v111.l
	s_waitcnt vmcnt(2)
	v_lshlrev_b16 v103.h, 8, v112.l
	.loc	1 1437 38                       ; ragged.py:1437:38
	v_or_b16 v104.l, v119.l, v100.h
	v_or_b16 v107.h, v110.l, v101.l
	v_or_b16 v107.l, v109.l, v101.h
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_waitcnt vmcnt(1)
	v_or_b16 v99.h, v113.l, v103.l
	s_waitcnt vmcnt(0)
	v_or_b16 v99.l, v114.l, v103.h
	.loc	1 1437 38                       ; ragged.py:1437:38
	v_or_b16 v106.h, v108.l, v102.l
	v_or_b16 v106.l, v106.l, v102.h
	.loc	1 1436 38                       ; ragged.py:1436:38
	ds_store_b32 v89, v99
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[99:102], v90 offset1:32
	ds_load_b64 v[111:112], v91
	ds_load_b64 v[113:114], v92
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v93, v[104:105]
	ds_store_b64 v94, v[106:107]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[103:106], v95 offset1:2
	ds_load_2addr_stride64_b64 v[107:110], v96 offset1:2
	.loc	1 1438 35                       ; ragged.py:1438:35
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[103:104], v[99:100], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[105:106], v[99:100], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[103:104], v[113:114], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[105:106], v[113:114], v[24:31] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[107:108], v[111:112], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[109:110], v[111:112], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[107:108], v[101:102], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[109:110], v[101:102], v[24:31] neg_lo:[1,1,0]
	.loc	1 1426 27                       ; ragged.py:1426:27
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v114, v0
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
	v_cvt_f32_i32_e32 v15, v16
	v_cvt_f32_i32_e32 v14, v17
	v_cvt_f32_i32_e32 v13, v18
	v_cvt_f32_i32_e32 v12, v19
	v_cvt_f32_i32_e32 v11, v20
	v_cvt_f32_i32_e32 v10, v21
	v_cvt_f32_i32_e32 v9, v22
	v_cvt_f32_i32_e32 v8, v23
	v_cvt_f32_i32_e32 v7, v24
	v_cvt_f32_i32_e32 v6, v25
	v_cvt_f32_i32_e32 v5, v26
	v_cvt_f32_i32_e32 v4, v27
	v_cvt_f32_i32_e32 v3, v28
	v_cvt_f32_i32_e32 v2, v29
	v_cvt_f32_i32_e32 v1, v30
	v_cvt_f32_i32_e32 v0, v31
	s_branch .LBB0_5
.LBB0_10:                               ; %Flow85
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v17, v68
.LBB0_11:                               ; %._crit_edge38
	.loc	1 1310 36 is_stmt 1             ; ragged.py:1310:36
	v_lshrrev_b32_e32 v9, 1, v67
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v20, s19, v47
	s_mul_i32 s3, s26, s19
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_bfe_u32 v21, v77, 16, 1
	v_bfe_u32 v23, v78, 16, 1
	.loc	1 1310 36 is_stmt 1             ; ragged.py:1310:36
	v_or_b32_e32 v0, 0x47, v9
	v_or_b32_e32 v1, 0x46, v9
	v_or_b32_e32 v2, 0x45, v9
	v_or_b32_e32 v3, 0x44, v9
	v_or_b32_e32 v4, 0x43, v9
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v7, s16, v0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v5, 0x42, v9
	v_or_b32_e32 v6, 0x41, v9
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v8, s16, v1
	v_or_b32_e32 v10, s16, v2
	v_or_b32_e32 v11, s16, v3
	v_or_b32_e32 v12, s16, v4
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s19, v7
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v7, 64, v9
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s19, v8
	v_cmp_gt_i32_e64 s1, s19, v10
	v_cmp_gt_i32_e64 s4, s19, v11
	v_cmp_gt_i32_e64 s5, s19, v12
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v11, s16, v5
	v_or_b32_e32 v12, s16, v6
	v_or_b32_e32 v13, s16, v7
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v8, 7, v9
	v_or_b32_e32 v10, 6, v9
	v_or_b32_e32 v14, 3, v9
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s6, s19, v11
	v_cmp_gt_i32_e64 s7, s19, v12
	v_cmp_gt_i32_e64 s8, s19, v13
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v13, s16, v8
	v_or_b32_e32 v15, s16, v10
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v11, 5, v9
	v_or_b32_e32 v12, 4, v9
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v19, s16, v14
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s9, s19, v13
	v_cmp_gt_i32_e64 s10, s19, v15
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v13, s16, v11
	v_or_b32_e32 v18, s16, v12
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v15, 2, v9
	v_or_b32_e32 v16, 1, v9
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s13, s19, v19
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v19, s16, v9
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s11, s19, v13
	v_cmp_gt_i32_e64 s12, s19, v18
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v13, s16, v15
	v_or_b32_e32 v18, s16, v16
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add3_u32 v20, s3, s16, v20
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s16, s19, v19
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_bfe_u32 v19, v80, 16, 1
	v_bfe_u32 v22, v79, 16, 1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s15, s19, v18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add3_u32 v18, v77, v21, 0x7fff
	v_cmp_o_f32_e64 s3, v77, v77
	v_add3_u32 v19, v80, v19, 0x7fff
	v_cmp_o_f32_e64 s18, v80, v80
	v_add3_u32 v23, v78, v23, 0x7fff
	v_cmp_o_f32_e64 s20, v78, v78
	v_bfe_u32 v24, v76, 16, 1
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s14, s19, v13
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_lshl_add_u32 v13, s19, 4, v20
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_add3_u32 v22, v79, v22, 0x7fff
	v_cmp_o_f32_e64 s19, v79, v79
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s3
	v_cndmask_b16 v18.h, 0x7fff, v19.h, s18
	v_cndmask_b16 v19.h, 0x7fff, v23.h, s20
	v_add3_u32 v23, v76, v24, 0x7fff
	v_bfe_u32 v24, v74, 16, 1
	v_bfe_u32 v25, v73, 16, 1
	v_cndmask_b16 v19.l, 0x7fff, v22.h, s19
	v_bfe_u32 v22, v75, 16, 1
	v_cmp_o_f32_e64 s3, v76, v76
	v_add3_u32 v24, v74, v24, 0x7fff
	v_cmp_o_f32_e64 s19, v74, v74
	v_add3_u32 v25, v73, v25, 0x7fff
	v_cmp_o_f32_e64 s20, v73, v73
	v_add3_u32 v22, v75, v22, 0x7fff
	v_cmp_o_f32_e64 s18, v75, v75
	v_cndmask_b16 v22.l, 0x7fff, v23.h, s3
	v_bfe_u32 v23, v72, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s19
	v_cndmask_b16 v24.h, 0x7fff, v25.h, s20
	v_bfe_u32 v25, v71, 16, 1
	v_bfe_u32 v27, v69, 16, 1
	v_bfe_u32 v26, v70, 16, 1
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s18
	v_add3_u32 v23, v72, v23, 0x7fff
	v_cmp_o_f32_e64 s3, v72, v72
	v_add3_u32 v25, v71, v25, 0x7fff
	v_cmp_o_f32_e64 s18, v71, v71
	v_add3_u32 v27, v69, v27, 0x7fff
	v_cmp_o_f32_e64 s20, v69, v69
	v_bfe_u32 v28, v66, 16, 1
	v_add3_u32 v26, v70, v26, 0x7fff
	v_cmp_o_f32_e64 s19, v70, v70
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s3
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s18
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s20
	v_add3_u32 v27, v66, v28, 0x7fff
	v_bfe_u32 v28, v64, 16, 1
	v_bfe_u32 v29, v63, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v26.h, s19
	v_bfe_u32 v26, v65, 16, 1
	v_cmp_o_f32_e64 s3, v66, v66
	v_add3_u32 v28, v64, v28, 0x7fff
	v_cmp_o_f32_e64 s19, v64, v64
	v_add3_u32 v29, v63, v29, 0x7fff
	v_cmp_o_f32_e64 s20, v63, v63
	v_add3_u32 v26, v65, v26, 0x7fff
	v_cmp_o_f32_e64 s18, v65, v65
	v_cndmask_b16 v26.l, 0x7fff, v27.h, s3
	v_bfe_u32 v27, v62, 16, 1
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s19
	v_cndmask_b16 v28.h, 0x7fff, v29.h, s20
	v_bfe_u32 v29, v61, 16, 1
	v_bfe_u32 v31, v59, 16, 1
	v_bfe_u32 v30, v60, 16, 1
	v_cndmask_b16 v26.h, 0x7fff, v26.h, s18
	v_add3_u32 v27, v62, v27, 0x7fff
	v_cmp_o_f32_e64 s3, v62, v62
	v_add3_u32 v29, v61, v29, 0x7fff
	v_cmp_o_f32_e64 s18, v61, v61
	v_add3_u32 v31, v59, v31, 0x7fff
	v_cmp_o_f32_e64 s20, v59, v59
	v_bfe_u32 v32, v58, 16, 1
	v_add3_u32 v30, v60, v30, 0x7fff
	v_cmp_o_f32_e64 s19, v60, v60
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s3
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s18
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s20
	v_add3_u32 v31, v58, v32, 0x7fff
	v_bfe_u32 v32, v56, 16, 1
	v_bfe_u32 v33, v55, 16, 1
	v_cndmask_b16 v29.l, 0x7fff, v30.h, s19
	v_bfe_u32 v30, v57, 16, 1
	v_cmp_o_f32_e64 s3, v58, v58
	v_add3_u32 v32, v56, v32, 0x7fff
	v_cmp_o_f32_e64 s19, v56, v56
	v_add3_u32 v33, v55, v33, 0x7fff
	v_cmp_o_f32_e64 s20, v55, v55
	v_add3_u32 v30, v57, v30, 0x7fff
	v_cmp_o_f32_e64 s18, v57, v57
	v_cndmask_b16 v30.l, 0x7fff, v31.h, s3
	v_bfe_u32 v31, v54, 16, 1
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s19
	v_cndmask_b16 v32.h, 0x7fff, v33.h, s20
	v_bfe_u32 v33, v53, 16, 1
	v_bfe_u32 v35, v51, 16, 1
	v_bfe_u32 v34, v52, 16, 1
	v_cndmask_b16 v30.h, 0x7fff, v30.h, s18
	v_add3_u32 v31, v54, v31, 0x7fff
	v_cmp_o_f32_e64 s3, v54, v54
	v_add3_u32 v33, v53, v33, 0x7fff
	v_cmp_o_f32_e64 s18, v53, v53
	v_add3_u32 v35, v51, v35, 0x7fff
	v_cmp_o_f32_e64 s20, v51, v51
	v_bfe_u32 v36, v50, 16, 1
	v_add3_u32 v34, v52, v34, 0x7fff
	v_cmp_o_f32_e64 s19, v52, v52
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s3
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s18
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s20
	v_add3_u32 v35, v50, v36, 0x7fff
	v_bfe_u32 v36, v48, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v34.h, s19
	v_bfe_u32 v34, v49, 16, 1
	v_cmp_o_f32_e64 s3, v50, v50
	v_bfe_u32 v37, v46, 16, 1
	v_add3_u32 v36, v48, v36, 0x7fff
	v_cmp_o_f32_e64 s19, v48, v48
	v_add3_u32 v34, v49, v34, 0x7fff
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
	v_cmp_o_f32_e64 s18, v49, v49
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
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	v_cndmask_b32_e64 v51, 0x80000000, v51, s3
	buffer_store_b16 v36, v52, s[24:27], 0 offen
	v_add_nc_u32_e32 v36, 6, v20
	v_mov_b16_e32 v21.l, v18.h
	s_clause 0x1
	buffer_store_b16 v32, v50, s[24:27], 0 offen
	buffer_store_b16 v18, v51, s[24:27], 0 offen
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
	buffer_store_b16 v21, v32, s[24:27], 0 offen
	buffer_store_b16 v35, v18, s[24:27], 0 offen
	v_add_nc_u32_e32 v18, 14, v20
	v_mov_b16_e32 v33.l, v19.h
	s_clause 0x1
	buffer_store_b16 v34, v36, s[24:27], 0 offen
	buffer_store_b16 v19, v50, s[24:27], 0 offen
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
	buffer_store_b16 v33, v18, s[24:27], 0 offen
	buffer_store_b16 v22, v19, s[24:27], 0 offen
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
	buffer_store_b16 v39, v21, s[24:27], 0 offen
	buffer_store_b16 v23, v32, s[24:27], 0 offen
	v_add_nc_u32_e32 v21, 0x8a, v20
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	v_add_nc_u32_e32 v22, 0x8c, v20
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s17, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b16 v38, v18, s[24:27], 0 offen
	buffer_store_b16 v24, v19, s[24:27], 0 offen
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
	buffer_store_b16 v41, v21, s[24:27], 0 offen
	buffer_store_b16 v25, v22, s[24:27], 0 offen
	buffer_store_b16 v40, v18, s[24:27], 0 offen
	buffer_store_b16 v26, v9, s[24:27], 0 offen
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
	buffer_store_b16 v43, v16, s[24:27], 0 offen
	buffer_store_b16 v27, v15, s[24:27], 0 offen
	buffer_store_b16 v42, v9, s[24:27], 0 offen
	buffer_store_b16 v28, v12, s[24:27], 0 offen
	buffer_store_b16 v45, v11, s[24:27], 0 offen
	buffer_store_b16 v29, v10, s[24:27], 0 offen
	buffer_store_b16 v44, v8, s[24:27], 0 offen
	buffer_store_b16 v37, v7, s[24:27], 0 offen
	buffer_store_b16 v47, v6, s[24:27], 0 offen
	buffer_store_b16 v31, v5, s[24:27], 0 offen
	buffer_store_b16 v46, v4, s[24:27], 0 offen
	buffer_store_b16 v30, v3, s[24:27], 0 offen
	buffer_store_b16 v49, v2, s[24:27], 0 offen
	buffer_store_b16 v17, v1, s[24:27], 0 offen
	buffer_store_b16 v48, v0, s[24:27], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 123
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
		.amdhsa_inst_pref_size 50
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.num_vgpr, 123
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.numbered_sgpr, 38
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6368
; TotalNumSgprs: 40
; NumVgprs: 123
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 15
; NumSGPRsForWavesPerEU: 40
; NumVGPRsForWavesPerEU: 123
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     40
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     123
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
