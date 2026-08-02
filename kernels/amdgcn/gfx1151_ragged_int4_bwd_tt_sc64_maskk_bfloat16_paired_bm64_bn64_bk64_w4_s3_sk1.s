	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc64_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc64_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc64_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc64_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc64_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[80:81], s[0:1], 0x30
	s_load_b128 s[64:67], s[0:1], 0x20
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v123, 0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s80, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s81, 63
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
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v125, 0
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s6, s4
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v129, 0
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_abs_i32 s5, s4
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v133, 0
	s_cvt_f32_u32 s7, s5
	s_sub_i32 s8, 0, s5
	v_dual_mov_b32 v110, 0 :: v_dual_and_b32 v55, 15, v0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_dual_mov_b32 v112, 0 :: v_dual_and_b32 v57, 32, v0
	v_mov_b32_e32 v114, 0
	v_mov_b32_e32 v120, 0
	v_mov_b32_e32 v124, 0
	v_mov_b32_e32 v128, 0
	v_mov_b32_e32 v130, 0
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v56, 64, v0
	v_and_b32_e32 v54, 16, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	.loc	1 1304 20                       ; ragged.py:1304:20
	v_readfirstlane_b32 s7, v1
	v_mov_b32_e32 v138, 0
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
	s_sub_i32 s22, s5, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s7
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s22, s4
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
	s_ashr_i32 s23, s22, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[4:5], s[22:23], 2
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s6, s7, s6
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s83, s7, 6
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s82, s2, s6
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_add_u32 s4, s64, s4
	s_addc_u32 s5, s65, s5
	s_mov_b32 s65, 0
	s_load_b32 s19, s[4:5], 0x0
	.loc	1 1513 37                       ; ragged.py:1513:37
	s_mul_i32 s64, s22, s80
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s18, s19, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_lt_i32 s18, 2
	s_cbranch_scc1 .LBB0_8
; %bb.1:                                ; %.lr.ph38
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_lshrrev_b32_e32 v5, 1, v0
	v_lshrrev_b32_e32 v2, 2, v56
	v_dual_mov_b32 v138, 0 :: v_dual_and_b32 v1, 63, v0
	v_lshrrev_b32_e32 v3, 4, v54
	v_lshrrev_b32_e32 v4, 1, v57
	.loc	1 1310 18                       ; ragged.py:1310:18
	s_lshl_b32 s23, s82, 6
	s_load_b64 s[20:21], s[0:1], 0x38
	v_or_b32_e32 v6, s23, v5
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v2, v2, v55
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or3_b32 v65, v3, v4, s23
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v4, s83, v1
	s_load_b256 s[56:63], s[0:1], 0x0
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s2, s81, v6
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_lshrrev_b32_e32 v6, 3, v56
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_or_b32_e32 v3, 32, v2
	.loc	1 1309 18 is_stmt 0             ; ragged.py:1309:18
	v_or_b32_e32 v7, s83, v2
	.loc	1 1311 20 is_stmt 1             ; ragged.py:1311:20
	v_cmp_gt_i32_e32 vcc_lo, s80, v4
	v_dual_mov_b32 v133, 0 :: v_dual_lshlrev_b32 v4, 4, v0
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s85, s3, 5
	.loc	1 1468 43                       ; ragged.py:1468:43
	s_mul_i32 s3, s22, s81
	v_mad_u64_u32 v[34:35], null, s80, v6, v[1:2]
	s_add_i32 s91, s23, s3
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v8, s83, v3
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s80, v7
	v_dual_mov_b32 v128, 0 :: v_dual_lshlrev_b32 v7, 1, v0
	v_dual_mov_b32 v130, 0 :: v_dual_and_b32 v33, 16, v4
	v_dual_mov_b32 v98, 0 :: v_dual_add_nc_u32 v9, s91, v5
	v_cmp_gt_i32_e64 s1, s80, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v8, v7, v5
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_lshrrev_b32_e32 v87, 6, v56
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[35:36], null, v9, s20, v[33:34]
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s24, s18, 31
	v_dual_mov_b32 v113, 0 :: v_dual_and_b32 v8, 24, v8
	v_dual_mov_b32 v110, 0 :: v_dual_and_b32 v7, 24, v7
	v_cmp_eq_u32_e64 s3, 0, v56
	s_add_i32 s24, s18, s24
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_mad_u64_u32 v[36:37], null, s80, v87, v[1:2]
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_ashr_i32 s84, s24, 1
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_lshr_b32 s24, s19, 31
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_mad_u64_u32 v[37:38], null, s20, v5, v[33:34]
	v_mad_u64_u32 v[38:39], null, s80, 3, v[34:35]
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_add_i32 s24, s19, s24
	v_xor_b32_e32 v6, v8, v6
	v_cndmask_b32_e64 v8, 0x208, 0, s3
	v_lshl_or_b32 v7, v55, 5, v7
	v_mad_u64_u32 v[39:40], null, s80, 5, v[34:35]
	v_mad_u64_u32 v[40:41], null, s80, 7, v[34:35]
	s_ashr_i32 s86, s24, 1
	.loc	1 1464 43                       ; ragged.py:1464:43
	s_mul_i32 s87, s22, s20
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s88, s22, s21
	s_lshl_b32 s22, s80, 1
	s_lshl_b32 s24, s80, 2
	s_lshl_b32 s26, s80, 4
	s_and_b32 s69, s57, 0xffff
	s_and_b32 s73, s59, 0xffff
	v_mad_u64_u32 v[41:42], null, s80, 17, v[34:35]
	s_bitcmp1_b32 s19, 0
	v_mad_u64_u32 v[42:43], null, s80, 19, v[34:35]
	v_mad_u64_u32 v[43:44], null, s80, 21, v[34:35]
	v_lshl_or_b32 v126, v1, 5, v6
	v_xor_b32_e32 v127, v7, v8
	v_dual_mov_b32 v94, 0 :: v_dual_and_b32 v9, 24, v0
	s_cselect_b32 s89, -1, 0
	s_add_i32 s3, s83, s64
	v_mad_u64_u32 v[44:45], null, s80, 23, v[34:35]
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_mad_u64_u32 v[45:46], null, s80, 10, v[36:37]
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v1, s3, v2
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v3, s3, v3
	v_mad_u64_u32 v[46:47], null, s80, 12, v[36:37]
	v_mad_u64_u32 v[47:48], null, s80, 14, v[36:37]
	v_mad_u64_u32 v[48:49], null, s80, 24, v[36:37]
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v67, 2, v65
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
	v_or_b32_e32 v81, 44, v65
	v_or_b32_e32 v82, 46, v65
	v_xor_b32_e32 v6, 16, v126
	v_xor_b32_e32 v8, 8, v127
	v_xor_b32_e32 v10, 16, v127
	v_xor_b32_e32 v11, 24, v127
	v_xor_b32_e32 v12, 0x410, v127
	v_xor_b32_e32 v13, 0x418, v127
	v_xor_b32_e32 v131, v4, v9
	v_lshl_or_b32 v132, v57, 4, v7
	v_xor_b32_e32 v4, 0x408, v127
	v_or_b32_e32 v5, 0x380, v0
	v_or_b32_e32 v7, 0x780, v0
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_mad_u64_u32 v[49:50], null, s80, 26, v[36:37]
	v_mad_u64_u32 v[50:51], null, s80, 28, v[36:37]
	v_mul_lo_u32 v142, v1, s21
	v_mul_lo_u32 v143, v3, s21
	v_mad_u64_u32 v[51:52], null, s80, 30, v[36:37]
	s_mul_i32 s25, s80, 6
	s_mul_i32 s27, s80, 18
	s_mul_i32 s28, s80, 20
	s_mul_i32 s29, s80, 22
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s43, s81, v65
	v_cmp_gt_i32_e64 s4, s81, v67
	v_cmp_gt_i32_e64 s5, s81, v68
	v_cmp_gt_i32_e64 s6, s81, v69
	v_cmp_gt_i32_e64 s7, s81, v70
	v_cmp_gt_i32_e64 s8, s81, v71
	v_cmp_gt_i32_e64 s9, s81, v72
	v_cmp_gt_i32_e64 s10, s81, v73
	v_cmp_gt_i32_e64 s11, s81, v74
	v_cmp_gt_i32_e64 s12, s81, v75
	v_cmp_gt_i32_e64 s13, s81, v76
	v_cmp_gt_i32_e64 s14, s81, v77
	v_cmp_gt_i32_e64 s15, s81, v78
	v_cmp_gt_i32_e64 s16, s81, v79
	v_cmp_gt_i32_e64 s17, s81, v81
	v_cmp_gt_i32_e64 s18, s81, v82
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v89, 14, v33
	v_or_b32_e32 v90, 15, v33
	v_or_b32_e32 v91, 2, v87
	v_or_b32_e32 v92, 4, v87
	v_or_b32_e32 v93, 6, v87
	v_or_b32_e32 v95, 8, v87
	v_or_b32_e32 v96, 10, v87
	v_or_b32_e32 v97, 12, v87
	v_or_b32_e32 v99, 14, v87
	v_or_b32_e32 v101, 16, v87
	v_or_b32_e32 v102, 18, v87
	v_or_b32_e32 v103, 20, v87
	v_or_b32_e32 v104, 22, v87
	v_or_b32_e32 v105, 24, v87
	v_or_b32_e32 v106, 26, v87
	v_or_b32_e32 v107, 28, v87
	v_or_b32_e32 v108, 30, v87
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v115, s22, v34
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v116, s24, v34
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v117, s25, v34
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v118, s26, v34
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v119, s27, v34
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v121, s28, v34
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v122, s29, v34
	v_xor_b32_e32 v134, 8, v131
	v_xor_b32_e32 v135, 8, v132
	v_xor_b32_e32 v136, 16, v132
	v_xor_b32_e32 v137, 24, v132
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v139, s22, v36
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v140, s24, v36
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v141, 0, v2
	v_dual_mov_b32 v109, 0 :: v_dual_add_nc_u32 v144, 0, v6
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v145, 0, v8
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v146, 0, v10
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v147, 0, v11
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v148, 0, v12
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v149, 0, v13
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v150, 0, v4
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v151, 0, v5
	v_dual_mov_b32 v59, 0 :: v_dual_add_nc_u32 v152, 0, v7
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v153, s25, v36
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_lshl_add_u32 v154, s80, 3, v36
	v_dual_mov_b32 v100, 0 :: v_dual_add_nc_u32 v155, s26, v36
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v156, s27, v36
	v_add_nc_u32_e32 v157, s28, v36
	v_add_nc_u32_e32 v158, s29, v36
	v_add_nc_u32_e32 v159, 1, v37
	v_add_nc_u32_e32 v160, 2, v37
	v_add_nc_u32_e32 v161, 3, v37
	v_add_nc_u32_e32 v162, 4, v37
	v_add_nc_u32_e32 v163, 5, v37
	v_add_nc_u32_e32 v164, 6, v37
	v_add_nc_u32_e32 v165, 7, v37
	v_add_nc_u32_e32 v166, 8, v37
	v_add_nc_u32_e32 v167, 9, v37
	v_add_nc_u32_e32 v168, 10, v37
	v_add_nc_u32_e32 v169, 11, v37
	v_add_nc_u32_e32 v170, 12, v37
	v_add_nc_u32_e32 v171, 13, v37
	v_add_nc_u32_e32 v172, 14, v37
	v_add_nc_u32_e32 v173, 15, v37
	v_add_nc_u32_e32 v174, 0, v0
	s_add_i32 s90, s84, -1
	s_mov_b32 s68, s56
	s_mov_b32 s71, 0x31027000
	s_mov_b32 s70, 0x7ffffffe
	s_mov_b32 s72, s58
	s_mul_i32 s91, s91, s20
	s_and_b32 s61, s61, 0xffff
	s_and_b32 s77, s63, 0xffff
	s_mov_b32 s76, s62
	s_lshr_b32 s92, s90, 5
	s_mov_b32 s62, 0
	s_branch .LBB0_3
