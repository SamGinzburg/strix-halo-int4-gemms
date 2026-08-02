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
	s_load_b64 s[34:35], s[0:1], 0x30
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s8, s2
	v_and_b32_e32 v55, 32, v0
	v_and_b32_e32 v56, 16, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 31
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s35, 0x7f
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
	s_ashr_i32 s12, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s5, s12, s4
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_abs_i32 s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s4
	s_sub_i32 s7, 0, s4
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
	s_xor_b32 s7, s2, s5
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s6, s4
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s8, s4
	s_cmp_ge_u32 s8, s4
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s4
	s_cselect_b32 s4, s9, s6
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s6, s12
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s4, s4, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s8, s6
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s4, s4, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s7, 0, s6
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s5, s4, s5
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s8
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s10, s2, s12
	s_ashr_i32 s13, s10, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_cvt_u32_f32 s8, s8
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s7, s7, s8
	s_mul_hi_u32 s5, s8, s7
	s_abs_i32 s7, s2
	s_add_i32 s5, s8, s5
	s_load_b64 s[8:9], s[0:1], 0x20
	s_mul_hi_u32 s5, s7, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s5, s6
	s_add_i32 s10, s5, 1
	s_sub_i32 s7, s7, s11
	s_sub_i32 s11, s7, s6
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s5, s10, s5
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s5, 1
	s_cmp_ge_u32 s7, s6
	s_mov_b32 s7, 0
	s_cselect_b32 s6, s10, s5
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s5, s4, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s6, s6, s13
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[10:11], s[4:5], 2
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s6, s6, s13
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s8, s8, s10
	s_addc_u32 s9, s9, s11
	s_load_b32 s5, s[8:9], 0x0
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s9, s6, s12
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s8, s5, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_gt_i32 s8, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge15_crit_edge
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_and_b32_e32 v2, 32, v0
	v_and_b32_e32 v1, 16, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 34 is_stmt 0                ; ragged.py:0:34
	s_mov_b32 s7, -1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow212
	s_load_b64 s[40:41], s[0:1], 0x28
	v_dual_mov_b32 v58, 0 :: v_dual_and_b32 v33, 31, v0
	v_dual_mov_b32 v47, 0 :: v_dual_and_b32 v54, 15, v0
	v_dual_mov_b32 v60, 0 :: v_dual_and_b32 v53, 64, v0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_mov_b32_e32 v95, 0
	s_sub_i32 s42, s2, s9
	s_lshl_b32 s43, s6, 5
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_mul_i32 s33, s4, s34
	s_cbranch_vccnz .LBB0_12
