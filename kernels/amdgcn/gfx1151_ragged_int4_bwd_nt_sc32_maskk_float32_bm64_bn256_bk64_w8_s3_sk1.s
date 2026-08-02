	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b128 s[28:31], s[0:1], 0x20
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
	v_dual_mov_b32 v129, 0 :: v_dual_and_b32 v116, 15, v0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s35, 0xff
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
	s_lshr_b32 s7, s7, 24
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_add_i32 s4, s4, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s5, s7
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_ashr_i32 s36, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s5, s5, 8
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s5, s36
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_abs_i32 s6, s4
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s7, v1
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	s_mul_f32 s7, s7, 0x4f7ffffe
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s7, s7
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	s_mul_i32 s8, s8, s7
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	s_mul_hi_u32 s8, s7, s8
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	s_add_i32 s7, s7, s8
	s_xor_b32 s8, s2, s4
	s_mul_hi_u32 s7, s9, s7
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s10, s7, s6
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s7, 1
	s_sub_i32 s11, s9, s6
	s_cmp_ge_u32 s9, s6
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	s_cselect_b32 s7, s10, s7
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s7, 1
	s_cmp_ge_u32 s9, s6
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	s_cselect_b32 s6, s10, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s7, s5
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s6, s6, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s9, s7
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s6, s6, s8
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s8, 0, s7
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s6, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s4, s2, s4
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s10, s4
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_mov_b32_e32 v137, 0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s9, v1
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_and_b32_e32 v134, 0x70, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s8, s8, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s9, s8
	s_add_i32 s9, s9, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s10, s9
	s_xor_b32 s9, s4, s5
	s_mul_i32 s11, s8, s7
	s_ashr_i32 s37, s9, 31
	s_sub_i32 s9, s10, s11
	s_add_i32 s10, s8, 1
	s_sub_i32 s11, s9, s7
	s_cmp_ge_u32 s9, s7
	s_cselect_b32 s8, s10, s8
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s8, 1
	s_cmp_ge_u32 s9, s7
	s_cselect_b32 s7, s10, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_xor_b32 s38, s7, s37
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s7, s6, 31
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s8, s38, s37
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[10:11], s[6:7], 2
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s9, s8, s5
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s8, s8, 6
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s4, s4, s9
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v2, s8, v116
	.loc	1 1310 18                       ; ragged.py:1310:18
	s_lshl_b32 s16, s4, 8
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_add_u32 s10, s28, s10
	s_addc_u32 s11, s29, s11
	.loc	1 1466 43                       ; ragged.py:1466:43
	s_mul_i32 s7, s6, s34
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s39, s[10:11], 0x0
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v1, 16, v2
	v_or_b32_e32 v3, 32, v2
	v_or_b32_e32 v4, 48, v2
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s4, s34, v2
	s_add_i32 s17, s8, s7
	v_cmp_gt_i32_e64 s19, s34, v1
	v_cmp_gt_i32_e64 s12, s34, v3
	s_mov_b32 s7, 0
	v_cmp_gt_i32_e32 vcc_lo, s34, v4
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s9, s39, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_lt_i32 s9, 2
	s_cbranch_scc1 .LBB0_8
; %bb.1:                                ; %.lr.ph8
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x38
	s_load_b256 s[20:27], s[0:1], 0x0
	.loc	1 1309 36 is_stmt 1             ; ragged.py:1309:36
	v_lshrrev_b32_e32 v1, 2, v0
	v_dual_mov_b32 v137, 0 :: v_dual_lshlrev_b32 v2, 2, v0
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s0, s9, 31
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_lshr_b32 s1, s39, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v4, s8, v1
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_add_i32 s9, s9, s0
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_add_i32 s0, s39, s1
	v_dual_mov_b32 v132, 0 :: v_dual_and_b32 v69, 12, v2
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s1, s34, v4
	v_bfe_i32 v4, v0, 5, 1
	v_dual_mov_b32 v136, 0 :: v_dual_lshlrev_b32 v3, 4, v0
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v5, s17, v1
	v_dual_mov_b32 v135, 0 :: v_dual_and_b32 v2, 0x37c, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v133, 0 :: v_dual_and_b32 v4, 0x88, v4
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[70:71], null, s14, v1, v[69:70]
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v1, s17, v116
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s13, s3, 4
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_ashr_i32 s18, s9, 1
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_ashr_i32 s28, s0, 1
	s_and_b32 s9, s21, 0xffff
	s_and_b32 s21, s23, 0xffff
	v_dual_mov_b32 v128, 0 :: v_dual_and_b32 v3, 0x70, v3
	v_bfe_i32 v6, v0, 3, 1
	v_xor_b32_e32 v141, v4, v2
	s_bitcmp1_b32 s39, 0
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v2, 16, v1
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_mul_i32 s36, s36, s6
	s_mul_i32 s3, s35, s6
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s33, s6, s15
	s_cselect_b32 s34, -1, 0
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_sub_i32 s6, s37, s36
	v_and_or_b32 v139, 0x88, v6, v3
	s_sub_i32 s6, s6, s38
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v3, 32, v1
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v4, 48, v1
	v_mul_lo_u32 v152, v1, s15
	v_mul_lo_u32 v153, v2, s15
	v_dual_mov_b32 v114, 0 :: v_dual_and_b32 v1, 0xf0, v0
	v_dual_mov_b32 v123, 0 :: v_dual_lshlrev_b32 v2, 5, v0
	s_mul_i32 s5, s5, s6
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v138, s16, v0
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s5, s5, 8
	v_mul_lo_u32 v154, v3, s15
	v_mul_lo_u32 v155, v4, s15
	v_dual_mov_b32 v112, 0 :: v_dual_lshlrev_b32 v3, 2, v1
	v_dual_mov_b32 v121, 0 :: v_dual_lshlrev_b32 v4, 1, v0
	v_dual_mov_b32 v119, 0 :: v_dual_and_b32 v2, 32, v2
	s_add_i32 s5, s5, s3
	s_lshl_b32 s2, s2, 8
	v_mul_lo_u32 v140, v138, s14
	v_add3_u32 v6, s5, s2, v0
	v_dual_mov_b32 v117, 0 :: v_dual_and_b32 v4, 28, v4
	v_add3_u32 v2, 0, v3, v2
	v_dual_mov_b32 v110, 0 :: v_dual_lshlrev_b32 v1, 1, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v156, s14, v6
	v_mad_u64_u32 v[71:72], null, v5, s14, v[69:70]
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s35, v138
	v_xor_b32_e32 v142, 8, v139
	v_or_b32_e32 v143, 0x300, v0
	v_or_b32_e32 v144, 0x700, v0
	v_or_b32_e32 v145, 0xb00, v0
	v_or_b32_e32 v146, 0xf00, v0
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v147, 0, v134
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v148, 12, v140
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v149, 13, v140
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v150, 14, v140
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v151, 15, v140
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v157, v2, v4
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v158, 0, v1
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v72, 0
	v_mov_b32_e32 v77, 0
	v_mov_b32_e32 v75, 0
	v_mov_b32_e32 v73, 0
	s_add_i32 s40, s18, -1
	.loc	1 1468 43                       ; ragged.py:1468:43
	s_mul_i32 s29, s3, s14
	s_mov_b32 s8, s20
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s20, s22
	s_mul_i32 s41, s17, s14
	s_and_b32 s25, s25, 0xffff
	s_and_b32 s37, s27, 0xffff
	s_mov_b32 s36, s26
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshr_b32 s14, s40, 4
	s_mov_b32 s2, 0
	s_branch .LBB0_3