.LBB0_2:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v52, v142, s65, 1
	v_add_lshl_u32 v53, v143, s65, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s3, s65, s88
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_mov_b32 s62, s70
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s3, s3, s81
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v52, 0x80000000, v52, s0
	v_cndmask_b32_e64 v53, 0x80000000, v53, s1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v175, v65, s3, 1
	v_add_lshl_u32 v176, v67, s3, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_mov_b32 s63, s71
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v177, v68, s3, 1
	v_add_lshl_u32 v178, v69, s3, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x1
	buffer_load_u16 v52, v52, s[60:63], 0 offen
	buffer_load_u16 v53, v53, s[60:63], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v179, v70, s3, 1
	v_add_lshl_u32 v180, v71, s3, 1
	v_add_lshl_u32 v181, v72, s3, 1
	v_add_lshl_u32 v182, v73, s3, 1
	v_add_lshl_u32 v183, v74, s3, 1
	v_cndmask_b32_e64 v175, 0x80000000, v175, s43
	v_add_lshl_u32 v184, v75, s3, 1
	v_cndmask_b32_e64 v176, 0x80000000, v176, s4
	v_add_lshl_u32 v185, v76, s3, 1
	v_cndmask_b32_e64 v177, 0x80000000, v177, s5
	v_add_lshl_u32 v186, v77, s3, 1
	s_mov_b32 s78, s70
	s_mov_b32 s79, s71
	v_cndmask_b32_e64 v178, 0x80000000, v178, s6
	v_add_lshl_u32 v187, v78, s3, 1
	v_add_lshl_u32 v188, v79, s3, 1
	v_add_lshl_u32 v189, v81, s3, 1
	v_add_lshl_u32 v190, v82, s3, 1
	v_cndmask_b32_e64 v179, 0x80000000, v179, s7
	v_cndmask_b32_e64 v180, 0x80000000, v180, s8
	v_cndmask_b32_e64 v181, 0x80000000, v181, s9
	v_cndmask_b32_e64 v182, 0x80000000, v182, s10
	v_cndmask_b32_e64 v183, 0x80000000, v183, s11
	s_clause 0x7
	buffer_load_u16 v175, v175, s[76:79], 0 offen
	buffer_load_u16 v176, v176, s[76:79], 0 offen
	buffer_load_u16 v177, v177, s[76:79], 0 offen
	buffer_load_u16 v178, v178, s[76:79], 0 offen
	buffer_load_u16 v179, v179, s[76:79], 0 offen
	buffer_load_u16 v180, v180, s[76:79], 0 offen
	buffer_load_u16 v181, v181, s[76:79], 0 offen
	buffer_load_u16 v182, v182, s[76:79], 0 offen
	v_cndmask_b32_e64 v184, 0x80000000, v184, s12
	v_cndmask_b32_e64 v185, 0x80000000, v185, s13
	v_cndmask_b32_e64 v186, 0x80000000, v186, s14
	v_cndmask_b32_e64 v187, 0x80000000, v187, s15
	v_cndmask_b32_e64 v188, 0x80000000, v188, s16
	v_cndmask_b32_e64 v189, 0x80000000, v189, s17
	v_cndmask_b32_e64 v190, 0x80000000, v190, s18
	s_clause 0x7
	buffer_load_u16 v183, v183, s[76:79], 0 offen
	buffer_load_u16 v184, v184, s[76:79], 0 offen
	buffer_load_u16 v185, v185, s[76:79], 0 offen
	buffer_load_u16 v186, v186, s[76:79], 0 offen
	buffer_load_u16 v187, v187, s[76:79], 0 offen
	buffer_load_u16 v188, v188, s[76:79], 0 offen
	buffer_load_u16 v189, v189, s[76:79], 0 offen
	buffer_load_u16 v190, v190, s[76:79], 0 offen
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v2, v2
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
	s_add_i32 s3, s65, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s62, s3, 5
	s_cmp_lg_u32 s65, s92
	s_mov_b32 s65, s3
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v52, 16, v52
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(16)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v26, v52, v26 :: v_dual_lshlrev_b32 v53, 16, v53
	v_dual_mul_f32 v1, v1, v53 :: v_dual_mul_f32 v30, v52, v30
	v_mul_f32_e32 v18, v52, v18
	v_mul_f32_e32 v27, v52, v27
	v_mul_f32_e32 v28, v52, v28
	v_mul_f32_e32 v29, v52, v29
	v_mul_f32_e32 v31, v52, v31
	v_mul_f32_e32 v32, v52, v32
	v_mul_f32_e32 v17, v52, v17
	v_mul_f32_e32 v19, v52, v19
	v_mul_f32_e32 v20, v52, v20
	v_mul_f32_e32 v21, v52, v21
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v175, 16, v175
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v176, 16, v176
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v177, 16, v177
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v178, 16, v178
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v179, 16, v179
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v180, 16, v180
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v181, 16, v181
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v182, 16, v182
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v183, 16, v183
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v184, 16, v184
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v22, v52, v22 :: v_dual_lshlrev_b32 v185, 16, v185
	.loc	1 1519 40                       ; ragged.py:1519:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v186, 16, v186
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v24, v52, v24 :: v_dual_lshlrev_b32 v187, 16, v187
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v23, v52, v23 :: v_dual_lshlrev_b32 v188, 16, v188
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v2, v53, v2 :: v_dual_lshlrev_b32 v189, 16, v189
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v25, v25, v52 :: v_dual_lshlrev_b32 v190, 16, v190
	v_dual_mul_f32 v3, v53, v3 :: v_dual_fmac_f32 v138, v26, v176
	v_dual_mul_f32 v4, v53, v4 :: v_dual_fmac_f32 v133, v27, v177
	v_dual_mul_f32 v5, v53, v5 :: v_dual_fmac_f32 v130, v28, v178
	v_dual_mul_f32 v6, v53, v6 :: v_dual_fmac_f32 v125, v31, v181
	v_dual_mul_f32 v7, v53, v7 :: v_dual_fmac_f32 v128, v30, v180
	v_dual_mul_f32 v8, v53, v8 :: v_dual_fmac_f32 v113, v20, v186
	v_dual_mul_f32 v9, v53, v9 :: v_dual_fmac_f32 v124, v32, v182
	v_dual_mul_f32 v10, v53, v10 :: v_dual_fmac_f32 v111, v22, v188
	v_dual_mul_f32 v11, v53, v11 :: v_dual_fmac_f32 v120, v18, v184
	v_dual_mul_f32 v12, v53, v12 :: v_dual_fmac_f32 v109, v24, v190
	v_dual_mul_f32 v13, v53, v13 :: v_dual_fmac_f32 v98, v2, v176
	v_dual_mul_f32 v14, v53, v14 :: v_dual_fmac_f32 v83, v7, v181
	v_dual_mul_f32 v15, v53, v15 :: v_dual_fmac_f32 v114, v19, v185
	v_dual_mul_f32 v16, v53, v16 :: v_dual_fmac_f32 v63, v11, v185
	.loc	1 1525 17                       ; ragged.py:1525:17
	v_dual_fmac_f32 v129, v29, v179 :: v_dual_fmac_f32 v110, v23, v189
	v_dual_fmac_f32 v123, v17, v183 :: v_dual_fmac_f32 v94, v3, v177
	v_dual_fmac_f32 v112, v21, v187 :: v_dual_fmac_f32 v59, v14, v188
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v88, v25, v175 :: v_dual_fmac_f32 v61, v16, v190
	v_fmac_f32_e32 v100, v1, v175
	v_dual_fmac_f32 v86, v4, v178 :: v_dual_fmac_f32 v85, v5, v179
	v_fmac_f32_e32 v84, v6, v180
	v_fmac_f32_e32 v80, v8, v182
	v_fmac_f32_e32 v66, v9, v183
	v_fmac_f32_e32 v64, v10, v184
	v_fmac_f32_e32 v62, v12, v186
	v_fmac_f32_e32 v60, v13, v187
	v_fmac_f32_e32 v58, v15, v189
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_8
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 1456 54                       ; ragged.py:1456:54
	s_sub_i32 s3, s86, s62
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v16, 0
	.loc	1 1454 45                       ; ragged.py:1454:45
	v_med3_i32 v2, s3, 0, 32
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
	s_and_b32 s19, s3, 32
	s_mov_b32 s3, s85
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_ge_i32 s85, s19
	s_cbranch_scc1 .LBB0_6
