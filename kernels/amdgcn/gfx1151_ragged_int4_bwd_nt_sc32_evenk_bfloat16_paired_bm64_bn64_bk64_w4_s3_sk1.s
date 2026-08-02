	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x20
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s35, 63
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
	s_ashr_i32 s4, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s6, s5, 6
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s6, s4
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_abs_i32 s5, s4
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	s_cvt_f32_u32 s7, s5
	s_sub_i32 s8, 0, s5
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_and_b32 v36, 16, v0
	v_dual_mov_b32 v86, 0 :: v_dual_and_b32 v37, 15, v0
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v38, 64, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_3)
	.loc	1 1304 20                       ; ragged.py:1304:20
	v_readfirstlane_b32 s7, v1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v39, 32, v0
	s_mov_b32 s45, 0
	v_cmp_eq_u32_e32 vcc_lo, 0, v36
	.loc	1 1304 20                       ; ragged.py:1304:20
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
	s_mul_i32 s10, s7, s5
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
	s_sub_i32 s36, s5, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s7
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s36, s4
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
	s_ashr_i32 s37, s36, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[4:5], s[36:37], 2
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s6, s7, s6
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s44, s7, 6
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s33, s2, s6
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_add_u32 s4, s20, s4
	s_addc_u32 s5, s21, s5
	.loc	1 1431 43                       ; ragged.py:1431:43
	s_mul_i32 s21, s36, s34
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s37, s[4:5], 0x0
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s37, s37, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_lt_i32 s37, 2
	s_cbranch_scc1 .LBB0_7