.LBB0_2:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v65, v152, s7, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s2, s7, s33
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v66, v153, s7, 1
	v_add_lshl_u32 v67, v154, s7, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s2, s2, s35
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v68, v155, s7, 1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v159, v138, s2, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v65, 0x80000000, v65, s4
	v_cndmask_b32_e64 v66, 0x80000000, v66, s19
	v_cndmask_b32_e64 v67, 0x80000000, v67, s12
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e64 v159, 0x80000000, v159, s0
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x3
	buffer_load_u16 v65, v65, s[24:27], 0 offen
	buffer_load_u16 v66, v66, s[24:27], 0 offen
	buffer_load_u16 v67, v67, s[24:27], 0 offen
	buffer_load_u16 v68, v68, s[24:27], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	buffer_load_u16 v159, v159, s[36:39], 0 offen
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
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
	v_cvt_f32_i32_e32 v160, v1
	v_cvt_f32_i32_e32 v161, v2
	v_cvt_f32_i32_e32 v162, v3
	v_cvt_f32_i32_e32 v163, v4
	v_cvt_f32_i32_e32 v164, v5
	v_cvt_f32_i32_e32 v165, v6
	v_cvt_f32_i32_e32 v166, v7
	v_cvt_f32_i32_e32 v167, v8
	.loc	1 1524 21                       ; ragged.py:1524:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s3, s7, 1
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v71, 16, v71
	s_lshl_b32 s2, s3, 4
	s_cmp_lg_u32 s7, s14
	s_mov_b32 s7, s3
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v1, 16, v65
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v2, 16, v66
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v3, 16, v67
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v65, 16, v68
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v61, v61, v1 :: v_dual_lshlrev_b32 v4, 16, v159
	v_dual_mul_f32 v57, v57, v1 :: v_dual_add_nc_u32 v156, 16, v156
	v_mul_f32_e32 v58, v58, v1
	v_mul_f32_e32 v59, v59, v1
	v_mul_f32_e32 v60, v60, v1
	v_dual_mul_f32 v62, v62, v1 :: v_dual_mul_f32 v41, v41, v2
	v_dual_mul_f32 v63, v63, v1 :: v_dual_mul_f32 v42, v42, v2
	v_dual_mul_f32 v64, v64, v1 :: v_dual_mul_f32 v43, v43, v2
	v_dual_mul_f32 v49, v49, v1 :: v_dual_mul_f32 v44, v44, v2
	v_dual_mul_f32 v50, v50, v1 :: v_dual_mul_f32 v45, v45, v2
	v_dual_mul_f32 v51, v51, v1 :: v_dual_mul_f32 v46, v46, v2
	v_dual_mul_f32 v52, v52, v1 :: v_dual_mul_f32 v47, v47, v2
	v_dual_mul_f32 v53, v53, v1 :: v_dual_mul_f32 v48, v48, v2
	v_dual_mul_f32 v54, v54, v1 :: v_dual_mul_f32 v33, v33, v2
	v_dual_mul_f32 v55, v55, v1 :: v_dual_mul_f32 v34, v34, v2
	v_dual_mul_f32 v56, v56, v1 :: v_dual_mul_f32 v35, v35, v2
	v_dual_mul_f32 v36, v36, v2 :: v_dual_mul_f32 v25, v25, v3
	v_dual_mul_f32 v37, v37, v2 :: v_dual_mul_f32 v26, v26, v3
	v_dual_mul_f32 v38, v38, v2 :: v_dual_mul_f32 v27, v27, v3
	v_dual_mul_f32 v39, v39, v2 :: v_dual_mul_f32 v28, v28, v3
	v_dual_mul_f32 v40, v40, v2 :: v_dual_mul_f32 v29, v29, v3
	v_dual_mul_f32 v30, v30, v3 :: v_dual_mul_f32 v159, v12, v65
	v_dual_mul_f32 v31, v31, v3 :: v_dual_mul_f32 v66, v9, v65
	v_dual_mul_f32 v32, v32, v3 :: v_dual_mul_f32 v67, v10, v65
	v_dual_mul_f32 v17, v17, v3 :: v_dual_mul_f32 v68, v11, v65
	v_dual_mul_f32 v18, v18, v3 :: v_dual_mul_f32 v171, v16, v65
	v_dual_mul_f32 v19, v19, v3 :: v_dual_mul_f32 v168, v13, v65
	v_dual_mul_f32 v20, v20, v3 :: v_dual_mul_f32 v169, v14, v65
	v_dual_mul_f32 v21, v21, v3 :: v_dual_mul_f32 v170, v15, v65
	v_dual_mul_f32 v22, v22, v3 :: v_dual_mul_f32 v161, v161, v65
	v_dual_mul_f32 v23, v23, v3 :: v_dual_mul_f32 v160, v160, v65
	v_dual_mul_f32 v24, v24, v3 :: v_dual_mul_f32 v163, v163, v65
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_store_b32 v157, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v158
	ds_load_b128 v[5:8], v158 offset:16
	ds_load_b128 v[9:12], v158 offset:512
	ds_load_b128 v[13:16], v158 offset:528
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v162, v162, v65
	v_mul_f32_e32 v164, v164, v65
	v_mul_f32_e32 v165, v165, v65
	v_mul_f32_e32 v166, v166, v65
	v_mul_f32_e32 v65, v167, v65
	.loc	1 1525 17                       ; ragged.py:1525:17
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v137, v57, v1 :: v_dual_fmac_f32 v130, v63, v7
	v_dual_fmac_f32 v136, v58, v2 :: v_dual_fmac_f32 v135, v59, v3
	v_dual_fmac_f32 v133, v60, v4 :: v_dual_fmac_f32 v132, v61, v5
	v_fmac_f32_e32 v129, v64, v8
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v131, v62, v6 :: v_dual_fmac_f32 v128, v49, v9
	v_dual_fmac_f32 v127, v50, v10 :: v_dual_fmac_f32 v126, v51, v11
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v125, v52, v12 :: v_dual_fmac_f32 v124, v53, v13
	v_dual_fmac_f32 v123, v54, v14 :: v_dual_fmac_f32 v122, v55, v15
	v_dual_fmac_f32 v121, v56, v16 :: v_dual_fmac_f32 v120, v41, v1
	v_dual_fmac_f32 v119, v42, v2 :: v_dual_fmac_f32 v118, v43, v3
	v_fmac_f32_e32 v117, v44, v4
	v_dual_fmac_f32 v115, v45, v5 :: v_dual_fmac_f32 v112, v48, v8
	v_dual_fmac_f32 v114, v46, v6 :: v_dual_fmac_f32 v113, v47, v7
	v_dual_fmac_f32 v110, v34, v10 :: v_dual_fmac_f32 v111, v33, v9
	v_dual_fmac_f32 v108, v36, v12 :: v_dual_fmac_f32 v109, v35, v11
	v_dual_fmac_f32 v106, v38, v14 :: v_dual_fmac_f32 v107, v37, v13
	v_dual_fmac_f32 v104, v40, v16 :: v_dual_fmac_f32 v105, v39, v15
	v_dual_fmac_f32 v102, v26, v2 :: v_dual_fmac_f32 v103, v25, v1
	v_dual_fmac_f32 v100, v28, v4 :: v_dual_fmac_f32 v101, v27, v3
	v_dual_fmac_f32 v98, v30, v6 :: v_dual_fmac_f32 v99, v29, v5
	v_dual_fmac_f32 v96, v32, v8 :: v_dual_fmac_f32 v97, v31, v7
	v_dual_fmac_f32 v94, v18, v10 :: v_dual_fmac_f32 v95, v17, v9
	v_dual_fmac_f32 v92, v20, v12 :: v_dual_fmac_f32 v93, v19, v11
	v_dual_fmac_f32 v90, v22, v14 :: v_dual_fmac_f32 v91, v21, v13
	v_dual_fmac_f32 v88, v24, v16 :: v_dual_fmac_f32 v89, v23, v15
	v_dual_fmac_f32 v82, v169, v6 :: v_dual_fmac_f32 v87, v66, v1
	v_dual_fmac_f32 v86, v67, v2 :: v_dual_fmac_f32 v85, v68, v3
	v_dual_fmac_f32 v84, v159, v4 :: v_dual_fmac_f32 v83, v168, v5
	v_dual_fmac_f32 v80, v171, v8 :: v_dual_fmac_f32 v81, v170, v7
	v_dual_fmac_f32 v78, v161, v10 :: v_dual_fmac_f32 v79, v160, v9
	v_dual_fmac_f32 v76, v163, v12 :: v_dual_fmac_f32 v77, v162, v11
	v_dual_fmac_f32 v74, v165, v14 :: v_dual_fmac_f32 v75, v164, v13
	v_dual_fmac_f32 v72, v65, v16 :: v_dual_fmac_f32 v73, v166, v15
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_8
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 1456 54                       ; ragged.py:1456:54
	s_sub_i32 s3, s28, s2
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v7, 0
	.loc	1 1454 45                       ; ragged.py:1454:45
	v_med3_i32 v1, s3, 0, 16
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v3, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1458 41                       ; ragged.py:1458:41
	v_readfirstlane_b32 s3, v1
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
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	s_and_b32 s5, s3, 16
	s_mov_b32 s3, s13
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_ge_i32 s13, s5
	s_cbranch_scc1 .LBB0_6