; %bb.4:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v25, 0
	s_mov_b32 s3, s85
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
	.loc	1 1462 30 is_stmt 1             ; ragged.py:1462:30
	s_add_i32 s20, s3, s62
	v_add_nc_u32_e32 v52, s80, v34
	.loc	1 1471 46                       ; ragged.py:1471:46
	s_add_i32 s21, s20, s87
	.loc	1 1472 46                       ; ragged.py:1472:46
	v_add_nc_u32_e32 v53, s20, v35
	.loc	1 1471 46                       ; ragged.py:1471:46
	s_mul_i32 s20, s21, s80
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_mov_b32 s74, s70
	.loc	1 1471 46                       ; ragged.py:1471:46
	s_add_i32 s20, s20, s83
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_mov_b32 s75, s71
	v_add_nc_u32_e32 v180, s20, v117
	v_add_nc_u32_e32 v181, s20, v40
	v_add_nc_u32_e32 v178, s20, v116
	v_add_nc_u32_e32 v179, s20, v39
	v_add_nc_u32_e32 v176, s20, v115
	v_add_nc_u32_e32 v177, s20, v38
	v_add_nc_u32_e32 v175, s20, v34
	v_add_nc_u32_e32 v52, s20, v52
	v_add_nc_u32_e32 v182, s20, v118
	v_add_nc_u32_e32 v183, s20, v41
	v_add_nc_u32_e32 v184, s20, v119
	v_add_nc_u32_e32 v185, s20, v42
	v_add_nc_u32_e32 v186, s20, v121
	v_add_nc_u32_e32 v187, s20, v43
	v_add_nc_u32_e32 v188, s20, v122
	v_add_nc_u32_e32 v189, s20, v44
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_dual_cndmask_b32 v180, 0x80000000, v180 :: v_dual_cndmask_b32 v181, 0x80000000, v181
	v_dual_cndmask_b32 v178, 0x80000000, v178 :: v_dual_cndmask_b32 v179, 0x80000000, v179
	v_dual_cndmask_b32 v176, 0x80000000, v176 :: v_dual_cndmask_b32 v177, 0x80000000, v177
	v_dual_cndmask_b32 v175, 0x80000000, v175 :: v_dual_cndmask_b32 v52, 0x80000000, v52
	v_dual_cndmask_b32 v182, 0x80000000, v182 :: v_dual_cndmask_b32 v183, 0x80000000, v183
	v_dual_cndmask_b32 v184, 0x80000000, v184 :: v_dual_cndmask_b32 v185, 0x80000000, v185
	v_dual_cndmask_b32 v186, 0x80000000, v186 :: v_dual_cndmask_b32 v187, 0x80000000, v187
	v_dual_cndmask_b32 v188, 0x80000000, v188 :: v_dual_cndmask_b32 v189, 0x80000000, v189
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_cndmask_b32_e64 v53, 0x80000000, v53, s2
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_clause 0xf
	buffer_load_u8 v181, v181, s[68:71], 0 offen
	buffer_load_u8 v179, v179, s[68:71], 0 offen
	buffer_load_u8 v190, v177, s[68:71], 0 offen
	buffer_load_u8 v191, v52, s[68:71], 0 offen
	buffer_load_u8 v189, v189, s[68:71], 0 offen
	buffer_load_u8 v187, v187, s[68:71], 0 offen
	buffer_load_u8 v185, v185, s[68:71], 0 offen
	buffer_load_u8 v183, v183, s[68:71], 0 offen
	buffer_load_u8 v192, v180, s[68:71], 0 offen
	buffer_load_u8 v193, v178, s[68:71], 0 offen
	buffer_load_u8 v194, v176, s[68:71], 0 offen
	buffer_load_u8 v195, v175, s[68:71], 0 offen
	buffer_load_u8 v188, v188, s[68:71], 0 offen
	buffer_load_u8 v186, v186, s[68:71], 0 offen
	buffer_load_u8 v184, v184, s[68:71], 0 offen
	buffer_load_u8 v196, v182, s[68:71], 0 offen
	.loc	1 1472 38                       ; ragged.py:1472:38
	buffer_load_b128 v[175:178], v53, s[72:75], 0 offen
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_add_nc_u32_e32 v197, 0, v126
	v_add_nc_u32_e32 v198, 0, v127
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_add_nc_u32_e32 v205, 0, v131
	v_add_nc_u32_e32 v207, 0, v132
	v_add_nc_u32_e32 v206, 0, v134
	v_add_nc_u32_e32 v208, 0, v135
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1483 25                       ; ragged.py:1483:25
	s_add_i32 s3, s3, 32
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_lt_i32 s3, s19
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt vmcnt(16)
	v_lshlrev_b16 v52.l, 8, v181.l
	s_waitcnt vmcnt(15)
	v_lshlrev_b16 v52.h, 8, v179.l
	s_waitcnt vmcnt(14)
	v_lshlrev_b16 v53.l, 8, v190.l
	s_waitcnt vmcnt(13)
	v_lshlrev_b16 v53.h, 8, v191.l
	s_waitcnt vmcnt(12)
	v_lshlrev_b16 v179.l, 8, v189.l
	s_waitcnt vmcnt(11)
	v_lshlrev_b16 v179.h, 8, v187.l
	s_waitcnt vmcnt(10)
	v_lshlrev_b16 v180.l, 8, v185.l
	s_waitcnt vmcnt(9)
	v_lshlrev_b16 v180.h, 8, v183.l
	s_waitcnt vmcnt(8)
	v_or_b16 v182.h, v192.l, v52.l
	s_waitcnt vmcnt(7)
	v_or_b16 v182.l, v193.l, v52.h
	s_waitcnt vmcnt(6)
	v_or_b16 v181.h, v194.l, v53.l
	s_waitcnt vmcnt(5)
	v_or_b16 v181.l, v195.l, v53.h
	s_waitcnt vmcnt(4)
	v_or_b16 v53.h, v188.l, v179.l
	s_waitcnt vmcnt(3)
	v_or_b16 v53.l, v186.l, v179.h
	s_waitcnt vmcnt(2)
	v_or_b16 v52.h, v184.l, v180.l
	s_waitcnt vmcnt(1)
	v_or_b16 v52.l, v196.l, v180.h
	ds_store_b64 v197, v[181:182]
	ds_store_b64 v144, v[52:53]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[179:182], v198 offset1:2
	ds_load_b64 v[52:53], v145
	ds_load_b64 v[195:196], v146
	ds_load_b64 v[197:198], v147
	ds_load_b64 v[199:200], v148
	ds_load_b64 v[201:202], v149
	ds_load_b64 v[203:204], v150
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v205, v[175:176]
	ds_store_b64 v206, v[177:178]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[175:178], v207 offset1:2
	ds_load_2addr_stride64_b64 v[183:186], v208 offset1:2
	v_add_nc_u32_e32 v187, 0, v136
	v_add_nc_u32_e32 v191, 0, v137
	ds_load_2addr_stride64_b64 v[187:190], v187 offset1:2
	ds_load_2addr_stride64_b64 v[191:194], v191 offset1:2
	.loc	1 1473 35                       ; ragged.py:1473:35
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[175:176], v[179:180], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[177:178], v[179:180], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[175:176], v[199:200], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[177:178], v[199:200], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[183:184], v[52:53], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[185:186], v[52:53], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[183:184], v[201:202], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[185:186], v[201:202], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[187:188], v[195:196], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[189:190], v[195:196], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[187:188], v[181:182], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[189:190], v[181:182], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[191:192], v[197:198], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[193:194], v[197:198], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[191:192], v[203:204], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[193:194], v[203:204], v[9:16] neg_lo:[1,1,0]
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1452 25                       ; ragged.py:1452:25
	s_sub_i32 s19, s84, s62
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1450 42                       ; ragged.py:1450:42
	s_min_i32 s78, s19, 32
	.loc	1 1484 24                       ; ragged.py:1484:24
	s_cmp_ge_i32 s3, s78
	.loc	1 1484 21 is_stmt 0             ; ragged.py:1484:21
	s_cbranch_scc1 .LBB0_2