; %bb.4:                                ; %.lr.ph14
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, s43, v54
	s_clause 0x1
	s_load_b256 s[16:23], s[0:1], 0x0
	s_load_b64 s[6:7], s[0:1], 0x38
	v_or_b32_e32 v2, s43, v33
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_lshl_or_b32 v34, s42, 7, v0
	v_bfe_i32 v4, v0, 4, 1
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v3, 16, v1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
	v_dual_mov_b32 v98, 0 :: v_dual_and_b32 v1, 0x60, v0
	v_cmp_gt_i32_e32 vcc_lo, s34, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s1, s34, v3
	v_bfe_i32 v3, v0, 3, 1
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_lshrrev_b32_e32 v2, 3, v1
	v_dual_mov_b32 v88, 0 :: v_dual_lshlrev_b32 v5, 4, v0
	v_bfe_i32 v6, v0, 5, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v84, 0 :: v_dual_and_b32 v99, 0x88, v3
	v_mad_u64_u32 v[35:36], null, s34, v2, v[33:34]
	v_dual_mov_b32 v82, 0 :: v_dual_and_b32 v3, 0x108, v4
	v_dual_mov_b32 v91, 0 :: v_dual_and_b32 v4, 0x70, v5
	v_dual_mov_b32 v89, 0 :: v_dual_and_b32 v6, 0x108, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[36:37], null, s34, 3, v[35:36]
	v_mad_u64_u32 v[37:38], null, s35, 3, v[34:35]
	v_xor_b32_e32 v3, v3, v99
	v_or_b32_e32 v7, v99, v4
	v_mad_u64_u32 v[38:39], null, s35, 5, v[34:35]
	v_mad_u64_u32 v[39:40], null, s35, 6, v[34:35]
	v_mad_u64_u32 v[40:41], null, s35, 7, v[34:35]
	v_lshrrev_b32_e32 v75, 5, v0
	v_mad_u64_u32 v[41:42], null, s35, 9, v[34:35]
	v_mad_u64_u32 v[42:43], null, s35, 10, v[34:35]
	v_xor_b32_e32 v6, v7, v6
	v_xor_b32_e32 v2, v3, v2
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v100, 0, v4
	v_xor_b32_e32 v4, 8, v7
	v_and_or_b32 v101, 0x670, v5, v3
	v_xor_b32_e32 v3, 0x108, v7
	v_add3_u32 v7, s43, s33, v54
	v_dual_mov_b32 v79, 0 :: v_dual_and_b32 v10, 0x70, v0
	v_dual_mov_b32 v73, 0 :: v_dual_lshlrev_b32 v12, 5, v0
	v_mad_u64_u32 v[43:44], null, s35, 11, v[34:35]
	v_mad_u64_u32 v[44:45], null, s35, 12, v[34:35]
	v_mad_u64_u32 v[45:46], null, s35, 13, v[34:35]
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_mad_u64_u32 v[46:47], null, s34, v75, v[33:34]
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s2, s8, 31
	v_lshl_or_b32 v102, v53, 3, v6
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v11, 16, v7
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v105, v7, s7
	v_dual_mov_b32 v76, 0 :: v_dual_lshlrev_b32 v7, 2, v10
	v_dual_mov_b32 v74, 0 :: v_dual_lshlrev_b32 v13, 1, v0
	v_dual_mov_b32 v71, 0 :: v_dual_and_b32 v12, 32, v12
	s_add_i32 s8, s8, s2
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v85, 0, v54
	s_ashr_i32 s44, s8, 1
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_lshr_b32 s8, s5, 31
	v_xor_b32_e32 v5, 8, v101
	v_xor_b32_e32 v6, 8, v102
	v_or_b32_e32 v8, 0x380, v0
	v_or_b32_e32 v9, 0x780, v0
	v_lshrrev_b32_e32 v1, 1, v1
	v_mul_lo_u32 v106, v11, s7
	v_dual_mov_b32 v72, 0 :: v_dual_and_b32 v11, 28, v13
	v_add3_u32 v7, 0, v7, v12
	v_dual_mov_b32 v69, 0 :: v_dual_lshlrev_b32 v10, 1, v10
	v_mad_u64_u32 v[48:49], null, s35, 14, v[34:35]
	s_add_i32 s8, s5, s8
	v_mad_u64_u32 v[49:50], null, s35, 15, v[34:35]
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_mad_u64_u32 v[50:51], null, s34, 12, v[46:47]
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s45, s3, 4
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_ashr_i32 s46, s8, 1
	s_and_b32 s25, s17, 0xffff
	s_and_b32 s29, s19, 0xffff
	s_bitcmp1_b32 s5, 0
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s2, s35, v34
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v77, 4, v75
	v_or_b32_e32 v80, 8, v75
	v_or_b32_e32 v81, 12, v75
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v86, s34, v35
	v_lshl_add_u32 v87, s34, 1, v35
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v90, s35, v34
	v_lshl_add_u32 v92, s35, 1, v34
	v_lshl_add_u32 v93, s35, 2, v34
	v_lshl_add_u32 v94, s35, 3, v34
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_lshl_add_u32 v103, s34, 2, v46
	v_lshl_add_u32 v104, s34, 3, v46
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v107, v100, v2
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v108, 0, v4
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v109, 0, v3
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v110, 0, v5
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v111, 0, v6
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v112, 0, v0
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v113, 0, v8
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v114, 0, v9
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v115, v85, v1
	v_dual_mov_b32 v59, 0 :: v_dual_add_nc_u32 v116, v7, v11
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v117, 0, v10
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v47, 0
	s_mov_b32 s28, s18
	s_cselect_b32 s18, -1, 0
	s_add_i32 s19, s44, -1
	.loc	1 1464 43                       ; ragged.py:1464:43
	s_mul_i32 s47, s4, s6
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s48, s4, s7
	.loc	1 1421 13                       ; ragged.py:1421:13
	s_mov_b32 s49, 0
	s_mov_b32 s24, s16
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s21, s21, 0xffff
	s_and_b32 s37, s23, 0xffff
	s_mov_b32 s36, s22
	.loc	1 1421 19 is_stmt 0             ; ragged.py:1421:19
	s_lshr_b32 s50, s19, 4
	s_mov_b32 s3, 0
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1520 25 is_stmt 1             ; ragged.py:1520:25
	s_add_i32 s3, s49, s48
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v51, v105, s49, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s3, s3, s35
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v52, v106, s49, 1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v118, v34, s3, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_mov_b32 s22, s26
	v_cndmask_b32_e64 v51, 0x80000000, v51, s0
	s_mov_b32 s23, s27
	v_cndmask_b32_e64 v52, 0x80000000, v52, s1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e64 v118, 0x80000000, v118, s2
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x1
	buffer_load_u16 v51, v51, s[20:23], 0 offen
	buffer_load_u16 v52, v52, s[20:23], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	buffer_load_u16 v118, v118, s[36:39], 0 offen
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
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v119, v1
	v_cvt_f32_i32_e32 v120, v2
	v_cvt_f32_i32_e32 v121, v3
	v_cvt_f32_i32_e32 v122, v4
	v_cvt_f32_i32_e32 v123, v5
	v_cvt_f32_i32_e32 v124, v6
	v_cvt_f32_i32_e32 v125, v7
	v_cvt_f32_i32_e32 v126, v8
	.loc	1 1524 21                       ; ragged.py:1524:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s4, s49, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s3, s4, 4
	s_cmp_lg_u32 s49, s50
	s_mov_b32 s49, s4
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v1, 16, v51
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v51, 16, v52
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v25, v25, v1 :: v_dual_lshlrev_b32 v2, 16, v118
	v_mul_f32_e32 v26, v26, v1
	v_dual_mul_f32 v27, v27, v1 :: v_dual_mul_f32 v52, v9, v51
	v_dual_mul_f32 v28, v28, v1 :: v_dual_mul_f32 v127, v11, v51
	v_dual_mul_f32 v29, v29, v1 :: v_dual_mul_f32 v118, v10, v51
	v_dual_mul_f32 v30, v30, v1 :: v_dual_mul_f32 v129, v13, v51
	v_dual_mul_f32 v31, v31, v1 :: v_dual_mul_f32 v128, v12, v51
	v_dual_mul_f32 v32, v32, v1 :: v_dual_mul_f32 v131, v15, v51
	v_dual_mul_f32 v17, v17, v1 :: v_dual_mul_f32 v130, v14, v51
	v_dual_mul_f32 v18, v18, v1 :: v_dual_mul_f32 v119, v119, v51
	v_dual_mul_f32 v19, v19, v1 :: v_dual_mul_f32 v132, v16, v51
	v_dual_mul_f32 v20, v20, v1 :: v_dual_mul_f32 v121, v121, v51
	v_dual_mul_f32 v21, v21, v1 :: v_dual_mul_f32 v120, v120, v51
	v_dual_mul_f32 v22, v22, v1 :: v_dual_mul_f32 v123, v123, v51
	v_dual_mul_f32 v23, v23, v1 :: v_dual_mul_f32 v122, v122, v51
	v_dual_mul_f32 v24, v24, v1 :: v_dual_mul_f32 v125, v125, v51
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_store_b32 v116, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v117
	ds_load_b128 v[5:8], v117 offset:16
	ds_load_b128 v[9:12], v117 offset:256
	ds_load_b128 v[13:16], v117 offset:272
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v124, v124, v51
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v51, v126, v51 :: v_dual_fmac_f32 v96, v28, v4
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_dual_fmac_f32 v95, v25, v1 :: v_dual_fmac_f32 v98, v26, v2
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v97, v27, v3 :: v_dual_fmac_f32 v84, v32, v8
	v_dual_fmac_f32 v91, v29, v5 :: v_dual_fmac_f32 v88, v31, v7
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v89, v30, v6 :: v_dual_fmac_f32 v78, v20, v12
	v_dual_fmac_f32 v83, v17, v9 :: v_dual_fmac_f32 v82, v18, v10
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v79, v19, v11 :: v_dual_fmac_f32 v76, v21, v13
	v_dual_fmac_f32 v74, v22, v14 :: v_dual_fmac_f32 v73, v23, v15
	v_dual_fmac_f32 v72, v24, v16 :: v_dual_fmac_f32 v69, v127, v3
	v_dual_fmac_f32 v71, v52, v1 :: v_dual_fmac_f32 v70, v118, v2
	v_dual_fmac_f32 v68, v128, v4 :: v_dual_fmac_f32 v67, v129, v5
	v_dual_fmac_f32 v66, v130, v6 :: v_dual_fmac_f32 v65, v131, v7
	v_dual_fmac_f32 v64, v132, v8 :: v_dual_fmac_f32 v63, v119, v9
	v_dual_fmac_f32 v62, v120, v10 :: v_dual_fmac_f32 v61, v121, v11
	v_dual_fmac_f32 v60, v122, v12 :: v_dual_fmac_f32 v59, v123, v13
	v_dual_fmac_f32 v58, v124, v14 :: v_dual_fmac_f32 v57, v125, v15
	v_fmac_f32_e32 v47, v51, v16
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_11
.LBB0_6:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 1456 54                       ; ragged.py:1456:54
	s_sub_i32 s4, s46, s3
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
	s_mov_b32 s4, s45
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_ge_i32 s45, s5
	s_cbranch_scc1 .LBB0_9