; %bb.1:                                ; %.preheader.lr.ph
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v1, 2, v38
	s_load_b64 s[40:41], s[0:1], 0x38
	v_lshrrev_b32_e32 v4, 1, v0
	s_load_b256 s[24:31], s[0:1], 0x0
	v_lshrrev_b32_e32 v2, 4, v36
	v_or_b32_e32 v5, v1, v37
	v_lshrrev_b32_e32 v3, 1, v39
	.loc	1 1309 18 is_stmt 0             ; ragged.py:1309:18
	v_or_b32_e32 v1, s44, v4
	.loc	1 1310 18 is_stmt 1             ; ragged.py:1310:18
	s_lshl_b32 s42, s33, 6
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s3, s3, 4
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v6, s44, v5
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or3_b32 v65, v2, v3, s42
	v_or_b32_e32 v2, s42, v4
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v3, 32, v5
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s1, s34, v6
	v_dual_mov_b32 v85, 0 :: v_dual_lshlrev_b32 v6, 3, v0
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s20, s35, v2
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s43, s37, 1
	v_dual_mov_b32 v86, 0 :: v_dual_and_b32 v1, 8, v6
	s_cmp_lt_i32 s3, 16
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v7, s44, v3
	s_cselect_b32 s47, -1, 0
	s_add_i32 s49, s44, s21
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[1:2], null, s40, v4, v[1:2]
	v_bfe_i32 v4, v0, 3, 1
	.loc	1 1433 43                       ; ragged.py:1433:43
	s_mul_i32 s48, s36, s35
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s2, s34, v7
	s_add_i32 s42, s42, s48
	v_dual_mov_b32 v82, 0 :: v_dual_lshlrev_b32 v7, 3, v39
	v_mad_u64_u32 v[33:34], null, s49, s40, v[1:2]
	v_dual_mov_b32 v83, 0 :: v_dual_lshlrev_b32 v2, 4, v0
	v_dual_mov_b32 v61, 0 :: v_dual_and_b32 v6, 0x378, v6
	v_cndmask_b32_e64 v8, 0x88, 0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[34:35], null, s42, s40, v[1:2]
	v_dual_mov_b32 v84, 0 :: v_dual_and_b32 v1, 0x70, v2
	v_dual_mov_b32 v67, 0 :: v_dual_and_b32 v2, 0x88, v4
	v_dual_mov_b32 v63, 0 :: v_dual_lshlrev_b32 v4, 2, v38
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v3, s49, v3
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v66, 2, v65
	s_delay_alu instid0(VALU_DEP_3)
	v_or3_b32 v4, v2, v4, v1
	v_or3_b32 v1, v2, v7, v1
	v_dual_mov_b32 v59, 0 :: v_dual_add_nc_u32 v2, s49, v5
	v_or_b32_e32 v68, 4, v65
	v_or_b32_e32 v69, 6, v65
	v_or_b32_e32 v70, 8, v65
	v_or_b32_e32 v71, 10, v65
	v_or_b32_e32 v72, 12, v65
	v_or_b32_e32 v73, 14, v65
	v_or_b32_e32 v74, 32, v65
	v_or_b32_e32 v75, 34, v65
	v_or_b32_e32 v76, 36, v65
	v_or_b32_e32 v77, 38, v65
	v_or_b32_e32 v78, 40, v65
	v_or_b32_e32 v79, 42, v65
	v_or_b32_e32 v80, 44, v65
	v_or_b32_e32 v81, 46, v65
	v_xor_b32_e32 v5, v8, v6
	v_xor_b32_e32 v6, 8, v4
	v_xor_b32_e32 v7, 8, v1
	v_mul_lo_u32 v87, v2, s41
	v_mul_lo_u32 v88, v3, s41
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s4, s35, v65
	v_cmp_gt_i32_e64 s5, s35, v66
	v_cmp_gt_i32_e64 s6, s35, v68
	v_cmp_gt_i32_e64 s7, s35, v69
	v_cmp_gt_i32_e64 s8, s35, v70
	v_cmp_gt_i32_e64 s9, s35, v71
	v_cmp_gt_i32_e64 s10, s35, v72
	v_cmp_gt_i32_e64 s11, s35, v73
	v_cmp_gt_i32_e64 s12, s35, v74
	v_cmp_gt_i32_e64 s13, s35, v75
	v_cmp_gt_i32_e64 s14, s35, v76
	v_cmp_gt_i32_e64 s15, s35, v77
	v_cmp_gt_i32_e64 s16, s35, v78
	v_cmp_gt_i32_e64 s17, s35, v79
	v_cmp_gt_i32_e64 s18, s35, v80
	v_cmp_gt_i32_e64 s19, s35, v81
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v89, 0, v5
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v90, 0, v4
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v91, 0, v6
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v92, 0, v1
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v93, 0, v7
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v53, 0
	v_mov_b32_e32 v40, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_and_b32 s29, s29, 0xffff
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_add_i32 s43, s43, -1
	s_and_b32 s31, s31, 0xffff
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s46, s36, s41
	s_and_b32 s37, s25, 0xffff
	s_mov_b32 s36, s24
	s_and_b32 s25, s27, 0xffff
	s_mov_b32 s24, s26
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshr_b32 s48, s43, 4
	s_mov_b32 s40, s28
	s_mov_b32 s41, s29
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b32 s28, s30
	s_mov_b32 s29, s31
	s_mov_b32 s30, s38
	s_mov_b32 s31, s39
	s_mov_b32 s49, 0
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v14, v87, s45, 1
	v_add_lshl_u32 v15, v88, s45, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s26, s45, s46
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_mul_i32 s26, s26, s35
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v16, v65, s26, 1
	v_add_lshl_u32 v24, v74, s26, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v17, v66, s26, 1
	v_add_lshl_u32 v31, v75, s26, 1
	v_add_lshl_u32 v18, v68, s26, 1
	v_add_lshl_u32 v32, v76, s26, 1
	v_add_lshl_u32 v19, v69, s26, 1
	v_add_lshl_u32 v107, v77, s26, 1
	v_add_lshl_u32 v20, v70, s26, 1
	v_add_lshl_u32 v21, v71, s26, 1
	v_add_lshl_u32 v22, v72, s26, 1
	v_add_lshl_u32 v23, v73, s26, 1
	v_add_lshl_u32 v108, v78, s26, 1
	v_add_lshl_u32 v109, v79, s26, 1
	v_add_lshl_u32 v110, v80, s26, 1
	v_add_lshl_u32 v111, v81, s26, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x1
	buffer_load_u16 v14, v14, s[40:43], 0 offen
	buffer_load_u16 v15, v15, s[40:43], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e64 v16, 0x80000000, v16, s4
	v_cndmask_b32_e64 v24, 0x80000000, v24, s12
	v_cndmask_b32_e64 v17, 0x80000000, v17, s5
	v_cndmask_b32_e64 v31, 0x80000000, v31, s13
	v_cndmask_b32_e64 v18, 0x80000000, v18, s6
	v_cndmask_b32_e64 v32, 0x80000000, v32, s14
	v_cndmask_b32_e64 v19, 0x80000000, v19, s7
	v_cndmask_b32_e64 v107, 0x80000000, v107, s15
	v_cndmask_b32_e64 v20, 0x80000000, v20, s8
	v_cndmask_b32_e64 v21, 0x80000000, v21, s9
	v_cndmask_b32_e64 v22, 0x80000000, v22, s10
	v_cndmask_b32_e64 v23, 0x80000000, v23, s11
	v_cndmask_b32_e64 v108, 0x80000000, v108, s16
	v_cndmask_b32_e64 v109, 0x80000000, v109, s17
	v_cndmask_b32_e64 v110, 0x80000000, v110, s18
	v_cndmask_b32_e64 v111, 0x80000000, v111, s19
	s_clause 0xf
	buffer_load_u16 v16, v16, s[28:31], 0 offen
	buffer_load_u16 v17, v17, s[28:31], 0 offen
	buffer_load_u16 v18, v18, s[28:31], 0 offen
	buffer_load_u16 v19, v19, s[28:31], 0 offen
	buffer_load_u16 v20, v20, s[28:31], 0 offen
	buffer_load_u16 v21, v21, s[28:31], 0 offen
	buffer_load_u16 v22, v22, s[28:31], 0 offen
	buffer_load_u16 v23, v23, s[28:31], 0 offen
	buffer_load_u16 v24, v24, s[28:31], 0 offen
	buffer_load_u16 v31, v31, s[28:31], 0 offen
	buffer_load_u16 v32, v32, s[28:31], 0 offen
	buffer_load_u16 v107, v107, s[28:31], 0 offen
	buffer_load_u16 v108, v108, s[28:31], 0 offen
	buffer_load_u16 v109, v109, s[28:31], 0 offen
	buffer_load_u16 v110, v110, s[28:31], 0 offen
	buffer_load_u16 v111, v111, s[28:31], 0 offen
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s26, s45, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s49, s26, 4
	s_cmp_lg_u32 s45, s48
	s_mov_b32 s45, s26
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v14, 16, v14
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(16)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v106, v106, v14 :: v_dual_lshlrev_b32 v15, 16, v15
	v_mul_f32_e32 v2, v2, v15
	v_mul_f32_e32 v27, v27, v15
	v_mul_f32_e32 v105, v105, v14
	v_mul_f32_e32 v104, v104, v14
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v103, v103, v14 :: v_dual_lshlrev_b32 v16, 16, v16
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v25, v25, v15 :: v_dual_lshlrev_b32 v18, 16, v18
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v102, v102, v14 :: v_dual_lshlrev_b32 v19, 16, v19
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v100, v100, v14 :: v_dual_lshlrev_b32 v21, 16, v21
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v13, v13, v15 :: v_dual_lshlrev_b32 v22, 16, v22
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v98, v98, v14 :: v_dual_lshlrev_b32 v23, 16, v23
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v101, v101, v14 :: v_dual_lshlrev_b32 v24, 16, v24
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v96, v96, v14 :: v_dual_lshlrev_b32 v31, 16, v31
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v99, v99, v14 :: v_dual_lshlrev_b32 v32, 16, v32
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v94, v94, v14 :: v_dual_lshlrev_b32 v107, 16, v107
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v97, v97, v14 :: v_dual_lshlrev_b32 v108, 16, v108
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v30, v30, v14 :: v_dual_lshlrev_b32 v109, 16, v109
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v11, v11, v15 :: v_dual_lshlrev_b32 v110, 16, v110
	.loc	1 1525 17                       ; ragged.py:1525:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v86, v105, v18 :: v_dual_lshlrev_b32 v111, 16, v111
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v95, v95, v14
	v_mul_f32_e32 v29, v29, v14
	v_dual_mul_f32 v1, v1, v14 :: v_dual_mul_f32 v26, v26, v15
	v_mul_f32_e32 v14, v28, v15
	v_dual_mul_f32 v12, v12, v15 :: v_dual_fmac_f32 v85, v106, v17
	v_dual_mul_f32 v10, v10, v15 :: v_dual_fmac_f32 v83, v103, v20
	v_dual_mul_f32 v9, v9, v15 :: v_dual_fmac_f32 v82, v102, v21
	v_dual_mul_f32 v8, v8, v15 :: v_dual_fmac_f32 v67, v101, v22
	v_dual_mul_f32 v7, v7, v15 :: v_dual_fmac_f32 v58, v94, v109
	v_dual_mul_f32 v6, v6, v15 :: v_dual_fmac_f32 v63, v99, v24
	v_dual_mul_f32 v5, v5, v15 :: v_dual_fmac_f32 v54, v27, v18
	v_dual_mul_f32 v4, v4, v15 :: v_dual_fmac_f32 v61, v97, v32
	v_dual_mul_f32 v3, v3, v15 :: v_dual_fmac_f32 v50, v25, v20
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_dual_fmac_f32 v84, v104, v19 :: v_dual_fmac_f32 v59, v95, v108
	v_dual_fmac_f32 v64, v100, v23 :: v_dual_fmac_f32 v57, v30, v110
	v_dual_fmac_f32 v62, v98, v31 :: v_dual_fmac_f32 v51, v1, v16
	v_dual_fmac_f32 v60, v96, v107 :: v_dual_fmac_f32 v53, v2, v16
	v_dual_fmac_f32 v56, v29, v111 :: v_dual_fmac_f32 v55, v14, v17
	v_dual_fmac_f32 v52, v26, v19 :: v_dual_fmac_f32 v49, v13, v21
	v_dual_fmac_f32 v48, v12, v22 :: v_dual_fmac_f32 v47, v11, v23
	v_dual_fmac_f32 v46, v10, v24 :: v_dual_fmac_f32 v45, v9, v31
	v_dual_fmac_f32 v44, v8, v32 :: v_dual_fmac_f32 v43, v7, v107
	v_dual_fmac_f32 v42, v6, v108 :: v_dual_fmac_f32 v41, v5, v109
	v_dual_fmac_f32 v40, v4, v110 :: v_dual_fmac_f32 v35, v3, v111
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_7
.LBB0_3:                                ; %.preheader
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	.loc	1 1426 27 is_stmt 1             ; ragged.py:1426:27
	s_and_not1_b32 vcc_lo, exec_lo, s47
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v1, 0
	s_mov_b32 s50, s3
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
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
.LBB0_5:                                ; %.lr.ph
                                        ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1427 30 is_stmt 1             ; ragged.py:1427:30
	s_add_i32 s51, s50, s49
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_mov_b32 s26, s38
	v_add_nc_u32_e32 v94, s51, v33
	v_add_nc_u32_e32 v95, s51, v34
	s_mov_b32 s27, s39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1436 38                       ; ragged.py:1436:38
	v_cndmask_b32_e64 v94, 0x80000000, v94, s0
	.loc	1 1437 38                       ; ragged.py:1437:38
	v_cndmask_b32_e64 v96, 0x80000000, v95, s20
	.loc	1 1436 38                       ; ragged.py:1436:38
	buffer_load_b64 v[94:95], v94, s[36:39], 0 offen
	.loc	1 1437 38                       ; ragged.py:1437:38
	buffer_load_b64 v[102:103], v96, s[24:27], 0 offen
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1448 25                       ; ragged.py:1448:25
	s_add_i32 s26, s50, 16
	.loc	1 1426 27                       ; ragged.py:1426:27
	s_cmp_lt_i32 s50, 0
	s_mov_b32 s50, s26
	.loc	1 1436 38                       ; ragged.py:1436:38
	s_waitcnt vmcnt(1)
	ds_store_b64 v89, v[94:95]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[94:97], v90 offset1:1
	ds_load_2addr_stride64_b64 v[98:101], v91 offset1:1
	.loc	1 1437 38                       ; ragged.py:1437:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v89, v[102:103]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[102:105], v92 offset1:1
	ds_load_2addr_stride64_b64 v[106:109], v93 offset1:1
	.loc	1 1438 35                       ; ragged.py:1438:35
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[102:103], v[94:95], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[104:105], v[94:95], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[102:103], v[96:97], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[104:105], v[96:97], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[106:107], v[98:99], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[108:109], v[98:99], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[106:107], v[100:101], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[108:109], v[100:101], v[17:24] neg_lo:[1,1,0]
	.loc	1 1426 27                       ; ragged.py:1426:27
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v106, v2
	v_cvt_f32_i32_e32 v105, v3
	v_cvt_f32_i32_e32 v104, v4
	v_cvt_f32_i32_e32 v103, v5
	v_cvt_f32_i32_e32 v102, v6
	v_cvt_f32_i32_e32 v101, v7
	v_cvt_f32_i32_e32 v100, v8
	v_cvt_f32_i32_e32 v99, v25
	v_cvt_f32_i32_e32 v98, v26
	v_cvt_f32_i32_e32 v97, v27
	v_cvt_f32_i32_e32 v96, v28
	v_cvt_f32_i32_e32 v95, v29
	v_cvt_f32_i32_e32 v94, v30
	v_cvt_f32_i32_e32 v30, v31
	v_cvt_f32_i32_e32 v29, v32
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v9
	v_cvt_f32_i32_e32 v28, v10
	v_cvt_f32_i32_e32 v27, v11
	v_cvt_f32_i32_e32 v26, v12
	v_cvt_f32_i32_e32 v25, v13
	v_cvt_f32_i32_e32 v13, v14
	v_cvt_f32_i32_e32 v12, v15
	v_cvt_f32_i32_e32 v11, v16
	v_cvt_f32_i32_e32 v10, v17
	v_cvt_f32_i32_e32 v9, v18
	v_cvt_f32_i32_e32 v8, v19
	v_cvt_f32_i32_e32 v7, v20
	v_cvt_f32_i32_e32 v6, v21
	v_cvt_f32_i32_e32 v5, v22
	v_cvt_f32_i32_e32 v4, v23
	v_cvt_f32_i32_e32 v3, v24
	s_branch .LBB0_2