; %bb.7:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_or_b32_e32 v52, 4, v33
	.loc	1 1485 30                       ; ragged.py:1485:30
	s_add_i32 s63, s3, s62
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_mov_b32 s74, s70
	.loc	1 1497 46 is_stmt 0             ; ragged.py:1497:46
	s_add_i32 s79, s63, s91
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_mov_b32 s75, s71
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v52, s63, v52
	v_add_nc_u32_e32 v196, s79, v168
	v_add_nc_u32_e32 v197, s79, v167
	v_add_nc_u32_e32 v198, s79, v166
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_add_nc_u32_e32 v255, 0, v131
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v53, s62, v52
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s26, s90, v52
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v52, 3, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s19, s78, v53
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v53, 5, v33
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s19, s2, s19
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v53, s63, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v175, s62, v53
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s24, s90, v53
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s23, s78, v175
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v175, 6, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v175, s63, v175
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v176, s62, v175
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s20, s90, v175
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v175, s63, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s25, s78, v176
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v176, 7, v33
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v52, s62, v175
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v176, s63, v176
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s3, s78, v52
	v_add_nc_u32_e32 v52, s79, v162
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1494 35 is_stmt 0             ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v177, s62, v176
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s22, s90, v176
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v52, 0x80000000, v52, s19
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s19, s2, s23
	s_and_b32 s3, s2, s3
	.loc	1 1494 34 is_stmt 1             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s21, s78, v177
	v_add_nc_u32_e32 v177, s79, v161
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v53, v52, s[72:75], 0 offen
	v_add_nc_u32_e32 v52, s79, v163
	v_cndmask_b32_e64 v177, 0x80000000, v177, s3
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s3, s26, s89
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v52, 0x80000000, v52, s19
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s19, s2, s25
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v176, v52, s[72:75], 0 offen
	v_add_nc_u32_e32 v52, s79, v164
	v_cndmask_b32_e64 v52, 0x80000000, v52, s19
	s_clause 0x1
	buffer_load_u8 v178, v52, s[72:75], 0 offen
	buffer_load_u8 v177, v177, s[72:75], 0 offen
	.loc	1 1499 66 is_stmt 1             ; ragged.py:1499:66
	s_waitcnt vmcnt(3)
	v_and_b16 v52.l, v53.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v52.l, v53.l, v52.l, s3
	v_add_nc_u32_e32 v53, s79, v165
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s24, s89
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(2)
	v_and_b16 v52.h, v176.l, 15
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v52.h, v176.l, v52.h, s3
	.loc	1 1497 70 is_stmt 1             ; ragged.py:1497:70
	s_and_b32 s3, s2, s21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1497 38 is_stmt 0             ; ragged.py:1497:38
	v_cndmask_b32_e64 v53, 0x80000000, v53, s3
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s22, s89
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_lshlrev_b16 v52.h, 8, v52.h
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v176, v53, s[72:75], 0 offen
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(2)
	v_and_b16 v53.h, v178.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v53.l, v176.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v53.l, v176.l, v53.l, s3
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s20, s89
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v53.h, v178.l, v53.h, s3
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s3, s90, v175
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_lshlrev_b16 v53.l, 8, v53.l
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s3, s3, s89
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_or_b16 v53.h, v53.h, v53.l
	v_or_b16 v53.l, v52.l, v52.h
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v52, 2, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v52, s63, v52
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s19, s90, v52
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v52, s62, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s20, s78, v52
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_or_b32_e32 v52, 1, v33
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s20, s2, s20
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v175, s63, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v52, s62, v175
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s21, s78, v52
	v_add_nc_u32_e32 v52, s79, v160
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	v_cndmask_b32_e64 v52, 0x80000000, v52, s20
	buffer_load_u8 v176, v52, s[72:75], 0 offen
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v52.l, v177.l, 15
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v52.l, v177.l, v52.l, s3
	v_add_nc_u32_e32 v177, s79, v159
	.loc	1 1497 70 is_stmt 1             ; ragged.py:1497:70
	s_and_b32 s3, s2, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_lshlrev_b16 v52.l, 8, v52.l
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v177, 0x80000000, v177, s3
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s3, s19, s89
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v177, v177, s[72:75], 0 offen
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(1)
	v_and_b16 v52.h, v176.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v52.h, v176.l, v52.h, s3
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s3, s90, v175
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v175, s63, v33
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_or_b16 v52.h, v52.h, v52.l
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s3, s3, s89
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1495 60 is_stmt 0             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s19, s90, v175
	.loc	1 1494 35 is_stmt 1             ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v175, s62, v175
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s20, s78, v175
	v_add_nc_u32_e32 v175, s79, v37
	.loc	1 1497 70 is_stmt 1             ; ragged.py:1497:70
	s_and_b32 s20, s2, s20
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38 is_stmt 0             ; ragged.py:1497:38
	v_cndmask_b32_e64 v175, 0x80000000, v175, s20
	buffer_load_u8 v176, v175, s[72:75], 0 offen
	.loc	1 1499 66 is_stmt 1             ; ragged.py:1499:66
	s_waitcnt vmcnt(1)
	v_and_b16 v52.l, v177.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v52.l, v177.l, v52.l, s3
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s19, s89
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_lshlrev_b16 v52.l, 8, v52.l
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(0)
	v_and_b16 v175.l, v176.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v175.l, v176.l, v175.l, s3
	v_or_b16 v52.l, v175.l, v52.l
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v175, s63, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s41, s90, v175
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v175, s62, v175
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s41, s41, s89
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s57, s78, v175
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v175, s63, v91
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s57, vcc_lo, s57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s42, s90, v175
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v175, s62, v175
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s58, s78, v175
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v175, s63, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s44, s90, v175
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v175, s62, v175
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s59, s78, v175
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v175, s63, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s46, s90, v175
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v175, s62, v175
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s56, s78, v175
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v175, s63, v95
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s56, vcc_lo, s56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s48, s90, v175
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v175, s62, v175
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s55, s78, v175
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v175, s63, v96
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s55, vcc_lo, s55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s49, s90, v175
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v175, s62, v175
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s54, s78, v175
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v175, s63, v97
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s54, vcc_lo, s54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s50, s90, v175
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v175, s62, v175
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s53, s78, v175
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v175, s63, v99
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s53, vcc_lo, s53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s51, s90, v175
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v175, s62, v175
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s52, s78, v175
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v175, s63, v101
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s52, vcc_lo, s52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s27, s90, v175
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v175, s62, v175
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s47, s78, v175
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v175, s63, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s28, s90, v175
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v175, s62, v175
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s45, s78, v175
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v175, s63, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s29, s90, v175
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v175, s62, v175
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s3, s78, v175
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v175, s63, v104
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s30, s90, v175
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v175, s62, v175
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s40, s78, v175
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v175, s63, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s31, s90, v175
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v175, s62, v175
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s39, s78, v175
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v175, s63, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s33, s90, v175
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v175, s62, v175
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s38, s78, v175
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v175, s63, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s34, s90, v175
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v175, s62, v175
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s37, s78, v175
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v175, s63, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s35, s90, v175
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v175, s62, v175
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s36, s78, v175
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_or_b32_e32 v175, 8, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v175, s63, v175
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v176, s62, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s19, s78, v176
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_or_b32_e32 v176, 9, v33
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v176, s63, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v177, s62, v176
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s20, s78, v177
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_or_b32_e32 v177, 10, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v177, s63, v177
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v178, s62, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s21, s78, v178
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_or_b32_e32 v178, 11, v33
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v178, s63, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v179, s62, v178
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s22, s78, v179
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_or_b32_e32 v179, 12, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v179, s63, v179
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v180, s62, v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s26, s78, v180
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_or_b32_e32 v180, 13, v33
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v180, s63, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v181, s62, v180
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s25, s78, v181
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v181, s63, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v182, s62, v181
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s23, s78, v182
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	v_or_b32_e32 v182, s63, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v183, s62, v182
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_add_i32 s62, s63, s87
	s_mul_i32 s62, s62, s80
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s62, s62, s83
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s24, s78, v183
	v_add_nc_u32_e32 v183, s62, v36
	v_add_nc_u32_e32 v184, s62, v139
	v_add_nc_u32_e32 v186, s62, v153
	v_add_nc_u32_e32 v188, s62, v45
	v_add_nc_u32_e32 v192, s62, v49
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v183, 0x80000000, v183, s57
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s57, vcc_lo, s58
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v186, 0x80000000, v186, s56
	v_cndmask_b32_e64 v184, 0x80000000, v184, s57
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s57, vcc_lo, s59
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v185, v183, s[68:71], 0 offen
	v_cndmask_b32_e64 v188, 0x80000000, v188, s54
	s_clause 0x1
	buffer_load_u8 v186, v186, s[68:71], 0 offen
	buffer_load_u8 v184, v184, s[68:71], 0 offen
	v_add_nc_u32_e32 v183, s62, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v183, 0x80000000, v183, s57
	buffer_load_u8 v187, v183, s[68:71], 0 offen
	v_add_nc_u32_e32 v183, s62, v154
	v_cndmask_b32_e64 v183, 0x80000000, v183, s55
	buffer_load_u8 v189, v183, s[68:71], 0 offen
	v_add_nc_u32_e32 v183, s62, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v183, 0x80000000, v183, s53
	s_clause 0x1
	buffer_load_u8 v188, v188, s[68:71], 0 offen
	buffer_load_u8 v190, v183, s[68:71], 0 offen
	v_add_nc_u32_e32 v183, s62, v47
	v_cndmask_b32_e64 v183, 0x80000000, v183, s52
	buffer_load_u8 v191, v183, s[68:71], 0 offen
	.loc	1 1498 66 is_stmt 1             ; ragged.py:1498:66
	s_waitcnt vmcnt(7)
	v_and_b16 v183.l, v185.l, 15
	s_waitcnt vmcnt(5)
	v_and_b16 v184.h, v186.l, 15
	v_and_b16 v183.h, v184.l, 15
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v183.l, v185.l, v183.l, s41
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s41, s42, s89
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v183.h, v184.l, v183.h, s41
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s41, s44, s89
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(4)
	v_and_b16 v184.l, v187.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v184.l, v187.l, v184.l, s41
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s41, s46, s89
	v_add_nc_u32_e32 v187, s62, v155
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v184.h, v186.l, v184.h, s41
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s41, s48, s89
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(3)
	v_and_b16 v185.l, v189.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v185.l, v189.l, v185.l, s41
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s41, s49, s89
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(2)
	v_and_b16 v185.h, v188.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v186.l, v190.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v185.h, v188.l, v185.h, s41
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s41, s50, s89
	v_add_nc_u32_e32 v188, s62, v156
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v186.l, v190.l, v186.l, s41
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s41, s51, s89
	v_add_nc_u32_e32 v190, s62, v158
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(0)
	v_and_b16 v186.h, v191.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v186.h, v191.l, v186.h, s41
	.loc	1 1496 70 is_stmt 1             ; ragged.py:1496:70
	s_and_b32 s41, vcc_lo, s47
	.loc	1 1496 38 is_stmt 0             ; ragged.py:1496:38
	v_cndmask_b32_e64 v187, 0x80000000, v187, s41
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s41, vcc_lo, s45
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v188, 0x80000000, v188, s41
	s_clause 0x1
	buffer_load_u8 v189, v187, s[68:71], 0 offen
	buffer_load_u8 v188, v188, s[68:71], 0 offen
	v_add_nc_u32_e32 v187, s62, v157
	v_cndmask_b32_e64 v187, 0x80000000, v187, s3
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s40
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v190, 0x80000000, v190, s3
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s39
	.loc	1 1496 38                       ; ragged.py:1496:38
	s_clause 0x1
	buffer_load_u8 v191, v187, s[68:71], 0 offen
	buffer_load_u8 v190, v190, s[68:71], 0 offen
	v_add_nc_u32_e32 v187, s62, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v187, 0x80000000, v187, s3
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s38
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v192, 0x80000000, v192, s3
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s37
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v193, v187, s[68:71], 0 offen
	v_add_nc_u32_e32 v187, s62, v50
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v187, 0x80000000, v187, s3
	s_clause 0x1
	buffer_load_u8 v192, v192, s[68:71], 0 offen
	buffer_load_u8 v194, v187, s[68:71], 0 offen
	v_add_nc_u32_e32 v187, s62, v51
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, vcc_lo, s36
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v187, 0x80000000, v187, s3
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s27, s89
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v195, v187, s[68:71], 0 offen
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(7)
	v_and_b16 v187.l, v189.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v187.h, v188.l, 15
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v187.l, v189.l, v187.l, s3
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s28, s89
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v187.h, v188.l, v187.h, s3
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s3, s29, s89
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(5)
	v_and_b16 v188.l, v191.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v188.h, v190.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v188.l, v191.l, v188.l, s3
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s30, s89
	v_add_nc_u32_e32 v191, s79, v170
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v188.h, v190.l, v188.h, s3
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s3, s31, s89
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(3)
	v_and_b16 v189.l, v193.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v189.l, v193.l, v189.l, s3
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s33, s89
	v_add_nc_u32_e32 v193, s79, v173
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(2)
	v_and_b16 v189.h, v192.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v190.l, v194.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v189.h, v192.l, v189.h, s3
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s34, s89
	v_add_nc_u32_e32 v192, s79, v171
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v190.l, v194.l, v190.l, s3
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s3, s35, s89
	v_add_nc_u32_e32 v194, s79, v172
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(0)
	v_and_b16 v190.h, v195.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v190.h, v195.l, v190.h, s3
	.loc	1 1497 70 is_stmt 1             ; ragged.py:1497:70
	s_and_b32 s3, s2, s26
	v_add_nc_u32_e32 v195, s79, v169
	.loc	1 1497 38 is_stmt 0             ; ragged.py:1497:38
	v_cndmask_b32_e64 v191, 0x80000000, v191, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s2, s25
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v192, 0x80000000, v192, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s2, s24
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v191, v191, s[72:75], 0 offen
	v_cndmask_b32_e64 v193, 0x80000000, v193, s3
	s_clause 0x1
	buffer_load_u8 v192, v192, s[72:75], 0 offen
	buffer_load_u8 v193, v193, s[72:75], 0 offen
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s2, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v194, 0x80000000, v194, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s2, s22
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v195, 0x80000000, v195, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s2, s21
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v194, v194, s[72:75], 0 offen
	v_cndmask_b32_e64 v196, 0x80000000, v196, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s2, s20
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v195, v195, s[72:75], 0 offen
	v_cndmask_b32_e64 v197, 0x80000000, v197, s3
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s3, s2, s19
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v196, v196, s[72:75], 0 offen
	v_cndmask_b32_e64 v198, 0x80000000, v198, s3
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s3, s90, v179
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v197, v197, s[72:75], 0 offen
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s19, s90, v180
	v_cmp_eq_u32_e64 s21, s90, v182
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v198, v198, s[72:75], 0 offen
	.loc	1 1498 38                       ; ragged.py:1498:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v174, v183
	ds_store_b8_d16_hi v174, v183 offset:128
	ds_store_b8 v174, v184 offset:256
	ds_store_b8_d16_hi v174, v184 offset:384
	ds_store_b8 v174, v185 offset:512
	ds_store_b8_d16_hi v174, v185 offset:640
	ds_store_b8 v174, v186 offset:768
	ds_store_b8 v174, v187 offset:1024
	ds_store_b8_d16_hi v174, v187 offset:1152
	ds_store_b8 v174, v188 offset:1280
	ds_store_b8_d16_hi v174, v188 offset:1408
	ds_store_b8 v174, v189 offset:1536
	ds_store_b8_d16_hi v174, v189 offset:1664
	ds_store_b8_d16_hi v151, v186
	ds_store_b8 v174, v190 offset:1792
	ds_store_b8_d16_hi v152, v190
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1500 35                       ; ragged.py:1500:35
	ds_load_u8 v183, v141 offset:448
	ds_load_u8 v184, v141 offset:384
	ds_load_u8 v185, v141 offset:320
	ds_load_u8 v186, v141 offset:256
	ds_load_u8 v187, v141 offset:480
	ds_load_u8 v188, v141 offset:416
	ds_load_u8 v189, v141 offset:352
	ds_load_u8 v190, v141 offset:288
	ds_load_u8 v199, v141 offset:192
	ds_load_u8 v200, v141 offset:128
	ds_load_u8 v201, v141 offset:64
	ds_load_u8 v202, v141 offset:224
	ds_load_u8 v203, v141 offset:160
	ds_load_u8 v204, v141 offset:96
	ds_load_u8 v205, v141
	ds_load_u8 v206, v141 offset:32
	ds_load_u8 v207, v141 offset:704
	ds_load_u8 v208, v141 offset:640
	ds_load_u8 v209, v141 offset:576
	ds_load_u8 v210, v141 offset:512
	ds_load_u8 v211, v141 offset:736
	ds_load_u8 v212, v141 offset:672
	ds_load_u8 v213, v141 offset:608
	ds_load_u8 v214, v141 offset:544
	ds_load_u8 v215, v141 offset:960
	ds_load_u8 v216, v141 offset:896
	ds_load_u8 v217, v141 offset:832
	ds_load_u8 v218, v141 offset:768
	ds_load_u8 v219, v141 offset:992
	ds_load_u8 v220, v141 offset:928
	ds_load_u8 v221, v141 offset:864
	ds_load_u8 v222, v141 offset:800
	ds_load_u8 v223, v141 offset:1216
	ds_load_u8 v224, v141 offset:1152
	ds_load_u8 v225, v141 offset:1088
	ds_load_u8 v226, v141 offset:1024
	ds_load_u8 v227, v141 offset:1248
	ds_load_u8 v228, v141 offset:1184
	ds_load_u8 v229, v141 offset:1120
	ds_load_u8 v230, v141 offset:1056
	ds_load_u8 v231, v141 offset:1472
	ds_load_u8 v232, v141 offset:1408
	ds_load_u8 v233, v141 offset:1344
	ds_load_u8 v234, v141 offset:1280
	ds_load_u8 v235, v141 offset:1504
	ds_load_u8 v236, v141 offset:1440
	ds_load_u8 v237, v141 offset:1376
	ds_load_u8 v238, v141 offset:1312
	ds_load_u8 v239, v141 offset:1728
	ds_load_u8 v240, v141 offset:1664
	ds_load_u8 v241, v141 offset:1600
	ds_load_u8 v242, v141 offset:1536
	ds_load_u8 v243, v141 offset:1760
	ds_load_u8 v244, v141 offset:1696
	ds_load_u8 v245, v141 offset:1632
	ds_load_u8 v246, v141 offset:1568
	ds_load_u8 v247, v141 offset:1984
	ds_load_u8 v248, v141 offset:1920
	ds_load_u8 v249, v141 offset:1856
	ds_load_u8 v250, v141 offset:1792
	ds_load_u8 v251, v141 offset:2016
	ds_load_u8 v252, v141 offset:1952
	ds_load_u8 v253, v141 offset:1888
	ds_load_u8 v254, v141 offset:1824
	.loc	1 1499 38                       ; ragged.py:1499:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v255, v[52:53]
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s3, s3, s89
	.loc	1 1495 60 is_stmt 0             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s20, s90, v181
	.loc	1 1499 66 is_stmt 1             ; ragged.py:1499:66
	s_waitcnt vmcnt(7)
	v_and_b16 v52.l, v191.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v52.h, v192.l, 15
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v52.l, v191.l, v52.l, s3
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s19, s89
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(5)
	v_and_b16 v53.l, v193.l, 15
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s19, s90, v177
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v52.h, v192.l, v52.h, s3
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s3, s21, s89
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_perm_b32 v177, v206, v204, 0xc0c0004
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v53.l, v193.l, v53.l, s3
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(4)
	v_and_b16 v53.h, v194.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_lshlrev_b16 v52.h, 8, v52.h
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s20, s89
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_lshlrev_b16 v53.l, 8, v53.l
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b16 v53.h, v194.l, v53.h, s3
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s3, s90, v178
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_or_b16 v179.l, v52.l, v52.h
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(3)
	v_and_b16 v52.l, v195.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v52.h, v196.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_or_b16 v179.h, v53.h, v53.l
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s3, s89
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_perm_b32 v53, v184, v183, 0xc0c0004
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v52.l, v195.l, v52.l, s3
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s3, s19, s89
	.loc	1 1495 60 is_stmt 0             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s19, s90, v175
	.loc	1 1499 38 is_stmt 1             ; ragged.py:1499:38
	v_cndmask_b16 v52.h, v196.l, v52.h, s3
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s3, s90, v176
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_lshlrev_b16 v52.l, 8, v52.l
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_perm_b32 v175, v205, v201, 0xc0c0004
	v_perm_b32 v176, v200, v199, 0xc0c0004
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s3, s3, s89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_or_b16 v178.h, v52.h, v52.l
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	s_waitcnt vmcnt(1)
	v_and_b16 v52.l, v197.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v52.h, v198.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v52.l, v197.l, v52.l, s3
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s19, s89
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v52.h, v198.l, v52.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v52.l, 8, v52.l
	v_or_b16 v178.l, v52.h, v52.l
	v_add_nc_u32_e32 v52, 0, v134
	ds_store_b64 v52, v[178:179]
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_perm_b32 v52, v186, v185, 0xc0c0004
	v_perm_b32 v178, v203, v202, 0xc0c0004
	.loc	1 1499 38                       ; ragged.py:1499:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_lshl_or_b32 v53, v53, 16, v52
	v_lshl_or_b32 v52, v176, 16, v175
	v_perm_b32 v175, v190, v189, 0xc0c0004
	v_perm_b32 v176, v188, v187, 0xc0c0004
	v_lshl_or_b32 v179, v178, 16, v177
	v_lshl_or_b32 v180, v176, 16, v175
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_add_nc_u32_e32 v175, 0, v132
	ds_load_2addr_stride64_b64 v[175:178], v175 offset1:2
	.loc	1 1500 35                       ; ragged.py:1500:35
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[175:176], v[52:53], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[177:178], v[52:53], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[175:176], v[179:180], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v52, v218, v217, 0xc0c0004
	v_perm_b32 v53, v216, v215, 0xc0c0004
	v_perm_b32 v175, v210, v209, 0xc0c0004
	v_perm_b32 v176, v208, v207, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[177:178], v[179:180], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v177, v214, v213, 0xc0c0004
	v_lshl_or_b32 v53, v53, 16, v52
	v_perm_b32 v178, v212, v211, 0xc0c0004
	v_lshl_or_b32 v52, v176, 16, v175
	v_perm_b32 v175, v222, v221, 0xc0c0004
	v_perm_b32 v176, v220, v219, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v179, v178, 16, v177
	v_lshl_or_b32 v180, v176, 16, v175
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_add_nc_u32_e32 v175, 0, v135
	ds_load_2addr_stride64_b64 v[175:178], v175 offset1:2
	.loc	1 1500 35                       ; ragged.py:1500:35
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[175:176], v[52:53], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[177:178], v[52:53], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[175:176], v[179:180], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v52, v234, v233, 0xc0c0004
	v_perm_b32 v53, v232, v231, 0xc0c0004
	v_perm_b32 v175, v226, v225, 0xc0c0004
	v_perm_b32 v176, v224, v223, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[177:178], v[179:180], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v177, v230, v229, 0xc0c0004
	v_lshl_or_b32 v53, v53, 16, v52
	v_perm_b32 v178, v228, v227, 0xc0c0004
	v_lshl_or_b32 v52, v176, 16, v175
	v_perm_b32 v175, v238, v237, 0xc0c0004
	v_perm_b32 v176, v236, v235, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v179, v178, 16, v177
	v_lshl_or_b32 v180, v176, 16, v175
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_add_nc_u32_e32 v175, 0, v136
	ds_load_2addr_stride64_b64 v[175:178], v175 offset1:2
	.loc	1 1500 35                       ; ragged.py:1500:35
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[175:176], v[52:53], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[177:178], v[52:53], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[175:176], v[179:180], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v52, v250, v249, 0xc0c0004
	v_perm_b32 v53, v248, v247, 0xc0c0004
	v_perm_b32 v175, v242, v241, 0xc0c0004
	v_perm_b32 v176, v240, v239, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[177:178], v[179:180], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v177, v246, v245, 0xc0c0004
	v_lshl_or_b32 v53, v53, 16, v52
	v_perm_b32 v178, v244, v243, 0xc0c0004
	v_lshl_or_b32 v52, v176, 16, v175
	v_perm_b32 v175, v254, v253, 0xc0c0004
	v_perm_b32 v176, v252, v251, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v179, v178, 16, v177
	v_lshl_or_b32 v180, v176, 16, v175
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_add_nc_u32_e32 v175, 0, v137
	ds_load_2addr_stride64_b64 v[175:178], v175 offset1:2
	.loc	1 1500 35                       ; ragged.py:1500:35
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[175:176], v[52:53], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[177:178], v[52:53], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[175:176], v[179:180], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[177:178], v[179:180], v[9:16] neg_lo:[1,1,0]
	s_branch .LBB0_2