; %bb.4:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v57, 0
	s_mov_b32 s3, s13
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v58, v57
	v_mov_b32_e32 v59, v57
	v_mov_b32_e32 v60, v57
	v_mov_b32_e32 v61, v57
	v_mov_b32_e32 v62, v57
	v_mov_b32_e32 v63, v57
	v_mov_b32_e32 v64, v57
	v_mov_b32_e32 v49, v57
	v_mov_b32_e32 v50, v57
	v_mov_b32_e32 v51, v57
	v_mov_b32_e32 v52, v57
	v_mov_b32_e32 v53, v57
	v_mov_b32_e32 v54, v57
	v_mov_b32_e32 v55, v57
	v_mov_b32_e32 v56, v57
	v_mov_b32_e32 v41, v57
	v_mov_b32_e32 v42, v57
	v_mov_b32_e32 v43, v57
	v_mov_b32_e32 v44, v57
	v_mov_b32_e32 v45, v57
	v_mov_b32_e32 v46, v57
	v_mov_b32_e32 v47, v57
	v_mov_b32_e32 v48, v57
	v_mov_b32_e32 v33, v57
	v_mov_b32_e32 v34, v57
	v_mov_b32_e32 v35, v57
	v_mov_b32_e32 v36, v57
	v_mov_b32_e32 v37, v57
	v_mov_b32_e32 v38, v57
	v_mov_b32_e32 v39, v57
	v_mov_b32_e32 v40, v57
	v_mov_b32_e32 v25, v57
	v_mov_b32_e32 v26, v57
	v_mov_b32_e32 v27, v57
	v_mov_b32_e32 v28, v57
	v_mov_b32_e32 v29, v57
	v_mov_b32_e32 v30, v57
	v_mov_b32_e32 v31, v57
	v_mov_b32_e32 v32, v57
	v_mov_b32_e32 v17, v57
	v_mov_b32_e32 v18, v57
	v_mov_b32_e32 v19, v57
	v_mov_b32_e32 v20, v57
	v_mov_b32_e32 v21, v57
	v_mov_b32_e32 v22, v57
	v_mov_b32_e32 v23, v57
	v_mov_b32_e32 v24, v57
	v_mov_b32_e32 v9, v57
	v_mov_b32_e32 v10, v57
	v_mov_b32_e32 v11, v57
	v_mov_b32_e32 v12, v57
	v_mov_b32_e32 v13, v57
	v_mov_b32_e32 v14, v57
	v_mov_b32_e32 v15, v57
	v_mov_b32_e32 v16, v57
	v_mov_b32_e32 v1, v57
	v_mov_b32_e32 v2, v57
	v_mov_b32_e32 v3, v57
	v_mov_b32_e32 v4, v57
	v_mov_b32_e32 v5, v57
	v_mov_b32_e32 v6, v57
	v_mov_b32_e32 v7, v57
	v_mov_b32_e32 v8, v57