; %bb.7:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v25, 0
	s_add_i32 s6, s3, s47
	s_mov_b32 s4, s45
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
.LBB0_8:                                ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1471 46 is_stmt 1             ; ragged.py:1471:46
	s_add_i32 s7, s6, s4
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_mov_b32 s30, s26
	.loc	1 1471 46                       ; ragged.py:1471:46
	s_mul_i32 s8, s7, s34
	.loc	1 1472 46                       ; ragged.py:1472:46
	s_mul_i32 s7, s7, s35
	.loc	1 1471 46                       ; ragged.py:1471:46
	s_add_i32 s8, s8, s43
	.loc	1 1472 46                       ; ragged.py:1472:46
	v_add_nc_u32_e32 v51, s7, v34
	v_add_nc_u32_e32 v52, s7, v90
	v_add_nc_u32_e32 v118, s7, v92
	v_add_nc_u32_e32 v119, s7, v37
	v_add_nc_u32_e32 v120, s7, v93
	v_add_nc_u32_e32 v121, s7, v38
	v_add_nc_u32_e32 v122, s7, v39
	v_add_nc_u32_e32 v123, s7, v40
	v_add_nc_u32_e32 v124, s7, v94
	v_add_nc_u32_e32 v125, s7, v41
	v_add_nc_u32_e32 v126, s7, v42
	v_add_nc_u32_e32 v127, s7, v43
	v_add_nc_u32_e32 v128, s7, v44
	v_add_nc_u32_e32 v129, s7, v45
	v_add_nc_u32_e32 v130, s7, v48
	v_add_nc_u32_e32 v131, s7, v49
	v_add_nc_u32_e32 v132, s8, v35
	v_add_nc_u32_e32 v133, s8, v86
	v_add_nc_u32_e32 v134, s8, v87
	v_add_nc_u32_e32 v135, s8, v36
	.loc	1 1472 38 is_stmt 0             ; ragged.py:1472:38
	v_cndmask_b32_e64 v51, 0x80000000, v51, s2
	v_cndmask_b32_e64 v52, 0x80000000, v52, s2
	v_cndmask_b32_e64 v118, 0x80000000, v118, s2
	s_mov_b32 s31, s27
	v_cndmask_b32_e64 v119, 0x80000000, v119, s2
	v_cndmask_b32_e64 v120, 0x80000000, v120, s2
	v_cndmask_b32_e64 v121, 0x80000000, v121, s2
	v_cndmask_b32_e64 v122, 0x80000000, v122, s2
	v_cndmask_b32_e64 v123, 0x80000000, v123, s2
	v_cndmask_b32_e64 v124, 0x80000000, v124, s2
	v_cndmask_b32_e64 v125, 0x80000000, v125, s2
	v_cndmask_b32_e64 v126, 0x80000000, v126, s2
	v_cndmask_b32_e64 v127, 0x80000000, v127, s2
	v_cndmask_b32_e64 v128, 0x80000000, v128, s2
	v_cndmask_b32_e64 v129, 0x80000000, v129, s2
	v_cndmask_b32_e64 v130, 0x80000000, v130, s2
	v_cndmask_b32_e64 v131, 0x80000000, v131, s2
	.loc	1 1471 38 is_stmt 1             ; ragged.py:1471:38
	v_dual_cndmask_b32 v132, 0x80000000, v132 :: v_dual_cndmask_b32 v133, 0x80000000, v133
	v_dual_cndmask_b32 v134, 0x80000000, v134 :: v_dual_cndmask_b32 v135, 0x80000000, v135
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_clause 0xf
	buffer_load_u8 v136, v51, s[28:31], 0 offen
	buffer_load_u8 v137, v52, s[28:31], 0 offen
	buffer_load_u8 v138, v118, s[28:31], 0 offen
	buffer_load_u8 v52, v119, s[28:31], 0 offen
	buffer_load_u8 v139, v120, s[28:31], 0 offen
	buffer_load_u8 v118, v121, s[28:31], 0 offen
	buffer_load_u8 v121, v122, s[28:31], 0 offen
	buffer_load_u8 v51, v123, s[28:31], 0 offen
	buffer_load_u8 v124, v124, s[28:31], 0 offen
	buffer_load_u8 v120, v125, s[28:31], 0 offen
	buffer_load_u8 v125, v126, s[28:31], 0 offen
	buffer_load_u8 v119, v127, s[28:31], 0 offen
	buffer_load_u8 v122, v131, s[28:31], 0 offen
	buffer_load_u8 v123, v129, s[28:31], 0 offen
	buffer_load_u8 v126, v128, s[28:31], 0 offen
	buffer_load_u8 v127, v130, s[28:31], 0 offen
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_clause 0x3
	buffer_load_u8 v128, v135, s[24:27], 0 offen
	buffer_load_u8 v129, v133, s[24:27], 0 offen
	buffer_load_u8 v130, v134, s[24:27], 0 offen
	buffer_load_u8 v131, v132, s[24:27], 0 offen
	v_add_nc_u32_e32 v132, v100, v99
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_add_nc_u32_e32 v134, 0, v101
	v_add_nc_u32_e32 v135, 0, v102
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1483 25                       ; ragged.py:1483:25
	s_add_i32 s4, s4, 16
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_lt_i32 s4, s5
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt vmcnt(16)
	v_lshlrev_b16 v52.h, 8, v137.l
	v_lshlrev_b16 v52.l, 8, v52.l
	s_waitcnt vmcnt(12)
	v_lshlrev_b16 v51.h, 8, v118.l
	v_lshlrev_b16 v51.l, 8, v51.l
	s_waitcnt vmcnt(7)
	v_or_b16 v122.h, v138.l, v52.l
	v_lshlrev_b16 v119.h, 8, v120.l
	v_lshlrev_b16 v119.l, 8, v119.l
	v_lshlrev_b16 v118.l, 8, v122.l
	s_waitcnt vmcnt(6)
	v_lshlrev_b16 v118.h, 8, v123.l
	v_or_b16 v122.l, v136.l, v52.h
	v_or_b16 v123.h, v121.l, v51.l
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v120.l, 8, v128.l
	s_waitcnt vmcnt(2)
	v_lshlrev_b16 v120.h, 8, v129.l
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_or_b16 v52.h, v127.l, v118.l
	v_or_b16 v52.l, v126.l, v118.h
	v_or_b16 v123.l, v139.l, v51.h
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt vmcnt(1)
	v_or_b16 v118.h, v130.l, v120.l
	s_waitcnt vmcnt(0)
	v_or_b16 v118.l, v131.l, v120.h
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_or_b16 v51.h, v125.l, v119.l
	v_or_b16 v51.l, v124.l, v119.h
	.loc	1 1471 38                       ; ragged.py:1471:38
	ds_store_b32 v107, v118
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[118:121], v132 offset1:32
	ds_load_b64 v[130:131], v108
	ds_load_b64 v[132:133], v109
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v134, v[122:123]
	ds_store_b64 v110, v[51:52]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[122:125], v135 offset1:2
	ds_load_2addr_stride64_b64 v[126:129], v111 offset1:2
	.loc	1 1473 35                       ; ragged.py:1473:35
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[122:123], v[118:119], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[124:125], v[118:119], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[122:123], v[132:133], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[124:125], v[132:133], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[126:127], v[130:131], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[128:129], v[130:131], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[126:127], v[120:121], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[128:129], v[120:121], v[1:8] neg_lo:[1,1,0]
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cbranch_scc1 .LBB0_8
.LBB0_9:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1452 25                       ; ragged.py:1452:25
	s_sub_i32 s5, s44, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1450 42                       ; ragged.py:1450:42
	s_min_i32 s7, s5, 16
	.loc	1 1484 24                       ; ragged.py:1484:24
	s_cmp_ge_i32 s4, s7
	.loc	1 1484 21 is_stmt 0             ; ragged.py:1484:21
	s_cbranch_scc1 .LBB0_5