.LBB0_8:                                ; %._crit_edge39
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_bfe_u32 v1, v138, 16, 1
	v_bfe_u32 v6, v129, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v138, v138
	v_bfe_u32 v3, v133, 16, 1
	v_bfe_u32 v5, v130, 16, 1
	v_add3_u32 v1, v138, v1, 0x7fff
	v_add3_u32 v6, v129, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v129, v129
	v_bfe_u32 v10, v123, 16, 1
	v_mov_b16_e32 v4.h, 0
	v_add3_u32 v3, v133, v3, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v133, v133
	v_add3_u32 v5, v130, v5, 0x7fff
	v_cmp_o_f32_e64 s0, v130, v130
	v_bfe_u32 v8, v125, 16, 1
	v_cndmask_b16 v6.l, 0x7fff, v6.h, s1
	v_bfe_u32 v9, v124, 16, 1
	v_add3_u32 v10, v123, v10, 0x7fff
	v_cmp_o_f32_e64 s1, v123, v123
	v_bfe_u32 v14, v112, 16, 1
	v_mov_b16_e32 v4.l, v100.h
	v_cndmask_b16 v3.l, 0x7fff, v3.h, vcc_lo
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s0
	v_add3_u32 v8, v125, v8, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v125, v125
	v_add3_u32 v9, v124, v9, 0x7fff
	v_cmp_o_f32_e64 s0, v124, v124
	v_bfe_u32 v12, v114, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s1
	v_bfe_u32 v13, v113, 16, 1
	v_add3_u32 v14, v112, v14, 0x7fff
	v_cmp_o_f32_e64 s1, v112, v112
	v_mov_b16_e32 v19.h, v4.h
	v_and_b32_e32 v4, 1, v4
	v_bfe_u32 v7, v128, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v8.h, vcc_lo
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s0
	v_add3_u32 v12, v114, v12, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v114, v114
	v_add3_u32 v13, v113, v13, 0x7fff
	v_cmp_o_f32_e64 s0, v113, v113
	v_bfe_u32 v16, v110, 16, 1
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s1
	v_bfe_u32 v17, v109, 16, 1
	v_mov_b16_e32 v19.l, v88.h
	v_add3_u32 v4, v100, v4, 0x7fff
	v_cmp_o_f32_e64 s1, v100, v100
	v_bfe_u32 v21, v94, 16, 1
	v_add3_u32 v7, v128, v7, 0x7fff
	v_cmp_o_f32_e64 s2, v128, v128
	v_bfe_u32 v11, v120, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v12.h, vcc_lo
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s0
	v_add3_u32 v16, v110, v16, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v110, v110
	v_add3_u32 v17, v109, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v109, v109
	v_and_b32_e32 v19, 1, v19
	v_cndmask_b16 v20.h, 0x7fff, v4.h, s1
	v_add3_u32 v21, v94, v21, 0x7fff
	v_cmp_o_f32_e64 s1, v94, v94
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s2
	v_add3_u32 v11, v120, v11, 0x7fff
	v_cmp_o_f32_e64 s2, v120, v120
	v_bfe_u32 v15, v111, 16, 1
	v_cndmask_b16 v4.l, 0x7fff, v16.h, vcc_lo
	v_cndmask_b16 v16.l, 0x7fff, v17.h, s0
	v_add3_u32 v17, v88, v19, 0x7fff
	v_bfe_u32 v19, v98, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v88, v88
	v_cndmask_b16 v3.h, 0x7fff, v21.h, s1
	v_bfe_u32 v21, v83, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s2
	v_add3_u32 v15, v111, v15, 0x7fff
	v_cmp_o_f32_e64 s2, v111, v111
	v_bfe_u32 v22, v86, 16, 1
	v_add3_u32 v19, v98, v19, 0x7fff
	v_cmp_o_f32_e64 s0, v98, v98
	v_cndmask_b16 v20.l, 0x7fff, v17.h, vcc_lo
	v_bfe_u32 v17, v85, 16, 1
	v_add3_u32 v21, v83, v21, 0x7fff
	v_cmp_o_f32_e64 s1, v83, v83
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s2
	v_add3_u32 v22, v86, v22, 0x7fff
	v_cmp_o_f32_e64 s2, v86, v86
	v_cndmask_b16 v1.h, 0x7fff, v19.h, s0
	v_bfe_u32 v19, v84, 16, 1
	v_add3_u32 v17, v85, v17, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v85, v85
	v_cndmask_b16 v8.h, 0x7fff, v21.h, s1
	v_bfe_u32 v21, v63, 16, 1
	v_cndmask_b16 v5.h, 0x7fff, v22.h, s2
	v_bfe_u32 v22, v80, 16, 1
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_and_b32_e32 v18, 31, v0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v19, v84, v19, 0x7fff
	v_cmp_o_f32_e64 s0, v84, v84
	v_cndmask_b16 v6.h, 0x7fff, v17.h, vcc_lo
	v_bfe_u32 v17, v66, 16, 1
	v_add3_u32 v21, v63, v21, 0x7fff
	v_cmp_o_f32_e64 s1, v63, v63
	v_add3_u32 v22, v80, v22, 0x7fff
	v_cmp_o_f32_e64 s2, v80, v80
	v_cndmask_b16 v7.h, 0x7fff, v19.h, s0
	v_bfe_u32 v19, v64, 16, 1
	v_add3_u32 v17, v66, v17, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	v_cndmask_b16 v12.h, 0x7fff, v21.h, s1
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshlrev_b32_e32 v21, 2, v18
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v9.h, 0x7fff, v22.h, s2
	v_bfe_u32 v22, v62, 16, 1
	v_add3_u32 v19, v64, v19, 0x7fff
	v_cmp_o_f32_e64 s0, v64, v64
	v_cndmask_b16 v10.h, 0x7fff, v17.h, vcc_lo
	v_bfe_u32 v17, v60, 16, 1
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshl_or_b32 v21, v55, 8, v21
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v22, v62, v22, 0x7fff
	v_cmp_o_f32_e64 s2, v62, v62
	v_cndmask_b16 v11.h, 0x7fff, v19.h, s0
	v_bfe_u32 v19, v59, 16, 1
	v_add3_u32 v17, v60, v17, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v60, v60
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_xor_b32_e32 v21, v21, v57
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_cndmask_b16 v13.h, 0x7fff, v22.h, s2
	v_bfe_u32 v22, v58, 16, 1
	v_add3_u32 v19, v59, v19, 0x7fff
	v_cmp_o_f32_e64 s0, v59, v59
	v_cndmask_b16 v14.h, 0x7fff, v17.h, vcc_lo
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_lshl_or_b32 v17, v56, 1, v21
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_bfe_u32 v23, v61, 16, 1
	v_add3_u32 v22, v58, v22, 0x7fff
	v_cmp_o_f32_e64 s1, v58, v58
	v_cndmask_b16 v15.h, 0x7fff, v19.h, s0
	.loc	1 1534 34                       ; ragged.py:1534:34
	v_add_nc_u32_e32 v19, 0, v17
	v_xad_u32 v26, 0x1040, v17, 0
	.loc	1 1532 33                       ; ragged.py:1532:33
	v_add3_u32 v23, v61, v23, 0x7fff
	v_cmp_o_f32_e64 s2, v61, v61
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
	v_lshlrev_b32_e32 v3, 2, v55
	v_xad_u32 v1, 0x104c, v17, 0
	ds_store_b32 v23, v5
	ds_store_b32 v1, v13
	v_lshrrev_b32_e32 v1, 3, v2
	v_lshl_or_b32 v2, v2, 3, v3
	v_cmp_eq_u32_e32 vcc_lo, 0, v54
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
	s_lshr_b32 s0, s81, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s0, s81, s0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v17, s83, v0
	.loc	1 1536 31                       ; ragged.py:1536:31
	v_lshl_or_b32 v0, s82, 5, v18
	.loc	1 1538 37                       ; ragged.py:1538:37
	s_ashr_i32 s1, s0, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s80, v17
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
	v_add_nc_u32_e32 v18, s64, v17
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
	v_add_co_u32 v18, s0, s66, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s67, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_10:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 4, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s80, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_12