.LBB0_5:                                ; %.lr.ph
                                        ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1472 38 is_stmt 1             ; ragged.py:1472:38
	v_add_nc_u32_e32 v65, s3, v156
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_add_nc_u32_e32 v66, s3, v71
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_mov_b32 s22, s10
	s_mov_b32 s23, s11
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_add_nc_u32_e32 v160, 0, v141
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s0
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_cndmask_b32_e64 v159, 0x80000000, v66, s1
	v_add_nc_u32_e32 v163, 0, v139
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_add_nc_u32_e32 v175, 0, v0
	v_add_nc_u32_e32 v180, v147, v116
	buffer_load_b128 v[65:68], v65, s[20:23], 0 offen
	.loc	1 1471 38                       ; ragged.py:1471:38
	buffer_load_b32 v159, v159, s[8:11], 0 offen
	v_add_nc_u32_e32 v171, 0, v142
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_add_nc_u32_e32 v176, 0, v143
	v_add_nc_u32_e32 v177, 0, v144
	v_add_nc_u32_e32 v178, 0, v145
	v_add_nc_u32_e32 v179, 0, v146
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1483 25                       ; ragged.py:1483:25
	s_add_i32 s3, s3, 16
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_lt_i32 s3, s5
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v181, 8, v65
	v_lshrrev_b32_e32 v182, 24, v65
	v_lshrrev_b32_e32 v183, 8, v66
	v_lshrrev_b32_e32 v184, 24, v66
	v_lshrrev_b32_e32 v185, 8, v67
	v_lshrrev_b32_e32 v186, 24, v67
	v_lshrrev_b32_e32 v187, 8, v68
	v_lshrrev_b32_e32 v188, 24, v68
	.loc	1 1471 38                       ; ragged.py:1471:38
	s_waitcnt vmcnt(0)
	ds_store_b32 v160, v159
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[159:162], v163 offset1:32
	ds_load_2addr_b64 v[163:166], v163 offset0:64 offset1:96
	ds_load_2addr_b64 v[167:170], v171 offset1:32
	ds_load_2addr_b64 v[171:174], v171 offset0:64 offset1:96
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8_d16_hi v175, v67 offset:2560
	ds_store_b8 v175, v68 offset:3072
	ds_store_b8 v175, v65
	ds_store_b8 v175, v181 offset:256
	ds_store_b8_d16_hi v175, v65 offset:512
	ds_store_b8 v175, v66 offset:1024
	ds_store_b8 v175, v183 offset:1280
	ds_store_b8_d16_hi v175, v66 offset:1536
	ds_store_b8 v175, v67 offset:2048
	ds_store_b8 v175, v185 offset:2304
	ds_store_b8 v175, v187 offset:3328
	ds_store_b8 v176, v182
	ds_store_b8 v177, v184
	ds_store_b8 v178, v186
	ds_store_b8_d16_hi v175, v68 offset:3584
	ds_store_b8 v179, v188
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1473 35                       ; ragged.py:1473:35
	ds_load_u8 v65, v180 offset:3328
	ds_load_u8 v66, v180 offset:3072
	ds_load_u8 v67, v180 offset:3840
	ds_load_u8 v68, v180 offset:3584
	ds_load_u8 v175, v180 offset:2304
	ds_load_u8 v176, v180 offset:2048
	ds_load_u8 v177, v180 offset:2816
	ds_load_u8 v178, v180 offset:2560
	ds_load_u8 v179, v180 offset:1280
	ds_load_u8 v181, v180 offset:1024
	ds_load_u8 v182, v180 offset:1792
	ds_load_u8 v183, v180 offset:1536
	ds_load_u8 v184, v180 offset:1920
	ds_load_u8 v185, v180 offset:1664
	ds_load_u8 v186, v180 offset:1408
	ds_load_u8 v187, v180 offset:1152
	ds_load_u8 v188, v180 offset:256
	ds_load_u8 v189, v180
	ds_load_u8 v190, v180 offset:768
	ds_load_u8 v191, v180 offset:512
	ds_load_u8 v192, v180 offset:896
	ds_load_u8 v193, v180 offset:640
	ds_load_u8 v194, v180 offset:384
	ds_load_u8 v195, v180 offset:128
	ds_load_u8 v196, v180 offset:3968
	ds_load_u8 v197, v180 offset:3712
	ds_load_u8 v198, v180 offset:3456
	ds_load_u8 v199, v180 offset:3200
	ds_load_u8 v200, v180 offset:2944
	ds_load_u8 v201, v180 offset:2688
	ds_load_u8 v202, v180 offset:2432
	ds_load_u8 v180, v180 offset:2176
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v179, v181, v179, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v181, v183, v182, 0xc0c0004
	v_perm_b32 v177, v178, v177, 0xc0c0004
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v182, v189, v188, 0xc0c0004
	v_perm_b32 v189, v176, v175, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v183, v191, v190, 0xc0c0004
	v_perm_b32 v175, v187, v186, 0xc0c0004
	v_perm_b32 v176, v185, v184, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v184, v193, v192, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v178, v195, v194, 0xc0c0004
	v_perm_b32 v188, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v186, v197, v196, 0xc0c0004
	v_lshl_or_b32 v66, v181, 16, v179
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v185, v199, v198, 0xc0c0004
	v_lshl_or_b32 v65, v183, 16, v182
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v187, v201, v200, 0xc0c0004
	v_lshl_or_b32 v176, v176, 16, v175
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v180, v202, 0xc0c0004
	v_lshl_or_b32 v175, v184, 16, v178
	v_lshl_or_b32 v68, v67, 16, v188
	v_lshl_or_b32 v67, v177, 16, v189
	v_lshl_or_b32 v178, v186, 16, v185
	v_lshl_or_b32 v177, v187, 16, v180
	v_wmma_i32_16x16x16_iu4 v[57:64], v[65:66], v[159:160], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[175:176], v[159:160], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[65:66], v[161:162], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[175:176], v[161:162], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[163:164], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[175:176], v[163:164], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[165:166], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[175:176], v[165:166], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[67:68], v[167:168], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[177:178], v[167:168], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[169:170], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[177:178], v[169:170], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[67:68], v[171:172], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[177:178], v[171:172], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[67:68], v[173:174], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[177:178], v[173:174], v[1:8] neg_lo:[1,1,0]
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1452 25                       ; ragged.py:1452:25
	s_sub_i32 s5, s18, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1450 42                       ; ragged.py:1450:42
	s_min_i32 s6, s5, 16
	.loc	1 1484 24                       ; ragged.py:1484:24
	s_cmp_ge_i32 s3, s6
	.loc	1 1484 21 is_stmt 0             ; ragged.py:1484:21
	s_cbranch_scc1 .LBB0_2