; %bb.10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	s_add_i32 s11, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s22, s11, 1
	s_or_b32 s23, s11, 2
	s_or_b32 s38, s11, 3
	s_or_b32 s39, s11, 4
	s_or_b32 s51, s11, 5
	s_or_b32 s52, s11, 6
	s_or_b32 s53, s11, 7
	s_or_b32 s54, s11, 8
	s_or_b32 s55, s11, 9
	s_or_b32 s56, s11, 10
	s_or_b32 s57, s11, 11
	s_or_b32 s58, s11, 12
	s_or_b32 s59, s11, 13
	s_or_b32 s60, s11, 14
	s_or_b32 s61, s11, 15
	.loc	1 1494 35                       ; ragged.py:1494:35
	s_sub_i32 s8, s22, s3
	s_sub_i32 s9, s23, s3
	s_sub_i32 s10, s38, s3
	s_sub_i32 s15, s39, s3
	s_sub_i32 s16, s51, s3
	s_sub_i32 s17, s52, s3
	s_sub_i32 s30, s53, s3
	s_sub_i32 s31, s54, s3
	s_sub_i32 s62, s55, s3
	s_sub_i32 s63, s56, s3
	s_sub_i32 s64, s57, s3
	s_sub_i32 s65, s58, s3
	s_sub_i32 s66, s59, s3
	s_sub_i32 s72, s60, s3
	s_sub_i32 s73, s61, s3
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	s_cmp_lt_i32 s8, s7
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v51, s11, v75
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s12, -1, 0
	s_cmp_lt_i32 s9, s7
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v52, s11, v77
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s13, -1, 0
	s_cmp_lt_i32 s10, s7
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v118, s11, v80
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s15, s7
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v119, s11, v81
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s16, s7
	.loc	1 1494 35 is_stmt 0             ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v120, s3, v51
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s17, s7
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v121, s3, v52
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s30, s7
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v122, s3, v118
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s30, -1, 0
	s_cmp_lt_i32 s31, s7
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v123, s3, v119
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s31, -1, 0
	s_cmp_lt_i32 s62, s7
	v_cmp_gt_i32_e64 s3, s7, v120
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s63, s7
	v_cmp_gt_i32_e64 s4, s7, v121
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s64, s7
	v_cmp_gt_i32_e64 s5, s7, v122
	s_cselect_b32 s69, -1, 0
	s_cmp_lt_i32 s65, s7
	v_cmp_gt_i32_e64 s6, s7, v123
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s66, s7
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s8, s19, v52
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s72, s7
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s9, s19, v118
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s73, s7
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s7, s19, v51
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s73, -1, 0
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cmp_eq_u32 s11, s19
	v_cmp_eq_u32_e64 s10, s19, v119
	s_cselect_b32 s62, -1, 0
	s_cmp_eq_u32 s22, s19
	s_cselect_b32 s74, -1, 0
	s_cmp_eq_u32 s23, s19
	s_cselect_b32 s75, -1, 0
	s_cmp_eq_u32 s38, s19
	s_cselect_b32 s76, -1, 0
	s_cmp_eq_u32 s39, s19
	s_cselect_b32 s77, -1, 0
	s_cmp_eq_u32 s51, s19
	s_cselect_b32 s78, -1, 0
	s_cmp_eq_u32 s52, s19
	s_cselect_b32 s79, -1, 0
	s_cmp_eq_u32 s53, s19
	s_cselect_b32 s80, -1, 0
	s_cmp_eq_u32 s54, s19
	s_cselect_b32 s81, -1, 0
	s_cmp_eq_u32 s55, s19
	s_cselect_b32 s82, -1, 0
	s_cmp_eq_u32 s56, s19
	s_cselect_b32 s83, -1, 0
	s_cmp_eq_u32 s57, s19
	s_cselect_b32 s84, -1, 0
	s_cmp_eq_u32 s58, s19
	s_cselect_b32 s85, -1, 0
	s_cmp_eq_u32 s59, s19
	s_cselect_b32 s86, -1, 0
	s_cmp_eq_u32 s60, s19
	s_cselect_b32 s87, -1, 0
	s_cmp_eq_u32 s61, s19
	s_cselect_b32 s88, -1, 0
	.loc	1 1495 36 is_stmt 0             ; ragged.py:1495:36
	s_and_b32 s23, s74, s18
	.loc	1 1496 46 is_stmt 1             ; ragged.py:1496:46
	s_add_i32 s74, s11, s47
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s63, s7, s18
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_mul_i32 s7, s74, s34
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s3
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_add_i32 s7, s7, s43
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s4, vcc_lo, s4
	v_add_nc_u32_e32 v51, s7, v46
	v_add_nc_u32_e32 v52, s7, v103
	v_add_nc_u32_e32 v118, s7, v104
	s_and_b32 s5, vcc_lo, s5
	v_add_nc_u32_e32 v119, s7, v50
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v51, 0x80000000, v51, s3
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s6, vcc_lo, s6
	.loc	1 1497 46 is_stmt 1             ; ragged.py:1497:46
	s_mul_i32 s74, s74, s35
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s64, s8, s18
	s_and_b32 s66, s10, s18
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v120, v51, s[24:27], 0 offen
	v_cndmask_b32_e64 v51, 0x80000000, v52, s4
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v52, s74, v90
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s8, s2, s12
	s_and_b32 s10, s2, s14
	s_and_b32 s11, s2, s15
	.loc	1 1496 38 is_stmt 1             ; ragged.py:1496:38
	buffer_load_u8 v121, v51, s[24:27], 0 offen
	v_cndmask_b32_e64 v51, 0x80000000, v118, s5
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s14, s2, s30
	s_and_b32 s15, s2, s31
	.loc	1 1497 38 is_stmt 0             ; ragged.py:1497:38
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	.loc	1 1496 38 is_stmt 1             ; ragged.py:1496:38
	buffer_load_u8 v118, v51, s[24:27], 0 offen
	v_cndmask_b32_e64 v51, 0x80000000, v119, s6
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v122, s74, v92
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s65, s9, s18
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s9, s2, s13
	.loc	1 1497 46 is_stmt 0             ; ragged.py:1497:46
	v_add_nc_u32_e32 v123, s74, v37
	.loc	1 1496 38 is_stmt 1             ; ragged.py:1496:38
	buffer_load_u8 v119, v51, s[24:27], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v51, s74, v34
	v_add_nc_u32_e32 v124, s74, v93
	v_add_nc_u32_e32 v125, s74, v38
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s12, s2, s16
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v126, s74, v39
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v51, 0x80000000, v51, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s13, s2, s17
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v127, s74, v40
	v_add_nc_u32_e32 v128, s74, v94
	v_add_nc_u32_e32 v129, s74, v41
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v136, v51, s[28:31], 0 offen
	v_cndmask_b32_e64 v51, 0x80000000, v52, s8
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s16, s2, s67
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v130, s74, v42
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s17, s2, s68
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v131, s74, v43
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v137, v51, s[28:31], 0 offen
	v_cndmask_b32_e64 v51, 0x80000000, v122, s9
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s7, s2, s69
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v132, s74, v44
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s6, s2, s70
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v133, s74, v45
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v138, v51, s[28:31], 0 offen
	v_cndmask_b32_e64 v51, 0x80000000, v123, s10
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s5, s2, s71
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v134, s74, v48
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s4, s2, s72
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v135, s74, v49
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v139, v51, s[28:31], 0 offen
	v_cndmask_b32_e64 v51, 0x80000000, v124, s11
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s2, s73
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s22, s62, s18
	s_and_b32 s38, s75, s18
	s_and_b32 s39, s76, s18
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v140, v51, s[28:31], 0 offen
	v_cndmask_b32_e64 v51, 0x80000000, v125, s12
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s51, s77, s18
	s_and_b32 s52, s78, s18
	s_and_b32 s53, s79, s18
	s_and_b32 s54, s80, s18
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v141, v51, s[28:31], 0 offen
	v_cndmask_b32_e64 v51, 0x80000000, v126, s13
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s55, s81, s18
	s_and_b32 s56, s82, s18
	s_and_b32 s57, s83, s18
	s_and_b32 s58, s84, s18
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v126, v51, s[28:31], 0 offen
	v_cndmask_b32_e64 v51, 0x80000000, v127, s14
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s59, s85, s18
	s_and_b32 s60, s86, s18
	s_and_b32 s61, s87, s18
	s_and_b32 s62, s88, s18
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v127, v51, s[28:31], 0 offen
	v_cndmask_b32_e64 v51, 0x80000000, v128, s15
	buffer_load_u8 v128, v51, s[28:31], 0 offen
	v_cndmask_b32_e64 v51, 0x80000000, v129, s16
	buffer_load_u8 v129, v51, s[28:31], 0 offen
	v_cndmask_b32_e64 v51, 0x80000000, v130, s17
	buffer_load_u8 v130, v51, s[28:31], 0 offen
	v_cndmask_b32_e64 v51, 0x80000000, v131, s7
	buffer_load_u8 v131, v51, s[28:31], 0 offen
	v_cndmask_b32_e64 v51, 0x80000000, v132, s6
	buffer_load_u8 v132, v51, s[28:31], 0 offen
	v_cndmask_b32_e64 v51, 0x80000000, v133, s5
	buffer_load_u8 v133, v51, s[28:31], 0 offen
	v_cndmask_b32_e64 v51, 0x80000000, v134, s4
	buffer_load_u8 v142, v51, s[28:31], 0 offen
	v_cndmask_b32_e64 v51, 0x80000000, v135, s3
	buffer_load_u8 v143, v51, s[28:31], 0 offen
	.loc	1 1498 38                       ; ragged.py:1498:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1498 66 is_stmt 0             ; ragged.py:1498:66
	s_waitcnt vmcnt(19)
	v_and_b16 v51.l, v120.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v51.l, v120.l, v51.l, s63
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(18)
	v_and_b16 v51.h, v121.l, 15
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v51.h, v121.l, v51.h, s64
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(17)
	v_and_b16 v52.l, v118.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v52.l, v118.l, v52.l, s65
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(16)
	v_and_b16 v52.h, v119.l, 15
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v52.h, v119.l, v52.h, s66
	ds_store_b8 v112, v51
	ds_store_b8_d16_hi v112, v51 offset:128
	ds_store_b8 v112, v52 offset:256
	ds_store_b8_d16_hi v112, v52 offset:384
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1499 66 is_stmt 1             ; ragged.py:1499:66
	s_waitcnt vmcnt(15)
	v_and_b16 v118.l, v136.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v134.l, v136.l, v118.l, s22
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(14)
	v_and_b16 v118.h, v137.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v134.h, v137.l, v118.h, s23
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(13)
	v_and_b16 v119.l, v138.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v135.l, v138.l, v119.l, s38
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(12)
	v_and_b16 v119.h, v139.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v135.h, v139.l, v119.h, s39
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(11)
	v_and_b16 v120.l, v140.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v136.l, v140.l, v120.l, s51
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(10)
	v_and_b16 v120.h, v141.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v136.h, v141.l, v120.h, s52
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(9)
	v_and_b16 v121.l, v126.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v137.l, v126.l, v121.l, s53
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(8)
	v_and_b16 v121.h, v127.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v137.h, v127.l, v121.h, s54
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(7)
	v_and_b16 v122.l, v128.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v138.l, v128.l, v122.l, s55
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(6)
	v_and_b16 v122.h, v129.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v138.h, v129.l, v122.h, s56
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(5)
	v_and_b16 v123.l, v130.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v139.l, v130.l, v123.l, s57
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(4)
	v_and_b16 v123.h, v131.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v139.h, v131.l, v123.h, s58
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(3)
	v_and_b16 v124.l, v132.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v140.l, v132.l, v124.l, s59
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(2)
	v_and_b16 v124.h, v133.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v140.h, v133.l, v124.h, s60
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(1)
	v_and_b16 v125.l, v142.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v141.l, v142.l, v125.l, s61
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v125.h, v143.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v141.h, v143.l, v125.h, s62
	.loc	1 1500 35 is_stmt 1             ; ragged.py:1500:35
	ds_load_u8 v51, v85 offset:96
	ds_load_u8 v52, v85 offset:64
	ds_load_u8 v142, v85 offset:224
	ds_load_u8 v143, v85 offset:192
	ds_load_u8 v144, v85 offset:160
	ds_load_u8 v145, v85 offset:128
	ds_load_u8 v146, v85 offset:352
	ds_load_u8 v147, v85 offset:320
	ds_load_u8 v148, v85 offset:288
	ds_load_u8 v149, v85 offset:256
	ds_load_u8 v150, v85 offset:480
	ds_load_u8 v151, v85 offset:448
	ds_load_u8 v152, v85 offset:416
	ds_load_u8 v153, v85 offset:384
	ds_load_u8 v118, v85 offset:112
	ds_load_u8 v119, v85 offset:80
	ds_load_u8 v120, v85 offset:240
	ds_load_u8 v121, v85 offset:208
	ds_load_u8 v122, v85 offset:176
	ds_load_u8 v124, v85 offset:144
	ds_load_u8 v154, v85
	ds_load_u8 v128, v85 offset:16
	ds_load_u8 v155, v85 offset:32
	ds_load_u8 v129, v85 offset:48
	ds_load_u8 v123, v85 offset:368
	ds_load_u8 v125, v85 offset:336
	ds_load_u8 v126, v85 offset:304
	ds_load_u8 v127, v85 offset:272
	ds_load_u8 v130, v85 offset:496
	ds_load_u8 v131, v85 offset:464
	ds_load_u8 v132, v85 offset:432
	ds_load_u8 v133, v85 offset:400
	.loc	1 1499 38                       ; ragged.py:1499:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v112, v134
	ds_store_b8_d16_hi v112, v134 offset:128
	ds_store_b8 v112, v135 offset:256
	ds_store_b8_d16_hi v112, v135 offset:384
	ds_store_b8 v112, v136 offset:512
	ds_store_b8_d16_hi v112, v136 offset:640
	ds_store_b8 v112, v137 offset:768
	ds_store_b8_d16_hi v113, v137
	ds_store_b8 v112, v138 offset:1024
	ds_store_b8_d16_hi v112, v138 offset:1152
	ds_store_b8 v112, v139 offset:1280
	ds_store_b8_d16_hi v112, v139 offset:1408
	ds_store_b8 v112, v140 offset:1536
	ds_store_b8_d16_hi v112, v140 offset:1664
	ds_store_b8 v112, v141 offset:1792
	ds_store_b8_d16_hi v114, v141
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_perm_b32 v134, v145, v144, 0xc0c0004
	v_perm_b32 v135, v143, v142, 0xc0c0004
	v_perm_b32 v51, v52, v51, 0xc0c0004
	.loc	1 1499 38                       ; ragged.py:1499:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_perm_b32 v118, v119, v118, 0xc0c0004
	v_lshl_or_b32 v135, v135, 16, v134
	v_perm_b32 v52, v154, v155, 0xc0c0004
	v_perm_b32 v119, v128, v129, 0xc0c0004
	v_perm_b32 v122, v124, v122, 0xc0c0004
	v_perm_b32 v120, v121, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v134, v51, 16, v52
	ds_load_u8 v51, v115 offset:640
	ds_load_u8 v52, v115 offset:512
	v_lshl_or_b32 v119, v118, 16, v119
	v_perm_b32 v121, v131, v130, 0xc0c0004
	v_perm_b32 v118, v133, v132, 0xc0c0004
	v_lshl_or_b32 v120, v120, 16, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v122, v121, 16, v118
	v_perm_b32 v118, v127, v126, 0xc0c0004
	v_perm_b32 v121, v125, v123, 0xc0c0004
	v_lshl_or_b32 v121, v121, 16, v118
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	ds_load_u8 v52, v115 offset:896
	ds_load_u8 v136, v115 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v136, v52, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v137, v52, 16, v51
	ds_load_u8 v51, v115 offset:128
	ds_load_u8 v52, v115
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	ds_load_u8 v52, v115 offset:384
	ds_load_u8 v136, v115 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v136, v52, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v136, v52, 16, v51
	v_perm_b32 v51, v153, v152, 0xc0c0004
	v_perm_b32 v52, v151, v150, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[136:137], v[134:135], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[136:137], v[119:120], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v139, v52, 16, v51
	v_perm_b32 v51, v149, v148, 0xc0c0004
	v_perm_b32 v52, v147, v146, 0xc0c0004
	v_lshl_or_b32 v138, v52, 16, v51
	ds_load_u8 v51, v115 offset:1664
	ds_load_u8 v52, v115 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	ds_load_u8 v52, v115 offset:1920
	ds_load_u8 v140, v115 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v140, v52, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v52, 16, v51
	ds_load_u8 v51, v115 offset:1152
	ds_load_u8 v140, v115 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v140, v51, 0xc0c0004
	ds_load_u8 v140, v115 offset:1408
	ds_load_u8 v141, v115 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v141, v140, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v140, 16, v51
	ds_load_u8 v140, v115 offset:704
	ds_load_u8 v141, v115 offset:576
	v_wmma_i32_16x16x16_iu4 v[25:32], v[51:52], v[138:139], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[51:52], v[121:122], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v141, v140, 0xc0c0004
	ds_load_u8 v141, v115 offset:960
	ds_load_u8 v142, v115 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v141, v141, 16, v140
	ds_load_u8 v140, v115 offset:192
	ds_load_u8 v142, v115 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v142, v140, 0xc0c0004
	ds_load_u8 v142, v115 offset:448
	ds_load_u8 v143, v115 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v140, v142, 16, v140
	v_wmma_i32_16x16x16_iu4 v[17:24], v[140:141], v[134:135], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v134, v115 offset:1728
	ds_load_u8 v135, v115 offset:1600
	v_wmma_i32_16x16x16_iu4 v[1:8], v[140:141], v[119:120], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	ds_load_u8 v135, v115 offset:1984
	ds_load_u8 v142, v115 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v142, v135, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v135, v135, 16, v134
	ds_load_u8 v134, v115 offset:1216
	ds_load_u8 v142, v115 offset:1088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v134, v142, v134, 0xc0c0004
	ds_load_u8 v142, v115 offset:1472
	ds_load_u8 v143, v115 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v134, v142, 16, v134
	v_wmma_i32_16x16x16_iu4 v[17:24], v[134:135], v[138:139], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[134:135], v[121:122], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_5