; %bb.11:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s64, v18
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
	v_add_co_u32 v18, s0, s66, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s67, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_12:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 8, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s80, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_14
; %bb.13:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s64, v18
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
	v_add_co_u32 v18, s0, s66, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s67, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_14:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 12, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s80, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_16
; %bb.15:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s64, v18
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
	v_add_co_u32 v18, s0, s66, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s67, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_16:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s80, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_18
; %bb.17:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s64, v18
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
	v_add_co_u32 v18, s0, s66, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s67, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_18:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 20, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s80, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_20
; %bb.19:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s64, v18
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
	v_add_co_u32 v18, s0, s66, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s67, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_20:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 24, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s80, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_22
; %bb.21:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s64, v18
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
	v_add_co_u32 v18, s0, s66, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s67, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_22:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 28, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s80, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_24
; %bb.23:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s64, v18
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
	v_add_co_u32 v18, s0, s66, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s67, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[18:19], v20, off
.LBB0_24:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v18, 32, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s80, v18
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_26
; %bb.25:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v18, s64, v18
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
	v_add_co_u32 v18, s0, s66, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s67, v19, s0
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
	v_cmp_gt_i32_e64 s0, s80, v13
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_28
; %bb.27:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v13, s64, v13
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
	v_add_co_u32 v18, s0, s66, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s67, v19, s0
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
	v_cmp_gt_i32_e64 s0, s80, v9
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_30
; %bb.29:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v9, s64, v9
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
	v_add_co_u32 v18, s0, s66, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s67, v19, s0
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
	v_cmp_gt_i32_e64 s0, s80, v5
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_32
; %bb.31:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v5, s64, v5
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
	v_add_co_u32 v18, s0, s66, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s67, v19, s0
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
	v_cmp_gt_i32_e64 s0, s80, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_34