; %bb.7:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	s_add_i32 s22, s3, s2
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v65, 1, v69
	.loc	1 1485 30                       ; ragged.py:1485:30
	s_or_b32 s3, s22, 1
	s_or_b32 s5, s22, 2
	s_or_b32 s23, s22, 3
	s_or_b32 s39, s22, 4
	s_or_b32 s42, s22, 5
	s_or_b32 s43, s22, 6
	s_or_b32 s44, s22, 7
	s_or_b32 s45, s22, 8
	s_or_b32 s46, s22, 9
	s_or_b32 s47, s22, 10
	s_or_b32 s48, s22, 11
	s_or_b32 s49, s22, 12
	s_or_b32 s50, s22, 13
	s_or_b32 s51, s22, 14
	s_or_b32 s52, s22, 15
	.loc	1 1494 35                       ; ragged.py:1494:35
	s_sub_i32 s15, s3, s2
	s_sub_i32 s26, s5, s2
	s_sub_i32 s27, s23, s2
	s_sub_i32 s38, s39, s2
	s_sub_i32 s53, s42, s2
	s_sub_i32 s54, s43, s2
	s_sub_i32 s55, s44, s2
	s_sub_i32 s56, s45, s2
	s_sub_i32 s57, s46, s2
	s_sub_i32 s58, s47, s2
	s_sub_i32 s68, s48, s2
	s_sub_i32 s69, s49, s2
	s_sub_i32 s70, s50, s2
	s_sub_i32 s71, s51, s2
	s_sub_i32 s72, s52, s2
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	s_cmp_lt_i32 s15, s6
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_or_b32_e32 v67, 2, v69
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s26, s6
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v68, 3, v69
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s66, -1, 0
	s_cmp_lt_i32 s27, s6
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v66, s22, v69
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s65, -1, 0
	s_cmp_lt_i32 s38, s6
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v65, s22, v65
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s64, -1, 0
	s_cmp_lt_i32 s53, s6
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v67, s22, v67
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s54, s6
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v68, s22, v68
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s55, s6
	.loc	1 1494 35 is_stmt 0             ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v159, s2, v66
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s56, s6
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v160, s2, v65
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s57, s6
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v161, s2, v67
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s58, s6
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v162, s2, v68
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s68, s6
	v_cmp_gt_i32_e64 s2, s6, v159
	s_cselect_b32 s57, -1, 0
	s_cmp_lt_i32 s69, s6
	.loc	1 1421 19 is_stmt 1             ; ragged.py:1421:19
	v_add_nc_u32_e32 v159, 1, v70
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s56, -1, 0
	s_cmp_lt_i32 s70, s6
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v163, 1, v140
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s71, s6
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v164, 5, v140
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s72, s6
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v169, 6, v140
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s53, -1, 0
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cmp_eq_u32 s22, s40
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v170, 7, v140
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s15, -1, 0
	s_cmp_eq_u32 s3, s40
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s3, s6, v160
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s26, -1, 0
	s_cmp_eq_u32 s5, s40
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v160, 2, v70
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s27, -1, 0
	s_cmp_eq_u32 s23, s40
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s5, s6, v161
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s38, -1, 0
	s_cmp_eq_u32 s39, s40
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s6, s6, v162
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s39, -1, 0
	s_cmp_eq_u32 s42, s40
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v161, 3, v70
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s42, -1, 0
	s_cmp_eq_u32 s43, s40
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v171, 8, v140
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s43, -1, 0
	s_cmp_eq_u32 s44, s40
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v172, 9, v140
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s44, -1, 0
	s_cmp_eq_u32 s45, s40
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v173, 10, v140
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s45, -1, 0
	s_cmp_eq_u32 s46, s40
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_add_nc_u32_e32 v174, 11, v140
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s46, -1, 0
	s_cmp_eq_u32 s47, s40
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_add_nc_u32_e32 v189, 0, v141
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s47, -1, 0
	s_cmp_eq_u32 s48, s40
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_add_nc_u32_e32 v190, 0, v139
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s48, -1, 0
	s_cmp_eq_u32 s49, s40
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_add_nc_u32_e32 v192, 0, v0
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s49, -1, 0
	s_cmp_eq_u32 s50, s40
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_add_nc_u32_e32 v197, v147, v116
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s50, -1, 0
	s_cmp_eq_u32 s51, s40
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_add_nc_u32_e32 v191, 0, v142
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s51, -1, 0
	s_cmp_eq_u32 s52, s40
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_add_nc_u32_e32 v193, 0, v143
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cselect_b32 s52, -1, 0
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_add_i32 s23, s22, s41
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s2, s1, s2
	v_add_nc_u32_e32 v162, s23, v70
	v_add_nc_u32_e32 v159, s23, v159
	v_add_nc_u32_e32 v160, s23, v160
	v_add_nc_u32_e32 v161, s23, v161
	.loc	1 1497 46 is_stmt 1             ; ragged.py:1497:46
	s_add_i32 s22, s22, s29
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v162, 0x80000000, v162, s2
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s2, s1, s3
	v_add_nc_u32_e32 v164, s22, v164
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v159, 0x80000000, v159, s2
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s2, s1, s5
	v_add_nc_u32_e32 v169, s22, v169
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v160, 0x80000000, v160, s2
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s2, s1, s6
	v_add_nc_u32_e32 v170, s22, v170
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v161, 0x80000000, v161, s2
	s_clause 0x3
	buffer_load_u8 v165, v162, s[8:11], 0 offen
	buffer_load_u8 v166, v159, s[8:11], 0 offen
	buffer_load_u8 v167, v160, s[8:11], 0 offen
	buffer_load_u8 v168, v161, s[8:11], 0 offen
	.loc	1 1421 19 is_stmt 1             ; ragged.py:1421:19
	v_add_nc_u32_e32 v161, 2, v140
	v_add_nc_u32_e32 v162, 3, v140
	v_add_nc_u32_e32 v160, s22, v163
	v_add_nc_u32_e32 v163, 4, v140
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s0, s67
	v_add_nc_u32_e32 v161, s22, v161
	v_add_nc_u32_e32 v162, s22, v162
	.loc	1 1497 38 is_stmt 0             ; ragged.py:1497:38
	v_cndmask_b32_e64 v160, 0x80000000, v160, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s0, s66
	v_add_nc_u32_e32 v163, s22, v163
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v161, 0x80000000, v161, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s0, s65
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v159, s22, v140
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v162, 0x80000000, v162, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s0, s64
	v_add_nc_u32_e32 v171, s22, v171
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v163, 0x80000000, v163, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s0, s63
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v159, 0x80000000, v159, s0
	v_cndmask_b32_e64 v164, 0x80000000, v164, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s0, s62
	v_add_nc_u32_e32 v172, s22, v172
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v169, 0x80000000, v169, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s0, s61
	v_add_nc_u32_e32 v173, s22, v173
	v_add_nc_u32_e32 v174, s22, v174
	v_add_nc_u32_e32 v175, s22, v148
	v_add_nc_u32_e32 v176, s22, v149
	v_add_nc_u32_e32 v177, s22, v150
	v_add_nc_u32_e32 v178, s22, v151
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_mov_b32 s22, s10
	s_mov_b32 s23, s11
	v_cndmask_b32_e64 v170, 0x80000000, v170, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s0, s60
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x7
	buffer_load_u8 v179, v159, s[20:23], 0 offen
	buffer_load_u8 v180, v160, s[20:23], 0 offen
	buffer_load_u8 v181, v161, s[20:23], 0 offen
	buffer_load_u8 v182, v162, s[20:23], 0 offen
	buffer_load_u8 v183, v163, s[20:23], 0 offen
	buffer_load_u8 v184, v164, s[20:23], 0 offen
	buffer_load_u8 v169, v169, s[20:23], 0 offen
	buffer_load_u8 v170, v170, s[20:23], 0 offen
	v_cndmask_b32_e64 v159, 0x80000000, v171, s2
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s2, s0, s59
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s3, s40, v65
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v160, 0x80000000, v172, s2
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s2, s0, s58
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s6, s40, v68
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v161, 0x80000000, v173, s2
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s2, s0, s57
	.loc	1 1495 60 is_stmt 1             ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s5, s40, v67
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v162, 0x80000000, v174, s2
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s2, s0, s56
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s3, s3, s34
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v163, 0x80000000, v175, s2
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s2, s0, s55
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s6, s6, s34
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v164, 0x80000000, v176, s2
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s2, s0, s54
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s5, s5, s34
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v171, 0x80000000, v177, s2
	.loc	1 1497 70 is_stmt 0             ; ragged.py:1497:70
	s_and_b32 s2, s0, s53
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s15, s15, s34
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v172, 0x80000000, v178, s2
	s_clause 0x7
	buffer_load_u8 v175, v159, s[20:23], 0 offen
	buffer_load_u8 v176, v160, s[20:23], 0 offen
	buffer_load_u8 v177, v161, s[20:23], 0 offen
	buffer_load_u8 v178, v162, s[20:23], 0 offen
	buffer_load_u8 v185, v163, s[20:23], 0 offen
	buffer_load_u8 v186, v164, s[20:23], 0 offen
	buffer_load_u8 v187, v171, s[20:23], 0 offen
	buffer_load_u8 v188, v172, s[20:23], 0 offen
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s2, s40, v66
	.loc	1 1495 36 is_stmt 0             ; ragged.py:1495:36
	s_and_b32 s22, s26, s34
	s_and_b32 s23, s27, s34
	s_and_b32 s27, s39, s34
	s_and_b32 s26, s38, s34
	s_and_b32 s2, s2, s34
	s_and_b32 s38, s42, s34
	s_and_b32 s39, s43, s34
	s_and_b32 s42, s44, s34
	s_and_b32 s43, s45, s34
	s_and_b32 s44, s46, s34
	s_and_b32 s45, s47, s34
	s_and_b32 s46, s48, s34
	s_and_b32 s47, s49, s34
	s_and_b32 s48, s50, s34
	s_and_b32 s49, s51, s34
	s_and_b32 s50, s52, s34
	.loc	1 1499 38 is_stmt 1             ; ragged.py:1499:38
	v_add_nc_u32_e32 v194, 0, v144
	v_add_nc_u32_e32 v195, 0, v145
	v_add_nc_u32_e32 v196, 0, v146
	.loc	1 1498 38                       ; ragged.py:1498:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1498 66 is_stmt 0             ; ragged.py:1498:66
	s_waitcnt vmcnt(19)
	v_and_b16 v65.l, v165.l, 15
	s_waitcnt vmcnt(18)
	v_and_b16 v65.h, v166.l, 15
	s_waitcnt vmcnt(17)
	v_and_b16 v66.l, v167.l, 15
	s_waitcnt vmcnt(16)
	v_and_b16 v66.h, v168.l, 15
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v65.l, v165.l, v65.l, s2
	v_cndmask_b16 v65.h, v166.l, v65.h, s3
	v_cndmask_b16 v66.l, v167.l, v66.l, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v66.h, v168.l, v66.h, s6
	v_lshlrev_b16 v65.h, 8, v65.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v66.h, 8, v66.h
	v_or_b16 v66.h, v66.l, v66.h
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b16 v66.l, v65.l, v65.h
	ds_store_b32 v189, v66
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1499 66 is_stmt 1             ; ragged.py:1499:66
	s_waitcnt vmcnt(15)
	v_and_b16 v67.l, v179.l, 15
	s_waitcnt vmcnt(14)
	v_and_b16 v67.h, v180.l, 15
	s_waitcnt vmcnt(13)
	v_and_b16 v68.l, v181.l, 15
	s_waitcnt vmcnt(12)
	v_and_b16 v68.h, v182.l, 15
	s_waitcnt vmcnt(11)
	v_and_b16 v159.l, v183.l, 15
	s_waitcnt vmcnt(10)
	v_and_b16 v159.h, v184.l, 15
	s_waitcnt vmcnt(9)
	v_and_b16 v160.l, v169.l, 15
	s_waitcnt vmcnt(8)
	v_and_b16 v160.h, v170.l, 15
	.loc	1 1499 38 is_stmt 0             ; ragged.py:1499:38
	v_cndmask_b16 v171.l, v179.l, v67.l, s15
	v_cndmask_b16 v171.h, v180.l, v67.h, s22
	v_cndmask_b16 v172.l, v181.l, v68.l, s23
	v_cndmask_b16 v173.l, v183.l, v159.l, s27
	v_cndmask_b16 v172.h, v182.l, v68.h, s26
	v_cndmask_b16 v173.h, v184.l, v159.h, s38
	v_cndmask_b16 v174.l, v169.l, v160.l, s39
	v_cndmask_b16 v174.h, v170.l, v160.h, s42
	.loc	1 1499 66                       ; ragged.py:1499:66
	s_waitcnt vmcnt(7)
	v_and_b16 v161.l, v175.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v161.h, v176.l, 15
	s_waitcnt vmcnt(5)
	v_and_b16 v162.l, v177.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v162.h, v178.l, 15
	s_waitcnt vmcnt(3)
	v_and_b16 v163.l, v185.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v163.h, v186.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v164.l, v187.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v164.h, v188.l, 15
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v175.l, v175.l, v161.l, s43
	v_cndmask_b16 v175.h, v176.l, v161.h, s44
	v_cndmask_b16 v176.l, v177.l, v162.l, s45
	v_cndmask_b16 v176.h, v178.l, v162.h, s46
	v_cndmask_b16 v177.l, v185.l, v163.l, s47
	v_cndmask_b16 v177.h, v186.l, v163.h, s48
	v_cndmask_b16 v178.l, v187.l, v164.l, s49
	v_cndmask_b16 v178.h, v188.l, v164.h, s50
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	ds_load_2addr_b64 v[65:68], v190 offset1:32
	ds_load_2addr_b64 v[159:162], v190 offset0:64 offset1:96
	ds_load_2addr_b64 v[163:166], v191 offset1:32
	ds_load_2addr_b64 v[167:170], v191 offset0:64 offset1:96
	.loc	1 1499 38                       ; ragged.py:1499:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v192, v171
	ds_store_b8_d16_hi v192, v171 offset:256
	ds_store_b8 v192, v172 offset:512
	ds_store_b8 v192, v173 offset:1024
	ds_store_b8_d16_hi v192, v173 offset:1280
	ds_store_b8 v192, v174 offset:1536
	ds_store_b8 v192, v175 offset:2048
	ds_store_b8_d16_hi v192, v175 offset:2304
	ds_store_b8 v192, v176 offset:2560
	ds_store_b8 v192, v177 offset:3072
	ds_store_b8_d16_hi v192, v177 offset:3328
	ds_store_b8_d16_hi v193, v172
	ds_store_b8_d16_hi v194, v174
	ds_store_b8_d16_hi v195, v176
	ds_store_b8 v192, v178 offset:3584
	ds_store_b8_d16_hi v196, v178
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1500 35                       ; ragged.py:1500:35
	ds_load_u8 v171, v197 offset:3328
	ds_load_u8 v172, v197 offset:3072
	ds_load_u8 v173, v197 offset:3840
	ds_load_u8 v174, v197 offset:3584
	ds_load_u8 v175, v197 offset:2304
	ds_load_u8 v176, v197 offset:2048
	ds_load_u8 v177, v197 offset:2816
	ds_load_u8 v178, v197 offset:2560
	ds_load_u8 v179, v197 offset:1280
	ds_load_u8 v180, v197 offset:1024
	ds_load_u8 v181, v197 offset:1792
	ds_load_u8 v182, v197 offset:1536
	ds_load_u8 v183, v197 offset:1920
	ds_load_u8 v184, v197 offset:1664
	ds_load_u8 v185, v197 offset:1408
	ds_load_u8 v186, v197 offset:1152
	ds_load_u8 v187, v197 offset:256
	ds_load_u8 v188, v197
	ds_load_u8 v189, v197 offset:768
	ds_load_u8 v190, v197 offset:512
	ds_load_u8 v191, v197 offset:896
	ds_load_u8 v192, v197 offset:640
	ds_load_u8 v193, v197 offset:384
	ds_load_u8 v194, v197 offset:128
	ds_load_u8 v195, v197 offset:3968
	ds_load_u8 v196, v197 offset:3712
	ds_load_u8 v198, v197 offset:3456
	ds_load_u8 v199, v197 offset:3200
	ds_load_u8 v200, v197 offset:2944
	ds_load_u8 v201, v197 offset:2688
	ds_load_u8 v202, v197 offset:2432
	ds_load_u8 v197, v197 offset:2176
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v180, v182, v181, 0xc0c0004
	v_perm_b32 v177, v178, v177, 0xc0c0004
	v_perm_b32 v173, v174, v173, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v181, v188, v187, 0xc0c0004
	v_perm_b32 v188, v176, v175, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v182, v190, v189, 0xc0c0004
	v_perm_b32 v175, v186, v185, 0xc0c0004
	v_perm_b32 v176, v184, v183, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v183, v192, v191, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v178, v194, v193, 0xc0c0004
	v_perm_b32 v187, v172, v171, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v185, v196, v195, 0xc0c0004
	v_lshl_or_b32 v172, v180, 16, v179
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v184, v199, v198, 0xc0c0004
	v_lshl_or_b32 v171, v182, 16, v181
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v189, v201, v200, 0xc0c0004
	v_lshl_or_b32 v176, v176, 16, v175
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v186, v197, v202, 0xc0c0004
	v_lshl_or_b32 v175, v183, 16, v178
	v_lshl_or_b32 v174, v173, 16, v187
	v_lshl_or_b32 v173, v177, 16, v188
	v_lshl_or_b32 v178, v185, 16, v184
	v_lshl_or_b32 v177, v189, 16, v186
	v_wmma_i32_16x16x16_iu4 v[57:64], v[171:172], v[65:66], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[175:176], v[65:66], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[171:172], v[67:68], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[175:176], v[67:68], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[171:172], v[159:160], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[175:176], v[159:160], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[171:172], v[161:162], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[175:176], v[161:162], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[173:174], v[163:164], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[177:178], v[163:164], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[173:174], v[165:166], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[177:178], v[165:166], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[173:174], v[167:168], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[177:178], v[167:168], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[173:174], v[169:170], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[177:178], v[169:170], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_2