.LBB0_11:                               ; %Flow211
	.loc	1 0 35 is_stmt 0                ; ragged.py:0:35
	v_dual_mov_b32 v2, v55 :: v_dual_mov_b32 v1, v56
.LBB0_12:                               ; %._crit_edge15
	.loc	1 1532 33 is_stmt 1             ; ragged.py:1532:33
	v_bfe_u32 v4, v98, 16, 1
	v_bfe_u32 v3, v95, 16, 1
	v_cmp_o_f32_e64 s0, v98, v98
	v_bfe_u32 v8, v89, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v95, v95
	v_add3_u32 v4, v98, v4, 0x7fff
	v_add3_u32 v3, v95, v3, 0x7fff
	v_bfe_u32 v6, v96, 16, 1
	v_add3_u32 v8, v89, v8, 0x7fff
	v_bfe_u32 v11, v83, 16, 1
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s0
	v_cmp_o_f32_e64 s0, v89, v89
	v_bfe_u32 v5, v97, 16, 1
	v_cndmask_b16 v3.l, 0x7fff, v3.h, vcc_lo
	v_add3_u32 v6, v96, v6, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v96, v96
	v_bfe_u32 v7, v91, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s0
	v_add3_u32 v11, v83, v11, 0x7fff
	v_cmp_o_f32_e64 s0, v83, v83
	v_bfe_u32 v14, v78, 16, 1
	v_cmp_o_f32_e64 s1, v97, v97
	v_add3_u32 v5, v97, v5, 0x7fff
	v_bfe_u32 v9, v88, 16, 1
	v_cndmask_b16 v6.l, 0x7fff, v6.h, vcc_lo
	v_add3_u32 v7, v91, v7, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v91, v91
	v_bfe_u32 v10, v84, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s0
	v_add3_u32 v14, v78, v14, 0x7fff
	v_cmp_o_f32_e64 s0, v78, v78
	v_bfe_u32 v17, v73, 16, 1
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s1
	v_add3_u32 v9, v88, v9, 0x7fff
	v_cmp_o_f32_e64 s1, v88, v88
	v_bfe_u32 v12, v82, 16, 1
	v_cndmask_b16 v7.l, 0x7fff, v7.h, vcc_lo
	v_add3_u32 v10, v84, v10, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v84, v84
	v_bfe_u32 v13, v79, 16, 1
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s0
	v_add3_u32 v17, v73, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v73, v73
	v_bfe_u32 v20, v70, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s1
	v_add3_u32 v12, v82, v12, 0x7fff
	v_cmp_o_f32_e64 s1, v82, v82
	v_bfe_u32 v15, v76, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, vcc_lo
	v_add3_u32 v13, v79, v13, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v79, v79
	v_bfe_u32 v16, v74, 16, 1
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s0
	v_add3_u32 v20, v70, v20, 0x7fff
	v_cmp_o_f32_e64 s0, v70, v70
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s1
	v_add3_u32 v15, v76, v15, 0x7fff
	v_cmp_o_f32_e64 s1, v76, v76
	v_bfe_u32 v18, v72, 16, 1
	v_cndmask_b16 v13.l, 0x7fff, v13.h, vcc_lo
	v_add3_u32 v16, v74, v16, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v74, v74
	v_bfe_u32 v19, v71, 16, 1
	v_cndmask_b16 v4.h, 0x7fff, v20.h, s0
	v_bfe_u32 v20, v67, 16, 1
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s1
	v_add3_u32 v18, v72, v18, 0x7fff
	v_cmp_o_f32_e64 s1, v72, v72
	v_bfe_u32 v21, v69, 16, 1
	v_cndmask_b16 v16.l, 0x7fff, v16.h, vcc_lo
	v_add3_u32 v19, v71, v19, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v71, v71
	v_add3_u32 v20, v67, v20, 0x7fff
	v_cmp_o_f32_e64 s0, v67, v67
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s1
	v_add3_u32 v21, v69, v21, 0x7fff
	v_cmp_o_f32_e64 s1, v69, v69
	v_cndmask_b16 v3.h, 0x7fff, v19.h, vcc_lo
	v_bfe_u32 v19, v68, 16, 1
	v_cndmask_b16 v7.h, 0x7fff, v20.h, s0
	v_bfe_u32 v20, v64, 16, 1
	v_cndmask_b16 v5.h, 0x7fff, v21.h, s1
	v_bfe_u32 v21, v66, 16, 1
	v_add3_u32 v19, v68, v19, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v68, v68
	v_add3_u32 v20, v64, v20, 0x7fff
	v_cmp_o_f32_e64 s0, v64, v64
	v_add3_u32 v21, v66, v21, 0x7fff
	v_cmp_o_f32_e64 s1, v66, v66
	v_cndmask_b16 v6.h, 0x7fff, v19.h, vcc_lo
	v_bfe_u32 v19, v65, 16, 1
	v_cndmask_b16 v10.h, 0x7fff, v20.h, s0
	v_bfe_u32 v20, v61, 16, 1
	v_cndmask_b16 v8.h, 0x7fff, v21.h, s1
	v_bfe_u32 v21, v63, 16, 1
	v_add3_u32 v19, v65, v19, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	v_add3_u32 v20, v61, v20, 0x7fff
	v_cmp_o_f32_e64 s0, v61, v61
	v_add3_u32 v21, v63, v21, 0x7fff
	v_cmp_o_f32_e64 s1, v63, v63
	v_cndmask_b16 v9.h, 0x7fff, v19.h, vcc_lo
	v_bfe_u32 v19, v62, 16, 1
	v_bfe_u32 v22, v59, 16, 1
	v_cndmask_b16 v13.h, 0x7fff, v20.h, s0
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_cmp_eq_u32_e64 s0, 0, v53
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v11.h, 0x7fff, v21.h, s1
	v_bfe_u32 v21, v60, 16, 1
	v_add3_u32 v19, v62, v19, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v62, v62
	v_add3_u32 v20, v59, v22, 0x7fff
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshlrev_b32_e32 v22, 2, v33
	v_cndmask_b32_e64 v23, 0x1040, 0, s0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v21, v60, v21, 0x7fff
	v_cmp_o_f32_e64 s1, v60, v60
	v_cndmask_b16 v12.h, 0x7fff, v19.h, vcc_lo
	v_bfe_u32 v19, v58, 16, 1
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xor3_b32 v2, v22, v2, v23
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_bfe_u32 v24, v47, 16, 1
	v_cndmask_b16 v14.h, 0x7fff, v21.h, s1
	v_bfe_u32 v21, v57, 16, 1
	v_add3_u32 v19, v58, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v58, v58
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshl_or_b32 v2, v54, 8, v2
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e32 vcc_lo, v59, v59
	v_add3_u32 v21, v57, v21, 0x7fff
	v_cmp_o_f32_e64 s2, v57, v57
	v_add3_u32 v22, v47, v24, 0x7fff
	v_cmp_o_f32_e64 s3, v47, v47
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
	s_lshr_b32 s0, s35, 31
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
	v_lshrrev_b32_e32 v3, 6, v53
	.loc	1 1536 31                       ; ragged.py:1536:31
	v_lshl_or_b32 v0, s42, 6, v0
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_add_i32 s0, s35, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_ashr_i32 s1, s0, 1
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v3, s43, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1542 54                       ; ragged.py:1542:54
	v_cmp_gt_i32_e32 vcc_lo, s1, v0
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v3
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_14
; %bb.13:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s33, v3
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
	v_add_co_u32 v18, s0, s40, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s41, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_14:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_16