.LBB0_7:                                ; %._crit_edge4
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_bfe_u32 v1, v85, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v85, v85
	v_bfe_u32 v5, v84, 16, 1
	v_bfe_u32 v8, v67, 16, 1
	v_bfe_u32 v4, v86, 16, 1
	v_add3_u32 v1, v85, v1, 0x7fff
	v_bfe_u32 v12, v61, 16, 1
	v_add3_u32 v5, v84, v5, 0x7fff
	v_add3_u32 v8, v67, v8, 0x7fff
	v_mov_b16_e32 v3.h, 0
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v84, v84
	v_cmp_o_f32_e64 s0, v86, v86
	v_bfe_u32 v6, v83, 16, 1
	v_add3_u32 v4, v86, v4, 0x7fff
	v_bfe_u32 v9, v64, 16, 1
	v_cndmask_b16 v5.l, 0x7fff, v5.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v67, v67
	v_add3_u32 v12, v61, v12, 0x7fff
	v_bfe_u32 v16, v57, 16, 1
	v_mov_b16_e32 v3.l, v53.h
	v_add3_u32 v6, v83, v6, 0x7fff
	v_cndmask_b16 v8.l, 0x7fff, v8.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v61, v61
	v_cmp_o_f32_e64 s1, v83, v83
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s0
	v_bfe_u32 v10, v63, 16, 1
	v_add3_u32 v9, v64, v9, 0x7fff
	v_cmp_o_f32_e64 s0, v64, v64
	v_bfe_u32 v13, v60, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v12.h, vcc_lo
	v_add3_u32 v16, v57, v16, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v57, v57
	v_mov_b16_e32 v18.l, v51.h
	v_mov_b16_e32 v18.h, v3.h
	v_and_b32_e32 v3, 1, v3
	v_cndmask_b16 v6.l, 0x7fff, v6.h, s1
	v_add3_u32 v10, v63, v10, 0x7fff
	v_cmp_o_f32_e64 s1, v63, v63
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s0
	v_bfe_u32 v14, v59, 16, 1
	v_add3_u32 v13, v60, v13, 0x7fff
	v_cmp_o_f32_e64 s0, v60, v60
	v_bfe_u32 v17, v56, 16, 1
	v_cndmask_b16 v16.l, 0x7fff, v16.h, vcc_lo
	v_and_b32_e32 v18, 1, v18
	v_add3_u32 v3, v53, v3, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v53, v53
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s1
	v_add3_u32 v14, v59, v14, 0x7fff
	v_cmp_o_f32_e64 s1, v59, v59
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s0
	v_add3_u32 v17, v56, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v56, v56
	v_add3_u32 v18, v51, v18, 0x7fff
	v_bfe_u32 v19, v54, 16, 1
	v_cndmask_b16 v20.h, 0x7fff, v3.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s1
	v_cndmask_b16 v3.l, 0x7fff, v17.h, s0
	v_bfe_u32 v17, v55, 16, 1
	v_add3_u32 v19, v54, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v54, v54
	v_cndmask_b16 v20.l, 0x7fff, v18.h, vcc_lo
	v_bfe_u32 v18, v52, 16, 1
	v_bfe_u32 v7, v82, 16, 1
	v_add3_u32 v17, v55, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v55, v55
	v_cndmask_b16 v4.h, 0x7fff, v19.h, s1
	v_bfe_u32 v19, v49, 16, 1
	v_add3_u32 v18, v52, v18, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v52, v52
	v_add3_u32 v7, v82, v7, 0x7fff
	v_cmp_o_f32_e64 s2, v82, v82
	v_cndmask_b16 v1.h, 0x7fff, v17.h, s0
	v_bfe_u32 v17, v50, 16, 1
	v_add3_u32 v19, v49, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v49, v49
	v_cndmask_b16 v5.h, 0x7fff, v18.h, vcc_lo
	v_bfe_u32 v18, v48, 16, 1
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s2
	v_add3_u32 v17, v50, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v50, v50
	v_cndmask_b16 v7.h, 0x7fff, v19.h, s1
	v_bfe_u32 v19, v46, 16, 1
	v_add3_u32 v18, v48, v18, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v48, v48
	v_bfe_u32 v11, v62, 16, 1
	v_cndmask_b16 v6.h, 0x7fff, v17.h, s0
	v_bfe_u32 v17, v47, 16, 1
	v_add3_u32 v19, v46, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v46, v46
	v_cndmask_b16 v8.h, 0x7fff, v18.h, vcc_lo
	v_bfe_u32 v18, v45, 16, 1
	v_add3_u32 v11, v62, v11, 0x7fff
	v_cmp_o_f32_e64 s2, v62, v62
	v_add3_u32 v17, v47, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v47, v47
	v_cndmask_b16 v10.h, 0x7fff, v19.h, s1
	v_bfe_u32 v19, v43, 16, 1
	v_add3_u32 v18, v45, v18, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s2
	v_cndmask_b16 v9.h, 0x7fff, v17.h, s0
	v_bfe_u32 v17, v44, 16, 1
	v_add3_u32 v19, v43, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v43, v43
	v_cndmask_b16 v11.h, 0x7fff, v18.h, vcc_lo
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_and_b32_e32 v18, 31, v0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v17, v44, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v44, v44
	v_cndmask_b16 v13.h, 0x7fff, v19.h, s1
	v_bfe_u32 v15, v58, 16, 1
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshlrev_b32_e32 v19, 2, v18
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s2, v58, v58
	v_cndmask_b16 v12.h, 0x7fff, v17.h, s0
	v_bfe_u32 v17, v41, 16, 1
	v_add3_u32 v15, v58, v15, 0x7fff
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshl_or_b32 v19, v37, 8, v19
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cmp_o_f32_e64 s0, v41, v41
	v_bfe_u32 v21, v42, 16, 1
	v_add3_u32 v17, v41, v17, 0x7fff
	v_bfe_u32 v22, v40, 16, 1
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xor_b32_e32 v19, v19, v39
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s2
	v_add3_u32 v21, v42, v21, 0x7fff
	v_cndmask_b16 v15.h, 0x7fff, v17.h, s0
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshl_or_b32 v17, v38, 1, v19
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_bfe_u32 v23, v35, 16, 1
	v_add3_u32 v22, v40, v22, 0x7fff
	v_cmp_o_f32_e64 s1, v40, v40
	v_cmp_o_f32_e64 s2, v35, v35
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_add_nc_u32_e32 v19, 0, v17
	v_xad_u32 v26, 0x1040, v17, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v23, v35, v23, 0x7fff
	v_cndmask_b16 v14.h, 0x7fff, v21.h, vcc_lo
	v_cndmask_b16 v16.h, 0x7fff, v22.h, s1
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
	v_cndmask_b16 v3.h, 0x7fff, v23.h, s2
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xad_u32 v23, v17, 12, 0
	ds_store_b32 v21, v1
	ds_store_b32 v29, v11
	ds_store_b32 v22, v4
	ds_store_b32 v10, v12
	v_lshlrev_b32_e32 v4, 2, v37
	v_xad_u32 v1, 0x104c, v17, 0
	ds_store_b32 v23, v5
	ds_store_b32 v1, v13
	v_lshrrev_b32_e32 v1, 3, v2
	v_lshl_or_b32 v2, v2, 3, v4
	v_cmp_eq_u32_e32 vcc_lo, 0, v36
	v_xad_u32 v24, v17, 16, 0
	v_xad_u32 v25, v17, 20, 0
	v_xad_u32 v10, 0x1050, v17, 0
	v_xor_b32_e32 v1, v2, v1
	v_cndmask_b32_e64 v5, 0x1040, 0, vcc_lo
	v_xad_u32 v4, 0x1054, v17, 0
	v_xad_u32 v27, v17, 24, 0
	v_xad_u32 v2, 0x1058, v17, 0
	v_xad_u32 v28, v17, 28, 0
	v_or_b32_e32 v1, v1, v5
	ds_store_b32 v24, v6
	ds_store_b32 v10, v14
	ds_store_b32 v25, v7
	ds_store_b32 v4, v15
	v_xad_u32 v4, 0x105c, v17, 0
	ds_store_b32 v27, v8
	ds_store_b32 v2, v16
	ds_store_b32 v28, v9
	ds_store_b32 v4, v3
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
	s_lshr_b32 s0, s35, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s0, s35, s0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v17, s44, v0
	.loc	1 1536 31                       ; ragged.py:1536:31
	v_lshl_or_b32 v0, s33, 5, v18
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_ashr_i32 s1, s0, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v17
	.loc	1 1542 54                       ; ragged.py:1542:54
	v_cmp_gt_i32_e32 vcc_lo, s1, v0
	.loc	1 1542 33 is_stmt 0             ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1543 17 is_stmt 1             ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_9