; %bb.33:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s64, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[18:19], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v14, v16, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v13, s0, s66, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v14, null, s67, v19, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[13:14], v1, off
.LBB0_34:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 52, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s80, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_36
; %bb.35:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s64, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[13:14], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v10, v12, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v14, 31, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[13:14], 2, v[13:14]
	v_add_co_u32 v9, s0, s66, v13
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s67, v14, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[9:10], v1, off
.LBB0_36:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 56, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s80, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_38
; %bb.37:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s64, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[9:10], null, v1, s1, v[0:1]
	.loc	1 1535 30                       ; ragged.py:1535:30
	v_perm_b32 v1, v6, v8, 0x3020706
	.loc	1 1543 26                       ; ragged.py:1543:26
	v_ashrrev_i32_e32 v10, 31, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	v_add_co_u32 v5, s0, s66, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, s67, v10, s0
	.loc	1 1543 17 is_stmt 0             ; ragged.py:1543:17
	global_store_b32 v[5:6], v1, off
.LBB0_38:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v1, 60, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s80, v1
	.loc	1 1542 33                       ; ragged.py:1542:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1543 17                       ; ragged.py:1543:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_40
; %bb.39:
	.loc	1 1538 21                       ; ragged.py:1538:21
	v_add_nc_u32_e32 v1, s64, v1
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
	v_add_co_u32 v0, vcc_lo, s66, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s67, v1, vcc_lo
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
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc64_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 93
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc64_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc64_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc64_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc64_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc64_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.numbered_sgpr, 93
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc64_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc64_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc64_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc64_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc64_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc64_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc64_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11972
; TotalNumSgprs: 95
; NumVgprs: 256
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 95
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc64_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc64_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc64_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     95
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc64_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
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