; %bb.15:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s33, v18
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
	v_add_co_u32 v18, s0, s40, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s41, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_16:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_18
; %bb.17:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s33, v18
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
	v_add_co_u32 v18, s0, s40, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s41, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_18:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 6, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_20
; %bb.19:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s33, v18
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
	v_add_co_u32 v18, s0, s40, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s41, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_20:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 8, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_22
; %bb.21:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s33, v18
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
	v_add_co_u32 v18, s0, s40, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s41, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_22:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 10, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_24
; %bb.23:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s33, v18
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
	v_add_co_u32 v18, s0, s40, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s41, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_24:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 12, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_26
; %bb.25:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s33, v18
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
	v_add_co_u32 v18, s0, s40, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s41, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_26:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 14, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_28
; %bb.27:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s33, v18
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
	v_add_co_u32 v18, s0, s40, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s41, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_28:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 16, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_30
; %bb.29:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s33, v18
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
	v_add_co_u32 v16, s0, s40, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s41, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[16:17], v20, off
.LBB0_30:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(15)
	v_or_b32_e32 v16, 18, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v16
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_32
; %bb.31:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v16, s33, v16
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
	v_add_co_u32 v14, s0, s40, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v15, null, s41, v17, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[14:15], v18, off
.LBB0_32:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(13)
	v_or_b32_e32 v14, 20, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v14
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_34
; %bb.33:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v14, s33, v14
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
	v_add_co_u32 v12, s0, s40, v14
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s41, v15, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[12:13], v16, off
.LBB0_34:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(11)
	v_or_b32_e32 v12, 22, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v12
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_36
; %bb.35:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v12, s33, v12
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
	v_add_co_u32 v10, s0, s40, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, s41, v13, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[10:11], v14, off