; %bb.8:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s21, v17
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_9:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 4, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_11
; %bb.10:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s21, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_11:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 8, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_13
; %bb.12:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s21, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_13:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 12, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_15
; %bb.14:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s21, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_15:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_17
; %bb.16:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s21, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_17:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 20, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_19
; %bb.18:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s21, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_19:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 24, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_21
; %bb.20:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s21, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_21:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 28, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_23
; %bb.22:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s21, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_23:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 32, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_25
; %bb.24:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s21, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v13, off
.LBB0_25:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(7)
	v_or_b32_e32 v13, 36, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v13
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_27
; %bb.26:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v13, s21, v13
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v9, off
.LBB0_27:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(5)
	v_or_b32_e32 v9, 40, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v9
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_29
; %bb.28:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v9, s21, v9
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v5, off
.LBB0_29:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(3)
	v_or_b32_e32 v5, 44, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v5
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_31
; %bb.30:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v5, s21, v5
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v1, off
.LBB0_31:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	s_waitcnt lgkmcnt(1)
	v_or_b32_e32 v1, 48, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_33
; %bb.32:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s21, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[18:19], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v14, v16, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v13, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v14, null, s23, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[13:14], v1, off
.LBB0_33:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 52, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_35
; %bb.34:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s21, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[13:14], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v10, v12, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v14, 31, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[13:14], 2, v[13:14]
	v_add_co_u32 v9, s0, s22, v13
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s23, v14, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[9:10], v1, off
.LBB0_35:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 56, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_37
; %bb.36:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s21, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[9:10], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v6, v8, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v10, 31, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	v_add_co_u32 v5, s0, s22, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, s23, v10, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[5:6], v1, off
.LBB0_37:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 60, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s34, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_39
; %bb.38:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s21, v1
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
	v_add_co_u32 v0, vcc_lo, s22, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[0:1], v2, off
.LBB0_39:
	.loc	1 1276 5 is_stmt 1              ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 112
		.amdhsa_next_free_sgpr 52
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
		.amdhsa_inst_pref_size 51
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_vgpr, 112
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.numbered_sgpr, 52
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6448
; TotalNumSgprs: 54
; NumVgprs: 112
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 13
; NumSGPRsForWavesPerEU: 54
; NumVGPRsForWavesPerEU: 112
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     112
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