.LBB0_8:                                ; %._crit_edge9
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_lshrrev_b32_e32 v0, 4, v0
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s17, s17, s35
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	s_and_b32 s21, s31, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 1310 36 is_stmt 1             ; ragged.py:1310:36
	v_and_or_b32 v3, v0, 1, v134
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_mov_b32 s20, s30
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v7, 0x88, v3
	v_or_b32_e32 v8, 0x86, v3
	v_or_b32_e32 v6, 0x8a, v3
	v_or_b32_e32 v4, 0x8e, v3
	v_or_b32_e32 v5, 0x8c, v3
	v_or_b32_e32 v9, 0x84, v3
	v_or_b32_e32 v10, 0x82, v3
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v11, s16, v7
	v_or_b32_e32 v12, s16, v8
	v_or_b32_e32 v2, s16, v6
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v15, 12, v3
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s16, v4
	v_or_b32_e32 v1, s16, v5
	v_or_b32_e32 v13, s16, v9
	v_or_b32_e32 v14, s16, v10
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s6, s35, v11
	v_cmp_gt_i32_e64 s7, s35, v12
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v11, 0x80, v3
	v_or_b32_e32 v12, 14, v3
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s5, s35, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s16, v15
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s0, s35, v0
	v_cmp_gt_i32_e64 s1, s35, v1
	v_cmp_gt_i32_e64 s8, s35, v13
	v_cmp_gt_i32_e64 s9, s35, v14
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s16, v11
	v_or_b32_e32 v1, s16, v12
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v13, 10, v3
	v_or_b32_e32 v14, 8, v3
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s2, s35, v2
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v2, s35, v116
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s10, s35, v0
	v_cmp_gt_i32_e64 s11, s35, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v0, s16, v13
	v_or_b32_e32 v1, s16, v14
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v16, 6, v3
	v_or_b32_e32 v18, 2, v3
	v_or_b32_e32 v17, 4, v3
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v21, s16, v3
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s13, s35, v0
	v_cmp_gt_i32_e64 s14, s35, v1
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s16, v16
	v_or_b32_e32 v20, s16, v18
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add3_u32 v0, s17, s16, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v19, s16, v17
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s18, s35, v21
	v_cmp_gt_i32_e64 s15, s35, v1
	v_cmp_gt_i32_e64 s17, s35, v20
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v0, v3, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s16, s35, v19
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v0, v18, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v0, v17, 2
	v_cndmask_b32_e64 v22, 0x80000000, v1, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s17
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_lshl_add_u32 v19, s35, 4, v0
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_cndmask_b32_e64 v23, 0x80000000, v2, s3
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s3, s4, s16
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[1:2], null, s35, 48, v[0:1]
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	v_add_lshl_u32 v2, v0, v16, 2
	s_clause 0x2
	buffer_store_b32 v137, v22, s[20:23], 0 offen
	buffer_store_b32 v136, v23, s[20:23], 0 offen
	buffer_store_b32 v135, v21, s[20:23], 0 offen
	v_add_lshl_u32 v21, v0, v14, 2
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s3, s4, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v22, v0, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v23, v0, v15, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v133, v2, s[20:23], 0 offen
	buffer_store_b32 v132, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s2
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v0, v12, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_add_lshl_u32 v21, v0, v11, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v131, v22, s[20:23], 0 offen
	buffer_store_b32 v130, v23, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v0, v10, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v23, v0, v9, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v129, v2, s[20:23], 0 offen
	buffer_store_b32 v128, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v0, v8, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_add_lshl_u32 v21, v0, v7, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v127, v22, s[20:23], 0 offen
	buffer_store_b32 v126, v23, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v0, v6, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v23, v0, v5, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s5
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_lshl_add_u32 v20, s35, 5, v0
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_add_lshl_u32 v0, v0, v4, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s3, s4, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v125, v2, s[20:23], 0 offen
	buffer_store_b32 v124, v21, s[20:23], 0 offen
	v_add_lshl_u32 v2, v19, v3, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s4, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v19, v18, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v123, v22, s[20:23], 0 offen
	buffer_store_b32 v122, v23, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v17, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v121, v0, s[20:23], 0 offen
	buffer_store_b32 v120, v2, s[20:23], 0 offen
	v_add_lshl_u32 v0, v19, v16, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v19, v14, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v119, v21, s[20:23], 0 offen
	buffer_store_b32 v118, v22, s[20:23], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v19, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v15, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v117, v0, s[20:23], 0 offen
	buffer_store_b32 v115, v2, s[20:23], 0 offen
	v_add_lshl_u32 v0, v19, v12, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s2
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v19, v11, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v114, v21, s[20:23], 0 offen
	buffer_store_b32 v113, v22, s[20:23], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v19, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v9, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v112, v0, s[20:23], 0 offen
	buffer_store_b32 v111, v2, s[20:23], 0 offen
	v_add_lshl_u32 v0, v19, v8, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v19, v7, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v110, v21, s[20:23], 0 offen
	buffer_store_b32 v109, v22, s[20:23], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v19, v6, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v5, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v108, v0, s[20:23], 0 offen
	buffer_store_b32 v107, v2, s[20:23], 0 offen
	v_add_lshl_u32 v0, v19, v4, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v20, v3, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v20, v18, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s12, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v106, v21, s[20:23], 0 offen
	buffer_store_b32 v105, v22, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v17, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s12, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v104, v0, s[20:23], 0 offen
	buffer_store_b32 v103, v2, s[20:23], 0 offen
	v_add_lshl_u32 v0, v20, v16, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s12, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v20, v14, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s12, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v102, v19, s[20:23], 0 offen
	buffer_store_b32 v101, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s12, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v20, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v15, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s12, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v100, v0, s[20:23], 0 offen
	buffer_store_b32 v99, v2, s[20:23], 0 offen
	v_add_lshl_u32 v0, v20, v12, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s12, s2
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v20, v11, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s12, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v98, v19, s[20:23], 0 offen
	buffer_store_b32 v97, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s12, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v20, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v9, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s12, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v96, v0, s[20:23], 0 offen
	buffer_store_b32 v95, v2, s[20:23], 0 offen
	v_add_lshl_u32 v0, v20, v8, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s12, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v20, v7, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s12, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v94, v19, s[20:23], 0 offen
	buffer_store_b32 v93, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s12, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v20, v6, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v5, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s12, s5
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v92, v0, s[20:23], 0 offen
	buffer_store_b32 v91, v2, s[20:23], 0 offen
	v_add_lshl_u32 v0, v20, v4, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s12, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v1, v3, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s12, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v1, v18, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, vcc_lo, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v17, v1, v17, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, vcc_lo, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v90, v19, s[20:23], 0 offen
	buffer_store_b32 v89, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, vcc_lo, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v88, v0, s[20:23], 0 offen
	buffer_store_b32 v87, v2, s[20:23], 0 offen
	v_add_lshl_u32 v0, v1, v16, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	v_add_lshl_u32 v2, v1, v14, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, vcc_lo, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v86, v3, s[20:23], 0 offen
	buffer_store_b32 v85, v17, s[20:23], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	v_add_lshl_u32 v3, v1, v13, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, vcc_lo, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v13, v1, v15, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, vcc_lo, s13
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	s_clause 0x1
	buffer_store_b32 v84, v0, s[20:23], 0 offen
	buffer_store_b32 v83, v2, s[20:23], 0 offen
	v_add_lshl_u32 v0, v1, v12, 2
	v_add_lshl_u32 v2, v1, v11, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, vcc_lo, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v82, v3, s[20:23], 0 offen
	buffer_store_b32 v81, v13, s[20:23], 0 offen
	v_add_lshl_u32 v3, v1, v10, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, vcc_lo, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v9, v1, v9, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, vcc_lo, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v80, v0, s[20:23], 0 offen
	buffer_store_b32 v79, v2, s[20:23], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, vcc_lo, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v0, v1, v8, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	v_add_lshl_u32 v2, v1, v7, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, vcc_lo, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v78, v3, s[20:23], 0 offen
	buffer_store_b32 v77, v9, s[20:23], 0 offen
	v_add_lshl_u32 v3, v1, v6, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, vcc_lo, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v5, v1, v5, 2
	v_add_lshl_u32 v1, v1, v4, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s2, vcc_lo, s5
	s_and_b32 s1, vcc_lo, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v4, 0x80000000, v5, s1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b32 v76, v0, s[20:23], 0 offen
	buffer_store_b32 v75, v2, s[20:23], 0 offen
	buffer_store_b32 v74, v3, s[20:23], 0 offen
	buffer_store_b32 v73, v4, s[20:23], 0 offen
	buffer_store_b32 v72, v1, s[20:23], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 203
		.amdhsa_next_free_sgpr 73
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 203
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 73
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9240
; TotalNumSgprs: 75
; NumVgprs: 203
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 25
; NumSGPRsForWavesPerEU: 75
; NumVGPRsForWavesPerEU: 203
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     75
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     203
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