.LBB0_36:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(9)
	v_or_b32_e32 v10, 24, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v10
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_38
; %bb.37:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v10, s33, v10
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
	v_add_co_u32 v8, s0, s40, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s41, v11, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[8:9], v12, off
.LBB0_38:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(7)
	v_or_b32_e32 v8, 26, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v8
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_40
; %bb.39:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v8, s33, v8
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
	v_add_co_u32 v6, s0, s40, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, s41, v9, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[6:7], v10, off
.LBB0_40:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(5)
	v_or_b32_e32 v6, 28, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v6
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_42
; %bb.41:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v6, s33, v6
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
	v_add_co_u32 v4, s0, s40, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s41, v7, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[4:5], v8, off
.LBB0_42:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v3, 30, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v3
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_44
; %bb.43:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v3, s33, v3
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
	v_add_co_u32 v0, vcc_lo, s40, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v4, vcc_lo
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[0:1], v2, off
.LBB0_44:
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
		.amdhsa_next_free_vgpr 156
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.num_vgpr, 156
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.numbered_sgpr, 89
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9792
; TotalNumSgprs: 91
; NumVgprs: 156
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 19
; NumSGPRsForWavesPerEU: 91
; NumVGPRsForWavesPerEU: 156
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
    .sgpr_count:     91
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     156
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
